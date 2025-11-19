void sub_2626AA4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a25 < 0)
      {
        operator delete(__p);
      }

      if (a31 < 0)
      {
        operator delete(a26);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

uint64_t TInputModel::getIntVar(TDataManager **this, const char *a2, uint64_t a3)
{
  v6 = *this;
  if (v6 && (*(*v6 + 40))(v6, a2, 0, 0))
  {
    v7 = *this;
  }

  else
  {
    v7 = this[1];
    if (!v7)
    {
      return a3;
    }
  }

  return TDataManager::getIntVar(v7, a2, a3);
}

void TInputModel::getStringVar(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3 && (*(*v3 + 40))(v3, a2, 0, 0))
  {
    v4 = *a1;
  }

  else
  {
    v4 = a1[1];
    if (!v4)
    {

      JUMPOUT(0x26672AEC0);
    }
  }

  TDataManager::getStringVar(v4);
}

BOOL TInputModel::isVar(TInputModel *this, const char *a2)
{
  v4 = *this;
  result = 1;
  if (!v4 || !(*(*v4 + 40))(v4, a2, 0, 0))
  {
    v5 = *(this + 1);
    if (!v5 || !(*(*v5 + 40))(v5, a2, 0, 0))
    {
      return 0;
    }
  }

  return result;
}

char *TInputModel::getStaticDataPath(TInputModel *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v1 = *this;
    if (!*this)
    {
      return &byte_262899963;
    }
  }

  result = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void TOutputModel::TOutputModel(TOutputModel *this, TDataManager *a2, TDataManager *a3, char *a4, const TDataManager *a5)
{
  *this = a2;
  *(this + 1) = a3;
  if (TInputModel::isVar(this, "Version"))
  {
    TInputModel::TInputModel(&__p, *this, *(this + 1), *(this + 1) == 0, a4);
    v9 = v31;
    *(this + 2) = v31;
    goto LABEL_8;
  }

  if (a3)
  {
    v9 = 2;
LABEL_5:
    *(this + 2) = v9;
    goto LABEL_8;
  }

  if (!a5)
  {
    v9 = 1;
    goto LABEL_5;
  }

  IntVar = TDataManager::getIntVar(a5, "Version", 1);
  *(this + 2) = IntVar;
  v9 = IntVar;
LABEL_8:
  v11 = *(this + 1);
  if (v11)
  {
    TDataManager::setIntVar(v11, "Version", v9);
    v12 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, a4);
    if (v31 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v31 >= 0)
    {
      v14 = HIBYTE(v31);
    }

    else
    {
      v14 = v30;
    }

    (*(*v12 + 48))(v12, "VocVersionID", p_p, v14);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    TDataManager::setBoolVar(*(this + 1), "IsStaticComponent", 1);
    if (a5)
    {
      __p = 0;
      v30 = 0;
      v31 = 0;
      TDataManager::getStringVar(a5);
      v15 = *(this + 1);
      if (v31 >= 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p;
      }

      std::string::basic_string[abi:ne200100]<0>(&v26, v16);
      if ((v28 & 0x80u) == 0)
      {
        v17 = &v26;
      }

      else
      {
        v17 = v26;
      }

      if ((v28 & 0x80u) == 0)
      {
        v18 = v28;
      }

      else
      {
        v18 = v27;
      }

      (*(*v15 + 48))(v15, "EnhVersion", v17, v18);
      if (v28 < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (*this)
  {
    TDataManager::setIntVar(*this, "Version", *(this + 4));
    v19 = *this;
    std::string::basic_string[abi:ne200100]<0>(&__p, a4);
    if (v31 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    if (v31 >= 0)
    {
      v21 = HIBYTE(v31);
    }

    else
    {
      v21 = v30;
    }

    (*(*v19 + 48))(v19, "VocVersionID", v20, v21);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
      if (!a5)
      {
        return;
      }
    }

    else if (!a5)
    {
      return;
    }

    __p = 0;
    v30 = 0;
    v31 = 0;
    TDataManager::getStringVar(a5);
    v22 = *this;
    if (v31 >= 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p;
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, v23);
    if ((v28 & 0x80u) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26;
    }

    if ((v28 & 0x80u) == 0)
    {
      v25 = v28;
    }

    else
    {
      v25 = v27;
    }

    (*(*v22 + 48))(v22, "EnhVersion", v24, v25);
    if (v28 < 0)
    {
      operator delete(v26);
    }

    if (*(this + 2) == 1)
    {
      TDataManager::setBoolVar(*this, "HasStaticComponent", 1);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2626AAC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(_BYTE *a1, char **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  std::string::basic_string[abi:ne200100]<0>(v4 + 24, a2[1]);
  return a1;
}

void sub_2626AAD28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void TClitics::TClitics(TClitics *this, TLexicon *a2, TTokenizerParamManager *a3)
{
  *this = &unk_287523E28;
  *(this + 1) = 0;
  v6 = this + 16;
  *(this + 2) = &unk_287523E28;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  TRegExp::TRegExp(this + 9, a2 + 240);
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 1) = 2;
  (*(*this + 16))(this);
  *(this + 3) = 6;
  (*(*(this + 2) + 16))(v6);
  v7 = TStringParam::get((a3 + 7992));
  if (v7)
  {
    if (*v7)
    {
      TRegExp::add(this + 72, v7, 0);
      TRegExp::doneAdding((this + 72));
    }
  }
}

void sub_2626AB2C0(_Unwind_Exception *a1)
{
  TRegExp::~TRegExp((v1 + 72));
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void TClitics::~TClitics(void **this)
{
  TRegExp::~TRegExp((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

uint64_t TClitics::isValidRoot(TClitics *this, const TWord *a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v6 = v8;
  v7 = xmmword_26286B6F0;
  v9 = 1;
  TWord::getCategoryTag(a2, &v6);
  if (*(&v7 + 1) >= v7)
  {
    if (v9)
    {
      v10 = 0;
      TBuffer<wchar_t>::insert(&v6, *(&v7 + 1), &v10, 1uLL);
      v3 = v6;
      --*(&v7 + 1);
    }

    else
    {
      v3 = v6;
      if (v7)
      {
        v6[v7 - 1] = 0;
      }
    }
  }

  else
  {
    v3 = v6;
    v6[*(&v7 + 1)] = 0;
  }

  v4 = TRegExp::match(this + 9, v3, 0);
  if (v9 == 1 && v6 != v8 && v6)
  {
    MEMORY[0x26672B1B0]();
  }

  return v4;
}

void sub_2626AB448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v2);
  }

  _Unwind_Resume(a1);
}

void TClitics::addWords(TClitics *this, char **a2, TGraph *a3, TSegmenter *a4)
{
  Segment = TSegmenter::getSegment(a4, a2[2]);
  if (Segment)
  {
    v7 = Segment;
    if (*(Segment + 24) == 1)
    {
      v87 = wcslen(*Segment);
      if (v87 >= 4)
      {
        OutEdge = TVertex::getOutEdge(a2);
        v91 = v7;
        Vertex = TGraph::getVertex(a3, *(v7 + 8));
        if (Vertex)
        {
          v10 = OutEdge == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
LABEL_112:
          if (*(OutEdge + 24) == Vertex && (*(OutEdge + 64) & 0x35) == 0)
          {
            return;
          }

          while (1)
          {
            OutEdge = *(OutEdge + 8);
            if (!OutEdge)
            {
              break;
            }

            if ((*(OutEdge + 32) & 1) == 0)
            {
              goto LABEL_112;
            }
          }
        }

        v11 = *(this + 3);
        if (v11 + 2 > v87)
        {
          v11 = v87 - 2;
        }

        v115 = 0;
        v116 = 6;
        v113 = 0;
        v114 = 0;
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v89 = *(this + 1);
        v86 = v11 + 1;
        if (v89 < v11 + 1)
        {
          v92 = a3;
          v93 = this;
          while (1)
          {
            std::vector<TLexiconMatch>::resize(&v113, 0);
            v12 = *v91;
            v13 = *(this + 4);
            v14 = *(this + 5);
            ActiveConfigHandle = TParam::getActiveConfigHandle((v14 + 16464));
            v16 = *(v14 + 4 * TParam::getValidConfig((v14 + 16464), ActiveConfigHandle) + 16624);
            v17 = *(this + 5);
            v18 = TParam::getActiveConfigHandle((v17 + 16112));
            ValidConfig = TParam::getValidConfig((v17 + 16112), v18);
            TLexicon::findHeadClonesCollated(v13, &v12[v87 - v89], &v116, 1, v16, *(v17 + 4 * ValidConfig + 16272), &v113);
            if (v113 == v114)
            {
              goto LABEL_107;
            }

            v105 = v108;
            v106 = 256;
            v109 = 1;
            v20 = *v91;
            v107 = 0;
            TBuffer<wchar_t>::insert(&v105, 0, v20, v87 - v89);
            v21 = *(this + 5);
            v22 = TParam::getActiveConfigHandle((v21 + 7744));
            if (*(v21 + TParam::getValidConfig((v21 + 7744), v22) + 7896) != 1)
            {
              goto LABEL_24;
            }

            if ((respellRoot(&v105, *v91) & 1) == 0)
            {
              goto LABEL_23;
            }

            v23 = *(this + 4);
            if (v107 >= v106)
            {
              if (v109)
              {
                LODWORD(v102) = 0;
                TBuffer<wchar_t>::insert(&v105, v107, &v102, 1uLL);
                v24 = v105;
                --v107;
              }

              else
              {
                v24 = v105;
                if (v106)
                {
                  v105[v106 - 1] = 0;
                }
              }
            }

            else
            {
              v24 = v105;
              v105[v107] = 0;
            }

            if (TLexicon::checkName(v23, v24, 1, 0xFFFFFFFFFFFFFFFFLL))
            {
LABEL_23:
              v25 = 7;
            }

            else
            {
LABEL_24:
              std::vector<TLexiconMatch>::resize(&v110, 0);
              v26 = *(this + 4);
              if (v107 >= v106)
              {
                if (v109)
                {
                  LODWORD(v102) = 0;
                  TBuffer<wchar_t>::insert(&v105, v107, &v102, 1uLL);
                  v27 = v105;
                  --v107;
                }

                else
                {
                  v27 = v105;
                  if (v106)
                  {
                    v105[v106 - 1] = 0;
                  }
                }
              }

              else
              {
                v27 = v105;
                v105[v107] = 0;
              }

              v28 = TStringParam::get((*(this + 5) + 10744));
              v29 = *(this + 5);
              v30 = TParam::getActiveConfigHandle((v29 + 16464));
              v31 = *(v29 + 4 * TParam::getValidConfig((v29 + 16464), v30) + 16624);
              v32 = *(this + 5);
              v33 = TParam::getActiveConfigHandle((v32 + 16112));
              v34 = TParam::getValidConfig((v32 + 16112), v33);
              TLexicon::findHeadClonesCollated(v26, v27, v28, v31, *(v32 + 4 * v34 + 16272), &v110);
              v35 = *(this + 5);
              v36 = TParam::getActiveConfigHandle((v35 + 12864));
              if ((*(v35 + TParam::getValidConfig((v35 + 12864), v36) + 13016) & 1) == 0)
              {
                v69 = v110;
                if (v111 != v110)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  do
                  {
                    if (TClitics::isValidRoot(this, *&v69[v70]))
                    {
                      if (!v72)
                      {
                        v72 = TGraph::addVertex(a3, 0);
                      }

                      v73 = *&v110[v70];
                      LODWORD(v102) = 1;
                      *v103 = v73;
                      *&v103[8] = *&v110[v70 + 16];
                      TGraph::addEdge(a3, a2, v72, &v102);
                    }

                    ++v71;
                    v69 = v110;
                    v70 += 32;
                  }

                  while (v71 < (v111 - v110) >> 5);
                  if (v72)
                  {
                    v74 = TGraph::addVertex(a3, *(v91 + 8));
                    v75 = v113;
                    if (v114 != v113)
                    {
                      v76 = v74;
                      v77 = 0;
                      v78 = 0;
                      do
                      {
                        v79 = &v75[v77];
                        v80 = *v79;
                        LODWORD(v102) = 1;
                        *v103 = v80;
                        *&v103[8] = *(v79 + 1);
                        TGraph::addEdge(a3, v72, v76, &v102);
                        ++v78;
                        v75 = v113;
                        v77 += 32;
                      }

                      while (v78 < (v114 - v113) >> 5);
                    }
                  }
                }

                goto LABEL_100;
              }

              v37 = *(this + 5);
              v38 = TParam::getActiveConfigHandle((v37 + 12616));
              if (*(v37 + TParam::getValidConfig((v37 + 12616), v38) + 12768))
              {
                v102 = &v103[16];
                *v103 = xmmword_26286B6F0;
                v104 = 1;
                v98 = v100;
                v99 = xmmword_26286B6F0;
                v101 = 1;
                v39 = v110;
                if (v111 == v110)
                {
                  goto LABEL_78;
                }

                v40 = 0;
                do
                {
                  v90 = v40;
                  v41 = 32 * v40;
                  if (TClitics::isValidRoot(this, *&v39[32 * v40]))
                  {
                    TWord::getWrittenForm(*&v110[v41], &v105);
                    v42 = v113;
                    if (v114 != v113)
                    {
                      v43 = 0;
                      v44 = 0;
                      do
                      {
                        TWord::getWrittenForm(*&v42[v43], &v98);
                        TBuffer<wchar_t>::operator=(&v102, &v105);
                        TBuffer<wchar_t>::operator+=(&v102, &v98);
                        v45 = *(this + 5);
                        v46 = TParam::getActiveConfigHandle((v45 + 7744));
                        if (*(v45 + TParam::getValidConfig((v45 + 7744), v46) + 7896) != 1)
                        {
                          goto LABEL_45;
                        }

                        if (v107 >= v106)
                        {
                          if (v109)
                          {
                            v94 = 0;
                            TBuffer<wchar_t>::insert(&v105, v107, &v94, 1uLL);
                            v47 = v105;
                            --v107;
                          }

                          else
                          {
                            v47 = v105;
                            if (v106)
                            {
                              v105[v106 - 1] = 0;
                            }
                          }
                        }

                        else
                        {
                          v47 = v105;
                          v105[v107] = 0;
                        }

                        if (respellRoot(&v102, v47))
                        {
LABEL_45:
                          v48 = *(this + 4);
                          if (*&v103[8] >= *v103)
                          {
                            if (v104)
                            {
                              v94 = 0;
                              TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                              v49 = v102;
                              --*&v103[8];
                            }

                            else
                            {
                              v49 = v102;
                              if (*v103)
                              {
                                v102[*v103 - 1] = 0;
                              }
                            }
                          }

                          else
                          {
                            v49 = v102;
                            v102[*&v103[8]] = 0;
                          }

                          if (!TLexicon::checkName(v48, v49, 0, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            v50 = *(this + 4);
                            if (*&v103[8] >= *v103)
                            {
                              v52 = v91;
                              if (v104)
                              {
                                v94 = 0;
                                TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                v51 = v102;
                                --*&v103[8];
                              }

                              else
                              {
                                v51 = v102;
                                if (*v103)
                                {
                                  v102[*v103 - 1] = 0;
                                }
                              }
                            }

                            else
                            {
                              v51 = v102;
                              v102[*&v103[8]] = 0;
                              v52 = v91;
                            }

                            HeadClone = TLexicon::findHeadClone(v50, v51);
                            if (HeadClone)
                            {
                              v54 = 1;
                            }

                            else
                            {
                              v55 = *(this + 4);
                              if (*&v103[8] >= *v103)
                              {
                                if (v104)
                                {
                                  v94 = 0;
                                  TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                  v56 = v102;
                                  --*&v103[8];
                                }

                                else
                                {
                                  v56 = v102;
                                  if (*v103)
                                  {
                                    v102[*v103 - 1] = 0;
                                  }
                                }
                              }

                              else
                              {
                                v56 = v102;
                                v102[*&v103[8]] = 0;
                              }

                              HeadClone = TLexicon::addTempWord(v55, v56, 0, 0, 0);
                              v54 = 4;
                            }

                            v57 = TGraph::addVertex(v92, *(v52 + 8));
                            v58 = *(this + 4);
                            v59 = *v52;
                            if (*&v103[8] >= *v103)
                            {
                              if (v104)
                              {
                                v94 = 0;
                                TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                v60 = v102;
                                --*&v103[8];
                                this = v93;
                              }

                              else
                              {
                                v60 = v102;
                                if (*v103)
                                {
                                  v102[*v103 - 1] = 0;
                                }
                              }
                            }

                            else
                            {
                              v60 = v102;
                              v102[*&v103[8]] = 0;
                            }

                            v61 = *(this + 5);
                            v62 = TParam::getActiveConfigHandle((v61 + 16464));
                            v63 = *(v61 + 4 * TParam::getValidConfig((v61 + 16464), v62) + 16624);
                            v64 = *(v93 + 5);
                            v65 = TParam::getActiveConfigHandle((v64 + 16112));
                            v66 = TParam::getValidConfig((v64 + 16112), v65);
                            Score = TLexicon::makeScore(v58, v59, v60, v63, *(v64 + 4 * v66 + 16272));
                            v94 = v54;
                            v95 = HeadClone;
                            v96 = Score;
                            v97 = v68;
                            a3 = v92;
                            TGraph::addEdge(v92, *(v92 + 8), v57, &v94);
                            this = v93;
                          }
                        }

                        ++v44;
                        v42 = v113;
                        v43 += 32;
                      }

                      while (v44 < (v114 - v113) >> 5);
                    }
                  }

                  v40 = v90 + 1;
                  v39 = v110;
                }

                while (v90 + 1 < ((v111 - v110) >> 5));
                if (v101)
                {
LABEL_78:
                  if (v98 != v100 && v98)
                  {
                    MEMORY[0x26672B1B0]();
                  }
                }

                if (v104 == 1 && v102 != &v103[16] && v102)
                {
                  MEMORY[0x26672B1B0]();
                }

LABEL_100:
                v25 = 0;
                goto LABEL_101;
              }

              v81 = v110;
              if (v111 == v110)
              {
                goto LABEL_100;
              }

              v82 = 0;
              v83 = 0;
              while ((TClitics::isValidRoot(this, *&v81[v82]) & 1) == 0)
              {
                ++v83;
                v81 = v110;
                v82 += 32;
                if (v83 >= (v111 - v110) >> 5)
                {
                  goto LABEL_100;
                }
              }

              v84 = TLexicon::findHeadClone(*(this + 4), *v91);
              if (!v84)
              {
                v84 = TLexicon::addTempWord(*(this + 4), *v91, 0, 0, 0);
              }

              v85 = TGraph::addVertex(a3, *(v91 + 8));
              LODWORD(v102) = 4;
              *v103 = v84;
              *&v103[8] = 0;
              v103[16] = 0;
              TGraph::addEdge(a3, *(a3 + 8), v85, &v102);
              v25 = 5;
            }

LABEL_101:
            if (v109 == 1 && v105 != v108 && v105)
            {
              MEMORY[0x26672B1B0]();
            }

            if (v25 != 7 && v25)
            {
LABEL_117:
              if (v110)
              {
                v111 = v110;
                operator delete(v110);
              }

              break;
            }

LABEL_107:
            if (++v89 >= v86)
            {
              goto LABEL_117;
            }
          }
        }

        if (v113)
        {
          v114 = v113;
          operator delete(v113);
        }
      }
    }
  }
}

void sub_2626ABF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (LOBYTE(STACK[0xCE8]) == 1 && STACK[0x8D0] != a14 && STACK[0x8D0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v17 = *(v14 - 144);
  if (v17)
  {
    *(v14 - 136) = v17;
    operator delete(v17);
  }

  v18 = *(v14 - 120);
  if (v18)
  {
    *(v14 - 112) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t TBuffer<wchar_t>::operator=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4 >= v5)
  {
    if (*(a2 + 1048))
    {
      v8 = 0;
      TBuffer<wchar_t>::insert(a2, v4, &v8, 1uLL);
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
      v6 = *a2;
    }

    else
    {
      v6 = *a2;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a2;
    *(*a2 + 4 * v4) = 0;
  }

  *(a1 + 16) = 0;
  TBuffer<wchar_t>::insert(a1, 0, v6, v4);
  return a1;
}

void MrecInitModule_apist_sdapi(void)
{
  if (!gParSdapiDiagnosticCheckHeapEveryCall)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "SdapiDiagnosticCheckHeapEveryCall", &unk_26288848C, &unk_26288848C, 0, SetShadowSdapiDiagnosticCheckHeapEveryCall, 0);
    *v1 = &unk_287527EA0;
    gParSdapiDiagnosticCheckHeapEveryCall = v1;
    gShadowSdapiDiagnosticCheckHeapEveryCall = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiDiagnosticCheckHeapEveryCall);
  }

  if (!gParSdapiCrashOnSendError)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "SdapiCrashOnSendError", &unk_26288848C, &unk_26288848C, 0, SetShadowSdapiCrashOnSendError, 0);
    *v3 = &unk_287527EA0;
    gParSdapiCrashOnSendError = v3;
    gShadowSdapiCrashOnSendError = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiCrashOnSendError);
  }

  if (!gParSdapiAdaptationAccumulationMinCallbackInterval)
  {
    v4 = MemChunkAlloc(0x38uLL, 0);
    v8 = 0x271000000000;
    v5 = IntGlobalParamBase::IntGlobalParamBase(v4, "SdapiAdaptationAccumulationMinCallbackInterval", &unk_26288848C, &unk_26288848C, 1, &v8, 0);
    *v5 = &unk_287528130;
    gParSdapiAdaptationAccumulationMinCallbackInterval = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiAdaptationAccumulationMinCallbackInterval);
  }

  if (!gParSdapiAdaptationApplicationMinCallbackInterval)
  {
    v6 = MemChunkAlloc(0x38uLL, 0);
    v8 = 0x271000000000;
    v7 = IntGlobalParamBase::IntGlobalParamBase(v6, "SdapiAdaptationApplicationMinCallbackInterval", &unk_26288848C, &unk_26288848C, 1, &v8, 0);
    *v7 = &unk_287528130;
    gParSdapiAdaptationApplicationMinCallbackInterval = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParSdapiAdaptationApplicationMinCallbackInterval);
  }
}

