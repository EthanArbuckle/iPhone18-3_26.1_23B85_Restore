void *sub_26B4E74E4()
{
  if (qword_280406C00 != -1)
  {
    swift_once();
  }

  return &unk_280406E88;
}

void sub_26B4E7778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = v14[4];
  v14[4] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v14[3];
  v14[3] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v14[2];
  v14[2] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v14[1];
  v14[1] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(exception_object);
}

void CMDPFst::setStart(CMDPFst *this, int __val)
{
  std::to_string(&v4, __val);
  v3 = (*(**(this + 4) + 80))(*(this + 4), &v4);
  if (v3 == -1)
  {
    v3 = (*(**(this + 1) + 176))(*(this + 1));
    (*(**(this + 4) + 24))(*(this + 4), &v4, v3);
  }

  (*(**(this + 1) + 152))(*(this + 1), v3);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_26B4E7A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CMDPFst::setFinal(CMDPFst *this, int __val, double a3)
{
  std::to_string(&v9, __val);
  v5 = (*(**(this + 4) + 80))(*(this + 4), &v9);
  if (v5 == -1)
  {
    v5 = (*(**(this + 1) + 176))(*(this + 1));
    (*(**(this + 4) + 24))(*(this + 4), &v9, v5);
  }

  v6 = *(this + 1);
  v7 = a3;
  v8 = v7;
  (*(*v6 + 160))(v6, v5, &v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_26B4E7B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CMDPFst::setSymbols(CMDPFst *this)
{
  (*(**(this + 1) + 256))(*(this + 1), *(this + 2));
  v2 = 16;
  if (*this)
  {
    v2 = 24;
  }

  v3 = *(this + v2);
  v4 = *(**(this + 1) + 264);

  return v4();
}

void CMDPFst::addArc(uint64_t a1, int __val, int a3, uint64_t a4, uint64_t a5, double a6)
{
  std::to_string(&v20, __val);
  v11 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v20);
  if (v11 == -1)
  {
    v11 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v20, v11);
  }

  std::to_string(&v19, a3);
  v12 = (*(**(a1 + 32) + 80))(*(a1 + 32), &v19);
  LODWORD(v13) = v12;
  if (v12 == -1)
  {
    v13 = (*(**(a1 + 8) + 176))(*(a1 + 8));
    (*(**(a1 + 32) + 24))(*(a1 + 32), &v19, v13);
  }

  v14 = (*(**(a1 + 16) + 32))(*(a1 + 16), a4);
  v15 = v14;
  if (*a1 == 1)
  {
    v14 = (*(**(a1 + 24) + 32))(*(a1 + 24), a5);
  }

  v16 = *(a1 + 8);
  v17 = a6;
  v18[0] = v15;
  v18[1] = v14;
  *&v18[2] = v17;
  v18[3] = v13;
  (*(*v16 + 184))(v16, v11, v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_26B4E7E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void CMDPFst::addArc(uint64_t a1, int a2, int a3, uint64_t a4, int __val, double a6)
{
  std::to_string(&v11, __val);
  CMDPFst::addArc(a1, a2, a3, a4, &v11, a6);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_26B4E7F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cmdp_fst_util::compose(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2)
  {
    v5 = (*(*a1 + 72))(a1, 0);
    v6 = (*(*a2 + 72))(a2, 0);
    v12 = 0;
    v7 = (*(*v5 + 104))(v5);
    v8 = (*(*v6 + 96))(v6);
    fst::MergeSymbolTable(v7, v8, &v12, v9);
  }

  v10 = CMDPOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_26B44D000, v10, OS_LOG_TYPE_ERROR, "cmdp_fst_util::composeFst : null FSTs", &__p, 2u);
  }

  *a3 = 0;
}

void sub_26B4E83C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *v19 = 0;
  (*(*v21 + 8))(v21);
  (*(*v20 + 8))(v20);
  (*(*v18 + 8))(v18);
  (*(*v17 + 8))(v17);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

void fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 96))(a1);
  v7 = (*(*a1 + 104))(a1);

  fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, v6, a2, 1, v7, a3, 1);
}

void fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_26B4E8678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_26B4E86E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  v4 = 0;
  memset(v5, 0, sizeof(v5));
  v1[0] = 0;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = &v4;
  v2 = 0u;
  v3 = 0u;
  fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v1);
}

void sub_26B4E88BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a13);
  v16 = *(v14 - 80);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(v13 + 24);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void cmdp_fst_util::replace(uint64_t a1, void *a2)
{
  v10 = 0;
  if (*a2 != a2[1])
  {
    v3 = *(*a2 + 24);
    v4 = (*(*v3 + 96))(v3);
    v5 = (*(*v3 + 104))(v3);
    fst::MergeSymbolTable(v4, v5, &v10, v6);
  }

  v7 = (*(*a1 + 96))(a1);
  v8 = (*(*a1 + 104))(a1);
  fst::MergeSymbolTable(v7, v8, &v10, v9);
}

void sub_26B4E8DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  MEMORY[0x26D6787B0](v21, 0xA1C409BE6959DLL);
  *v19 = 0;
  (*(*v20 + 8))(v20);
  if (__p)
  {
    operator delete(__p);
  }

  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t cmdp_fst_util::rmEpsilon(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *fst::TropicalWeightTpl<float>::Zero();
    fst::RmEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v1);
  }

  return result;
}

void fst::RmEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(v1, a1);
}

void sub_26B4E903C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fst::AutoQueue<int>::~AutoQueue(va);
  v7 = *(v5 - 88);
  if (v7)
  {
    *(v5 - 80) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

int *fst::TropicalWeightTpl<float>::Zero()
{
  {
    fst::TropicalWeightTpl<float>::Zero();
  }

  return &fst::TropicalWeightTpl<float>::Zero(void)::zero;
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x26D6785E0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x26D678750](a1 + 52);
  return a1;
}

void sub_26B4E9398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *fst::TropicalWeightTpl<float>::NoWeight()
{
  {
    fst::TropicalWeightTpl<float>::NoWeight();
  }

  return &fst::TropicalWeightTpl<float>::NoWeight(void)::no_weight;
}

void cmdp_fst_util::shortestPath(int a1@<W1>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 > 0)
  {
    fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst();
  }

  v4 = CMDPOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a1;
    _os_log_impl(&dword_26B44D000, v4, OS_LOG_TYPE_ERROR, "RXFstOp::copyNBestStrings : invalid n = %d, n should be > 0", buf, 8u);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *MEMORY[0x277D85DE8];
}

void sub_26B4E95A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, void *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  a16 = &a13;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::vector<std::vector<std::pair<std::string,std::string>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a17 = &unk_287C06060;
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void fst::ShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(v1, a1);
}

void sub_26B4E96F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  fst::AutoQueue<int>::~AutoQueue(va);
  v9 = *(v7 - 104);
  if (v9)
  {
    *(v7 - 96) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_26B4E97DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cmdp_fst_util::pathImpl(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v52) = a3;
  if (a3 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](a2, &v52 + 1);
    (*(*a1 + 24))(&v52, a1, HIDWORD(v52));
    v9 = fst::TropicalWeightTpl<float>::Zero();
    *buf = v52;
    LODWORD(v48[0]) = *v9;
    v10.n128_u32[0] = v52;
    if (*&v52 != *v48)
    {
      std::vector<std::vector<std::pair<std::string,std::string>>>::push_back[abi:ne200100](a5, a4);
    }

    v11 = *(*(a1[1] + 56) + 8 * SHIDWORD(v52));
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    v14 = v12 == v13 ? 0 : v12;
    if (v12 != v13)
    {
      v15 = 0;
      v16 = (v13 - v12) >> 4;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      while (1)
      {
        v18 = (v14 + 16 * v15);
        if (v18[3] != HIDWORD(v52))
        {
          break;
        }

        v19 = CMDPOSLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_26B44D000, v19, OS_LOG_TYPE_ERROR, "cmdp_fst_util::unionFst : Loop detected while computing paths", buf, 2u);
        }

LABEL_49:
        if (++v15 == v17)
        {
          return;
        }
      }

      v20 = (*(*a1 + 96))(a1, v10);
      v21 = (*(*a1 + 104))(a1);
      (*(*v20 + 72))(buf, v20, *v18);
      (*(*v21 + 72))(v48, v21, v18[1]);
      if (v51 < 0)
      {
        if (*&buf[8] != 5)
        {
          goto LABEL_23;
        }

        v22 = *buf;
      }

      else
      {
        if (v51 != 5)
        {
          goto LABEL_23;
        }

        v22 = buf;
      }

      v23 = *v22;
      v24 = v22[4];
      if (v23 != 1936745788 || v24 != 62)
      {
        goto LABEL_23;
      }

      if (v49 < 0)
      {
        if (v48[1] != 5)
        {
          goto LABEL_23;
        }

        v37 = v48[0];
      }

      else
      {
        if (v49 != 5)
        {
          goto LABEL_23;
        }

        v37 = v48;
      }

      v39 = *v37;
      v40 = *(v37 + 4);
      if (v39 == 1936745788 && v40 == 62)
      {
LABEL_27:
        v28 = *a2;
        v29 = *(a2 + 8);
        v30 = *a2;
        if (*a2 != v29)
        {
          v30 = *a2;
          while (*v30 != v18[3])
          {
            if (++v30 == v29)
            {
              goto LABEL_33;
            }
          }
        }

        if (v30 == v29)
        {
LABEL_33:
          __p = 0;
          v46 = 0;
          v47 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v28, v29, (v29 - v28) >> 2);
          cmdp_fst_util::pathImpl(a1, &__p, v18[3], a4, a5);
          if (__p)
          {
            v46 = __p;
            operator delete(__p);
          }
        }

        if (v51 < 0)
        {
          if (*&buf[8] != 5)
          {
            goto LABEL_44;
          }

          v31 = *buf;
        }

        else
        {
          if (v51 != 5)
          {
            goto LABEL_44;
          }

          v31 = buf;
        }

        v32 = *v31;
        v33 = v31[4];
        if (v32 != 1936745788 || v33 != 62)
        {
          goto LABEL_44;
        }

        v36 = v49;
        if (v49 < 0)
        {
          if (v48[1] == 5)
          {
            v38 = v48[0];
LABEL_67:
            v42 = *v38;
            v43 = *(v38 + 4);
            if (v42 == 1936745788 && v43 == 62)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v49 == 5)
        {
          v38 = v48;
          goto LABEL_67;
        }

LABEL_44:
        v35 = *(a4 + 8) - 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a4, v35);
        *(a4 + 8) = v35;
        v36 = v49;
LABEL_45:
        if (v36 < 0)
        {
          operator delete(v48[0]);
        }

        if (v51 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_49;
      }

LABEL_23:
      v26 = *(a4 + 8);
      if (v26 >= *(a4 + 16))
      {
        v27 = std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::string&,std::string&>(a4, buf, v48);
      }

      else
      {
        std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(*(a4 + 8), buf, v48);
        v27 = v26 + 48;
        *(a4 + 8) = v26 + 48;
      }

      *(a4 + 8) = v27;
      goto LABEL_27;
    }
  }
}

void sub_26B4E9C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 8) = v24;
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

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C06060;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D678620](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x26D678630](v13);
  return a1;
}

void sub_26B4E9FB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x26D678630](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26B4E9F90);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_26B4EA1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<std::pair<std::string,std::string>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::pair<std::string,std::string>>>::__emplace_back_slow_path<std::vector<std::pair<std::string,std::string>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::pair<std::string,std::string>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<std::string,std::string>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
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

uint64_t std::vector<std::vector<std::pair<std::string,std::string>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<std::string,std::string>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::pair<std::string,std::string>>>::__emplace_back_slow_path<std::vector<std::pair<std::string,std::string>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::pair<std::string,std::string>>>::~__split_buffer(&v14);
  return v8;
}

void sub_26B4EA44C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::pair<std::string,std::string>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B4EA4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_26B4EA6A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

void **std::__split_buffer<std::vector<std::pair<std::string,std::string>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::pair<std::string,std::string>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::pair<std::string,std::string>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::string&,std::string&>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v13.__end_cap_.__value_ = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v7);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v3);
  v13.__end_ = (48 * v3);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return 48 * v3 + 48;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_26B4EAA20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

float fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 56) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write stream method for ", 39);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write filename method for ", 41);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_26B4EACA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B4EADA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v12, __p);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "TestProperties: stored FST properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (stored: props1, computed: props2)", 35);
      LogMessage::~LogMessage(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, 1);
  }
}

