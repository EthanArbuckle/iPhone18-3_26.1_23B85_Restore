void sub_274D3B2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::exception_ptr a25, uint64_t a26, std::exception_ptr a27, uint64_t a28)
{
  std::mutex::~mutex(&a28);
  std::exception_ptr::~exception_ptr(&a27);
  a27.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27.__ptr_ = v28;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

unint64_t xgboost::SparsePage::Push<xgboost::data::CSRArrayAdapterBatch>(uint64_t **a1, xgboost::data::CSRArrayAdapterBatch *this, int a3, float a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[1];
  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((v8 - v7) >> 3) - 1;
  }

  v47 = v9;
  v44 = v6;
  memset(v45, 0, sizeof(v45));
  v46 = v9;
  v10 = *(this + 3);
  if (v10 < 2)
  {
    goto LABEL_8;
  }

  xgboost::data::CSRArrayAdapterBatch::GetLine(this, v10 - 2, &__p);
  if (v58)
  {
    xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&__p, v58 - 1, &v61);
  }

  v13 = *(this + 3);
  if (v13 >= 2)
  {
    v15 = v13 - 1;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v44, v13 - 1, a3);
    v61 = 0;
    v56 = 0;
    v57 = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v61, &v62, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v42, a3);
    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }

    v59.__ptr_ = 0;
    v60.__m_.__sig = 850045863;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v40 = this;
    v41 = v15 / a3;
    v39 = v15;
    if (v15 >= a3)
    {
      v17 = 0;
      v16 = 1;
      v18 = *v42;
      v19 = fabsf(a4);
      do
      {
        xgboost::data::CSRArrayAdapterBatch::GetLine(v40, v17, &v61);
        if (v63)
        {
          for (i = 0; i < v63; ++i)
          {
            xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&v61, i, &v49);
            if (v19 != INFINITY && fabsf(v51) == INFINITY)
            {
              v16 = 0;
            }

            v48 = v49 - a1[2];
            if (v48 < v47)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v48, &v47);
            }

            if (*v18 <= (v50 + 1))
            {
              v21 = v50 + 1;
            }

            else
            {
              v21 = *v18;
            }

            *v18 = v21;
            if (v51 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v45[0], v46, v48);
            }
          }
        }

        ++v17;
      }

      while (v17 != v41);
    }

    else
    {
      v16 = 1;
    }

    dmlc::OMPException::Rethrow(&v59);
    if ((v16 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v36 = dmlc::LogMessageFatal::GetEntry(&__p);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: valid", 19);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }

    v22 = v42;
    if (v42 == v43)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v23 = *v22;
        v22 += 3;
        v24 = *v23;
        if (v14 <= *v23)
        {
          v14 = v24;
        }
      }

      while (v22 != v43);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v44);
    if (v39 >= a3)
    {
      v25 = 0;
      do
      {
        xgboost::data::CSRArrayAdapterBatch::GetLine(v40, v25, &__p);
        if (v58)
        {
          for (j = 0; j < v58; ++j)
          {
            xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&__p, j, &v52);
            v27 = v54;
            if (v54 != a4)
            {
              v28 = v53;
              v29 = v52 - (a1[2] + v46);
              v30 = *(&v44 + 1);
              v31 = *(*v45[0] + 8 * v29);
              *(*v45[0] + 8 * v29) = v31 + 1;
              v32 = (*v30 + 8 * v31);
              *v32 = v28;
              v32[1] = v27;
            }
          }
        }

        ++v25;
      }

      while (v25 != v41);
    }

    dmlc::OMPException::Rethrow(&v59);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&v59);
    v59.__ptr_ = &v42;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v59);
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  v59.__ptr_ = v45;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v59);
  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_274D3B934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception_ptr a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::exception_ptr a51, uint64_t a52)
{
  std::mutex::~mutex(&a52);
  std::exception_ptr::~exception_ptr(&a51);
  a51.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a51);
  a51.__ptr_ = a11;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

__n128 xgboost::data::CSRArrayAdapterBatch::GetLine@<Q0>(xgboost::data::CSRArrayAdapterBatch *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(this, this, a2);
  v7 = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(this, this, a2 + 1);
  v8 = *(this + 7);
  v9 = *(this + 8);
  v10 = *(this + 9);
  result = *(this + 7);
  v12 = *(this + 16);
  *(a3 + 32) = *(this + 88);
  *(a3 + 48) = *(this + 52);
  *(a3 + 88) = *(this + 9);
  *(a3 + 104) = *(this + 80);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v7 - v6;
  *(a3 + 56) = result;
  *(a3 + 72) = v12;
  *(a3 + 80) = v7 - v6;
  *(a3 + 112) = a2;
  *(a3 + 120) = v10 * v6;
  return result;
}

void xgboost::data::CSRArrayAdapterBatch::Line::GetElement(xgboost::data::CSRArrayAdapterBatch::Line *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 14);
  v7 = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(this, this, *(this + 15) + a2);
  v9 = xgboost::ArrayInterface<1,true>::DispatchCall<float xgboost::ArrayInterface<1,true>::operator()<float,unsigned long>(unsigned long &&)::{lambda(float const*)#1}>(this + 56, this + 56, *(this + 15) + a2, v8);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
}

unint64_t xgboost::SparsePage::Push<xgboost::data::CSCAdapterBatch>(uint64_t **a1, void *a2, float a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v6 - v5) >> 3) - 1;
  }

  v58 = v7;
  v55 = v4;
  memset(v56, 0, sizeof(v56));
  v57 = v7;
  v8 = a2[3];
  if (v8)
  {
    v9 = a2;
    v52 = a2[3];
    v11 = (*a2 + 8 * v8);
    v12 = *(v11 - 1);
    v13 = *v11;
    if (v13 == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2[1] + 4 * v12 + 4 * v13 + 4 * ~v12) - a1[2];
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitBudget(&v55, v14, 1);
    v62 = 0;
    v61.__m_.__sig = 0;
    *v61.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v62, &v63, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v53, 1uLL);
    if (__p)
    {
      v61.__m_.__sig = __p;
      operator delete(__p);
    }

    v16 = 0;
    __p = 0;
    v61.__m_.__sig = 850045863;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v17 = 1;
    v18 = *v53;
    v19 = fabsf(a3);
    v51 = v9;
    do
    {
      v20 = (*v9 + 8 * v16);
      v21 = *v20;
      v22 = v20[1];
      ++v16;
      v23 = v22 - v21;
      if (v22 != v21)
      {
        v24 = (v9[1] + 4 * v21);
        v25 = (v9[2] + 4 * v21);
        do
        {
          v26 = *v25;
          v27 = fabsf(*v25) != INFINITY || v19 == INFINITY;
          v29 = *v24++;
          v28 = v29;
          if (!v27)
          {
            v17 = 0;
          }

          v62 = v28 - a1[2];
          if (v62 < v58)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v62, &v58);
          }

          v30 = *v18;
          if (*v18 <= v16)
          {
            v30 = v16;
          }

          *v18 = v30;
          if (v26 != a3)
          {
            xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v56[0], v57, v62);
          }

          ++v25;
          --v23;
        }

        while (v23);
      }

      v9 = v51;
    }

    while (v16 != v52);
    dmlc::OMPException::Rethrow(&__p);
    if ((v17 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v59);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v48 = dmlc::LogMessageFatal::GetEntry(v59);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: valid", 19);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v59);
    }

    v31 = v53;
    if (v53 == v54)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        v32 = *v31;
        v31 += 3;
        v33 = *v32;
        if (v15 <= *v32)
        {
          v15 = v33;
        }
      }

      while (v31 != v54);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitStorage(&v55);
    v34 = 0;
    do
    {
      v35 = (*v51 + 8 * v34);
      v36 = *v35;
      v37 = v35[1] - *v35;
      if (v37)
      {
        v38 = (v51[1] + 4 * v36);
        v39 = (v51[2] + 4 * v36);
        do
        {
          v40 = *v39;
          if (*v39 != a3)
          {
            v41 = *v38 - (a1[2] + v57);
            v42 = *(&v55 + 1);
            v43 = *(*v56[0] + 8 * v41);
            *(*v56[0] + 8 * v41) = v43 + 1;
            v44 = (*v42 + 8 * v43);
            *v44 = v34;
            v44[1] = v40;
          }

          ++v39;
          ++v38;
          --v37;
        }

        while (v37);
      }

      ++v34;
    }

    while (v34 != v52);
    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v53;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v15 = 0;
  }

  __p = v56;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v45 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_274D3C088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::exception_ptr a23, uint64_t a24, std::exception_ptr a25, uint64_t a26)
{
  std::mutex::~mutex(&a26);
  std::exception_ptr::~exception_ptr(&a25);
  a25.__ptr_ = &a12;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25.__ptr_ = a9;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitBudget(void *a1, unint64_t a2, int a3)
{
  std::vector<std::vector<unsigned long>>::resize((a1 + 2), a3);
  v6 = a1[5];
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  a1[6] = 0;
  v10 = a1[2];
  if (a1[3] - v10 != 24)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = 0;
      std::vector<unsigned long>::resize((v10 + v11), v9, &v13);
      ++v12;
      v10 = a1[2];
      v11 += 24;
    }

    while (v12 < -1 - 0x5555555555555555 * ((a1[3] - v10) >> 3));
  }

  v13 = 0;
  std::vector<unsigned long>::resize((v10 + 24 * a3 - 24), v9, &v13);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitStorage(uint64_t **a1)
{
  v3 = **a1;
  v2 = (*a1)[1];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 - 8);
  }

  v22 = v4;
  v5 = a1[2];
  v6 = a1[3];
  if (v6 == v5)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v6 - v5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a1[5] + ((v5[v7 + 1] - v5[v7]) >> 3);
      if (v9 >= ((*a1)[1] - **a1) >> 3)
      {
        std::vector<unsigned long>::resize(*a1, v9 + 1, &v22);
        v5 = a1[2];
        v6 = a1[3];
      }

      ++v8;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v6 - v5);
      v7 += 3;
    }

    while (v8 < v10);
    v3 = **a1;
    v2 = (*a1)[1];
  }

  v11 = a1[5];
  v12 = v11 + 1;
  if (v11 + 1 < (v2 - v3) >> 3)
  {
    v13 = 0;
    v14 = v5 + 1;
    do
    {
      v15 = v12;
      v16 = v14;
      for (i = v10; i; --i)
      {
        v18 = *(v16 - 1);
        v19 = a1[5];
        if (v11 < v19 + ((*v16 - v18) >> 3))
        {
          v20 = v11 - v19;
          v21 = *(v18 + 8 * v20);
          *(v18 + 8 * v20) = *(v2 - 8) + v13;
          v13 += v21;
        }

        v16 += 3;
      }

      *(v3 + 8 * v15) += v13;
      v12 = v15 + 1;
      v11 = v15;
    }

    while (v15 + 1 != (v2 - v3) >> 3);
  }

  std::vector<xgboost::Entry>::resize(a1[1], *(v2 - 8));
}

unint64_t xgboost::SparsePage::Push<xgboost::data::DataTableAdapterBatch>(uint64_t **a1, void *a2, float a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v6 - v5) >> 3) - 1;
  }

  v55 = v7;
  v52 = v4;
  memset(v53, 0, sizeof(v53));
  v54 = v7;
  v8 = a2[2];
  if (v8 && ((xgboost::data::DataTableAdapterBatch::GetLine(&__p, a2, v8 - 1), !v62.__m_.__sig) ? (v13 = 0) : (v12 = v62.__m_.__sig - 1, xgboost::data::DataTableAdapterBatch::Line::DTGetValue(*&v62.__m_.__opaque[8], __p, v62.__m_.__sig - 1, v11), v13 = v12 - a1[2]), (v49 = a2[2]) != 0))
  {
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitBudget(&v52, v13, 1);
    v63 = 0;
    v62.__m_.__sig = 0;
    *v62.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v63, &v64, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v50, 1uLL);
    v48 = a2;
    if (__p)
    {
      v62.__m_.__sig = __p;
      operator delete(__p);
    }

    v14 = 0;
    __p = 0;
    v62.__m_.__sig = 850045863;
    memset(v62.__m_.__opaque, 0, sizeof(v62.__m_.__opaque));
    v15 = 1;
    v16 = *v50;
    v17 = fabsf(a3);
    do
    {
      xgboost::data::DataTableAdapterBatch::GetLine(v57, a2, v14);
      v19 = v58;
      if (v58)
      {
        v20 = 0;
        v21 = v60;
        v22 = v57[0];
        v23 = v59 + 1;
        do
        {
          v24 = xgboost::data::DataTableAdapterBatch::Line::DTGetValue(v21, v22, v20, v18);
          v18 = fabsf(v24);
          if (v18 == INFINITY && v17 != INFINITY)
          {
            v15 = 0;
          }

          v56 = v20 - a1[2];
          if (v56 < v55)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v56, &v55);
          }

          v26 = *v16;
          if (*v16 <= v23)
          {
            v26 = v23;
          }

          *v16 = v26;
          if (v24 != a3)
          {
            xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v53[0], v54, v56);
          }

          ++v20;
        }

        while (v19 != v20);
      }

      ++v14;
    }

    while (v14 != v49);
    dmlc::OMPException::Rethrow(&__p);
    if ((v15 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v63);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v45 = dmlc::LogMessageFatal::GetEntry(&v63);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Check failed: valid", 19);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v63);
    }

    v27 = v50;
    if (v50 == v51)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *v27;
        v27 += 3;
        v30 = *v29;
        if (v28 <= *v29)
        {
          v28 = v30;
        }
      }

      while (v27 != v51);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitStorage(&v52);
    for (i = 0; i != v49; ++i)
    {
      xgboost::data::DataTableAdapterBatch::GetLine(&v63, v48, i);
      v33 = v64;
      if (v64)
      {
        v34 = 0;
        v35 = v65;
        v36 = v66;
        v37 = v63;
        do
        {
          v32 = xgboost::data::DataTableAdapterBatch::Line::DTGetValue(v36, v37, v34, v32);
          if (v32 != a3)
          {
            v38 = *(&v52 + 1);
            v39 = *v53[0] - 8 * (a1[2] + v54);
            v40 = *(v39 + 8 * v34);
            *(v39 + 8 * v34) = v40 + 1;
            v41 = *v38 + 8 * v40;
            *v41 = v35;
            *(v41 + 4) = v32;
          }

          ++v34;
        }

        while (v33 != v34);
      }
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v62);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v50;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v28 = 0;
  }

  __p = v53;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v42 = *MEMORY[0x277D85DE8];
  return v28;
}