void throwIfErroredDuringCallback(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(ApiState::smpApiState + 1) == 1)
  {
    v8 = *(ApiState::smpApiState + 88);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 468, "sdapi/apist", 32, "%.500s %.500s", a7, a8, a1);
  }
}

uint64_t sdUtilStrMove(char *a1, int a2, const char *__s)
{
  v6 = strlen(__s);
  v7 = v6;
  if (a2)
  {
    if (a2 - 1 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = (a2 - 1);
    }

    if (v8)
    {
      memcpy(a1, __s, v8);
    }

    else
    {
      v8 = 0;
    }

    a1[v8] = 0;
  }

  return v7 + 1;
}

uint64_t sdUtilItemMove(int a1, const void *a2, uint64_t a3, void *__dst, unsigned int a5)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  v7 = v6 * a1;
  if (v7)
  {
    memcpy(__dst, a2, v7);
  }

  return a3;
}

void sdUtilConvertSDWordSpecsToCwids(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a6;
  v43 = a7;
  v41 = a5;
  v39 = a4;
  v8 = a3;
  v11 = ModelMgr::smpModelMgr;
  v12 = *(a3 + 12);
  v13 = a2 >= v12;
  v14 = a2 - v12;
  if (v14 != 0 && v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v14, 0);
    *(v8 + 8) = a2;
LABEL_5:
    v15 = 0;
    v16 = a2;
    v17 = "%s";
    v40 = v8;
    while (1)
    {
      v18 = a1[1];
      if (v18 > -3)
      {
        break;
      }

      if (v18 == -4)
      {
        if ((v42 & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 552, "sdapi/apist", 31, v17, a7, a8, &errStr_sdapi_apist_E_BAD_COLLAPSED);
        }

        v34 = *a1;
        if (HIDWORD(*a1))
        {
          v35 = 0;
        }

        else
        {
          v35 = (*a1 & 0xFFFF0000) == 0;
          *a1;
        }

        if (!v35)
        {
          v38 = *a1;
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", a7, a8, "SDhVoc");
        }

        if (v34 - 1 >= 0x7B)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", a7, a8, "SDhVoc");
        }

        ModelMgr::getVocOrThrow(v11, v34, a3, a4, a5, a6, a7, a8);
        v19 = ((v34 << 25) | 0xFFFFF4) + 7;
        goto LABEL_47;
      }

      if (v18 != -3)
      {
        goto LABEL_20;
      }

      if ((v41 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 568, "sdapi/apist", 29, v17, a7, a8, &errStr_sdapi_apist_E_BAD_ENDCONTEXT);
      }

      v19 = -50331651;
      if (*a1 != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 570, "sdapi/apist", 30, v17, a7, a8, &errStr_sdapi_apist_E_BAD_OOVVOC);
      }

LABEL_47:
      *(*v8 + 4 * v15++) = v19;
      a1 += 2;
      if (v16 == v15)
      {
        return;
      }
    }

    if (v18 == -2)
    {
      if (v15 || (v39 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 560, "sdapi/apist", 28, v17, a7, a8, &errStr_sdapi_apist_E_BAD_STARTCONTEXT);
      }

      v19 = -50331650;
      if (*a1 != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 562, "sdapi/apist", 30, v17, a7, a8, &errStr_sdapi_apist_E_BAD_OOVVOC);
      }

      goto LABEL_47;
    }

    if (v18 == -1)
    {
      if ((v43 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 544, "sdapi/apist", 36, v17, a7, a8, &errStr_sdapi_apist_E_BAD_UNKNOWNWORD);
      }

      if (*a1 != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 546, "sdapi/apist", 30, v17, a7, a8, &errStr_sdapi_apist_E_BAD_OOVVOC);
      }

      v19 = -83886081;
      goto LABEL_47;
    }

LABEL_20:
    v20 = v16;
    v21 = v17;
    v22 = *a1;
    if (HIDWORD(*a1))
    {
      v23 = 0;
    }

    else
    {
      v23 = (*a1 & 0xFFFF0000) == 0;
      *a1;
    }

    if (!v23)
    {
      v36 = *a1;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", a7, a8, "SDhVoc");
    }

    v24 = v11;
    if (v22 - 1 >= 0x7B)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", a7, a8, "SDhVoc");
    }

    v25 = a1[1];
    v26 = v25 - 1;
    if ((v25 - 1) >> 32)
    {
      v37 = a1[1];
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", a7, a8, "SDhWord");
    }

    if (v26 >= 0xFFFFF4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 461, "sdapi/apist", 13, "%.500s 0x%016llx", a7, a8, "SDhWord");
    }

    v11 = v24;
    VocOrThrow = ModelMgr::getVocOrThrow(v24, v22, a3, a4, a5, a6, a7, a8);
    WordList::verifyVisible(*(VocOrThrow + 48), v26, v28, v29, v30, v31, v32, v33);
    v19 = v26 & 0xFFFFFF | (v22 << 25);
    v17 = v21;
    v16 = v20;
    v8 = v40;
    goto LABEL_47;
  }

  *(a3 + 8) = a2;
  if (a2)
  {
    goto LABEL_5;
  }
}

void DisplaySdapiObjectSizes(void)
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 863, &v14);
  if (v15)
  {
    v4 = v14;
  }

  else
  {
    v4 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v0, v1, v2, v3, 0, &unk_26288848C, 0, &unk_26288848C, v4);
  DgnString::~DgnString(&v14);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v5, v6, v7, v8, 0, &unk_26288848C);
  ApiState::printSize(ApiState::smpApiState, 0xFFFFFFFFLL, 1, &v18, &v17, &v16);
  MrecInitModule_sdpres_sdapi();
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 869, &v14);
  if (v15)
  {
    v13 = v14;
  }

  else
  {
    v13 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v9, v10, v11, v12, 0, &unk_26288848C, 35, 35, v13, v18, v17, v16);
  DgnString::~DgnString(&v14);
}

void ApiState::printSize(ApiState *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1126, &v187);
  if (v188)
  {
    v16 = v187;
  }

  else
  {
    v16 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288848C, a3, &unk_26288848C, v16);
  DgnString::~DgnString(&v187);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288848C);
  MrecPrintSize(0xFFFFFFFF, a3, a4, a5, a6);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1129, &v187);
  if (v188)
  {
    v27 = v187;
  }

  else
  {
    v27 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1131, &v187);
  if (v188)
  {
    v32 = v187;
  }

  else
  {
    v32 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v32, 1, 1, 0);
  DgnString::~DgnString(&v187);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1133, &v187);
  if (v188)
  {
    v37 = v187;
  }

  else
  {
    v37 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v37, 1, 1, 0);
  DgnString::~DgnString(&v187);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1135, &v187);
  if (v188)
  {
    v42 = v187;
  }

  else
  {
    v42 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v42, 1, 1, 0);
  DgnString::~DgnString(&v187);
  ++*a4;
  ++*a5;
  v43 = SnapTime::sizeObject(this + 8, 0);
  v44 = SnapTime::sizeObject(this + 8, 1);
  v186 = this;
  v45 = SnapTime::sizeObject(this + 8, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1137, &v187);
  if (v188)
  {
    v50 = v187;
  }

  else
  {
    v50 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v50, v43, v44, v45);
  DgnString::~DgnString(&v187);
  *a4 += v43;
  *a5 += v44;
  *a6 += v45;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1139, &v187);
  if (v188)
  {
    v55 = v187;
  }

  else
  {
    v55 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v52, v53, v54, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v55, 8, 8, 0);
  DgnString::~DgnString(&v187);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1141, &v187);
  if (v188)
  {
    v60 = v187;
  }

  else
  {
    v60 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v57, v58, v59, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v60, 8, 8, 0);
  DgnString::~DgnString(&v187);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1143, &v187);
  if (v188)
  {
    v65 = v187;
  }

  else
  {
    v65 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v65, 8, 8, 0);
  DgnString::~DgnString(&v187);
  *a4 += 8;
  *a5 += 8;
  v66 = sizeObject(v186 + 64);
  v67 = sizeObject(v186 + 64);
  v68 = sizeObject(v186 + 64);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1145, &v187);
  if (v188)
  {
    v73 = v187;
  }

  else
  {
    v73 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v73, v66, v67, v68);
  DgnString::~DgnString(&v187);
  *a4 += v66;
  *a5 += v67;
  v185 = a6;
  *a6 += v68;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1147, &v187);
  if (v188)
  {
    v78 = v187;
  }

  else
  {
    v78 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v78, 1, 1, 0);
  DgnString::~DgnString(&v187);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v79 = 4;
  }

  else
  {
    v79 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1148, &v187);
  if (v188)
  {
    v84 = v187;
  }

  else
  {
    v84 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v84, v79, v79, 0);
  DgnString::~DgnString(&v187);
  *a4 += v79;
  *a5 += v79;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1153, &v187);
    if (v188)
    {
      v89 = v187;
    }

    else
    {
      v89 = &unk_26288848C;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, (a3 + 1), &unk_26288848C, (34 - a3), (34 - a3), v89, 64, 64, 0);
    DgnString::~DgnString(&v187);
    *a4 += 64;
    *a5 += 64;
  }

  v184 = a3;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = v186 + 160;
  v94 = 20;
  do
  {
    v90 += sizeObject(v93, 0);
    v91 += sizeObject(v93, 1);
    v92 += sizeObject(v93, 3);
    v93 += 80;
    --v94;
  }

  while (v94);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1161, &v187);
  if (v188)
  {
    v99 = v187;
  }

  else
  {
    v99 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v21, &unk_26288848C, v22, v22, v99, v90, v91, v92);
  DgnString::~DgnString(&v187);
  *a4 += v90;
  *a5 += v91;
  *v185 += v92;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v100 = 4;
  }

  else
  {
    v100 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1164, &v187);
  if (v188)
  {
    v105 = v187;
  }

  else
  {
    v105 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v21, &unk_26288848C, v22, v22, v105, v100, v100, 0);
  DgnString::~DgnString(&v187);
  *a4 += v100;
  *a5 += v100;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1166, &v187);
  if (v188)
  {
    v110 = v187;
  }

  else
  {
    v110 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v21, &unk_26288848C, v22, v22, v110, 8, 8, 0);
  DgnString::~DgnString(&v187);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1168, &v187);
  if (v188)
  {
    v115 = v187;
  }

  else
  {
    v115 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v112, v113, v114, v21, &unk_26288848C, v22, v22, v115, 4, 4, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1170, &v187);
  if (v188)
  {
    v120 = v187;
  }

  else
  {
    v120 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v117, v118, v119, v21, &unk_26288848C, v22, v22, v120, 4, 4, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v121 = 4;
  }

  else
  {
    v121 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1172, &v187);
  if (v188)
  {
    v126 = v187;
  }

  else
  {
    v126 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, v21, &unk_26288848C, v22, v22, v126, v121, v121, 0);
  DgnString::~DgnString(&v187);
  *a4 += v121;
  *a5 += v121;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1174, &v187);
  if (v188)
  {
    v131 = v187;
  }

  else
  {
    v131 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, v21, &unk_26288848C, v22, v22, v131, 8, 8, 0);
  DgnString::~DgnString(&v187);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1176, &v187);
  if (v188)
  {
    v136 = v187;
  }

  else
  {
    v136 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, v21, &unk_26288848C, v22, v22, v136, 4, 4, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1178, &v187);
  if (v188)
  {
    v141 = v187;
  }

  else
  {
    v141 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v21, &unk_26288848C, v22, v22, v141, 4, 4, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4;
  *a5 += 4;
  v142 = FileSpec::sizeObject(v186 + 1808);
  v143 = FileSpec::sizeObject(v186 + 1808);
  v144 = FileSpec::sizeObject(v186 + 1808);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1180, &v187);
  if (v188)
  {
    v149 = v187;
  }

  else
  {
    v149 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26288848C, v22, v22, v149, v142, v143, v144);
  DgnString::~DgnString(&v187);
  *a4 += v142;
  *a5 += v143;
  *v185 += v144;
  v150 = sizeObject(v186 + 1824, 0);
  v151 = sizeObject(v186 + 1824, 1);
  v152 = sizeObject(v186 + 1824, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1182, &v187);
  if (v188)
  {
    v157 = v187;
  }

  else
  {
    v157 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v154, v155, v156, v21, &unk_26288848C, v22, v22, v157, v150, v151, v152);
  DgnString::~DgnString(&v187);
  *a4 += v150;
  *a5 += v151;
  *v185 += v152;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1184, &v187);
  if (v188)
  {
    v162 = v187;
  }

  else
  {
    v162 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v159, v160, v161, v21, &unk_26288848C, v22, v22, v162, 4000, 4000, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4000;
  *a5 += 4000;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1186, &v187);
  if (v188)
  {
    v167 = v187;
  }

  else
  {
    v167 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v21, &unk_26288848C, v22, v22, v167, 4000, 4000, 0);
  DgnString::~DgnString(&v187);
  *a4 += 4000;
  *a5 += 4000;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1188, &v187);
  if (v188)
  {
    v172 = v187;
  }

  else
  {
    v172 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v168, v169, v170, v171, v21, &unk_26288848C, v22, v22, v172, 160, 160, 0);
  DgnString::~DgnString(&v187);
  *a4 += 160;
  *a5 += 160;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1190, &v187);
  if (v188)
  {
    v177 = v187;
  }

  else
  {
    v177 = &unk_26288848C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v174, v175, v176, v21, &unk_26288848C, v22, v22, v177, 160, 160, 0);
  DgnString::~DgnString(&v187);
  *a4 += 160;
  *a5 += 160;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1191, &v187);
  if (v188)
  {
    v182 = v187;
  }

  else
  {
    v182 = &unk_26288848C;
  }

  v183 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v179, v180, v181, v184, &unk_26288848C, (35 - v184), (35 - v184), v182, *a4, *a5, *v185);
  DgnString::~DgnString(&v187);
}

void sub_2626AD768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ApiState::ApiState(ApiState *this)
{
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  DgnString::DgnString((this + 64));
  v2 = 0;
  *(this + 80) = 0;
  *(this + 11) = 0;
  do
  {
    v3 = this + v2;
    recursive_mutex_init((this + v2 + 160));
    *(v3 + 56) = 0;
    *(v3 + 29) = 0;
    v2 += 80;
  }

  while (v2 != 1600);
  *(this + 110) = 0u;
  *(this + 444) = 1;
  *(this + 449) = 0;
  *(this + 1780) = 0u;
  *(this + 225) = 1;
  FileSpec::FileSpec((this + 1808));
  DgnReadWriteLock::DgnReadWriteLock((this + 1824));
  recursive_mutex_init((this + 96));
  ApiState::resetCallHistogram(this);
}

void sub_2626AD8B8(_Unwind_Exception *a1)
{
  FileSpec::~FileSpec((v1 + 1808));
  v3 = (v1 + 1680);
  v4 = -1600;
  do
  {
    DgnLock::~DgnLock(v3);
    v3 = (v5 - 80);
    v4 += 80;
  }

  while (v4);
  DgnString::~DgnString((v1 + 64));
  _Unwind_Resume(a1);
}

void ApiState::resetCallHistogram(ApiState *this)
{
  v2 = this + 160;
  pthread_mutex_lock((this + 160));
  ++*(this + 56);
  *(this + 29) = pthread_self();
  *(this + 1269) = 0;
  *(this + 1289) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 240;
  pthread_mutex_lock((this + 240));
  ++*(this + 76);
  *(this + 39) = pthread_self();
  *(this + 1270) = 0;
  *(this + 1290) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 320;
  pthread_mutex_lock(this + 5);
  ++*(this + 96);
  *(this + 49) = pthread_self();
  *(this + 1271) = 0;
  *(this + 1291) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 400;
  pthread_mutex_lock((this + 400));
  ++*(this + 116);
  *(this + 59) = pthread_self();
  *(this + 1272) = 0;
  *(this + 1292) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 480;
  pthread_mutex_lock((this + 480));
  ++*(this + 136);
  *(this + 69) = pthread_self();
  *(this + 1273) = 0;
  *(this + 1293) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 560;
  pthread_mutex_lock((this + 560));
  ++*(this + 156);
  *(this + 79) = pthread_self();
  *(this + 1274) = 0;
  *(this + 1294) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 640;
  pthread_mutex_lock(this + 10);
  ++*(this + 176);
  *(this + 89) = pthread_self();
  *(this + 1275) = 0;
  *(this + 1295) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 720;
  pthread_mutex_lock((this + 720));
  ++*(this + 196);
  *(this + 99) = pthread_self();
  *(this + 1276) = 0;
  *(this + 1296) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  v2 = this + 800;
  pthread_mutex_lock((this + 800));
  ++*(this + 216);
  *(this + 109) = pthread_self();
  *(this + 1277) = 0;
  *(this + 1297) = 0;
  Latch<DgnLock,LatchAdapter>::~Latch(&v2);
  bzero(this + 2152, 0x1F40uLL);
}

void *ApiState::startupHandlers(void *this, void (*a2)(const char *, unint64_t), void *a3, void (*a4)(const char *, unint64_t), void *a5, void (*a6)(const char *, unint64_t))
{
  ApiState::smMemoryErrorHandler = this;
  ApiState::smMemoryErrorUserData = a2;
  ApiState::smErrorHandler = a3;
  ApiState::smErrorUserData = a4;
  ApiState::smLogHandler = a5;
  ApiState::smLogUserData = a6;
  return this;
}

uint64_t ApiState::startupApiState(ApiState *this, const char *a2)
{
  v3 = MemChunkAlloc(0x28E8uLL, 0);
  ApiState::ApiState(v3);
  result = ApiState::init(v4, this);
  ApiState::smpApiState = v3;
  return result;
}

uint64_t ApiState::init(ApiState *this, DgnSharedMemMgr *a2)
{
  v11 = 0;
  v12 = 0;
  v10 = &unk_2875265F0;
  v13 = 1;
  SnapTime::recordTime((this + 8), 1, 1, 1, 1);
  logMaybeSetTimeStampingBase(*(this + 2));
  MemChunkRegion::getRegionStats(0, v7);
  v4 = v9;
  *(this + 6) = v8;
  *(this + 7) = v4;
  StartupMrec(a2, v5);
  MrecInitLibrarySet_throughSdapi();
  MrecInitModule_sdpres_sdapi();
  GlobalParamMgr::resetAll(GlobalParamMgr::smpGlobalParamMgr);
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  return setDllTerminatedSuccessfullyOrNotInUse(0);
}

void FpuUseMrecDefaults::~FpuUseMrecDefaults(FpuUseMrecDefaults *this)
{
  *this = &unk_287528188;
}

{
  *this = &unk_287528188;
  JUMPOUT(0x26672B1B0);
}

void ApiState::staticSendMemoryError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v10 = v9;
  v22 = *MEMORY[0x277D85DE8];
  v11 = ApiState::smpApiState;
  if (ApiState::smpApiState)
  {
    v12 = *MEMORY[0x277D85DE8];

    ApiState::sendMemoryError(v11, v5, v6, v7, v8, v9);
  }

  else
  {
    DgnString::DgnString(&v20);
    v17[0] = 0;
    v18 = 0x2000;
    v19 = 0;
    appended = MessageFormatPrefix(v17, 0, 1, -1);
    if (v10)
    {
      DgnBuffer::appendString(v17, ": ");
      appended = DgnBuffer::appendString(v17, v10);
    }

    if (gShadowSdapiCrashOnSendError == 1)
    {
      appended = crashIntoDebugger();
    }

    if (ApiState::smErrorHandler)
    {
      if (v21)
      {
        v14 = v20;
      }

      else
      {
        v14 = &unk_26288848C;
      }

      if (v19)
      {
        v15 = v14;
      }

      else
      {
        v15 = v17;
      }

      appended = ApiState::smMemoryErrorHandler(v15, ApiState::smMemoryErrorUserData);
    }

    DgnThreadMgr::broadcastError(appended);
    DgnString::~DgnString(&v20);
    v16 = *MEMORY[0x277D85DE8];
  }
}

uint64_t *ApiState::sendMemoryError(ApiState *this, const char *a2, uint64_t a3, const char *a4, uint64_t a5, const char *a6)
{
  v6 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v8 = v7;
  v9 = v6;
  v23 = *MEMORY[0x277D85DE8];
  v17 = v6 + 560;
  pthread_mutex_lock((v6 + 560));
  ++*(v9 + 624);
  *(v9 + 632) = pthread_self();
  v10 = &unk_26288848C;
  if (*(v9 + 80) == 1)
  {
    v10 = *(v9 + 88);
  }

  DgnString::DgnString(&v21);
  v18[0] = 0;
  v19 = 0x2000;
  v20 = 0;
  MessageFormatPrefix(v18, 0, 1, -1);
  appended = DgnBuffer::appendString(v18, v10);
  if (v8)
  {
    DgnBuffer::appendString(v18, ": ");
    appended = DgnBuffer::appendString(v18, v8);
  }

  if (gShadowSdapiCrashOnSendError == 1)
  {
    appended = crashIntoDebugger();
  }

  if (ApiState::smErrorHandler)
  {
    *(v9 + 2) = 1;
    CallbackInsurance::CallbackInsurance(v16, 5, 0, 1);
    if (v22)
    {
      v12 = v21;
    }

    else
    {
      v12 = &unk_26288848C;
    }

    if (v20)
    {
      v13 = v12;
    }

    else
    {
      v13 = v18;
    }

    ApiState::smMemoryErrorHandler(v13, ApiState::smMemoryErrorUserData);
    CallbackInsurance::~CallbackInsurance(v16);
  }

  DgnThreadMgr::broadcastError(appended);
  *(v9 + 2) = 0;
  DgnString::~DgnString(&v21);
  result = Latch<DgnLock,LatchAdapter>::~Latch(&v17);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2626AE054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  CallbackInsurance::~CallbackInsurance(va);
  DgnString::~DgnString((v2 + 8200));
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  _Unwind_Resume(a1);
}