void sub_26B4EAF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v45 = 0;
  v46 = v9;
  v43 = 0;
  v44 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v38 = &v43;
    *&v39 = 0;
    *(&v39 + 1) = &v46;
    v41 = 0u;
    v42 = 0u;
    fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v38);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v33 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v46 = v13;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  (*(*a1 + 112))(a1, &v33);
  v14 = 0;
LABEL_13:
  if (!v33)
  {
    if (v35 >= v34)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v33 + 16))(v33))
  {
    if (v33)
    {
      v15 = (*(*v33 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      (*(*a1 + 120))(a1, v15, &v38);
      v16 = 1;
      while (v38)
      {
        if ((*(*v38 + 16))(v38))
        {
          if (v38)
          {
            (*(*v38 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v39 + 1))
          {
            --**(&v39 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          (*(*a1 + 24))(&v47, a1, v15);
          v27 = fst::TropicalWeightTpl<float>::Zero();
          LODWORD(v38) = v47;
          HIDWORD(v47) = *v27;
          if (*&v47 == *(&v47 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v47) != 1)
            {
              v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v28 = fst::TropicalWeightTpl<float>::One();
            LODWORD(v38) = v47;
            HIDWORD(v47) = *v28;
            v29.n128_u32[0] = v47;
            if (*&v47 != *(&v47 + 1))
            {
              v46 = v46 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }

            ++v14;
          }

          if (v33)
          {
            (*(*v33 + 32))(v33, v29);
          }

          else
          {
            ++v35;
          }

          goto LABEL_13;
        }

        if (!v38)
        {
          goto LABEL_29;
        }

        v17 = (*(*v38 + 24))();
LABEL_30:
        if (v37 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v37, v17))
        {
          v46 = v46 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        if (v36 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v36, v17 + 1))
        {
          v46 = v46 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
        }

        v18 = *v17;
        v19 = *v17;
        if (*v17 != v17[1])
        {
          v46 = v46 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v19 = v17[1];
        }

        if (v18 | v19)
        {
          if (v18)
          {
            if (!v19)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v20 = v46;
        }

        else
        {
          v20 = v46 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v46 = v20 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v19)
        {
LABEL_46:
          v46 = v46 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v16)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v16)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v18 < v11)
        {
          v46 = v46 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v19 < SHIDWORD(v11))
        {
          v46 = v46 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v21 = fst::TropicalWeightTpl<float>::One();
        HIDWORD(v47) = v17[2];
        LODWORD(v47) = *v21;
        v22.n128_u32[0] = HIDWORD(v47);
        if (*(&v47 + 1) != *&v47)
        {
          v23 = fst::TropicalWeightTpl<float>::Zero();
          HIDWORD(v47) = v17[2];
          LODWORD(v47) = *v23;
          v22.n128_u32[0] = HIDWORD(v47);
          if (*(&v47 + 1) != *&v47)
          {
            v24 = v46;
            v25 = v46 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            v46 = v25;
            if ((v24 & 0x800000000000) != 0 && v43[v15] == v43[v17[3]])
            {
              v46 = v25 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v26 = v17[3];
        if (v26 <= v15)
        {
          v46 = v46 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v26 != v15 + 1)
        {
          v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v17;
        if (v37)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v37, v17);
        }

        if (v36)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v36, v17 + 1);
        }

        if (v38)
        {
          (*(*v38 + 32))(v38, v22);
          v16 = 0;
        }

        else
        {
          v16 = 0;
          ++v40;
        }
      }

      if (v40 >= v39)
      {
        goto LABEL_69;
      }

LABEL_29:
      v17 = (*(&v38 + 1) + 16 * v40);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v35;
    goto LABEL_19;
  }

  if (v33)
  {
    (*(*v33 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v36)
  {
    v30 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
    MEMORY[0x26D6787B0](v30, 0x10A0C408EF24B1CLL);
  }

  if (v37)
  {
    v31 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v37);
    MEMORY[0x26D6787B0](v31, 0x10A0C408EF24B1CLL);
  }

  v9 = v46;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9;
}

void sub_26B4EB804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va, 0);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va1, 0);
  v9 = *(v7 - 128);
  if (v9)
  {
    *(v7 - 120) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

BOOL fst::CompatProperties(unint64_t this, unint64_t a2)
{
  v2 = (((2 * a2) & 0xAAAAAAAA0000 | a2 & 0xFFFFFFFF0000 | (a2 >> 1) & 0x555555550000) & ((this >> 1) & 0x555555550000 | (2 * this) & 0xAAAAAAAA0000 | this) | 7) & (a2 ^ this);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ((v6 & v2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        LogMessage::LogMessage(&v20, __p);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "CompatProperties: Mismatch: ", 28);
        v8 = strlen(fst::PropertyNames[v5]);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, fst::PropertyNames[v5], v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": props1 = ", 11);
        if ((v6 & this) != 0)
        {
          v11 = "true";
        }

        else
        {
          v11 = "false";
        }

        if ((v6 & this) != 0)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", props2 = ", 11);
        if ((v6 & a2) != 0)
        {
          v15 = "true";
        }

        else
        {
          v15 = "false";
        }

        if ((v6 & a2) != 0)
        {
          v16 = 4;
        }

        else
        {
          v16 = 5;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        LogMessage::~LogMessage(&v20);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 *= 2;
      ++v5;
    }

    while (v5 != 64);
  }

  return v2 == 0;
}

void sub_26B4EBA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(void *a1)
{
  v4 = a1[10];
  v2 = a1 + 10;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v2, v3);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    std::default_delete<std::vector<BOOL>>::operator()[abi:ne200100]((a1 + 9), v5);
  }

  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100]((a1 + 8), v6);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100]((a1 + 7), v7);
  }

  return a1;
}

uint64_t std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(result);

    JUMPOUT(0x26D6787B0);
  }

  return result;
}

int *fst::TropicalWeightTpl<float>::One()
{
  {
    fst::TropicalWeightTpl<float>::One();
  }

  return &fst::TropicalWeightTpl<float>::One(void)::one;
}

void sub_26B4EC398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 16))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishVisit(uint64_t a1)
{
  if (*a1)
  {
    v2 = **a1;
    v3 = *(*a1 + 8) - v2;
    if (v3)
    {
      v4 = v3 >> 2;
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        *v2 = *(a1 + 48) + ~*v2;
        ++v2;
        --v4;
      }

      while (v4);
    }
  }

  if (*(a1 + 52) == 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      MEMORY[0x26D6787B0](v5, 0x1010C40113C0ABBLL);
    }
  }

  v6 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v6)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](a1 + 56, v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](a1 + 64, v7);
  }

  v8 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v8)
  {
    std::default_delete<std::vector<BOOL>>::operator()[abi:ne200100](a1 + 72, v8);
  }

  v11 = *(a1 + 80);
  v10 = (a1 + 80);
  v9 = v11;
  *v10 = 0;
  if (v11)
  {

    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v10, v9);
  }
}

uint64_t fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_26B4EC88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitState(uint64_t a1, int a2, int a3)
{
  v19 = a2;
  std::vector<int>::push_back[abi:ne200100](*(a1 + 80), &v19);
  v5 = **(a1 + 56);
  for (i = v19; v19 >= ((*(*(a1 + 56) + 8) - v5) >> 2); i = v19)
  {
    v7 = *a1;
    if (*a1)
    {
      v18 = -1;
      std::vector<int>::push_back[abi:ne200100](v7, &v18);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      LOBYTE(v18) = 0;
      std::vector<BOOL>::push_back(v8, &v18);
    }

    v9 = *(a1 + 16);
    LOBYTE(v18) = 0;
    std::vector<BOOL>::push_back(v9, &v18);
    v10 = *(a1 + 56);
    v18 = -1;
    std::vector<int>::push_back[abi:ne200100](v10, &v18);
    v11 = *(a1 + 64);
    v18 = -1;
    std::vector<int>::push_back[abi:ne200100](v11, &v18);
    v12 = *(a1 + 72);
    LOBYTE(v18) = 0;
    std::vector<BOOL>::push_back(v12, &v18);
    v5 = **(a1 + 56);
  }

  v13 = *(a1 + 44);
  *(v5 + 4 * i) = v13;
  *(**(a1 + 64) + 4 * v19) = v13;
  v14 = v19 >> 6;
  v15 = 1 << v19;
  *(**(a1 + 72) + 8 * v14) |= 1 << v19;
  v16 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v16)
    {
      *(*v16 + 8 * v14) |= v15;
    }
  }

  else
  {
    if (v16)
    {
      *(*v16 + 8 * v14) &= ~v15;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
  return 1;
}

unint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 24))(&v20);
  result = fst::TropicalWeightTpl<float>::Zero();
  v21 = v20;
  HIDWORD(v20) = *result;
  if (*&v20 != *(&v20 + 1))
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_16;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    result = v16 >> 6;
    v17 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * result) |= v17;
    *(v15 + 8 * result) &= ~v17;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_15;
    }

LABEL_13:
    --v11;
  }

  *(v15 + 8 * result) &= ~v17;
  if (v16 != a2)
  {
    goto LABEL_13;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v18 = **(a1 + 16);
    if ((*(v18 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v18 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v19 = *(v7 + 4 * a2);
    if (v19 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v19;
    }
  }

  return result;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (v3 == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void std::default_delete<std::vector<int>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x26D6787B0);
  }
}

void std::default_delete<std::vector<BOOL>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    if (*a2)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x26D6787B0);
  }
}

void fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<48ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<48ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<56ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C06270;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<56ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<56ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

void std::__list_imp<std::unique_ptr<char []>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<std::unique_ptr<char []>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::unique_ptr<char []>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[2];
  __p[2] = 0;
  if (v3)
  {
    MEMORY[0x26D678790](v3, 0x1000C8077774924);
  }

  operator delete(__p);
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
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
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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

void *std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::push_back(void *result, void *a2)
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
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(a1, &v10);
}

void sub_26B4ED658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result, v11);
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

const void **std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_front<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result, v9);
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

void *std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **> &>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result[4], v11);
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

const void **std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **> &>::emplace_front<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::internal::MemoryArenaImpl<56ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 56 * a2;
  v4 = a1[1];
  if (224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B4EDD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

uint64_t std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::~__split_buffer(uint64_t a1)
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

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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
      if (*(result + 4) == v3)
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

BOOL *LogMessage::LogMessage(BOOL *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 5)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 5)
    {
      goto LABEL_12;
    }
  }

  v5 = *v4;
  v6 = *(v4 + 4);
  v8 = v5 == 1096040774 && v6 == 76;
LABEL_13:
  *a1 = v8;
  v9 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
  return a1;
}

void LogMessage::~LogMessage(LogMessage *this)
{
  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v2 = std::locale::use_facet(&v3, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v3);
  std::ostream::put();
  std::ostream::flush();
  if (*this == 1)
  {
    exit(1);
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

std::string *std::__shared_ptr_emplace<fst::internal::SymbolTableImpl>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<fst::internal::SymbolTableImpl>,0>(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_287C062C0;
  fst::internal::SymbolTableImpl::SymbolTableImpl(a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::SymbolTableImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C062C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

std::string *fst::internal::SymbolTableImpl::SymbolTableImpl(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2]);
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = &this[6];
  this[6].__r_.__value_.__s.__data_[16] = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  this[9].__r_.__value_.__r.__words[0] = 850045863;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  *&this[10].__r_.__value_.__r.__words[2] = 0u;
  this[11].__r_.__value_.__l.__size_ = 0;
  return this;
}

void sub_26B4EEB2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void fst::internal::SymbolTableImpl::~SymbolTableImpl(fst::internal::SymbolTableImpl *this)
{
  std::mutex::~mutex((this + 216));
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(this + 136, *(this + 18));
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C06060;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 64) - *(v2 + 56)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 56) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,0>();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 80) = a2;
  result = (*(*v4 + 16))(v4);
  *(v4 + 8) = result & 0xCCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

float fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(v6, a2, &v8);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x806A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    v2 = *(a1 + 8);
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    _ZNSt3__115allocate_sharedB8ne200100IN3fst8internal13VectorFstImplINS1_11VectorStateINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS_9allocatorIS8_EEEEEENS9_ISC_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v5);
  result = (*(*v5 + 16))(v5);
  v5[1] = (*(v5 + 2) | result) & 4 | 0x956A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(*(v6[7] + 8 * a2), a3);
  result = (*(*v6 + 16))(v6);
  v6[1] = v6[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[7] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 56);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 56) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  v6 = -1;
  v33 = 0;
  v34 = 0;
  v32 = -1;
  v32 = (*(*a1 + 16))(a1);
  v33 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v33 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    goto LABEL_5;
  }

  v26 = a2 + *(*a2 - 24);
  if ((v26[32] & 5) == 0)
  {
    (*(**(v26 + 5) + 32))(__p);
    v6 = v36;
    if (v36 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v27 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v27, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v27;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v27, __p);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
LABEL_29:
    LogMessage::~LogMessage(&v27);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v33 == v11)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v27, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v33 = v11;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v27 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    operator delete(v28[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return updated;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7);
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 96))(a1);
    (*(*v17 + 144))(v17, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 104))(a1) + 144);

    return v19();
  }

  return result;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  MEMORY[0x26D678620](v27);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    __p = 0u;
    v30 = 0u;
    v37 = a8;
    (*(*v17 + 40))(v28);
    if (v28[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x26D678630](v27);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(v28, &__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }
  }

  else
  {
    fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v28, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v22 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x26D678620](v28, a2);
      v23 = a2 + *(*a2 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(&__p);
        if (v37 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x26D678630](v28);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        result = 1;
        goto LABEL_31;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v28, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v24 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  LogMessage::~LogMessage(v28);
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p);
  }

  result = 0;
LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void fst::FstHeader::~FstHeader(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type(void)::type;
}

uint64_t fst::TropicalWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::TropicalWeightTpl<float>::Type(void)::type;
}

void sub_26B4F0270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D6787B0](v15, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFile(uint64_t a1, uint64_t a2)
{
  v29[19] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::ofstream::basic_ofstream(&v23, a2);
    if ((v28[*(v23.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(&v22, &__p);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: Can't open file: ", 29);
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      goto LABEL_31;
    }

    v10 = FLAGS_fst_align;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v18 = 257;
    v19 = 1;
    v20 = v10;
    v21 = 0;
    v12 = (*(*a1 + 80))(a1, &v23, &__p);
    v13 = v12;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      v11 = 1;
LABEL_34:
      v23.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
      *(v23.__r_.__value_.__r.__words + *(v23.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82810] + 24);
      MEMORY[0x26D6785E0](&v23.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x26D678750](v29);
      goto LABEL_35;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(&v22, &__p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write failed: ", 19);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v14 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

LABEL_31:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    LogMessage::~LogMessage(&v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = 0;
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v9 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  v24 = 257;
  v25 = 1;
  v26 = v9;
  v27 = 0;
  v11 = (*(*a1 + 80))(a1, MEMORY[0x277D82678], &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x26D6785D0](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26B4F0854(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D678750](v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C066D0;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C066D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C067C0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C06720;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 40);
  *(a1 + 40) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 48);
  *(a1 + 48) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_287C06790;
  v3 = a1 + 7;
  v2 = a1[7];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[7];
    }

    while (v4 < (a1[8] - v2) >> 3);
  }

  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);
}

void fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_287C067C0;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B4F1518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::ArcTpl<fst::TropicalWeightTpl<float>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::ArcTpl<fst::TropicalWeightTpl<float>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  v13 = 16 * v2 + 16;
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26B4F179C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      __p[4] = v2;
      operator delete(v2);
    }

    operator delete(__p);
  }
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1 || *(v1 + 8))
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &,0>();
  }

  return result;
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C066D0;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

float fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(void *a1, int a2, float *a3)
{
  v9 = **(a1[7] + 8 * a2);
  v6 = (*(*a1 + 16))(a1);
  v7 = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v6, &v9, a3);
  result = *a3;
  **(a1[7] + 8 * a2) = *a3;
  a1[1] = a1[1] & 4 | v7;
  return result;
}

uint64_t fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(unint64_t a1, float *a2, float *a3)
{
  if (*a2 != *fst::TropicalWeightTpl<float>::Zero() && *a2 != *fst::TropicalWeightTpl<float>::One())
  {
    a1 &= ~0x100000000uLL;
  }

  if (*a3 != *fst::TropicalWeightTpl<float>::Zero() && *a3 != *fst::TropicalWeightTpl<float>::One())
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0xC3FFFFFF0007;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[7] + 8 * a2) + 32);
  if (v6 == *(*(a1[7] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 16))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[7] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = *(a3 + 1);
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v7 == 0.0)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= SLODWORD(v7))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  if (a3[2] != *fst::TropicalWeightTpl<float>::Zero() && a3[2] != *fst::TropicalWeightTpl<float>::One())
  {
    v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  if (*(a3 + 3) <= a2)
  {
    v12 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v12 = v10;
  }

  if ((v12 & 0x4000000000) != 0)
  {
    return v12 & 0x45D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v12 & 0x45D7FFEB0007;
  }
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 56);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 64) - *(a1 + 56)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 56);
    }

    while (v11 < (*(a1 + 64) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, v13);
  v14 = *(a1 + 56);
  if (*(a1 + 64) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      v19 = *(v16 + 8);
      v21 = v18 - v17;
      v20 = v18 == v17;
      if (v18 == v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v16 + 24);
      }

      if (v20)
      {
        v24 = 0;
        v31 = v21 >> 4;
        v32 = *(v16 + 16);
        v33 = *(v16 + 8);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = (v22 + 12);
        do
        {
          v26 = *(__p[0] + *v25);
          if (v26 == -1)
          {
            v28 = *(v25 - 3);
            v29.i64[0] = v28;
            v29.i64[1] = HIDWORD(v28);
            v19 = vaddq_s64(v19, vceqzq_s64(v29));
          }

          else
          {
            *v25 = v26;
            if (v23 != v24)
            {
              v27 = v22 + 16 * v24;
              *v27 = *(v25 - 3);
              *(v27 + 8) = *(v25 - 1);
              *(v27 + 12) = v26;
              v14 = *v4;
            }

            ++v24;
          }

          v16 = *(v14 + 8 * v15);
          ++v23;
          v30 = *(v16 + 32) - *(v16 + 24);
          v25 += 4;
        }

        while (v23 < v30 >> 4);
        v31 = v30 >> 4;
        v32 = v19.i64[1];
        v33 = v19.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(v16, v31 - v24);
      v14 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(v14 + 8 * v15);
      *(v35 + 8) = v33;
      *(v35 + 16) = v32;
      ++v15;
    }

    while (v15 < (v34 - v14) >> 3);
  }

  v36 = *(a1 + 80);
  if (v36 == -1)
  {
    v37 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v37 = __p[0];
    *(a1 + 80) = *(__p[0] + v36);
  }

  __p[1] = v37;
  operator delete(v37);
}

void sub_26B4F1EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(void *a1, unint64_t a2)
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
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(a1, a2 - v2);
  }
}

void *fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -16 * a2;
    v4 = (v2 - 16);
    v5 = (v2 - 16);
    do
    {
      v6 = *v5;
      v5 -= 4;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B4F205C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v9);
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

void *_ZNSt3__120__shared_ptr_emplaceIN3fst8internal13VectorFstImplINS1_11VectorStateINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS_9allocatorIS8_EEEEEENS9_ISC_EEEC2B8ne200100IJESD_Li0EEESD_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C066D0;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl((a1 + 3));
  return a1;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_287C067C0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C06720;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x956A5A950003;
  return a1;
}

void sub_26B4F234C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 64) != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 56);
    }

    while (v3 < (*(a1 + 64) - v2) >> 3);
  }

  *(a1 + 64) = v2;
  *(a1 + 80) = -1;
}

int *fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 24) + 16 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  if (*(v4 + 8) != *fst::TropicalWeightTpl<float>::Zero() && *(v4 + 8) != *fst::TropicalWeightTpl<float>::One())
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v10 = *a2;
  v11 = *(a2 + 4);
  if (*a2 != v11)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v10)
  {
    if (!v11)
    {
      v12 = *(a1 + 16);
      v13 = *v12;
LABEL_19:
      *v12 = v13 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v14 = *v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v12 = v14;
    if (!v11)
    {
      v13 = v14 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v12 = v13;
      goto LABEL_19;
    }
  }

  result = fst::TropicalWeightTpl<float>::Zero();
  if (*(a2 + 8) != *result)
  {
    result = fst::TropicalWeightTpl<float>::One();
    if (*(a2 + 8) != *result)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= 0x30FC30007uLL;
  return result;
}

float fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArc(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3] + 16 * a3;
  if (!*v3)
  {
    --a1[1];
  }

  if (!*(v3 + 4))
  {
    --a1[2];
  }

  if (!*a2)
  {
    ++a1[1];
  }

  if (!*(a2 + 4))
  {
    ++a1[2];
  }

  *v3 = *a2;
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 12) = *(a2 + 12);
  return result;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
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
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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

void fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  std::string::basic_string[abi:ne200100]<0>(v16, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, v16, a4, a5, a6, __p, a7);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_26B4F2AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a1;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if (a2 && a3)
  {
    v16 = *(a4 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a4 + 8);
    }

    if (v16)
    {
      v17 = (*(*a3 + 80))(a3, a4);
      if (v17 == -1)
      {
        if (FLAGS_v >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "INFO");
          LogMessage::LogMessage(v73, &__p);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Input symbol '", 14);
          v20 = *(a4 + 23);
          v21 = v20 >= 0 ? a4 : *a4;
          v22 = v20 >= 0 ? *(a4 + 23) : *(a4 + 8);
          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "' missing from target symbol table", 34);
          LogMessage::~LogMessage(v73);
          if (SHIBYTE(v77) < 0)
          {
            operator delete(__p);
          }
        }

        v17 = -1;
        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = -1;
    }

    v24 = (*(*a2 + 120))(a2);
    v25 = (*(*a2 + 64))(a2, 0);
    v65 = a5;
    v66 = a8;
    if (v24)
    {
      v26 = v25;
      v27 = v17;
      v68 = v17;
      v28 = 1;
      v29 = v24;
      do
      {
        (*(*a2 + 72))(&__p, a2, v26);
        (*(*a2 + 72))(v73, a2, v26);
        v30 = (*(*a3 + 80))(a3, v73);
        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        v31 = v68;
        if (v30 == -1)
        {
          v32 = v27 == -1;
        }

        else
        {
          v31 = v30;
          v32 = 0;
        }

        if (v32)
        {
          if (FLAGS_v >= 1)
          {
            std::string::basic_string[abi:ne200100]<0>(v73, "INFO");
            LogMessage::LogMessage(v71, v73);
            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Input symbol ID ", 16);
            v34 = MEMORY[0x26D6786A0](v33, v26);
            v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " symbol '", 9);
            v36 = v77 >= 0 ? &__p : __p;
            v37 = v77 >= 0 ? HIBYTE(v77) : v76;
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "' missing from target symbol table", 34);
            LogMessage::~LogMessage(v71);
            if (v74 < 0)
            {
              operator delete(v73[0]);
            }
          }

          ++v18;
          v31 = -1;
        }

        v73[0] = __PAIR64__(v31, v26);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v78, v73);
        if (SHIBYTE(v77) < 0)
        {
          operator delete(__p);
        }

        if (v28 < v24)
        {
          v26 = (*(*a2 + 64))(a2, v28);
        }

        ++v28;
        --v29;
      }

      while (v29);
    }

    a8 = v66;
    v11 = a1;
    if (v18)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "WARNING");
      LogMessage::LogMessage(v73, &__p);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Target symbol table missing: ", 29);
      v40 = MEMORY[0x26D678690](v39, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " input symbols", 14);
      LogMessage::~LogMessage(v73);
      if (SHIBYTE(v77) < 0)
      {
        operator delete(__p);
        if (!v65)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    if (v65)
    {
LABEL_46:
      (*(*a1 + 256))(a1, a3);
    }
  }