void sub_274D3C8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::exception_ptr a30, std::exception_ptr a31, uint64_t a32)
{
  std::mutex::~mutex(&a32);
  std::exception_ptr::~exception_ptr(&a31);
  a31.__ptr_ = &a12;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31.__ptr_ = a9;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void xgboost::data::DataTableAdapterBatch::GetLine(xgboost::data::DataTableAdapterBatch *this, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, *(a2[1] + 8 * a3));
  v6 = v28;
  if (v28 < 0)
  {
    if (v27 != 4)
    {
      if (v27 != 5)
      {
        if (v27 == 7)
        {
          if (*__p != 1634692198 || *(__p + 3) != 842232929)
          {
            if (*__p == 1634692198 && *(__p + 3) == 875983969)
            {
              v9 = 1;
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          v9 = 0;
          goto LABEL_63;
        }

LABEL_62:
        Entry = dmlc::LogMessageFatal::GetEntry(&v29);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/adapter.h", 512);
        v23 = dmlc::LogMessageFatal::GetEntry(&v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unknown data table type.", 24);
        dmlc::LogMessageFatal::~LogMessageFatal(&v29);
        v9 = 7;
        v6 = v28;
        goto LABEL_63;
      }

      p_p = __p;
      if (*__p == 1819242338 && *(__p + 4) == 56)
      {
        v9 = 2;
        goto LABEL_63;
      }

      if (*__p == 863268457 && *(__p + 4) == 50)
      {
        v9 = 3;
        goto LABEL_63;
      }

      if (*__p != 829714025 || *(__p + 4) != 54)
      {
LABEL_55:
        v19 = *p_p;
        v20 = p_p[4];
        if (v19 == 913600105 && v20 == 52)
        {
          v9 = 6;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

LABEL_75:
      v9 = 5;
      goto LABEL_63;
    }

    if (*__p != 947154537)
    {
      goto LABEL_62;
    }

LABEL_66:
    v9 = 4;
    goto LABEL_63;
  }

  if (v28 == 4)
  {
    if (__p != 947154537)
    {
      goto LABEL_62;
    }

    v6 = 4;
    goto LABEL_66;
  }

  if (v28 == 5)
  {
    if (__p == 1819242338 && BYTE4(__p) == 56)
    {
      v9 = 2;
    }

    else
    {
      if (__p != 863268457 || BYTE4(__p) != 50)
      {
        if (__p != 829714025 || BYTE4(__p) != 54)
        {
          p_p = &__p;
          goto LABEL_55;
        }

        v6 = 5;
        goto LABEL_75;
      }

      v9 = 3;
    }

    v6 = 5;
    goto LABEL_63;
  }

  if (v28 != 7)
  {
    goto LABEL_62;
  }

  if (__p == 1634692198 && *(&__p + 3) == 842232929)
  {
    v9 = 0;
  }

  else
  {
    if (__p != 1634692198 || *(&__p + 3) != 875983969)
    {
      goto LABEL_62;
    }

    v9 = 1;
  }

  v6 = 7;
LABEL_63:
  v24 = a2[3];
  v25 = *(*a2 + 8 * a3);
  *this = v9;
  *(this + 1) = v24;
  *(this + 2) = a3;
  *(this + 3) = v25;
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_274D3CDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t xgboost::SparsePage::Push<xgboost::data::FileAdapterBatch>(uint64_t **a1, unint64_t **a2, int a3, float a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v65 = v8;
  v62 = v5;
  memset(v63, 0, sizeof(v63));
  v64 = v8;
  v9 = **a2;
  if (v9)
  {
    v11 = a2;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v62, **a2, a3);
    v69 = 0;
    v68.__m_.__sig = 0;
    *v68.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v69, &v70, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v60, a3);
    if (__p)
    {
      v68.__m_.__sig = __p;
      operator delete(__p);
    }

    __p = 0;
    v68.__m_.__sig = 850045863;
    memset(v68.__m_.__opaque, 0, sizeof(v68.__m_.__opaque));
    v13 = v9 / a3;
    v56 = a3;
    v57 = v9;
    if (v9 >= a3)
    {
      v15 = 0;
      v14 = 1;
      v16 = *v60;
      v17 = fabsf(a4);
      v58 = v13;
      v59 = v11;
      do
      {
        v18 = *v11;
        v19 = ((*v11)[1] + 8 * v15);
        v20 = *v19;
        v21 = v19[1];
        v22 = v21 - v20;
        if (v21 != v20)
        {
          v23 = v11[1] + v15;
          v24 = v18[7];
          v25 = (v18[6] + 4 * v20);
          v26 = (v24 + 4 * v20);
          do
          {
            if (v24)
            {
              v27 = *v26;
            }

            else
            {
              v27 = 1.0;
            }

            v28 = fabsf(v27) != INFINITY || v17 == INFINITY;
            v29 = *v25;
            if (!v28)
            {
              v14 = 0;
            }

            v69 = v23 - a1[2];
            if (v69 < v65)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v69, &v65);
            }

            if (*v16 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            else
            {
              v30 = *v16;
            }

            *v16 = v30;
            if (v27 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v63[0], v64, v69);
            }

            ++v25;
            ++v26;
            --v22;
          }

          while (v22);
        }

        ++v15;
        v13 = v58;
        v11 = v59;
      }

      while (v15 != v58);
    }

    else
    {
      v14 = 1;
    }

    dmlc::OMPException::Rethrow(&__p);
    if ((v14 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v66);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v53 = dmlc::LogMessageFatal::GetEntry(v66);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "Check failed: valid", 19);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v66);
    }

    v31 = v60;
    if (v60 == v61)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v32 = *v31;
        v31 += 3;
        v33 = *v32;
        if (v9 <= *v32)
        {
          v9 = v33;
        }
      }

      while (v31 != v61);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v62);
    if (v57 >= v56)
    {
      v34 = 0;
      do
      {
        v35 = *v11;
        v36 = ((*v11)[1] + 8 * v34);
        v37 = *v36;
        v38 = v36[1] - *v36;
        if (v38)
        {
          v40 = v35[6];
          v39 = v35[7];
          v41 = (v40 + 4 * v37);
          v42 = (v39 + 4 * v37);
          v43 = v11[1] + v34;
          do
          {
            if (v39)
            {
              v44 = *v42;
            }

            else
            {
              v44 = 1.0;
            }

            if (v44 != a4)
            {
              v45 = *v41;
              v46 = (v43 - (a1[2] + v64));
              v47 = *(&v62 + 1);
              v48 = *(*v63[0] + 8 * v46);
              *(*v63[0] + 8 * v46) = v48 + 1;
              v49 = *v47 + 8 * v48;
              *v49 = v45;
              *(v49 + 4) = v44;
            }

            ++v41;
            ++v42;
            --v38;
          }

          while (v38);
        }

        ++v34;
      }

      while (v34 != v13);
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v68);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v60;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  __p = v63;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v50 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_274D3D248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::exception_ptr a25, uint64_t a26, std::exception_ptr a27, uint64_t a28)
{
  std::mutex::~mutex(&a28);
  std::exception_ptr::~exception_ptr(&a27);
  a27.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27.__ptr_ = v28;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void xgboost::MetaInfo::Clear(xgboost::MetaInfo *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void xgboost::MetaInfo::SaveBinary(uint64_t a1, uint64_t a2)
{
  xgboost::Version::Save(a2);
  (*(*a2 + 8))(a2, &xgboost::MetaInfo::kNumField, 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_row");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_col");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_nonzero");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "labels");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "group_ptr");
  v10 = (*(a1 + 56) - *(a1 + 48)) >> 2;
  v11 = 1;
  v4 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v4 = v8;
  }

  v12 = v4;
  (*(*a2 + 8))(a2, &v12, 8);
  if (v12)
  {
    if ((v9 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8;
    }

    (*(*a2 + 8))(a2, p_p, v6);
  }

  LOBYTE(v12) = 3;
  (*(*a2 + 8))(a2, &v12, 1);
  LOBYTE(v12) = 0;
  (*(*a2 + 8))(a2, &v12, 1);
  (*(*a2 + 8))(a2, &v10, 8);
  (*(*a2 + 8))(a2, &v11, 8);
  v12 = (*(a1 + 56) - *(a1 + 48)) >> 2;
  (*(*a2 + 8))(a2, &v12, 8);
  if (v12)
  {
    (*(*a2 + 8))(a2, *(a1 + 48), *(a1 + 56) - *(a1 + 48));
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weights");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "base_margin");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "labels_lower_bound");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "labels_upper_bound");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "feature_names");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "feature_types");
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "feature_weights");
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_274D3D9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::SaveScalarField<unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  v13 = v6;
  (*(*a1 + 8))(a1, &v13, 8);
  if (v13)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    (*(*a1 + 8))(a1, v8, v9);
  }

  v12 = 4;
  (*(*a1 + 8))(a1, &v12, 1);
  v11 = 1;
  (*(*a1 + 8))(a1, &v11, 1);
  return (*(*a1 + 8))(a1, a3, 8);
}

uint64_t anonymous namespace::SaveTensorField<float,2>(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  v15 = v6;
  (*(*a1 + 8))(a1, &v15, 8);
  if (v15)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    (*(*a1 + 8))(a1, v8, v9);
  }

  v10 = 1;
  LOBYTE(v15) = 1;
  (*(*a1 + 8))(a1, &v15, 1);
  LOBYTE(v15) = 0;
  (*(*a1 + 8))(a1, &v15, 1);
  v11 = 0;
  do
  {
    v12 = v10;
    v15 = a3[v11 + 1];
    (*(*a1 + 8))(a1, &v15, 8);
    v10 = 0;
    v11 = 1;
  }

  while ((v12 & 1) != 0);
  v13 = *a3;
  v15 = (v13[1] - *v13) >> 2;
  result = (*(*a1 + 8))(a1, &v15, 8);
  if (v15)
  {
    return (*(*a1 + 8))(a1, *v13, v13[1] - *v13);
  }

  return result;
}

uint64_t anonymous namespace::SaveVectorField<float>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = a3;
  v14 = a4;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2[1];
  }

  v15 = v8;
  (*(*a1 + 8))(a1, &v15, 8);
  if (v15)
  {
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    (*(*a1 + 8))(a1, v10, v11);
  }

  LOBYTE(v15) = 1;
  (*(*a1 + 8))(a1, &v15, 1);
  LOBYTE(v15) = 0;
  (*(*a1 + 8))(a1, &v15, 1);
  (*(*a1 + 8))(a1, &v13, 8);
  (*(*a1 + 8))(a1, &v14, 8);
  v15 = (a5[1] - *a5) >> 2;
  result = (*(*a1 + 8))(a1, &v15, 8);
  if (v15)
  {
    return (*(*a1 + 8))(a1, *a5, a5[1] - *a5);
  }

  return result;
}

uint64_t anonymous namespace::SaveVectorField<std::string>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v20 = a3;
  v21 = a4;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2[1];
  }

  v23 = v8;
  (*(*a1 + 8))(a1, &v23, 8);
  if (v23)
  {
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    (*(*a1 + 8))(a1, v10, v11);
  }

  LOBYTE(v23) = 5;
  (*(*a1 + 8))(a1, &v23, 1);
  LOBYTE(v23) = 0;
  (*(*a1 + 8))(a1, &v23, 1);
  (*(*a1 + 8))(a1, &v20, 8);
  (*(*a1 + 8))(a1, &v21, 8);
  v22 = 0xAAAAAAAAAAAAAAABLL * (a5[1] - *a5);
  result = (*(*a1 + 8))(a1, &v22, 8);
  v13 = a5[1] - *a5;
  if (v13)
  {
    v14 = *a5;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    do
    {
      v16 = *(v14 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = v14[1];
      }

      v23 = v16;
      result = (*(*a1 + 8))(a1, &v23, 8);
      if (v23)
      {
        v17 = *(v14 + 23);
        if (v17 >= 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = *v14;
        }

        if (v17 >= 0)
        {
          v19 = *(v14 + 23);
        }

        else
        {
          v19 = v14[1];
        }

        result = (*(*a1 + 8))(a1, v18, v19);
      }

      v14 += 3;
      --v15;
    }

    while (v15);
  }

  return result;
}

void xgboost::LoadFeatureType(unsigned __int8 ***a1, void *a2)
{
  a2[1] = *a2;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (*(v2 + 23) < 0)
      {
        v9 = v2[1];
        if (v9 == 1)
        {
          v14 = **v2;
          if (v14 == 105 || v14 == 113)
          {
            goto LABEL_30;
          }

LABEL_40:
          if (v14 == 99)
          {
            v25 = a2[1];
            v24 = a2[2];
            if (v25 < v24)
            {
              *v25 = 1;
              v18 = v25 + 1;
              goto LABEL_47;
            }

            v19 = *a2;
            v29 = &v25[-*a2];
            v30 = (v29 + 1);
            if ((v29 + 1) < 0)
            {
LABEL_60:
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v31 = v24 - v19;
            if (2 * v31 > v30)
            {
              v30 = 2 * v31;
            }

            if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v32 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              operator new();
            }

            v28 = &v25[-*a2];
            *v29 = 1;
            v18 = v29 + 1;
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        if (v9 == 3)
        {
          v10 = **v2;
          v11 = (*v2)[2];
          v12 = 28265;
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_43;
          }

          v10 = **v2;
          v11 = (*v2)[4];
          v12 = 1634692198;
        }

        if (v10 == v12 && v11 == 116)
        {
LABEL_30:
          v17 = a2[1];
          v16 = a2[2];
          if (v17 < v16)
          {
            *v17 = 0;
            v18 = v17 + 1;
LABEL_47:
            a2[1] = v18;
            goto LABEL_48;
          }

          v19 = *a2;
          v20 = &v17[-*a2];
          v21 = (v20 + 1);
          if ((v20 + 1) < 0)
          {
            goto LABEL_60;
          }

          v22 = v16 - v19;
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v23 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            operator new();
          }

          v28 = &v17[-*a2];
          *v20 = 0;
          v18 = v20 + 1;
LABEL_45:
          memcpy(0, v19, v28);
          *a2 = 0;
          a2[1] = v18;
          a2[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }

          goto LABEL_47;
        }
      }

      else
      {
        v5 = *(v2 + 23);
        switch(v5)
        {
          case 1:
            v14 = *v2;
            if (v14 == 113 || v14 == 105)
            {
              goto LABEL_30;
            }

            goto LABEL_40;
          case 3:
            v6 = *v2;
            v7 = *(v2 + 2);
            v8 = 28265;
            break;
          case 5:
            v6 = *v2;
            v7 = *(v2 + 4);
            v8 = 1634692198;
            break;
          default:
            goto LABEL_43;
        }

        if (v6 == v8 && v7 == 116)
        {
          goto LABEL_30;
        }
      }

LABEL_43:
      Entry = dmlc::LogMessageFatal::GetEntry(&v33);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 253);
      v27 = dmlc::LogMessageFatal::GetEntry(&v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "All feature_types must be one of {int, float, i, q, c}.", 55);
      dmlc::LogMessageFatal::~LogMessageFatal(&v33);
LABEL_48:
      v2 += 3;
    }

    while (v2 != v3);
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t xgboost::MetaInfo::LoadBinary(std::string::size_type *this, dmlc::Stream *a2)
{
  v4 = xgboost::Version::Load(a2);
  v99 = v4;
  v100 = v5;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v93);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Binary DMatrix generated by XGBoost: ", 37);
  xgboost::Version::String(&v99);
  if ((v90 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v90 & 0x80u) == 0)
  {
    v8 = v90;
  }

  else
  {
    v8 = v89;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " is no longer supported. ", 25);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Please process and save your data in current version: ", 54);
  v85 = 0x600000001;
  LODWORD(v86) = 1;
  xgboost::Version::String(&v85);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v106;
  }

  else
  {
    v12 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " again.", 7);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v90 < 0)
  {
    operator delete(__p);
  }

  LODWORD(__p) = v4;
  LODWORD(v85) = 1;
  if (v4 != 1)
  {
    dmlc::LogCheckFormat<int,int>(&__p, &v85);
  }

  LODWORD(__p) = HIDWORD(v4);
  LODWORD(v85) = 6;
  if (SHIDWORD(v4) < 6)
  {
    dmlc::LogCheckFormat<int,int>(&__p, &v85);
  }

  v92 = 0;
  if ((**a2)(a2, &v92, 8) != 8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 274);
    v30 = dmlc::LogMessageFatal::GetEntry(&__p);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Check failed: fi->Read(&num_field)", 34);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "MetaInfo: invalid format", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  v91 = 12;
  if (v92 < 0xC)
  {
    dmlc::LogCheckFormat<unsigned long long,unsigned long>(&v92, &v91);
  }

  v17 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v15, v16);
  if (v18 >= 0xD && *(v17 + 4) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v106, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc");
    xgboost::ConsoleLogger::ConsoleLogger(&__p, &v106, 287, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "MetaInfo: the given binary file contains extra fields which will be ignored.", 76);
    xgboost::ConsoleLogger::~ConsoleLogger(&__p);
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_row");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_col");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_nonzero");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "labels");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v85, "group_ptr");
  std::operator+<char>();
  memset(&v106, 0, sizeof(v106));
  v105 = 0;
  v102 = 0;
  if ((**a2)(a2, &v102, 8) != 8 || (v19 = v102, std::string::resize(&v106, v102, 0), v102) && ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v20 = &v106) : (v20 = v106.__r_.__value_.__r.__words[0]), (**a2)(a2, v20, v19) != v19))
  {
    v33 = dmlc::LogMessageFatal::GetEntry(&v102);
    dmlc::LogMessageFatal::Entry::Init(v33, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 114);
    v34 = dmlc::LogMessageFatal::GetEntry(&v102);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Check failed: strm->Read(&name)", 31);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ": ", 2);
    if ((v90 & 0x80u) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p;
    }

    if ((v90 & 0x80u) == 0)
    {
      v38 = v90;
    }

    else
    {
      v38 = v89;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
    dmlc::LogMessageFatal::~LogMessageFatal(&v102);
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v106.__r_.__value_.__l.__size_;
  }

  v22 = v87;
  if ((v87 & 0x80u) != 0)
  {
    v22 = v86;
  }

  if (v21 != v22 || ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v23 = &v106) : (v23 = v106.__r_.__value_.__r.__words[0]), (v87 & 0x80u) == 0 ? (v24 = &v85) : (v24 = v85), memcmp(v23, v24, v21)))
  {
    dmlc::LogCheckFormat<std::string,std::string>(&v106, &v85);
  }

  v104 = 0;
  if ((**a2)(a2, &v104, 1) != 1)
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&v102);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 118);
    v40 = dmlc::LogMessageFatal::GetEntry(&v102);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: strm->Read(&type_val)", 35);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    if ((v90 & 0x80u) == 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    if ((v90 & 0x80u) == 0)
    {
      v44 = v90;
    }

    else
    {
      v44 = v89;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
    dmlc::LogMessageFatal::~LogMessageFatal(&v102);
  }

  v25 = v104;
  if (v104 != 3)
  {
    v45 = dmlc::LogMessageFatal::GetEntry(&v102);
    dmlc::LogMessageFatal::Entry::Init(v45, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 120);
    v46 = dmlc::LogMessageFatal::GetEntry(&v102);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Check failed: type == expected_type", 35);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    if ((v90 & 0x80u) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p;
    }

    if ((v90 & 0x80u) == 0)
    {
      v50 = v90;
    }

    else
    {
      v50 = v89;
    }

    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Expected field of type: ", 24);
    v53 = MEMORY[0x277C68E20](v52, 3);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ", ", 2);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "got field type: ", 16);
    MEMORY[0x277C68E20](v55, v25);
    dmlc::LogMessageFatal::~LogMessageFatal(&v102);
  }

  if ((**a2)(a2, &v105, 1) != 1)
  {
    v56 = dmlc::LogMessageFatal::GetEntry(&v102);
    dmlc::LogMessageFatal::Entry::Init(v56, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 123);
    v57 = dmlc::LogMessageFatal::GetEntry(&v102);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Check failed: strm->Read(&is_scalar)", 36);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ": ", 2);
    if ((v90 & 0x80u) == 0)
    {
      v60 = &__p;
    }

    else
    {
      v60 = __p;
    }

    if ((v90 & 0x80u) == 0)
    {
      v61 = v90;
    }

    else
    {
      v61 = v89;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
    dmlc::LogMessageFatal::~LogMessageFatal(&v102);
  }

  if (v105 == 1)
  {
    v62 = dmlc::LogMessageFatal::GetEntry(&v102);
    dmlc::LogMessageFatal::Entry::Init(v62, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 124);
    v63 = dmlc::LogMessageFatal::GetEntry(&v102);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Check failed: !is_scalar", 24);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ": ", 2);
    if ((v90 & 0x80u) == 0)
    {
      v66 = &__p;
    }

    else
    {
      v66 = __p;
    }

    if ((v90 & 0x80u) == 0)
    {
      v67 = v90;
    }

    else
    {
      v67 = v89;
    }

    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Expected field ", 15);
    if ((v87 & 0x80u) == 0)
    {
      v70 = &v85;
    }

    else
    {
      v70 = v85;
    }

    if ((v87 & 0x80u) == 0)
    {
      v71 = v87;
    }

    else
    {
      v71 = v86;
    }

    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " to be a vector; got a scalar", 29);
    dmlc::LogMessageFatal::~LogMessageFatal(&v102);
  }

  v102 = 0;
  v103 = 0;
  if ((**a2)(a2, &v102, 8) != 8)
  {
    v73 = dmlc::LogMessageFatal::GetEntry(&v107);
    dmlc::LogMessageFatal::Entry::Init(v73, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 128);
    v74 = dmlc::LogMessageFatal::GetEntry(&v107);
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Check failed: strm->Read(&shape.first)", 38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v107);
  }

  if ((**a2)(a2, &v103, 8) != 8)
  {
    v76 = dmlc::LogMessageFatal::GetEntry(&v107);
    dmlc::LogMessageFatal::Entry::Init(v76, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 129);
    v77 = dmlc::LogMessageFatal::GetEntry(&v107);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Check failed: strm->Read(&shape.second)", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v107);
  }

  v101 = 1;
  if (v103 != 1)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(&v103, &v101);
  }

  v107 = 0;
  if ((**a2)(a2, &v107, 8) != 8 || (v26 = v107, std::vector<float>::resize(this + 2, v107), v107) && (**a2)(a2, this[6], 4 * v26) != 4 * v26)
  {
    v79 = dmlc::LogMessageFatal::GetEntry(&v107);
    dmlc::LogMessageFatal::Entry::Init(v79, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 133);
    v80 = dmlc::LogMessageFatal::GetEntry(&v107);
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Check failed: strm->Read(field)", 31);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ": ", 2);
    if ((v90 & 0x80u) == 0)
    {
      v83 = &__p;
    }

    else
    {
      v83 = __p;
    }

    if ((v90 & 0x80u) == 0)
    {
      v84 = v90;
    }

    else
    {
      v84 = v89;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, v83, v84);
    dmlc::LogMessageFatal::~LogMessageFatal(&v107);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v90 < 0)
  {
    operator delete(__p);
  }

  if (v87 < 0)
  {
    operator delete(v85);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weights");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "base_margin");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "labels_lower_bound");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "labels_upper_bound");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "feature_names");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "feature_types");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "feature_weights");
  if (v90 < 0)
  {
    operator delete(__p);
  }

  xgboost::LoadFeatureType(this + 15, this[21]);
  v93[0] = *MEMORY[0x277D82818];
  v27 = *(MEMORY[0x277D82818] + 72);
  *(v93 + *(v93[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v94 = v27;
  v95 = MEMORY[0x277D82878] + 16;
  if (v97 < 0)
  {
    operator delete(v96[7].__locale_);
  }

  v95 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v96);
  std::iostream::~basic_iostream();
  return MEMORY[0x277C690D0](&v98);
}

void sub_274D3F6CC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  if (*(v63 - 73) < 0)
  {
    operator delete(*(v63 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a8 < 0)
  {
    operator delete(a3);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a48, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_274D3FC3C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x277C690D0](v1);
  _Unwind_Resume(a1);
}

void anonymous namespace::LoadScalarField<unsigned long long>(uint64_t (***a1)(void, std::string::size_type *, uint64_t), uint64_t a2, std::string::size_type *a3)
{
  std::operator+<char>();
  memset(&v64, 0, sizeof(v64));
  v63 = 0;
  v68 = 0;
  if ((**a1)(a1, &v68, 8) != 8 || (v6 = v68, std::string::resize(&v64, v68, 0), v68) && ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v64) : (v7 = v64.__r_.__value_.__r.__words[0]), (**a1)(a1, v7, v6) != v6))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v68);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 92);
    v16 = dmlc::LogMessageFatal::GetEntry(&v68);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: strm->Read(&name)", 31);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
    if ((v67 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v67 & 0x80u) == 0)
    {
      v20 = v67;
    }

    else
    {
      v20 = v66;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, p_p, v20);
    dmlc::LogMessageFatal::~LogMessageFatal(&v68);
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v64.__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (size != v9 || ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v64) : (v11 = v64.__r_.__value_.__r.__words[0]), (v12 = *a2, v10 >= 0) ? (v13 = a2) : (v13 = *a2), memcmp(v11, v13, size)))
  {
    dmlc::LogCheckFormat<std::string,std::string>(&v64, a2);
  }

  LOBYTE(v68) = 0;
  if ((**a1)(a1, &v68, 1) != 1)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 96);
    v22 = dmlc::LogMessageFatal::GetEntry(&v62);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: strm->Read(&type_val)", 35);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    if ((v67 & 0x80u) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if ((v67 & 0x80u) == 0)
    {
      v26 = v67;
    }

    else
    {
      v26 = v66;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  v14 = v68;
  if (v68 != 4)
  {
    v27 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v27, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 98);
    v28 = dmlc::LogMessageFatal::GetEntry(&v62);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Check failed: type == expected_type", 35);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
    if ((v67 & 0x80u) == 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    if ((v67 & 0x80u) == 0)
    {
      v32 = v67;
    }

    else
    {
      v32 = v66;
    }

    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Expected field of type: ", 24);
    v35 = MEMORY[0x277C68E20](v34, 4);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", ", 2);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "got field type: ", 16);
    MEMORY[0x277C68E20](v37, v14);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  if ((**a1)(a1, &v63, 1) != 1)
  {
    v38 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v38, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 101);
    v39 = dmlc::LogMessageFatal::GetEntry(&v62);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Check failed: strm->Read(&is_scalar)", 36);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ": ", 2);
    if ((v67 & 0x80u) == 0)
    {
      v42 = &__p;
    }

    else
    {
      v42 = __p;
    }

    if ((v67 & 0x80u) == 0)
    {
      v43 = v67;
    }

    else
    {
      v43 = v66;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  if ((v63 & 1) == 0)
  {
    v44 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v44, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 102);
    v45 = dmlc::LogMessageFatal::GetEntry(&v62);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Check failed: is_scalar", 23);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ": ", 2);
    if ((v67 & 0x80u) == 0)
    {
      v48 = &__p;
    }

    else
    {
      v48 = __p;
    }

    if ((v67 & 0x80u) == 0)
    {
      v49 = v67;
    }

    else
    {
      v49 = v66;
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Expected field ", 15);
    v52 = *(a2 + 23);
    if (v52 >= 0)
    {
      v53 = a2;
    }

    else
    {
      v53 = *a2;
    }

    if (v52 >= 0)
    {
      v54 = *(a2 + 23);
    }

    else
    {
      v54 = *(a2 + 8);
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " to be a scalar; got a vector", 29);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  if ((**a1)(a1, a3, 8) != 8)
  {
    v56 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v56, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 104);
    v57 = dmlc::LogMessageFatal::GetEntry(&v62);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Check failed: strm->Read(field)", 31);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ": ", 2);
    if ((v67 & 0x80u) == 0)
    {
      v60 = &__p;
    }

    else
    {
      v60 = __p;
    }

    if ((v67 & 0x80u) == 0)
    {
      v61 = v67;
    }

    else
    {
      v61 = v66;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p);
  }
}