void ApiState::staticSendError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v16 = v10;
  v17 = v9;
  v29 = *MEMORY[0x277D85DE8];
  if (ApiState::smpApiState)
  {
    LODWORD(v23) = v15;
    ApiState::sendError(ApiState::smpApiState, v9, v10, v11, v12, v12, v13, v14, v23, a9);
  }

  else
  {
    DgnString::DgnString(&v27);
    v24[0] = 0;
    v25 = 0x2000;
    v26 = 0;
    MessageFormatPrefix(v24, 0, 1, v16);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_26288848C;
    }

    DgnBuffer::appendString(v24, v18);
    if (a9)
    {
      DgnBuffer::appendString(v24, ": ");
      DgnBuffer::appendString(v24, a9);
    }

    appended = DgnBuffer::appendString(v24, " (See mrec/doc/client.txt for general documentation on errors.)");
    if (gShadowSdapiCrashOnSendError == 1)
    {
      appended = crashIntoDebugger();
    }

    if (ApiState::smErrorHandler)
    {
      if (v28)
      {
        v20 = v27;
      }

      else
      {
        v20 = &unk_26288848C;
      }

      if (v26)
      {
        v21 = v20;
      }

      else
      {
        v21 = v24;
      }

      appended = ApiState::smErrorHandler(v21, ApiState::smErrorUserData);
    }

    DgnThreadMgr::broadcastError(appended);
    DgnString::~DgnString(&v27);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t *ApiState::sendError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10)
{
  v10 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  v34 = *MEMORY[0x277D85DE8];
  v28 = v10 + 560;
  pthread_mutex_lock((v10 + 560));
  ++*(v17 + 624);
  *(v17 + 632) = pthread_self();
  if (!v16)
  {
    if (*(v17 + 80) == 1)
    {
      v16 = *(v17 + 88);
    }

    else
    {
      v16 = &unk_26288848C;
    }
  }

  DgnString::DgnString(&v32);
  v29[0] = 0;
  v30 = 0x2000;
  v31 = 0;
  MessageFormatPrefix(v29, 0, 1, v14);
  DgnBuffer::appendString(v29, v16);
  if (a10)
  {
    DgnBuffer::appendString(v29, ": ");
    DgnBuffer::appendString(v29, a10);
  }

  appended = DgnBuffer::appendString(v29, " (See mrec/doc/client.txt for general documentation on errors.)");
  if (gShadowSdapiCrashOnSendError == 1)
  {
    appended = crashIntoDebugger();
  }

  v19 = ApiState::smErrorHandler;
  if (!ApiState::smErrorHandler)
  {
    goto LABEL_26;
  }

  if (!v12)
  {
    *(v17 + 2) = 1;
    CallbackInsurance::CallbackInsurance(v27, 5, 0, 1);
    if (v33)
    {
      v23 = v32;
    }

    else
    {
      v23 = &unk_26288848C;
    }

    if (v31)
    {
      v24 = v23;
    }

    else
    {
      v24 = v29;
    }

    ApiState::smErrorHandler(v24, ApiState::smErrorUserData);
    CallbackInsurance::~CallbackInsurance(v27);
    goto LABEL_26;
  }

  if ((*(v17 + 2) & 1) == 0)
  {
    v20 = v31;
    *(v17 + 2) = 1;
    if (v33)
    {
      v21 = v32;
    }

    else
    {
      v21 = &unk_26288848C;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v29;
    }

    appended = v19(v22, ApiState::smErrorUserData);
LABEL_26:
    DgnThreadMgr::broadcastError(appended);
    *(v17 + 2) = 0;
  }

  DgnString::~DgnString(&v32);
  result = Latch<DgnLock,LatchAdapter>::~Latch(&v28);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2626AE4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  CallbackInsurance::~CallbackInsurance(va);
  DgnString::~DgnString((v3 + v2));
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  _Unwind_Resume(a1);
}

void ApiState::staticSendLog(ApiState *this, const char *a2)
{
  if (ApiState::smpApiState)
  {
    ApiState::sendLog(this, this);
  }

  else if (ApiState::smLogHandler)
  {
    ApiState::smLogHandler(this, ApiState::smLogUserData);
  }
}

void ApiState::sendLog(ApiState *this, const char *a2)
{
  if (ApiState::smLogHandler)
  {
    if (ApiState::smpApiState && (*(ApiState::smpApiState + 1) & 1) == 0)
    {
      v3 = *(ApiState::smpApiState + 80);
    }

    else
    {
      v3 = 0;
    }

    CallbackInsurance::CallbackInsurance(v11, 6, 0, 0);
    ApiState::smLogHandler(a2, ApiState::smLogUserData);
    if (v3)
    {
      throwIfErroredDuringCallback("SDLogHandler", v4, v5, v6, v7, v8, v9, v10);
    }

    CallbackInsurance::~CallbackInsurance(v11);
  }
}

void sub_2626AE5C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CallbackInsurance::~CallbackInsurance(va);
  _Unwind_Resume(a1);
}

void ApiState::progressCallbackWrapper(ApiState *this, uint64_t a2, void *a3)
{
  if (*a3)
  {
    if (ApiState::smpApiState && (*(ApiState::smpApiState + 1) & 1) == 0)
    {
      v5 = *(ApiState::smpApiState + 80);
    }

    else
    {
      v5 = 0;
    }

    CallbackInsurance::CallbackInsurance(v13, 2, 0, 1);
    (*a3)(a2, a3[1]);
    if (v5)
    {
      throwIfErroredDuringCallback("SDProgressCallback", v6, v7, v8, v9, v10, v11, v12);
    }

    CallbackInsurance::~CallbackInsurance(v13);
  }
}

void sub_2626AE66C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CallbackInsurance::~CallbackInsurance(va);
  _Unwind_Resume(a1);
}

void ApiState::callReallocateArrayCallback(ApiState *this, void (*a2)(unint64_t, unsigned int, unsigned int, void *, unsigned int, void **, unsigned int *), unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void **a8, unsigned int *a9)
{
  if (ApiState::smpApiState && (*(ApiState::smpApiState + 1) & 1) == 0)
  {
    v17 = *(ApiState::smpApiState + 80);
  }

  else
  {
    v17 = 0;
  }

  CallbackInsurance::CallbackInsurance(v25, 3, 0, 1);
  a2(a3, a4, a5, a6, a7, a8, a9);
  if (v17)
  {
    throwIfErroredDuringCallback("SDReallocateArrayCallback", v18, v19, v20, v21, v22, v23, v24);
  }

  CallbackInsurance::~CallbackInsurance(v25);
  if (*a9 < a5)
  {
    ThrowExternalNewFailure(this, (a5 * a4));
  }
}

void (***ApiState::cleanUpAfterSaveException(ApiState *this, DgnFileIOException *a2, DgnString *a3, uint64_t a4, uint64_t a5))(void)
{
  if (*(this + 10))
  {
    v6 = *(this + 4);
  }

  else
  {
    v6 = &unk_26288848C;
  }

  if (*(this + 16))
  {
    v7 = *(this + 7);
  }

  else
  {
    v7 = &unk_26288848C;
  }

  DgnString::stringPrintf(a2, "%s %d %s", a3, a4, a5, v6, *(this + 12), v7);

  return DgnDelete<DgnFileIOException>(this);
}

void (***DgnDelete<DgnFileIOException>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t *ApiState::errorReexited(ApiState *this)
{
  pthread_mutex_lock((this + 96));
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v4) = 3;
  return ApiState::sendError(this, 0, 0xFFFFFFFFLL, 0, v2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1746, "sdapi/apist", v4, &errStr_sdapi_apist_E_REEXIT);
}

uint64_t *ApiState::errorReentry(ApiState *this, const char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x100uLL, "Illegal SDAPI re-entry into %s while already in %s", a2, *(this + 11));
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v7) = 6;
  result = ApiState::sendError(this, a2, 0xFFFFFFFFLL, 1, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1767, "sdapi/apist", v7, __str);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *ApiState::errorCallDuringRecog(ApiState *this, const char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  strcpy(v8, "Called function is illegal when there is an active SDhRecognizer");
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v7) = 7;
  result = ApiState::sendError(this, a2, 0xFFFFFFFFLL, 0, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1787, "sdapi/apist", v7, v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *ApiState::errorRDApiNotInit(ApiState *this, const char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  strcpy(v8, "Called function is illegal when the RDApi is not enabled.");
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v7) = 38;
  result = ApiState::sendError(this, a2, 0xFFFFFFFFLL, 0, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1807, "sdapi/apist", v7, v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *ApiState::errorBadHeapOnEntry(ApiState *this, const char *a2)
{
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v6) = 8;
  return ApiState::sendError(this, a2, 0xFFFFFFFFLL, 0, v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1821, "sdapi/apist", v6, &errStr_sdapi_apist_E_BAD_HEAP_ON_ENTRY);
}

uint64_t *ApiState::errorBadHeapOnExit(ApiState *this)
{
  pthread_mutex_lock((this + 96));
  *(this + 1) = 1;
  pthread_mutex_unlock((this + 96));
  LODWORD(v4) = 9;
  return ApiState::sendError(this, 0, 0xFFFFFFFFLL, 0, v2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1835, "sdapi/apist", v4, &errStr_sdapi_apist_E_BAD_HEAP_ON_EXIT);
}

void ApiState::handleDgnMemoryException(uint64_t a1)
{
  if (ApiState::smpApiState)
  {
    pthread_mutex_lock((ApiState::smpApiState + 96));
    v1 = ApiState::smpApiState;
    *(ApiState::smpApiState + 1) = 1;
    a1 = pthread_mutex_unlock((v1 + 96));
  }

  ApiState::staticSendMemoryError(a1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/apist.cpp", 1853, "sdapi/apist", 1);
}

void ApiState::handleDgnException(ApiState *this, DgnException *a2)
{
  if (ApiState::smpApiState)
  {
    pthread_mutex_lock((ApiState::smpApiState + 96));
    v3 = ApiState::smpApiState;
    *(ApiState::smpApiState + 1) = 1;
    pthread_mutex_unlock((v3 + 96));
  }

  if (*(this + 4))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = &unk_26288848C;
  }

  if (*(this + 10))
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = &unk_26288848C;
  }

  if (*(this + 16))
  {
    v6 = *(this + 7);
  }

  else
  {
    v6 = &unk_26288848C;
  }

  ApiState::staticSendError(0, *(this + 18), 0, 0, v4, *(this + 6), v5, *(this + 12), v6);
}

uint64_t SdapiInsurance::SdapiInsurance(uint64_t a1, const char *a2, int a3, int a4, int a5)
{
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 104) = &unk_2875265F0;
  *(a1 + 120) = 1;
  *(a1 + 128) = a5;
  if (ApiState::smpApiState)
  {
    ApiState::enterApi(ApiState::smpApiState, a1, a2, a3, a4);
    if (*(DgnThreadMgr::smpThreadMgr + 76) == 1 && (*(DgnThreadMgr::smpThreadMgr + 77) & 1) == 0)
    {
      DgnThreadTrace::add(DgnThreadMgr::smpThreadMgr + 80, -1, 6);
    }

    *(a1 + 136) = mach_absolute_time();
  }

  return a1;
}

uint64_t *ApiState::enterApi(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5)
{
  pthread_mutex_lock((a1 + 96));
  if (*(a1 + 80) == 1)
  {
    result = ApiState::errorReentry(a1, a3);
LABEL_15:
    *(a2 + 97) = 0;
    return result;
  }

  if (a5 != 1 && *(RecogCtlMgr::smpRecogCtlMgr + 272))
  {
    result = ApiState::errorCallDuringRecog(a1, a3);
    goto LABEL_15;
  }

  if (a4 == 3 && (*(a1 + 3) & 1) == 0)
  {
    result = ApiState::errorRDApiNotInit(a1, a3);
    goto LABEL_15;
  }

  if (gShadowSdapiDiagnosticCheckHeapEveryCall == 1 && (mrecHeapValid() & 1) == 0)
  {
    result = ApiState::errorBadHeapOnEntry(a1, a3);
    goto LABEL_15;
  }

  *(a1 + 80) = 1;
  *(a1 + 88) = a3;
  if (gbShowCallMemDeltas == 1)
  {
    MemChunkRegion::getRegionStats(0, v14);
    v11 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v11;
    v12 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v12;
    v13 = v14[5];
    *(a2 + 64) = v14[4];
    *(a2 + 80) = v13;
    *(a2 + 96) = 1;
  }

  *(a2 + 97) = 1;
  return pthread_mutex_unlock((a1 + 96));
}

void SdapiInsurance::~SdapiInsurance(SdapiInsurance *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 97) == 1)
  {
    if (*(DgnThreadMgr::smpThreadMgr + 76) == 1 && (*(DgnThreadMgr::smpThreadMgr + 77) & 1) == 0)
    {
      DgnThreadTrace::add(DgnThreadMgr::smpThreadMgr + 80, -1, 10);
    }

    if (*(this + 96) == 1 && gbShowCallMemDeltas == 1)
    {
      ShowDeltaMemSummary(0, *(ApiState::smpApiState + 88), this, a4, a5);
    }

    v6 = mach_absolute_time() - *(this + 17);
    v7 = ApiState::smpApiState;
    v8 = ApiState::smpApiState + 8 * *(this + 32);
    ++*(v8 + 2152);
    *(v8 + 6152) += v6;
    *(v7 + 5) += v6;
    ApiState::exitApi(v7, v9, v10, v11, v12);
  }

  *(this + 13) = &unk_287528188;
}

uint64_t *ApiState::exitApi(ApiState *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 80))
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Exiting sdapi call %s\n", a2, a3, a4, a5, *(this + 11));
    }

    if (gShadowSdapiDiagnosticCheckHeapEveryCall == 1 && (mrecHeapValid() & 1) == 0)
    {
      ApiState::errorBadHeapOnExit(this);
    }

    pthread_mutex_lock((this + 96));
    *(this + 80) = 0;

    return pthread_mutex_unlock((this + 96));
  }

  else
  {

    return ApiState::errorReexited(this);
  }
}

uint64_t CallbackInsurance::CallbackInsurance(uint64_t a1, int a2, int a3, char a4)
{
  *a1 = a2;
  v7 = (ApiState::smpApiState + 1824);
  *(a1 + 16) = ApiState::smpApiState + 1824;
  *(a1 + 24) = a3 == 0;
  if (a3)
  {
    DgnReadWriteLock::acquireRead(v7);
  }

  else
  {
    DgnReadWriteLock::acquireWrite(v7);
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 32) = &unk_2875265F0;
  *(a1 + 48) = a4;
  DgnThreadMgr::startClientCallbackEvent((a2 == 6));
  *(a1 + 8) = mach_absolute_time();
  return a1;
}

void sub_2626AF1D8(_Unwind_Exception *a1)
{
  *v2 = &unk_287528188;
  Latch<DgnReadWriteLock,ReadWriteLatchAdapter>::~Latch(v1);
  _Unwind_Resume(a1);
}

void CallbackInsurance::~CallbackInsurance(CallbackInsurance *this)
{
  v2 = ApiState::smpApiState + 80 * *this + 160;
  v6 = v2;
  pthread_mutex_lock(v2);
  ++*(v2 + 64);
  *(v2 + 72) = pthread_self();
  v3 = mach_absolute_time();
  v4 = v3 - *(this + 1);
  v5 = ApiState::smpApiState + 8 * *this;
  ++*(v5 + 10152);
  *(v5 + 10312) += v4;
  DgnThreadMgr::endClientCallbackEvent(v3);
  Latch<DgnLock,LatchAdapter>::~Latch(&v6);
  *(this + 4) = &unk_287528188;
  Latch<DgnReadWriteLock,ReadWriteLatchAdapter>::~Latch(this + 2);
}

void IntGlobalParam::~IntGlobalParam(IntGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void FpuSaveRestore::~FpuSaveRestore(FpuSaveRestore *this)
{
  *this = &unk_287528188;
}

{
  *this = &unk_287528188;
  JUMPOUT(0x26672B1B0);
}

pthread_rwlock_t **Latch<DgnReadWriteLock,ReadWriteLatchAdapter>::~Latch(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    DgnReadWriteLock::releaseRead(v2);
    *a1 = 0;
  }

  return a1;
}

void CPUID::initCPUID(CPUID *this)
{
  if ((*this & 1) == 0)
  {
    *this = 1;
    bzero(this + 4, 0x418uLL);
    *(this + 263) = 1;
    *&v3 = 0x100000001;
    *(this + 132) = 0x100000001;
    *(this + 532) = 0;
    *(this + 267) = 1;
    *(this + 134) = 0x100000001;
    *(this + 135) = -1;
    *(this + 136) = -1;
    *(&v3 + 1) = 0x100000001;
    *(this + 1096) = v3;
    *(this + 1112) = 0u;
    *(this + 1128) = 0u;
    *(this + 1144) = 0;
    *(this + 9337) = 0u;
    *(this + 9353) = 0u;
    *(this + 9369) = 0u;
    *(this + 9385) = 0u;
    *(this + 9401) = 0u;
    *(this + 9417) = 0u;
    v4 = *(this + 2359);
    if (v4 <= 0x3F)
    {
      v5 = this + v4 + 9369;
      v6 = v4 + 1;
      do
      {
        v7 = *v5++;
        if (v7 != 32)
        {
          break;
        }

        *(this + 2359) = v6++;
      }

      while (v6 != 65);
    }

    bzero(this + 1145, 0x2000uLL);
  }
}

uint64_t TVertex::getInEdge(TVertex *this)
{
  result = *this;
  if (result && *(result + 32) == 1)
  {
    do
    {
      result = *result;
    }

    while (result && (*(result + 32) & 1) != 0);
  }

  return result;
}

uint64_t TVertex::getOutEdge(TVertex *this)
{
  result = *(this + 1);
  if (result && *(result + 32) == 1)
  {
    do
    {
      result = *(result + 8);
    }

    while (result && (*(result + 32) & 1) != 0);
  }

  return result;
}

uint64_t TVertex::getOutEdgeCount(TVertex *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    do
    {
      v1 = *(v1 + 8);
      if (!v1)
      {
        return 0;
      }
    }

    while ((*(v1 + 32) & 1) != 0);
  }

  result = 0;
LABEL_6:
  ++result;
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      return result;
    }

    if ((*(v1 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }
  }
}

void TGraph::TGraph(TGraph *this, char *a2, TSegmenter *a3, char a4)
{
  *this = a3;
  *(this + 8) = a4;
  TAllocator::TAllocator((this + 16), 2048);
  *(this + 5) = 0u;
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = a2;
  *(this + 9) = 0;
  *(this + 8) = TGraph::addVertex(this, a2);
}

void sub_2626AF608(_Unwind_Exception *a1)
{
  v4 = *(v1 + 128);
  if (v4)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  TGraph::TGraph((v1 + 104), v2, v1);
  TAllocator::clear((v1 + 16));
  _Unwind_Resume(a1);
}