LABEL_47:
  __p = 0;
  v76 = 0;
  v77 = 0;
  if (a6 && a7)
  {
    v41 = *(a8 + 23);
    if ((v41 & 0x80u) != 0)
    {
      v41 = *(a8 + 8);
    }

    if (v41)
    {
      v42 = (*(*a7 + 80))(a7, a8);
      if (v42 == -1)
      {
        if (FLAGS_v >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v73, "INFO");
          LogMessage::LogMessage(v71, v73);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Output symbol '", 15);
          v45 = *(a8 + 23);
          v46 = v45 >= 0 ? a8 : *a8;
          v47 = v45 >= 0 ? *(a8 + 23) : *(a8 + 8);
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "' missing from target symbol table", 34);
          LogMessage::~LogMessage(v71);
          if (v74 < 0)
          {
            operator delete(v73[0]);
          }
        }

        v42 = -1;
        v43 = 1;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
      v42 = -1;
    }

    v49 = (*(*a6 + 120))(a6);
    v50 = (*(*a6 + 64))(a6, 0);
    if (v49)
    {
      v51 = v50;
      v52 = 1;
      v53 = v49;
      do
      {
        (*(*a6 + 72))(v73, a6, v51);
        (*(*a6 + 72))(v71, a6, v51);
        v54 = (*(*a7 + 80))(a7, v71);
        if (v72 < 0)
        {
          operator delete(v71[0]);
        }

        if (v54 == -1)
        {
          v55 = v42;
        }

        else
        {
          v55 = v54;
        }

        if (v54 == -1 && v42 == -1)
        {
          if (FLAGS_v >= 1)
          {
            std::string::basic_string[abi:ne200100]<0>(v71, "INFO");
            LogMessage::LogMessage(&v70, v71);
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Output symbol ID ", 17);
            v58 = MEMORY[0x26D6786A0](v57, v51);
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " symbol '", 9);
            v60 = (v74 & 0x80u) == 0 ? v73 : v73[0];
            v61 = (v74 & 0x80u) == 0 ? v74 : v73[1];
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "' missing from target symbol table", 34);
            LogMessage::~LogMessage(&v70);
            if (v72 < 0)
            {
              operator delete(v71[0]);
            }
          }

          ++v43;
          v55 = -1;
        }

        v71[0] = __PAIR64__(v55, v51);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&__p, v71);
        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        if (v52 < v49)
        {
          v51 = (*(*a6 + 64))(a6, v52);
        }

        ++v52;
        --v53;
      }

      while (v53);
    }

    v11 = a1;
    if (v43)
    {
      std::string::basic_string[abi:ne200100]<0>(v73, "WARNING");
      LogMessage::LogMessage(v71, v73);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Target symbol table missing: ", 29);
      v64 = MEMORY[0x26D678690](v63, v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " output symbols", 15);
      LogMessage::~LogMessage(v71);
      if (v74 < 0)
      {
        operator delete(v73[0]);
      }
    }

    if (a9)
    {
      (*(*a1 + 264))(a1, a7);
    }
  }

  fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v11, &v78, &__p);
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

void sub_26B4F33A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    *(v35 - 96) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, int **a2, int **a3)
{
  v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  std::unordered_map<int,int>::unordered_map<std::__wrap_iter<std::pair<int,int> const*>>(v28, *a2, a2[1]);
  std::unordered_map<int,int>::unordered_map<std::__wrap_iter<std::pair<int,int> const*>>(v27, *a3, a3[1]);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  (*(*a1 + 112))(a1, &v24);
  while (1)
  {
    if (!v24)
    {
      if (v26 >= v25)
      {
        goto LABEL_39;
      }

LABEL_7:
      v7 = v26;
      goto LABEL_8;
    }

    if ((*(*v24 + 16))(v24))
    {
      break;
    }

    if (!v24)
    {
      goto LABEL_7;
    }

    v7 = (*(*v24 + 24))();
LABEL_8:
    (*(*a1 + 272))(a1, v7, &v23);
    while (((*(*v23 + 16))(v23) & 1) == 0)
    {
      v8 = (*(*v23 + 24))(v23);
      v20 = *v8;
      v21 = *(v8 + 8);
      v22 = *(v8 + 12);
      v9 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v28, &v20);
      if (v9)
      {
        if (*(v9 + 5) == -1)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          LogMessage::LogMessage(&v19, __p);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Input symbol ID ", 16);
          v12 = MEMORY[0x26D678680](v11, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " missing from target vocabulary", 31);
          goto LABEL_30;
        }

        LODWORD(v20) = *(v9 + 5);
      }

      v10 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v27, &v20 + 1);
      if (v10)
      {
        if (*(v10 + 5) == -1)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          LogMessage::LogMessage(&v19, __p);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Output symbol id ", 17);
          v14 = MEMORY[0x26D678680](v13, HIDWORD(v20));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " missing from target vocabulary", 31);
LABEL_30:
          LogMessage::~LogMessage(&v19);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          (*(*a1 + 168))(a1, 4, 4);
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          if (v24)
          {
            (*(*v24 + 8))(v24);
          }

          goto LABEL_36;
        }

        HIDWORD(v20) = *(v10 + 5);
      }

      (*(*v23 + 80))(v23, &v20);
      (*(*v23 + 32))(v23);
    }

    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    if (v24)
    {
      (*(*v24 + 32))(v24);
    }

    else
    {
      ++v26;
    }
  }

  if (v24)
  {
    (*(*v24 + 8))();
  }

LABEL_39:
  v16 = fst::RelabelProperties(v6);
  (*(*a1 + 168))(a1, v16, 0xFFFFFFFF0007);
LABEL_36:
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v27);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v28);
}

void sub_26B4F3AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a25);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v25 - 72);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<int,int>::unordered_map<std::__wrap_iter<std::pair<int,int> const*>>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int> const&>(a1, v5);
      v5 += 2;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int> const&>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  if (result == -1)
  {
    return result;
  }

  v5 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v6 = (*(**a2 + 16))();
  (*(*a1 + 152))(a1, v6);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  (*(*a1 + 112))(a1, &v11);
  while (1)
  {
    if (!v11)
    {
      if (v13 >= v12)
      {
        return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0xFFFFFFFF0007);
      }

LABEL_8:
      v7 = v13;
      goto LABEL_9;
    }

    if ((*(*v11 + 16))(v11))
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_8;
    }

    v7 = (*(*v11 + 24))();
LABEL_9:
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a2, v7);
    (*(*a1 + 216))(a1, v7);
    for (i = a2[5]; ; a2[5] = i)
    {
      v9 = a2[2];
      if (i >= (a2[3] - v9) >> 4)
      {
        break;
      }

      (*(*a1 + 184))(a1, v7, v9 + 16 * i);
      i = a2[5] + 1;
    }

    (*(**a2 + 24))(v10);
    (*(*a1 + 160))(a1, v7, v10);
    if (v11)
    {
      (*(*v11 + 32))(v11);
    }

    else
    {
      ++v13;
    }
  }

  if (v11)
  {
    (*(*v11 + 8))();
  }

  return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0xFFFFFFFF0007);
}

void sub_26B4F4174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 32))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v4, v5);
  v6 = *a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  (*(*v6 + 120))(v6, a2, &v13);
  while (1)
  {
    if (!v13)
    {
      if (v15 >= v14)
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = *(&v13 + 1) + 16 * v15;
      goto LABEL_8;
    }

    if ((*(*v13 + 16))(v13))
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_7;
    }

    v8 = (*(*v13 + 24))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](v4, v8);
    if (v13)
    {
      (*(*v13 + 32))(v13);
    }

    else
    {
      ++v15;
    }
  }

  if (v13)
  {
    (*(*v13 + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (*(&v14 + 1))
  {
    --**(&v14 + 1);
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz((v10 - v9) >> 4);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v9, v10, &v13, v12, 1, v7);
}

void sub_26B4F43A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a9);
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 3) < *(v10 + 1))
        {
          v102 = *v10;
          v103 = *(v10 + 2);
          v104 = *(v10 + 3);
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          *(a2 - 2) = v102;
          *(a2 - 2) = v103;
          *(a2 - 1) = v104;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v10, v10 + 2, v10 + 4, a2 - 2, a6);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v10, v10 + 2, v10 + 4, v10 + 6, a6);
      if (*(a2 - 3) < *(v10 + 13))
      {
        v87 = v10[6];
        v88 = *(v10 + 14);
        v89 = *(v10 + 15);
        v10[6] = *(a2 - 2);
        *(v10 + 14) = *(a2 - 2);
        *(v10 + 15) = *(a2 - 1);
        *(a2 - 2) = v87;
        *(a2 - 2) = v88;
        *(a2 - 1) = v89;
        if (*(v10 + 13) < *(v10 + 9))
        {
          v90 = v10[4];
          v91 = *(v10 + 10);
          v92 = *(v10 + 11);
          v93 = v10[6];
          v10[4] = v93;
          v94 = *(v10 + 14);
          *(v10 + 10) = v94;
          v95 = *(v10 + 15);
          *(v10 + 11) = v95;
          v10[6] = v90;
          *(v10 + 14) = v91;
          *(v10 + 15) = v92;
          if (*(v10 + 5) > SHIDWORD(v93))
          {
            v96 = v10[2];
            v97 = *(v10 + 6);
            v98 = *(v10 + 7);
            v10[2] = v93;
            *(v10 + 6) = v94;
            *(v10 + 7) = v95;
            v10[4] = v96;
            *(v10 + 10) = v97;
            *(v10 + 11) = v98;
            if (*(v10 + 1) > SHIDWORD(v93))
            {
              v99 = *v10;
              v100 = *(v10 + 2);
              v101 = *(v10 + 3);
              *v10 = v93;
              *(v10 + 2) = v94;
              *(v10 + 3) = v95;
              v10[2] = v99;
              *(v10 + 6) = v100;
              *(v10 + 7) = v101;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, a2, a2, a3);
      }

      return;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = *(a2 - 3);
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 1);
      if (v16 >= *(v10 + 1))
      {
        if (v15 < v16)
        {
          v24 = *v14;
          v25 = *(v14 + 2);
          v26 = *(v14 + 3);
          *v14 = *(a2 - 2);
          *(v14 + 2) = *(a2 - 2);
          *(v14 + 3) = *(a2 - 1);
          *(a2 - 2) = v24;
          *(a2 - 2) = v25;
          *(a2 - 1) = v26;
          if (*(v14 + 1) < *(v10 + 1))
          {
            v27 = *v10;
            v28 = *(v10 + 2);
            v29 = *(v10 + 3);
            *v10 = *v14;
            *(v10 + 2) = *(v14 + 2);
            *(v10 + 3) = *(v14 + 3);
            *v14 = v27;
            *(v14 + 2) = v28;
            *(v14 + 3) = v29;
          }
        }
      }

      else
      {
        v17 = *v10;
        v18 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v15 < v16)
        {
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          goto LABEL_28;
        }

        *v10 = *v14;
        *(v10 + 2) = *(v14 + 2);
        *(v10 + 3) = *(v14 + 3);
        *v14 = v17;
        *(v14 + 2) = v18;
        *(v14 + 3) = v19;
        if (*(a2 - 3) < SHIDWORD(v17))
        {
          *v14 = *(a2 - 2);
          *(v14 + 2) = *(a2 - 2);
          *(v14 + 3) = *(a2 - 1);
LABEL_28:
          *(a2 - 2) = v17;
          *(a2 - 2) = v18;
          *(a2 - 1) = v19;
        }
      }

      v36 = v14 - 2;
      v37 = *(v14 - 3);
      v38 = *(a2 - 7);
      if (v37 >= *(v10 + 5))
      {
        if (v38 < v37)
        {
          v42 = *v36;
          v43 = *(v14 - 2);
          v44 = *(v14 - 1);
          *v36 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
          *(a2 - 4) = v42;
          *(a2 - 6) = v43;
          *(a2 - 5) = v44;
          if (*(v14 - 3) < *(v10 + 5))
          {
            v45 = v10[2];
            v46 = *(v10 + 6);
            v47 = *(v10 + 7);
            v10[2] = *v36;
            *(v10 + 6) = *(v14 - 2);
            *(v10 + 7) = *(v14 - 1);
            *v36 = v45;
            *(v14 - 2) = v46;
            *(v14 - 1) = v47;
          }
        }
      }

      else
      {
        v39 = v10[2];
        v40 = *(v10 + 6);
        v41 = *(v10 + 7);
        if (v38 < v37)
        {
          v10[2] = *(a2 - 4);
          *(v10 + 6) = *(a2 - 6);
          *(v10 + 7) = *(a2 - 5);
          goto LABEL_42;
        }

        v10[2] = *v36;
        *(v10 + 6) = *(v14 - 2);
        *(v10 + 7) = *(v14 - 1);
        *v36 = v39;
        *(v14 - 2) = v40;
        *(v14 - 1) = v41;
        if (*(a2 - 7) < SHIDWORD(v39))
        {
          *v36 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
LABEL_42:
          *(a2 - 4) = v39;
          *(a2 - 6) = v40;
          *(a2 - 5) = v41;
        }
      }

      v48 = v14 + 2;
      v49 = *(v14 + 5);
      v50 = *(a2 - 11);
      if (v49 >= *(v10 + 9))
      {
        if (v50 < v49)
        {
          v54 = *v48;
          v55 = *(v14 + 6);
          v56 = *(v14 + 7);
          *v48 = *(a2 - 6);
          *(v14 + 6) = *(a2 - 10);
          *(v14 + 7) = *(a2 - 9);
          *(a2 - 6) = v54;
          *(a2 - 10) = v55;
          *(a2 - 9) = v56;
          if (*(v14 + 5) < *(v10 + 9))
          {
            v57 = v10[4];
            v58 = *(v10 + 10);
            v59 = *(v10 + 11);
            v10[4] = *v48;
            *(v10 + 10) = *(v14 + 6);
            *(v10 + 11) = *(v14 + 7);
            *v48 = v57;
            *(v14 + 6) = v58;
            *(v14 + 7) = v59;
          }
        }
      }

      else
      {
        v51 = v10[4];
        v52 = *(v10 + 10);
        v53 = *(v10 + 11);
        if (v50 < v49)
        {
          v10[4] = *(a2 - 6);
          *(v10 + 10) = *(a2 - 10);
          *(v10 + 11) = *(a2 - 9);
          goto LABEL_51;
        }

        v10[4] = *v48;
        *(v10 + 10) = *(v14 + 6);
        *(v10 + 11) = *(v14 + 7);
        *v48 = v51;
        *(v14 + 6) = v52;
        *(v14 + 7) = v53;
        if (*(a2 - 11) < SHIDWORD(v51))
        {
          *v48 = *(a2 - 6);
          *(v14 + 6) = *(a2 - 10);
          *(v14 + 7) = *(a2 - 9);
LABEL_51:
          *(a2 - 6) = v51;
          *(a2 - 10) = v52;
          *(a2 - 9) = v53;
        }
      }

      v60 = *(v14 + 1);
      v61 = *(v14 - 3);
      v62 = *(v14 + 5);
      if (v60 >= v61)
      {
        v63 = *v14;
        if (v62 < v60)
        {
          v66 = *(v14 + 2);
          v67 = *(v14 + 3);
          v68 = *v48;
          *v14 = *v48;
          v69 = *(v14 + 6);
          *(v14 + 2) = v69;
          v70 = *(v14 + 7);
          *(v14 + 3) = v70;
          *v48 = v63;
          *(v14 + 6) = v66;
          *(v14 + 7) = v67;
          if (v61 <= SHIDWORD(v68))
          {
            v63 = v68;
          }

          else
          {
            v63 = *v36;
            v71 = *(v14 - 2);
            v72 = *(v14 - 1);
            *v36 = v68;
            *(v14 - 2) = v69;
            *(v14 - 1) = v70;
            *v14 = v63;
            *(v14 + 2) = v71;
            *(v14 + 3) = v72;
          }
        }
      }

      else
      {
        v63 = *v36;
        v64 = *(v14 - 2);
        v65 = *(v14 - 1);
        if (v62 >= v60)
        {
          *v36 = *v14;
          *(v14 - 2) = *(v14 + 2);
          *(v14 - 1) = *(v14 + 3);
          *v14 = v63;
          *(v14 + 2) = v64;
          *(v14 + 3) = v65;
          if (v62 < SHIDWORD(v63))
          {
            v73 = *v48;
            *v14 = *v48;
            *(v14 + 2) = *(v14 + 6);
            *(v14 + 3) = *(v14 + 7);
            *v48 = v63;
            *(v14 + 6) = v64;
            *(v14 + 7) = v65;
            v63 = v73;
          }
        }

        else
        {
          *v36 = *v48;
          *(v14 - 2) = *(v14 + 6);
          *(v14 - 1) = *(v14 + 7);
          *v48 = v63;
          *(v14 + 6) = v64;
          *(v14 + 7) = v65;
          v63 = *v14;
        }
      }

      v74 = *v10;
      v75 = *(v10 + 2);
      v76 = *(v10 + 3);
      *v10 = v63;
      *(v10 + 2) = *(v14 + 2);
      *(v10 + 3) = *(v14 + 3);
      *v14 = v74;
      *(v14 + 2) = v75;
      *(v14 + 3) = v76;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v20 = *(v10 + 1);
    if (v20 < *(v14 + 1))
    {
      v21 = *v14;
      v22 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v15 < v20)
      {
        *v14 = *(a2 - 2);
        *(v14 + 2) = *(a2 - 2);
        *(v14 + 3) = *(a2 - 1);
        goto LABEL_37;
      }

      *v14 = *v10;
      *(v14 + 2) = *(v10 + 2);
      *(v14 + 3) = *(v10 + 3);
      *v10 = v21;
      *(v10 + 2) = v22;
      *(v10 + 3) = v23;
      if (*(a2 - 3) < SHIDWORD(v21))
      {
        *v10 = *(a2 - 2);
        *(v10 + 2) = *(a2 - 2);
        *(v10 + 3) = *(a2 - 1);
LABEL_37:
        *(a2 - 2) = v21;
        *(a2 - 2) = v22;
        *(a2 - 1) = v23;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v15 >= v20)
    {
      goto LABEL_38;
    }

    v30 = *v10;
    v31 = *(v10 + 2);
    v32 = *(v10 + 3);
    *v10 = *(a2 - 2);
    *(v10 + 2) = *(a2 - 2);
    *(v10 + 3) = *(a2 - 1);
    *(a2 - 2) = v30;
    *(a2 - 2) = v31;
    *(a2 - 1) = v32;
    if (*(v10 + 1) >= *(v14 + 1))
    {
      goto LABEL_38;
    }

    v33 = *v14;
    v34 = *(v14 + 2);
    v35 = *(v14 + 3);
    *v14 = *v10;
    *(v14 + 2) = *(v10 + 2);
    *(v14 + 3) = *(v10 + 3);
    *v10 = v33;
    *(v10 + 2) = v34;
    *(v10 + 3) = v35;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (*(v10 - 3) >= *(v10 + 1))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v10, a2);
      goto LABEL_68;
    }