void sub_274D402C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::LoadTensorField<float,2>(uint64_t (***a1)(void, std::string::size_type *, uint64_t), uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  memset(&v76, 0, sizeof(v76));
  v75 = 0;
  __n[0] = 0;
  if ((**a1)(a1, __n, 8) != 8 || (v6 = __n[0], std::string::resize(&v76, __n[0], 0), __n[0]) && ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v76) : (v7 = v76.__r_.__value_.__r.__words[0]), (**a1)(a1, v7, v6) != v6))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__n);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 150);
    v28 = dmlc::LogMessageFatal::GetEntry(__n);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Check failed: strm->Read(&name)", 31);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
    if ((v79 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v79 & 0x80u) == 0)
    {
      v32 = v79;
    }

    else
    {
      v32 = v78;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, p_p, v32);
    dmlc::LogMessageFatal::~LogMessageFatal(__n);
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v76.__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (size != v9 || ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v76) : (v11 = v76.__r_.__value_.__r.__words[0]), (v12 = *a2, v10 >= 0) ? (v13 = a2) : (v13 = *a2), memcmp(v11, v13, size)))
  {
    dmlc::LogCheckFormat<std::string,std::string>(&v76, a2);
  }

  v74 = 0;
  if ((**a1)(a1, &v74, 1) != 1)
  {
    v33 = dmlc::LogMessageFatal::GetEntry(__n);
    dmlc::LogMessageFatal::Entry::Init(v33, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 154);
    v34 = dmlc::LogMessageFatal::GetEntry(__n);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Check failed: strm->Read(&type_val)", 35);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ": ", 2);
    if ((v79 & 0x80u) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p;
    }

    if ((v79 & 0x80u) == 0)
    {
      v38 = v79;
    }

    else
    {
      v38 = v78;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
    dmlc::LogMessageFatal::~LogMessageFatal(__n);
  }

  v14 = v74;
  if (v74 != 1)
  {
    v39 = dmlc::LogMessageFatal::GetEntry(__n);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 156);
    v40 = dmlc::LogMessageFatal::GetEntry(__n);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: type == expected_type", 35);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    if ((v79 & 0x80u) == 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    if ((v79 & 0x80u) == 0)
    {
      v44 = v79;
    }

    else
    {
      v44 = v78;
    }

    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Expected field of type: ", 24);
    v47 = MEMORY[0x277C68E20](v46, 1);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ", ", 2);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "got field type: ", 16);
    MEMORY[0x277C68E20](v49, v14);
    dmlc::LogMessageFatal::~LogMessageFatal(__n);
  }

  if ((**a1)(a1, &v75, 1) != 1)
  {
    v50 = dmlc::LogMessageFatal::GetEntry(__n);
    dmlc::LogMessageFatal::Entry::Init(v50, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 160);
    v51 = dmlc::LogMessageFatal::GetEntry(__n);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Check failed: strm->Read(&is_scalar)", 36);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
    if ((v79 & 0x80u) == 0)
    {
      v54 = &__p;
    }

    else
    {
      v54 = __p;
    }

    if ((v79 & 0x80u) == 0)
    {
      v55 = v79;
    }

    else
    {
      v55 = v78;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
    dmlc::LogMessageFatal::~LogMessageFatal(__n);
  }

  if (v75 == 1)
  {
    v56 = dmlc::LogMessageFatal::GetEntry(__n);
    dmlc::LogMessageFatal::Entry::Init(v56, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 161);
    v57 = dmlc::LogMessageFatal::GetEntry(__n);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Check failed: !is_scalar", 24);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ": ", 2);
    if ((v79 & 0x80u) == 0)
    {
      v60 = &__p;
    }

    else
    {
      v60 = __p;
    }

    if ((v79 & 0x80u) == 0)
    {
      v61 = v79;
    }

    else
    {
      v61 = v78;
    }

    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Expected field ", 15);
    v64 = *(a2 + 23);
    if (v64 >= 0)
    {
      v65 = a2;
    }

    else
    {
      v65 = *a2;
    }

    if (v64 >= 0)
    {
      v66 = *(a2 + 23);
    }

    else
    {
      v66 = *(a2 + 8);
    }

    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v65, v66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " to be a tensor; got a scalar", 29);
    dmlc::LogMessageFatal::~LogMessageFatal(__n);
  }

  v15 = __n;
  v16 = 1;
  do
  {
    v17 = v16;
    if ((**a1)(a1, v15, 8) != 8)
    {
      v18 = dmlc::LogMessageFatal::GetEntry(&__sz);
      dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 165);
      v19 = dmlc::LogMessageFatal::GetEntry(&__sz);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: strm->Read(&(shape[i]))", 37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
    }

    v16 = 0;
    v15 = &__n[1];
  }

  while ((v17 & 1) != 0);
  v21 = __n[0];
  *(a3 + 8) = *__n;
  v22 = *a3;
  v23 = *(a3 + 16) * *(a3 + 8);
  LODWORD(__sz) = 0;
  std::vector<float>::resize(v22, v23, &__sz, v21);
  v24 = *a3;
  __sz = 0;
  if ((**a1)(a1, &__sz, 8) != 8 || (v25 = __sz, std::vector<float>::resize(v24, __sz), __sz) && (**a1)(a1, v24->__begin_, 4 * v25) != 4 * v25)
  {
    v68 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v68, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 169);
    v69 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Check failed: strm->Read(&field)", 32);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ": ", 2);
    if ((v79 & 0x80u) == 0)
    {
      v72 = &__p;
    }

    else
    {
      v72 = __p;
    }

    if ((v79 & 0x80u) == 0)
    {
      v73 = v79;
    }

    else
    {
      v73 = v78;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v72, v73);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (v79 < 0)
  {
    operator delete(__p);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_274D40B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::LoadVectorField<float>(uint64_t (***a1)(void, std::string::size_type *, uint64_t), uint64_t a2, std::vector<unsigned int> *a3)
{
  std::operator+<char>();
  memset(&v74, 0, sizeof(v74));
  v73 = 0;
  __n = 0;
  if ((**a1)(a1, &__n, 8) != 8 || (v6 = __n, std::string::resize(&v74, __n, 0), __n) && ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v74) : (v7 = v74.__r_.__value_.__r.__words[0]), (**a1)(a1, v7, v6) != v6))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 114);
    v17 = dmlc::LogMessageFatal::GetEntry(&__n);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: strm->Read(&name)", 31);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    if ((v77 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v77 & 0x80u) == 0)
    {
      v21 = v77;
    }

    else
    {
      v21 = v76;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, p_p, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v74.__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (size != v9 || ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v74) : (v11 = v74.__r_.__value_.__r.__words[0]), (v12 = *a2, v10 >= 0) ? (v13 = a2) : (v13 = *a2), memcmp(v11, v13, size)))
  {
    dmlc::LogCheckFormat<std::string,std::string>(&v74, a2);
  }

  v72 = 0;
  if ((**a1)(a1, &v72, 1) != 1)
  {
    v22 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 118);
    v23 = dmlc::LogMessageFatal::GetEntry(&__n);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: strm->Read(&type_val)", 35);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    if ((v77 & 0x80u) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    if ((v77 & 0x80u) == 0)
    {
      v27 = v77;
    }

    else
    {
      v27 = v76;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  v14 = v72;
  if (v72 != 1)
  {
    v28 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 120);
    v29 = dmlc::LogMessageFatal::GetEntry(&__n);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: type == expected_type", 35);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
    if ((v77 & 0x80u) == 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    if ((v77 & 0x80u) == 0)
    {
      v33 = v77;
    }

    else
    {
      v33 = v76;
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Expected field of type: ", 24);
    v36 = MEMORY[0x277C68E20](v35, 1);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", ", 2);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "got field type: ", 16);
    MEMORY[0x277C68E20](v38, v14);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  if ((**a1)(a1, &v73, 1) != 1)
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 123);
    v40 = dmlc::LogMessageFatal::GetEntry(&__n);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: strm->Read(&is_scalar)", 36);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    if ((v77 & 0x80u) == 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    if ((v77 & 0x80u) == 0)
    {
      v44 = v77;
    }

    else
    {
      v44 = v76;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  if (v73 == 1)
  {
    v45 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v45, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 124);
    v46 = dmlc::LogMessageFatal::GetEntry(&__n);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Check failed: !is_scalar", 24);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    if ((v77 & 0x80u) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p;
    }

    if ((v77 & 0x80u) == 0)
    {
      v50 = v77;
    }

    else
    {
      v50 = v76;
    }

    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Expected field ", 15);
    v53 = *(a2 + 23);
    if (v53 >= 0)
    {
      v54 = a2;
    }

    else
    {
      v54 = *a2;
    }

    if (v53 >= 0)
    {
      v55 = *(a2 + 23);
    }

    else
    {
      v55 = *(a2 + 8);
    }

    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v54, v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " to be a vector; got a scalar", 29);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  __n = 0;
  v71 = 0;
  if ((**a1)(a1, &__n, 8) != 8)
  {
    v57 = dmlc::LogMessageFatal::GetEntry(&v78);
    dmlc::LogMessageFatal::Entry::Init(v57, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 128);
    v58 = dmlc::LogMessageFatal::GetEntry(&v78);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Check failed: strm->Read(&shape.first)", 38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v78);
  }

  if ((**a1)(a1, &v71, 8) != 8)
  {
    v60 = dmlc::LogMessageFatal::GetEntry(&v78);
    dmlc::LogMessageFatal::Entry::Init(v60, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 129);
    v61 = dmlc::LogMessageFatal::GetEntry(&v78);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "Check failed: strm->Read(&shape.second)", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v78);
  }

  v69 = 1;
  if (v71 != 1)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(&v71, &v69);
  }

  v78 = 0;
  if ((**a1)(a1, &v78, 8) != 8 || (v15 = v78, std::vector<float>::resize(a3, v78), v78) && (**a1)(a1, a3->__begin_, 4 * v15) != 4 * v15)
  {
    v63 = dmlc::LogMessageFatal::GetEntry(&v78);
    dmlc::LogMessageFatal::Entry::Init(v63, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 133);
    v64 = dmlc::LogMessageFatal::GetEntry(&v78);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Check failed: strm->Read(field)", 31);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ": ", 2);
    if ((v77 & 0x80u) == 0)
    {
      v67 = &__p;
    }

    else
    {
      v67 = __p;
    }

    if ((v77 & 0x80u) == 0)
    {
      v68 = v77;
    }

    else
    {
      v68 = v76;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v67, v68);
    dmlc::LogMessageFatal::~LogMessageFatal(&v78);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v77 < 0)
  {
    operator delete(__p);
  }
}

void sub_274D41530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::LoadVectorField<std::string>(uint64_t (***a1)(void, std::string::size_type *, uint64_t), uint64_t a2, std::vector<std::string> *a3)
{
  std::operator+<char>();
  memset(&v79, 0, sizeof(v79));
  v78 = 0;
  __n = 0;
  if ((**a1)(a1, &__n, 8) != 8 || (v6 = __n, std::string::resize(&v79, __n, 0), __n) && ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v79) : (v7 = v79.__r_.__value_.__r.__words[0]), (**a1)(a1, v7, v6) != v6))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 114);
    v23 = dmlc::LogMessageFatal::GetEntry(&__n);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: strm->Read(&name)", 31);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    if ((v82 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v82 & 0x80u) == 0)
    {
      v27 = v82;
    }

    else
    {
      v27 = v81;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, p_p, v27);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v79.__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (size != v9 || ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v79) : (v11 = v79.__r_.__value_.__r.__words[0]), (v12 = *a2, v10 >= 0) ? (v13 = a2) : (v13 = *a2), memcmp(v11, v13, size)))
  {
    dmlc::LogCheckFormat<std::string,std::string>(&v79, a2);
  }

  v77 = 0;
  if ((**a1)(a1, &v77, 1) != 1)
  {
    v28 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 118);
    v29 = dmlc::LogMessageFatal::GetEntry(&__n);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: strm->Read(&type_val)", 35);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
    if ((v82 & 0x80u) == 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    if ((v82 & 0x80u) == 0)
    {
      v33 = v82;
    }

    else
    {
      v33 = v81;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  v14 = v77;
  if (v77 != 5)
  {
    v34 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v34, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 120);
    v35 = dmlc::LogMessageFatal::GetEntry(&__n);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Check failed: type == expected_type", 35);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ": ", 2);
    if ((v82 & 0x80u) == 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p;
    }

    if ((v82 & 0x80u) == 0)
    {
      v39 = v82;
    }

    else
    {
      v39 = v81;
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Expected field of type: ", 24);
    v42 = MEMORY[0x277C68E20](v41, 5);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", ", 2);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "got field type: ", 16);
    MEMORY[0x277C68E20](v44, v14);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  if ((**a1)(a1, &v78, 1) != 1)
  {
    v45 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v45, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 123);
    v46 = dmlc::LogMessageFatal::GetEntry(&__n);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Check failed: strm->Read(&is_scalar)", 36);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    if ((v82 & 0x80u) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p;
    }

    if ((v82 & 0x80u) == 0)
    {
      v50 = v82;
    }

    else
    {
      v50 = v81;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  if (v78 == 1)
  {
    v51 = dmlc::LogMessageFatal::GetEntry(&__n);
    dmlc::LogMessageFatal::Entry::Init(v51, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 124);
    v52 = dmlc::LogMessageFatal::GetEntry(&__n);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Check failed: !is_scalar", 24);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ": ", 2);
    if ((v82 & 0x80u) == 0)
    {
      v55 = &__p;
    }

    else
    {
      v55 = __p;
    }

    if ((v82 & 0x80u) == 0)
    {
      v56 = v82;
    }

    else
    {
      v56 = v81;
    }

    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Expected field ", 15);
    v59 = *(a2 + 23);
    if (v59 >= 0)
    {
      v60 = a2;
    }

    else
    {
      v60 = *a2;
    }

    if (v59 >= 0)
    {
      v61 = *(a2 + 23);
    }

    else
    {
      v61 = *(a2 + 8);
    }

    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v60, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " to be a vector; got a scalar", 29);
    dmlc::LogMessageFatal::~LogMessageFatal(&__n);
  }

  __n = 0;
  v76 = 0;
  if ((**a1)(a1, &__n, 8) != 8)
  {
    v63 = dmlc::LogMessageFatal::GetEntry(&v84);
    dmlc::LogMessageFatal::Entry::Init(v63, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 128);
    v64 = dmlc::LogMessageFatal::GetEntry(&v84);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Check failed: strm->Read(&shape.first)", 38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v84);
  }

  if ((**a1)(a1, &v76, 8) != 8)
  {
    v66 = dmlc::LogMessageFatal::GetEntry(&v84);
    dmlc::LogMessageFatal::Entry::Init(v66, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 129);
    v67 = dmlc::LogMessageFatal::GetEntry(&v84);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Check failed: strm->Read(&shape.second)", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v84);
  }

  LODWORD(__sz) = 1;
  if (v76 != 1)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(&v76, &__sz);
  }

  __sz = 0;
  if ((**a1)(a1, &__sz, 8) != 8)
  {
    goto LABEL_90;
  }

  v15 = __sz;
  std::vector<std::string>::resize(a3, __sz);
  v16 = a3->__end_ == a3->__begin_ ? 0 : a3->__begin_;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    v19 = v15;
    do
    {
      v84 = 0;
      if ((**a1)(a1, &v84, 8) != 8)
      {
        break;
      }

      v20 = v84;
      std::string::resize(v16, v84, 0);
      if (v84)
      {
        v21 = v16;
        if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v16->__r_.__value_.__r.__words[0];
        }

        if ((**a1)(a1, v21, v20) != v20)
        {
          break;
        }
      }

      v17 = v18++ >= v15;
      ++v16;
      --v19;
    }

    while (v19);
    if (!v17)
    {
LABEL_90:
      v69 = dmlc::LogMessageFatal::GetEntry(&v84);
      dmlc::LogMessageFatal::Entry::Init(v69, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 133);
      v70 = dmlc::LogMessageFatal::GetEntry(&v84);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Check failed: strm->Read(field)", 31);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      if ((v82 & 0x80u) == 0)
      {
        v73 = &__p;
      }

      else
      {
        v73 = __p;
      }

      if ((v82 & 0x80u) == 0)
      {
        v74 = v82;
      }

      else
      {
        v74 = v81;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
      dmlc::LogMessageFatal::~LogMessageFatal(&v84);
    }
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(__p);
  }
}