TVertex *TGraph::addVertex(TGraph *this, char *a2)
{
  if (!a2)
  {
    v12 = TAllocator::allocate((this + 16), 48);
    *(v12 + 40) = (*(this + 11) - *(this + 10)) >> 3;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    v16 = v12;
    std::vector<TItnRule *>::push_back[abi:ne200100](this + 80, &v16);
    return v16;
  }

  v4 = &a2[-*(this + 7)];
  v5 = *(this + 16);
  if (v4 < (*(this + 17) - v5) >> 3)
  {
    result = *(v5 + 8 * v4);
    if (result)
    {
      *(result + 32) = 0;
      return result;
    }
  }

  Segment = TSegmenter::getSegment(*this, a2);
  v8 = a2;
  if (Segment)
  {
    v9 = Segment;
    v8 = a2;
    if (!*(Segment + 24))
    {
      v8 = a2;
      while (1)
      {
        v13 = **v9;
        {
          operator new();
        }

        if (v13 <= 8202)
        {
          if (v13 != 32 && v13 != 160)
          {
            goto LABEL_24;
          }
        }

        else if (v13 != 8203 && v13 != 12288 && v13 != 65279)
        {
LABEL_24:
          if (*(this + 8))
          {
            break;
          }
        }

        v8 = *(v9 + 8);
        v15 = TSegmenter::getSegment(*this, v8);
        if (v15)
        {
          v9 = v15;
          if (!*(v15 + 24))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v10 = TAllocator::allocate((this + 16), 48);
  *(v10 + 40) = (*(this + 11) - *(this + 10)) >> 3;
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  v16 = v10;
  std::vector<TItnRule *>::push_back[abi:ne200100](this + 80, &v16);
  TGraph::setMap(this, v16);
  v11 = *(this + 9);
  if (!v11 || *(v11 + 24) < a2)
  {
    result = v16;
    *(this + 9) = v16;
    return result;
  }

  return v16;
}

void sub_2626AF854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x26672B1B0](a9, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TGraph::~TGraph(TGraph *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  TAllocator::clear((this + 16));
}

uint64_t TGraph::getVertex(TGraph *this, const char *a2)
{
  v2 = &a2[-*(this + 7)];
  v3 = *(this + 16);
  if (v2 >= (*(this + 17) - v3) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8 * v2);
  }
}

void TGraph::setMap(TGraph *this, TVertex *a2)
{
  v4 = (this + 128);
  v3 = *(this + 16);
  v5 = *(a2 + 3) - *(this + 7);
  if (v5 >= (*(this + 17) - v3) >> 3)
  {
    if (2 * v5 <= 0x100)
    {
      v6 = 256;
    }

    else
    {
      v6 = 2 * v5;
    }

    v7 = 0;
    std::vector<TFileObject *>::resize(this + 16, v6, &v7);
    v3 = *v4;
  }

  *(v3 + 8 * v5) = a2;
}

void TGraph::deleteVertex(TGraph *this, TVertex *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      while (1)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          break;
        }

        if ((*(v2 + 32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      *(v2 + 32) = 1;
      while (1)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          break;
        }

        if ((*(v2 + 32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 32) == 1)
    {
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      *(v3 + 32) = 1;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  *(a2 + 32) = 1;
}

uint64_t TGraph::getNextVertex(TGraph *this, unint64_t a2)
{
  v2 = *(this + 7);
  if (v2 > a2)
  {
    return *(this + 8);
  }

  v4 = *(*(this + 9) + 24);
  if (v4 < a2)
  {
    return 0;
  }

  for (i = (*(this + 16) - 8 * v2 + 8 * a2); ; ++i)
  {
    result = *i;
    if (*i)
    {
      break;
    }

    if (++a2 > v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TGraph::getPrevVertex(TGraph *this, unint64_t a2)
{
  v2 = *(this + 7);
  if (v2 > a2)
  {
    return 0;
  }

  result = *(this + 9);
  if (*(result + 24) >= a2)
  {
    for (i = (*(this + 16) - 8 * v2 + 8 * a2); ; --i)
    {
      result = *i;
      if (*i)
      {
        break;
      }

      if (--a2 < v2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TGraph::addEdge(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = (a2 + 8);
  v8 = *(a2 + 8);
  if (v8 && *(v8 + 32) == 1)
  {
    do
    {
      v8 = *(v8 + 8);
    }

    while (v8 && (*(v8 + 32) & 1) != 0);
  }

  if (*a4 != 5)
  {
    v10 = 0;
    if (!v8 || *a4 == 2)
    {
      goto LABEL_23;
    }

    v10 = 0;
    v11 = *(a4 + 8);
    v12 = *(a4 + 24);
LABEL_10:
    v13 = v8;
    v14 = *(v8 + 48);
    if (v14 != 2 && v14 != 5)
    {
      v16 = wcscmp(*v11, **(v13 + 56));
      if (v16 < 0)
      {
        goto LABEL_23;
      }

      if (!v16 && *(v13 + 24) == a3 && v12 == *(v13 + 72))
      {
        return v13;
      }
    }

    v8 = v13;
    while (1)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        break;
      }

      if ((*(v8 + 32) & 1) == 0)
      {
        v10 = v13;
        goto LABEL_10;
      }
    }

    v10 = v13;
    goto LABEL_23;
  }

  v10 = 0;
LABEL_23:
  v13 = TAllocator::allocate((a1 + 2), 80);
  v17 = a1 + 13;
  v18 = (a1[14] - a1[13]) >> 3;
  *(v13 + 48) = 3;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 40) = v18;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = 0;
  *v13 = 0;
  *(v13 + 8) = 0;
  v19 = *(a4 + 16);
  *(v13 + 48) = *a4;
  *(v13 + 64) = v19;
  v21 = a1[14];
  v20 = a1[15];
  if (v21 >= v20)
  {
    v23 = (v21 - *v17) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v24 = v20 - *v17;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(v17, v26);
    }

    *(8 * v23) = v13;
    v22 = 8 * v23 + 8;
    v27 = a1[13];
    v28 = a1[14] - v27;
    v29 = (8 * v23 - v28);
    memcpy(v29, v27, v28);
    v30 = a1[13];
    a1[13] = v29;
    a1[14] = v22;
    a1[15] = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = v13;
    v22 = (v21 + 1);
  }

  a1[14] = v22;
  v31 = (v10 + 8);
  if (!v10)
  {
    v31 = v9;
  }

  *(v13 + 8) = *v31;
  *v31 = v13;
  *v13 = *a3;
  *a3 = v13;
  return v13;
}

void TGraph::topologicalSort(void *a1, void *a2, uint64_t a3)
{
  std::vector<unsigned long>::vector[abi:ne200100](__p, (a1[11] - a1[10]) >> 3);
  v6 = a1[10];
  v7 = a1[11];
  v8 = 0;
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = v9 >> 3;
    v12 = __p[0];
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *(v6 + 8 * v10);
      if ((v13[4] & 1) == 0)
      {
        break;
      }

LABEL_16:
      if (++v10 == v11)
      {
        goto LABEL_17;
      }
    }

    v14 = *v13;
    if (v14)
    {
      if (*(v14 + 32) != 1)
      {
LABEL_9:
        v15 = 0;
LABEL_10:
        ++v15;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_15;
          }

          if ((v14[4] & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if ((v14[4] & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = 0;
LABEL_15:
    ++v8;
    v12[v10] = v15;
    goto LABEL_16;
  }

LABEL_17:
  a2[1] = *a2;
  std::vector<TState const*>::reserve(a2, v8);
  v17 = a2[1];
  v16 = a2[2];
  if (v17 >= v16)
  {
    v19 = (v17 - *a2) >> 3;
    if ((v19 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v20 = v16 - *a2;
    v21 = v20 >> 2;
    if (v20 >> 2 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a2, v22);
    }

    *(8 * v19) = a1[8];
    v18 = 8 * v19 + 8;
    v23 = a2[1] - *a2;
    v24 = (8 * v19 - v23);
    memcpy(v24, *a2, v23);
    v25 = *a2;
    *a2 = v24;
    a2[1] = v18;
    a2[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v17 = a1[8];
    v18 = (v17 + 1);
  }

  a2[1] = v18;
  v26 = *a2;
  if (v18 != *a2)
  {
    v27 = 0;
    do
    {
      v28 = *(v26 + 8 * v27);
      if (a3)
      {
        (*(*a3 + 24))(a3, v28, a1);
      }

      v29 = *(v28 + 8);
      if (v29)
      {
        if (*(v29 + 32) == 1)
        {
          while (1)
          {
            v29 = *(v29 + 8);
            if (!v29)
            {
              break;
            }

            if ((*(v29 + 32) & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
LABEL_37:
          if (a3)
          {
            (*(*a3 + 16))(a3, v29, a1);
          }

          v30 = *(v29 + 24);
          v31 = __p[0];
          --*(__p[0] + *(v30 + 40));
          if (!v31[*(v30 + 40)])
          {
            v32 = v30;
            std::vector<TWord const*>::push_back[abi:ne200100](a2, &v32);
          }

          while (1)
          {
            v29 = *(v29 + 8);
            if (!v29)
            {
              break;
            }

            if ((*(v29 + 32) & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }
      }

      ++v27;
      v26 = *a2;
    }

    while (v27 < (a2[1] - *a2) >> 3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2626AFF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGraph::minimize(TGraph *this)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  TGraph::topologicalSort(this, &v20, 0);
  v2 = v20;
  v3 = v21;
  if (v21 != v20)
  {
    v4 = 0;
    do
    {
      v5 = v2[v4];
      if ((*(v5 + 32) & 1) == 0)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*(v6 + 32) == 1)
          {
            while (1)
            {
              v6 = *(v6 + 8);
              if (!v6)
              {
                break;
              }

              if ((*(v6 + 32) & 1) == 0)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
LABEL_8:
            v7 = *(v6 + 48);
            if (v7 != 2 && v7 != 5)
            {
              v9 = v6;
              do
              {
                v9 = *(v9 + 8);
                if (!v9)
                {
                  goto LABEL_13;
                }
              }

              while ((*(v9 + 32) & 1) != 0);
              while (1)
              {
                v10 = *(v9 + 48);
                if (v10 != 2 && v10 != 5)
                {
                  v12 = wcscmp(**(v6 + 56), **(v9 + 56));
                  if (!v12)
                  {
                    v13 = *(v6 + 24);
                    v14 = *(v9 + 24);
                    if (v13 == v14)
                    {
                      *(v9 + 32) = 1;
                    }

                    else if (*(v13 + 2) == *(v14 + 2))
                    {
                      v15 = *v13;
                      if (v15)
                      {
                        if (*(v15 + 32) == 1)
                        {
                          while (1)
                          {
                            v15 = *v15;
                            if (!v15)
                            {
                              break;
                            }

                            if ((v15[4] & 1) == 0)
                            {
                              goto LABEL_32;
                            }
                          }
                        }

                        else
                        {
LABEL_32:
                          v16 = 0;
                          while (1)
                          {
                            v15 = *v15;
                            if (!v15)
                            {
                              break;
                            }

                            if ((v15[4] & 1) == 0)
                            {
                              ++v16;
                            }
                          }

                          if (!v16)
                          {
                            v17 = *v14;
                            if (*v14)
                            {
                              if (*(v17 + 32) == 1)
                              {
                                while (1)
                                {
                                  v17 = *v17;
                                  if (!v17)
                                  {
                                    break;
                                  }

                                  if ((v17[4] & 1) == 0)
                                  {
                                    goto LABEL_42;
                                  }
                                }
                              }

                              else
                              {
LABEL_42:
                                v18 = 0;
                                while (1)
                                {
                                  v17 = *v17;
                                  if (!v17)
                                  {
                                    break;
                                  }

                                  if ((v17[4] & 1) == 0)
                                  {
                                    ++v18;
                                  }
                                }

                                if (!v18)
                                {
                                  v19 = *(v14 + 1);
                                  if (v19)
                                  {
                                    if (*(v19 + 32) == 1)
                                    {
                                      while (1)
                                      {
                                        v19 = *(v19 + 8);
                                        if (!v19)
                                        {
                                          break;
                                        }

                                        if ((*(v19 + 32) & 1) == 0)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_51:
                                      v12 = TGraph::addEdge(this, *(v6 + 24), *(v19 + 24), v19 + 48);
                                      while (1)
                                      {
                                        v19 = *(v19 + 8);
                                        if (!v19)
                                        {
                                          break;
                                        }

                                        if ((*(v19 + 32) & 1) == 0)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }
                                  }

                                  TGraph::deleteVertex(v12, v14);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                do
                {
                  v9 = *(v9 + 8);
                  if (!v9)
                  {
                    goto LABEL_13;
                  }
                }

                while ((*(v9 + 32) & 1) != 0);
              }
            }

LABEL_13:
            while (1)
            {
              v6 = *(v6 + 8);
              if (!v6)
              {
                break;
              }

              if ((*(v6 + 32) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v2 = v20;
            v3 = v21;
          }
        }
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v2)
  {
    v21 = v2;
    operator delete(v2);
  }
}

void sub_2626B01F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *tknPrintString(const char *a1)
{
  v2 = strlen(s_pLogPartialLine);
  if (strlen(a1) + v2 + 101 > s_nPartialLineAllocSize)
  {
    s_pLogPartialLine = &s_pStaticLogPartialLine;
    s_nPartialLineAllocSize = 0x2000;
    operator new[]();
  }

  v3 = s_pLogPartialLine;
  v4 = &s_pLogPartialLine[strlen(s_pLogPartialLine)];
  v5 = *a1;
  if (*a1)
  {
    do
    {
      if ((s_bJustPrintedNewLine & 1) == 0)
      {
        v6 = strcpy(v4, gpLogLinePrefix);
        v4 += strlen(v6);
        s_bJustPrintedNewLine = 1;
        v5 = *a1;
      }

      *v4++ = v5;
      if (*a1 == 10)
      {
        *v4 = 0;
        tknLogString(s_pLogPartialLine);
        v4 = s_pLogPartialLine;
        s_bJustPrintedNewLine = 0;
        v3 = s_pLogPartialLine;
      }

      v7 = *++a1;
      v5 = v7;
    }

    while (v7);
  }

  *v4 = 0;
  v8 = s_pLogPartialLine;

  return memmove(v8, v3, v4 - v3 + 1);
}

void *tknPrintf(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v9 = *MEMORY[0x277D85DE8];
  __str[0] = 0;
  vsnprintf(__str, 0x1FFEuLL, v5, va);
  result = tknPrintString(__str);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t loggableUnicode@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  __s = v11;
  v10 = xmmword_26286B6F0;
  v12 = 1;
  {
    operator new();
  }

  TLocaleInfo::unicodeToMultiByte(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a1, &__s);
  if (*(&v10 + 1) >= v10)
  {
    if (v12)
    {
      v8 = 0;
      TBuffer<char>::insert(&__s, *(&v10 + 1), &v8, 1uLL);
      --*(&v10 + 1);
    }

    else if (v10)
    {
      __s[v10 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v10 + 1)] = 0;
  }

  v4 = __s;
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  if (v12 == 1)
  {
    result = __s;
    if (__s != v11)
    {
      if (__s)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2626B06C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MEMORY[0x26672B1B0](v45, 0x1070C40ADD13FEBLL);
  if (a45 == 1 && a10 != v46 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *operator<<(void *a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  __s = v10;
  v9 = xmmword_26286B6F0;
  v11 = 1;
  {
    operator new();
  }

  TLocaleInfo::unicodeToMultiByte(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &__s);
  if (*(&v9 + 1) >= v9)
  {
    if (v11)
    {
      v7 = 0;
      TBuffer<char>::insert(&__s, *(&v9 + 1), &v7, 1uLL);
      --*(&v9 + 1);
    }

    else if (v9)
    {
      __s[v9 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v9 + 1)] = 0;
  }

  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
  if (v11 == 1 && __s != v10 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2626B08C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MEMORY[0x26672B1B0](v45, 0x1070C40ADD13FEBLL);
  if (a45 == 1 && a10 != v46 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t StartupLatticeNBestParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "LatticeNBestListMaxLength", &byte_262899963, &byte_262899963, &sLatticeNBestListMaxLengthIntHistory);
  ParamSpecMgr::addParam(qword_281051F88, v0);
  v1 = qword_281051F88;

  return ParamSpecMgr::sortParams(v1);
}

uint64_t LatticeNBestParamSet::LatticeNBestParamSet(uint64_t a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a2);
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = 0;
  *a1 = &unk_287525BA0;
  *(a1 + 40) = ParamSpecMgr::ParamGetDefault_int(qword_281051F88, 1, 0, 0, v9, v10, v11, v12);
  return a1;
}

void sub_2626B0A54(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t LatticeNBestParamSet::LatticeNBestParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287525BA0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t LatticeNBestParamSet::setDefaults(LatticeNBestParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051F88, 1, 0, 0, a5, a6, a7, a8);
  *(this + 10) = result;
  return result;
}

uint64_t LatticeNBestParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject(a1 + 8);
  v4 = 4;
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  return v3 + 16 * (a2 != 3) + v4;
}

uint64_t LatticeNBestParamSet::getBoolParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
  }

  else
  {
    throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t LatticeNBestParamSet::getIntParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F88, 1, a3, a4, a5, a6, a7, a8);
        v14 = **ParamByParamId;
      }

      if (a3 == 3)
      {
        v11 = ParamSpecMgr::getParamByParamId(qword_281051F88, 1, a3, a4, a5, a6, a7, a8);
        v12 = **v11;
      }
    }

    else
    {
      if (!a3)
      {
        return *(a1 + 40);
      }

      if (a3 == 1)
      {
        v8 = ParamSpecMgr::getParamByParamId(qword_281051F88, 1, a3, a4, a5, a6, a7, a8);
        v9 = **v8;
      }
    }

    throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

double LatticeNBestParamSet::getDoubleParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "double", a4, a5, a6, a7, a8);
  }

  else
  {
    throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
  }

  return 0.0;
}

uint64_t LatticeNBestParamSet::getStringParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "string", a4, a5, a6, a7, a8);
  }

  else
  {
    throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t LatticeNBestParamSet::getEnumParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
  }

  else
  {
    throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

void LatticeNBestParamSet::setBoolParameter(LatticeNBestParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
  }

  throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
}

void LatticeNBestParamSet::setIntParameter(LatticeNBestParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    v8 = a3;
    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F88, 1, a3, a4, a5, a6, a7, a8);
    if (ParamByParamId)
    {
      v15 = **ParamByParamId;
    }

    IntParamSpec::validateValue(ParamByParamId, v8, 0, 0, v11, v12, v13, v14);
    if (*(this + 9))
    {

      throwParamSetSetFailed("LatticeNBestListMaxLength", "int", v16, v17, v18, v19, v20, v21);
    }

    else
    {
      *(this + 10) = v8;
    }
  }

  else
  {

    throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
  }
}

void LatticeNBestParamSet::setDoubleParameter(LatticeNBestParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "double", a5, a6, a7, a8, a9);
  }

  throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
}

void LatticeNBestParamSet::setStringParameter(LatticeNBestParamSet *this, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "string", a4, a5, a6, a7, a8);
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void LatticeNBestParamSet::setEnumParameter(LatticeNBestParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 == 1)
  {
    throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
  }

  throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
}

void LatticeNBestParamSet::~LatticeNBestParamSet(LatticeNBestParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

const char *conditionalAssert(const char *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (g_bCrashOnError == 1)
  {
    assertFailed(result, a2, a3, a4, a5);
  }

  return result;
}

void getFilePath(char *__s@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, __s);
  v3 = std::string::rfind(&v4, 47, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, ".");
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::resize(&v4, v3, 0);
    *a2 = v4;
  }
}

void sub_2626B1270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int wcsncasecmp(const __int32 *a1, const __int32 *a2, size_t n)
{
  if (!n)
  {
    return 0;
  }

  v3 = n;
  while (1)
  {
    v7 = *a1++;
    v6 = v7;
    v8 = *a2;
    if (!v7 || v8 == 0)
    {
      break;
    }

    v10 = __tolower(v6);
    v11 = __tolower(*a2);
    if (v10 < v11)
    {
      return -1;
    }

    if (v10 > v11)
    {
      return 1;
    }

    ++a2;
    if (!--v3)
    {
      return 0;
    }
  }

  if (v6 | v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

void MrecInitModule_searchlm_kernel(void)
{
  if (!gParDebugSearchLM)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugSearchLM", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugSearchLM = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugSearchLM);
  }
}

uint64_t SearchLMScorer::SearchLMScorer(uint64_t a1, unsigned int a2, char a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v11 = (a1 + 32);
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 50) = a2 < 4;
  *(a1 + 51) = a2 == 0;
  *(a1 + 52) = 0;
  *(a1 + 54) = a3;
  *(a1 + 55) = a6;
  *(a1 + 56) = a7;
  *(a1 + 64) = a8;
  *(a1 + 72) = a9;
  *(a1 + 80) = a10;
  *(a1 + 88) = a2;
  *(a1 + 92) = a4;
  *(a1 + 96) = a5;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 192) = 0;
  v12 = a1 + 192;
  *(a1 + 152) = 0;
  v13 = a1 + 152;
  *(a1 + 129) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xFFFF00000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  v14 = *(*VocMgr::smpVocMgr + 8);
  if (v14)
  {
    v27 = 0;
    v15 = realloc_array(0, &v27, v14, 0, 0, 1);
    v16 = v27;
    *(a1 + 16) = v27;
    *(a1 + 24) = v14;
    *(a1 + 28) = v15;
    bzero(v16, v14);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v17 = *(*VocMgr::smpVocMgr + 8);
  v18 = *(a1 + 44);
  if (v17 > v18)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v11, v17 - v18, 0);
  }

  v19 = *(a1 + 40);
  if (v19 <= v17)
  {
    if (v19 < v17)
    {
      do
      {
        (*v11)[v19++] = 0;
      }

      while (v17 != v19);
    }
  }

  else
  {
    DgnIOwnArray<LMContextData *>::destructAt(v11, v17, v19 - v17);
  }

  *(a1 + 40) = v17;
  if (v17 >= 1)
  {
    v20 = VocMgr::smpVocMgr;
    v21 = v17 - 1;
    do
    {
      v22 = *(**v20 + 8 * v21);
      if (v22)
      {
        (*v11)[v21] = (*(**(v22 + 72) + 464))(*(v22 + 72));
        v20 = VocMgr::smpVocMgr;
      }

      v23 = v21-- + 1;
    }

    while (v23 > 1);
  }

  v24 = *(a1 + 164);
  if (v24 <= 7)
  {
    DgnPrimArray<unsigned int>::reallocElts(v13, 8 - v24, 0);
  }

  v25 = *(a1 + 204);
  if (v25 <= 7)
  {
    DgnPrimArray<unsigned int>::reallocElts(v12, 8 - v25, 0);
  }

  return a1;
}

{
  return SearchLMScorer::SearchLMScorer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_2626B1618(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnIOwnArray<LMContextData *>::releaseAll(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void SearchLMScorer::~SearchLMScorer(SearchLMScorer *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    MemChunkFree(v2, 0);
  }

  *(this + 17) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnIOwnArray<LMContextData *>::releaseAll(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void SearchLMScorer::printSize(SearchLMScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 126, &v230);
  if (v231)
  {
    v15 = v230;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  v228 = a6;
  DgnString::~DgnString(&v230);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  v20 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 12;
  }

  v21 = *(this + 2);
  v22 = *(this + 3);
  v23 = v20 + 2 * (v21 - 1) + 2;
  if (v21 <= 0)
  {
    v23 = v20;
  }

  if (v22 >= v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v20;
  }

  if (v22 >= v21)
  {
    v25 = v23 + 2 * (v22 - v21);
  }

  else
  {
    v25 = v20;
  }

  if (v22 >= v21)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2 * v21;
  }

  v27 = (a3 + 1);
  v227 = a3;
  v28 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 128, &v230);
  if (v231)
  {
    v33 = v230;
  }

  else
  {
    v33 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, v27, &byte_262899963, v28, v28, v33, v25, v24, v26);
  DgnString::~DgnString(&v230);
  *a4 += v25;
  *a5 += v24;
  *v228 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 12;
  }

  else
  {
    v34 = 16;
  }

  v35 = *(this + 6);
  v36 = *(this + 7);
  v37 = v36 >= v35;
  v38 = v36 - v35;
  if (v37)
  {
    if (v35 > 0)
    {
      v39 = (v35 - 1) + v34 + 1;
    }

    else
    {
      v39 = v34;
    }

    v34 = v39 + v38;
    v35 = 0;
  }

  else
  {
    v39 = v34;
  }

  v40 = v35;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 130, &v230);
  if (v231)
  {
    v45 = v230;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v27, &byte_262899963, v28, v28, v45, v34, v39, v40);
  DgnString::~DgnString(&v230);
  *a4 += v34;
  *a5 += v39;
  *v228 += v40;
  v46 = sizeObject<LMContextData *>(this + 32, 0);
  v47 = sizeObject<LMContextData *>(this + 32, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 132, &v230);
  if (v231)
  {
    v52 = v230;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v27, &byte_262899963, v28, v28, v52, v46, v47, 0);
  DgnString::~DgnString(&v230);
  *a4 += v46;
  *a5 += v47;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 134, &v230);
  if (v231)
  {
    v57 = v230;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v27, &byte_262899963, v28, v28, v57, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 136, &v230);
  if (v231)
  {
    v62 = v230;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v27, &byte_262899963, v28, v28, v62, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 137, &v230);
  if (v231)
  {
    v67 = v230;
  }

  else
  {
    v67 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v27, &byte_262899963, v28, v28, v67, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 139, &v230);
  if (v231)
  {
    v72 = v230;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v27, &byte_262899963, v28, v28, v72, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 141, &v230);
  if (v231)
  {
    v77 = v230;
  }

  else
  {
    v77 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v74, v75, v76, v27, &byte_262899963, v28, v28, v77, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 143, &v230);
  if (v231)
  {
    v82 = v230;
  }

  else
  {
    v82 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v27, &byte_262899963, v28, v28, v82, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 4;
  }

  else
  {
    v83 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 145, &v230);
  if (v231)
  {
    v88 = v230;
  }

  else
  {
    v88 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, v27, &byte_262899963, v28, v28, v88, v83, v83, 0);
  DgnString::~DgnString(&v230);
  *a4 += v83;
  *a5 += v83;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v89 = 4;
  }

  else
  {
    v89 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 147, &v230);
  if (v231)
  {
    v94 = v230;
  }

  else
  {
    v94 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, v27, &byte_262899963, v28, v28, v94, v89, v89, 0);
  DgnString::~DgnString(&v230);
  *a4 += v89;
  *a5 += v89;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v95 = 4;
  }

  else
  {
    v95 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 149, &v230);
  if (v231)
  {
    v100 = v230;
  }

  else
  {
    v100 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v97, v98, v99, v27, &byte_262899963, v28, v28, v100, v95, v95, 0);
  DgnString::~DgnString(&v230);
  *a4 += v95;
  *a5 += v95;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v101 = 4;
  }

  else
  {
    v101 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 151, &v230);
  if (v231)
  {
    v106 = v230;
  }

  else
  {
    v106 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v27, &byte_262899963, v28, v28, v106, v101, v101, 0);
  DgnString::~DgnString(&v230);
  *a4 += v101;
  *a5 += v101;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 152, &v230);
  if (v231)
  {
    v111 = v230;
  }

  else
  {
    v111 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v27, &byte_262899963, v28, v28, v111, 4, 4, 0);
  DgnString::~DgnString(&v230);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 154, &v230);
  if (v231)
  {
    v116 = v230;
  }

  else
  {
    v116 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, v27, &byte_262899963, v28, v28, v116, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 156, &v230);
  if (v231)
  {
    v121 = v230;
  }

  else
  {
    v121 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v27, &byte_262899963, v28, v28, v121, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 158, &v230);
  if (v231)
  {
    v126 = v230;
  }

  else
  {
    v126 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, v27, &byte_262899963, v28, v28, v126, 4, 4, 0);
  DgnString::~DgnString(&v230);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 160, &v230);
  if (v231)
  {
    v131 = v230;
  }

  else
  {
    v131 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, v27, &byte_262899963, v28, v28, v131, 4, 4, 0);
  DgnString::~DgnString(&v230);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v132 = 12;
  }

  else
  {
    v132 = 16;
  }

  v133 = *(this + 28);
  v134 = *(this + 29);
  if (v134 >= v133)
  {
    v135 = 0;
    if (v133 > 0)
    {
      v132 += 4 * (v133 - 1) + 4;
    }

    v136 = v132 + 4 * (v134 - v133);
  }

  else
  {
    v135 = 4 * v133;
    v136 = v132;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 162, &v230);
  if (v231)
  {
    v141 = v230;
  }

  else
  {
    v141 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v27, &byte_262899963, v28, v28, v141, v136, v132, v135);
  DgnString::~DgnString(&v230);
  *a4 += v136;
  *a5 += v132;
  *v228 += v135;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v142 = 4;
  }

  else
  {
    v142 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 163, &v230);
  if (v231)
  {
    v147 = v230;
  }

  else
  {
    v147 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, v27, &byte_262899963, v28, v28, v147, v142, v142, 0);
  DgnString::~DgnString(&v230);
  *a4 += v142;
  *a5 += v142;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v148 = 4;
  }

  else
  {
    v148 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 164, &v230);
  if (v231)
  {
    v153 = v230;
  }

  else
  {
    v153 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v150, v151, v152, v27, &byte_262899963, v28, v28, v153, v148, v148, 0);
  DgnString::~DgnString(&v230);
  *a4 += v148;
  *a5 += v148;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v154 = 4;
  }

  else
  {
    v154 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 165, &v230);
  if (v231)
  {
    v159 = v230;
  }

  else
  {
    v159 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v156, v157, v158, v27, &byte_262899963, v28, v28, v159, v154, v154, 0);
  DgnString::~DgnString(&v230);
  *a4 += v154;
  *a5 += v154;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 166, &v230);
  if (v231)
  {
    v164 = v230;
  }

  else
  {
    v164 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v161, v162, v163, v27, &byte_262899963, v28, v28, v164, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v165 = 12;
  }

  else
  {
    v165 = 16;
  }

  v166 = *(this + 40);
  v167 = *(this + 41);
  if (v167 >= v166)
  {
    v168 = 0;
    if (v166 > 0)
    {
      v165 += 4 * (v166 - 1) + 4;
    }

    v169 = v165 + 4 * (v167 - v166);
  }

  else
  {
    v168 = 4 * v166;
    v169 = v165;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 168, &v230);
  if (v231)
  {
    v174 = v230;
  }

  else
  {
    v174 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v171, v172, v173, v27, &byte_262899963, v28, v28, v174, v169, v165, v168);
  DgnString::~DgnString(&v230);
  *a4 += v169;
  *a5 += v165;
  *v228 += v168;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 170, &v230);
  if (v231)
  {
    v179 = v230;
  }

  else
  {
    v179 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v175, v176, v177, v178, v27, &byte_262899963, v28, v28, v179, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 172, &v230);
  if (v231)
  {
    v184 = v230;
  }

  else
  {
    v184 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v180, v181, v182, v183, v27, &byte_262899963, v28, v28, v184, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 174, &v230);
  if (v231)
  {
    v189 = v230;
  }

  else
  {
    v189 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v185, v186, v187, v188, v27, &byte_262899963, v28, v28, v189, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 176, &v230);
  if (v231)
  {
    v194 = v230;
  }

  else
  {
    v194 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v190, v191, v192, v193, v27, &byte_262899963, v28, v28, v194, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 178, &v230);
  if (v231)
  {
    v199 = v230;
  }

  else
  {
    v199 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v195, v196, v197, v198, v27, &byte_262899963, v28, v28, v199, 4, 4, 0);
  DgnString::~DgnString(&v230);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v200 = 4;
  }

  else
  {
    v200 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 179, &v230);
  if (v231)
  {
    v205 = v230;
  }

  else
  {
    v205 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v202, v203, v204, v27, &byte_262899963, v28, v28, v205, v200, v200, 0);
  DgnString::~DgnString(&v230);
  *a4 += v200;
  *a5 += v200;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 181, &v230);
  if (v231)
  {
    v210 = v230;
  }

  else
  {
    v210 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v207, v208, v209, v27, &byte_262899963, v28, v28, v210, 1, 1, 0);
  DgnString::~DgnString(&v230);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v211 = 12;
  }

  else
  {
    v211 = 16;
  }

  v212 = *(this + 50);
  v213 = *(this + 51);
  if (v213 >= v212)
  {
    v214 = 0;
    if (v212 > 0)
    {
      v211 += 4 * (v212 - 1) + 4;
    }

    v215 = v211 + 4 * (v213 - v212);
  }

  else
  {
    v214 = 4 * v212;
    v215 = v211;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 183, &v230);
  if (v231)
  {
    v220 = v230;
  }

  else
  {
    v220 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v216, v217, v218, v219, v27, &byte_262899963, v28, v28, v220, v215, v211, v214);
  DgnString::~DgnString(&v230);
  *a4 += v215;
  *a5 += v211;
  *v228 += v214;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/searchlm.cpp", 184, &v230);
  if (v231)
  {
    v225 = v230;
  }

  else
  {
    v225 = &byte_262899963;
  }

  v226 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v221, v222, v223, v224, v227, &byte_262899963, (35 - v227), (35 - v227), v225, *a4, *a5, *v228);
  DgnString::~DgnString(&v230);
}

void sub_2626B2720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<LMContextData *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += (*(*v10 + 16))(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

void SearchLMScorer::endSearchLMScorerSyncRecog(SearchLMScorer *this)
{
  if (*(this + 22) != 6)
  {
    if (*(this + 2))
    {
      v2 = 0;
      v3 = VocMgr::smpVocMgr;
      do
      {
        v4 = *(*this + 2 * v2);
        v5 = *(*(**v3 + 8 * v4) + 72);
        (*(*v5 + 424))(v5, *(this + 48), *(*(this + 4) + 8 * v4));
        ++v2;
      }

      while (v2 < *(this + 2));
    }

    *(this + 2) = 0;
    v6 = *(this + 6);
    if (v6)
    {
      bzero(*(this + 2), v6);
    }

    *(this + 49) = 0;
  }
}

uint64_t SearchLMScorer::beginSearchLMScorerLMRescoring(uint64_t this, char a2)
{
  v3 = this;
  if (*(this + 8))
  {
    v4 = 0;
    v5 = VocMgr::smpVocMgr;
    do
    {
      v6 = *(*v3 + 2 * v4);
      v7 = *(*(**v5 + 8 * v6) + 72);
      this = (*(*v7 + 416))(v7, *(*(v3 + 32) + 8 * v6));
      ++v4;
    }

    while (v4 < *(v3 + 8));
  }

  *(v3 + 52) = a2;
  *(v3 + 53) = 1;
  return this;
}

unint64_t SearchLMScorer::setInitialContext(unint64_t result, uint64_t *a2)
{
  if (*(result + 88) != 6)
  {
    v3 = result;
    v4 = *(a2 + 2);
    if (v4 >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    v6 = *(result + 116);
    if (v5 > v6)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(result + 104, v5 - v6, 0);
    }

    *(v3 + 112) = v5;
    if (v4)
    {
      v7 = *a2;
      v8 = *(v3 + 104);
      v9 = -1;
      do
      {
        *v8++ = *(v7 + 4 * (v9 + *(a2 + 2)));
        --v9;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t SearchLMScorer::lmScoreFinalSilenceWithoutActualLM(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  SearchLMScorer::setContext(a1, a2, a3, 0, 0, 0, 0, 0, 0xFAFFFFFC, 0xFAFFFFFC);
  if (*(a1 + 88) == 6 || *(a1 + 160) && ((**(a1 + 152) >> 25) - 125) >= 2 && *(a1 + 168) != 1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96);
  }
}

void SearchLMScorer::setContext(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t *a4, int a5, uint64_t a6, LMStats *a7, char a8, unsigned int a9, unsigned int a10)
{
  v17 = *(a1 + 120);
  if (v17)
  {
    *(a1 + 128) = *(v17 + 2216);
  }

  if (*(a1 + 88) == 6)
  {
    goto LABEL_73;
  }

  *(a1 + 184) = a8;
  v18 = *(a1 + 128);
  v19 = *(v18 + 68);
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    isLMAllowedForState = 1;
  }

  else
  {
    isLMAllowedForState = Constraint::isLMAllowedForState(v18, a3);
    v18 = *(a1 + 128);
    v19 = *(v18 + 68);
  }

  *(a1 + 169) = isLMAllowedForState;
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    isLeftWBAllowedForState = 1;
  }

  else
  {
    isLeftWBAllowedForState = Constraint::isLeftWBAllowedForState(v18, a3);
    v18 = *(a1 + 128);
    v19 = *(v18 + 68);
  }

  *(a1 + 170) = isLeftWBAllowedForState;
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    isRightWBAllowedForState = 1;
  }

  else
  {
    isRightWBAllowedForState = Constraint::isRightWBAllowedForState(v18, a3);
    v18 = *(a1 + 128);
    v19 = *(v18 + 68);
  }

  *(a1 + 171) = isRightWBAllowedForState;
  if ((v19 & 0xFFFFFFFD) != 0)
  {
    WeightsForState = 0xFFFF;
  }

  else
  {
    WeightsForState = Constraint::getWeightsForState(v18, a3);
  }

  *(a1 + 172) = WeightsForState;
  v24 = *a3;
  *(a1 + 168) = v24 == -50331650;
  v25 = VocMgr::smpVocMgr;
  *(a1 + 160) = 0;
  if (*(a1 + 184) == 1)
  {
    Root = VocMgr::getRoot(v25, a9);
    v27 = *(a1 + 160);
    if (v27 == *(a1 + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 152, 1, 1);
      v27 = *(a1 + 160);
    }

    *(*(a1 + 152) + 4 * v27) = Root;
    v28 = *(a1 + 160) + 1;
    *(a1 + 160) = v28;
    if (*(a1 + 50) != 1)
    {
      goto LABEL_44;
    }

    v29 = VocMgr::getRoot(v25, v24);
    v30 = *(a1 + 160);
    if (v30 == *(a1 + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 152, 1, 1);
      v30 = *(a1 + 160);
    }

    *(*(a1 + 152) + 4 * v30) = v29;
    v28 = *(a1 + 160) + 1;
    *(a1 + 160) = v28;
    if (*(a1 + 52) != 1)
    {
      goto LABEL_44;
    }

    v31 = a3[5];
    if (v31 == -83886084)
    {
      v32 = a3[4];
    }

    else
    {
      v32 = v31;
    }
  }

  else
  {
    v33 = VocMgr::getRoot(v25, v24);
    v34 = *(a1 + 160);
    if (v34 == *(a1 + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 152, 1, 1);
      v34 = *(a1 + 160);
    }

    *(*(a1 + 152) + 4 * v34) = v33;
    v28 = *(a1 + 160) + 1;
    *(a1 + 160) = v28;
    if (*(a1 + 50) != 1)
    {
      goto LABEL_44;
    }

    v35 = a3[5];
    if (v35 == -83886084)
    {
      v36 = VocMgr::getRoot(v25, a3[4]);
      v37 = *(a1 + 160);
      if (v37 == *(a1 + 164))
      {
        DgnPrimArray<unsigned int>::reallocElts(a1 + 152, 1, 1);
        v37 = *(a1 + 160);
      }

      *(*(a1 + 152) + 4 * v37) = v36;
      v28 = *(a1 + 160) + 1;
      *(a1 + 160) = v28;
      if (*(a1 + 52) == 1)
      {
        if (a10 == -83886084)
        {
          v38 = a2;
        }

        else
        {
          v38 = a10;
        }

        v39 = VocMgr::getRoot(v25, v38);
        DgnPrimArray<unsigned int>::add(a1 + 152, v39);
        v28 = *(a1 + 160);
      }

      goto LABEL_44;
    }

    v40 = VocMgr::getRoot(v25, v35);
    v41 = *(a1 + 160);
    if (v41 == *(a1 + 164))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 152, 1, 1);
      v41 = *(a1 + 160);
    }

    *(*(a1 + 152) + 4 * v41) = v40;
    v28 = *(a1 + 160) + 1;
    *(a1 + 160) = v28;
    if (*(a1 + 52) != 1)
    {
      goto LABEL_44;
    }

    v32 = a3[4];
  }

  v42 = VocMgr::getRoot(v25, v32);
  v43 = *(a1 + 160);
  if (v43 == *(a1 + 164))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 152, 1, 1);
    v43 = *(a1 + 160);
  }

  *(*(a1 + 152) + 4 * v43) = v42;
  v28 = *(a1 + 160) + 1;
  *(a1 + 160) = v28;
LABEL_44:
  if (v28)
  {
    v44 = 0;
    v45 = *(a1 + 152);
    while (1)
    {
      v47 = *v45++;
      v46 = v47;
      if (v47 == -50331650)
      {
        break;
      }

      if (v46 == -83886084)
      {
        v28 = -v44;
        goto LABEL_59;
      }

      --v44;
      if (!(v28 + v44))
      {
        goto LABEL_59;
      }
    }

    *(a1 + 160) = -v44;
    v48 = *(a1 + 112);
    v49 = *(a1 + 164);
    if (v48 - v44 > v49)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 152, v48 - v49 - v44, 1);
      v48 = *(a1 + 112);
    }

    if (v48)
    {
      v50 = 0;
      v51 = *(a1 + 104);
      v52 = *(a1 + 152);
      do
      {
        *(v52 + 4 * (v50 + *(a1 + 160))) = *(v51 + 4 * v50);
        ++v50;
        v53 = *(a1 + 112);
      }

      while (v50 < v53);
    }

    else
    {
      LODWORD(v53) = 0;
    }

    v28 = *(a1 + 160) + v53;
  }

LABEL_59:
  if (*(a1 + 52) == 1)
  {
    if (v28 >= 3)
    {
      v28 = 3;
    }
  }

  else
  {
    v54 = v28 != 0;
    if (v28 >= 2)
    {
      v28 = 2;
    }

    if (*(a1 + 50) != 1)
    {
      v28 = v54;
    }
  }

  *(a1 + 160) = v28;
  if (a5)
  {
    *(a1 + 176) = a6;
    if (*(a1 + 8))
    {
      v55 = 0;
      do
      {
        SearchLMScorer::setContext(a1, *(*a1 + 2 * v55++), 0, a7);
      }

      while (v55 < *(a1 + 8));
    }
  }

  if (a4 && (*(a1 + 50) & 1) != 0)
  {
    SearchLMScorer::setLMStates(a1, a4);
  }

LABEL_73:
  if (a5)
  {
    *(a1 + 144) = 1;
  }
}