LABEL_63:
    v77 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v10, a2);
    if ((v79 & 1) == 0)
    {
      goto LABEL_66;
    }

    v80 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, v77, v78);
    v10 = v77 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>((v77 + 2), a2, v81))
    {
      a4 = -v12;
      a2 = v77;
      if (v80)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v80)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(a1, v77, a3, -v12, a5 & 1);
      v10 = v77 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v82 = *(v10 + 5);
  v83 = *(a2 - 3);
  if (v82 >= *(v10 + 1))
  {
    if (v83 < v82)
    {
      v105 = v10[2];
      v106 = *(v10 + 6);
      v107 = *(v10 + 7);
      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
      *(a2 - 2) = v105;
      *(a2 - 2) = v106;
      *(a2 - 1) = v107;
      if (*(v10 + 5) < *(v10 + 1))
      {
        v108 = *v10;
        v109 = *(v10 + 2);
        v110 = *(v10 + 3);
        *v10 = v10[2];
        *(v10 + 2) = *(v10 + 6);
        *(v10 + 3) = *(v10 + 7);
        v10[2] = v108;
        *(v10 + 6) = v109;
        *(v10 + 7) = v110;
      }
    }
  }

  else
  {
    v84 = *v10;
    v85 = *(v10 + 2);
    v86 = *(v10 + 3);
    if (v83 >= v82)
    {
      *v10 = v10[2];
      *(v10 + 2) = *(v10 + 6);
      *(v10 + 3) = *(v10 + 7);
      v10[2] = v84;
      *(v10 + 6) = v85;
      *(v10 + 7) = v86;
      if (*(a2 - 3) >= SHIDWORD(v84))
      {
        return;
      }

      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
    }

    else
    {
      *v10 = *(a2 - 2);
      *(v10 + 2) = *(a2 - 2);
      *(v10 + 3) = *(a2 - 1);
    }

    *(a2 - 2) = v84;
    *(a2 - 2) = v85;
    *(a2 - 1) = v86;
  }
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(float *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, float result)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(a1 + 1))
  {
    if (v6 < v5)
    {
      v9 = *a2;
      result = *(a2 + 2);
      v10 = *(a2 + 3);
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = *(a3 + 3);
      *a3 = v9;
      *(a3 + 2) = result;
      *(a3 + 3) = v10;
      if (*(a2 + 1) >= *(a1 + 1))
      {
        v6 = HIDWORD(v9);
      }

      else
      {
        v11 = *a1;
        result = a1[2];
        v12 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = *(a2 + 2);
        a1[3] = *(a2 + 3);
        *a2 = v11;
        *(a2 + 2) = result;
        *(a2 + 3) = v12;
        LODWORD(v6) = *(a3 + 1);
      }
    }
  }

  else
  {
    v7 = *a1;
    result = a1[2];
    v8 = *(a1 + 3);
    if (v6 >= v5)
    {
      *a1 = *a2;
      a1[2] = *(a2 + 2);
      a1[3] = *(a2 + 3);
      *a2 = v7;
      *(a2 + 2) = result;
      *(a2 + 3) = v8;
      LODWORD(v6) = *(a3 + 1);
      if (v6 < SHIDWORD(v7))
      {
        *a2 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *(a2 + 3) = *(a3 + 3);
        *a3 = v7;
        *(a3 + 2) = result;
        *(a3 + 3) = v8;
        v6 = HIDWORD(v7);
      }
    }

    else
    {
      *a1 = *a3;
      a1[2] = *(a3 + 2);
      a1[3] = *(a3 + 3);
      *a3 = v7;
      *(a3 + 2) = result;
      *(a3 + 3) = v8;
      v6 = HIDWORD(v7);
    }
  }

  if (*(a4 + 1) < v6)
  {
    v13 = *a3;
    result = *(a3 + 2);
    v14 = *(a3 + 3);
    *a3 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *(a3 + 3) = *(a4 + 3);
    *a4 = v13;
    *(a4 + 2) = result;
    *(a4 + 3) = v14;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v15 = *a2;
      result = *(a2 + 2);
      v16 = *(a2 + 3);
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = *(a3 + 3);
      *a3 = v15;
      *(a3 + 2) = result;
      *(a3 + 3) = v16;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v17 = *a1;
        result = a1[2];
        v18 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = *(a2 + 2);
        a1[3] = *(a2 + 3);
        *a2 = v17;
        *(a2 + 2) = result;
        *(a2 + 3) = v18;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (v4[5] < v4[1])
        {
          v6 = *v2;
          v7 = v4[6];
          v8 = v4[7];
          v9 = HIDWORD(*v5);
          v10 = v3;
          while (1)
          {
            v11 = result + v10;
            *(v11 + 16) = *(result + v10);
            *(v11 + 24) = *(result + v10 + 8);
            *(v11 + 28) = *(result + v10 + 12);
            if (!v10)
            {
              break;
            }

            v10 -= 16;
            if (*(v11 - 12) <= v9)
            {
              v12 = result + v10 + 16;
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v6;
          *(v12 + 8) = v7;
          *(v12 + 12) = v8;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(_DWORD *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = result + 7;
      do
      {
        v4 = v2;
        if (result[5] < result[1])
        {
          v5 = *v2;
          v6 = result[6];
          v7 = result[7];
          v8 = HIDWORD(*v4);
          v9 = v3;
          do
          {
            v10 = v9;
            *(v9 - 3) = *(v9 - 7);
            *(v9 - 1) = *(v9 - 5);
            v11 = *(v9 - 4);
            v9 -= 4;
            *v10 = v11;
          }

          while (*(v10 - 10) > v8);
          *(v9 - 3) = v5;
          *(v9 - 1) = v6;
          *v9 = v7;
        }

        v2 = v4 + 2;
        v3 += 4;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (*(a2 - 12) <= v3)
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7 + 1);
      v7 += 2;
    }

    while (v8 <= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4 + 2;
      v6 = *(v4 + 5);
      v4 += 2;
    }

    while (v6 <= v3);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 16;
      v10 = *(a2 - 12);
      a2 -= 16;
    }

    while (v10 > v3);
  }

  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  while (v5 < v9)
  {
    v13 = *v5;
    v14 = *(v5 + 2);
    v15 = *(v5 + 3);
    *v5 = *v9;
    *(v5 + 2) = *(v9 + 8);
    *(v5 + 3) = *(v9 + 12);
    *v9 = v13;
    *(v9 + 8) = v14;
    *(v9 + 12) = v15;
    do
    {
      v16 = *(v5 + 5);
      v5 += 2;
    }

    while (v16 <= v3);
    do
    {
      v17 = *(v9 - 12);
      v9 -= 16;
    }

    while (v17 > v3);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 2);
    *(a1 + 2) = *(v5 - 2);
    *(a1 + 3) = *(v5 - 1);
  }

  *(v5 - 2) = v2;
  *(v5 - 2) = v11;
  *(v5 - 1) = v12;
  return v5;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = HIDWORD(*a1);
  do
  {
    v7 = HIDWORD(a1[v2 + 2]);
    v2 += 2;
  }

  while (v7 < v6);
  v8 = &a1[v2];
  if (v2 == 2)
  {
    while (v8 < a2)
    {
      v9 = a2 - 16;
      v11 = *(a2 - 12);
      a2 -= 16;
      if (v11 < v6)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 16;
      v10 = *(a2 - 12);
      a2 -= 16;
    }

    while (v10 >= v6);
  }

LABEL_9:
  v12 = v8;
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v14 = *v12;
      v15 = *(v12 + 2);
      v16 = *(v12 + 3);
      *v12 = *v13;
      *(v12 + 2) = *(v13 + 8);
      *(v12 + 3) = *(v13 + 12);
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 12) = v16;
      do
      {
        v17 = *(v12 + 5);
        v12 += 2;
      }

      while (v17 < v6);
      do
      {
        v18 = *(v13 - 12);
        v13 -= 16;
      }

      while (v18 >= v6);
    }

    while (v12 < v13);
  }

  if (v12 - 2 != a1)
  {
    *a1 = *(v12 - 2);
    *(a1 + 2) = *(v12 - 2);
    *(a1 + 3) = *(v12 - 1);
  }

  *(v12 - 2) = v3;
  *(v12 - 2) = v4;
  *(v12 - 1) = v5;
  return v12 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, uint64_t a2, float a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v24 = *(a1 + 20);
      v25 = *(a2 - 12);
      if (v24 >= *(a1 + 4))
      {
        if (v25 < v24)
        {
          v35 = *(a1 + 16);
          v36 = *(a1 + 24);
          v37 = *(a1 + 28);
          *(a1 + 16) = *(a2 - 16);
          *(a1 + 24) = *(a2 - 8);
          *(a1 + 28) = *(a2 - 4);
          *(a2 - 16) = v35;
          *(a2 - 8) = v36;
          *(a2 - 4) = v37;
          if (*(a1 + 20) < *(a1 + 4))
          {
            v38 = *a1;
            v39 = *(a1 + 8);
            v40 = *(a1 + 12);
            *a1 = *(a1 + 16);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 12) = *(a1 + 28);
            *(a1 + 16) = v38;
            *(a1 + 24) = v39;
            result = 1;
            *(a1 + 28) = v40;
            return result;
          }
        }

        return 1;
      }

      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 12);
      if (v25 >= v24)
      {
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 12) = *(a1 + 28);
        *(a1 + 16) = v26;
        *(a1 + 24) = v27;
        *(a1 + 28) = v28;
        if (*(a2 - 12) >= SHIDWORD(v26))
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 16);
        *(a1 + 24) = *(a2 - 8);
        *(a1 + 28) = *(a2 - 4);
      }

      else
      {
        *a1 = *(a2 - 16);
        *(a1 + 8) = *(a2 - 8);
        *(a1 + 12) = *(a2 - 4);
      }

      *(a2 - 16) = v26;
      *(a2 - 8) = v27;
      *(a2 - 4) = v28;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if (*(a2 - 12) < *(a1 + 52))
        {
          v9 = *(a1 + 48);
          v10 = *(a1 + 56);
          v11 = *(a1 + 60);
          *(a1 + 48) = *(a2 - 16);
          *(a1 + 56) = *(a2 - 8);
          *(a1 + 60) = *(a2 - 4);
          *(a2 - 16) = v9;
          *(a2 - 8) = v10;
          *(a2 - 4) = v11;
          if (*(a1 + 52) < *(a1 + 36))
          {
            v12 = *(a1 + 32);
            v13 = *(a1 + 40);
            v14 = *(a1 + 44);
            v15 = *(a1 + 48);
            *(a1 + 32) = v15;
            v16 = *(a1 + 56);
            *(a1 + 40) = v16;
            v17 = *(a1 + 60);
            *(a1 + 44) = v17;
            *(a1 + 48) = v12;
            *(a1 + 56) = v13;
            *(a1 + 60) = v14;
            if (*(a1 + 20) > SHIDWORD(v15))
            {
              v18 = *(a1 + 16);
              v19 = *(a1 + 24);
              v20 = *(a1 + 28);
              *(a1 + 16) = v15;
              *(a1 + 24) = v16;
              *(a1 + 28) = v17;
              *(a1 + 32) = v18;
              *(a1 + 40) = v19;
              *(a1 + 44) = v20;
              if (*(a1 + 4) > SHIDWORD(v15))
              {
                v21 = *a1;
                v22 = *(a1 + 8);
                v23 = *(a1 + 12);
                *a1 = v15;
                *(a1 + 8) = v16;
                *(a1 + 12) = v17;
                *(a1 + 16) = v21;
                *(a1 + 24) = v22;
                *(a1 + 28) = v23;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32), (a2 - 16), a3);
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a2 - 12) < *(a1 + 4))
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 12);
      *a1 = *(a2 - 16);
      *(a1 + 8) = *(a2 - 8);
      *(a1 + 12) = *(a2 - 4);
      *(a2 - 16) = v6;
      *(a2 - 8) = v7;
      *(a2 - 4) = v8;
    }

    return 1;
  }