void sub_274D41FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::Gather<float>(void *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 == a2[1])
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    v7 = *a3;
    result = std::vector<float>::vector[abi:ne200100](result, *a3 * a4);
    if (v7)
    {
      v8 = 0;
      v9 = *a3;
      v10 = *a2;
      v11 = *result;
      do
      {
        if (v8 == v9)
        {
          std::terminate();
        }

        if (a4)
        {
          v12 = (v10 + 4 * *(a3[1] + 4 * v8) * a4);
          v13 = v11;
          v14 = a4;
          do
          {
            v15 = *v12++;
            *v13++ = v15;
            --v14;
          }

          while (v14);
        }

        ++v8;
        v11 += a4;
      }

      while (v8 != v7);
    }
  }

  return result;
}

void sub_274D427C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274D42824()
{
  if (v0)
  {
    if (atomic_fetch_add_explicit(v0 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v0 + 8))(v0);
    }
  }

  JUMPOUT(0x274D427D8);
}

uint64_t xgboost::ArrayInterfaceHandler::GetPtrFromArrayData<void *>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "data");
  v2 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 105);
    v4 = dmlc::LogMessageFatal::GetEntry(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Empty data passed in.", 21);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  v5 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v2 + 56));
  v6 = *(v5 + 2);
  if (*(v5 + 3) == v6)
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  return *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v6) + 2);
}

void xgboost::MetaInfo::SetInfoFromCUDA()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

void xgboost::MetaInfo::SetInfoFromHost(uint64_t *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a4 == 3)
  {
    if (!memcmp(a3, "qid", 3uLL))
    {
      xgboost::HostDeviceVector<unsigned int>::HostDeviceVector();
    }

    goto LABEL_19;
  }

  if (a4 != 5)
  {
    if (a4 == 11 && !memcmp(a3, "base_margin", 0xBuLL))
    {
      v8 = *a5;
      v34 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
      }

      if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v8 + 8))(v8);
      }

      v10 = *a1;
      if (*a1 && a1[11] != v10)
      {
        v11 = a1[10];
        v12 = (v11[1] - *v11) >> 2;
        if (v12 % v10)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v36);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 473);
          v29 = dmlc::LogMessageFatal::GetEntry(&v36);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: this->base_margin_.Size() % this->num_row_ == 0", 61);
          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Incorrect size for base margin.", 31);
          dmlc::LogMessageFatal::~LogMessageFatal(&v36);
          v11 = a1[10];
          v10 = *a1;
          v12 = (v11[1] - *v11) >> 2;
        }

        v13 = v12 / v10;
        a1[11] = v10;
        a1[12] = v13;
        LODWORD(v36.__ptr_) = 0;
        std::vector<float>::resize(v11, v13 * v10, &v36, v9);
      }

      goto LABEL_20;
    }

LABEL_19:
    xgboost::HostDeviceVector<float>::HostDeviceVector();
  }

  if (memcmp(a3, "label", 5uLL))
  {
    if (!memcmp(a3, "group", 5uLL))
    {
      xgboost::HostDeviceVector<unsigned int>::HostDeviceVector();
    }

    goto LABEL_19;
  }

  v15 = *a5;
  v33 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
  }

  if (v15 && atomic_fetch_add_explicit((v15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v15 + 8))(v15);
  }

  v17 = *a1;
  if (*a1 && a1[4] != v17)
  {
    *__x = ((*(a1[3] + 8) - *a1[3]) >> 2) % v17;
    LODWORD(v32) = 0;
    if (*__x)
    {
      dmlc::LogCheckFormat<unsigned long long,int>(__x, &v32);
    }

    v18 = a1[3];
    v19 = *a1;
    v20 = ((v18[1] - *v18) >> 2) / *a1;
    a1[4] = *a1;
    a1[5] = v20;
    LODWORD(v36.__ptr_) = 0;
    std::vector<float>::resize(v18, v20 * v19, &v36, v16);
  }

  v21 = a1[3];
  v22 = *v21;
  v23 = *(v21 + 8);
  if (v22 != v23)
  {
    while ((*v22 & 0x7FFFFFFFu) < 0x7F800000)
    {
      if (++v22 == v23)
      {
        goto LABEL_20;
      }
    }

    v24 = dmlc::LogMessageFatal::GetEntry(&v36);
    dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 487);
    v25 = dmlc::LogMessageFatal::GetEntry(&v36);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: valid", 19);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Label contains NaN, infinity or a value too large.", 50);
    dmlc::LogMessageFatal::~LogMessageFatal(&v36);
  }

LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
}

void xgboost::anonymous namespace::CopyTensorInfoImpl<2,float>(char ***a1, void ***a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v69 = 512;
  v67 = 0u;
  *__src = 0u;
  memset(v66, 0, sizeof(v66));
  v4 = *a1;
  v5 = *(v4 + 3);
  if (v5 == 4)
  {
    v7 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(v4);
    v8 = v7[3] - v7[2];
    *&v60 = v8 >> 3;
    LODWORD(v73.__ptr_) = 1;
    if (v8 != 8)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v60, &v73);
    }

    v9 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*a1);
    v6 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v9[2]);
  }

  else
  {
    if (v5 != 3)
    {
      goto LABEL_8;
    }

    v6 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(v4);
  }

  xgboost::ArrayInterface<2,false>::Initialize(v66, v6 + 16);
LABEL_8:
  if (__src[1])
  {
    if ((*&v66[0] & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v76);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 418);
      v51 = dmlc::LogMessageFatal::GetEntry(&v76);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Check failed: array.valid.Size() == 0", 37);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "Meta info like label or weight can not have missing value.", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v76);
    }

    if (v69 != 1 || HIBYTE(v69))
    {
      v15 = v67;
      *(a2 + 1) = v67;
      v16 = *a2;
      v17 = a2[2] * a2[1];
      LODWORD(v76.__ptr_) = 0;
      std::vector<float>::resize(v16, v17, &v76, v15);
      v18 = 0;
      v19 = a2[1];
      v21 = **a2;
      v20 = (*a2)[1];
      v30 = v20 == v21;
      v22 = (v20 - v21) >> 2;
      v65 = -1;
      v62 = v22;
      v63 = v21;
      v23 = a2[2];
      *&v61 = v19;
      *(&v61 + 1) = v23;
      v24 = v23 * v19;
      if (v30)
      {
        v24 = 0;
      }

      *&v64 = v21;
      *(&v64 + 1) = v24;
      *&v60 = v23;
      *(&v60 + 1) = 1;
      v76.__ptr_ = v23;
      v77.__m_.__sig = 1;
      while (*(&v60 + v18) == *(&v76.__ptr_ + v18))
      {
        v18 += 8;
        if (v18 == 16)
        {
          goto LABEL_21;
        }
      }

      v47 = dmlc::LogMessageFatal::GetEntry(&v76);
      dmlc::LogMessageFatal::Entry::Init(v47, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 432);
      v48 = dmlc::LogMessageFatal::GetEntry(&v76);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: t.CContiguous()", 29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v76);
      v22 = v62;
      v21 = v63;
LABEL_21:
      v54 = v60;
      v55 = v61;
      v56 = v22;
      v57 = v21;
      v58 = v64;
      v59 = v65;
      v25 = *(&v64 + 1);
      if (v22 == *(&v64 + 1))
      {
        goto LABEL_33;
      }

      v26 = 0;
      v76.__ptr_ = *(&v55 + 1);
      v77.__m_.__sig = 1;
      while (*(&v54 + v26) == *(&v76.__ptr_ + v26))
      {
        v26 += 8;
        if (v26 == 16)
        {
          goto LABEL_33;
        }
      }

      v27 = 0;
      v76.__ptr_ = 1;
      v77.__m_.__sig = v55;
      do
      {
        v28 = *(&v54 + v27);
        v29 = *(&v76.__ptr_ + v27);
        v30 = v28 != v29 || v27 == 8;
        v27 += 8;
      }

      while (!v30);
      if (v28 == v29)
      {
LABEL_33:
        v76.__ptr_ = 0;
        v77.__m_.__sig = 850045863;
        v31 = 0;
        memset(v77.__m_.__opaque, 0, sizeof(v77.__m_.__opaque));
        if (*(&v64 + 1))
        {
          v32 = 0;
          do
          {
            v71 = 2;
            v72 = &v61;
            v33 = xgboost::linalg::UnravelIndex<2ul>(v32, &v71, v31);
            v73.__ptr_ = v66;
            v74 = v33;
            v75 = v34;
            *v31.i32 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long &,unsigned long &>(unsigned long &,unsigned long &)::{lambda(float const*)#1}>(__src[0], HIBYTE(v69), &v73, v35);
            *&v21[4 * v32++] = v31.i32[0];
          }

          while (v25 != v32);
        }
      }

      else
      {
        v76.__ptr_ = 0;
        v77.__m_.__sig = 850045863;
        v37 = 0;
        memset(v77.__m_.__opaque, 0, sizeof(v77.__m_.__opaque));
        if (*(&v64 + 1))
        {
          v38 = 0;
          do
          {
            v70[0] = 2;
            v70[1] = &v55;
            v39 = xgboost::linalg::UnravelIndex<2ul>(v38, v70, v37);
            v42 = v54 * v39 + *(&v54 + 1) * v41;
            if (v42 >= v56)
            {
              __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
            }

            v43 = v58;
            v71 = 2;
            v72 = &v61;
            v44 = xgboost::linalg::UnravelIndex<2ul>(v38, &v71, v40);
            v73.__ptr_ = v66;
            v74 = v44;
            v75 = v45;
            *v37.i32 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long &,unsigned long &>(unsigned long &,unsigned long &)::{lambda(float const*)#1}>(__src[0], HIBYTE(v69), &v73, v46);
            *(v43 + 4 * v42) = v37.i32[0];
            ++v38;
          }

          while (v25 != v38);
        }
      }

      dmlc::OMPException::Rethrow(&v76);
      std::mutex::~mutex(&v77);
      std::exception_ptr::~exception_ptr(&v76);
    }

    else
    {
      v10 = v67;
      *(a2 + 1) = v67;
      LODWORD(v76.__ptr_) = 0;
      std::vector<float>::resize(*a2, __src[1], &v76, v10);
      memcpy(**a2, __src[0], 4 * __src[1]);
      v11 = a2[1];
      *&v60 = ((*a2)[1] - **a2) >> 2;
      v73.__ptr_ = (a2[2] * v11);
      if (v60 != v73.__ptr_)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v60, &v73);
      }
    }
  }

  else
  {
    v12 = v67;
    *(a2 + 1) = v67;
    v13 = *a2;
    v14 = a2[2] * a2[1];
    LODWORD(v76.__ptr_) = 0;
    std::vector<float>::resize(v13, v14, &v76, v12);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_274D43F8C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::mutex::~mutex((v1 + 8));
  std::exception_ptr::~exception_ptr((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_274D43F98()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 + 8));
  std::exception_ptr::~exception_ptr((v1 - 168));
  JUMPOUT(0x274D44078);
}

void sub_274D4401C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 168);
  *(v1 - 168) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1 - 168, v3);
  }

  _Unwind_Resume(a1);
}

void sub_274D44064(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::anonymous namespace::CopyTensorInfoImpl<1,unsigned int>(char ***a1, void ***a2)
{
  v27 = *MEMORY[0x277D85DE8];
  xgboost::ArrayInterface<1,true>::ArrayInterface(v17, a1);
  if (v20)
  {
    if ((v17[0] & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(__x);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 418);
      v14 = dmlc::LogMessageFatal::GetEntry(__x);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Check failed: array.valid.Size() == 0", 37);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Meta info like label or weight can not have missing value.", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(__x);
    }

    if (v21 == 1 && v22 == 9)
    {
      v10 = v20;
      a2[1] = __sz;
      __x[0] = 0;
      std::vector<unsigned int>::resize(*a2, v10, __x);
      memcpy(**a2, __src, 4 * v20);
      v11 = ((*a2)[1] - **a2) >> 2;
      v23 = a2[1];
      v24 = v11;
      if (v11 != v23)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v24, &v23);
      }
    }

    else
    {
      v4 = __sz;
      a2[1] = __sz;
      __x[0] = 0;
      std::vector<unsigned int>::resize(*a2, v4, __x);
      v6 = **a2;
      v5 = (*a2)[1];
      v7 = a2[1];
      *__x = 0;
      v26.__m_.__sig = 850045863;
      memset(v26.__m_.__opaque, 0, sizeof(v26.__m_.__opaque));
      if (v5 != v6 && v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v6[i] = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned int xgboost::ArrayInterface<1,true>::operator()<unsigned int,unsigned long &>(unsigned long &)::{lambda(unsigned int const*)#1}>(__src, v22, v17, i);
        }
      }

      dmlc::OMPException::Rethrow(__x);
      std::mutex::~mutex(&v26);
      std::exception_ptr::~exception_ptr(__x);
    }
  }

  else
  {
    v9 = __sz;
    a2[1] = __sz;
    __x[0] = 0;
    std::vector<unsigned int>::resize(*a2, v9, __x);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void xgboost::data::ValidateQueryGroup(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 2;
  if (v2 >= 2)
  {
    v3 = (a1 + 4);
    v4 = v2 - 1;
    while (*v3 >= *(v3 - 1))
    {
      ++v3;
      if (!--v4)
      {
        return;
      }
    }

    Entry = dmlc::LogMessageFatal::GetEntry(&v9);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/validation.h", 36);
    v6 = dmlc::LogMessageFatal::GetEntry(&v9);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: valid_query_group", 31);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Invalid group structure.", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&v9);
  }
}

void xgboost::MetaInfo::SetInfo(int a1, int a2, char *__s, uint64_t a4, int a5, uint64_t a6)
{
  v7 = a5;
  v24 = *MEMORY[0x277D85DE8];
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      strlen(__s);
      if (a4 || !a6)
      {
        v19 = a6;
        v20 = a4;
        v23 = -1;
        v17 = 1;
        v18 = a6;
        v21 = a4;
        v22 = a6;
        xgboost::linalg::ArrayInterface<unsigned int,1>();
      }
    }

    else
    {
      if (a5 != 4)
      {
        goto LABEL_12;
      }

      strlen(__s);
      if (a4 || !a6)
      {
        v19 = a6;
        v20 = a4;
        v23 = -1;
        v17 = 1;
        v18 = a6;
        v21 = a4;
        v22 = a6;
        v14 = 0x300000000;
        v15[1] = 0;
        v16 = 0;
        __p = &unk_2883E6E50;
        v15[0] = &v15[1];
        operator new();
      }
    }

LABEL_19:
    std::terminate();
  }

  if (a5 == 1)
  {
    strlen(__s);
    if (a4 || !a6)
    {
      v19 = a6;
      v20 = a4;
      v23 = -1;
      v17 = 1;
      v18 = a6;
      v21 = a4;
      v22 = a6;
      xgboost::linalg::ArrayInterface<float,1>();
    }

    goto LABEL_19;
  }

  if (a5 == 2)
  {
    strlen(__s);
    if (a4 || !a6)
    {
      v19 = a6;
      v20 = a4;
      v23 = -1;
      v17 = 1;
      v18 = a6;
      v21 = a4;
      v22 = a6;
      v14 = 0x300000000;
      v15[1] = 0;
      v16 = 0;
      __p = &unk_2883E6E50;
      v15[0] = &v15[1];
      operator new();
    }

    goto LABEL_19;
  }