uint64_t SearchLMScorer::lmScoreFinalSilence(SearchLMScorer *this, LMStats *a2)
{
  if (*(this + 22) == 6)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (!*(this + 40))
  {
    return *(this + 24);
  }

  v6 = **(this + 19) >> 25;
  if ((v6 - 125) < 2 || *(this + 168) == 1)
  {
    return *(this + 24);
  }

  if (*(this + 169) != 1)
  {
    return 0;
  }

  if ((*(*(this + 2) + v6) & 1) == 0)
  {
    SearchLMScorer::activateVoc(this, **(this + 19) >> 25, 0, a2);
  }

  v8 = *(*(**VocMgr::smpVocMgr + 8 * v6) + 72);
  v10 = 0;
  if (*(this + 53))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(this + 54) ^ 1;
  }

  return (*(*v8 + 512))(v8, 16777213, *(this + 43), a2, *(*(this + 4) + 8 * v6), v9 & 1, &v10);
}

uint64_t SearchLMScorer::activateVoc(SearchLMScorer *this, unsigned int a2, unsigned int *a3, LMStats *a4)
{
  v8 = *(**VocMgr::smpVocMgr + 8 * a2);
  result = (*(**(v8 + 72) + 408))(*(v8 + 72), *(this + 48), *(*(this + 4) + 8 * a2));
  if (*(this + 144) == 1)
  {
    result = SearchLMScorer::setContext(this, a2, a3, a4);
  }

  v10 = *(this + 2);
  if (v10 == *(this + 3))
  {
    result = DgnPrimArray<short>::reallocElts(this, 1, 1);
    v10 = *(this + 2);
  }

  *(*this + 2 * v10) = a2;
  *(this + 2) = v10 + 1;
  *(*(this + 2) + a2) = 1;
  if ((*(this + 49) & 1) == 0)
  {
    result = (*(**(v8 + 72) + 696))(*(v8 + 72));
    *(this + 49) = result;
  }

  return result;
}

uint64_t SearchLMScorer::lmScoreNonAcousticWord(SearchLMScorer *this, unsigned int a2, uint64_t a3, LMStats *a4)
{
  if (*(this + 22) == 6)
  {
    return 0;
  }

  v16 = v4;
  v17 = v5;
  v11 = a2 >> 25;
  if ((*(*(this + 2) + v11) & 1) == 0)
  {
    SearchLMScorer::activateVoc(this, a2 >> 25, 0, a4);
  }

  v12 = *(**VocMgr::smpVocMgr + 8 * v11);
  v15 = 0;
  v13 = *(v12 + 72);
  if (*(this + 53))
  {
    v14 = 1;
  }

  else
  {
    v14 = *(this + 54) ^ 1;
  }

  return (*(*v13 + 512))(v13, a2 & 0xFFFFFF, a3, a4, *(*(this + 4) + 8 * v11), v14 & 1, &v15);
}

uint64_t SearchLMScorer::lmScoreNonSilCwidac(uint64_t a1, unsigned int *a2, LMStats *a3)
{
  if (*(a1 + 88) == 6)
  {
    return 0;
  }

  v37 = v3;
  v38 = v4;
  v9 = *a2;
  v36 = a2[2];
  if (*(a1 + 160))
  {
    v10 = **(a1 + 152);
    v11 = v10 >> 25;
    v12 = v10 & 0xFFFFFF;
  }

  else
  {
    v12 = 0xFFFFFF;
    v11 = 125;
  }

  v13 = *(a1 + 80);
  v14 = !v13 || v12 >= *(v13 + 8) || ((*(*v13 + 4 * (v12 >> 5)) >> v12) & 1) == 0;
  v15 = *(a1 + 72);
  if (v15 && *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v15, &v36))
  {
    v16 = *(a1 + 128);
    if ((*(v16 + 68) & 0xFFFFFFFD) == 0)
    {
      v14 &= Constraint::isLeftWBAllowedForState(v16, a2);
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v17, &v36))
    {
LABEL_17:
      LODWORD(v17) = 0;
      goto LABEL_18;
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v17, &v36))
      {
        goto LABEL_17;
      }

      v28 = *(a1 + 128);
      if ((*(v28 + 68) & 0xFFFFFFFD) != 0)
      {
        goto LABEL_19;
      }

      LODWORD(v17) = Constraint::isLeftWBAllowedForState(v28, a2);
    }
  }