LABEL_17:
  v29 = *(a1 + 20);
  v30 = *(a1 + 4);
  v31 = *(a1 + 36);
  if (v29 >= v30)
  {
    if (v31 < v29)
    {
      v42 = *(a1 + 16);
      v43 = *(a1 + 24);
      v44 = *(a1 + 28);
      v45 = *(a1 + 32);
      *(a1 + 16) = v45;
      v46 = *(a1 + 40);
      *(a1 + 24) = v46;
      v47 = *(a1 + 44);
      *(a1 + 28) = v47;
      *(a1 + 32) = v42;
      *(a1 + 40) = v43;
      *(a1 + 44) = v44;
      if (v30 > SHIDWORD(v45))
      {
        v48 = *a1;
        v49 = *(a1 + 8);
        v50 = *(a1 + 12);
        *a1 = v45;
        *(a1 + 8) = v46;
        *(a1 + 12) = v47;
        *(a1 + 16) = v48;
        *(a1 + 24) = v49;
        *(a1 + 28) = v50;
      }
    }
  }

  else
  {
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 12);
    if (v31 >= v29)
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 12) = *(a1 + 28);
      *(a1 + 16) = v32;
      *(a1 + 24) = v33;
      *(a1 + 28) = v34;
      if (v31 >= SHIDWORD(v32))
      {
        goto LABEL_33;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 28) = *(a1 + 44);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
      *(a1 + 12) = *(a1 + 44);
    }

    *(a1 + 32) = v32;
    *(a1 + 40) = v33;
    *(a1 + 44) = v34;
  }

LABEL_33:
  v51 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v52 = 0;
  v53 = 0;
  v54 = a1 + 32;
  while (1)
  {
    if (*(v51 + 4) < *(v54 + 4))
    {
      v55 = *v51;
      v56 = *(v51 + 8);
      v57 = *(v51 + 12);
      v58 = HIDWORD(*v51);
      v59 = v52;
      while (1)
      {
        v60 = a1 + v59;
        *(v60 + 48) = *(a1 + v59 + 32);
        *(v60 + 56) = *(a1 + v59 + 40);
        *(v60 + 60) = *(a1 + v59 + 44);
        if (v59 == -32)
        {
          break;
        }

        v59 -= 16;
        if (*(v60 + 20) <= v58)
        {
          v61 = a1 + v59 + 48;
          goto LABEL_41;
        }
      }

      v61 = a1;
LABEL_41:
      *v61 = v55;
      *(v61 + 8) = v56;
      *(v61 + 12) = v57;
      if (++v53 == 8)
      {
        return v51 + 16 == a2;
      }
    }

    v54 = v51;
    v52 += 16;
    v51 += 16;
    if (v51 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*(v12 + 1) < *(a1 + 4))
        {
          v13 = *v12;
          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *v12 = *a1;
          *(v12 + 2) = *(a1 + 8);
          *(v12 + 3) = *(a1 + 12);
          *a1 = v13;
          *(a1 + 8) = v14;
          *(a1 + 12) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v17 = *a1;
        v18 = *(a1 + 8);
        v19 = *(a1 + 12);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8);
        if (v16 == v20)
        {
          *v20 = v17;
          *(v20 + 8) = v18;
          *(v20 + 12) = v19;
        }

        else
        {
          *v20 = *v16;
          *(v20 + 8) = *(v16 + 2);
          *(v20 + 12) = *(v16 + 3);
          *v16 = v17;
          *(v16 + 2) = v18;
          *(v16 + 3) = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 1);
        v11 = *(v8 + 5);
        v8 += 2 * (v10 < v11);
        if (v10 < v11)
        {
          v7 = v9;
        }
      }

      if (*(v8 + 1) >= *(a4 + 1))
      {
        v12 = *a4;
        v13 = *(a4 + 2);
        v14 = *(a4 + 3);
        v15 = HIDWORD(*a4);
        do
        {
          v16 = a4;
          a4 = v8;
          *v16 = *v8;
          *(v16 + 2) = *(v8 + 2);
          *(v16 + 3) = *(v8 + 3);
          if (v5 < v7)
          {
            break;
          }

          v17 = (2 * v7) | 1;
          v8 = (result + 16 * v17);
          v18 = 2 * v7 + 2;
          if (v18 < a3)
          {
            v19 = *(v8 + 1);
            v20 = *(v8 + 5);
            v8 += 2 * (v19 < v20);
            if (v19 < v20)
            {
              v17 = v18;
            }
          }

          v7 = v17;
        }

        while (*(v8 + 1) >= v15);
        *a4 = v12;
        *(a4 + 2) = v13;
        *(a4 + 3) = v14;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 16 * v3;
    v5 = v4 + 16;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 20);
      v8 = *(v4 + 36);
      v9 = v4 + 32;
      if (v7 >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v5;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 12) = *(v5 + 12);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    if (*(v5 + 4) < *(a2 - 12))
    {
      v8 = *(a2 - 16);
      v6 = a2 - 16;
      v7 = v8;
      v9 = *(v6 + 8);
      v10 = *(v6 + 12);
      v11 = HIDWORD(v8);
      do
      {
        v12 = v6;
        v6 = v5;
        *v12 = *v5;
        *(v12 + 8) = *(v5 + 8);
        *(v12 + 12) = *(v5 + 12);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 4) < v11);
      *v6 = v7;
      *(v6 + 8) = v9;
      *(v6 + 12) = v10;
    }
  }

  return result;
}

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  if (result == -1)
  {
    return result;
  }

  v5 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v6 = (*(**a2 + 16))();
  (*(*a1 + 152))(a1, v6);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  (*(*a1 + 112))(a1, &v11);
  while (1)
  {
    if (!v11)
    {
      if (v13 >= v12)
      {
        return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0xFFFFFFFF0007);
      }

LABEL_8:
      v7 = v13;
      goto LABEL_9;
    }

    if ((*(*v11 + 16))(v11))
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_8;
    }

    v7 = (*(*v11 + 24))();
LABEL_9:
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a2, v7);
    (*(*a1 + 216))(a1, v7);
    for (i = a2[5]; ; a2[5] = i)
    {
      v9 = a2[2];
      if (i >= (a2[3] - v9) >> 4)
      {
        break;
      }

      (*(*a1 + 184))(a1, v7, v9 + 16 * i);
      i = a2[5] + 1;
    }

    (*(**a2 + 24))(v10);
    (*(*a1 + 160))(a1, v7, v10);
    if (v11)
    {
      (*(*v11 + 32))(v11);
    }

    else
    {
      ++v13;
    }
  }

  if (v11)
  {
    (*(*v11 + 8))();
  }

  return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0xFFFFFFFF0007);
}