LABEL_12:
  Entry = dmlc::LogMessageFatal::GetEntry(&__p);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 585);
  v10 = dmlc::LogMessageFatal::GetEntry(&__p);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Unknown data type", 17);
  LOBYTE(v17) = v7;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v17, 1);
  dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_274D45590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    if (atomic_fetch_add_explicit(v56 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v56 + 8))(v56);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::MetaInfo::GetInfo(uint64_t a1, char *__s1, uint64_t *a3, int a4, void *a5)
{
  if (a4 == 3)
  {
    if (!strcmp(__s1, "group_ptr"))
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 56) - v10;
      *a3 = v11 >> 2;
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_22;
    }

    Entry = dmlc::LogMessageFatal::GetEntry(&v27);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 615);
    v18 = dmlc::LogMessageFatal::GetEntry(&v27);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unknown uint32 field name: ", 27);
    v20 = strlen(__s1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, __s1, v20);
    v21 = &v27;
    goto LABEL_26;
  }

  if (a4 != 1)
  {
    v13 = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(v13, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 620);
    v14 = dmlc::LogMessageFatal::GetEntry(&v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown data type for getting meta info.", 40);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    return;
  }

  if (!strcmp(__s1, "label"))
  {
    v9 = 24;
  }

  else if (!strcmp(__s1, "weight"))
  {
    v9 = 72;
  }

  else if (!strcmp(__s1, "base_margin"))
  {
    v9 = 80;
  }

  else if (!strcmp(__s1, "label_lower_bound"))
  {
    v9 = 104;
  }

  else
  {
    if (strcmp(__s1, "label_upper_bound"))
    {
      if (!strcmp(__s1, "feature_weights"))
      {
        v9 = 176;
        goto LABEL_20;
      }

      v22 = dmlc::LogMessageFatal::GetEntry(&v28);
      dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 606);
      v23 = dmlc::LogMessageFatal::GetEntry(&v28);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unknown float field name: ", 26);
      v25 = strlen(__s1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, __s1, v25);
      v21 = &v28;
LABEL_26:
      dmlc::LogMessageFatal::~LogMessageFatal(v21);
      __break(1u);
      return;
    }

    v9 = 112;
  }

LABEL_20:
  v15 = *(a1 + v9);
  v12 = *v15;
  v16 = v15[1] - *v15;
  *a3 = v16 >> 2;
  if (!v16)
  {
    v12 = 0;
  }

LABEL_22:
  *a5 = v12;
}

void xgboost::MetaInfo::SetFeatureInfo(xgboost::MetaInfo *this, const char *__s1, char **a3, unint64_t a4)
{
  v19 = a4;
  if (a4)
  {
    v7 = *(this + 1);
    if (v7)
    {
      if (v7 != a4)
      {
        dmlc::LogCheckFormat<unsigned long long,unsigned long long>(&v19, this + 1);
      }
    }
  }

  if (!strcmp(__s1, "feature_type"))
  {
    std::vector<std::string>::clear[abi:ne200100](this + 15);
    v12 = *(this + 21);
    if (v19)
    {
      v13 = 0;
      v14 = *(this + 16);
      do
      {
        v15 = a3[v13];
        v18 = v15;
        if (v14 >= *(this + 17))
        {
          v14 = std::vector<std::string>::__emplace_back_slow_path<char const*&>(this + 120, &v18);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v14, v15);
          v14 += 24;
          *(this + 16) = v14;
        }

        *(this + 16) = v14;
        ++v13;
      }

      while (v13 < v19);
    }

    xgboost::LoadFeatureType(this + 15, v12);
  }

  else if (!strcmp(__s1, "feature_name"))
  {
    std::vector<std::string>::clear[abi:ne200100](this + 18);
    if (v19)
    {
      v16 = 0;
      v17 = *(this + 19);
      do
      {
        if (v17 >= *(this + 20))
        {
          v17 = std::vector<std::string>::__emplace_back_slow_path<char const*&>(this + 144, a3);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v17, *a3);
          v17 += 24;
          *(this + 19) = v17;
        }

        *(this + 19) = v17;
        ++v16;
        ++a3;
      }

      while (v16 < v19);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 643);
    v9 = dmlc::LogMessageFatal::GetEntry(&v18);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown feature info name: ", 27);
    v11 = strlen(__s1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, __s1, v11);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
  }
}

void sub_274D45D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::MetaInfo::GetFeatureInfo(void *a1, char *__s1, std::vector<std::string> *a3)
{
  if (!strcmp(__s1, "feature_type"))
  {
    std::vector<std::string>::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((a1[16] - a1[15]) >> 3));
    v10 = a1[15];
    v11 = a1[16];
    if (v10 != v11)
    {
      begin = a3->__begin_;
      do
      {
        std::string::operator=(begin++, v10++);
      }

      while (v10 != v11);
    }
  }

  else if (!strcmp(__s1, "feature_name"))
  {
    std::vector<std::string>::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((a1[19] - a1[18]) >> 3));
    v13 = a1[18];
    v14 = a1[19];
    if (v13 != v14)
    {
      v15 = a3->__begin_;
      do
      {
        std::string::operator=(v15++, v13++);
      }

      while (v13 != v14);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v16);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 657);
    v7 = dmlc::LogMessageFatal::GetEntry(&v16);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unknown feature info: ", 22);
    v9 = strlen(__s1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, __s1, v9);
    dmlc::LogMessageFatal::~LogMessageFatal(&v16);
  }
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

void xgboost::MetaInfo::Extend(xgboost::MetaInfo *this, const xgboost::MetaInfo *a2, int a3, int a4)
{
  if (a3)
  {
    *this += *a2;
  }

  v6 = (this + 8);
  v7 = *(this + 1);
  if (v7)
  {
    if (a4)
    {
      v8 = (a2 + 8);
      if (v7 != *(a2 + 1))
      {
        dmlc::LogCheckFormat<unsigned long long,unsigned long long>(v6, v8);
      }
    }

    else
    {
      if (v7 <= *(a2 + 1))
      {
        v7 = *(a2 + 1);
      }

      *v6 = v7;
    }
  }

  *(this + 1) = *(a2 + 1);
  xgboost::linalg::Stack<float,2>(this + 24, a2 + 24);
}

void sub_274D46324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = __p;
  __p = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&__p, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::linalg::Stack<float,2>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v3 != v5)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(v2, &v5);
    }
  }

  else
  {
    *v2 = *(a2 + 16);
  }

  xgboost::HostDeviceVector<float>::Extend();
}

void sub_274D46564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *xgboost::MetaInfo::Validate(xgboost::MetaInfo *this)
{
  result = *(this + 7);
  v3 = result - *(this + 6);
  if (v3)
  {
    v4 = *(*(this + 9) + 8) - **(this + 9);
    if (v4)
    {
      v12 = (v4 >> 2) + 1;
      v13 = v3 >> 2;
      if (v3 >> 2 != v12)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v13, &v12);
      }

      return result;
    }

    v5 = *--result;
    if (*this != v5)
    {
      dmlc::LogCheckFormat<unsigned int,unsigned long long>(result, this);
    }
  }

  v6 = *(*(this + 9) + 8) - **(this + 9);
  if (v6)
  {
    v13 = v6 >> 2;
    if (v6 >> 2 != *this)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v13, this);
    }
  }

  else if (*(*(this + 3) + 8) == **(this + 3))
  {
    v7 = *(*(this + 13) + 8) - **(this + 13);
    if (v7)
    {
      v13 = v7 >> 2;
      if (v7 >> 2 != *this)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v13, this);
      }
    }

    else
    {
      v8 = *(*(this + 22) + 8) - **(this + 22);
      if (v8)
      {
        v13 = v8 >> 2;
        if (v8 >> 2 != *(this + 1))
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v13, this + 1);
        }
      }

      v9 = *(*(this + 14) + 8) - **(this + 14);
      if (v9)
      {
        v13 = v9 >> 2;
        if (v9 >> 2 != *this)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v13, this);
        }
      }

      else
      {
        result = (this + 16);
        v10 = *(this + 2);
        v13 = *this * *(this + 1);
        if (v10 > v13)
        {
          dmlc::LogCheckFormat<unsigned long long,unsigned long long>(result, &v13);
        }

        v11 = *(*(this + 10) + 8) - **(this + 10);
        if (v11)
        {
          v13 = (v11 >> 2) % *this;
          LODWORD(v12) = 0;
          if (v13)
          {
            dmlc::LogCheckFormat<unsigned long long,int>(&v13, &v12);
          }
        }
      }
    }
  }

  else
  {
    v13 = *(this + 4);
    if (v13 != *this)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v13, this);
    }
  }

  return result;
}

void sub_274D46D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::DMatrix::GetThreadLocal(xgboost::DMatrix *this)
{
  v2 = *(dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get() + 8);
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
      if (v4 <= this)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= this)
    {
      return v3 + 5;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_274D46F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get()
{
  {
    v2 = dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst);
    v2[2] = 0;
    v2[1] = 0;
    *v2 = v2 + 1;
    _tlv_atexit(std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>::~map[abi:ne200100], v2);
  }

  return dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst);
}

void xgboost::DMatrix::~DMatrix(xgboost::DMatrix *this)
{
  *this = &unk_2883E2258;
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>::Get();
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = v2 + 8;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= this;
      v7 = v5 < this;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != v2 + 8 && *(v4 + 32) <= this)
    {
      v8 = this;
      std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::__erase_unique<xgboost::DMatrix const*>(v2, &v8);
    }
  }
}

uint64_t xgboost::TryLoadBinary(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = dmlc::Stream::Create(a1, "r", 1);
  if (v1)
  {
    v2 = v1;
    __dst = 0;
    v4[0] = &unk_2883E1748;
    v4[1] = v1;
    v5 = 0u;
    v6 = 0u;
    if (xgboost::common::PeekableInStream::PeekRead(v4, &__dst, 4uLL) == 4 && __dst == -21759)
    {
      operator new();
    }

    v4[0] = &unk_2883E1748;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(*(&v5 + 1));
    }

    (*(*v2 + 24))(v2);
  }

  return 0;
}

void sub_274D472AC(_Unwind_Exception *a1)
{
  *(v3 - 104) = v2;
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t xgboost::DMatrix::Load(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  memset(&v71, 0, sizeof(v71));
  memset(&__p, 0, sizeof(__p));
  v7 = std::string::find(a1, 35, 0);
  if (v7 == -1)
  {
    v41 = std::string::operator=(&v71, a1);
  }

  else
  {
    v8 = v7;
    if (*(a1 + 23) >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    std::string::basic_string(v75, a1, v7 + 1, v9, &v73);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = *v75;
    std::string::basic_string(v75, a1, 0, v8, &v73);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    v71 = *v75;
    *&v73 = std::string::find(&__p, 35, 0);
    if (v73 != *MEMORY[0x277D82638])
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v73, MEMORY[0x277D82638]);
    }

    if (!a3)
    {
LABEL_50:
      v46 = getenv("XGBOOST_TEST_NPART");
      v43 = v46;
      if (v46)
      {
        if (*v46)
        {
          LODWORD(v69.__r_.__value_.__l.__data_) = 0;
          v75[8] = 0;
          *&v75[16] = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v81 = 0;
          *v75 = &unk_2883DEAC8;
          v82[8] = 0;
          v83 = &v84;
          v84 = 0uLL;
          *(&v85 + 1) = 0;
          *&v86 = 0;
          *&v85 = &v85 + 8;
          std::string::basic_string[abi:ne200100]<0>(&__str, "XGBOOST_TEST_NPART");
          std::string::operator=(&v75[24], &__str);
          v47 = BYTE7(v78);
          if (SBYTE7(v78) < 0)
          {
            v47 = *(&v77 + 1);
          }

          if (!v47)
          {
            std::string::basic_string[abi:ne200100]<0>(&v73, "int");
            if (SBYTE7(v78) < 0)
            {
              operator delete(v77);
            }

            v77 = v73;
            *&v78 = v74;
          }

          v80 = 0;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v73, v43);
          dmlc::parameter::FieldEntry<int>::Set(v75, &v69, &v73);
          if (SHIBYTE(v74) < 0)
          {
            operator delete(v73);
          }

          data_low = LODWORD(v69.__r_.__value_.__l.__data_);
          *v75 = &unk_2883DEAC8;
          std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(&v85, *(&v85 + 1));
          std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(&v83, v84);
          dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(v75);
          v43 = 0;
          goto LABEL_63;
        }

        v43 = 0;
      }

      v48 = 1;
      data_low = 1;
      goto LABEL_68;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v75);
    v64 = a3;
    xgboost::common::Split(&__p, 0x3Au, &v73);
    v10 = v73;
    if (*(&v73 + 1) != v73)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = std::string::rfind((v10 + v11), 46, 0xFFFFFFFFFFFFFFFFLL);
        if (v13 == -1)
        {
          v30 = *(v73 + v11 + 23);
          if (v30 >= 0)
          {
            v31 = v73 + v11;
          }

          else
          {
            v31 = *(v73 + v11);
          }

          if (v30 >= 0)
          {
            v32 = *(v73 + v11 + 23);
          }

          else
          {
            v32 = *(v73 + v11 + 8);
          }

          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v31, v32);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ".r", 2);
          Engine = rabit::engine::GetEngine(v34);
          v36 = (*(*Engine + 64))(Engine);
          v37 = MEMORY[0x277C68E20](v34, v36);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "-", 1);
          v39 = rabit::engine::GetEngine(v38);
          v40 = (*(*v39 + 72))(v39);
          MEMORY[0x277C68E20](v38, v40);
        }

        else
        {
          v14 = v13;
          std::string::basic_string(&__str, (v73 + v11), 0, v13, &v69);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, p_str, size);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ".r", 2);
          v19 = rabit::engine::GetEngine(v18);
          v20 = (*(*v19 + 64))(v19);
          v21 = MEMORY[0x277C68E20](v18, v20);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-", 1);
          v23 = rabit::engine::GetEngine(v22);
          v24 = (*(*v23 + 72))(v23);
          v25 = MEMORY[0x277C68E20](v22, v24);
          v26 = (v73 + v11);
          v27 = *(v73 + v11 + 23);
          if ((v27 & 0x8000000000000000) != 0)
          {
            v27 = v26->__r_.__value_.__l.__size_;
          }

          std::string::basic_string(&v69, v26, v14, v27, v65);
          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v69;
          }

          else
          {
            v28 = v69.__r_.__value_.__r.__words[0];
          }

          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v29 = v69.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v28, v29);
          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if (++v12 == 0xAAAAAAAAAAAAAAABLL * ((*(&v73 + 1) - v73) >> 3))
        {
          break;
        }

        v69.__r_.__value_.__s.__data_[0] = 58;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, &v69, 1);
        v10 = v73;
        v11 += 24;
      }

      while (v12 < 0xAAAAAAAAAAAAAAABLL * ((*(&v73 + 1) - v73) >> 3));
    }

    std::stringbuf::str();
    a3 = v64;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    __str.__r_.__value_.__r.__words[0] = &v73;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    *v75 = *MEMORY[0x277D82828];
    *&v75[*(*v75 - 24)] = *(MEMORY[0x277D82828] + 24);
    *&v75[8] = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(*(&v78 + 1));
    }

    *&v75[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v75[16]);
    std::ostream::~ostream();
    v41 = MEMORY[0x277C690D0](v82);
  }

  if (!a3)
  {
    goto LABEL_50;
  }

  v42 = rabit::engine::GetEngine(v41);
  v43 = (*(*v42 + 64))(v42);
  v44 = rabit::engine::GetEngine(v43);
  data_low = (*(*v44 + 72))(v44);
LABEL_63:
  if (data_low == 1)
  {
    v48 = 1;
  }

  else
  {
    xgboost::BaseLogger::BaseLogger(v75);
    v89 = 4;
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "Load part of data ", 18);
    v50 = MEMORY[0x277C68E20](v49, v43);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " of ", 4);
    v52 = MEMORY[0x277C68E20](v51, data_low);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " parts", 6);
    xgboost::ConsoleLogger::~ConsoleLogger(v75);
    v48 = 0;
  }

LABEL_68:
  v53 = *(a4 + 23);
  if (v53 < 0)
  {
    if (*(a4 + 8) != 4)
    {
      goto LABEL_83;
    }

    v54 = *a4;
  }

  else
  {
    v54 = a4;
    if (v53 != 4)
    {
      goto LABEL_83;
    }
  }

  v55 = v48 ^ 1;
  if (*v54 != 1869903201)
  {
    v55 = 1;
  }

  if (v55)
  {
LABEL_83:
    v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = __p.__r_.__value_.__l.__size_;
    }

    if (v58)
    {
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
      }

      else
      {
        v67 = v71;
      }

      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v66, *a4, *(a4 + 8));
      }

      else
      {
        v66 = *a4;
      }

      *v75 = v67;
      memset(&v67, 0, sizeof(v67));
      *&v75[24] = v43;
      *&v75[28] = data_low;
      v76 = *&v66.__r_.__value_.__l.__data_;
      v62 = v66.__r_.__value_.__r.__words[2];
      memset(&v66, 0, sizeof(v66));
      *&v77 = v62;
      *&v78 = 0;
      v88 = 0;
      v87 = 0u;
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      XGProxyDMatrixCreate();
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = &v71;
    }

    else
    {
      v59 = v71.__r_.__value_.__r.__words[0];
    }

    if (*(a4 + 23) >= 0)
    {
      v60 = a4;
    }

    else
    {
      v60 = *a4;
    }

    dmlc::data::CreateParser_<unsigned int,float>(v59, v43, data_low, v60);
    *&v73 = v61;
    *v75 = &unk_2883E2390;
    *&v75[8] = 0uLL;
    *&v75[24] = v61;
    xgboost::DMatrix::Create<xgboost::data::FileAdapter>();
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v68 = v71;
  }

  Binary = xgboost::TryLoadBinary(&v68);
  v57 = Binary;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
    if (!v57)
    {
      goto LABEL_83;
    }
  }

  else if (!Binary)
  {
    goto LABEL_83;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  return v57;
}

void sub_274D48324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t __str, uint64_t __str_8, uint64_t __str_16, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::FileAdapter::~FileAdapter(xgboost::data::FileAdapter *this)
{
  *this = &unk_2883E2390;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x277C69180](v2, 0x1060C40C2E02434);
  }
}

{
  *this = &unk_2883E2390;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x277C69180](v2, 0x1060C40C2E02434);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::fileiter::Reset(xgboost::data::fileiter *this, void *a2)
{
  v3 = *(this + 55);
  if (v3 < 0)
  {
    v3 = *(this + 5);
  }

  if (!v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v11);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/file_iterator.h", 97);
    v9 = dmlc::LogMessageFatal::GetEntry(&v11);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Check failed: !type_.empty()", 28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v11);
  }

  v4 = this;
  if (*(this + 23) < 0)
  {
    v4 = *this;
  }

  v5 = this + 32;
  if (*(this + 55) < 0)
  {
    v5 = *v5;
  }

  dmlc::data::CreateParser_<unsigned int,float>(v4, *(this + 6), *(this + 7), v5);
  return std::unique_ptr<dmlc::Parser<unsigned int,float>>::reset[abi:ne200100](this + 8, v6);
}