LABEL_18:
  if (((v14 | v17) & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

LABEL_19:
  v18 = *(*(**VocMgr::smpVocMgr + 8 * v11) + 72);
  v35 = 0;
  if (*(a1 + 53))
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a1 + 54) ^ 1;
  }

  v20 = (*(*v18 + 512))(v18, 16777213, *(a1 + 172), a3, *(*(a1 + 32) + 8 * v11), v19 & 1, &v35);
LABEL_24:
  v21 = *(a1 + 128);
  if ((*(v21 + 68) & 0xFFFFFFFD) == 0 && !Constraint::isLMAllowedForState(v21, a2))
  {
    return (*(a1 + 92) + v20);
  }

  v22 = v9 >> 25;
  v23 = *(a1 + 56);
  if (*(*(a1 + 16) + (v9 >> 25)))
  {
    if (v23 && !*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v23, &v36))
    {
      v24 = *(*(**VocMgr::smpVocMgr + 8 * v22) + 72);
      (*(*v24 + 480))(v24, *(*(a1 + 32) + 8 * v22));
      SearchLMScorer::setContext(a1, v9 >> 25, &v36, a3);
    }
  }

  else
  {
    if (v23 && !*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v23, &v36))
    {
      v27 = &v36;
      v25 = a1;
      v26 = v9 >> 25;
    }

    else
    {
      v25 = a1;
      v26 = v9 >> 25;
      v27 = 0;
    }

    SearchLMScorer::activateVoc(v25, v26, v27, a3);
  }

  v29 = *(a1 + 128);
  if ((*(v29 + 68) & 0xFFFFFFFD) != 0)
  {
    WeightsForState = 0xFFFFLL;
  }

  else
  {
    WeightsForState = Constraint::getWeightsForState(v29, a2);
  }

  v31 = *(**VocMgr::smpVocMgr + 8 * v22);
  v34 = 0;
  v32 = *(v31 + 72);
  if (*(a1 + 53))
  {
    v33 = 1;
  }

  else
  {
    v33 = *(a1 + 54) ^ 1;
  }

  return v20 + (*(*v32 + 512))(v32, v9 & 0xFFFFFF, WeightsForState, a3, *(*(a1 + 32) + 8 * v22), v33 & 1, &v34);
}

uint64_t SearchLMScorer::setContext(SearchLMScorer *this, unsigned int a2, unsigned int *a3, LMStats *a4)
{
  SearchLMScorer::makeRestrictedContext(this, a2, a3);
  v6 = *(this + 22);
  if (v6 && *(v6 + 8))
  {
    v7 = *v6 + 16 * a2;
  }

  v8 = *(this + 17);
  v9 = *(*(this + 4) + 8 * a2);
  v10 = *(**(*(**VocMgr::smpVocMgr + 8 * a2) + 72) + 472);

  return v10();
}

void SearchLMScorer::makeRestrictedContext(SearchLMScorer *this, int a2, unsigned int *a3)
{
  v6 = *(this + 22);
  if ((v6 - 1) >= 3)
  {
    if (v6)
    {
      if (v6 != 4)
      {
        *(this + 50) = 0;
        return;
      }

      v7 = *(this + 40) != 0;
    }

    else
    {
      v7 = *(this + 40);
    }
  }

  else if (*(this + 40) >= 2u)
  {
    v7 = 2;
  }

  else
  {
    v7 = *(this + 40);
  }

  v8 = *(this + 51);
  if (v7 <= v8)
  {
    *(this + 50) = v7;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 192, v7 - v8, 0);
    *(this + 50) = v7;
  }

  if (a3 && *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(*(this + 8), a3))
  {
    **(this + 24) = 16777214;
    LODWORD(v9) = 1;
  }

  else if (*(this + 169) == 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(this + 19) + 4 * v9);
      if (a3)
      {
        Bucket = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(*(this + 7), a3);
        if (v9 == 1 && !*Bucket && *(this + 170) == 1)
        {
          break;
        }
      }

      if (v10 >> 25 != a2 && (v10 >> 25) - 127 < 0xFFFFFFFE)
      {
        goto LABEL_29;
      }

      *(*(this + 24) + 4 * v9++) = v10 & 0xFFFFFF;
      if (v7 == v9)
      {
        return;
      }
    }

    *(*(this + 24) + 4) = 16777214;
    LODWORD(v9) = 2;
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_29:
  if (v9 < v7)
  {
    v13 = (*(this + 24) + 4 * v9);

    memset_pattern16(v13, &unk_262882000, 4 * (v7 + ~v9) + 4);
  }
}

void SearchLMScorer::setLMStates(SearchLMScorer *this, uint64_t *a2)
{
  v2 = a2;
  if (!*(this + 40))
  {
    v23 = *(a2 + 2);
    if (v23 >= 1)
    {
      v24 = *a2;
      v25 = vdup_n_s32(0xFAFFFFFC);
      do
      {
        v26 = (v24 + 16 * (v23 - 1));
        v27 = *(v26 + 2);
        if (v27 >= 1)
        {
          v28 = *v26;
          v29 = v27 + 1;
          v30 = (v28 + 44 * v27 - 28);
          do
          {
            *v30 = v25;
            v30 = (v30 - 44);
            --v29;
          }

          while (v29 > 1);
        }

        v14 = v23-- < 2;
      }

      while (!v14);
    }

    return;
  }

  v4 = **(this + 19) >> 25;
  if (v4 == 125 || (*(this + 169) & 1) == 0)
  {
    v15 = *(v2 + 2);
    if (v15 >= 1)
    {
      v16 = *v2;
      v17 = vdup_n_s32(0xFAFFFFFC);
      do
      {
        v18 = (v16 + 16 * (v15 - 1));
        v19 = *(v18 + 2);
        if (v19 >= 1)
        {
          v20 = *v18;
          v21 = v19 + 1;
          v22 = (v20 + 44 * v19 - 28);
          do
          {
            *v22 = v17;
            v22 = (v22 - 44);
            --v21;
          }

          while (v21 > 1);
        }

        v14 = v15-- < 2;
      }

      while (!v14);
    }

    return;
  }

  SearchLMScorer::makeRestrictedContext(this, v4, 0);
  if (!*(this + 50) || (v5 = **(this + 24), v5 == 0xFFFFFF) || (v53 = VocMgr::smpVocMgr, v5 <= 0xFFFFF3) && (v31 = *(*(**VocMgr::smpVocMgr + ((**(this + 19) >> 22) & 0x3F8)) + 72), ((*(*v31 + 440))(v31) & 1) == 0) && (*(this + 55) & 1) == 0)
  {
    v6 = *(v2 + 2);
    if (v6 >= 1)
    {
      v7 = *v2;
      v8 = vdup_n_s32(0xFAFFFFFC);
      do
      {
        v9 = (v7 + 16 * (v6 - 1));
        v10 = *(v9 + 2);
        if (v10 >= 1)
        {
          v11 = *v9;
          v12 = v10 + 1;
          v13 = (v11 + 44 * v10 - 28);
          do
          {
            *v13 = v8;
            v13 = (v13 - 44);
            --v12;
          }

          while (v12 > 1);
        }

        v14 = v6-- < 2;
      }

      while (!v14);
    }

    return;
  }

  Root = -50331650;
  if (**(this + 24) != 16777214)
  {
    Root = VocMgr::getRoot(v53, **(this + 19));
  }

  v54 = -83886084;
  if (*(this + 184) == 1)
  {
    v54 = -50331650;
    if (*(*(this + 24) + 4) != 16777214)
    {
      v54 = VocMgr::getRoot(v53, *(*(this + 19) + 4));
    }
  }

  v33 = *(v2 + 2);
  if (!v33)
  {
    return;
  }

  v34 = 0;
  v35 = Root >> 25;
  v55 = 0;
  v36 = 127;
  v37 = vdup_n_s32(0xFAFFFFFC);
  v52 = v2;
  do
  {
    v38 = *v2 + 16 * v34;
    if (!*(v38 + 8))
    {
      goto LABEL_84;
    }

    v39 = 0;
    v40 = 0;
    v41 = *v38;
    do
    {
      v42 = *(v41 + v39);
      v43 = v42 >> 25;
      v44 = *(this + 16);
      v45 = *(v44 + 68) & 0xFFFFFFFD;
      if (*(this + 184))
      {
        if (!v45 && !Constraint::isLMAllowedForState(v44, (v41 + v39)) || v42 >> 27 == 31 || v43 != v35)
        {
          v41 = *v38;
          *(*v38 + v39 + 16) = v37;
          goto LABEL_73;
        }

        if (v35 == v54 >> 25)
        {
          goto LABEL_51;
        }

        if (*(*(this + 24) + 4) == 16777214)
        {
          if (v35 != v36)
          {
            v50 = *(*(**v53 + 8 * v35) + 72);
            if ((*(*v50 + 440))(v50, 16777214) & 1) != 0 || (*(this + 55))
            {
              v55 = 1;
              v46 = v54;
              goto LABEL_81;
            }

            v55 = 0;
LABEL_80:
            v46 = -83886084;
            goto LABEL_81;
          }

          if (v55)
          {
            v55 = 1;
LABEL_51:
            v46 = v54;
            v43 = v36;
LABEL_81:
            v41 = *v38;
            v51 = *v38 + v39;
            *(v51 + 16) = v46;
            *(v51 + 20) = Root;
            goto LABEL_72;
          }

          v55 = 0;
        }

        v43 = v36;
        goto LABEL_80;
      }

      if (!v45 && !Constraint::isLMAllowedForState(v44, (v41 + v39)) || v42 >> 27 == 31)
      {
        goto LABEL_69;
      }

      if (v43 != v35)
      {
        if (**(this + 24) != 16777214)
        {
          goto LABEL_69;
        }

        if (v43 != v36)
        {
          v48 = *(*(**v53 + 8 * v43) + 72);
          if ((*(*v48 + 440))(v48, 16777214) & 1) != 0 || (*(this + 55))
          {
            v55 = 1;
            v47 = Root;
            goto LABEL_71;
          }

          v55 = 0;
LABEL_70:
          v47 = -83886084;
          goto LABEL_71;
        }

        if ((v55 & 1) == 0)
        {
          v55 = 0;
LABEL_69:
          v43 = v36;
          goto LABEL_70;
        }

        v55 = 1;
      }

      v47 = Root;
      v43 = v36;
LABEL_71:
      v41 = *v38;
      v49 = *v38 + v39;
      *(v49 + 16) = v47;
      *(v49 + 20) = -83886084;
LABEL_72:
      v36 = v43;
LABEL_73:
      ++v40;
      v39 += 44;
    }

    while (v40 < *(v38 + 8));
    v2 = v52;
    v33 = *(v52 + 2);
LABEL_84:
    ++v34;
  }

  while (v34 < v33);
}

unint64_t DgnPrimArray<unsigned int>::add(unint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 == *(result + 12))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, 1, 1);
    v4 = *(v3 + 8);
  }

  *(*v3 + 4 * v4) = a2;
  ++*(v3 + 8);
  return result;
}

uint64_t SearchLMScorer::unsetContext(uint64_t this)
{
  v1 = this;
  if (*(this + 88) != 6 && *(this + 8))
  {
    v2 = 0;
    do
    {
      v3 = *(*v1 + 2 * v2);
      v4 = *(*(v1 + 32) + 8 * v3);
      this = (*(**(*(**VocMgr::smpVocMgr + 8 * v3) + 72) + 480))();
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 176) = 0;
  *(v1 + 144) = 0;
  return this;
}

void *DgnIOwnArray<LMContextData *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<LMContextData>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void (***DgnIOwnArray<LMContextData *>::destructAt(void (***result)(void), int a2, int a3))(void)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<LMContextData>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

void (***DgnDelete<LMContextData>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void BitArray::setSize(BitArray *this, unsigned int a2)
{
  v4 = *(this + 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    BitArray::reallocElts(this, v6, 0);
  }

  else
  {
    v7 = *(this + 2);
    if (v7 > a2)
    {
      BitArray::clearRange(this, a2, v7);
    }
  }

  *(this + 2) = a2;
}

void BitArray::BitArray(BitArray *this, unsigned int a2)
{
  *this = 0;
  *(this + 1) = 0;
  BitArray::setSize(this, a2);
}

int **BitArray::copy(int **result, int **a2, unsigned int a3)
{
  if (result != a2)
  {
    v3 = a3 & 0xFFFFFFE0;
    if (a3 >= 0x20)
    {
      v4 = a3 >> 5;
      v5 = *a2;
      v6 = *result;
      do
      {
        v7 = *v5++;
        *v6++ = v7;
        --v4;
      }

      while (v4);
    }

    if (v3 != a3)
    {
      v8 = *a2;
      do
      {
        v9 = v3 >> 5;
        v10 = 1 << v3;
        if ((v8[v3 >> 5] & (1 << v3)) != 0)
        {
          v11 = (*result)[v9] | v10;
        }

        else
        {
          v11 = (*result)[v9] & ~v10;
        }

        (*result)[v9] = v11;
        ++v3;
      }

      while (v3 < a3);
    }
  }

  return result;
}

void BitArray::BitArray(BitArray *this, const BitArray *a2)
{
  *this = 0;
  *(this + 1) = 0;
  BitArray::setSize(this, *(a2 + 2));
  BitArray::copy(this, a2, *(this + 2));
}

int **BitArray::operator=(int **this, uint64_t a2)
{
  if (this != a2)
  {
    v4 = this;
    if (*(this + 2) <= *(this + 3))
    {
      v5 = *this;
      if (*v4)
      {
        MemChunkFree(v5, 0);
      }
    }

    *v4 = 0;
    *(v4 + 1) = 0;
    BitArray::setSize(v4, *(a2 + 8));
    v6 = v4[2];

    return BitArray::copy(v4, a2, v6);
  }

  return this;
}

uint64_t BitArray::releaseAll(uint64_t this)
{
  v1 = this;
  if (*(this + 8) <= *(this + 12))
  {
    this = *this;
    if (*v1)
    {
      this = MemChunkFree(this, 0);
    }
  }

  *v1 = 0;
  v1[1] = 0;
  return this;
}

void BitArray::~BitArray(BitArray *this)
{
  if (*(this + 2) <= *(this + 3))
  {
    v2 = *this;
    if (*this)
    {
      MemChunkFree(v2, 0);
    }
  }

  *this = 0;
  *(this + 1) = 0;
}

void BitArray::reallocElts(BitArray *this, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(this + 3));
  }

  v5 = *(this + 3) + 31;
  v8 = 0;
  v6 = realloc_array(*this, &v8, ((v5 + v3) >> 3) & 0x1FFFFFFC, 4 * (v5 >> 5), 4 * (v5 >> 5), 1);
  *(this + 3) = (8 * v6) & 0xFFFFFFE0;
  v7 = v8;
  *this = v8;
  bzero(&v7[4 * (v5 >> 5)], 4 * (((v6 >> 2) & 0x7FFFFFF) - (v5 >> 5)));
}

void BitArray::compact(BitArray *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 != v2)
  {
    if (v1)
    {
      v4 = (v1 + 31) >> 5;
      v8 = 0;
      v5 = realloc_array(*this, &v8, 4 * v4, 4 * v4, ((v2 + 31) >> 3) & 0x1FFFFFFC, 0);
      *(this + 3) = (8 * v5) & 0xFFFFFFE0;
      v6 = v8;
      *this = v8;
      bzero(&v6[4 * v4], 4 * (((v5 >> 2) & 0x7FFFFFF) - v4));
    }

    else
    {
      v7 = *this;
      if (*this)
      {
        MemChunkFree(v7, 0);
      }

      *this = 0;
      *(this + 1) = 0;
    }
  }
}

void BitArray::clearRange(BitArray *this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    v5 = a2 + 31;
    v6 = a3 - 1;
    v7 = (a3 - 1) >> 5;
    if (v7 >= (a2 + 31) >> 5)
    {
      v9 = v5 >> 5;
      v10 = v5 & 0xFFFFFFE0;
      if (v10 > a2)
      {
        v11 = *this;
        do
        {
          *(v11 + 4 * (a2 >> 5)) &= ~(1 << a2);
          ++a2;
        }

        while (v10 != a2);
      }

      v12 = v7 >= v9;
      v13 = v7 - v9;
      if (v13 != 0 && v12)
      {
        bzero((*this + 4 * v9), 4 * v13);
      }

      if (a3)
      {
        v14 = v6 & 0xFFFFFFE0;
        v15 = *this;
        do
        {
          *(v15 + 4 * (v14 >> 5)) &= ~(1 << v14);
          ++v14;
        }

        while (v14 < a3);
      }
    }

    else if (a2 < a3)
    {
      v8 = *this;
      do
      {
        *(v8 + 4 * (a2 >> 5)) &= ~(1 << a2);
        ++a2;
      }

      while (a3 != a2);
    }
  }
}

void BitArray::setSizeNoGrow(BitArray *this, unsigned int a2)
{
  v4 = *(this + 2);
  if (v4 > a2)
  {
    BitArray::clearRange(this, a2, v4);
  }

  *(this + 2) = a2;
}

void BitArray::addSize(BitArray *this, int a2)
{
  v4 = *(this + 3);
  v5 = *(this + 2) + a2;
  if (v5 > v4)
  {
    BitArray::reallocElts(this, v5 - v4, 1);
    v5 = *(this + 2) + a2;
  }

  BitArray::setSize(this, v5);
}

void BitArray::preAllocate(BitArray *this, unsigned int a2)
{
  v2 = *(this + 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    BitArray::reallocElts(this, v4, 0);
  }
}

_DWORD **BitArray::inplaceOrSameSize(_DWORD **this, const BitArray *a2)
{
  v2 = *(a2 + 2) + 31;
  if (v2 >= 0x20)
  {
    v3 = v2 >> 5;
    v4 = *a2;
    v5 = *this;
    do
    {
      v6 = *v4++;
      *v5++ |= v6;
      --v3;
    }

    while (v3);
  }

  return this;
}

_DWORD **BitArray::inplaceAndSameSize(_DWORD **this, const BitArray *a2)
{
  v2 = *(a2 + 2) + 31;
  if (v2 >= 0x20)
  {
    v3 = v2 >> 5;
    v4 = *a2;
    v5 = *this;
    do
    {
      v6 = *v4++;
      *v5++ &= v6;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t *BitArray::setRange(uint64_t *this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    v4 = this;
    v5 = a2 + 31;
    v6 = a3 - 1;
    v7 = (a3 - 1) >> 5;
    if (v7 >= (a2 + 31) >> 5)
    {
      v9 = v5 >> 5;
      v10 = v5 & 0xFFFFFFE0;
      if (v10 > a2)
      {
        v11 = *this;
        do
        {
          *(v11 + 4 * (a2 >> 5)) &= ~(1 << a2);
          ++a2;
        }

        while (v10 != a2);
      }

      v12 = v7 >= v9;
      v13 = v7 - v9;
      if (v13 != 0 && v12)
      {
        this = memset((*this + 4 * v9), 255, 4 * v13);
      }

      if (a3)
      {
        v14 = v6 & 0xFFFFFFE0;
        v15 = *v4;
        do
        {
          *(v15 + 4 * (v14 >> 5)) |= 1 << v14;
          ++v14;
        }

        while (v14 < a3);
      }
    }

    else if (a2 < a3)
    {
      v8 = *this;
      do
      {
        *(v8 + 4 * (a2 >> 5)) |= 1 << a2;
        ++a2;
      }

      while (a3 != a2);
    }
  }

  return this;
}

void *BitArray::setBitsInRange(void *this, const BitArray *a2, unsigned int a3, int a4)
{
  if (a4 != a3)
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = 1 << a3;
      v7 = a3 >> 5;
      if ((*(v5 + 4 * (v4 >> 5)) >> v4))
      {
        v8 = *(*this + 4 * v7) | v6;
      }

      else
      {
        v8 = *(*this + 4 * v7) & ~v6;
      }

      *(*this + 4 * v7) = v8;
      ++v4;
      ++a3;
    }

    while (a4 != a3);
  }

  return this;
}

void BitArray::getBitsFromRange(BitArray *this, BitArray *a2, unsigned int a3, int a4)
{
  v8 = a4 - a3;
  v9 = *(a2 + 2);
  if (v9)
  {
    BitArray::clearRange(a2, 0, v9);
  }

  *(a2 + 2) = 0;
  BitArray::setSize(a2, v8);
  if (a4 != a3)
  {
    v10 = v8 >> 3;
    v11 = a3 >> 3;
    v12 = a3 & 7;
    if ((a3 & 7) != 0)
    {
      v13 = *this;
      v14 = 8 - v12;
      v15 = (*(*this + 4 * (a3 >> 5)) >> (a3 & 0x18)) >> v12;
      if (v8 >= 8)
      {
        v16 = 0;
        v17 = 0;
        v18 = v11 + 1;
        v19 = *a2;
        if (v10 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v8 >> 3;
        }

        v21 = 8 * v11 + 8;
        do
        {
          v22 = *(v13 + (v18 & 0xFFFFFFFC)) >> (v21 & 0x18);
          *(v19 + (v17++ & 0xFFFFFFFC)) |= ((v22 << v14) & 0xFE | v15) << (v16 & 0x18);
          v15 = v22 >> v12;
          v21 += 8;
          ++v18;
          v16 += 8;
          --v20;
        }

        while (v20);
      }

      if ((a4 & 7) != 0)
      {
        if ((v8 & 7) > v14)
        {
          v15 |= (*(v13 + ((v11 + v10 + 1) & 0x7FFFFFFC)) >> (8 * ((v11 + v10 + 1) & 3))) << v14;
        }

        v15 &= ~(-1 << (v8 & 7));
      }

      *(*a2 + 4 * (v8 >> 5)) |= v15 << (v8 & 0x18);
    }

    else
    {
      if (v8 >= 8)
      {
        v23 = 0;
        v24 = 0;
        v25 = *this;
        v26 = *a2;
        if (v10 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v8 >> 3;
        }

        v28 = 8 * v11;
        v29 = a3 >> 3;
        do
        {
          *(v26 + (v24++ & 0xFFFFFFFC)) |= (*(v25 + (v29 & 0xFFFFFFFC)) >> (v28 & 0x18)) << (v23 & 0x18);
          v28 += 8;
          ++v29;
          v23 += 8;
          --v27;
        }

        while (v27);
      }

      if ((a4 & 7) != 0)
      {
        *(*a2 + 4 * (v8 >> 5)) |= ((*(*this + ((v10 + v11) & 0x3FFFFFFC)) >> (8 * ((v10 + v11) & 3))) & ~(-1 << (a4 & 7))) << (v8 & 0x18);
      }
    }
  }
}