void sub_26B4F5ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 32))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v4, v5);
  v6 = *a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  (*(*v6 + 120))(v6, a2, &v13);
  while (1)
  {
    if (!v13)
    {
      if (v15 >= v14)
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = *(&v13 + 1) + 16 * v15;
      goto LABEL_8;
    }

    if ((*(*v13 + 16))(v13))
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_7;
    }

    v8 = (*(*v13 + 24))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](v4, v8);
    if (v13)
    {
      (*(*v13 + 32))(v13);
    }

    else
    {
      ++v15;
    }
  }

  if (v13)
  {
    (*(*v13 + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (*(&v14 + 1))
  {
    --**(&v14 + 1);
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz((v10 - v9) >> 4);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v9, v10, &v13, v12, 1, v7);
}

void sub_26B4F60F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a9);
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 4) < *v10)
        {
          v104 = *v10;
          v105 = *(v10 + 2);
          v106 = *(v10 + 3);
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          *(a2 - 2) = v104;
          *(a2 - 2) = v105;
          *(a2 - 1) = v106;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v10, v10 + 4, v10 + 8, (a2 - 2), a6);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v10, v10 + 4, v10 + 8, (v10 + 6), a6);
      if (*(a2 - 4) < *(v10 + 12))
      {
        v89 = v10[6];
        v90 = *(v10 + 14);
        v91 = *(v10 + 15);
        v10[6] = *(a2 - 2);
        *(v10 + 14) = *(a2 - 2);
        *(v10 + 15) = *(a2 - 1);
        *(a2 - 2) = v89;
        *(a2 - 2) = v90;
        *(a2 - 1) = v91;
        if (*(v10 + 12) < *(v10 + 8))
        {
          v92 = v10[4];
          v93 = *(v10 + 10);
          v94 = *(v10 + 11);
          v95 = v10[6];
          v10[4] = v95;
          v96 = *(v10 + 14);
          *(v10 + 10) = v96;
          v97 = *(v10 + 15);
          *(v10 + 11) = v97;
          v10[6] = v92;
          *(v10 + 14) = v93;
          *(v10 + 15) = v94;
          if (*(v10 + 4) > v95)
          {
            v98 = v10[2];
            v99 = *(v10 + 6);
            v100 = *(v10 + 7);
            v10[2] = v95;
            *(v10 + 6) = v96;
            *(v10 + 7) = v97;
            v10[4] = v98;
            *(v10 + 10) = v99;
            *(v10 + 11) = v100;
            if (*v10 > v95)
            {
              v101 = *v10;
              v102 = *(v10 + 2);
              v103 = *(v10 + 3);
              *v10 = v95;
              *(v10 + 2) = v96;
              *(v10 + 3) = v97;
              v10[2] = v101;
              *(v10 + 6) = v102;
              *(v10 + 7) = v103;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, a2, a2, a3);
      }

      return;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    v16 = *(a2 - 4);
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v10)
      {
        if (v16 < v17)
        {
          v25 = *v14;
          v26 = v14[2];
          v27 = v14[3];
          *v14 = *(a2 - 2);
          v14[2] = *(a2 - 2);
          v14[3] = *(a2 - 1);
          *(a2 - 2) = v25;
          *(a2 - 2) = v26;
          *(a2 - 1) = v27;
          if (*v14 < *v10)
          {
            v28 = *v10;
            v29 = *(v10 + 2);
            v30 = *(v10 + 3);
            *v10 = *v14;
            *(v10 + 2) = v14[2];
            *(v10 + 3) = v14[3];
            *v14 = v28;
            v14[2] = v29;
            v14[3] = v30;
          }
        }
      }

      else
      {
        v18 = *v10;
        v19 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v16 < v17)
        {
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          goto LABEL_28;
        }

        *v10 = *v14;
        *(v10 + 2) = v14[2];
        *(v10 + 3) = v14[3];
        *v14 = v18;
        v14[2] = v19;
        v14[3] = v20;
        if (*(a2 - 4) < v18)
        {
          *v14 = *(a2 - 2);
          v14[2] = *(a2 - 2);
          v14[3] = *(a2 - 1);
LABEL_28:
          *(a2 - 2) = v18;
          *(a2 - 2) = v19;
          *(a2 - 1) = v20;
        }
      }

      v37 = v14 - 4;
      v38 = *(v14 - 4);
      v39 = *(a2 - 8);
      if (v38 >= *(v10 + 4))
      {
        if (v39 < v38)
        {
          v43 = *v37;
          v44 = *(v14 - 2);
          v45 = *(v14 - 1);
          *v37 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
          *(a2 - 4) = v43;
          *(a2 - 6) = v44;
          *(a2 - 5) = v45;
          if (*v37 < *(v10 + 4))
          {
            v46 = v10[2];
            v47 = *(v10 + 6);
            v48 = *(v10 + 7);
            v10[2] = *v37;
            *(v10 + 6) = *(v14 - 2);
            *(v10 + 7) = *(v14 - 1);
            *v37 = v46;
            *(v14 - 2) = v47;
            *(v14 - 1) = v48;
          }
        }
      }

      else
      {
        v40 = v10[2];
        v41 = *(v10 + 6);
        v42 = *(v10 + 7);
        if (v39 < v38)
        {
          v10[2] = *(a2 - 4);
          *(v10 + 6) = *(a2 - 6);
          *(v10 + 7) = *(a2 - 5);
          goto LABEL_42;
        }

        v10[2] = *v37;
        *(v10 + 6) = *(v14 - 2);
        *(v10 + 7) = *(v14 - 1);
        *v37 = v40;
        *(v14 - 2) = v41;
        *(v14 - 1) = v42;
        if (*(a2 - 8) < v40)
        {
          *v37 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
LABEL_42:
          *(a2 - 4) = v40;
          *(a2 - 6) = v41;
          *(a2 - 5) = v42;
        }
      }

      v51 = v14[4];
      v49 = v14 + 4;
      v50 = v51;
      v52 = *(a2 - 12);
      if (v51 >= *(v10 + 8))
      {
        if (v52 < v50)
        {
          v56 = *v49;
          v57 = v49[2];
          v58 = v49[3];
          *v49 = *(a2 - 6);
          v49[2] = *(a2 - 10);
          v49[3] = *(a2 - 9);
          *(a2 - 6) = v56;
          *(a2 - 10) = v57;
          *(a2 - 9) = v58;
          if (*v49 < *(v10 + 8))
          {
            v59 = v10[4];
            v60 = *(v10 + 10);
            v61 = *(v10 + 11);
            v10[4] = *v49;
            *(v10 + 10) = v49[2];
            *(v10 + 11) = v49[3];
            *v49 = v59;
            v49[2] = v60;
            v49[3] = v61;
          }
        }
      }

      else
      {
        v53 = v10[4];
        v54 = *(v10 + 10);
        v55 = *(v10 + 11);
        if (v52 < v50)
        {
          v10[4] = *(a2 - 6);
          *(v10 + 10) = *(a2 - 10);
          *(v10 + 11) = *(a2 - 9);
          goto LABEL_51;
        }

        v10[4] = *v49;
        *(v10 + 10) = v49[2];
        *(v10 + 11) = v49[3];
        *v49 = v53;
        v49[2] = v54;
        v49[3] = v55;
        if (*(a2 - 12) < v53)
        {
          *v49 = *(a2 - 6);
          v49[2] = *(a2 - 10);
          v49[3] = *(a2 - 9);
LABEL_51:
          *(a2 - 6) = v53;
          *(a2 - 10) = v54;
          *(a2 - 9) = v55;
        }
      }

      v62 = *v15;
      v63 = *v37;
      v64 = *v49;
      if (*v15 >= *v37)
      {
        v65 = *v15;
        if (v64 < v62)
        {
          v68 = v15[2];
          v69 = v15[3];
          v70 = *v49;
          *v15 = *v49;
          v71 = v49[2];
          v15[2] = v71;
          v72 = v49[3];
          v15[3] = v72;
          *v49 = v65;
          v49[2] = v68;
          v49[3] = v69;
          if (v63 <= v70)
          {
            v65 = v70;
          }

          else
          {
            v65 = *v37;
            v73 = v37[2];
            v74 = v37[3];
            *v37 = v70;
            v37[2] = v71;
            v37[3] = v72;
            *v15 = v65;
            v15[2] = v73;
            v15[3] = v74;
          }
        }
      }

      else
      {
        v65 = *v37;
        v66 = v37[2];
        v67 = v37[3];
        if (v64 >= v62)
        {
          *v37 = *v15;
          v37[2] = v15[2];
          v37[3] = v15[3];
          *v15 = v65;
          v15[2] = v66;
          v15[3] = v67;
          if (v64 < v65)
          {
            v75 = *v49;
            *v15 = *v49;
            v15[2] = v49[2];
            v15[3] = v49[3];
            *v49 = v65;
            v49[2] = v66;
            v49[3] = v67;
            v65 = v75;
          }
        }

        else
        {
          *v37 = *v49;
          v37[2] = v49[2];
          v37[3] = v49[3];
          *v49 = v65;
          v49[2] = v66;
          v49[3] = v67;
          v65 = *v15;
        }
      }

      v76 = *v10;
      v77 = *(v10 + 2);
      v78 = *(v10 + 3);
      *v10 = v65;
      *(v10 + 2) = v15[2];
      *(v10 + 3) = v15[3];
      *v15 = v76;
      v15[2] = v77;
      v15[3] = v78;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v21 = *v10;
    if (*v10 < *v14)
    {
      v22 = *v14;
      v23 = v14[2];
      v24 = v14[3];
      if (v16 < SLODWORD(v21))
      {
        *v15 = *(a2 - 2);
        v15[2] = *(a2 - 2);
        v15[3] = *(a2 - 1);
        goto LABEL_37;
      }

      *v15 = *v10;
      v15[2] = *(v10 + 2);
      v15[3] = *(v10 + 3);
      *v10 = v22;
      *(v10 + 2) = v23;
      *(v10 + 3) = v24;
      if (*(a2 - 4) < v22)
      {
        *v10 = *(a2 - 2);
        *(v10 + 2) = *(a2 - 2);
        *(v10 + 3) = *(a2 - 1);
LABEL_37:
        *(a2 - 2) = v22;
        *(a2 - 2) = v23;
        *(a2 - 1) = v24;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v16 >= SLODWORD(v21))
    {
      goto LABEL_38;
    }

    v31 = *v10;
    v32 = *(v10 + 2);
    v33 = *(v10 + 3);
    *v10 = *(a2 - 2);
    *(v10 + 2) = *(a2 - 2);
    *(v10 + 3) = *(a2 - 1);
    *(a2 - 2) = v31;
    *(a2 - 2) = v32;
    *(a2 - 1) = v33;
    if (*v10 >= *v15)
    {
      goto LABEL_38;
    }

    v34 = *v15;
    v35 = v15[2];
    v36 = v15[3];
    *v15 = *v10;
    v15[2] = *(v10 + 2);
    v15[3] = *(v10 + 3);
    *v10 = v34;
    *(v10 + 2) = v35;
    *(v10 + 3) = v36;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (*(v10 - 4) >= *v10)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v10, a2);
      goto LABEL_68;
    }