uint64_t xgboost::data::fileiter::Next(xgboost::data::fileiter *this, void *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = *(this + 8);
  if (!v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/file_iterator.h", 59);
    v16 = dmlc::LogMessageFatal::GetEntry(v18);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: parser_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v18);
    v3 = *(this + 8);
  }

  result = (*(*v3 + 24))(v3, a2);
  if (result)
  {
    v5 = (*(**(this + 8) + 32))(*(this + 8));
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    *(this + 120) = v5[3];
    *(this + 104) = v8;
    *(this + 88) = v7;
    *(this + 72) = v6;
    v9 = *(this + 9);
    v10 = *(this + 10);
    v11 = __CFADD__(v9, 1);
    v12 = v9 + 1;
    v13 = v11;
    if (!v10 && (v13 & 1) == 0)
    {
      std::terminate();
    }

    v18[2] = v12;
    v18[3] = v10;
    v19 = -1;
    v18[0] = 1;
    v18[1] = v12;
    v18[4] = v10;
    v18[5] = v12;
    v20 = 0uLL;
    v21 = 0;
    v23 = 0x300000000;
    v25[0] = 0;
    v25[1] = 0;
    v22 = &unk_2883E6E50;
    v24 = v25;
    operator new();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

BOOL xgboost::MetaTryLoadFloatInfo(char *a1, void *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = dmlc::Stream::Create(a1, "r", 1);
  if (v3)
  {
    dmlc::istream::istream(v17, v3, 1024);
    a2[1] = *a2;
    v16 = 0;
    while (1)
    {
      v4 = MEMORY[0x277C68D40](v17, &v16);
      if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v6 = a2[1];
      v5 = a2[2];
      if (v6 >= v5)
      {
        v8 = *a2;
        v9 = v6 - *a2;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v12 = v5 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v13);
        }

        *(4 * v10) = v16;
        v7 = 4 * v10 + 4;
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v7;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6 = v16;
        v7 = (v6 + 1);
      }

      a2[1] = v7;
    }

    MEMORY[0x277C690D0](&v18);
    (*(*v3 + 24))(v3);
  }

  return v3 != 0;
}

void sub_274D4A108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20)
{
  v20 = a20;
  a20 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a20, v20);
  }

  a19 = a9;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a19);
  xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector();
}

void sub_274D4A124(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::exception_ptr a20)
{
  std::mutex::~mutex((v20 + 8));
  std::exception_ptr::~exception_ptr(&a20);
  a19 = a9;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a19);
  xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector();
}

void sub_274D4A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a19);
  v20 = a20;
  a20 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a20);
  }

  JUMPOUT(0x274D4A1A0);
}

void sub_274D4A154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a19);
  v20 = a20;
  a20 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a20);
  }

  JUMPOUT(0x274D4A1A0);
}

void sub_274D4A168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D4A174);
}

void sub_274D4A18C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274D4A1C4);
}

BOOL xgboost::SparsePage::IsIndicesSorted(uint64_t **this, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = this[1];
  LODWORD(v34.__ptr_) = 0;
  std::vector<int>::vector[abi:ne200100](&v30, a2);
  v6 = **this;
  v7 = (*this)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v32 = 1;
  v33 = a2;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v33, &v32);
  }

  v34.__ptr_ = 0;
  v35.__m_.__sig = 850045863;
  memset(v35.__m_.__opaque, 0, sizeof(v35.__m_.__opaque));
  if (v8)
  {
    v9 = 0;
    v10 = *v4;
    v11 = *v5;
    v12 = v30;
    v13 = *v30;
    do
    {
      v14 = (v10 + 8 * v9);
      v15 = v14[1];
      v16 = 8 * *v14;
      v17 = (v11 + 8 * v15);
      if (v16 != 8 * v15)
      {
        v19 = (v16 + v11 + 8);
        while (v19 != v17)
        {
          v20 = *v19;
          v21 = *(v19 - 2);
          v19 += 2;
          if (v20 < v21)
          {
            v18 = v19 - 2;
            goto LABEL_13;
          }
        }
      }

      v18 = v17;
LABEL_13:
      if (v18 == v17)
      {
        ++v13;
      }

      *v12 = v13;
      ++v9;
    }

    while (v9 != v8);
  }

  dmlc::OMPException::Rethrow(&v34);
  std::mutex::~mutex(&v35);
  std::exception_ptr::~exception_ptr(&v34);
  if (v30 == v31)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = v30;
    do
    {
      v24 = *v23++;
      v22 += v24;
    }

    while (v23 != v31);
  }

  v26 = **this;
  v25 = (*this)[1];
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v27 = ((v25 - v26) >> 3) - 1;
  if (v25 == v26)
  {
    v27 = 0;
  }

  result = v22 == v27;
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274D4A42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, int a12, char a13, std::exception_ptr a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D4A494(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274D4A48CLL);
}

void xgboost::SparsePage::SortIndices(uint64_t **this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = this[1];
  v5 = **this;
  v4 = (*this)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) >> 3) - 1;
  }

  LODWORD(v17) = a2;
  v16 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v17, &v16);
  }

  v18.__ptr_ = 0;
  v19.__m_.__sig = 850045863;
  memset(v19.__m_.__opaque, 0, sizeof(v19.__m_.__opaque));
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = (*v2 + 8 * i);
      v10 = *v8;
      v9 = v8[1];
      v11 = 126 - 2 * __clz((8 * v9 - 8 * v10) >> 3);
      v12 = (*v3 + 8 * v10);
      v13 = (*v3 + 8 * v9);
      v17 = xgboost::Entry::CmpIndex;
      if (8 * v9 == 8 * v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,false>(v12, v13, &v17, v14, 1);
    }
  }

  dmlc::OMPException::Rethrow(&v18);
  std::mutex::~mutex(&v19);
  std::exception_ptr::~exception_ptr(&v18);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_274D4A6F4(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 8));
  std::exception_ptr::~exception_ptr(&v3);
  _Unwind_Resume(a1);
}

void sub_274D4A73C(uint64_t a1, ...)
{
  va_start(va, a1);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D4A748);
}

void xgboost::SparsePage::SortRows(uint64_t **this, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = this[1];
  v5 = **this;
  v4 = (*this)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) >> 3) - 1;
  }

  LODWORD(v15) = a2;
  v14 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v15, &v14);
  }

  v16.__ptr_ = 0;
  v17.__m_.__sig = 850045863;
  memset(v17.__m_.__opaque, 0, sizeof(v17.__m_.__opaque));
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = (*v2 + 8 * i);
      v9 = *v8;
      v10 = v8[1];
      if (v9 < v10)
      {
        v11 = (*v3 + 8 * v9);
        v12 = (*v3 + 8 * v10);
        v15 = xgboost::Entry::CmpValue;
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,false>(v11, v12, &v15, 126 - 2 * __clz((8 * v10 - 8 * v9) >> 3), 1);
      }
    }
  }

  dmlc::OMPException::Rethrow(&v16);
  std::mutex::~mutex(&v17);
  std::exception_ptr::~exception_ptr(&v16);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_274D4A9C8(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 8));
  std::exception_ptr::~exception_ptr(&v3);
  _Unwind_Resume(a1);
}

void sub_274D4AA10(uint64_t a1, ...)
{
  va_start(va, a1);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D4AA1CLL);
}

void xgboost::SparsePage::Push(uint64_t **this, uint64_t **a2)
{
  v4 = *this;
  v5 = this[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *((*this)[1] - 8);
  std::vector<xgboost::Entry>::resize(v5, v8 + ((v7[1] - *v7) >> 3));
  v9 = *v5;
  v10 = v5[1] == *v5 || v9 == 0;
  if (!v10)
  {
    v11 = *v7;
    if (v7[1] != *v7 && v11 != 0)
    {
      memcpy((v9 + 8 * v8), v11, a2[1][1] - *a2[1]);
    }
  }

  v13 = **a2;
  v14 = (*a2)[1];
  v15 = ((v14 - v13) >> 3) - 1;
  v10 = v14 == v13;
  v16 = **this;
  v17 = (*this)[1];
  if (v10)
  {
    v15 = 0;
  }

  v18 = v17 - v16;
  std::vector<unsigned long>::resize(v4, v15 + ((v17 - v16) >> 3));
  v20 = **a2;
  v19 = (*a2)[1];
  if (v19 != v20)
  {
    v21 = ((v19 - v20) >> 3) - 1;
    if ((v19 - v20) >> 3 != 1)
    {
      v22 = 0;
      v23 = *v4 + v18;
      v24 = *v6 + 8;
      do
      {
        *(v23 + 8 * v22) = *(v24 + 8 * v22) + v8;
        ++v22;
      }

      while (v21 > v22);
    }
  }
}

void std::vector<xgboost::Entry>::resize(void *a1, unint64_t a2)
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
    std::vector<xgboost::Entry>::__append(a1, a2 - v2);
  }
}

void xgboost::SparsePage::PushCSC(xgboost::SparsePage *this, const xgboost::SparsePage *a2)
{
  v2 = *this;
  v3 = *a2;
  v4 = *(a2 + 1);
  v6 = *v4;
  v5 = v4[1];
  if (*v4 != v5)
  {
    v7 = *(this + 1);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      __p[0] = ((v2[1] - *v2) >> 3);
      v48 = (v3[1] - *v3) >> 3;
      if (__p[0] != v48)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(__p, &v48);
      }

      std::vector<unsigned long>::vector[abi:ne200100](v46, (v3[1] - *v3) >> 3);
      *v46[0] = 0;
      std::vector<xgboost::Entry>::vector[abi:ne200100](__p, ((v4[1] - *v4) >> 3) + ((v7[1] - *v7) >> 3));
      v10 = (v3[1] - *v3) >> 3;
      v48 = 0;
      v43 = 1;
      v11 = v10 - 1;
      if (v10 != 1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *v2;
          v15 = (v2[1] - *v2) >> 3;
          if (v15 <= v13)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          v16 = v13 + 1;
          if (v15 <= v13 + 1)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          v17 = v14[v13];
          v18 = v14[v13 + 1];
          v42 = (__p[1] - __p[0]) >> 3;
          if (v12 > v42)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v48, &v42);
          }

          v19 = v18 - v17;
          if (__p[1] == __p[0])
          {
            v20 = 0;
          }

          else
          {
            v20 = __p[0];
          }

          v21 = &v20[8 * v48];
          if (v7[1] == *v7)
          {
            v22 = 0;
          }

          else
          {
            v22 = *v7;
          }

          memcpy(v21, &v22[8 * v17], 8 * v19);
          v23 = v48 + v19;
          v48 += v19;
          v24 = *v3;
          v25 = (v3[1] - *v3) >> 3;
          if (v25 <= v13)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          if (v25 <= v16)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          v26 = *&v24[8 * v13];
          v27 = *&v24[8 * v13 + 8];
          v42 = (__p[1] - __p[0]) >> 3;
          if (v23 > v42)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v48, &v42);
          }

          v28 = v27 - v26;
          if (__p[1] == __p[0])
          {
            v29 = 0;
          }

          else
          {
            v29 = __p[0];
          }

          v30 = &v29[8 * v48];
          if (v4[1] == *v4)
          {
            v31 = 0;
          }

          else
          {
            v31 = *v4;
          }

          memcpy(v30, &v31[8 * v26], 8 * v28);
          v48 += v28;
          v42 = (v46[1] - v46[0]) >> 3;
          if (v43 >= v42)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v43, &v42);
          }

          v12 = v48;
          *(v46[0] + v43++) = v48;
          v13 = v16;
        }

        while (v16 != v11);
      }

      v32 = *v7;
      if (*v7)
      {
        v7[1] = v32;
        operator delete(v32);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
      }

      *v7 = *__p;
      v7[2] = v45;
      __p[0] = 0;
      __p[1] = 0;
      v45 = 0;
      v33 = *v2;
      if (*v2)
      {
        v2[1] = v33;
        operator delete(v33);
        *v2 = 0;
        v2[1] = 0;
        v2[2] = 0;
        v33 = __p[0];
      }

      *v2 = *v46;
      v2[2] = v47;
      v46[0] = 0;
      v46[1] = 0;
      v47 = 0;
      if (v33)
      {
        __p[1] = v33;
        operator delete(v33);
        if (v46[0])
        {
          v46[1] = v46[0];
          operator delete(v46[0]);
        }
      }

      return;
    }

    if (v7 != v4)
    {
      v34 = v5 - v6;
      v35 = v7[2];
      if (v35 - v8 < v34)
      {
        v36 = v34 >> 3;
        if (v8)
        {
          v7[1] = v8;
          operator delete(v8);
          v35 = 0;
          *v7 = 0;
          v7[1] = 0;
          v7[2] = 0;
        }

        if (!(v36 >> 61))
        {
          v37 = v35 >> 2;
          if (v35 >> 2 <= v36)
          {
            v37 = v34 >> 3;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v37;
          }

          std::vector<xgboost::Entry>::__vallocate[abi:ne200100](v7, v38);
        }

        std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
      }

      memmove(v9, v6, v34);
      v7[1] = &v9[v34];
    }
  }

  if (v2 != v3)
  {
    v39 = *v3;
    v40 = v3[1];
    v41 = &v40[-*v3] >> 3;

    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v2, v39, v40, v41);
  }
}

void sub_274D4B234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  v19 = __p;
  __p = 0;
  if (v19)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&__p, v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::data::IterativeDeviceDMatrix::Info(xgboost::data::IterativeDeviceDMatrix *this)
{
  return this + 8;
}

{
  return this + 8;
}

void xgboost::data::IterativeDeviceDMatrix::~IterativeDeviceDMatrix(xgboost::data::IterativeDeviceDMatrix *this)
{
  xgboost::data::IterativeDeviceDMatrix::~IterativeDeviceDMatrix(this);
}

{
  *this = &unk_2883E22E8;
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xgboost::MetaInfo::~MetaInfo((this + 8));
}

uint64_t xgboost::data::IterativeDeviceDMatrix::Slice()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/iterative_device_dmatrix.h", 49);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Slicing DMatrix is not supported for Device DMatrix.", 52);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

void xgboost::data::IterativeDeviceDMatrix::GetRowBatches(xgboost::data::IterativeDeviceDMatrix *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/iterative_device_dmatrix.h", 53);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(&v3, 0);
}

void xgboost::data::IterativeDeviceDMatrix::GetColumnBatches(xgboost::data::IterativeDeviceDMatrix *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/iterative_device_dmatrix.h", 57);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(&v3, 0);
}

void xgboost::data::IterativeDeviceDMatrix::GetSortedColumnBatches(xgboost::data::IterativeDeviceDMatrix *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/iterative_device_dmatrix.h", 61);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(&v3, 0);
}

void xgboost::data::IterativeDeviceDMatrix::GetEllpackBatches()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
  operator new();
}

void xgboost::data::IterativeDeviceDMatrix::GetGradientIndex()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/iterative_device_dmatrix.h", 65);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v2, 0);
}

void *xgboost::data::SimpleBatchIteratorImpl<xgboost::EllpackPage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E2400;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void xgboost::data::SimpleBatchIteratorImpl<xgboost::EllpackPage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E2400;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::EllpackPage>::operator*(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/simple_batch_iterator.h", 20);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 8);
  }

  return result;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::EllpackPage>::operator++(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::EllpackPage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

float xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(uint64_t a1, void *a2, float a3)
{
  v3 = *(a1 + 65);
  if (v3 <= 4)
  {
    if (*(a1 + 65) <= 1u)
    {
      if (!*(a1 + 65))
      {
        return *(*(a1 + 48) + 4 * *(*a2 + 16) * a2[1] + 4 * *(*a2 + 24) * a2[2]);
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 3)
      {
        return *(*(a1 + 48) + *(*a2 + 16) * a2[1] + *(*a2 + 24) * a2[2]);
      }

      else
      {
        if (v3 != 4)
        {
          goto LABEL_26;
        }

        return *(*(a1 + 48) + 2 * *(*a2 + 16) * a2[1] + 2 * *(*a2 + 24) * a2[2]);
      }
    }

    return *(*(a1 + 48) + 8 * *(*a2 + 16) * a2[1] + 8 * *(*a2 + 24) * a2[2]);
  }

  if (*(a1 + 65) > 7u)
  {
    switch(v3)
    {
      case 8u:
        LOWORD(a3) = *(*(a1 + 48) + 2 * *(*a2 + 16) * a2[1] + 2 * *(*a2 + 24) * a2[2]);
        return LODWORD(a3);
      case 9u:
        a3 = *(*(a1 + 48) + 4 * *(*a2 + 16) * a2[1] + 4 * *(*a2 + 24) * a2[2]);
        return LODWORD(a3);
      case 0xAu:
        return *(*(a1 + 48) + 8 * *(*a2 + 16) * a2[1] + 8 * *(*a2 + 24) * a2[2]);
    }

LABEL_26:
    std::terminate();
  }

  if (v3 == 5)
  {
    return *(*(a1 + 48) + 4 * *(*a2 + 16) * a2[1] + 4 * *(*a2 + 24) * a2[2]);
  }

  if (v3 == 6)
  {
    return *(*(a1 + 48) + 8 * *(*a2 + 16) * a2[1] + 8 * *(*a2 + 24) * a2[2]);
  }

  if (v3 != 7)
  {
    goto LABEL_26;
  }

  LOBYTE(a3) = *(*(a1 + 48) + *(*a2 + 16) * a2[1] + *(*a2 + 24) * a2[2]);
  return LODWORD(a3);
}

unint64_t xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 49);
  if (v3 <= 4)
  {
    if (*(a1 + 49) <= 1u)
    {
      if (!*(a1 + 49))
      {
        return *(*(a1 + 32) + 4 * *(a2 + 16) * a3);
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 3)
      {
        return *(*(a1 + 32) + *(a2 + 16) * a3);
      }

      if (v3 != 4)
      {
        goto LABEL_23;
      }

      return *(*(a1 + 32) + 2 * *(a2 + 16) * a3);
    }

    return *(*(a1 + 32) + 8 * *(a2 + 16) * a3);
  }

  if (*(a1 + 49) > 7u)
  {
    switch(v3)
    {
      case 8u:
        return *(*(a1 + 32) + 2 * *(a2 + 16) * a3);
      case 9u:
        return *(*(a1 + 32) + 4 * *(a2 + 16) * a3);
      case 0xAu:
        return *(*(a1 + 32) + 8 * *(a2 + 16) * a3);
      default:
        goto LABEL_23;
    }
  }

  else
  {
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        if (v3 == 7)
        {
          return *(*(a1 + 32) + *(a2 + 16) * a3);
        }

LABEL_23:
        std::terminate();
      }

      return *(*(a1 + 32) + 8 * *(a2 + 16) * a3);
    }

    return *(*(a1 + 32) + 4 * *(a2 + 16) * a3);
  }
}