void *BitArray::getBitsFromRangeAsBytes(void *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a5 - a4;
  if (a5 != a4)
  {
    v6 = v5 >> 3;
    v7 = a4 >> 3;
    v8 = a4 & 7;
    if ((a4 & 7) != 0)
    {
      v9 = 8 - v8;
      v10 = (*(*this + 4 * (a4 >> 5)) >> (a4 & 0x18)) >> v8;
      if (v5 >= 8)
      {
        v11 = v7 + 1;
        if (v6 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v6;
        }

        v13 = 8 * v7 + 8;
        v14 = a2;
        do
        {
          v15 = *(*this + (v11 & 0xFFFFFFFC)) >> (v13 & 0x18);
          *v14++ = (v15 << v9) | v10;
          v10 = v15 >> v8;
          ++v11;
          v13 += 8;
          --v12;
        }

        while (v12);
      }

      if ((a5 & 7) != 0)
      {
        v16 = v5 & 7;
        if (v16 > v9)
        {
          v10 |= (*(*this + ((v7 + v6 + 1) & 0x7FFFFFFC)) >> (8 * ((v7 + v6 + 1) & 3))) << v9;
        }

        LOBYTE(v10) = v10 & ~(-1 << v16);
      }

      goto LABEL_21;
    }

    if (v5 >= 8)
    {
      if (v6 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v6;
      }

      v18 = 8 * v7;
      v19 = a2;
      v20 = a4 >> 3;
      do
      {
        *v19++ = *(*this + (v20++ & 0xFFFFFFFC)) >> (v18 & 0x18);
        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if ((a5 & 7) != 0)
    {
      v10 = (*(*this + ((v6 + v7) & 0x3FFFFFFC)) >> (8 * ((v6 + v7) & 3))) & ~(-1 << (a5 & 7));
LABEL_21:
      a2[v6] = v10;
    }
  }

  return this;
}

uint64_t BitArray::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v2 = *(a1 + 8);
    v3 = v2 > *(a1 + 12);
    v4 = ((v2 + 31) >> 3) & 0x1FFFFFFC;
    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = 16;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v6 = 12;
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = (v7 + 31) >> 5;
    v10 = v6 + 4 * v9;
    v11 = v10 + 4 * (((v8 + 31) >> 5) - v9);
    if (a2)
    {
      v11 = v10;
    }

    if (v7 > v8 || (a2 - 4) >= 0xFFFFFFFE)
    {
      return v6;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t SimpleFrameTransformer::SimpleFrameTransformer(uint64_t a1, uint64_t a2, NeuralNet *a3, uint64_t a4, uint64_t a5, const PelMgr *a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v10 = a8;
  v11 = a7;
  *a1 = &unk_287525468;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 56) = 4294967280;
  if (a3)
  {
    WindowSize = NeuralNet::getWindowSize(a3, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    WindowSize = 1;
  }

  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::MovingArrayWindow((a1 + 64), WindowSize);
  if (a5)
  {
    v20 = *(a5 + 8) | 1u;
  }

  else
  {
    v20 = 1;
  }

  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::MovingArrayWindow((a1 + 88), v20);
  if (a5)
  {
    v21 = *(a5 + 8) | 1u;
  }

  else
  {
    v21 = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 112, v21, 0);
  v61 = v10;
  v29 = *(a1 + 120);
  if (v29 <= v21)
  {
    if (v29 < v21)
    {
      v32 = v21 - v29;
      v33 = 16 * v29;
      do
      {
        v34 = (*(a1 + 112) + v33);
        *v34 = 0;
        v34[1] = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
    }
  }

  else if (v29 > v21)
  {
    v30 = v29;
    v31 = 16 * v29 - 16;
    do
    {
      --v30;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 112) + v31);
      v31 -= 16;
    }

    while (v30 > v21);
  }

  *(a1 + 136) = 0;
  *(a1 + 120) = v21;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  v35 = *(a1 + 16);
  if (v35)
  {
    OutputSize = NeuralNet::getOutputSize(v35, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    OutputSize = 0;
  }

  DgnPrimArray<unsigned char>::DgnPrimArray(a1 + 152, OutputSize);
  v44 = *(a1 + 16);
  if (v44)
  {
    v45 = NeuralNet::getOutputSize(v44, v37, v38, v39, v40, v41, v42, v43);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    if (v45)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 168, v45, 0);
    }
  }

  else
  {
    LODWORD(v45) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = v45;
  *(a1 + 192) = 0;
  if (a5)
  {
    v46 = *(*(a5 + 112) + 132);
  }

  else
  {
    v46 = 0;
  }

  DgnPrimArray<unsigned char>::DgnPrimArray(a1 + 200, v46);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v11;
  if (a2)
  {
    v47 = *(a2 + 8);
    if (!a4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v47 = 0;
    if (!a4)
    {
      goto LABEL_32;
    }
  }

  if (v47 <= *(a4 + 8))
  {
    v47 = *(a4 + 8);
  }

LABEL_32:
  v48 = v47 + 7;
  v49 = v48 & 0xFFFFFFF8;
  if ((v48 & 0xFFFFFFF8) != 0)
  {
    DgnPrimArray<short>::reallocElts(a1 + 216, v48 & 0xFFFFFFF8, 0);
  }

  *(a1 + 224) = v49;
  *(a1 + 48) = 0;
  if (a6)
  {
    v50 = MemChunkAlloc(0x298uLL, 0);
    OnDemandPelScorer::OnDemandPelScorer(v50, a6, 0, 0, 0, 0, 0, 0, a9, a10, v61);
    *(a1 + 48) = v51;
    v54 = *(a1 + 120);
    if (v54)
    {
      v55 = 0;
      v56 = 0;
      v57 = *(*(a5 + 112) + 132) * *(a5 + 12);
      do
      {
        v58 = *(a1 + 112) + v55;
        v59 = *(v58 + 12);
        if (v57 > v59)
        {
          DgnPrimArray<unsigned long long>::reallocElts(*(a1 + 112) + v55, v57 - v59, 0);
          v54 = *(a1 + 120);
        }

        *(v58 + 8) = v57;
        ++v56;
        v55 += 16;
      }

      while (v56 < v54);
      v51 = *(a1 + 48);
    }

    if (*(v51 + 144) == 0.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 119, "recogctl/frmtrans", 1, "%s", v52, v53, &unk_262888520);
    }
  }

  return a1;
}

void sub_2626B4FD4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  MovingArrayWindow<DgnPrimArray<double>,DgnArray<DgnPrimArray<double>>>::~MovingArrayWindow(v1 + 112);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(v1 + 88);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(v1 + 64);
  _Unwind_Resume(a1);
}

void *MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::MovingArrayWindow(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a2, 0);
    v4 = *(a1 + 2);
    if (v4 > v2)
    {
      if (v4 > v2)
      {
        v5 = v4;
        v6 = 16 * v4 - 16;
        do
        {
          --v5;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v6);
          v6 -= 16;
        }

        while (v5 > v2);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 < v2)
  {
    v7 = v2 - v4;
    v8 = 16 * v4;
    do
    {
      v9 = (*a1 + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  *(a1 + 2) = v2;
  a1[2] = 0;
  return a1;
}

void SimpleFrameTransformer::~SimpleFrameTransformer(SimpleFrameTransformer *this)
{
  *this = &unk_287525468;
  DgnDelete<PelScorer>(*(this + 6));
  *(this + 6) = 0;
  (*(*this + 24))(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  MovingArrayWindow<DgnPrimArray<double>,DgnArray<DgnPrimArray<double>>>::~MovingArrayWindow(this + 112);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(this + 88);
  MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(this + 64);
}

{
  SimpleFrameTransformer::~SimpleFrameTransformer(this);

  JUMPOUT(0x26672B1B0);
}

double SimpleFrameTransformer::reset(SimpleFrameTransformer *this)
{
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 16) = 0;
  *&result = 4294967280;
  *(this + 7) = 4294967280;
  return result;
}

void SimpleFrameTransformer::printSize(SimpleFrameTransformer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 147, &v167);
  if (v168)
  {
    v16 = v167;
  }

  else
  {
    v16 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262888520, a3, &unk_262888520, v16);
  DgnString::~DgnString(&v167);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262888520);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  v22 = (a3 + 1);
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 149, &v167);
  if (v168)
  {
    v28 = v167;
  }

  else
  {
    v28 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v167);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 150, &v167);
  if (v168)
  {
    v34 = v167;
  }

  else
  {
    v34 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v167);
  *a4 += v29;
  *a5 += v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 151, &v167);
  if (v168)
  {
    v40 = v167;
  }

  else
  {
    v40 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v40, v35, v35, 0);
  DgnString::~DgnString(&v167);
  *a4 += v35;
  *a5 += v35;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 152, &v167);
  if (v168)
  {
    v46 = v167;
  }

  else
  {
    v46 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v46, v41, v41, 0);
  DgnString::~DgnString(&v167);
  *a4 += v41;
  *a5 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 4;
  }

  else
  {
    v47 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 153, &v167);
  if (v168)
  {
    v52 = v167;
  }

  else
  {
    v52 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v52, v47, v47, 0);
  DgnString::~DgnString(&v167);
  *a4 += v47;
  *a5 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 154, &v167);
  if (v168)
  {
    v58 = v167;
  }

  else
  {
    v58 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v58, v53, v53, 0);
  DgnString::~DgnString(&v167);
  *a4 += v53;
  *a5 += v53;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 163, &v167);
  if (v168)
  {
    v63 = v167;
  }

  else
  {
    v63 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v63, 4, 4, 0);
  DgnString::~DgnString(&v167);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 165, &v167);
  if (v168)
  {
    v68 = v167;
  }

  else
  {
    v68 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v65, v66, v67, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v68, 4, 4, 0);
  DgnString::~DgnString(&v167);
  *a4 += 4;
  *a5 += 4;
  v69 = sizeObject<DgnPrimArray<unsigned char>>(this + 64, 0) + 8;
  v70 = sizeObject<DgnPrimArray<unsigned char>>(this + 64, 1) + 8;
  v167 = 0;
  v168 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v167);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 166, &v167);
  if (v168)
  {
    v75 = v167;
  }

  else
  {
    v75 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v75, v69, v70, 0);
  DgnString::~DgnString(&v167);
  *a4 += v69;
  *a5 += v70;
  v76 = sizeObject<DgnPrimArray<unsigned char>>(this + 88, 0) + 8;
  v77 = sizeObject<DgnPrimArray<unsigned char>>(this + 88, 1) + 8;
  v167 = 0;
  v168 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v167);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 167, &v167);
  if (v168)
  {
    v82 = v167;
  }

  else
  {
    v82 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v82, v76, v77, 0);
  DgnString::~DgnString(&v167);
  *a4 += v76;
  *a5 += v77;
  v83 = sizeObject<DgnPrimArray<double>>(this + 112, 0) + 8;
  v84 = sizeObject<DgnPrimArray<double>>(this + 112, 1) + 8;
  v167 = 0;
  v168 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v167);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 169, &v167);
  if (v168)
  {
    v89 = v167;
  }

  else
  {
    v89 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v89, v83, v84, 0);
  v166 = a3;
  DgnString::~DgnString(&v167);
  *a4 += v83;
  *a5 += v84;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  else
  {
    v90 = 16;
  }

  v91 = *(this + 36);
  v92 = *(this + 37);
  v93 = v92 >= v91;
  v94 = v92 - v91;
  if (v93)
  {
    if (v91 > 0)
    {
      v95 = (v91 - 1) + v90 + 1;
    }

    else
    {
      v95 = v90;
    }

    v90 = v95 + v94;
    v91 = 0;
  }

  else
  {
    v95 = v90;
  }

  v96 = v91;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 171, &v167);
  if (v168)
  {
    v101 = v167;
  }

  else
  {
    v101 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v22, &unk_262888520, v23, v23, v101, v90, v95, v96);
  DgnString::~DgnString(&v167);
  *a4 += v90;
  *a5 += v95;
  *a6 += v96;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v102 = 12;
  }

  else
  {
    v102 = 16;
  }

  v103 = *(this + 40);
  v104 = *(this + 41);
  v93 = v104 >= v103;
  v105 = v104 - v103;
  if (v93)
  {
    if (v103 > 0)
    {
      v106 = (v103 - 1) + v102 + 1;
    }

    else
    {
      v106 = v102;
    }

    v102 = v106 + v105;
    v103 = 0;
  }

  else
  {
    v106 = v102;
  }

  v107 = v103;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 172, &v167);
  if (v168)
  {
    v112 = v167;
  }

  else
  {
    v112 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v109, v110, v111, v22, &unk_262888520, v23, v23, v112, v102, v106, v107);
  DgnString::~DgnString(&v167);
  *a4 += v102;
  *a5 += v106;
  *a6 += v107;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = *(this + 44);
  v115 = *(this + 45);
  if (v115 >= v114)
  {
    v116 = 0;
    if (v114 > 0)
    {
      v113 += 8 * (v114 - 1) + 8;
    }

    v117 = v113 + 8 * (v115 - v114);
  }

  else
  {
    v116 = 8 * v114;
    v117 = v113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 174, &v167);
  if (v168)
  {
    v122 = v167;
  }

  else
  {
    v122 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v119, v120, v121, v22, &unk_262888520, v23, v23, v122, v117, v113, v116);
  DgnString::~DgnString(&v167);
  *a4 += v117;
  *a5 += v113;
  *a6 += v116;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v123 = 12;
  }

  else
  {
    v123 = 16;
  }

  v124 = *(this + 48);
  v125 = *(this + 49);
  v93 = v125 >= v124;
  v126 = v125 - v124;
  if (v93)
  {
    if (v124 > 0)
    {
      v127 = (v124 - 1) + v123 + 1;
    }

    else
    {
      v127 = v123;
    }

    v123 = v127 + v126;
    v124 = 0;
  }

  else
  {
    v127 = v123;
  }

  v128 = v124;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 176, &v167);
  if (v168)
  {
    v133 = v167;
  }

  else
  {
    v133 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v130, v131, v132, v22, &unk_262888520, v23, v23, v133, v123, v127, v128);
  DgnString::~DgnString(&v167);
  *a4 += v123;
  *a5 += v127;
  *a6 += v128;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 12;
  }

  else
  {
    v134 = 16;
  }

  v135 = *(this + 52);
  v136 = *(this + 53);
  v93 = v136 >= v135;
  v137 = v136 - v135;
  if (v93)
  {
    if (v135 > 0)
    {
      v138 = (v135 - 1) + v134 + 1;
    }

    else
    {
      v138 = v134;
    }

    v134 = v138 + v137;
    v135 = 0;
  }

  else
  {
    v138 = v134;
  }

  v139 = v135;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 178, &v167);
  if (v168)
  {
    v144 = v167;
  }

  else
  {
    v144 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v141, v142, v143, v22, &unk_262888520, v23, v23, v144, v134, v138, v139);
  DgnString::~DgnString(&v167);
  *a4 += v134;
  *a5 += v138;
  *a6 += v139;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v145 = 12;
  }

  else
  {
    v145 = 16;
  }

  v146 = *(this + 56);
  v147 = *(this + 57);
  if (v147 >= v146)
  {
    v148 = 0;
    if (v146 > 0)
    {
      v145 += 2 * (v146 - 1) + 2;
    }

    v149 = v145 + 2 * (v147 - v146);
  }

  else
  {
    v148 = 2 * v146;
    v149 = v145;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 180, &v167);
  if (v168)
  {
    v154 = v167;
  }

  else
  {
    v154 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v150, v151, v152, v153, v22, &unk_262888520, v23, v23, v154, v149, v145, v148);
  DgnString::~DgnString(&v167);
  *a4 += v149;
  *a5 += v145;
  *a6 += v148;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 182, &v167);
  if (v168)
  {
    v159 = v167;
  }

  else
  {
    v159 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v156, v157, v158, v22, &unk_262888520, v23, v23, v159, 4, 4, 0);
  DgnString::~DgnString(&v167);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 184, &v167);
  if (v168)
  {
    v164 = v167;
  }

  else
  {
    v164 = &unk_262888520;
  }

  v165 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v161, v162, v163, v166, &unk_262888520, (35 - v166), (35 - v166), v164, *a4, *a5, *a6);
  DgnString::~DgnString(&v167);
}

void sub_2626B5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t SimpleFrameTransformer::doStage2ForRecogFramesOnly(unint64_t result, uint64_t a2)
{
  v3 = *(result + 56);
  if (!((v3 + 1) % *(result + 232)))
  {
    v4 = result;
    v5 = *(result + 32);
    if (v5)
    {
      FmpeMgr::fmpeStage2(v5, v3, v4 + 88, (v4 + 112), (v4 + 200));
    }

    else
    {
      v6 = *(v4 + 88) + 16 * (v3 % *(v4 + 96));
      DgnPrimArray<unsigned char>::copyArraySlice(v4 + 200, v6, 0, *(v6 + 8));
    }

    v7 = *(v4 + 56) / *(v4 + 232);

    return SynchronizedArray<DgnPrimArray<unsigned char>>::add(a2, v7, v4 + 200);
  }

  return result;
}

unint64_t SynchronizedArray<DgnPrimArray<unsigned char>>::add(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 20))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 8, 1, 1);
    v6 = *(a1 + 16);
  }

  v7 = (*(a1 + 8) + 16 * v6);
  *v7 = 0;
  v7[1] = 0;
  ++*(a1 + 16);
  v8 = *(a1 + 8) + 16 * a2;
  v9 = *(a3 + 8);

  return DgnPrimArray<unsigned char>::copyArraySlice(v8, a3, 0, v9);
}

void SimpleFrameTransformer::transformFrame(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  if (!a4)
  {
    if (*(a1 + 80) != *(a1 + 84))
    {
      HalfWindowSize = NeuralNet::getHalfWindowSize(*(a1 + 16), a2, a3, 0, a5, a6, a7, a8);
      v32 = HalfWindowSize;
      v33 = *(a1 + 80) - *(a1 + 84);
      v34 = v33 - HalfWindowSize;
      if (v33 - HalfWindowSize < HalfWindowSize + 1)
      {
        if (v33 < 2 * HalfWindowSize)
        {
          v35 = v33 - 1;
          v36 = 2 * HalfWindowSize;
          do
          {
            v37 = *(a1 + 80) + 1;
            v38 = *(a1 + 72);
            v39 = v37 - v38;
            if (v37 < v38)
            {
              v39 = 0;
            }

            *(a1 + 80) = v37;
            *(a1 + 84) = v39;
            DgnPrimArray<unsigned char>::copyArraySlice(*(a1 + 64) + 16 * (v33 % v38), (*(a1 + 64) + 16 * (v35 % v38)), 0, *(*(a1 + 64) + 16 * (v35 % v38) + 8));
            ++v33;
          }

          while (v36 != v33);
        }

        v40 = v32;
        if (!v34)
        {
          goto LABEL_56;
        }

        goto LABEL_38;
      }

      v34 = HalfWindowSize;
      v40 = v11;
      if (HalfWindowSize)
      {
LABEL_38:
        v67 = 0;
        v68 = v40 + v32;
        do
        {
          v69 = *(a1 + 80) + 1;
          v70 = *(a1 + 72);
          v71 = v69 - v70;
          if (v69 < v70)
          {
            v71 = 0;
          }

          *(a1 + 80) = v69;
          *(a1 + 84) = v71;
          v72 = *(a1 + 64);
          v73 = v72 + 16 * ((v68 + v67 - 1) % v70);
          DgnPrimArray<unsigned char>::copyArraySlice(v72 + 16 * ((v68 + v67) % v70), v73, 0, *(v73 + 8));
          NeuralNet::run(*(a1 + 16), (a1 + 64), v67 + v11, a1 + 152, a1 + 168, v74, v75, v76);
          if (a6)
          {
            v82 = *(a6 + 8);
            if (v82 == *(a6 + 12))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a6, 1, 1);
              v82 = *(a6 + 8);
            }

            v83 = (*a6 + 16 * v82);
            *v83 = 0;
            v83[1] = 0;
            DgnPrimArray<double>::copyArraySlice(v83, (a1 + 168), 0, *(a1 + 176));
            ++*(a6 + 8);
          }

          v84 = SimpleFrameTransformer::concatenateFeatures(a1, *(a1 + 64) + 16 * ((v67 - v34 + v11 + v32) % *(a1 + 72)), a3, v77, v78, v79, v80, v81);
          SimpleFrameTransformer::doImelda(a1, v67 - v34 + v11, v84, v85, v86, v87, v88, v89);
          SimpleFrameTransformer::doFmpeStage1(a1, v67 - v34 + v11);
          v90 = *(a1 + 104) - *(a1 + 108);
          if (v90 >= (*(*a1 + 112))(a1) + 1)
          {
            v91 = *(a1 + 56);
            if (v91 == -16)
            {
              v92 = 0;
            }

            else
            {
              v92 = v91 + 1;
            }

            *(a1 + 56) = v92;
            SimpleFrameTransformer::doStage2ForRecogFramesOnly(a1, a5);
          }

          ++v67;
        }

        while (v67 != v34);
      }
    }