LABEL_63:
    v79 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v10, a2);
    if ((v81 & 1) == 0)
    {
      goto LABEL_66;
    }

    v82 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v10, v79, v80);
    v10 = v79 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>((v79 + 2), a2, v83))
    {
      a4 = -v12;
      a2 = v79;
      if (v82)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v82)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(a1, v79, a3, -v12, a5 & 1);
      v10 = v79 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v84 = *(v10 + 4);
  v85 = *(a2 - 4);
  if (v84 >= *v10)
  {
    if (v85 < v84)
    {
      v107 = v10[2];
      v108 = *(v10 + 6);
      v109 = *(v10 + 7);
      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
      *(a2 - 2) = v107;
      *(a2 - 2) = v108;
      *(a2 - 1) = v109;
      if (*(v10 + 4) < *v10)
      {
        v110 = *v10;
        v111 = *(v10 + 2);
        v112 = *(v10 + 3);
        *v10 = v10[2];
        *(v10 + 2) = *(v10 + 6);
        *(v10 + 3) = *(v10 + 7);
        v10[2] = v110;
        *(v10 + 6) = v111;
        *(v10 + 7) = v112;
      }
    }
  }

  else
  {
    v86 = *v10;
    v87 = *(v10 + 2);
    v88 = *(v10 + 3);
    if (v85 >= v84)
    {
      *v10 = v10[2];
      *(v10 + 2) = *(v10 + 6);
      *(v10 + 3) = *(v10 + 7);
      v10[2] = v86;
      *(v10 + 6) = v87;
      *(v10 + 7) = v88;
      if (*(a2 - 4) >= v86)
      {
        return;
      }

      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
    }

    else
    {
      *v10 = *(a2 - 2);
      *(v10 + 2) = *(a2 - 2);
      *(v10 + 3) = *(a2 - 1);
    }

    *(a2 - 2) = v86;
    *(a2 - 2) = v87;
    *(a2 - 1) = v88;
  }
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(float *a1, float *a2, float *a3, uint64_t a4, float result)
{
  v5 = *a2;
  *&v6 = *a3;
  if (*a2 >= *a1)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      result = a2[2];
      v9 = *(a2 + 3);
      *a2 = *a3;
      a2[2] = a3[2];
      a2[3] = a3[3];
      *a3 = v6;
      a3[2] = result;
      *(a3 + 3) = v9;
      if (*a2 < *a1)
      {
        v6 = *a1;
        result = a1[2];
        v10 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = a2[2];
        a1[3] = a2[3];
        *a2 = v6;
        a2[2] = result;
        *(a2 + 3) = v10;
        *&v6 = *a3;
      }
    }
  }

  else
  {
    v7 = *a1;
    result = a1[2];
    v8 = *(a1 + 3);
    if (v6 < v5)
    {
      *a1 = *a3;
      a1[2] = a3[2];
      a1[3] = a3[3];
LABEL_9:
      *a3 = v7;
      a3[2] = result;
      *(a3 + 3) = v8;
      LODWORD(v6) = v7;
      goto LABEL_10;
    }

    *a1 = *a2;
    a1[2] = a2[2];
    a1[3] = a2[3];
    *a2 = v7;
    a2[2] = result;
    *(a2 + 3) = v8;
    *&v6 = *a3;
    if (*a3 < v7)
    {
      *a2 = *a3;
      a2[2] = a3[2];
      a2[3] = a3[3];
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v11 = *a3;
    result = a3[2];
    v12 = *(a3 + 3);
    *a3 = *a4;
    a3[2] = *(a4 + 8);
    a3[3] = *(a4 + 12);
    *a4 = v11;
    *(a4 + 8) = result;
    *(a4 + 12) = v12;
    if (*a3 < *a2)
    {
      v13 = *a2;
      result = a2[2];
      v14 = *(a2 + 3);
      *a2 = *a3;
      a2[2] = a3[2];
      a2[3] = a3[3];
      *a3 = v13;
      a3[2] = result;
      *(a3 + 3) = v14;
      if (*a2 < *a1)
      {
        v15 = *a1;
        result = a1[2];
        v16 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = a2[2];
        a1[3] = a2[3];
        *a2 = v15;
        a2[2] = result;
        *(a2 + 3) = v16;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (v4[4] < *v4)
        {
          v6 = *v2;
          v7 = v4[6];
          v8 = v3;
          v9 = v4[7];
          while (1)
          {
            v10 = result + v8;
            *(v10 + 16) = *(result + v8);
            *(v10 + 24) = *(result + v8 + 8);
            *(v10 + 28) = *(result + v8 + 12);
            if (!v8)
            {
              break;
            }

            v8 -= 16;
            if (*(v10 - 16) <= v6)
            {
              v11 = result + v8 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v6;
          *(v11 + 8) = v7;
          *(v11 + 12) = v9;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = result + 7;
      do
      {
        v4 = v2;
        if (result[4] < *result)
        {
          v5 = *v2;
          v6 = result[6];
          v7 = v3;
          v8 = result[7];
          do
          {
            v9 = v7;
            *(v7 - 3) = *(v7 - 7);
            *(v7 - 1) = *(v7 - 5);
            v10 = *(v7 - 4);
            v7 -= 4;
            *v9 = v10;
          }

          while (*(v9 - 11) > v5);
          *(v7 - 3) = v5;
          *(v7 - 1) = v6;
          *v7 = v8;
        }

        v2 = v4 + 2;
        v3 += 4;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(_DWORD *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(a2 - 16) <= *a1)
  {
    v5 = a1 + 4;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 4;
    }

    while (*v3 <= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[4];
      v3 += 4;
    }

    while (v4 <= v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 16);
      a2 -= 16;
    }

    while (v6 > v2);
  }

  v7 = a1[2];
  v8 = a1[3];
  while (v3 < a2)
  {
    v9 = *v3;
    v10 = v3[2];
    v11 = v3[3];
    *v3 = *a2;
    v3[2] = *(a2 + 8);
    v3[3] = *(a2 + 12);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = v11;
    do
    {
      v12 = v3[4];
      v3 += 4;
    }

    while (v12 <= v2);
    do
    {
      v13 = *(a2 - 16);
      a2 -= 16;
    }

    while (v13 > v2);
  }

  if (v3 - 4 != a1)
  {
    *a1 = *(v3 - 2);
    a1[2] = *(v3 - 2);
    a1[3] = *(v3 - 1);
  }

  *(v3 - 2) = v2;
  *(v3 - 2) = v7;
  *(v3 - 1) = v8;
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  do
  {
    v6 = a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v3);
  v7 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v9 = *(a2 - 16);
      a2 -= 16;
    }

    while (v9 >= v3);
  }

  else
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
    }

    while (v8 >= v3);
  }

  v10 = &a1[v2];
  if (v7 < a2)
  {
    v11 = a2;
    do
    {
      v12 = *v10;
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *v10 = *v11;
      *(v10 + 2) = *(v11 + 8);
      *(v10 + 3) = *(v11 + 12);
      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 12) = v14;
      do
      {
        v15 = *(v10 + 4);
        v10 += 2;
      }

      while (v15 < v3);
      do
      {
        v16 = *(v11 - 16);
        v11 -= 16;
      }

      while (v16 >= v3);
    }

    while (v10 < v11);
  }

  if (v10 - 2 != a1)
  {
    *a1 = *(v10 - 2);
    *(a1 + 2) = *(v10 - 2);
    *(a1 + 3) = *(v10 - 1);
  }

  *(v10 - 2) = v3;
  *(v10 - 2) = v4;
  *(v10 - 1) = v5;
  return v10 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, _DWORD *a2, float a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v24 = *(a1 + 16);
      v25 = *(a2 - 4);
      if (v24 >= *a1)
      {
        if (v25 < v24)
        {
          v36 = *(a1 + 16);
          v37 = *(a1 + 24);
          v38 = *(a1 + 28);
          *(a1 + 16) = *(a2 - 2);
          *(a1 + 24) = *(a2 - 2);
          *(a1 + 28) = *(a2 - 1);
          *(a2 - 2) = v36;
          *(a2 - 2) = v37;
          *(a2 - 1) = v38;
          if (*(a1 + 16) < *a1)
          {
            v39 = *a1;
            v40 = *(a1 + 8);
            v41 = *(a1 + 12);
            *a1 = *(a1 + 16);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 12) = *(a1 + 28);
            *(a1 + 16) = v39;
            *(a1 + 24) = v40;
            result = 1;
            *(a1 + 28) = v41;
            return result;
          }
        }

        return 1;
      }

      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 12);
      if (v25 >= v24)
      {
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 12) = *(a1 + 28);
        *(a1 + 16) = v26;
        *(a1 + 24) = v27;
        *(a1 + 28) = v28;
        if (*(a2 - 4) >= v26)
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 2);
        *(a1 + 24) = *(a2 - 2);
        *(a1 + 28) = *(a2 - 1);
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a1 + 8) = *(a2 - 2);
        *(a1 + 12) = *(a2 - 1);
      }

      *(a2 - 2) = v26;
      *(a2 - 2) = v27;
      *(a2 - 1) = v28;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32), a1 + 48, a3);
        if (*(a2 - 4) < *(a1 + 48))
        {
          v9 = *(a1 + 48);
          v10 = *(a1 + 56);
          v11 = *(a1 + 60);
          *(a1 + 48) = *(a2 - 2);
          *(a1 + 56) = *(a2 - 2);
          *(a1 + 60) = *(a2 - 1);
          *(a2 - 2) = v9;
          *(a2 - 2) = v10;
          *(a2 - 1) = v11;
          if (*(a1 + 48) < *(a1 + 32))
          {
            v12 = *(a1 + 32);
            v13 = *(a1 + 40);
            v14 = *(a1 + 44);
            v15 = *(a1 + 48);
            *(a1 + 32) = v15;
            v16 = *(a1 + 56);
            *(a1 + 40) = v16;
            v17 = *(a1 + 60);
            *(a1 + 44) = v17;
            *(a1 + 48) = v12;
            *(a1 + 56) = v13;
            *(a1 + 60) = v14;
            if (*(a1 + 16) > v15)
            {
              v18 = *(a1 + 16);
              v19 = *(a1 + 24);
              v20 = *(a1 + 28);
              *(a1 + 16) = v15;
              *(a1 + 24) = v16;
              *(a1 + 28) = v17;
              *(a1 + 32) = v18;
              *(a1 + 40) = v19;
              *(a1 + 44) = v20;
              if (*a1 > v15)
              {
                v21 = *a1;
                v22 = *(a1 + 8);
                v23 = *(a1 + 12);
                *a1 = v15;
                *(a1 + 8) = v16;
                *(a1 + 12) = v17;
                *(a1 + 16) = v21;
                *(a1 + 24) = v22;
                *(a1 + 28) = v23;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32), (a2 - 4), a3);
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a2 - 4) < *a1)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 12);
      *a1 = *(a2 - 2);
      *(a1 + 8) = *(a2 - 2);
      *(a1 + 12) = *(a2 - 1);
      *(a2 - 2) = v6;
      *(a2 - 2) = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v29 = (a1 + 32);
  v30 = *(a1 + 32);
  v31 = *(a1 + 16);
  v32 = *a1;
  if (v31 >= *a1)
  {
    if (v30 < v31)
    {
      v43 = *(a1 + 16);
      v44 = *(a1 + 24);
      v45 = *(a1 + 28);
      v46 = *(a1 + 32);
      *(a1 + 16) = v46;
      v47 = *(a1 + 40);
      *(a1 + 24) = v47;
      v48 = *(a1 + 44);
      *(a1 + 28) = v48;
      *(a1 + 32) = v43;
      *(a1 + 40) = v44;
      *(a1 + 44) = v45;
      if (SLODWORD(v32) > v46)
      {
        v49 = *a1;
        v50 = *(a1 + 8);
        v51 = *(a1 + 12);
        *a1 = v46;
        *(a1 + 8) = v47;
        *(a1 + 12) = v48;
        *(a1 + 16) = v49;
        *(a1 + 24) = v50;
        *(a1 + 28) = v51;
      }
    }
  }

  else
  {
    v33 = *a1;
    v34 = *(a1 + 8);
    v35 = *(a1 + 12);
    if (v30 >= v31)
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 12) = *(a1 + 28);
      *(a1 + 16) = v33;
      *(a1 + 24) = v34;
      *(a1 + 28) = v35;
      if (v30 >= v33)
      {
        goto LABEL_33;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 28) = *(a1 + 44);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
      *(a1 + 12) = *(a1 + 44);
    }

    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    *(a1 + 44) = v35;
  }

LABEL_33:
  v52 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    if (*v52 < *v29)
    {
      v55 = *v52;
      v56 = v52[2];
      v57 = v53;
      v58 = v52[3];
      while (1)
      {
        v59 = a1 + v57;
        *(v59 + 48) = *(a1 + v57 + 32);
        *(v59 + 56) = *(a1 + v57 + 40);
        *(v59 + 60) = *(a1 + v57 + 44);
        if (v57 == -32)
        {
          break;
        }

        v57 -= 16;
        if (*(v59 + 16) <= v55)
        {
          v60 = a1 + v57 + 48;
          goto LABEL_41;
        }
      }

      v60 = a1;
LABEL_41:
      *v60 = v55;
      *(v60 + 8) = v56;
      *(v60 + 12) = v58;
      if (++v54 == 8)
      {
        return v52 + 4 == a2;
      }
    }

    v29 = v52;
    v53 += 16;
    v52 += 4;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          v14 = v12[2];
          v15 = v12[3];
          *v12 = *a1;
          v12[2] = a1[2];
          v12[3] = a1[3];
          *a1 = v13;
          a1[2] = v14;
          a1[3] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 4;
      do
      {
        v17 = *a1;
        v18 = a1[2];
        v19 = a1[3];
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8);
        if (v16 == v20)
        {
          *v20 = v17;
          *(v20 + 8) = v18;
          *(v20 + 12) = v19;
        }

        else
        {
          *v20 = *v16;
          *(v20 + 8) = v16[2];
          *(v20 + 12) = v16[3];
          *v16 = v17;
          v16[2] = v18;
          v16[3] = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v16 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[4];
        if (*v8 <= v11)
        {
          v10 = v8[4];
        }

        if (*v8 < v11)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      if (v10 >= *a4)
      {
        v12 = *a4;
        v13 = a4[2];
        v14 = a4[3];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          v15[2] = v8[2];
          v15[3] = v8[3];
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = *v8;
            v7 = v16;
          }

          else
          {
            v17 = *v8;
            v18 = v8[4];
            if (*v8 <= v18)
            {
              v17 = v8[4];
            }

            if (*v8 >= v18)
            {
              v7 = v16;
            }

            else
            {
              v8 += 4;
            }
          }
        }

        while (v17 >= v12);
        *a4 = v12;
        a4[2] = v13;
        a4[3] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 16 * v3;
    v5 = v4 + 16;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = *(v4 + 32);
      v7 = v4 + 32;
      if (*(v7 - 16) >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v7;
      }
    }

    *a1 = *v5;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 12) = *(v5 + 12);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}