float xgboost::ArrayInterface<1,true>::DispatchCall<float xgboost::ArrayInterface<1,true>::operator()<float,unsigned long>(unsigned long &&)::{lambda(float const*)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a1 + 49);
  if (v4 <= 4)
  {
    if (*(a1 + 49) <= 1u)
    {
      if (!*(a1 + 49))
      {
        return *(*(a1 + 32) + 4 * *(a2 + 16) * a3);
      }
    }

    else if (v4 != 2)
    {
      if (v4 == 3)
      {
        return *(*(a1 + 32) + *(a2 + 16) * a3);
      }

      else
      {
        if (v4 != 4)
        {
          goto LABEL_26;
        }

        return *(*(a1 + 32) + 2 * *(a2 + 16) * a3);
      }
    }

    return *(*(a1 + 32) + 8 * *(a2 + 16) * a3);
  }

  if (*(a1 + 49) > 7u)
  {
    switch(v4)
    {
      case 8u:
        LOWORD(a4) = *(*(a1 + 32) + 2 * *(a2 + 16) * a3);
        return LODWORD(a4);
      case 9u:
        a4 = *(*(a1 + 32) + 4 * *(a2 + 16) * a3);
        return LODWORD(a4);
      case 0xAu:
        return *(*(a1 + 32) + 8 * *(a2 + 16) * a3);
    }

LABEL_26:
    std::terminate();
  }

  if (v4 == 5)
  {
    return *(*(a1 + 32) + 4 * *(a2 + 16) * a3);
  }

  if (v4 == 6)
  {
    return *(*(a1 + 32) + 8 * *(a2 + 16) * a3);
  }

  if (v4 != 7)
  {
    goto LABEL_26;
  }

  LOBYTE(a4) = *(*(a1 + 32) + *(a2 + 16) * a3);
  return LODWORD(a4);
}

float xgboost::data::DataTableAdapterBatch::Line::DTGetValue(uint64_t a1, int a2, uint64_t a3, float a4)
{
  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v10 = *(a1 + 4 * a3);
        result = v10;
        v6 = v10 == 0x80000000;
      }

      else
      {
        v4 = *(a1 + a3);
        result = v4;
        v6 = v4 == 128;
      }

      goto LABEL_18;
    }

    if (a2 == 5)
    {
      v11 = *(a1 + 2 * a3);
      result = v11;
      v6 = v11 == 0x8000;
LABEL_18:
      if (v6)
      {
        return NAN;
      }

      return result;
    }

    if (a2 == 6)
    {
      v7 = *(a1 + 8 * a3);
      result = v7;
      v6 = v7 == 0x8000000000000000;
      goto LABEL_18;
    }

LABEL_15:
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/adapter.h", 551);
    v9 = dmlc::LogMessageFatal::GetEntry(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown data table type.", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
    return 0.0;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        LOBYTE(a4) = *(a1 + a3);
        return LODWORD(a4);
      }

      goto LABEL_15;
    }

    result = NAN;
    if ((*(a1 + 8 * a3) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return *(a1 + 8 * a3);
    }
  }

  else
  {
    result = *(a1 + 4 * a3);
    if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      return NAN;
    }
  }

  return result;
}

void xgboost::linalg::ArrayInterface<float,1>()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v1 = 0x300000000;
  v3[0] = 0;
  v3[1] = 0;
  v0 = &unk_2883E6E50;
  v2 = v3;
  operator new();
}

void sub_274D4C70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (atomic_fetch_add_explicit(v30 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<xgboost::Json>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::Json>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<xgboost::Json>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, a2);
  }

  std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<xgboost::Json>::__construct_at_end(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  *(result + 8) = *(result + 8);
  return result;
}

uint64_t std::vector<xgboost::Json>::__init_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::Json>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D4CD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*,xgboost::Json*,xgboost::Json*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = *a2;
      *v4 = *a2;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      }

      ++a2;
      ++v4;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::Json>,xgboost::Json*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::Json>,xgboost::Json*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::Json>,xgboost::Json*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::Json>,xgboost::Json*>::operator()[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        result = (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t xgboost::ArrayInterface<1,true>::ArrayInterface(uint64_t a1, char ***a2)
{
  *(a1 + 48) = 512;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = *a2;
  v4 = *(*a2 + 3);
  if (v4 == 4)
  {
    v6 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(v3);
    v7 = v6[3] - v6[2];
    v11 = v7 >> 3;
    v10 = 1;
    if (v7 != 8)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v11, &v10);
    }

    v3 = **(xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*a2) + 2);
  }

  else if (v4 != 3)
  {
    return a1;
  }

  v8 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(v3);
  xgboost::ArrayInterface<1,true>::Initialize(a1, v8 + 16);
  return a1;
}

void xgboost::ArrayInterface<1,true>::Initialize(uint64_t a1, uint64_t a2)
{
  xgboost::ArrayInterfaceHandler::Validate(a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "typestr");
  v4 = std::map<std::string,xgboost::Json>::at(a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  if (v5[39] < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(v5 + 2), *(v5 + 3));
  }

  else
  {
    v21 = *(v5 + 16);
  }

  if (v20 < 0)
  {
    operator delete(__p);
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v21;
  }

  else
  {
    v6 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  xgboost::ArrayInterface<1,true>::AssignType(a1, v6, size);
  xgboost::ArrayInterfaceHandler::ExtractShape<1>(a2, (a1 + 24));
  v8 = &v21;
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v21.__r_.__value_.__r.__words[0];
  }

  v9 = xgboost::ArrayInterfaceHandler::ExtractStride<1>(a2, v8->__r_.__value_.__s.__data_[2] - 48, a1 + 24, (a1 + 16));
  v10 = *(a1 + 24);
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
  *(a1 + 32) = xgboost::ArrayInterfaceHandler::ExtractData(a2, v10);
  __p = 0;
  v19 = 0;
  Mask = xgboost::ArrayInterfaceHandler::ExtractMask(a2, &__p);
  v17 = Mask;
  v12 = v19;
  *a1 = __p;
  *(a1 + 8) = v12;
  if (v12 && Mask != *(a1 + 40))
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, (a1 + 40));
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "stream");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a2, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 != v13)
  {
    v14 = *(v13 + 56);
    if (*(v14 + 12) != 6)
    {
      xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v14);
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../common/common.h", 239);
      v16 = dmlc::LogMessageFatal::GetEntry(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "XGBoost version not compiled with GPU support.", 46);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_274D4D2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D4D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x274D4D348);
  }

  JUMPOUT(0x274D4D34CLL);
}

_UNKNOWN **xgboost::ArrayInterfaceErrors::Dimension(xgboost::ArrayInterfaceErrors *this)
{
  v1 = this;
  {
    xgboost::ArrayInterfaceErrors::Dimension(int)::str = 0;
    qword_2809A2470 = 0;
    unk_2809A2478 = 0;
    __cxa_atexit(MEMORY[0x277D82640], &xgboost::ArrayInterfaceErrors::Dimension(int)::str, &dword_274CA4000);
  }

  if (byte_2809A247F < 0)
  {
    *xgboost::ArrayInterfaceErrors::Dimension(int)::str = 0;
    qword_2809A2470 = 0;
  }

  else
  {
    LOBYTE(xgboost::ArrayInterfaceErrors::Dimension(int)::str) = 0;
    byte_2809A247F = 0;
  }

  std::string::append(&xgboost::ArrayInterfaceErrors::Dimension(int)::str, "Only ");
  std::to_string(&v5, v1);
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v5;
  }

  else
  {
    v2 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  std::string::append(&xgboost::ArrayInterfaceErrors::Dimension(int)::str, v2, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::append(&xgboost::ArrayInterfaceErrors::Dimension(int)::str, " dimensional array is valid.");
  if (byte_2809A247F >= 0)
  {
    return &xgboost::ArrayInterfaceErrors::Dimension(int)::str;
  }

  else
  {
    return xgboost::ArrayInterfaceErrors::Dimension(int)::str;
  }
}

void sub_274D4D48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::ArrayInterfaceHandler::Validate(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "version");
  v2 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = a1 + 8;
  if (a1 + 8 == v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 115);
    v5 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  if (*(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v2 + 56)) + 2) >= 4)
  {
    v6 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v6, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 118);
    v7 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "typestr");
  v8 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3 == v8)
  {
    v9 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 123);
    v10 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  v11 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*(v8 + 56));
  if (v11[39] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v11 + 2), *(v11 + 3));
  }

  else
  {
    __p = *(v11 + 16);
  }

  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ == 3)
    {
      goto LABEL_20;
    }
  }

  else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
  {
    goto LABEL_20;
  }

  if (size != 4)
  {
    v19 = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::Entry::Init(v19, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 127);
    v20 = dmlc::LogMessageFatal::GetEntry(v23);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Check failed: typestr.size() == 3 || typestr.size() == 4", 56);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v23);
  }

LABEL_20:
  std::string::basic_string[abi:ne200100]<0>(v23, "shape");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, v23);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v3 == v13)
  {
    v14 = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::Entry::Init(v14, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 130);
    v15 = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::~LogMessageFatal(v23);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "data");
  v16 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, v23);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v3 == v16)
  {
    v17 = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::Entry::Init(v17, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 133);
    v18 = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::~LogMessageFatal(v23);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_274D4D7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::ArrayInterface<1,true>::AssignType(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2[1];
  if (a3 != 4 || v4 != 102)
  {
    switch(v4)
    {
      case 'u':
        v13 = a2[2];
        if (v13 > 0x33)
        {
          if (v13 == 52)
          {
            v12 = 9;
          }

          else
          {
            if (v13 != 56)
            {
              goto LABEL_29;
            }

            v12 = 10;
          }
        }

        else if (v13 == 49)
        {
          v12 = 7;
        }

        else
        {
          if (v13 != 50)
          {
            goto LABEL_29;
          }

          v12 = 8;
        }

        break;
      case 'i':
        v11 = a2[2];
        if (v11 > 0x33)
        {
          if (v11 == 52)
          {
            v12 = 5;
          }

          else
          {
            if (v11 != 56)
            {
              goto LABEL_29;
            }

            v12 = 6;
          }
        }

        else if (v11 == 49)
        {
          v12 = 3;
        }

        else
        {
          if (v11 != 50)
          {
            goto LABEL_29;
          }

          v12 = 4;
        }

        break;
      case 'f':
        v5 = a2[2];
        goto LABEL_10;
      default:
        goto LABEL_29;
    }

LABEL_18:
    *(a1 + 49) = v12;
    return;
  }

  v5 = a2[2];
  if (v5 != 49)
  {
LABEL_10:
    if (v5 != 56)
    {
      if (v5 == 52)
      {
        *(a1 + 49) = 0;
        return;
      }

      goto LABEL_29;
    }

    v12 = 1;
    goto LABEL_18;
  }

  if (a2[3] != 54)
  {
LABEL_29:
    Entry = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 462);
    v15 = dmlc::LogMessageFatal::GetEntry(&v19);
    xgboost::ArrayInterfaceErrors::UnSupportedType(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = &v19;
    goto LABEL_38;
  }

  *(a1 + 49) = 2;
  v6 = dmlc::LogMessageFatal::GetEntry(&__p);
  dmlc::LogMessageFatal::Entry::Init(v6, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 439);
  v7 = dmlc::LogMessageFatal::GetEntry(&__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: sizeof(long double) == 16", 39);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "128-bit floating point is not supported on current platform.", 60);
  v10 = &__p;
LABEL_38:
  dmlc::LogMessageFatal::~LogMessageFatal(v10);
}

void sub_274D4DA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  _Unwind_Resume(a1);
}

void xgboost::ArrayInterfaceHandler::ExtractShape<1>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  v4 = std::map<std::string,xgboost::Json>::at(a1, &__p);
  v5 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v4);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v6 = (v5[3] - v5[2]) >> 3;
  v17 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, v6);
  v7 = v5[2];
  v8 = v5[3];
  if (v7 != v8)
  {
    v9 = __p;
    do
    {
      v10 = *v7;
      if (*v7)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      *v9 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v10) + 2);
      if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v10 + 8))(v10);
      }

      ++v7;
      ++v9;
    }

    while (v7 != v8);
  }

  xgboost::ArrayInterfaceHandler::HandleRowVector<1>(&__p, &__p);
  v17 = 0;
  v12 = __p;
  v11 = v19;
  if (v19 == __p)
  {
    memset_pattern16(a2, &unk_274E23430, 8uLL);
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v13 = 0;
    do
    {
      v16 = 1;
      if (v13)
      {
        dmlc::LogCheckFormat<unsigned long,int>(&v17, &v16);
      }

      v14 = v17;
      v12 = __p;
      v15 = v19;
      *&a2[8 * v17] = *(__p + v17);
      v13 = v14 + 1;
      v17 = v14 + 1;
    }

    while (v14 + 1 < (v15 - v12) >> 3);
    if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      memset_pattern16(&a2[8 * v13], &unk_274E23430, 8 - 8 * v13);
    }
  }

  v19 = v12;
  operator delete(v12);
}

void sub_274D4DD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL xgboost::ArrayInterfaceHandler::ExtractStride<1>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "strides");
  v7 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v7 || *(*(v7 + 56) + 12) == 6)
  {
    v8 = 1;
    *a4 = 1;
    return v8;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  v9 = std::map<std::string,xgboost::Json>::at(a1, __p);
  v10 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v9);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (v10[3] - v10[2]) >> 3;
  v30 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](__p, v11);
  v12 = v10[2];
  v13 = v10[3];
  if (v12 != v13)
  {
    v14 = __p[0];
    do
    {
      v15 = *v12;
      if (*v12)
      {
        atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
      }

      *v14 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v15) + 2);
      if (v15 && atomic_fetch_add_explicit((v15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v15 + 8))(v15);
      }

      ++v12;
      ++v14;
    }

    while (v12 != v13);
  }

  v16 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v7 + 56));
  v17 = (v16[3] - v16[2]) >> 3;
  v32 = (v10[3] - v10[2]) >> 3;
  v33 = v17;
  if (v17 != v32)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v33, &v32);
  }

  v18 = (v16[3] - v16[2]) >> 3;
  v33 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v30, v18);
  v19 = v16[2];
  v20 = v16[3];
  if (v19 != v20)
  {
    v21 = v30;
    do
    {
      v22 = *v19;
      if (*v19)
      {
        atomic_fetch_add_explicit((v22 + 8), 1u, memory_order_relaxed);
      }

      *v21 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v22) + 2);
      if (v22 && atomic_fetch_add_explicit((v22 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v22 + 8))(v22);
      }

      ++v19;
      ++v21;
    }

    while (v19 != v20);
  }

  xgboost::ArrayInterfaceHandler::HandleRowVector<1>(__p, &v30);
  v33 = 0;
  v23 = v30;
  if (v31 == v30)
  {
    v27 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      v29 = 1;
      if (v24)
      {
        dmlc::LogCheckFormat<unsigned long,int>(&v33, &v29);
      }

      v25 = v33;
      v23 = v30;
      v26 = v31;
      a4[v33] = v30[v33] / a2;
      v24 = v25 + 1;
      v33 = v25 + 1;
    }

    while (v25 + 1 < (v26 - v23) >> 3);
    if (v25 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v8 = *a4 == 1;
      goto LABEL_37;
    }

    v27 = v24;
  }

  memset_pattern16(&a4[v27], &unk_274E23430, 8 - v27 * 8);
  v8 = *a4 == 1;
  if (v23)
  {
LABEL_37:
    v31 = v23;
    operator delete(v23);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v8;
}

void sub_274D4E298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::ArrayInterfaceHandler::ExtractData(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  xgboost::ArrayInterfaceHandler::Validate(a1);
  PtrFromArray = xgboost::ArrayInterfaceHandler::GetPtrFromArrayData<void *>(a1);
  if (!PtrFromArray)
  {
    v6 = 0;
    if (a2)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v7, &v6);
    }
  }

  return PtrFromArray;
}

void sub_274D4E4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::ArrayInterfaceHandler::ExtractMask(uint64_t a1, unint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v33, "mask");
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, &v33);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  if (a1 + 8 == v4)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v33, "mask");
  v5 = std::map<std::string,xgboost::Json>::at(a1, &v33);
  v6 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v5);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  xgboost::ArrayInterfaceHandler::Validate((v6 + 16));
  PtrFromArray = xgboost::ArrayInterfaceHandler::GetPtrFromArrayData<unsigned char *>((v6 + 16));
  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  v8 = std::map<std::string,xgboost::Json>::at((v6 + 16), &__p.__r_.__value_.__l.__data_);
  v9 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v8);
  v34 = 0;
  v35 = 0;
  v33 = 0;
  std::vector<xgboost::Json>::__init_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(&v33, v9[2], v9[3], (v9[3] - v9[2]) >> 3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = (v34 - v33);
  LODWORD(v26[0]) = 1;
  if (v34 - v33 != 8)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, v26);
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, "typestr");
  v10 = std::map<std::string,xgboost::Json>::at((v6 + 16), &v29);
  v11 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v10);
  if (v11[39] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v11 + 2), *(v11 + 3));
  }

  else
  {
    __p = *(v11 + 16);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  v28 = *std::string::at(&__p, 2uLL) - 48;
  if (*std::string::at(&__p, 1uLL) == 116)
  {
    LODWORD(v26[0]) = 1;
    if (v28 != 1)
    {
      dmlc::LogCheckFormat<long long,int>(&v28, v26);
    }
  }

  else if (*std::string::at(&__p, 1uLL) == 105)
  {
    LODWORD(v26[0]) = 1;
    if (v28 != 1)
    {
      dmlc::LogCheckFormat<long long,int>(&v28, v26);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v29);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 159);
    v14 = dmlc::LogMessageFatal::GetEntry(&v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "mask must be of integer type or bit field type.", 47);
    dmlc::LogMessageFatal::~LogMessageFatal(&v29);
  }

  if (v34 == v33)
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v33) + 2);
  std::string::basic_string[abi:ne200100]<0>(&v29, "strides");
  v15 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v6 + 16), &v29);
  v16 = v6 + 24;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  if (v16 != v15)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "strides");
    v17 = std::map<std::string,xgboost::Json>::at(a1, v26);
    v18 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v17);
    v30 = 0;
    v31 = 0;
    v29 = 0;
    std::vector<xgboost::Json>::__init_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(&v29, v18[2], v18[3], (v18[3] - v18[2]) >> 3);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v25 = (v30 - v29) >> 3;
    v24 = 1;
    if (v30 - v29 != 8)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v25, &v24);
    }

    if (v30 == v29)
    {
      std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
    }

    v19 = xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v29);
    v21 = v19[2];
    v20 = v19 + 2;
    if (v21 != v28)
    {
      dmlc::LogCheckFormat<long long,long long>(v20, &v28);
    }

    v26[0] = &v29;
    std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](v26);
  }

  v22 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v12, 3uLL));
  if (!PtrFromArray && v22)
  {
    std::terminate();
  }

  *a2 = v22;
  a2[1] = PtrFromArray;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v33;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v12;
}

void sub_274D4EC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = (v30 - 72);
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_274D4EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x274D4EDD0);
  }

  JUMPOUT(0x274D4EDB8);
}