LABEL_56:
    while ((*(*a1 + 48))(a1, *(a5 + 16)) < v11)
    {
      v93 = *(a1 + 56);
      if (v93 == -16)
      {
        v94 = 0;
      }

      else
      {
        v94 = v93 + 1;
      }

      *(a1 + 56) = v94;
      SimpleFrameTransformer::doStage2ForRecogFramesOnly(a1, a5);
    }

    *a5 = 1;
    return;
  }

  v13 = a4;
  v14 = *(a1 + 8);
  if (v14)
  {
    LinearTransform::doTransform(v14 + 8, a4, a1 + 136, a4, a5, a6, a7, a8);
    v13 = a1 + 136;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = NeuralNet::getHalfWindowSize(v15, a2, a3, a4, a5, a6, a7, a8);
  v17 = v16;
  v18 = *(a1 + 80);
  if (v18 == *(a1 + 84))
  {
    v19 = 0;
    do
    {
      v20 = *(a1 + 80) + 1;
      v21 = *(a1 + 72);
      v22 = v20 - v21;
      if (v20 < v21)
      {
        v22 = 0;
      }

      *(a1 + 80) = v20;
      *(a1 + 84) = v22;
      DgnPrimArray<unsigned char>::copyArraySlice(*(a1 + 64) + 16 * (v19 % v21), v13, 0, *(v13 + 8));
      ++v19;
    }

    while (v19 <= v17);
    v30 = *(a1 + 16);

    NeuralNet::reset(v30, v23, v24, v25, v26, v27, v28, v29);
    return;
  }

  v41 = v18 + 1;
  v42 = *(a1 + 72);
  v43 = v41 - v42;
  if (v41 < v42)
  {
    v43 = 0;
  }

  *(a1 + 80) = v41;
  *(a1 + 84) = v43;
  DgnPrimArray<unsigned char>::copyArraySlice(*(a1 + 64) + 16 * ((v16 + v11) % v42), v13, 0, *(v13 + 8));
  v44 = *(a1 + 80) - *(a1 + 84);
  if (v44 >= NeuralNet::getWindowSize(*(a1 + 16), v45, v46, v47, v48, v49, v50, v51))
  {
    NeuralNet::run(*(a1 + 16), (a1 + 64), v11, a1 + 152, a1 + 168, v52, v53, v54);
    if (a6)
    {
      v55 = *(a6 + 8);
      if (v55 == *(a6 + 12))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(a6, 1, 1);
        v55 = *(a6 + 8);
      }

      v56 = (*a6 + 16 * v55);
      *v56 = 0;
      v56[1] = 0;
      DgnPrimArray<double>::copyArraySlice(v56, (a1 + 168), 0, *(a1 + 176));
      ++*(a6 + 8);
    }

    v57 = v11 % *(a1 + 72);
    v11 -= v17;
    v13 = *(a1 + 64) + 16 * v57;
LABEL_30:
    v58 = SimpleFrameTransformer::concatenateFeatures(a1, v13, a3, a4, a5, a6, a7, a8);
    SimpleFrameTransformer::doImelda(a1, v11, v58, v59, v60, v61, v62, v63);
    SimpleFrameTransformer::doFmpeStage1(a1, v11);
    v64 = *(a1 + 104) - *(a1 + 108);
    if (v64 >= (*(*a1 + 112))(a1) + 1)
    {
      v65 = *(a1 + 56);
      if (v65 == -16)
      {
        v66 = 0;
      }

      else
      {
        v66 = v65 + 1;
      }

      *(a1 + 56) = v66;

      SimpleFrameTransformer::doStage2ForRecogFramesOnly(a1, a5);
    }
  }
}

uint64_t SimpleFrameTransformer::concatenateFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a3;
    if (!NeuralNet::isOutTypeConcatenatedBF(v10, a2, a3, a4, a5, a6, a7, a8) || (v11 & 1) != 0)
    {
      return a1 + 152;
    }

    else
    {
      v12 = (*(v8 + 8) + *(a1 + 160));
      if (*(a1 + 196) < v12)
      {
        v18 = 0;
        *(a1 + 196) = realloc_array(*(a1 + 184), &v18, v12, *(a1 + 192), *(a1 + 192), 1);
        *(a1 + 184) = v18;
      }

      *(a1 + 192) = v12;
      v13 = *(v8 + 8);
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          *(*(a1 + 184) + i) = *(*v8 + i);
        }
      }

      v15 = *(a1 + 160);
      if (v15)
      {
        for (j = 0; j != v15; ++j)
        {
          *(*(a1 + 184) + (v13 + j)) = *(*(a1 + 152) + j);
        }
      }

      return a1 + 184;
    }
  }

  return v8;
}

void SimpleFrameTransformer::doImelda(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 104) + 1;
  v9 = *(a1 + 96);
  v10 = v8 - v9;
  if (v8 < v9)
  {
    v10 = 0;
  }

  *(a1 + 104) = v8;
  *(a1 + 108) = v10;
  v11 = *(a1 + 24);
  v12 = a2 % v9;
  v13 = *(a1 + 88);
  if (v11)
  {
    LinearTransform::doTransform(v11 + 8, a3, v13 + 16 * v12, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnPrimArray<unsigned char>::copyArraySlice(v13 + 16 * v12, a3, 0, *(a3 + 8));
  }
}

uint64_t SimpleFrameTransformer::doFmpeStage1(SimpleFrameTransformer *this, unsigned int a2)
{
  result = *(this + 4);
  if (result)
  {
    v4 = *(this + 32) + 1;
    v5 = *(this + 30);
    v6 = v4 - v5;
    if (v4 < v5)
    {
      v6 = 0;
    }

    *(this + 32) = v4;
    *(this + 33) = v6;
    return FmpeMgr::fmpeStage1(result, a2, (*(this + 11) + 16 * (a2 % *(this + 24))), (*(this + 14) + 16 * (a2 % v5)), *(this + 6));
  }

  return result;
}

uint64_t SimpleFrameTransformer::getNextFrameTime(SimpleFrameTransformer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 20);
  if (v8 != *(this + 21))
  {
    return v8 - NeuralNet::getHalfWindowSize(*(this + 2), a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(this + 14);
  if (v9 == -16)
  {
    return (*(this + 26) - *(this + 27));
  }

  else
  {
    return v9 + (*(*this + 112))(this) + 1;
  }
}

uint64_t SimpleFrameTransformer::transformFramesUntil(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = 0;
  v22[1] = 0;
  v13 = a2 + 1;
  for (i = *(a1 + 60); ; *(a1 + 60) = i)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      LODWORD(v15) = NeuralNet::getHalfWindowSize(v15, a2, a3, a4, a5, a6, a7, a8);
      v16 = *(a1 + 60);
    }

    else
    {
      v16 = i;
    }

    if (i > v15 + v13 || *(a4 + 16) <= v16)
    {
      break;
    }

    v17 = *(a4 + 8) + 16 * v16;
    DgnPrimArray<unsigned char>::copyArraySlice(v22, v17, 0, *(v17 + 8));
    SimpleFrameTransformer::transformFrame(a1, *(a1 + 60), a3, v22, a5, a6, v18, v19);
    i = *(a1 + 60) + 1;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    LODWORD(v20) = NeuralNet::getHalfWindowSize(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v16 <= v20 + v13 && *a4 == 1 && (*a5 & 1) == 0)
  {
    *(a5 + 4) = *(a5 + 16);
    SimpleFrameTransformer::transformFrame(a1, *(a4 + 16), a3, 0, a5, a6, a7, a8);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
}

void FrameTransformerThreadWorker::~FrameTransformerThreadWorker(FrameTransformerThreadWorker *this)
{
  *this = &unk_287524780;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);

  DgnThreadWorker::~DgnThreadWorker(this);
}

{
  *this = &unk_287524780;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnThreadWorker::~DgnThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FrameTransformerThreadWorker::onStartup(FrameTransformerThreadWorker *this)
{
  v2 = *(this + 6);
  v3 = MemChunkAlloc(0xF0uLL, 0);
  v4 = SimpleFrameTransformer::SimpleFrameTransformer(v3, *(v2 + 1576), *(v2 + 1584), *(v2 + 1592), *(v2 + 1600), *(v2 + 1608), *(v2 + 1620), *(v2 + 1632), *(v2 + 1624), *(v2 + 1640));
  *(this + 33) = v4;
  (*(*v4 + 64))(v4);
  v5 = MemChunkAlloc(0x18uLL, 0);
  *(this + 34) = SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(v5);
  v6 = MemChunkAlloc(0x18uLL, 0);
  result = SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(v6);
  *(this + 35) = result;
  return result;
}

uint64_t FrameTransformerThreadWorker::onShutdown(FrameTransformerThreadWorker *this)
{
  (*(**(this + 33) + 72))(*(this + 33));
  DgnDelete<FrameTransformer>(*(this + 33));
  DgnDelete<UttFeatureArraySynchronizedArray>(*(this + 34));
  v2 = *(this + 35);

  return DgnDelete<UttFeatureArraySynchronizedArray>(v2);
}

_BYTE *FrameTransformerThreadWorker::onPlay(FrameTransformerThreadWorker *this)
{
  v1 = *(this + 6);
  *(this + 64) = *(v1 + 1652);
  result = *(this + 35);
  if ((*result & 1) == 0)
  {
    return SynchronizedArray<DgnPrimArray<unsigned char>>::update(result, *(v1 + 1656));
  }

  return result;
}

unint64_t SynchronizedArray<DgnPrimArray<unsigned char>>::update(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v6 = *(result + 16);
  v5 = *(result + 20);
  if (v5 > 0x1F3)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(result + 8, 500 - v5, 0);
    v7 = *(a2 + 16);
    v5 = *(v3 + 20);
  }

  if (v7 > v5)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(v3 + 8, v7 - v5, 0);
  }

  v8 = *(v3 + 16);
  if (v8 <= v7)
  {
    if (v8 < v7)
    {
      v11 = v7 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*(v3 + 8) + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v7)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v3 + 8) + v10);
      v10 -= 16;
    }

    while (v9 > v7);
  }

  *(v3 + 16) = v7;
  if (v6 < v4)
  {
    do
    {
      v14 = *(a2 + 8) + 16 * v6;
      result = DgnPrimArray<unsigned char>::copyArraySlice(*(v3 + 8) + 16 * v6++, v14, 0, *(v14 + 8));
    }

    while (v4 != v6);
  }

  if (*a2 == 1)
  {
    *v3 = 1;
  }

  if (*(v3 + 4) == -16)
  {
    *(v3 + 4) = *(a2 + 4);
  }

  return result;
}

uint64_t FrameTransformerThreadWorker::playOne(FrameTransformerThreadWorker *this)
{
  v1 = *(this + 34);
  if (*v1)
  {
    return 4;
  }

  v4 = *(this + 64);
  if (v4 != -16 && *(v1 + 16) > v4)
  {
    return 4;
  }

  v5 = (*(**(this + 33) + 32))(*(this + 33));
  v8 = v5;
  v9 = *(this + 35);
  if (*(v9 + 16) <= v5)
  {
    if (*v9 == 1)
    {
      v14 = *(this + 33);
      v15 = *(this + 34);
      *(v15 + 4) = *(v15 + 16);
      SimpleFrameTransformer::transformFrame(v14, v8, 0, 0, v15, 0, v6, v7);
    }

    return 4;
  }

  v10 = *(v9 + 8) + 16 * v5;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 288, v10, 0, *(v10 + 8));
  SimpleFrameTransformer::transformFrame(*(this + 33), v8, 0, this + 288, *(this + 34), 0, v11, v12);
  v13 = *(this + 64);
  if (v13 != -16 && *(*(this + 34) + 16) > v13)
  {
    return 4;
  }

  return 1;
}

uint64_t *FrameTransformerThreadWorker::reset(FrameTransformerThreadWorker *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v6, *(this + 5));
  v2 = *(this + 33);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::reset(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::reset(v4);
  }

  *(this + 64) = -16;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v6);
}

void sub_2626B6D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void *Latch<MemChunkRegion,LatchAdapter>::Latch(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (MemChunkRegion::smTlsID == -1)
  {
    v5 = &gGlobalMemChunkRegion;
    goto LABEL_7;
  }

  v4 = pthread_getspecific(MemChunkRegion::smTlsID);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *v4;
  if (!*v4)
  {
    pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_5:
    v5 = &gGlobalMemChunkRegion;
  }

LABEL_7:
  if (v5 != a2 && (a2 || v5 != &gGlobalMemChunkRegion))
  {
    if (!a2 || a2 == &gGlobalMemChunkRegion)
    {
      v6 = MemChunkRegion::smTlsID;
      v7 = 0;
    }

    else
    {
      *(a2 + 1288) = a2;
      v6 = MemChunkRegion::smTlsID;
      v7 = (a2 + 1288);
    }

    pthread_setspecific(v6, v7);
  }

  *a1 = v5;
  return a1;
}

uint64_t SynchronizedArray<DgnPrimArray<unsigned char>>::reset(uint64_t result)
{
  v1 = result;
  *result = 0;
  *(result + 4) = -16;
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v1 + 8) + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(v1 + 16) = 0;
  return result;
}

void FrameTransformerThreadWorker::printSize(FrameTransformerThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1091, &v69);
  if (v70)
  {
    v15 = v69;
  }

  else
  {
    v15 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_262888520, a3, &unk_262888520, v15);
  DgnString::~DgnString(&v69);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_262888520);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1094, &v69);
  if (v70)
  {
    v26 = v69;
  }

  else
  {
    v26 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v69);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1095, &v69);
  if (v70)
  {
    v32 = v69;
  }

  else
  {
    v32 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v32, v27, v27, 0);
  DgnString::~DgnString(&v69);
  *a4 += v27;
  *a5 += v27;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 4;
  }

  else
  {
    v33 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1096, &v69);
  if (v70)
  {
    v38 = v69;
  }

  else
  {
    v38 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v38, v33, v33, 0);
  DgnString::~DgnString(&v69);
  *a4 += v33;
  *a5 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1097, &v69);
  if (v70)
  {
    v44 = v69;
  }

  else
  {
    v44 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v44, v39, v39, 0);
  v64 = a3;
  DgnString::~DgnString(&v69);
  *a4 += v39;
  *a5 += v39;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 12;
  }

  else
  {
    v45 = 16;
  }

  v46 = *(this + 74);
  v47 = *(this + 75);
  v48 = a2;
  v49 = v47 >= v46;
  v50 = v47 - v46;
  if (v49)
  {
    if (v46 > 0)
    {
      v51 = (v46 - 1) + v45 + 1;
    }

    else
    {
      v51 = v45;
    }

    v45 = v51 + v50;
    v46 = 0;
  }

  else
  {
    v51 = v45;
  }

  v52 = v46;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1099, &v69);
  if (v70)
  {
    v57 = v69;
  }

  else
  {
    v57 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v20, &unk_262888520, v21, v21, v57, v45, v51, v52);
  DgnString::~DgnString(&v69);
  *a4 += v45;
  *a5 += v51;
  *a6 += v52;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  DgnThreadWorker::printSize(this, v48, v20, &v68, &v66, &v67);
  *a4 += v68;
  *a5 += v66;
  *a6 += v67;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1108, &v69);
  if (v70)
  {
    v62 = v69;
  }

  else
  {
    v62 = &unk_262888520;
  }

  v63 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v64, &unk_262888520, (35 - v64), (35 - v64), v62, *a4, *a5, *a6);
  DgnString::~DgnString(&v69);
}

unint64_t FrameTransformerThread::stopScoring(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  DgnThreadClient::pause(a1, a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 1648) = (*(**(*(a1 + 56) + 264) + 32))(*(*(a1 + 56) + 264));
  result = SynchronizedArray<DgnPrimArray<unsigned char>>::update(a2, *(*(a1 + 56) + 272));
  *(a1 + 1616) = 0;
  return result;
}

void FrameTransformerThread::printSize(FrameTransformerThread *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1171, &v96);
  if (v97)
  {
    v16 = v96;
  }

  else
  {
    v16 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262888520, a3, &unk_262888520, v16);
  v92 = this;
  DgnString::~DgnString(&v96);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262888520);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1174, &v96);
  if (v97)
  {
    v26 = v96;
  }

  else
  {
    v26 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v26, v21, v21, 0);
  DgnString::~DgnString(&v96);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1175, &v96);
  if (v97)
  {
    v32 = v96;
  }

  else
  {
    v32 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v32, v27, v27, 0);
  DgnString::~DgnString(&v96);
  *a4 += v27;
  *a5 += v27;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 4;
  }

  else
  {
    v33 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1176, &v96);
  if (v97)
  {
    v38 = v96;
  }

  else
  {
    v38 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v38, v33, v33, 0);
  DgnString::~DgnString(&v96);
  *a4 += v33;
  *a5 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1177, &v96);
  if (v97)
  {
    v44 = v96;
  }

  else
  {
    v44 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v44, v39, v39, 0);
  DgnString::~DgnString(&v96);
  *a4 += v39;
  *a5 += v39;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1179, &v96);
  if (v97)
  {
    v49 = v96;
  }

  else
  {
    v49 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v49, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1181, &v96);
  if (v97)
  {
    v54 = v96;
  }

  else
  {
    v54 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v54, 1, 1, 0);
  DgnString::~DgnString(&v96);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1183, &v96);
  if (v97)
  {
    v59 = v96;
  }

  else
  {
    v59 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v59, 8, 8, 0);
  DgnString::~DgnString(&v96);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1184, &v96);
  if (v97)
  {
    v64 = v96;
  }

  else
  {
    v64 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v64, 1, 1, 0);
  DgnString::~DgnString(&v96);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1186, &v96);
  if (v97)
  {
    v69 = v96;
  }

  else
  {
    v69 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v69, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1188, &v96);
  if (v97)
  {
    v74 = v96;
  }

  else
  {
    v74 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v74, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1190, &v96);
  if (v97)
  {
    v79 = v96;
  }

  else
  {
    v79 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v79, 4, 4, 0);
  DgnString::~DgnString(&v96);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 4;
  }

  else
  {
    v80 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1191, &v96);
  if (v97)
  {
    v85 = v96;
  }

  else
  {
    v85 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v85, v80, v80, 0);
  DgnString::~DgnString(&v96);
  *a4 += v80;
  *a5 += v80;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  DgnThreadClient::printSize(v92, a2, (a3 + 1), &v95, &v93, &v94);
  *a4 += v95;
  *a5 += v93;
  *a6 += v94;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1200, &v96);
  if (v97)
  {
    v90 = v96;
  }

  else
  {
    v90 = &unk_262888520;
  }

  v91 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, a3, &unk_262888520, (35 - a3), (35 - a3), v90, *a4, *a5, *a6);
  DgnString::~DgnString(&v96);
}

void sub_2626B79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *ThreadedFrameTransformer::ThreadedFrameTransformer(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, char a11)
{
  *a1 = &unk_287524B70;
  v21 = MemChunkAlloc(0x680uLL, 0);
  v22 = DgnThread<FrameTransformerThreadWorker>::DgnThread(v21, a2, 0, "FrameTransformer");
  *v22 = &unk_287525638;
  *(v22 + 1576) = a3;
  *(v22 + 1584) = a4;
  *(v22 + 1592) = a5;
  *(v22 + 1600) = a6;
  *(v22 + 1608) = a7;
  *(v22 + 1616) = 0;
  *(v22 + 1620) = a8;
  *(v22 + 1624) = a9;
  *(v22 + 1632) = a11;
  *(v22 + 1640) = a10;
  *(v22 + 1648) = 0xFFFFFFF000000000;
  *(v22 + 1656) = 0;
  a1[1] = v22;
  DgnThreadClient::startup(v22);
  return a1;
}

void ThreadedFrameTransformer::~ThreadedFrameTransformer(DgnThreadClient **this)
{
  *this = &unk_287524B70;
  if (DgnThreadClient::isLive(this[1]) && (DgnThreadClient::hasErrored(this[1]) & 1) == 0)
  {
    DgnThreadClient::shutdown(this[1], v2, v3, v4, v5, v6, v7, v8);
  }

  DgnDelete<FrameTransformerThread>(this[1]);
}

{
  ThreadedFrameTransformer::~ThreadedFrameTransformer(this);

  JUMPOUT(0x26672B1B0);
}

void (***DgnDelete<FrameTransformerThread>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ThreadedFrameTransformer::printSize(ThreadedFrameTransformer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1246, &v32);
  if (v33)
  {
    v15 = v32;
  }

  else
  {
    v15 = &unk_262888520;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_262888520, a3, &unk_262888520, v15);
  DgnString::~DgnString(&v32);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_262888520);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1248, &v32);
  if (v33)
  {
    v25 = v32;
  }

  else
  {
    v25 = &unk_262888520;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_262888520, (34 - a3), (34 - a3), v25, v20, v20, 0);
  DgnString::~DgnString(&v32);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/frmtrans.cpp", 1251, &v32);
  if (v33)
  {
    v30 = v32;
  }

  else
  {
    v30 = &unk_262888520;
  }

  v31 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, a3, &unk_262888520, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v32);
}

void sub_2626B7DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedFrameTransformer::reset(ThreadedFrameTransformer *this)
{
  v1 = *(this + 1);
  result = FrameTransformerThreadWorker::reset(*(v1 + 56));
  *(v1 + 1648) = 0;
  return result;
}

unint64_t ThreadedFrameTransformer::transformFramesUntil(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 16) <= a2 && (*a4 & 1) == 0)
  {
    v9 = *(result + 8);
    *(v9 + 1616) = 1;
    *(v9 + 1652) = a2;
    *(v9 + 1656) = a3;
    DgnThreadClient::playAllUntilWorkerPauses(v9, a2, a3, a4, a5, a6, a7, a8);
    *(v9 + 1656) = 0;
    *(v9 + 1652) = -16;

    return FrameTransformerThread::stopScoring(v9, a4, v10, v11, v12, v13, v14, v15);
  }

  return result;
}