void xgboost::ArrayInterfaceErrors::UnSupportedType(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  xgboost::ArrayInterfaceErrors::TypeStr(*(a1 + 1), &v7);
  v4 = std::string::append(&v7, "-");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v8, *(a1 + 2));
  v9 = v8;
  memset(&v8, 0, sizeof(v8));
  v6 = std::string::append(&v9, " is not supported.");
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_274D4EEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *xgboost::ArrayInterfaceErrors::TypeStr@<X0>(xgboost::ArrayInterfaceErrors *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  if (this > 98)
  {
    if (this > 108)
    {
      switch(this)
      {
        case 'm':
          v4 = "Timedelta";
          goto LABEL_28;
        case 'u':
          v4 = "Unsigned integer";
          goto LABEL_28;
        case 't':
          v4 = "Bit field";
          goto LABEL_28;
      }
    }

    else
    {
      switch(this)
      {
        case 'c':
          v4 = "Complex floating point";
          goto LABEL_28;
        case 'f':
          v4 = "Floating point";
          goto LABEL_28;
        case 'i':
          v4 = "Integer";
          goto LABEL_28;
      }
    }

LABEL_31:
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 80);
    v7 = dmlc::LogMessageFatal::GetEntry(&v14);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Invalid type code: ", 19);
    v15 = v2;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v15, 1);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "of your input data complies to: ", 32);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "https://docs.scipy.org/doc/numpy/reference/arrays.interface.html", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nOr open an issue.", 18);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
    return std::string::basic_string[abi:ne200100]<0>(a2, &unk_274E44C6E);
  }

  if (this > 84)
  {
    switch(this)
    {
      case 'U':
        v4 = "Unicode";
        goto LABEL_28;
      case 'V':
        v4 = "Other";
        goto LABEL_28;
      case 'b':
        v4 = "Boolean";
        goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (this == 77)
  {
    v4 = "Datetime";
    goto LABEL_28;
  }

  if (this == 79)
  {
    v4 = "Object";
    goto LABEL_28;
  }

  if (this != 83)
  {
    goto LABEL_31;
  }

  v4 = "String";
LABEL_28:

  return std::string::basic_string[abi:ne200100]<0>(a2, v4);
}

void xgboost::ArrayInterfaceHandler::HandleRowVector<1>(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*(a1 + 8) - *a1 == 16)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v4 != 1 && v3 != 1)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v9);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 196);
      v7 = dmlc::LogMessageFatal::GetEntry(&v9);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: m == 1 || n == 1", 30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v9);
      return;
    }

    if (v4 == 1)
    {
      **a2 = *(*a2 + 8);
    }

    else if (v3 != 1)
    {
      return;
    }

    std::vector<unsigned long>::resize(a2, 1uLL);
  }
}

uint64_t xgboost::ArrayInterfaceHandler::GetPtrFromArrayData<unsigned char *>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "data");
  v2 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 105);
    v4 = dmlc::LogMessageFatal::GetEntry(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Empty data passed in.", 21);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  v5 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v2 + 56));
  v6 = *(v5 + 2);
  if (*(v5 + 3) == v6)
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  return *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v6) + 2);
}

void dmlc::LogCheckFormat<long long,int>(void *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E60](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E20](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D4F4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<long long,long long>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E60](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E60](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D4F6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::linalg::ArrayInterface<unsigned int,1>()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v1 = 0x300000000;
  v3[0] = 0;
  v3[1] = 0;
  v0 = &unk_2883E6E50;
  v2 = v3;
  operator new();
}

void sub_274D4FEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (atomic_fetch_add_explicit(v30 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::data::FileAdapter::BeforeFirst(xgboost::data::FileAdapter *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x277C69180](v2, 0x1060C40C2E02434);
  }

  result = (*(**(this + 3) + 16))(*(this + 3));
  *(this + 1) = 0;
  return result;
}

uint64_t std::unique_ptr<dmlc::Parser<unsigned int,float>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void xgboost::data::FileIterator::~FileIterator(xgboost::data::FileIterator *this)
{
  XGDMatrixFree(*(this + 7));
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::unique_ptr<dmlc::Parser<unsigned int,float>>::reset[abi:ne200100](this + 8, 0);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
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

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }
}

void dmlc::LogCheckFormat<std::string,std::string>(uint64_t a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " (", 2);
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
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") ", 2);
  operator new();
}

void sub_274D507AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<unsigned long long,int>(void *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E70](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E20](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D50994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void xgboost::ArrayInterface<2,false>::Initialize(uint64_t a1, uint64_t a2)
{
  xgboost::ArrayInterfaceHandler::Validate(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "typestr");
  v4 = std::map<std::string,xgboost::Json>::at(a2, __p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  if (v5[39] < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(v5 + 2), *(v5 + 3));
  }

  else
  {
    v22 = *(v5 + 16);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v22;
  }

  else
  {
    v6 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  xgboost::ArrayInterface<2,false>::AssignType(a1, v6, size);
  xgboost::ArrayInterfaceHandler::ExtractShape<2>(a2, (a1 + 32));
  v8 = &v22;
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  *(a1 + 64) = xgboost::ArrayInterfaceHandler::ExtractStride<2>(a2, v8->__r_.__value_.__s.__data_[2] - 48, a1 + 32, (a1 + 16));
  v9 = *(a1 + 40) * *(a1 + 32);
  *(a1 + 56) = v9;
  *(a1 + 48) = xgboost::ArrayInterfaceHandler::ExtractData(a2, v9);
  std::string::basic_string[abi:ne200100]<0>(__p, "mask");
  v10 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a2, __p);
  v11 = a2 + 8;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 != v10)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 404);
    v17 = dmlc::LogMessageFatal::GetEntry(__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: array.find(mask) == array.cend()", 48);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Masked array is not yet supported.", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "stream");
  v12 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a2, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 != v12)
  {
    v13 = *(v12 + 56);
    if (*(v13 + 12) != 6)
    {
      xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v13);
      v14 = dmlc::LogMessageFatal::GetEntry(__p);
      dmlc::LogMessageFatal::Entry::Init(v14, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../common/common.h", 239);
      v15 = dmlc::LogMessageFatal::GetEntry(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "XGBoost version not compiled with GPU support.", 46);
      dmlc::LogMessageFatal::~LogMessageFatal(__p);
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_274D50F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D50FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    JUMPOUT(0x274D50F98);
  }

  JUMPOUT(0x274D50F9CLL);
}

void xgboost::ArrayInterface<2,false>::AssignType(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2[1];
  if (a3 != 4 || v4 != 102)
  {
    switch(v4)
    {
      case 'u':
        v13 = a2[2];
        if (v13 > 0x33)
        {
          if (v13 == 52)
          {
            v12 = 9;
          }

          else
          {
            if (v13 != 56)
            {
              goto LABEL_29;
            }

            v12 = 10;
          }
        }

        else if (v13 == 49)
        {
          v12 = 7;
        }

        else
        {
          if (v13 != 50)
          {
            goto LABEL_29;
          }

          v12 = 8;
        }

        break;
      case 'i':
        v11 = a2[2];
        if (v11 > 0x33)
        {
          if (v11 == 52)
          {
            v12 = 5;
          }

          else
          {
            if (v11 != 56)
            {
              goto LABEL_29;
            }

            v12 = 6;
          }
        }

        else if (v11 == 49)
        {
          v12 = 3;
        }

        else
        {
          if (v11 != 50)
          {
            goto LABEL_29;
          }

          v12 = 4;
        }

        break;
      case 'f':
        v5 = a2[2];
        goto LABEL_10;
      default:
        goto LABEL_29;
    }

LABEL_18:
    *(a1 + 65) = v12;
    return;
  }

  v5 = a2[2];
  if (v5 != 49)
  {
LABEL_10:
    if (v5 != 56)
    {
      if (v5 == 52)
      {
        *(a1 + 65) = 0;
        return;
      }

      goto LABEL_29;
    }

    v12 = 1;
    goto LABEL_18;
  }

  if (a2[3] != 54)
  {
LABEL_29:
    Entry = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 462);
    v15 = dmlc::LogMessageFatal::GetEntry(&v19);
    xgboost::ArrayInterfaceErrors::UnSupportedType(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = &v19;
    goto LABEL_38;
  }

  *(a1 + 65) = 2;
  v6 = dmlc::LogMessageFatal::GetEntry(&__p);
  dmlc::LogMessageFatal::Entry::Init(v6, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/array_interface.h", 439);
  v7 = dmlc::LogMessageFatal::GetEntry(&__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: sizeof(long double) == 16", 39);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "128-bit floating point is not supported on current platform.", 60);
  v10 = &__p;
LABEL_38:
  dmlc::LogMessageFatal::~LogMessageFatal(v10);
}

void sub_274D511C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  _Unwind_Resume(a1);
}

void xgboost::ArrayInterfaceHandler::ExtractShape<2>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  v4 = std::map<std::string,xgboost::Json>::at(a1, &__p);
  v5 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v4);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v6 = (v5[3] - v5[2]) >> 3;
  v15 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, v6);
  v7 = v5[2];
  v8 = v5[3];
  v9 = __p;
  if (v7 != v8)
  {
    do
    {
      v10 = *v7;
      if (*v7)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      *v9 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v10) + 2);
      if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v10 + 8))(v10);
      }

      ++v7;
      ++v9;
    }

    while (v7 != v8);
    v9 = __p;
  }

  v15 = 0;
  if (v17 == v9)
  {
    memset_pattern16(a2, &unk_274E23430, 0x10uLL);
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v11 = 0;
    do
    {
      v14 = 2;
      if (v11 > 1)
      {
        dmlc::LogCheckFormat<unsigned long,int>(&v15, &v14);
      }

      v12 = v15;
      v9 = __p;
      v13 = v17;
      *&a2[8 * v15] = *(__p + v15);
      v11 = v12 + 1;
      v15 = v11;
    }

    while (v11 < (v13 - v9));
    if (v11 <= 1)
    {
      memset_pattern16(&a2[8 * v11], &unk_274E23430, 16 - 8 * v11);
    }
  }

  v17 = v9;
  operator delete(v9);
}

void sub_274D51490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL xgboost::ArrayInterfaceHandler::ExtractStride<2>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "strides");
  v8 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, __p);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v8 || *(*(v8 + 56) + 12) == 6)
  {
    v9 = 1;
    a4[1] = 1;
    *a4 = *(a3 + 8);
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  v10 = std::map<std::string,xgboost::Json>::at(a1, __p);
  v11 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v10);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = (v11[3] - v11[2]) >> 3;
  v33 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](__p, v12);
  v31 = a3;
  v13 = v11[2];
  v14 = v11[3];
  if (v13 != v14)
  {
    v15 = __p[0];
    do
    {
      v16 = *v13;
      if (*v13)
      {
        atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
      }

      *v15 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v16) + 2);
      if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v16 + 8))(v16);
      }

      ++v13;
      ++v15;
    }

    while (v13 != v14);
  }

  v17 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v8 + 56));
  v18 = (v17[3] - v17[2]) >> 3;
  v35 = (v11[3] - v11[2]) >> 3;
  v36 = v18;
  if (v18 != v35)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v36, &v35);
  }

  v19 = (v17[3] - v17[2]) >> 3;
  v36 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v33, v19);
  v20 = v17[2];
  v21 = v17[3];
  v22 = v33;
  if (v20 != v21)
  {
    do
    {
      v23 = *v20;
      if (*v20)
      {
        atomic_fetch_add_explicit((v23 + 8), 1u, memory_order_relaxed);
      }

      *v22 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v23) + 2);
      if (v23 && atomic_fetch_add_explicit((v23 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v23 + 8))(v23);
      }

      ++v20;
      ++v22;
    }

    while (v20 != v21);
    v22 = v33;
  }

  v36 = 0;
  if (v34 == v22)
  {
    v27 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      v32 = 2;
      if (v24 > 1)
      {
        dmlc::LogCheckFormat<unsigned long,int>(&v36, &v32);
      }

      v25 = v36;
      v22 = v33;
      v26 = v34;
      a4[v36] = v33[v36] / a2;
      v24 = v25 + 1;
      v36 = v24;
    }

    while (v24 < (v26 - v22));
    if (v24 > 1)
    {
      goto LABEL_35;
    }

    v27 = v24;
  }

  memset_pattern16(&a4[v27], &unk_274E23430, 16 - v27 * 8);
LABEL_35:
  v9 = *(v31 + 8) == *a4 && a4[1] == 1;
  if (v22)
  {
    v34 = v22;
    operator delete(v22);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_274D51A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D51B70(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274D51B68);
}

float xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long &,unsigned long &>(unsigned long &,unsigned long &)::{lambda(float const*)#1}>(uint64_t a1, unsigned __int8 a2, void *a3, float a4)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        return *(a1 + 4 * *(*a3 + 16) * a3[1] + 4 * *(*a3 + 24) * a3[2]);
      }
    }

    else if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1 + *(*a3 + 16) * a3[1] + *(*a3 + 24) * a3[2]);
      }

      else
      {
        if (a2 != 4)
        {
          goto LABEL_26;
        }

        return *(a1 + 2 * *(*a3 + 16) * a3[1] + 2 * *(*a3 + 24) * a3[2]);
      }
    }

    return *(a1 + 8 * *(*a3 + 16) * a3[1] + 8 * *(*a3 + 24) * a3[2]);
  }

  if (a2 > 7u)
  {
    switch(a2)
    {
      case 8u:
        LOWORD(a4) = *(a1 + 2 * *(*a3 + 16) * a3[1] + 2 * *(*a3 + 24) * a3[2]);
        return LODWORD(a4);
      case 9u:
        a4 = *(a1 + 4 * *(*a3 + 16) * a3[1] + 4 * *(*a3 + 24) * a3[2]);
        return LODWORD(a4);
      case 0xAu:
        return *(a1 + 8 * *(*a3 + 16) * a3[1] + 8 * *(*a3 + 24) * a3[2]);
    }

LABEL_26:
    std::terminate();
  }

  if (a2 == 5)
  {
    return *(a1 + 4 * *(*a3 + 16) * a3[1] + 4 * *(*a3 + 24) * a3[2]);
  }

  if (a2 == 6)
  {
    return *(a1 + 8 * *(*a3 + 16) * a3[1] + 8 * *(*a3 + 24) * a3[2]);
  }

  if (a2 != 7)
  {
    goto LABEL_26;
  }

  LOBYTE(a4) = *(a1 + *(*a3 + 16) * a3[1] + *(*a3 + 24) * a3[2]);
  return LODWORD(a4);
}

uint64_t xgboost::ArrayInterface<1,true>::DispatchCall<unsigned int xgboost::ArrayInterface<1,true>::operator()<unsigned int,unsigned long &>(unsigned long &)::{lambda(unsigned int const*)#1}>(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        return *(a1 + 4 * *(a3 + 16) * a4);
      }
    }

    else if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1 + *(a3 + 16) * a4);
      }

      if (a2 != 4)
      {
        goto LABEL_23;
      }

      return *(a1 + 2 * *(a3 + 16) * a4);
    }

    return *(a1 + 8 * *(a3 + 16) * a4);
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      return *(a1 + 2 * *(a3 + 16) * a4);
    }

    if (a2 != 9)
    {
      if (a2 != 10)
      {
        goto LABEL_23;
      }

      return *(a1 + 8 * *(a3 + 16) * a4);
    }

    return *(a1 + 4 * *(a3 + 16) * a4);
  }

  if (a2 == 5)
  {
    return *(a1 + 4 * *(a3 + 16) * a4);
  }

  if (a2 != 6)
  {
    if (a2 == 7)
    {
      return *(a1 + *(a3 + 16) * a4);
    }

LABEL_23:
    std::terminate();
  }

  return *(a1 + 8 * *(a3 + 16) * a4);
}

float xgboost::ArrayInterface<1,true>::DispatchCall<float xgboost::ArrayInterface<1,true>::operator()<float,unsigned long &>(unsigned long &)::{lambda(float const*)#1}>(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, float a5)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        return *(a1 + 4 * *(a3 + 16) * a4);
      }
    }

    else if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1 + *(a3 + 16) * a4);
      }

      else
      {
        if (a2 != 4)
        {
          goto LABEL_26;
        }

        return *(a1 + 2 * *(a3 + 16) * a4);
      }
    }

    return *(a1 + 8 * *(a3 + 16) * a4);
  }

  if (a2 > 7u)
  {
    switch(a2)
    {
      case 8u:
        LOWORD(a5) = *(a1 + 2 * *(a3 + 16) * a4);
        return LODWORD(a5);
      case 9u:
        a5 = *(a1 + 4 * *(a3 + 16) * a4);
        return LODWORD(a5);
      case 0xAu:
        return *(a1 + 8 * *(a3 + 16) * a4);
    }

LABEL_26:
    std::terminate();
  }

  if (a2 == 5)
  {
    return *(a1 + 4 * *(a3 + 16) * a4);
  }

  if (a2 == 6)
  {
    return *(a1 + 8 * *(a3 + 16) * a4);
  }

  if (a2 != 7)
  {
    goto LABEL_26;
  }

  LOBYTE(a5) = *(a1 + *(a3 + 16) * a4);
  return LODWORD(a5);
}

void dmlc::LogCheckFormat<unsigned long long,unsigned long long>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E70](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E70](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D52154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

char *std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
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
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
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

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
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
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void dmlc::LogCheckFormat<unsigned int,unsigned long long>(unsigned int *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E30](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E70](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D52568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::destroy(void *result)
{
  if (result)
  {
    v1 = result;
    std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::destroy(*result);
    std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::destroy(v1[1]);
    xgboost::XGBAPIThreadLocalEntry::~XGBAPIThreadLocalEntry((v1 + 5));
  }

  return result;
}

void xgboost::XGBAPIThreadLocalEntry::~XGBAPIThreadLocalEntry(xgboost::XGBAPIThreadLocalEntry *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      xgboost::XGBAPIThreadLocalEntry::~XGBAPIThreadLocalEntry((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

void xgboost::XGBAPIThreadLocalEntry::XGBAPIThreadLocalEntry(xgboost::XGBAPIThreadLocalEntry *this)
{
  *(this + 3) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void sub_274D5278C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 120);
  if (v4)
  {
    *(v2 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v2 + 96);
  if (v5)
  {
    *(v2 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    *(v2 + 80) = v6;
    operator delete(v6);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = *(v2 + 24);
  if (v7)
  {
    *(v2 + 32) = v7;
    operator delete(v7);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::__erase_unique<xgboost::DMatrix const*>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 != (a1 + 1) && v3 >= v4[4])
  {
    std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::__remove_node_pointer(a1, v4);
    xgboost::XGBAPIThreadLocalEntry::~XGBAPIThreadLocalEntry((v4 + 5));
  }

  return 0;
}

uint64_t *std::__tree<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::__map_value_compare<xgboost::DMatrix const*,std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,std::less<xgboost::DMatrix const*>,true>,std::allocator<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

unint64_t *rabit::op::Reducer<rabit::op::Max,unsigned long long>(unint64_t *result, unint64_t *a2, int a3)
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

void std::vector<std::vector<unsigned long>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = *(a1 + 8);
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      *(a1 + 8) = v11;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a1, v10);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(*(a1 + 8), v15);
    *(a1 + 8) = v4 + v15;
  }
}