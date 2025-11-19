void sub_29ADB3F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a35 & 7) != 0)
  {
    atomic_fetch_add_explicit((a35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A008B0C(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADB40A4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::operator*() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29ADB4124(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::operator++() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_CompileWithGeneratedHgiResources@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2@<X1>, __int128 *a3@<X8>)
{
  v249 = a2;
  memset(v243, 0, sizeof(v243));
  v244 = 1065353216;
  v245 = 0;
  memset(v246, 0, sizeof(v246));
  v248 = 0;
  v247 = 1065353216;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ADC7A44((v5 + 184), &v249, &v242);
  v6 = *(this + 5360);
  if (v6 != 1)
  {
    goto LABEL_668;
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
  v233 = 1;
  v245 = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v8)
  {
    v8 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29ADBC518(v243, Hgi, v232, v8 + 28, this + 637, *this);
  v9 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v10)
  {
    v10 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29ADBC518(v243, v9, v232, v10 + 28, this + 634, *this);
  v11 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v12)
  {
    v12 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29ADBC518(v243, v11, v232, v12 + 28, this + 602, *this);
  std::stringbuf::str();
  std::stringbuf::str();
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

  v15 = std::string::append(&v230, p_p, size);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v231.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v231.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  std::stringbuf::str();
  if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v228;
  }

  else
  {
    v17 = v228.__r_.__value_.__r.__words[0];
  }

  if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v228.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&__p, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v230.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v230.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = &v231;
  if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v231.__r_.__value_.__r.__words[0];
  }

  v22 = &v230;
  if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v230.__r_.__value_.__r.__words[0];
  }

  v234 = v21;
  v235 = v22;
  v236 = this + 5168;
  sub_29A008E78(&__p, "hd_VertexID");
  sub_29A008E78(&v228, "uint");
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v23)
  {
    v23 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v23 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v23 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, EmptyString);
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "hd_InstanceID");
  sub_29A008E78(&v228, "uint");
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v25)
  {
    v25 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v25 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = ((*(v25 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v26);
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "hd_BaseInstance");
  sub_29A008E78(&v228, "uint");
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v27)
  {
    v27 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v27 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v28 = ((*(v27 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v28);
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "gl_BaseVertex");
  sub_29A008E78(&v228, "uint");
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v29)
  {
    v29 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v29 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v30 = ((*(v29 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v30);
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(*(this + 1) + 56) & 1) == 0)
  {
    sub_29A008E78(&__p, "gl_Position");
    sub_29A008E78(&v228, "vec4");
    sub_29A008E78(&v227, "position");
    memset(&v226, 0, sizeof(v226));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &__p, &v228, &v227, &v226);
    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(*(this + 1) + 24))
    {
      v31 = "";
    }

    else
    {
      v31 = "point_size";
    }

    sub_29A008E78(&__p, "gl_PointSize");
    sub_29A008E78(&v228, "float");
    sub_29A008E78(&v227, v31);
    memset(&v226, 0, sizeof(v226));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &__p, &v228, &v227, &v226);
    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 5368) == 1)
  {
    sub_29A008E78(&__p, "gl_ClipDistance");
    sub_29A008E78(&v228, "float");
    sub_29A008E78(&v227, "clip_distance");
    sub_29A008E78(&v226, "HD_NUM_clipPlanes");
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &__p, &v228, &v227, &v226);
    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v32 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
  if ((v32 & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
  }

  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(v232);
  if (v32)
  {
LABEL_668:
    if (*(this + 5361) != 1)
    {
      goto LABEL_669;
    }

    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
    v233 = 8;
    v245 = 0;
    v33 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v34)
    {
      v34 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    sub_29ADBC518(v243, v33, v232, v34 + 22, this + 634, *this);
    v35 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v36)
    {
      v36 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    sub_29ADBC518(v243, v35, v232, v36 + 22, this + 605, *this);
    std::stringbuf::str();
    std::stringbuf::str();
    if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v228;
    }

    else
    {
      v37 = v228.__r_.__value_.__r.__words[0];
    }

    if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v228.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&__p, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v230.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v230.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    std::stringbuf::str();
    if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v227;
    }

    else
    {
      v41 = v227.__r_.__value_.__r.__words[0];
    }

    if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v227.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v230, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v231.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v231.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v230.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::stringbuf::str();
    std::stringbuf::str();
    if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v228;
    }

    else
    {
      v45 = v228.__r_.__value_.__r.__words[0];
    }

    if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v228.__r_.__value_.__l.__size_;
    }

    v47 = std::string::append(&__p, v45, v46);
    v48 = *&v47->__r_.__value_.__l.__data_;
    v230.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v230.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v49 = &v231;
    if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = v231.__r_.__value_.__r.__words[0];
    }

    v50 = &v230;
    if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v230.__r_.__value_.__r.__words[0];
    }

    v234 = v49;
    v235 = v50;
    v236 = this + 5192;
    v51 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
    if (v51)
    {
      v6 = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 1) = 0;
    }

    if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v230.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v231.__r_.__value_.__l.__data_);
    }

    sub_29AB89F90(v232);
    if (v51)
    {
LABEL_669:
      if (*(this + 5362) != 1)
      {
        goto LABEL_670;
      }

      pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
      v233 = 16;
      v245 = 0;
      v52 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
      v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v53)
      {
        v53 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      sub_29ADBC518(v243, v52, v232, v53 + 23, this + 634, *this);
      v54 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
      v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v55)
      {
        v55 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      sub_29ADBC518(v243, v54, v232, v55 + 23, this + 608, *this);
      std::stringbuf::str();
      std::stringbuf::str();
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v228;
      }

      else
      {
        v56 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v228.__r_.__value_.__l.__size_;
      }

      v58 = std::string::append(&__p, v56, v57);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v230.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
      *&v230.__r_.__value_.__l.__data_ = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      std::stringbuf::str();
      if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v227;
      }

      else
      {
        v60 = v227.__r_.__value_.__r.__words[0];
      }

      if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v61 = v227.__r_.__value_.__l.__size_;
      }

      v62 = std::string::append(&v230, v60, v61);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v231.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v231.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v230.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::stringbuf::str();
      std::stringbuf::str();
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v228;
      }

      else
      {
        v64 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v228.__r_.__value_.__l.__size_;
      }

      v66 = std::string::append(&__p, v64, v65);
      v67 = *&v66->__r_.__value_.__l.__data_;
      v230.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
      *&v230.__r_.__value_.__l.__data_ = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v68 = &v231;
      if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v68 = v231.__r_.__value_.__r.__words[0];
      }

      v69 = &v230;
      if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v69 = v230.__r_.__value_.__r.__words[0];
      }

      v234 = v68;
      v235 = v69;
      v236 = this + 5216;
      if (*(this + 5368) == 1)
      {
        sub_29A008E78(&__p, "gl_ClipDistance");
        sub_29A008E78(&v228, "float");
        sub_29A008E78(&v227, "clip_distance");
        sub_29A008E78(&v226, "HD_NUM_clipPlanes");
        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &__p, &v228, &v227, &v226);
        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v70 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
      if (v70)
      {
        v6 = 1;
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
      }

      if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v230.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v231.__r_.__value_.__l.__data_);
      }

      sub_29AB89F90(v232);
      if (v70)
      {
LABEL_670:
        if (*(this + 5366) != 1)
        {
          goto LABEL_671;
        }

        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
        v233 = 64;
        v71 = *this;
        if ((*(*this + 496) & 0x80000000) == 0)
        {
          LODWORD(v231.__r_.__value_.__l.__data_) = *(*this + 496);
          sub_29ADA7BC4(this + 4936, (v71 + 480), (v71 + 488), &v231, 1, 0);
        }

        PrimitiveIndexSize = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(*(this + 1));
        std::to_string(&v231, PrimitiveIndexSize);
        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v240.__r_.__value_.__l.__data_);
        }

        v240 = v231;
        NumPatchEvalVerts = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetNumPatchEvalVerts(*(this + 1));
        std::to_string(&v231, NumPatchEvalVerts);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
        }

        v241 = v231;
        v74 = *(this + 1);
        v75 = *(v74 + 6);
        v76 = (v75 > 0xC || ((1 << v75) & 0x1030) == 0) && v75 != 11;
        v239 = v76;
        if (!pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetHgiPrimitiveType(v74))
        {
          v239 = 2;
        }

        v245 = 0;
        v77 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
        v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v78)
        {
          v78 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBC518(v243, v77, v232, v78 + 24, this + 637, *this);
        v79 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
        v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v80)
        {
          v80 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBC518(v243, v79, v232, v80 + 24, this + 634, *this);
        v81 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
        v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v82)
        {
          v82 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBC518(v243, v81, v232, v82 + 24, this + 617, *this);
        v83 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
        v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v84)
        {
          v84 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBC518(v243, v83, v232, v84 + 24, this + 640, *this);
        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens))
        {
          sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBD7E4(v232, this + 643);
        std::stringbuf::str();
        std::stringbuf::str();
        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = &v228;
        }

        else
        {
          v86 = v228.__r_.__value_.__r.__words[0];
        }

        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v87 = v228.__r_.__value_.__l.__size_;
        }

        v88 = std::string::append(&__p, v86, v87);
        v89 = *&v88->__r_.__value_.__l.__data_;
        v230.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
        *&v230.__r_.__value_.__l.__data_ = v89;
        v88->__r_.__value_.__l.__size_ = 0;
        v88->__r_.__value_.__r.__words[2] = 0;
        v88->__r_.__value_.__r.__words[0] = 0;
        std::stringbuf::str();
        if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = &v227;
        }

        else
        {
          v90 = v227.__r_.__value_.__r.__words[0];
        }

        if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v91 = v227.__r_.__value_.__l.__size_;
        }

        v92 = std::string::append(&v230, v90, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v231.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v231.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v94 = &v228;
        }

        else
        {
          v94 = v228.__r_.__value_.__r.__words[0];
        }

        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v95 = v228.__r_.__value_.__l.__size_;
        }

        v96 = std::string::append(&__p, v94, v95);
        v97 = *&v96->__r_.__value_.__l.__data_;
        v230.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
        *&v230.__r_.__value_.__l.__data_ = v97;
        v96->__r_.__value_.__l.__size_ = 0;
        v96->__r_.__value_.__r.__words[2] = 0;
        v96->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v98 = &v231;
        if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v98 = v231.__r_.__value_.__r.__words[0];
        }

        v99 = &v230;
        if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v99 = v230.__r_.__value_.__r.__words[0];
        }

        v234 = v98;
        v235 = v99;
        v236 = this + 5312;
        sub_29A008E78(&__p, "hd_BaseInstance");
        sub_29A008E78(&v228, "uint");
        v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        if (!v100)
        {
          v100 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        }

        if ((*(v100 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v101 = ((*(v100 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v101 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v100);
        }

        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v101);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&__p, "patch_id");
        sub_29A008E78(&v228, "uint");
        v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        if (!v102)
        {
          v102 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        }

        if ((*(v102 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v103 = ((*(v102 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v103 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v102);
        }

        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v103);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v104 = *(*(this + 1) + 24);
        v105 = "vec3";
        if ((v104 > 0xC || ((1 << v104) & 0x1030) == 0) && v104 != 11)
        {
          v105 = "vec2";
        }

        sub_29A008E78(&__p, v105);
        sub_29A008E78(&v228, "gl_TessCoord");
        v106 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        if (!v106)
        {
          v106 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        }

        if ((*(v106 + 15) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v107 = ((*(v106 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v107 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v106);
        }

        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &v228, &__p, v107);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v228, "hd_InstanceID");
        sub_29A008E78(&v227, "uint");
        v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        if (!v108)
        {
          v108 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
        }

        if ((*(v108 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v109 = ((*(v108 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v109 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v108);
        }

        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &v228, &v227, v109);
        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v228, "gl_Position");
        sub_29A008E78(&v227, "vec4");
        sub_29A008E78(&v226, "position");
        memset(&v225, 0, sizeof(v225));
        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &v228, &v227, &v226, &v225);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (*(*(this + 1) + 24))
        {
          v110 = "";
        }

        else
        {
          v110 = "point_size";
        }

        sub_29A008E78(&v228, "gl_PointSize");
        sub_29A008E78(&v227, "float");
        sub_29A008E78(&v226, v110);
        memset(&v225, 0, sizeof(v225));
        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &v228, &v227, &v226, &v225);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        v111 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
        if (v111)
        {
          v6 = 1;
        }

        else
        {
          *a3 = 0;
          *(a3 + 1) = 0;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v231.__r_.__value_.__l.__data_);
        }

        sub_29AB89F90(v232);
        if (v111)
        {
LABEL_671:
          if (*(this + 5367) != 1)
          {
            goto LABEL_672;
          }

          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
          v233 = 128;
          v112 = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(*(this + 1));
          std::to_string(&v231, v112);
          if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v240.__r_.__value_.__l.__data_);
          }

          v240 = v231;
          v113 = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetNumPatchEvalVerts(*(this + 1));
          std::to_string(&v231, v113);
          if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v241.__r_.__value_.__l.__data_);
          }

          v241 = v231;
          v114 = *(this + 1);
          v115 = *(v114 + 6);
          v116 = (v115 > 0xC || ((1 << v115) & 0x1030) == 0) && v115 != 11;
          v239 = v116;
          if (!pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetHgiPrimitiveType(v114))
          {
            v239 = 2;
          }

          v245 = 0;
          v117 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
          v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v118)
          {
            v118 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBC518(v243, v117, v232, v118 + 25, this + 637, *this);
          v119 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
          v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v120)
          {
            v120 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBC518(v243, v119, v232, v120 + 25, this + 634, *this);
          v121 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
          v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v122)
          {
            v122 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBC518(v243, v121, v232, v122 + 25, this + 620, *this);
          v123 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
          v124 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v124)
          {
            v124 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBC518(v243, v123, v232, v124 + 25, this + 640, *this);
          if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens))
          {
            sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBD7E4(v232, this + 643);
          std::stringbuf::str();
          std::stringbuf::str();
          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v126 = &v228;
          }

          else
          {
            v126 = v228.__r_.__value_.__r.__words[0];
          }

          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v127 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v127 = v228.__r_.__value_.__l.__size_;
          }

          v128 = std::string::append(&__p, v126, v127);
          v129 = *&v128->__r_.__value_.__l.__data_;
          v230.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
          *&v230.__r_.__value_.__l.__data_ = v129;
          v128->__r_.__value_.__l.__size_ = 0;
          v128->__r_.__value_.__r.__words[2] = 0;
          v128->__r_.__value_.__r.__words[0] = 0;
          std::stringbuf::str();
          if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v130 = &v227;
          }

          else
          {
            v130 = v227.__r_.__value_.__r.__words[0];
          }

          if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v131 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v131 = v227.__r_.__value_.__l.__size_;
          }

          v132 = std::string::append(&v230, v130, v131);
          v133 = *&v132->__r_.__value_.__l.__data_;
          v231.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
          *&v231.__r_.__value_.__l.__data_ = v133;
          v132->__r_.__value_.__l.__size_ = 0;
          v132->__r_.__value_.__r.__words[2] = 0;
          v132->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v227.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v230.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::stringbuf::str();
          std::stringbuf::str();
          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v134 = &v228;
          }

          else
          {
            v134 = v228.__r_.__value_.__r.__words[0];
          }

          if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v135 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v135 = v228.__r_.__value_.__l.__size_;
          }

          v136 = std::string::append(&__p, v134, v135);
          v137 = *&v136->__r_.__value_.__l.__data_;
          v230.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
          *&v230.__r_.__value_.__l.__data_ = v137;
          v136->__r_.__value_.__l.__size_ = 0;
          v136->__r_.__value_.__r.__words[2] = 0;
          v136->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v138 = &v231;
          if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v138 = v231.__r_.__value_.__r.__words[0];
          }

          v139 = &v230;
          if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v139 = v230.__r_.__value_.__r.__words[0];
          }

          v234 = v138;
          v235 = v139;
          v236 = this + 5336;
          sub_29A008E78(&__p, "hd_BaseInstance");
          sub_29A008E78(&v228, "uint");
          v140 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v140)
          {
            v140 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if ((*(v140 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v141 = ((*(v140 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v141 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v140);
          }

          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v141);
          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&__p, "patch_id");
          sub_29A008E78(&v228, "uint");
          v142 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v142)
          {
            v142 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if ((*(v142 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v143 = ((*(v142 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v143 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v142);
          }

          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v143);
          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v144 = *(*(this + 1) + 24);
          v145 = "vec3";
          if ((v144 > 0xC || ((1 << v144) & 0x1030) == 0) && v144 != 11)
          {
            v145 = "vec2";
          }

          sub_29A008E78(&__p, v145);
          sub_29A008E78(&v228, "gl_TessCoord");
          v146 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v146)
          {
            v146 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if ((*(v146 + 15) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v147 = ((*(v146 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v147 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v146);
          }

          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &v228, &__p, v147);
          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v228, "hd_InstanceID");
          sub_29A008E78(&v227, "uint");
          v148 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v148)
          {
            v148 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if ((*(v148 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v149 = ((*(v148 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v149 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v148);
          }

          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &v228, &v227, v149);
          if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v227.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v228, "gl_Position");
          sub_29A008E78(&v227, "vec4");
          sub_29A008E78(&v226, "position");
          memset(&v225, 0, sizeof(v225));
          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &v228, &v227, &v226, &v225);
          if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v225.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v226.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v227.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          if (*(*(this + 1) + 24))
          {
            v150 = "";
          }

          else
          {
            v150 = "point_size";
          }

          sub_29A008E78(&v228, "gl_PointSize");
          sub_29A008E78(&v227, "float");
          sub_29A008E78(&v226, v150);
          memset(&v225, 0, sizeof(v225));
          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &v228, &v227, &v226, &v225);
          if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v225.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v226.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v227.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228.__r_.__value_.__l.__data_);
          }

          if (*(this + 5368) == 1)
          {
            sub_29A008E78(&v228, "gl_ClipDistance");
            sub_29A008E78(&v227, "float");
            sub_29A008E78(&v226, "clip_distance");
            sub_29A008E78(&v225, "HD_NUM_clipPlanes");
            pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &v228, &v227, &v226, &v225);
            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v226.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v227.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v228.__r_.__value_.__l.__data_);
            }
          }

          v151 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
          if (v151)
          {
            v6 = 1;
          }

          else
          {
            *a3 = 0;
            *(a3 + 1) = 0;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v230.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v231.__r_.__value_.__l.__data_);
          }

          sub_29AB89F90(v232);
          if (v151)
          {
LABEL_672:
            if (*(this + 5363) != 1)
            {
              goto LABEL_673;
            }

            pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
            v233 = 32;
            v245 = 0;
            v152 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
            v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!v153)
            {
              v153 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            sub_29ADBC518(v243, v152, v232, v153 + 9, this + 634, *this);
            v154 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
            v155 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!v155)
            {
              v155 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            sub_29ADBC518(v243, v154, v232, v155 + 9, this + 611, *this);
            v156 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
            v157 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!v157)
            {
              v157 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            sub_29ADBC518(v243, v156, v232, v157 + 9, this + 640, *this);
            if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens))
            {
              sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            sub_29ADBD7E4(v232, this + 643);
            std::stringbuf::str();
            std::stringbuf::str();
            if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v159 = &v228;
            }

            else
            {
              v159 = v228.__r_.__value_.__r.__words[0];
            }

            if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v160 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v160 = v228.__r_.__value_.__l.__size_;
            }

            v161 = std::string::append(&__p, v159, v160);
            v162 = *&v161->__r_.__value_.__l.__data_;
            v230.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
            *&v230.__r_.__value_.__l.__data_ = v162;
            v161->__r_.__value_.__l.__size_ = 0;
            v161->__r_.__value_.__r.__words[2] = 0;
            v161->__r_.__value_.__r.__words[0] = 0;
            std::stringbuf::str();
            if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v163 = &v227;
            }

            else
            {
              v163 = v227.__r_.__value_.__r.__words[0];
            }

            if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v164 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v164 = v227.__r_.__value_.__l.__size_;
            }

            v165 = std::string::append(&v230, v163, v164);
            v166 = *&v165->__r_.__value_.__l.__data_;
            v231.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
            *&v231.__r_.__value_.__l.__data_ = v166;
            v165->__r_.__value_.__l.__size_ = 0;
            v165->__r_.__value_.__r.__words[2] = 0;
            v165->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v227.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v230.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v228.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::stringbuf::str();
            std::stringbuf::str();
            if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v167 = &v228;
            }

            else
            {
              v167 = v228.__r_.__value_.__r.__words[0];
            }

            if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v168 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v168 = v228.__r_.__value_.__l.__size_;
            }

            v169 = std::string::append(&__p, v167, v168);
            v170 = *&v169->__r_.__value_.__l.__data_;
            v230.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
            *&v230.__r_.__value_.__l.__data_ = v170;
            v169->__r_.__value_.__l.__size_ = 0;
            v169->__r_.__value_.__r.__words[2] = 0;
            v169->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v228.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v171 = &v231;
            if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v171 = v231.__r_.__value_.__r.__words[0];
            }

            v172 = &v230;
            if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v172 = v230.__r_.__value_.__r.__words[0];
            }

            v234 = v171;
            v235 = v172;
            v236 = this + 5240;
            if (*(this + 5368) == 1)
            {
              sub_29A008E78(&__p, "gl_ClipDistance");
              sub_29A008E78(&v228, "float");
              sub_29A008E78(&v227, "clip_distance");
              sub_29A008E78(&v226, "HD_NUM_clipPlanes");
              pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v232, &__p, &v228, &v227, &v226);
              if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v226.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v227.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v173 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
            if (v173)
            {
              v6 = 1;
            }

            else
            {
              *a3 = 0;
              *(a3 + 1) = 0;
            }

            if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v230.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v231.__r_.__value_.__l.__data_);
            }

            sub_29AB89F90(v232);
            if (v173)
            {
LABEL_673:
              if (*(this + 5364) != 1)
              {
                goto LABEL_674;
              }

              pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
              v233 = 2;
              v245 = 0;
              v174 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
              v175 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v175)
              {
                v175 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              sub_29ADBC518(v243, v174, v232, v175 + 8, this + 634, *this);
              v176 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
              v177 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v177)
              {
                v177 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              sub_29ADBC518(v243, v176, v232, v177 + 8, this + 614, *this);
              v178 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
              v179 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v179)
              {
                v179 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              sub_29ADBC518(v243, v178, v232, v179 + 8, this + 640, *this);
              if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens))
              {
                sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              sub_29ADBD7E4(v232, this + 643);
              std::stringbuf::str();
              std::stringbuf::str();
              if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v181 = &v228;
              }

              else
              {
                v181 = v228.__r_.__value_.__r.__words[0];
              }

              if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v182 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v182 = v228.__r_.__value_.__l.__size_;
              }

              v183 = std::string::append(&__p, v181, v182);
              v184 = *&v183->__r_.__value_.__l.__data_;
              v230.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
              *&v230.__r_.__value_.__l.__data_ = v184;
              v183->__r_.__value_.__l.__size_ = 0;
              v183->__r_.__value_.__r.__words[2] = 0;
              v183->__r_.__value_.__r.__words[0] = 0;
              std::stringbuf::str();
              if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v185 = &v227;
              }

              else
              {
                v185 = v227.__r_.__value_.__r.__words[0];
              }

              if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v186 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v186 = v227.__r_.__value_.__l.__size_;
              }

              v187 = std::string::append(&v230, v185, v186);
              v188 = *&v187->__r_.__value_.__l.__data_;
              v231.__r_.__value_.__r.__words[2] = v187->__r_.__value_.__r.__words[2];
              *&v231.__r_.__value_.__l.__data_ = v188;
              v187->__r_.__value_.__l.__size_ = 0;
              v187->__r_.__value_.__r.__words[2] = 0;
              v187->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v227.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v230.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              std::stringbuf::str();
              std::stringbuf::str();
              if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v189 = &v228;
              }

              else
              {
                v189 = v228.__r_.__value_.__r.__words[0];
              }

              if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v190 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v190 = v228.__r_.__value_.__l.__size_;
              }

              v191 = std::string::append(&__p, v189, v190);
              v192 = *&v191->__r_.__value_.__l.__data_;
              v230.__r_.__value_.__r.__words[2] = v191->__r_.__value_.__r.__words[2];
              *&v230.__r_.__value_.__l.__data_ = v192;
              v191->__r_.__value_.__l.__size_ = 0;
              v191->__r_.__value_.__r.__words[2] = 0;
              v191->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v193 = &v231;
              if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v193 = v231.__r_.__value_.__r.__words[0];
              }

              v194 = &v230;
              if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v194 = v230.__r_.__value_.__r.__words[0];
              }

              v234 = v193;
              v235 = v194;
              v236 = this + 5264;
              sub_29A008E78(&__p, "gl_PrimitiveID");
              sub_29A008E78(&v228, "uint");
              v195 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
              if (!v195)
              {
                v195 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
              }

              if ((*(v195 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v196 = ((*(v195 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v196 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v195);
              }

              pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v196);
              if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              sub_29A008E78(&__p, "gl_FrontFacing");
              sub_29A008E78(&v228, "BOOL");
              v197 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
              if (!v197)
              {
                v197 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
              }

              if ((*(v197 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v198 = ((*(v197 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v198 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v197);
              }

              pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v198);
              if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              sub_29A008E78(&__p, "gl_FragCoord");
              sub_29A008E78(&v228, "vec4");
              v199 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
              if (!v199)
              {
                v199 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
              }

              if ((*v199 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v200 = ((*v199 & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v200 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v199);
              }

              pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v200);
              if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v201 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
              if ((*((*(*v201 + 200))(v201) + 48) & 0x10) != 0)
              {
                sub_29A008E78(&__p, "hd_BaryCoordNoPersp");
                sub_29A008E78(&v228, "vec3");
                v202 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
                if (!v202)
                {
                  v202 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
                }

                if ((*(v202 + 18) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v203 = ((*(v202 + 18) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v203 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v202);
                }

                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v232, &__p, &v228, v203);
                if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v228.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v204 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
              if (v204)
              {
                v6 = 1;
              }

              else
              {
                *a3 = 0;
                *(a3 + 1) = 0;
              }

              if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v230.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v231.__r_.__value_.__l.__data_);
              }

              sub_29AB89F90(v232);
              if (v204)
              {
LABEL_674:
                if (*(this + 5365) != 1)
                {
                  goto LABEL_660;
                }

                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v232);
                v233 = 4;
                v237 = 0x100000040;
                v238 = 1;
                pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateComputeParameters(this, v232);
                v245 = 0;
                v205 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
                v206 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                if (!v206)
                {
                  v206 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                }

                sub_29ADBC518(v243, v205, v232, v206 + 3, this + 637, *this);
                v207 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
                v208 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                if (!v208)
                {
                  v208 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                }

                sub_29ADBC518(v243, v207, v232, v208 + 3, this + 634, *this);
                v209 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v249);
                v210 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                if (!v210)
                {
                  v210 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                }

                sub_29ADBC518(v243, v209, v232, v210 + 3, this + 623, *this);
                sub_29A008E78(&v231, "indexEnd");
                v211 = atomic_load(&qword_2A174E9E0);
                if (!v211)
                {
                  v211 = sub_29ADC4754();
                }

                if ((*(v211 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v212 = ((*(v211 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v212 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v211);
                }

                memset(&v230, 0, sizeof(v230));
                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(v232, &v231, v212, &v230);
                if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v230.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v231.__r_.__value_.__l.__data_);
                }

                std::stringbuf::str();
                std::stringbuf::str();
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v213 = &__p;
                }

                else
                {
                  v213 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v214 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v214 = __p.__r_.__value_.__l.__size_;
                }

                v215 = std::string::append(&v230, v213, v214);
                v216 = *&v215->__r_.__value_.__l.__data_;
                v231.__r_.__value_.__r.__words[2] = v215->__r_.__value_.__r.__words[2];
                *&v231.__r_.__value_.__l.__data_ = v216;
                v215->__r_.__value_.__l.__size_ = 0;
                v215->__r_.__value_.__r.__words[2] = 0;
                v215->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v230.__r_.__value_.__l.__data_);
                }

                std::stringbuf::str();
                std::stringbuf::str();
                if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v217 = &v228;
                }

                else
                {
                  v217 = v228.__r_.__value_.__r.__words[0];
                }

                if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v218 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v218 = v228.__r_.__value_.__l.__size_;
                }

                v219 = std::string::append(&__p, v217, v218);
                v220 = *&v219->__r_.__value_.__l.__data_;
                v230.__r_.__value_.__r.__words[2] = v219->__r_.__value_.__r.__words[2];
                *&v230.__r_.__value_.__l.__data_ = v220;
                v219->__r_.__value_.__l.__size_ = 0;
                v219->__r_.__value_.__r.__words[2] = 0;
                v219->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v228.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v221 = &v231;
                if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v221 = v231.__r_.__value_.__r.__words[0];
                }

                v222 = &v230;
                if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v222 = v230.__r_.__value_.__r.__words[0];
                }

                v234 = v221;
                v235 = v222;
                v236 = this + 5288;
                v223 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v242, v232);
                if (v223)
                {
                  v6 = 1;
                }

                else
                {
                  *a3 = 0;
                  *(a3 + 1) = 0;
                }

                if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v230.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v231.__r_.__value_.__l.__data_);
                }

                sub_29AB89F90(v232);
                if (v223)
                {
LABEL_660:
                  if (v6)
                  {
                    *a3 = v242;
                    a3 = &v242;
                  }

                  *a3 = 0;
                  *(a3 + 1) = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(&v242 + 1))
  {
    sub_29A014BEC(*(&v242 + 1));
  }

  sub_29A155EF4(v246);
  return sub_29A155EF4(v243);
}

void sub_29ADB6A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, char a54)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  sub_29AB89F90(&a54);
  v57 = *(v55 - 200);
  if (v57)
  {
    sub_29A014BEC(v57);
  }

  sub_29A155EF4(v54 + 48);
  sub_29A155EF4(v55 - 192);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_CompileWithGeneratedGLSLResources@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2@<X1>, __int128 *a3@<X8>)
{
  v169 = a2;
  memset(v163, 0, sizeof(v163));
  v164 = 1065353216;
  v165 = 0;
  memset(v166, 0, sizeof(v166));
  v168 = 0;
  v167 = 1065353216;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ADC7A44((v5 + 184), &v169, &v162);
  v6 = *(this + 5360);
  if (v6 != 1)
  {
    goto LABEL_375;
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v157);
  sub_29A008864(v150);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v7)
  {
    v7 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29ADBAB34(v163, v157, v150, v7 + 28, this + 637, *this);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v8)
  {
    v8 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29ADBAB34(v163, v157, v150, v8 + 28, this + 634, *this);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v9)
  {
    v9 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29ADBAB34(v163, v157, v150, v9 + 28, this + 602, *this);
  std::stringbuf::str();
  std::stringbuf::str();
  std::stringbuf::str();
  if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v143;
  }

  else
  {
    v10 = v143.__r_.__value_.__r.__words[0];
  }

  if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v143.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v143.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v144, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v145.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v145.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::stringbuf::str();
  if ((v142 & 0x80u) == 0)
  {
    v14 = &v140;
  }

  else
  {
    v14 = v140;
  }

  if ((v142 & 0x80u) == 0)
  {
    v15 = v142;
  }

  else
  {
    v15 = v141;
  }

  v16 = std::string::append(&v145, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v146.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v146.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::stringbuf::str();
  if ((v139 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v139 & 0x80u) == 0)
  {
    v19 = v139;
  }

  else
  {
    v19 = v138;
  }

  v20 = std::string::append(&v146, p_p, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v147.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v147.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v139 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (v142 < 0)
  {
    operator delete(v140);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v158 = 1;
  v22 = v148;
  if (v149 < 0)
  {
    v22 = v148[0];
  }

  v23 = &v147;
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v147.__r_.__value_.__r.__words[0];
  }

  v159 = v22;
  v160 = v23;
  v161 = this + 5168;
  sub_29A008E78(&v146, "hd_VertexID");
  sub_29A008E78(&v145, "uint");
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v24)
  {
    v24 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v24 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v24 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v157, &v146, &v145, EmptyString);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v146, "hd_InstanceID");
  sub_29A008E78(&v145, "uint");
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v26)
  {
    v26 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v26 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v27 = ((*(v26 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v157, &v146, &v145, v27);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v146, "hd_BaseInstance");
  sub_29A008E78(&v145, "uint");
  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v28)
  {
    v28 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v28 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v29 = ((*(v28 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v29 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v157, &v146, &v145, v29);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (*(this + 5368) == 1)
  {
    sub_29A008E78(&v146, "gl_ClipDistance");
    sub_29A008E78(&v145, "float");
    sub_29A008E78(&v144, "clip_distance");
    sub_29A008E78(&v143, "HD_NUM_clipPlanes");
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v157, &v146, &v145, &v144, &v143);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  v30 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v162, v157);
  if ((v30 & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148[0]);
  }

  v150[0] = *MEMORY[0x29EDC9528];
  v31 = *(MEMORY[0x29EDC9528] + 72);
  *(v150 + *(v150[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v151 = v31;
  v152 = MEMORY[0x29EDC9570] + 16;
  if (v155 < 0)
  {
    operator delete(v154);
  }

  v152 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v153);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v156);
  sub_29AB89F90(v157);
  if (v30)
  {
LABEL_375:
    if (*(this + 5361) != 1)
    {
      goto LABEL_376;
    }

    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v157);
    sub_29A008864(v150);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v32)
    {
      v32 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    sub_29ADBAB34(v163, v157, v150, v32 + 22, this + 634, *this);
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v33)
    {
      v33 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    sub_29ADBAB34(v163, v157, v150, v33 + 22, this + 605, *this);
    std::stringbuf::str();
    std::stringbuf::str();
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v146;
    }

    else
    {
      v34 = v146.__r_.__value_.__r.__words[0];
    }

    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v146.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v147, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v149 = v36->__r_.__value_.__r.__words[2];
    *v148 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    std::stringbuf::str();
    std::stringbuf::str();
    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v143;
    }

    else
    {
      v38 = v143.__r_.__value_.__r.__words[0];
    }

    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v143.__r_.__value_.__l.__size_;
    }

    v40 = std::string::append(&v144, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::stringbuf::str();
    if ((v142 & 0x80u) == 0)
    {
      v42 = &v140;
    }

    else
    {
      v42 = v140;
    }

    if ((v142 & 0x80u) == 0)
    {
      v43 = v142;
    }

    else
    {
      v43 = v141;
    }

    v44 = std::string::append(&v145, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    std::stringbuf::str();
    if ((v139 & 0x80u) == 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p;
    }

    if ((v139 & 0x80u) == 0)
    {
      v47 = v139;
    }

    else
    {
      v47 = v138;
    }

    v48 = std::string::append(&v146, v46, v47);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if (v139 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (v142 < 0)
    {
      operator delete(v140);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    v158 = 8;
    v50 = v148;
    if (v149 < 0)
    {
      v50 = v148[0];
    }

    v51 = &v147;
    if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v147.__r_.__value_.__r.__words[0];
    }

    v159 = v50;
    v160 = v51;
    v161 = this + 5192;
    v52 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v162, v157);
    if (v52)
    {
      v6 = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 1) = 0;
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148[0]);
    }

    v150[0] = *MEMORY[0x29EDC9528];
    v53 = *(MEMORY[0x29EDC9528] + 72);
    *(v150 + *(v150[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
    v151 = v53;
    v152 = MEMORY[0x29EDC9570] + 16;
    if (v155 < 0)
    {
      operator delete(v154);
    }

    v152 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v153);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](v156);
    sub_29AB89F90(v157);
    if (v52)
    {
LABEL_376:
      if (*(this + 5362) != 1)
      {
        goto LABEL_377;
      }

      pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v157);
      sub_29A008864(v150);
      v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v54)
      {
        v54 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      sub_29ADBAB34(v163, v157, v150, v54 + 23, this + 634, *this);
      v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v55)
      {
        v55 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      sub_29ADBAB34(v163, v157, v150, v55 + 23, this + 608, *this);
      std::stringbuf::str();
      std::stringbuf::str();
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v146;
      }

      else
      {
        v56 = v146.__r_.__value_.__r.__words[0];
      }

      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v146.__r_.__value_.__l.__size_;
      }

      v58 = std::string::append(&v147, v56, v57);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v149 = v58->__r_.__value_.__r.__words[2];
      *v148 = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      std::stringbuf::str();
      std::stringbuf::str();
      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v143;
      }

      else
      {
        v60 = v143.__r_.__value_.__r.__words[0];
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v61 = v143.__r_.__value_.__l.__size_;
      }

      v62 = std::string::append(&v144, v60, v61);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v145.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v145.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      std::stringbuf::str();
      if ((v142 & 0x80u) == 0)
      {
        v64 = &v140;
      }

      else
      {
        v64 = v140;
      }

      if ((v142 & 0x80u) == 0)
      {
        v65 = v142;
      }

      else
      {
        v65 = v141;
      }

      v66 = std::string::append(&v145, v64, v65);
      v67 = *&v66->__r_.__value_.__l.__data_;
      v146.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
      *&v146.__r_.__value_.__l.__data_ = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      std::stringbuf::str();
      if ((v139 & 0x80u) == 0)
      {
        v68 = &__p;
      }

      else
      {
        v68 = __p;
      }

      if ((v139 & 0x80u) == 0)
      {
        v69 = v139;
      }

      else
      {
        v69 = v138;
      }

      v70 = std::string::append(&v146, v68, v69);
      v71 = *&v70->__r_.__value_.__l.__data_;
      v147.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
      *&v147.__r_.__value_.__l.__data_ = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      if (v139 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if (v142 < 0)
      {
        operator delete(v140);
      }

      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      v158 = 16;
      v72 = v148;
      if (v149 < 0)
      {
        v72 = v148[0];
      }

      v73 = &v147;
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v147.__r_.__value_.__r.__words[0];
      }

      v159 = v72;
      v160 = v73;
      v161 = this + 5216;
      if (*(this + 5368) == 1)
      {
        sub_29A008E78(&v146, "gl_ClipDistance");
        sub_29A008E78(&v145, "float");
        sub_29A008E78(&v144, "clip_distance");
        sub_29A008E78(&v143, "HD_NUM_clipPlanes");
        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v157, &v146, &v145, &v144, &v143);
        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v144.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v146.__r_.__value_.__l.__data_);
        }
      }

      v74 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v162, v157);
      if (v74)
      {
        v6 = 1;
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v149) < 0)
      {
        operator delete(v148[0]);
      }

      v150[0] = *MEMORY[0x29EDC9528];
      v75 = *(MEMORY[0x29EDC9528] + 72);
      *(v150 + *(v150[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
      v151 = v75;
      v152 = MEMORY[0x29EDC9570] + 16;
      if (v155 < 0)
      {
        operator delete(v154);
      }

      v152 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v153);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](v156);
      sub_29AB89F90(v157);
      if (v74)
      {
LABEL_377:
        if (*(this + 5363) != 1)
        {
          goto LABEL_378;
        }

        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v157);
        sub_29A008864(v150);
        v76 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v76)
        {
          v76 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBAB34(v163, v157, v150, v76 + 9, this + 634, *this);
        v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v77)
        {
          v77 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBAB34(v163, v157, v150, v77 + 9, this + 611, *this);
        v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v78)
        {
          v78 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBAB34(v163, v157, v150, v78 + 9, this + 640, *this);
        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens))
        {
          sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        sub_29ADBB794(v150, this + 643);
        std::stringbuf::str();
        std::stringbuf::str();
        if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &v146;
        }

        else
        {
          v80 = v146.__r_.__value_.__r.__words[0];
        }

        if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v81 = v146.__r_.__value_.__l.__size_;
        }

        v82 = std::string::append(&v147, v80, v81);
        v83 = *&v82->__r_.__value_.__l.__data_;
        v149 = v82->__r_.__value_.__r.__words[2];
        *v148 = v83;
        v82->__r_.__value_.__l.__size_ = 0;
        v82->__r_.__value_.__r.__words[2] = 0;
        v82->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v146.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v147.__r_.__value_.__l.__data_);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v143;
        }

        else
        {
          v84 = v143.__r_.__value_.__r.__words[0];
        }

        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = v143.__r_.__value_.__l.__size_;
        }

        v86 = std::string::append(&v144, v84, v85);
        v87 = *&v86->__r_.__value_.__l.__data_;
        v145.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v145.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        std::stringbuf::str();
        if ((v142 & 0x80u) == 0)
        {
          v88 = &v140;
        }

        else
        {
          v88 = v140;
        }

        if ((v142 & 0x80u) == 0)
        {
          v89 = v142;
        }

        else
        {
          v89 = v141;
        }

        v90 = std::string::append(&v145, v88, v89);
        v91 = *&v90->__r_.__value_.__l.__data_;
        v146.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
        *&v146.__r_.__value_.__l.__data_ = v91;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        std::stringbuf::str();
        if ((v139 & 0x80u) == 0)
        {
          v92 = &__p;
        }

        else
        {
          v92 = __p;
        }

        if ((v139 & 0x80u) == 0)
        {
          v93 = v139;
        }

        else
        {
          v93 = v138;
        }

        v94 = std::string::append(&v146, v92, v93);
        v95 = *&v94->__r_.__value_.__l.__data_;
        v147.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v147.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        if (v139 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v146.__r_.__value_.__l.__data_);
        }

        if (v142 < 0)
        {
          operator delete(v140);
        }

        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v144.__r_.__value_.__l.__data_);
        }

        v158 = 32;
        v96 = v148;
        if (v149 < 0)
        {
          v96 = v148[0];
        }

        v97 = &v147;
        if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v97 = v147.__r_.__value_.__r.__words[0];
        }

        v159 = v96;
        v160 = v97;
        v161 = this + 5240;
        if (*(this + 5368) == 1)
        {
          sub_29A008E78(&v146, "gl_ClipDistance");
          sub_29A008E78(&v145, "float");
          sub_29A008E78(&v144, "clip_distance");
          sub_29A008E78(&v143, "HD_NUM_clipPlanes");
          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(v157, &v146, &v145, &v144, &v143);
          if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v143.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v144.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v146.__r_.__value_.__l.__data_);
          }
        }

        v98 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v162, v157);
        if (v98)
        {
          v6 = 1;
        }

        else
        {
          *a3 = 0;
          *(a3 + 1) = 0;
        }

        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v147.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v149) < 0)
        {
          operator delete(v148[0]);
        }

        v150[0] = *MEMORY[0x29EDC9528];
        v99 = *(MEMORY[0x29EDC9528] + 72);
        *(v150 + *(v150[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
        v151 = v99;
        v152 = MEMORY[0x29EDC9570] + 16;
        if (v155 < 0)
        {
          operator delete(v154);
        }

        v152 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v153);
        std::iostream::~basic_iostream();
        MEMORY[0x29C2C4390](v156);
        sub_29AB89F90(v157);
        if (v98)
        {
LABEL_378:
          if (*(this + 5364) != 1)
          {
            goto LABEL_367;
          }

          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(v157);
          sub_29A008864(v150);
          v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v100)
          {
            v100 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBAB34(v163, v157, v150, v100 + 8, this + 634, *this);
          v101 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v101)
          {
            v101 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBAB34(v163, v157, v150, v101 + 8, this + 614, *this);
          v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!v102)
          {
            v102 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBAB34(v163, v157, v150, v102 + 8, this + 640, *this);
          if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens))
          {
            sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          sub_29ADBB794(v150, this + 643);
          std::stringbuf::str();
          std::stringbuf::str();
          if ((v142 & 0x80u) == 0)
          {
            v104 = &v140;
          }

          else
          {
            v104 = v140;
          }

          if ((v142 & 0x80u) == 0)
          {
            v105 = v142;
          }

          else
          {
            v105 = v141;
          }

          v106 = std::string::append(&v143, v104, v105);
          v107 = *&v106->__r_.__value_.__l.__data_;
          v144.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
          *&v144.__r_.__value_.__l.__data_ = v107;
          v106->__r_.__value_.__l.__size_ = 0;
          v106->__r_.__value_.__r.__words[2] = 0;
          v106->__r_.__value_.__r.__words[0] = 0;
          std::stringbuf::str();
          if ((v139 & 0x80u) == 0)
          {
            v108 = &__p;
          }

          else
          {
            v108 = __p;
          }

          if ((v139 & 0x80u) == 0)
          {
            v109 = v139;
          }

          else
          {
            v109 = v138;
          }

          v110 = std::string::append(&v144, v108, v109);
          v111 = *&v110->__r_.__value_.__l.__data_;
          v145.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v145.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          std::stringbuf::str();
          if ((v136 & 0x80u) == 0)
          {
            v112 = v135;
          }

          else
          {
            v112 = v135[0];
          }

          if ((v136 & 0x80u) == 0)
          {
            v113 = v136;
          }

          else
          {
            v113 = v135[1];
          }

          v114 = std::string::append(&v145, v112, v113);
          v115 = *&v114->__r_.__value_.__l.__data_;
          v146.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
          *&v146.__r_.__value_.__l.__data_ = v115;
          v114->__r_.__value_.__l.__size_ = 0;
          v114->__r_.__value_.__r.__words[2] = 0;
          v114->__r_.__value_.__r.__words[0] = 0;
          std::stringbuf::str();
          if ((v134 & 0x80u) == 0)
          {
            v116 = v133;
          }

          else
          {
            v116 = v133[0];
          }

          if ((v134 & 0x80u) == 0)
          {
            v117 = v134;
          }

          else
          {
            v117 = v133[1];
          }

          v118 = std::string::append(&v146, v116, v117);
          v119 = *&v118->__r_.__value_.__l.__data_;
          v147.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
          *&v147.__r_.__value_.__l.__data_ = v119;
          v118->__r_.__value_.__l.__size_ = 0;
          v118->__r_.__value_.__r.__words[2] = 0;
          v118->__r_.__value_.__r.__words[0] = 0;
          std::stringbuf::str();
          if ((v132 & 0x80u) == 0)
          {
            v120 = v131;
          }

          else
          {
            v120 = v131[0];
          }

          if ((v132 & 0x80u) == 0)
          {
            v121 = v132;
          }

          else
          {
            v121 = v131[1];
          }

          v122 = std::string::append(&v147, v120, v121);
          v123 = *&v122->__r_.__value_.__l.__data_;
          v149 = v122->__r_.__value_.__r.__words[2];
          *v148 = v123;
          v122->__r_.__value_.__l.__size_ = 0;
          v122->__r_.__value_.__r.__words[2] = 0;
          v122->__r_.__value_.__r.__words[0] = 0;
          if (v132 < 0)
          {
            operator delete(v131[0]);
          }

          if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v147.__r_.__value_.__l.__data_);
          }

          if (v134 < 0)
          {
            operator delete(v133[0]);
          }

          if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v146.__r_.__value_.__l.__data_);
          }

          if (v136 < 0)
          {
            operator delete(v135[0]);
          }

          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
          }

          if (v139 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v144.__r_.__value_.__l.__data_);
          }

          if (v142 < 0)
          {
            operator delete(v140);
          }

          if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v143.__r_.__value_.__l.__data_);
          }

          v158 = 2;
          v124 = v148;
          if (v149 < 0)
          {
            v124 = v148[0];
          }

          v160 = v124;
          v161 = this + 5264;
          Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v169);
          if ((*((*(*Hgi + 200))(Hgi) + 48) & 0x10) != 0)
          {
            sub_29A008E78(&v147, "hd_BaryCoordNoPersp");
            sub_29A008E78(&v146, "vec3");
            v126 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
            if (!v126)
            {
              v126 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
            }

            if ((*(v126 + 18) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v127 = ((*(v126 + 18) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v127 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v126);
            }

            pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(v157, &v147, &v146, v127);
            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v147.__r_.__value_.__l.__data_);
            }
          }

          v128 = pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::CompileShader(v162, v157);
          if (v128)
          {
            v6 = 1;
          }

          else
          {
            *a3 = 0;
            *(a3 + 1) = 0;
          }

          if (SHIBYTE(v149) < 0)
          {
            operator delete(v148[0]);
          }

          v150[0] = *MEMORY[0x29EDC9528];
          v129 = *(MEMORY[0x29EDC9528] + 72);
          *(v150 + *(v150[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v151 = v129;
          v152 = MEMORY[0x29EDC9570] + 16;
          if (v155 < 0)
          {
            operator delete(v154);
          }

          v152 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v153);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](v156);
          sub_29AB89F90(v157);
          if (v128)
          {
LABEL_367:
            if (v6)
            {
              *a3 = v162;
              a3 = &v162;
            }

            *a3 = 0;
            *(a3 + 1) = 0;
          }
        }
      }
    }
  }

  if (*(&v162 + 1))
  {
    sub_29A014BEC(*(&v162 + 1));
  }

  sub_29A155EF4(v166);
  return sub_29A155EF4(v163);
}

void sub_29ADB891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  sub_29A008B0C(&a52);
  sub_29AB89F90(&STACK[0x240]);
  v55 = *(v53 - 200);
  if (v55)
  {
    sub_29A014BEC(v55);
  }

  sub_29A155EF4(v52 + 48);
  sub_29A155EF4(v53 - 192);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::CompileComputeProgram@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::CompileComputeProgram(HdStResourceRegistry *const)");
  if (*this || (__str.__r_.__value_.__r.__words[0] = "hdSt/codeGen.cpp", __str.__r_.__value_.__l.__size_ = "CompileComputeProgram", __str.__r_.__value_.__r.__words[2] = 2458, v13 = "HdStGLSLProgramSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::CompileComputeProgram(HdStResourceRegistry *const)", v14 = 0, v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Metadata not properly initialized by resource binder.", v6, v7), result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__str, "_metaData", v11), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetShaderResourceLayouts(this, this + 3);
    sub_29A008E78(&__str, "");
    std::string::operator=(this + 6, &__str);
    sub_29A009014(this + 80);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 424), &__str);
    sub_29A009014(this + 360);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 704), &__str);
    sub_29A009014(this + 640);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=(this + 41, &__str);
    sub_29A009014(this + 920);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 1264), &__str);
    sub_29A009014(this + 1200);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 1544), &__str);
    sub_29A009014(this + 1480);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 2384), &__str);
    sub_29A009014(this + 2320);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=(this + 111, &__str);
    sub_29A009014(this + 2600);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 2944), &__str);
    sub_29A009014(this + 2880);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=(this + 76, &__str);
    sub_29A009014(this + 1760);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 2104), &__str);
    sub_29A009014(this + 2040);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 3224), &__str);
    sub_29A009014(this + 3160);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=(this + 146, &__str);
    sub_29A009014(this + 3440);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 3784), &__str);
    sub_29A009014(this + 3720);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "");
    std::string::operator=((this + 4064), &__str);
    sub_29A009014(this + 4000);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A00911C(this + 9, "\n// //////// Codegen Defines //////// \n", 39);
    sub_29A00911C(this + 44, "\n// //////// Codegen Decl //////// \n", 36);
    sub_29A00911C(this + 79, "\n// //////// Codegen Accessors //////// \n", 41);
    sub_29A00911C(this + 114, "\n// //////// Codegen VS Source //////// \n", 41);
    sub_29A00911C(this + 149, "\n// //////// Codegen TCS Source //////// \n", 42);
    sub_29A00911C(this + 184, "\n// //////// Codegen TES Source //////// \n", 42);
    sub_29A00911C(this + 289, "\n// //////// Codegen GS Source //////// \n", 41);
    sub_29A00911C(this + 324, "\n// //////// Codegen FS Source //////// \n", 41);
    sub_29A00911C(this + 359, "\n// //////// Codegen CS Source //////// \n", 41);
    sub_29A00911C(this + 394, "\n// //////// Codegen Proc VS //////// \n", 39);
    sub_29A00911C(this + 429, "\n// //////// Codegen Proc TCS //////// \n", 40);
    sub_29A00911C(this + 464, "\n// //////// Codegen Proc TES //////// \n", 40);
    sub_29A00911C(this + 499, "\n// //////// Codegen Proc GS //////// \n", 39);
    v8 = sub_29A00911C(this + 9, "#define HD_SHADER_API ", 22);
    v9 = MEMORY[0x29C2C1ED0](v8, 2);
    sub_29A00911C(v9, "\n", 1);
    sub_29A00911C(this + 9, "// Alias hgi vec and matrix types to hd.\n#define hd_ivec3 hgi_ivec3\n#define hd_vec3 hgi_vec3\n#define hd_dvec3 hgi_dvec3\n#define hd_mat3 hgi_mat3\n#define hd_dmat3 hgi_dmat3\n\nivec3 hd_ivec3_get(hd_ivec3 v) { return ivec3(v.x, v.y, v.z); }\nivec3 hd_ivec3_get(ivec3 v)    { return v; }\nvec3  hd_vec3_get(hd_vec3 v)   { return vec3(v.x, v.y, v.z); }\nvec3  hd_vec3_get(vec3 v)      { return v; }\ndvec3 hd_dvec3_get(hd_dvec3 v) { return dvec3(v.x, v.y, v.z); }\ndvec3 hd_dvec3_get(dvec3 v)    { return v; }\nmat3  hd_mat3_get(hd_mat3 v)   { return mat3(v.m00, v.m01, v.m02,\n                                             v.m10, v.m11, v.m12,\n                                             v.m20, v.m21, v.m22); }\nmat3  hd_mat3_get(mat3 v)      { return v; }\ndmat3 hd_dmat3_get(hd_dmat3 v) { return dmat3(v.m00, v.m01, v.m02,\n                                              v.m10, v.m11, v.m12,\n                                              v.m20, v.m21, v.m22); }\ndmat3 hd_dmat3_get(dmat3 v)    { return v; }\nhd_ivec3 hd_ivec3_set(hd_ivec3 v) { return v; }\nhd_ivec3 hd_ivec3_set(ivec3 v)    { return hd_ivec3(v.x, v.y, v.z); }\nhd_vec3 hd_vec3_set(hd_vec3 v)    { return v; }\nhd_vec3 hd_vec3_set(vec3 v)       { return hd_vec3(v.x, v.y, v.z); }\nhd_dvec3 hd_dvec3_set(hd_dvec3 v) { return v; }\nhd_dvec3 hd_dvec3_set(dvec3 v)    { return hd_dvec3(v.x, v.y, v.z); }\nhd_mat3  hd_mat3_set(hd_mat3 v)   { return v; }\nhd_mat3  hd_mat3_set(mat3 v)      { return hd_mat3(v[0][0], v[0][1], v[0][2],\n                                                   v[1][0], v[1][1], v[1][2],\n                                                   v[2][0], v[2][1], v[2][2]); }\nhd_dmat3 hd_dmat3_set(hd_dmat3 v) { return v; }\nhd_dmat3 hd_dmat3_set(dmat3 v)    { return hd_dmat3(v[0][0], v[0][1], v[0][2],\n                                                    v[1][0], v[1][1], v[1][2],\n                                                    v[2][0], v[2][1], v[2][2]); }\nint hd_int_get(int v)          { return v; }\nint hd_int_get(ivec2 v)        { return v.x; }\nint hd_int_get(ivec3 v)        { return v.x; }\nint hd_int_get(ivec4 v)        { return v.x; }\nvec3 hd_sample_udim(vec2 v) {\nvec2 vf = floor(v);\nreturn vec3(v.x - vf.x, v.y - vf.y, clamp(vf.x, 0.0, 10.0) + 10.0 * vf.y);\n}\nvec4 hd_vec4_2_10_10_10_get(int v) {\n    ivec4 unpacked = ivec4((v & 0x3ff) << 22, (v & 0xffc00) << 12,\n                           (v & 0x3ff00000) << 2, (v & 0xc0000000));\n    return vec4(unpacked) / 2147483647.0; }\nint hd_vec4_2_10_10_10_set(vec4 v) {\n    return((int(v.x * 511.0) & 0x3ff) |\n            ((int(v.y * 511.0) & 0x3ff) << 10) |\n            ((int(v.z * 511.0) & 0x3ff) << 20) |\n            ((int(v.w) & 0x1) << 30)); }\nvec2 hd_half2_get(uint v) {\n    return unpackHalf2x16(v); }\nuint hd_half2_set(vec2 v) {\n    return packHalf2x16(v); }\nvec4 hd_half4_get(uvec2 v) {\n    return vec4(unpackHalf2x16(v.x), unpackHalf2x16(v.y)); }\nuvec2 hd_half4_set(vec4 v) {\n    return uvec2(packHalf2x16(v.xy), packHalf2x16(v.zw)); }\n", 2965);
    *(this + 5365) = 1;
    result = pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_CompileWithGeneratedHgiResources(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v15)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateComputeParameters(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this, pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2)
{
  sub_29A008864(v135);
  if (*(*this + 200) || *(*this + 224))
  {
    sub_29A008E78(&__p, "vertexOffset");
    v3 = atomic_load(&qword_2A174E9E0);
    if (!v3)
    {
      v3 = sub_29ADC4754();
    }

    if ((*(v3 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v3 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
    }

    memset(&v141, 0, sizeof(v141));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a2, &__p, EmptyString, &v141);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_29A00911C(&v136, "// Read-Write Accessors & Mutators\n", 35);
  v121 = this;
  v5 = *this;
  v117 = (this + 72);
  v6 = &__p.__r_.__value_.__r.__words[2];
  v133 = *(*this + 184);
  v134 = v5 + 192;
  v118 = *MEMORY[0x29EDC9528];
  v119 = *(MEMORY[0x29EDC9528] + 64);
  v120 = *(MEMORY[0x29EDC9528] + 72);
  v7 = "  ";
  while (v133 != v134)
  {
    v8 = *sub_29ADA9028(&v133);
    v9 = *sub_29ADA9028(&v133);
    v10 = (*sub_29ADA9028(&v133) + 48);
    v11 = v10;
    if (*(v9 + 32) == 7)
    {
      v11 = sub_29ADBA554(v10);
    }

    v12 = *v11;
    v132 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v132 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*(v8 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((*(v8 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
    }

    if (*(v13 + 23) >= 0)
    {
      v14 = *(v13 + 23);
    }

    else
    {
      v14 = v13[1];
    }

    sub_29A022DE0(&__p, v14 + 6);
    v15 = v7;
    v16 = v6;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v14)
    {
      if (*(v13 + 23) >= 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = *v13;
      }

      memmove(p_p, v18, v14);
    }

    strcpy(p_p + v14, "Offset");
    v19 = atomic_load(&qword_2A174E9E0);
    if (!v19)
    {
      v19 = sub_29ADC4754();
    }

    if ((*(v19 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v20 = ((*(v19 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v20 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
    }

    memset(&v141, 0, sizeof(v141));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a2, &__p, v20, &v141);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(v8 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v22 = ((*(v8 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
    }

    if (*(v22 + 23) >= 0)
    {
      v23 = *(v22 + 23);
    }

    else
    {
      v23 = v22[1];
    }

    sub_29A022DE0(&__p, v23 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      if (*(v22 + 23) >= 0)
      {
        v25 = v22;
      }

      else
      {
        v25 = *v22;
      }

      memmove(v24, v25, v23);
    }

    strcpy(v24 + v23, "Stride");
    v26 = atomic_load(&qword_2A174E9E0);
    v6 = v16;
    v7 = v15;
    if (!v26)
    {
      v26 = sub_29ADC4754();
    }

    if ((*(v26 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v27 = ((*(v26 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
    }

    memset(&v141, 0, sizeof(v141));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a2, &__p, v27, &v141);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v28 = sub_29A00911C(v117, "#define HD_HAS_", 15);
    v29 = pxrInternal__aapl__pxrReserved__::operator<<(v28, (v8 + 40));
    sub_29A00911C(v29, " 1\n", 3);
    sub_29ADA7BC4(v121 + 5072, (v8 + 40), &v132, (v9 + 32), 1, 0);
    sub_29A008864(&__p);
    v30 = sub_29A00911C(v6, "(localIndex + vertexOffset)", 27);
    v31 = sub_29A00911C(v30, " * ", 3);
    v32 = pxrInternal__aapl__pxrReserved__::operator<<(v31, (v8 + 40));
    v33 = sub_29A00911C(v32, "Stride", 6);
    v34 = sub_29A00911C(v33, " + ", 3);
    v35 = pxrInternal__aapl__pxrReserved__::operator<<(v34, (v8 + 40));
    sub_29A00911C(v35, "Offset", 6);
    std::stringbuf::str();
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v141;
    }

    else
    {
      v36 = v141.__r_.__value_.__r.__words[0];
    }

    sub_29ADBA810(v135, (v8 + 40), v10, (v9 + 32), v36);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    std::stringbuf::str();
    if ((v125 & 0x80000000) == 0)
    {
      v38 = &v123;
LABEL_73:
      v39 = sub_29A00911C(&v136, "void", 4);
      v40 = sub_29A00911C(v39, " HdSet_", 7);
      v41 = pxrInternal__aapl__pxrReserved__::operator<<(v40, (v8 + 40));
      v42 = sub_29A00911C(v41, "(int localIndex, ", 17);
      v43 = sub_29ADBE564(v10);
      v44 = pxrInternal__aapl__pxrReserved__::operator<<(v42, v43);
      sub_29A00911C(v44, " value) {\n", 10);
      v46 = *(v9 + 32);
      if (v46 == 8)
      {
        v65 = pxrInternal__aapl__pxrReserved__::operator<<(&v136, (v8 + 40));
        v66 = sub_29A00911C(v65, "[localIndex] = ", 15);
        v67 = sub_29ADA8708(v10);
        v68 = sub_29ADC345C(v67, 1);
        v62 = pxrInternal__aapl__pxrReserved__::operator<<(v66, v68);
        v63 = "(value);\n";
        v64 = 9;
LABEL_78:
        sub_29A00911C(v62, v63, v64);
      }

      else if (v46 == 7)
      {
        v47 = sub_29A00911C(&v136, "  int index = ", 14);
        v48 = strlen(v38);
        v49 = sub_29A00911C(v47, v38, v48);
        sub_29A00911C(v49, ";\n", 2);
        v50 = sub_29A00911C(&v136, v15, 2);
        v51 = sub_29ADA8708(v10);
        v52 = sub_29ADA8514(v51, 0);
        v53 = pxrInternal__aapl__pxrReserved__::operator<<(v50, v52);
        v54 = sub_29A00911C(v53, " packedValue = ", 15);
        v55 = sub_29ADA8708(v10);
        v56 = sub_29ADC345C(v55, 0);
        v57 = pxrInternal__aapl__pxrReserved__::operator<<(v54, v56);
        sub_29A00911C(v57, "(value);\n", 9);
        v58 = sub_29ADA8708(v10);
        v59 = sub_29ADA8514(v58, 0);
        v60 = sub_29ADC1834(v59);
        if (v60 == 1)
        {
          v61 = sub_29A00911C(&v136, v15, 2);
          v62 = pxrInternal__aapl__pxrReserved__::operator<<(v61, (v8 + 40));
          v63 = "[index] = packedValue;\n";
          v64 = 23;
          goto LABEL_78;
        }

        v69 = 0;
        do
        {
          v70 = sub_29A00911C(&v136, v15, 2);
          v71 = pxrInternal__aapl__pxrReserved__::operator<<(v70, (v8 + 40));
          v72 = sub_29A00911C(v71, "[index + ", 9);
          v73 = MEMORY[0x29C2C1ED0](v72, v69);
          v74 = sub_29A00911C(v73, "] = ", 4);
          v75 = sub_29A00911C(v74, "packedValue[", 12);
          v76 = MEMORY[0x29C2C1ED0](v75, v69);
          sub_29A00911C(v76, "];\n", 3);
          v69 = (v69 + 1);
        }

        while (v60 != v69);
      }

      else
      {
        v141.__r_.__value_.__r.__words[0] = "hdSt/codeGen.cpp";
        v141.__r_.__value_.__l.__size_ = "_EmitComputeMutator";
        v141.__r_.__value_.__r.__words[2] = 3581;
        v142 = "void pxrInternal__aapl__pxrReserved__::_EmitComputeMutator(std::stringstream &, const TfToken &, const TfToken &, const HdStBinding &, const char *)";
        v143 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v141, "mutating non-SSBO not supported", v45);
      }

      sub_29A00911C(&v136, "}\n", 2);
      goto LABEL_83;
    }

    v38 = v123;
    if (v123)
    {
      goto LABEL_73;
    }

    v141.__r_.__value_.__r.__words[0] = "hdSt/codeGen.cpp";
    v141.__r_.__value_.__l.__size_ = "_EmitComputeMutator";
    v141.__r_.__value_.__r.__words[2] = 3585;
    v142 = "void pxrInternal__aapl__pxrReserved__::_EmitComputeMutator(std::stringstream &, const TfToken &, const TfToken &, const HdStBinding &, const char *)";
    v143 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v141, "mutating non-indexed data not supported", v37);
LABEL_83:
    if (v125 < 0)
    {
      operator delete(v123);
    }

    __p.__r_.__value_.__r.__words[0] = v118;
    *(__p.__r_.__value_.__r.__words + *(v118 - 24)) = v119;
    __p.__r_.__value_.__r.__words[2] = v120;
    v127 = MEMORY[0x29EDC9570] + 16;
    if (v130 < 0)
    {
      operator delete(v129);
    }

    v127 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v128);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](v131);
    if ((v132 & 7) != 0)
    {
      atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29ADA9060(&v133);
  }

  sub_29A00911C(&v136, "// Read-Only Accessors\n", 23);
  v77 = *v121 + 216;
  v123 = *(*v121 + 208);
  v124 = v77;
  while (v123 != v124)
  {
    v78 = *sub_29ADA9028(&v123);
    v79 = *sub_29ADA9028(&v123);
    v80 = (*sub_29ADA9028(&v123) + 48);
    v81 = v80;
    if (*(v79 + 32) == 7)
    {
      v81 = sub_29ADBA554(v80);
    }

    v82 = *v81;
    v133 = v82;
    if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v133 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*(v78 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v83 = ((*(v78 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v83 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v81);
    }

    if (*(v83 + 23) >= 0)
    {
      v84 = *(v83 + 23);
    }

    else
    {
      v84 = v83[1];
    }

    sub_29A022DE0(&__p, v84 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &__p;
    }

    else
    {
      v85 = __p.__r_.__value_.__r.__words[0];
    }

    if (v84)
    {
      if (*(v83 + 23) >= 0)
      {
        v86 = v83;
      }

      else
      {
        v86 = *v83;
      }

      memmove(v85, v86, v84);
    }

    strcpy(v85 + v84, "Offset");
    v87 = atomic_load(&qword_2A174E9E0);
    if (!v87)
    {
      v87 = sub_29ADC4754();
    }

    if ((*(v87 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v88 = ((*(v87 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v88 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v87);
    }

    memset(&v141, 0, sizeof(v141));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a2, &__p, v88, &v141);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(v78 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v90 = ((*(v78 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v90 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
    }

    if (*(v90 + 23) >= 0)
    {
      v91 = *(v90 + 23);
    }

    else
    {
      v91 = v90[1];
    }

    sub_29A022DE0(&__p, v91 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &__p;
    }

    else
    {
      v92 = __p.__r_.__value_.__r.__words[0];
    }

    if (v91)
    {
      if (*(v90 + 23) >= 0)
      {
        v93 = v90;
      }

      else
      {
        v93 = *v90;
      }

      memmove(v92, v93, v91);
    }

    strcpy(v92 + v91, "Stride");
    v94 = atomic_load(&qword_2A174E9E0);
    if (!v94)
    {
      v94 = sub_29ADC4754();
    }

    if ((*(v94 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v95 = ((*(v94 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v95 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v94);
    }

    memset(&v141, 0, sizeof(v141));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a2, &__p, v95, &v141);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v96 = sub_29A00911C(v117, "#define HD_HAS_", 15);
    v97 = pxrInternal__aapl__pxrReserved__::operator<<(v96, (v78 + 40));
    sub_29A00911C(v97, " 1\n", 3);
    sub_29ADA7BC4(v121 + 5072, (v78 + 40), &v133, (v79 + 32), 0, 0);
    sub_29A008864(&__p);
    v98 = sub_29A00911C(&__p.__r_.__value_.__r.__words[2], "(localIndex)", 12);
    v99 = sub_29A00911C(v98, " * ", 3);
    v100 = pxrInternal__aapl__pxrReserved__::operator<<(v99, (v78 + 40));
    v101 = sub_29A00911C(v100, "Stride", 6);
    v102 = sub_29A00911C(v101, " + ", 3);
    v103 = pxrInternal__aapl__pxrReserved__::operator<<(v102, (v78 + 40));
    sub_29A00911C(v103, "Offset", 6);
    std::stringbuf::str();
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = &v141;
    }

    else
    {
      v104 = v141.__r_.__value_.__r.__words[0];
    }

    sub_29ADBA810(v135, (v78 + 40), v80, (v79 + 32), v104);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v118;
    *(__p.__r_.__value_.__r.__words + *(v118 - 24)) = v119;
    __p.__r_.__value_.__r.__words[2] = v120;
    v127 = MEMORY[0x29EDC9570] + 16;
    if (v130 < 0)
    {
      operator delete(v129);
    }

    v127 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v128);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](v131);
    if ((v133 & 7) != 0)
    {
      atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29ADA9060(&v123);
  }

  std::stringbuf::str();
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v105 = &__p;
  }

  else
  {
    v105 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(v121 + 79, v105, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v109 = *(v121 + 4);
  v141.__r_.__value_.__r.__words[0] = *(v121 + 3);
  v141.__r_.__value_.__l.__size_ = v109;
  while (v141.__r_.__value_.__r.__words[0] != v141.__r_.__value_.__l.__size_)
  {
    v110 = *sub_29ADB40A4(&v141, v107, v108);
    v111 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v111)
    {
      v111 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    (*(*v110 + 32))(&__p, v110, v111 + 24);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = &__p;
    }

    else
    {
      v112 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v113 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v113 = __p.__r_.__value_.__l.__size_;
    }

    sub_29A00911C(v121 + 359, v112, v113);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29ADB4124(&v141);
  }

  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v141, "uvec3");
  v114 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v114)
  {
    v114 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v114 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v115 = ((*(v114 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v115 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v114);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(a2, &__p, &v141, v115);
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A00911C(v121 + 359, "void main() {\n", 14);
  sub_29A00911C(v121 + 359, "  int computeCoordinate = int(hd_GlobalInvocationID.x);\n", 56);
  sub_29A00911C(v121 + 359, "  if (computeCoordinate >= indexEnd) {\n    return;\n  };\n", 56);
  sub_29A00911C(v121 + 359, "  compute(computeCoordinate);\n", 30);
  sub_29A00911C(v121 + 359, "}\n", 2);
  v135[0] = v118;
  *(v135 + *(v118 - 24)) = v119;
  v136 = v120;
  v137 = MEMORY[0x29EDC9570] + 16;
  if (v139 < 0)
  {
    operator delete(v138[7].__locale_);
  }

  v137 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v138);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v140);
}

void sub_29ADBA398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a62);
  _Unwind_Resume(a1);
}

unint64_t sub_29ADBA554(void *a1)
{
  v2 = atomic_load(&qword_2A174E9E0);
  if (!v2)
  {
    v2 = sub_29ADC4754();
  }

  v3 = *(v2 + 336) ^ *a1;
  v4 = atomic_load(&qword_2A174E9E0);
  if (v3 <= 7)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  v5 = v4[43] ^ *a1;
  v4 = atomic_load(&qword_2A174E9E0);
  if (v5 <= 7)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  v6 = v4[44] ^ *a1;
  v4 = atomic_load(&qword_2A174E9E0);
  if (v6 <= 7)
  {
LABEL_10:
    if (!v4)
    {
      v4 = sub_29ADC4754();
    }

    return (v4 + 2);
  }

  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  v8 = v4[46] ^ *a1;
  v9 = atomic_load(&qword_2A174E9E0);
  if (v8 <= 7)
  {
    goto LABEL_23;
  }

  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  v10 = v9[47] ^ *a1;
  v9 = atomic_load(&qword_2A174E9E0);
  if (v10 <= 7)
  {
    goto LABEL_23;
  }

  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  v11 = v9[48] ^ *a1;
  v9 = atomic_load(&qword_2A174E9E0);
  if (v11 <= 7)
  {
LABEL_23:
    if (!v9)
    {
      v9 = sub_29ADC4754();
    }

    return (v9 + 1);
  }

  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  v12 = v9[49] ^ *a1;
  v13 = atomic_load(&qword_2A174E9E0);
  if (v12 > 7)
  {
    if (!v13)
    {
      v13 = sub_29ADC4754();
    }

    v14 = v13[50] ^ *a1;
    v13 = atomic_load(&qword_2A174E9E0);
    if (v14 > 7)
    {
      if (!v13)
      {
        v13 = sub_29ADC4754();
      }

      v15 = v13[51] ^ *a1;
      v13 = atomic_load(&qword_2A174E9E0);
      if (v15 > 7)
      {
        if (!v13)
        {
          v13 = sub_29ADC4754();
        }

        v16 = v13[52] ^ *a1;
        v9 = atomic_load(&qword_2A174E9E0);
        if (v16 <= 7)
        {
          goto LABEL_23;
        }

        if (!v9)
        {
          v9 = sub_29ADC4754();
        }

        v17 = v9[53] ^ *a1;
        v9 = atomic_load(&qword_2A174E9E0);
        if (v17 <= 7)
        {
          goto LABEL_23;
        }

        if (!v9)
        {
          v9 = sub_29ADC4754();
        }

        v18 = v9[54] ^ *a1;
        v13 = atomic_load(&qword_2A174E9E0);
        if (v18 > 7)
        {
          if (!v13)
          {
            v13 = sub_29ADC4754();
          }

          v19 = v13[55] ^ *a1;
          v13 = atomic_load(&qword_2A174E9E0);
          if (v19 > 7)
          {
            if (!v13)
            {
              v13 = sub_29ADC4754();
            }

            v20 = v13[56] ^ *a1;
            v9 = atomic_load(&qword_2A174E9E0);
            if (v20 > 7)
            {
              if (!v9)
              {
                v9 = sub_29ADC4754();
              }

              v21 = v9[57] ^ *a1;
              v9 = atomic_load(&qword_2A174E9E0);
              if (v21 > 7)
              {
                if (!v9)
                {
                  v9 = sub_29ADC4754();
                }

                if ((v9[58] ^ *a1) > 7)
                {
                  return a1;
                }

                v9 = atomic_load(&qword_2A174E9E0);
              }
            }

            goto LABEL_23;
          }
        }
      }
    }
  }

  a1 = v13;
  if (v13)
  {
    return a1;
  }

  return sub_29ADC4754();
}

void *sub_29ADBA810(uint64_t a1, void *a2, void *a3, _BYTE *a4, const char *a5)
{
  if (a5)
  {
    v10 = sub_29ADBE564(a3);
    v11 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v10);
    v12 = sub_29A00911C(v11, " HdGet_", 7);
    v13 = pxrInternal__aapl__pxrReserved__::operator<<(v12, a2);
    sub_29A00911C(v13, "(int localIndex) {\n", 19);
    if (*a4 == 7)
    {
      v14 = sub_29A00911C((a1 + 16), "  int index = ", 14);
      v15 = strlen(a5);
      v16 = sub_29A00911C(v14, a5, v15);
      sub_29A00911C(v16, ";\n", 2);
      v17 = sub_29A00911C((a1 + 16), "  return ", 9);
      v18 = sub_29ADBF8C8(a3, 0);
      v19 = pxrInternal__aapl__pxrReserved__::operator<<(v17, v18);
      v20 = sub_29A00911C(v19, "(", 1);
      v21 = sub_29ADA8514(a3, 0);
      v22 = pxrInternal__aapl__pxrReserved__::operator<<(v20, v21);
      sub_29A00911C(v22, "(", 1);
      v23 = sub_29ADC1834(a3);
      v24 = 0;
      do
      {
        if (v24)
        {
          sub_29A00911C((a1 + 16), ",\n              ", 16);
        }

        v25 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), a2);
        v26 = sub_29A00911C(v25, "[index + ", 9);
        v27 = MEMORY[0x29C2C1ED0](v26, v24);
        sub_29A00911C(v27, "]", 1);
        v24 = (v24 + 1);
      }

      while (v23 != v24);
      v28 = "));\n}\n";
      v29 = (a1 + 16);
      v30 = 6;
    }

    else
    {
      v31 = sub_29A00911C((a1 + 16), "  return ", 9);
      v32 = sub_29ADBF8C8(a3, 1);
      v33 = pxrInternal__aapl__pxrReserved__::operator<<(v31, v32);
      v34 = sub_29A00911C(v33, "(", 1);
      v29 = pxrInternal__aapl__pxrReserved__::operator<<(v34, a2);
      v28 = "[localIndex]);\n}\n";
      v30 = 17;
    }
  }

  else
  {
    v35 = *a4;
    if (v35 != 11 && v35 != 5)
    {
      goto LABEL_16;
    }

    v37 = sub_29ADBE564(a3);
    v38 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v37);
    v39 = sub_29A00911C(v38, " HdGet_", 7);
    v40 = pxrInternal__aapl__pxrReserved__::operator<<(v39, a2);
    sub_29A00911C(v40, "(int localIndex) { return ", 26);
    v41 = sub_29ADBF8C8(a3, 1);
    v42 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v41);
    v43 = sub_29A00911C(v42, "(", 1);
    v29 = pxrInternal__aapl__pxrReserved__::operator<<(v43, a2);
    v28 = ");}\n";
    v30 = 4;
  }

  sub_29A00911C(v29, v28, v30);
LABEL_16:
  v44 = sub_29ADBE564(a3);
  v45 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v44);
  v46 = sub_29A00911C(v45, " HdGet_", 7);
  v47 = pxrInternal__aapl__pxrReserved__::operator<<(v46, a2);
  v48 = sub_29A00911C(v47, "()", 2);
  v49 = sub_29A00911C(v48, " { return HdGet_", 16);
  v50 = pxrInternal__aapl__pxrReserved__::operator<<(v49, a2);

  return sub_29A00911C(v50, "(0); }\n", 7);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29ADBAB34(pxrInternal__aapl__pxrReserved__::TfToken *result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v111 = result;
  v7 = *a5;
  v6 = a5[1];
  if (*a5 != v6)
  {
    do
    {
      v9 = *(v7 + 4);
      if (v9 > 4)
      {
        if ((v9 - 7) < 2)
        {
          v31 = *(v7 + 56);
          v32 = sub_29ADC20A4(v111, v7, a6);
          v33 = sub_29A00911C((a3 + 16), "layout(std430, binding = ", 25);
          v34 = MEMORY[0x29C2C1EE0](v33, v32);
          v35 = sub_29A00911C(v34, ") buffer ssbo_", 14);
          v36 = MEMORY[0x29C2C1EE0](v35, v32);
          v37 = sub_29A00911C(v36, " {\n", 3);
          v38 = sub_29A00911C(v37, "    ", 4);
          v39 = pxrInternal__aapl__pxrReserved__::operator<<(v38, v31);
          v40 = sub_29A00911C(v39, " ", 1);
          v41 = pxrInternal__aapl__pxrReserved__::operator<<(v40, v31 + 1);
          v19 = sub_29A00911C(v41, "[];\n", 4);
          goto LABEL_18;
        }

        if (v9 == 5)
        {
          v51 = sub_29A00911C((a3 + 16), "layout(std140, binding = ", 25);
          v52 = sub_29ADC20A4(v111, v7, a6);
          v53 = MEMORY[0x29C2C1ED0](v51, v52);
          v54 = sub_29A00911C(v53, ") uniform ubo_", 14);
          v55 = pxrInternal__aapl__pxrReserved__::operator<<(v54, (v7 + 24));
          v56 = sub_29A00911C(v55, " {\n", 3);
          v57 = sub_29A00911C(v56, "    ", 4);
          v58 = pxrInternal__aapl__pxrReserved__::operator<<(v57, (v7 + 16));
          v59 = sub_29A00911C(v58, " ", 1);
          pxrInternal__aapl__pxrReserved__::operator<<(v59, (v7 + 24));
          if (*(v7 + 40))
          {
            v60 = sub_29A00911C((a3 + 16), "[", 1);
            v61 = pxrInternal__aapl__pxrReserved__::operator<<(v60, (v7 + 40));
            sub_29A00911C(v61, "]", 1);
          }

          v19 = (a3 + 16);
          v42 = ";\n};\n";
          v62 = 5;
          goto LABEL_120;
        }

        if (v9 == 6)
        {
          v12 = sub_29A00911C((a3 + 16), "layout(std140, binding = ", 25);
          v13 = sub_29ADC20A4(v111, v7, a6);
          v14 = MEMORY[0x29C2C1ED0](v12, v13);
          v15 = sub_29A00911C(v14, ") uniform ubo_", 14);
          v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, (v7 + 24));
          sub_29A00911C(v16, " {\n", 3);
          v18 = *(v7 + 56);
          v17 = *(v7 + 64);
          while (1)
          {
            v19 = (a3 + 16);
            if (v18 == v17)
            {
              break;
            }

            v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, v18);
            v21 = sub_29A00911C(v20, " ", 1);
            v22 = pxrInternal__aapl__pxrReserved__::operator<<(v21, v18 + 1);
            sub_29A00911C(v22, ";\n", 2);
            v18 += 4;
          }

LABEL_18:
          v42 = "};\n";
LABEL_118:
          v62 = 3;
LABEL_120:
          result = sub_29A00911C(v19, v42, v62);
        }
      }

      else if (v9 > 2)
      {
        if (v9 != 3)
        {
          v23 = sub_29A00911C((a3 + 16), "layout(location = ", 18);
          v24 = sub_29ADC20A4(v111, v7, a6);
          v25 = MEMORY[0x29C2C1ED0](v23, v24);
          v26 = sub_29A00911C(v25, ") uniform ", 10);
          v27 = pxrInternal__aapl__pxrReserved__::operator<<(v26, (v7 + 16));
          v28 = sub_29A00911C(v27, " *", 2);
          pxrInternal__aapl__pxrReserved__::operator<<(v28, (v7 + 24));
          if (*(v7 + 40))
          {
            v29 = sub_29A00911C((a3 + 16), "[", 1);
            v30 = pxrInternal__aapl__pxrReserved__::operator<<(v29, (v7 + 40));
            sub_29A00911C(v30, "]", 1);
          }

LABEL_119:
          v19 = (a3 + 16);
          v42 = ";\n";
          v62 = 2;
          goto LABEL_120;
        }

        result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!result)
        {
          result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        if ((*(result + 22) ^ *a4) > 7)
        {
          result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          if (!result)
          {
            result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
          }

          if ((*(result + 23) ^ *a4) > 7)
          {
            result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!result)
            {
              result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            if ((*(result + 9) ^ *a4) > 7)
            {
              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 79) ^ *(v7 + 32)) <= 7)
              {
                *(a2 + 360) = 1;
              }

              goto LABEL_121;
            }

            if (*v7 == 2)
            {
              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 72) ^ *(v7 + 32)) <= 7)
              {
                *(a2 + 332) = 0;
                goto LABEL_121;
              }

              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 77) ^ *(v7 + 32)) <= 7)
              {
                v103 = a2;
                v104 = 1;
LABEL_152:
                *(v103 + 332) = v104;
                goto LABEL_121;
              }

              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              v105 = *(v7 + 32);
              if ((*(result + 78) ^ v105) <= 7)
              {
                v103 = a2;
                v104 = 2;
                goto LABEL_152;
              }

              v108 = v105 & 0xFFFFFFFFFFFFFFF8;
              if (v108)
              {
                EmptyString = (v108 + 16);
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              }

              v95 = (a2 + 336);
              goto LABEL_105;
            }

            if (*v7 == 1)
            {
              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 72) ^ *(v7 + 32)) > 7)
              {
                result = atomic_load(&qword_2A174E9E0);
                if (!result)
                {
                  result = sub_29ADC4754();
                }

                if ((*(result + 73) ^ *(v7 + 32)) > 7)
                {
                  result = atomic_load(&qword_2A174E9E0);
                  if (!result)
                  {
                    result = sub_29ADC4754();
                  }

                  if ((*(result + 74) ^ *(v7 + 32)) > 7)
                  {
                    result = atomic_load(&qword_2A174E9E0);
                    if (!result)
                    {
                      result = sub_29ADC4754();
                    }

                    if ((*(result + 75) ^ *(v7 + 32)) > 7)
                    {
                      result = atomic_load(&qword_2A174E9E0);
                      if (!result)
                      {
                        result = sub_29ADC4754();
                      }

                      if ((*(result + 76) ^ *(v7 + 32)) > 7)
                      {
                        goto LABEL_121;
                      }

                      v101 = a2;
                      v102 = 4;
                    }

                    else
                    {
                      v101 = a2;
                      v102 = 3;
                    }
                  }

                  else
                  {
                    v101 = a2;
                    v102 = 2;
                  }
                }

                else
                {
                  v101 = a2;
                  v102 = 1;
                }

                *(v101 + 328) = v102;
              }

              else
              {
                *(a2 + 328) = 0;
              }
            }
          }

          else if (*v7 == 1)
          {
            result = atomic_load(&qword_2A174E9E0);
            if (!result)
            {
              result = sub_29ADC4754();
            }

            if ((*(result + 75) ^ *(v7 + 32)) > 7)
            {
              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 65) ^ *(v7 + 32)) <= 7)
              {
                v96 = a2;
                v97 = 1;
LABEL_131:
                *(v96 + 264) = v97;
                goto LABEL_121;
              }

              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 66) ^ *(v7 + 32)) <= 7)
              {
                v96 = a2;
                v97 = 2;
                goto LABEL_131;
              }

              result = atomic_load(&qword_2A174E9E0);
              if (!result)
              {
                result = sub_29ADC4754();
              }

              if ((*(result + 67) ^ *(v7 + 32)) > 7)
              {
                result = atomic_load(&qword_2A174E9E0);
                if (!result)
                {
                  result = sub_29ADC4754();
                }

                if ((*(result + 68) ^ *(v7 + 32)) > 7)
                {
                  result = atomic_load(&qword_2A174E9E0);
                  if (!result)
                  {
                    result = sub_29ADC4754();
                  }

                  if ((*(result + 69) ^ *(v7 + 32)) > 7)
                  {
                    result = atomic_load(&qword_2A174E9E0);
                    if (!result)
                    {
                      result = sub_29ADC4754();
                    }

                    if ((*(result + 70) ^ *(v7 + 32)) > 7)
                    {
                      result = atomic_load(&qword_2A174E9E0);
                      if (!result)
                      {
                        result = sub_29ADC4754();
                      }

                      if ((*(result + 71) ^ *(v7 + 32)) <= 7)
                      {
                        *(a2 + 272) = 1;
                      }
                    }

                    else
                    {
                      *(a2 + 272) = 0;
                    }

                    goto LABEL_121;
                  }

                  v106 = a2;
                  v107 = 2;
                }

                else
                {
                  v106 = a2;
                  v107 = 1;
                }

                *(v106 + 268) = v107;
              }

              else
              {
                *(a2 + 268) = 0;
              }
            }

            else
            {
              *(a2 + 264) = 0;
            }
          }
        }

        else if (*v7 == 2)
        {
          if ((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = ((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          }

          v95 = (a2 + 304);
LABEL_105:
          result = std::string::operator=(v95, EmptyString);
        }
      }

      else
      {
        if (v9 == 1)
        {
          if (*v7 == 2)
          {
            v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!v84)
            {
              v84 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            if ((*(v84 + 8) ^ *a4) <= 7)
            {
              v85 = sub_29A00911C((a3 + 16), "layout (location = ", 19);
              v86 = sub_29ADC20A4(v111, v7, a6);
              v87 = MEMORY[0x29C2C1ED0](v85, v86);
              sub_29A00911C(v87, ") ", 2);
            }

            v47 = (a3 + 16);
            v48 = "out ";
            v49 = 4;
LABEL_73:
            sub_29A00911C(v47, v48, v49);
          }

          else if (*v7 == 1)
          {
            v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!v43)
            {
              v43 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            if ((*(v43 + 28) ^ *a4) <= 7)
            {
              v44 = sub_29A00911C((a3 + 16), "layout (location = ", 19);
              v45 = sub_29ADC20A4(v111, v7, a6);
              v46 = MEMORY[0x29C2C1ED0](v44, v45);
              sub_29A00911C(v46, ") ", 2);
            }

            v47 = (a3 + 16);
            v48 = "in ";
            v49 = 3;
            goto LABEL_73;
          }

          v88 = atomic_load(&qword_2A174E9E0);
          if (!v88)
          {
            v88 = sub_29ADC4754();
          }

          if ((*(v88 + 64) ^ *(v7 + 32)) <= 7)
          {
            v89 = (a3 + 16);
            v90 = "flat ";
            v91 = 5;
            goto LABEL_114;
          }

          v92 = atomic_load(&qword_2A174E9E0);
          if (!v92)
          {
            v92 = sub_29ADC4754();
          }

          if ((*(v92 + 72) ^ *(v7 + 32)) <= 7)
          {
            v89 = (a3 + 16);
            v90 = "noperspective ";
            v91 = 14;
            goto LABEL_114;
          }

          v93 = atomic_load(&qword_2A174E9E0);
          if (!v93)
          {
            v93 = sub_29ADC4754();
          }

          if ((*(v93 + 88) ^ *(v7 + 32)) <= 7)
          {
            v89 = (a3 + 16);
            v90 = "centroid ";
            v91 = 9;
            goto LABEL_114;
          }

          v94 = atomic_load(&qword_2A174E9E0);
          if (!v94)
          {
            v94 = sub_29ADC4754();
          }

          if ((*(v94 + 80) ^ *(v7 + 32)) <= 7)
          {
            v89 = (a3 + 16);
            v90 = "sample ";
            v91 = 7;
            goto LABEL_114;
          }

          v98 = atomic_load(&qword_2A174E9E0);
          if (!v98)
          {
            v98 = sub_29ADC4754();
          }

          if ((*(v98 + 96) ^ *(v7 + 32)) <= 7)
          {
            v89 = (a3 + 16);
            v90 = "patch ";
            v91 = 6;
LABEL_114:
            sub_29A00911C(v89, v90, v91);
          }

          v81 = pxrInternal__aapl__pxrReserved__::operator<<((a3 + 16), (v7 + 16));
          v82 = " ";
          v83 = 1;
LABEL_116:
          v99 = sub_29A00911C(v81, v82, v83);
          pxrInternal__aapl__pxrReserved__::operator<<(v99, (v7 + 24));
          if (!*(v7 + 40))
          {
            goto LABEL_119;
          }

          v100 = sub_29A00911C((a3 + 16), "[", 1);
          v19 = pxrInternal__aapl__pxrReserved__::operator<<(v100, (v7 + 40));
          v42 = "];\n";
          goto LABEL_118;
        }

        if (v9 == 2)
        {
          if (*v7 == 1)
          {
            v10 = "in ";
            v11 = 3;
          }

          else
          {
            v10 = "out ";
            v11 = 4;
          }

          sub_29A00911C((a3 + 16), v10, v11);
          v63 = pxrInternal__aapl__pxrReserved__::operator<<((a3 + 16), (v7 + 48));
          sub_29A00911C(v63, " {\n", 3);
          v64 = *(v7 + 56);
          v65 = *(v7 + 64);
          if (v64 != v65)
          {
            v66 = v64 + 2;
            do
            {
              sub_29A00911C((a3 + 16), "    ", 4);
              v67 = atomic_load(&qword_2A174E9E0);
              if (!v67)
              {
                v67 = sub_29ADC4754();
              }

              if ((*(v67 + 64) ^ v66[1]) > 7)
              {
                v71 = atomic_load(&qword_2A174E9E0);
                if (!v71)
                {
                  v71 = sub_29ADC4754();
                }

                if ((*(v71 + 72) ^ v66[1]) > 7)
                {
                  v72 = atomic_load(&qword_2A174E9E0);
                  if (!v72)
                  {
                    v72 = sub_29ADC4754();
                  }

                  if ((*(v72 + 88) ^ v66[1]) > 7)
                  {
                    v73 = atomic_load(&qword_2A174E9E0);
                    if (!v73)
                    {
                      v73 = sub_29ADC4754();
                    }

                    if ((*(v73 + 80) ^ v66[1]) > 7)
                    {
                      goto LABEL_63;
                    }

                    v68 = (a3 + 16);
                    v69 = "sample ";
                    v70 = 7;
                  }

                  else
                  {
                    v68 = (a3 + 16);
                    v69 = "centroid ";
                    v70 = 9;
                  }
                }

                else
                {
                  v68 = (a3 + 16);
                  v69 = "noperspective ";
                  v70 = 14;
                }
              }

              else
              {
                v68 = (a3 + 16);
                v69 = "flat ";
                v70 = 5;
              }

              sub_29A00911C(v68, v69, v70);
LABEL_63:
              v74 = pxrInternal__aapl__pxrReserved__::operator<<((a3 + 16), v66 - 2);
              v75 = sub_29A00911C(v74, " ", 1);
              pxrInternal__aapl__pxrReserved__::operator<<(v75, v66 - 1);
              if (*v66)
              {
                v76 = sub_29A00911C((a3 + 16), "[", 1);
                v77 = pxrInternal__aapl__pxrReserved__::operator<<(v76, v66);
                v78 = "];\n";
                v79 = 3;
              }

              else
              {
                v77 = (a3 + 16);
                v78 = ";\n";
                v79 = 2;
              }

              sub_29A00911C(v77, v78, v79);
              v80 = v66 + 2;
              v66 += 4;
            }

            while (v80 != v65);
          }

          v81 = (a3 + 16);
          v82 = "} ";
          v83 = 2;
          goto LABEL_116;
        }
      }

LABEL_121:
      v7 += 80;
    }

    while (v7 != v6);
  }

  return result;
}

void sub_29ADBB794(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v164 = a2[1];
  if (*a2 != v164)
  {
    do
    {
      v4 = *(v2 + 20);
      v5 = *(v2 + 24);
      HioType = pxrInternal__aapl__pxrReserved__::HioGetHioType(*(v2 + 16));
      v7 = "";
      if (HioType <= 6)
      {
        v7 = off_29F296AD8[HioType];
      }

      sub_29A008E78(&v176, v7);
      if (v4 == 1)
      {
        std::to_string(&v170, *(v2 + 8));
        v8 = std::string::insert(&v170, 0, "sampler");
        v9 = *&v8->__r_.__value_.__l.__data_;
        v171.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v171.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        v10 = std::string::append(&v171, "DShadow");
      }

      else
      {
        std::to_string(&v168, *(v2 + 8));
        v11 = std::string::insert(&v168, 0, "sampler");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v169.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v169.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v10 = std::string::append(&v169, "D");
      }

      v13 = *&v10->__r_.__value_.__l.__data_;
      v172.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v172.__r_.__value_.__l.__data_ = v13;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if ((v178 & 0x80u) == 0)
      {
        v14 = &v176;
      }

      else
      {
        v14 = v176;
      }

      if ((v178 & 0x80u) == 0)
      {
        v15 = v178;
      }

      else
      {
        v15 = v177;
      }

      v16 = std::string::insert(&v172, 0, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v173.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v173.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (v4 == 2)
      {
        v18 = "Array";
      }

      else
      {
        v18 = "";
      }

      v19 = std::string::append(&v173, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v175 = v19->__r_.__value_.__r.__words[2];
      v174 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v172.__r_.__value_.__l.__data_);
      }

      if (v4 == 1)
      {
        if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v171.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v170.__r_.__value_.__l.__data_);
        }

        v21 = "float";
      }

      else
      {
        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v168.__r_.__value_.__l.__data_);
        }

        v21 = "vec4";
      }

      if ((v178 & 0x80u) == 0)
      {
        v22 = v178;
      }

      else
      {
        v22 = v177;
      }

      v23 = strlen(v21);
      sub_29A022DE0(&v173, v22 + v23);
      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v173;
      }

      else
      {
        v24 = v173.__r_.__value_.__r.__words[0];
      }

      if (v22)
      {
        if ((v178 & 0x80u) == 0)
        {
          v25 = &v176;
        }

        else
        {
          v25 = v176;
        }

        memmove(v24, v25, v22);
      }

      v26 = v24 + v22;
      if (v23)
      {
        memcpy(v26, v21, v23);
      }

      v26[v23] = 0;
      std::to_string(&v165, *(v2 + 8));
      v27 = std::string::insert(&v165, 0, "sampler");
      v28 = *&v27->__r_.__value_.__l.__data_;
      v166.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v166.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v166, "d_");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v167.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v167.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if ((*v2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
      }

      v32 = *(EmptyString + 23);
      if (v32 >= 0)
      {
        v33 = EmptyString;
      }

      else
      {
        v33 = *EmptyString;
      }

      if (v32 >= 0)
      {
        v34 = *(EmptyString + 23);
      }

      else
      {
        v34 = EmptyString[1];
      }

      v35 = std::string::append(&v167, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v172.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v172.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v167.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v166.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v165.__r_.__value_.__l.__data_);
      }

      if ((v4 - 1) >= 2)
      {
        v37 = *(v2 + 8);
      }

      else
      {
        v37 = *(v2 + 8) + 1;
      }

      if (v37 == 1)
      {
        sub_29A008E78(&v167, "int");
        sub_29A008E78(&v166, "float");
      }

      else
      {
        std::to_string(&v166, v37);
        v38 = std::string::insert(&v166, 0, "ivec");
        v39 = *&v38->__r_.__value_.__l.__data_;
        v167.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v167.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v166.__r_.__value_.__l.__data_);
        }

        std::to_string(&v165, v37);
        v40 = std::string::insert(&v165, 0, "vec");
        v41 = *&v40->__r_.__value_.__l.__data_;
        v166.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v166.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v165.__r_.__value_.__l.__data_);
        }
      }

      v42 = sub_29A00911C((a1 + 16), "layout (binding = ", 18);
      std::to_string(&v165, *(v2 + 12));
      if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v165;
      }

      else
      {
        v43 = v165.__r_.__value_.__r.__words[0];
      }

      if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v165.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v165.__r_.__value_.__l.__size_;
      }

      v45 = sub_29A00911C(v42, v43, size);
      v46 = sub_29A00911C(v45, ") uniform ", 10);
      if (v175 >= 0)
      {
        v47 = &v174;
      }

      else
      {
        v47 = v174;
      }

      if (v175 >= 0)
      {
        v48 = HIBYTE(v175);
      }

      else
      {
        v48 = *(&v174 + 1);
      }

      v49 = sub_29A00911C(v46, v47, v48);
      v50 = sub_29A00911C(v49, " ", 1);
      if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v172;
      }

      else
      {
        v51 = v172.__r_.__value_.__r.__words[0];
      }

      if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v172.__r_.__value_.__l.__size_;
      }

      sub_29A00911C(v50, v51, v52);
      if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v165.__r_.__value_.__l.__data_);
      }

      if (v5 < 1)
      {
        sub_29A00911C((a1 + 16), ";\n", 2);
        v111 = sub_29A00911C((a1 + 16), "#define HgiGetSampler_", 22);
        v112 = pxrInternal__aapl__pxrReserved__::operator<<(v111, v2);
        v113 = sub_29A00911C(v112, "() ", 3);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v114 = &v172;
        }

        else
        {
          v114 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v115 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v115 = v172.__r_.__value_.__l.__size_;
        }

        v116 = sub_29A00911C(v113, v114, v115);
        sub_29A00911C(v116, "\n", 1);
        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v117 = &v173;
        }

        else
        {
          v117 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v118 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v118 = v173.__r_.__value_.__l.__size_;
        }

        v119 = sub_29A00911C((a1 + 16), v117, v118);
        v120 = sub_29A00911C(v119, " HgiGet_", 8);
        v121 = pxrInternal__aapl__pxrReserved__::operator<<(v120, v2);
        v122 = sub_29A00911C(v121, "(", 1);
        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v123 = &v166;
        }

        else
        {
          v123 = v166.__r_.__value_.__r.__words[0];
        }

        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v124 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v124 = v166.__r_.__value_.__l.__size_;
        }

        v125 = sub_29A00911C(v122, v123, v124);
        v126 = sub_29A00911C(v125, " coord) {\n", 10);
        v127 = sub_29A00911C(v126, "  return texture(", 17);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v128 = &v172;
        }

        else
        {
          v128 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v129 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v129 = v172.__r_.__value_.__l.__size_;
        }

        v130 = sub_29A00911C(v127, v128, v129);
        v131 = sub_29A00911C(v130, ", coord)", 8);
        v132 = sub_29A00911C(v131, ";\n", 2);
        sub_29A00911C(v132, "}\n", 2);
        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v133 = &v173;
        }

        else
        {
          v133 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v134 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v134 = v173.__r_.__value_.__l.__size_;
        }

        v135 = sub_29A00911C((a1 + 16), v133, v134);
        v136 = sub_29A00911C(v135, " HgiTextureLod_", 15);
        v137 = pxrInternal__aapl__pxrReserved__::operator<<(v136, v2);
        v138 = sub_29A00911C(v137, "(", 1);
        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v139 = &v166;
        }

        else
        {
          v139 = v166.__r_.__value_.__r.__words[0];
        }

        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v140 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v140 = v166.__r_.__value_.__l.__size_;
        }

        v141 = sub_29A00911C(v138, v139, v140);
        v142 = sub_29A00911C(v141, " coord, float lod) {\n", 21);
        v143 = sub_29A00911C(v142, "  return textureLod(", 20);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v144 = &v172;
        }

        else
        {
          v144 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v145 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v145 = v172.__r_.__value_.__l.__size_;
        }

        v146 = sub_29A00911C(v143, v144, v145);
        v147 = sub_29A00911C(v146, ", coord, lod)", 13);
        v148 = sub_29A00911C(v147, ";\n", 2);
        sub_29A00911C(v148, "}\n", 2);
        if (v4 == 1)
        {
          goto LABEL_222;
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v149 = &v173;
        }

        else
        {
          v149 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v150 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v150 = v173.__r_.__value_.__l.__size_;
        }

        v151 = sub_29A00911C((a1 + 16), v149, v150);
        v152 = sub_29A00911C(v151, " HgiTexelFetch_", 15);
        v153 = pxrInternal__aapl__pxrReserved__::operator<<(v152, v2);
        v154 = sub_29A00911C(v153, "(", 1);
        if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v155 = &v167;
        }

        else
        {
          v155 = v167.__r_.__value_.__r.__words[0];
        }

        if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v156 = HIBYTE(v167.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v156 = v167.__r_.__value_.__l.__size_;
        }

        v157 = sub_29A00911C(v154, v155, v156);
        v158 = sub_29A00911C(v157, " coord) {\n", 10);
        v159 = sub_29A00911C(v158, "  return texelFetch(", 20);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v160 = &v172;
        }

        else
        {
          v160 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v161 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v161 = v172.__r_.__value_.__l.__size_;
        }

        v108 = sub_29A00911C(v159, v160, v161);
        v109 = ", coord, 0)";
        v110 = 11;
      }

      else
      {
        v53 = sub_29A00911C((a1 + 16), "[", 1);
        std::to_string(&v165, *(v2 + 24));
        if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v165;
        }

        else
        {
          v54 = v165.__r_.__value_.__r.__words[0];
        }

        if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = v165.__r_.__value_.__l.__size_;
        }

        v56 = sub_29A00911C(v53, v54, v55);
        sub_29A00911C(v56, "];\n", 3);
        if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v165.__r_.__value_.__l.__data_);
        }

        v57 = sub_29A00911C((a1 + 16), "#define HgiGetSampler_", 22);
        v58 = pxrInternal__aapl__pxrReserved__::operator<<(v57, v2);
        v59 = sub_29A00911C(v58, "(index) ", 8);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v172;
        }

        else
        {
          v60 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v61 = v172.__r_.__value_.__l.__size_;
        }

        v62 = sub_29A00911C(v59, v60, v61);
        sub_29A00911C(v62, "[index]\n", 8);
        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v173;
        }

        else
        {
          v63 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = v173.__r_.__value_.__l.__size_;
        }

        v65 = sub_29A00911C((a1 + 16), v63, v64);
        v66 = sub_29A00911C(v65, " HgiGet_", 8);
        v67 = pxrInternal__aapl__pxrReserved__::operator<<(v66, v2);
        v68 = sub_29A00911C(v67, "(int index, ", 12);
        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &v166;
        }

        else
        {
          v69 = v166.__r_.__value_.__r.__words[0];
        }

        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = v166.__r_.__value_.__l.__size_;
        }

        v71 = sub_29A00911C(v68, v69, v70);
        v72 = sub_29A00911C(v71, " coord) {\n", 10);
        v73 = sub_29A00911C(v72, "  return texture(", 17);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v172;
        }

        else
        {
          v74 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = v172.__r_.__value_.__l.__size_;
        }

        v76 = sub_29A00911C(v73, v74, v75);
        v77 = sub_29A00911C(v76, "[index], coord)", 15);
        v78 = sub_29A00911C(v77, ";\n", 2);
        sub_29A00911C(v78, "}\n", 2);
        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v173;
        }

        else
        {
          v79 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = v173.__r_.__value_.__l.__size_;
        }

        v81 = sub_29A00911C((a1 + 16), v79, v80);
        v82 = sub_29A00911C(v81, " HgiTextureLod_", 15);
        v83 = pxrInternal__aapl__pxrReserved__::operator<<(v82, v2);
        v84 = sub_29A00911C(v83, "(int index, ", 12);
        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v166;
        }

        else
        {
          v85 = v166.__r_.__value_.__r.__words[0];
        }

        if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v86 = v166.__r_.__value_.__l.__size_;
        }

        v87 = sub_29A00911C(v84, v85, v86);
        v88 = sub_29A00911C(v87, " coord, float lod) {\n", 21);
        v89 = sub_29A00911C(v88, "  return textureLod(", 20);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = &v172;
        }

        else
        {
          v90 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v91 = v172.__r_.__value_.__l.__size_;
        }

        v92 = sub_29A00911C(v89, v90, v91);
        v93 = sub_29A00911C(v92, "[index], coord, lod)", 20);
        v94 = sub_29A00911C(v93, ";\n", 2);
        sub_29A00911C(v94, "}\n", 2);
        if (v4 == 1)
        {
          goto LABEL_222;
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &v173;
        }

        else
        {
          v95 = v173.__r_.__value_.__r.__words[0];
        }

        if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v96 = v173.__r_.__value_.__l.__size_;
        }

        v97 = sub_29A00911C((a1 + 16), v95, v96);
        v98 = sub_29A00911C(v97, " HgiTexelFetch_", 15);
        v99 = pxrInternal__aapl__pxrReserved__::operator<<(v98, v2);
        v100 = sub_29A00911C(v99, "(int index, ", 12);
        if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = &v167;
        }

        else
        {
          v101 = v167.__r_.__value_.__r.__words[0];
        }

        if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = HIBYTE(v167.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v102 = v167.__r_.__value_.__l.__size_;
        }

        v103 = sub_29A00911C(v100, v101, v102);
        v104 = sub_29A00911C(v103, " coord) {\n", 10);
        v105 = sub_29A00911C(v104, "  return texelFetch(", 20);
        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = &v172;
        }

        else
        {
          v106 = v172.__r_.__value_.__r.__words[0];
        }

        if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = v172.__r_.__value_.__l.__size_;
        }

        v108 = sub_29A00911C(v105, v106, v107);
        v109 = "[index], coord, 0)";
        v110 = 18;
      }

      v162 = sub_29A00911C(v108, v109, v110);
      v163 = sub_29A00911C(v162, ";\n", 2);
      sub_29A00911C(v163, "}\n", 2);
LABEL_222:
      if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v166.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v167.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v172.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v175) < 0)
      {
        operator delete(v174);
      }

      if (v178 < 0)
      {
        operator delete(v176);
      }

      v2 += 32;
    }

    while (v2 != v164);
  }
}

void sub_29ADBC354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  if (*(v59 - 97) < 0)
  {
    operator delete(*(v59 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADBC518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  v6 = a5[1];
  if (*a5 != v6)
  {
    v10 = a1;
    v117 = a1;
    do
    {
      v11 = *(v7 + 4);
      if (v11 <= 4)
      {
        switch(v11)
        {
          case 1:
            if (*v7 == 2)
            {
              v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v70)
              {
                v70 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              if ((*(v70 + 8) ^ *a4) > 7)
              {
                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc::HgiShaderFunctionParamDesc(&__p);
                if ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  EmptyString = ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v78);
                }

                v90 = std::string::operator=(&__p, EmptyString);
                if ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v91 = ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v91 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v90);
                }

                std::string::operator=(&v125, v91);
                v100 = sub_29ADC21EC(a2, (v7 + 16));
                HIDWORD(v126) = sub_29ADC2164(v10, (v7 + 24), 0, v100);
                v127 = sub_29ADC22F8((v7 + 32));
                v128 = sub_29ADC2374((v7 + 32));
                v101 = atomic_load(&qword_2A174E9E0);
                if (!v101)
                {
                  v101 = sub_29ADC4754();
                }

                v129 = (*(v101 + 12) ^ *(v7 + 32)) < 8uLL;
                if ((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v102 = ((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v102 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v101);
                }

                std::string::operator=(&v131, v102);
                a1 = pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(a3, &__p, v103);
LABEL_216:
                if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v131.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v130.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v125.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  break;
                }

                v99 = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v71 = ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v70 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
                  v71 = v70;
                }

                if ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v89 = ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v89 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
                }

                v92 = sub_29A160470((v117 + 48), (v7 + 24));
                if (v92)
                {
                  v93 = *(v92 + 6);
                }

                else
                {
                  v93 = *(v117 + 88);
                  v132 = *(v7 + 24);
                  if ((v132 & 7) != 0)
                  {
                    v94 = v132 & 0xFFFFFFFFFFFFFFF8;
                    if ((atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      v132 = v94;
                    }
                  }

                  v133 = v93;
                  sub_29ADC24A4(v117 + 48, &v132, &v132);
                  if ((v132 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  ++*(v117 + 88);
                }

                std::to_string(v120, v93);
                v95 = std::string::insert(v120, 0, "color(");
                v96 = *&v95->__r_.__value_.__l.__data_;
                __p.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
                *&__p.__r_.__value_.__l.__data_ = v96;
                v95->__r_.__value_.__l.__size_ = 0;
                v95->__r_.__value_.__r.__words[2] = 0;
                v95->__r_.__value_.__r.__words[0] = 0;
                v97 = std::string::append(&__p, ")");
                v98 = *&v97->__r_.__value_.__l.__data_;
                v134.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
                *&v134.__r_.__value_.__l.__data_ = v98;
                v97->__r_.__value_.__l.__size_ = 0;
                v97->__r_.__value_.__r.__words[2] = 0;
                v97->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if ((v120[23] & 0x80000000) != 0)
                {
                  operator delete(*v120);
                }

                memset(&__p, 0, sizeof(__p));
                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(a3, v71, v89, &v134, &__p);
                v10 = v117;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  break;
                }

                v99 = v134.__r_.__value_.__r.__words[0];
              }

              operator delete(v99);
              break;
            }

            if (*v7 == 1)
            {
              v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v20)
              {
                v20 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              if ((*(v20 + 28) ^ *a4) < 8)
              {
                goto LABEL_42;
              }

              v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v21)
              {
                v21 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              if ((*(v21 + 24) ^ *a4) < 8)
              {
                goto LABEL_42;
              }

              v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!v22)
              {
                v22 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              if ((*(v22 + 25) ^ *a4) > 7)
              {
                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc::HgiShaderFunctionParamDesc(&__p);
                if ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v105 = ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v105 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v104);
                }

                v106 = std::string::operator=(&__p, v105);
                if ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v107 = ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v107 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v106);
                }

                std::string::operator=(&v125, v107);
                v108 = sub_29ADC21EC(a2, (v7 + 16));
                HIDWORD(v126) = sub_29ADC2164(v10, (v7 + 24), 1, v108);
                v127 = sub_29ADC22F8((v7 + 32));
                v128 = sub_29ADC2374((v7 + 32));
                v109 = atomic_load(&qword_2A174E9E0);
                if (!v109)
                {
                  v109 = sub_29ADC4754();
                }

                v129 = (*(v109 + 12) ^ *(v7 + 32)) < 8uLL;
                if ((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v110 = ((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v110 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v109);
                }

                std::string::operator=(&v131, v110);
                a1 = pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(a3, &__p, v111);
              }

              else
              {
LABEL_42:
                pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc::HgiShaderFunctionParamDesc(&__p);
                if ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v24 = ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
                }

                v82 = std::string::operator=(&__p, v24);
                if ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v83 = ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v83 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v82);
                }

                std::string::operator=(&v125, v83);
                LODWORD(v126) = sub_29ADC20A4(v10, v7, a6);
                v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                if (!v85)
                {
                  v85 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                }

                if ((*(v85 + 24) ^ *a4) < 8)
                {
                  goto LABEL_173;
                }

                v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                if (!v86)
                {
                  v86 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                }

                if ((*(v86 + 25) ^ *a4) <= 7)
                {
LABEL_173:
                  MEMORY[0x29C2C1A60](&v131, "VERTEX_CONTROL_POINTS_PER_PATCH");
                }

                a1 = pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(a3, &__p, v84);
              }

              goto LABEL_216;
            }

            break;
          case 2:
            pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::HgiShaderFunctionParamBlockDesc(&__p);
            if ((*(v7 + 48) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v32 = ((*(v7 + 48) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v32 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
            }

            v33 = std::string::operator=(&__p, v32);
            if ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v34 = ((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v34 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
            }

            v35 = std::string::operator=(&v125, v34);
            if ((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v36 = ((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v36 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
            }

            v37 = std::string::operator=(&v130, v36);
            v38 = *(v7 + 56);
            if ((*(v7 + 48) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v39 = ((*(v7 + 48) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v39 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v37);
            }

            if (*(v39 + 23) >= 0)
            {
              v40 = *(v39 + 23);
            }

            else
            {
              v40 = v39[1];
            }

            v41 = sub_29A022DE0(&v134, v40 + 1);
            if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v134;
            }

            else
            {
              v42 = v134.__r_.__value_.__r.__words[0];
            }

            if (v40)
            {
              if (*(v39 + 23) >= 0)
              {
                v43 = v39;
              }

              else
              {
                v43 = *v39;
              }

              v41 = memmove(v42, v43, v40);
            }

            *(&v42->__r_.__value_.__l.__data_ + v40) = 95;
            if ((*(v38 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v44 = ((*(v38 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v44 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
            }

            v45 = *(v44 + 23);
            if (v45 >= 0)
            {
              v46 = v44;
            }

            else
            {
              v46 = *v44;
            }

            if (v45 >= 0)
            {
              v47 = *(v44 + 23);
            }

            else
            {
              v47 = v44[1];
            }

            v48 = std::string::append(&v134, v46, v47);
            v49 = *&v48->__r_.__value_.__l.__data_;
            *&v120[16] = *(&v48->__r_.__value_.__l + 2);
            *v120 = v49;
            v48->__r_.__value_.__l.__size_ = 0;
            v48->__r_.__value_.__r.__words[2] = 0;
            v48->__r_.__value_.__r.__words[0] = 0;
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v132);
            if ((v120[23] & 0x80000000) != 0)
            {
              operator delete(*v120);
            }

            if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v134.__r_.__value_.__l.__data_);
            }

            v50 = *(v7 + 56);
            v51 = *(v7 + 64);
            if (v50 == v51)
            {
              v52 = 0;
            }

            else
            {
              v52 = 0;
              do
              {
                v52 += sub_29ADC21EC(a2, v50);
                v50 += 4;
              }

              while (v50 != v51);
            }

            v53 = sub_29ADC2164(v117, &v132, *v7 == 1, v52);
            LODWORD(v131.__r_.__value_.__l.__data_) = v53;
            v55 = *(v7 + 56);
            v54 = *(v7 + 64);
            while (v55 != v54)
            {
              v121 = 0u;
              memset(v120, 0, sizeof(v120));
              if ((v55[1] & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v56 = ((v55[1] & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v56 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v53);
              }

              std::string::operator=(v120, v56);
              v57 = sub_29ADA8708(v55);
              if ((*v57 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v58 = ((*v57 & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v58 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v57);
              }

              std::string::operator=(&v120[24], v58);
              v122 = sub_29ADC22F8(v55 + 3);
              v123 = sub_29ADC2374(v55 + 3);
              v53 = sub_29ADC23F0(&v126, v120);
              if (SHIBYTE(v121) < 0)
              {
                operator delete(*&v120[24]);
              }

              if ((v120[23] & 0x80000000) != 0)
              {
                operator delete(*v120);
              }

              v55 += 4;
            }

            v59 = 224;
            if (*v7 == 1)
            {
              v59 = 200;
            }

            sub_29ADC2450(a3 + v59, &__p);
          case 3:
            a1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            if (!a1)
            {
              a1 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
            }

            if ((*(a1 + 176) ^ *a4) > 7)
            {
              a1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!a1)
              {
                a1 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              if ((*(a1 + 184) ^ *a4) < 8)
              {
                goto LABEL_59;
              }

              a1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              if (!a1)
              {
                a1 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
              }

              if ((*(a1 + 200) ^ *a4) > 7)
              {
                a1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                if (!a1)
                {
                  a1 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
                }

                if ((*(a1 + 72) ^ *a4) > 7)
                {
                  a1 = atomic_load(&qword_2A174E9E0);
                  if (!a1)
                  {
                    a1 = sub_29ADC4754();
                  }

                  if ((*(a1 + 632) ^ *(v7 + 32)) <= 7)
                  {
                    *(a3 + 360) = 1;
                  }

                  break;
                }

                if (*v7 == 2)
                {
                  a1 = atomic_load(&qword_2A174E9E0);
                  if (!a1)
                  {
                    a1 = sub_29ADC4754();
                  }

                  if ((*(a1 + 576) ^ *(v7 + 32)) <= 7)
                  {
                    *(a3 + 332) = 0;
                    break;
                  }

                  a1 = atomic_load(&qword_2A174E9E0);
                  if (!a1)
                  {
                    a1 = sub_29ADC4754();
                  }

                  if ((*(a1 + 616) ^ *(v7 + 32)) <= 7)
                  {
                    v114 = 1;
LABEL_277:
                    *(a3 + 332) = v114;
                    break;
                  }

                  a1 = atomic_load(&qword_2A174E9E0);
                  if (!a1)
                  {
                    a1 = sub_29ADC4754();
                  }

                  v115 = *(v7 + 32);
                  if ((*(a1 + 624) ^ v115) <= 7)
                  {
                    v114 = 2;
                    goto LABEL_277;
                  }

                  v116 = v115 & 0xFFFFFFFFFFFFFFF8;
                  if (v116)
                  {
                    v17 = (v116 + 16);
                  }

                  else
                  {
                    v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
                  }

                  v87 = (a3 + 336);
                  goto LABEL_177;
                }

                if (*v7 == 1)
                {
                  a1 = atomic_load(&qword_2A174E9E0);
                  if (!a1)
                  {
                    a1 = sub_29ADC4754();
                  }

                  if ((*(a1 + 576) ^ *(v7 + 32)) > 7)
                  {
                    a1 = atomic_load(&qword_2A174E9E0);
                    if (!a1)
                    {
                      a1 = sub_29ADC4754();
                    }

                    if ((*(a1 + 584) ^ *(v7 + 32)) > 7)
                    {
                      a1 = atomic_load(&qword_2A174E9E0);
                      if (!a1)
                      {
                        a1 = sub_29ADC4754();
                      }

                      if ((*(a1 + 592) ^ *(v7 + 32)) > 7)
                      {
                        a1 = atomic_load(&qword_2A174E9E0);
                        if (!a1)
                        {
                          a1 = sub_29ADC4754();
                        }

                        if ((*(a1 + 600) ^ *(v7 + 32)) > 7)
                        {
                          a1 = atomic_load(&qword_2A174E9E0);
                          if (!a1)
                          {
                            a1 = sub_29ADC4754();
                          }

                          if ((*(a1 + 608) ^ *(v7 + 32)) > 7)
                          {
                            break;
                          }

                          v113 = 4;
                        }

                        else
                        {
                          v113 = 3;
                        }
                      }

                      else
                      {
                        v113 = 2;
                      }
                    }

                    else
                    {
                      v113 = 1;
                    }

                    *(a3 + 328) = v113;
                  }

                  else
                  {
                    *(a3 + 328) = 0;
                  }
                }
              }

              else
              {
LABEL_59:
                if (*v7 == 1)
                {
                  a1 = atomic_load(&qword_2A174E9E0);
                  if (!a1)
                  {
                    a1 = sub_29ADC4754();
                  }

                  if ((*(a1 + 600) ^ *(v7 + 32)) > 7)
                  {
                    a1 = atomic_load(&qword_2A174E9E0);
                    if (!a1)
                    {
                      a1 = sub_29ADC4754();
                    }

                    if ((*(a1 + 520) ^ *(v7 + 32)) <= 7)
                    {
                      v88 = 1;
LABEL_231:
                      *(a3 + 264) = v88;
                      break;
                    }

                    a1 = atomic_load(&qword_2A174E9E0);
                    if (!a1)
                    {
                      a1 = sub_29ADC4754();
                    }

                    if ((*(a1 + 528) ^ *(v7 + 32)) <= 7)
                    {
                      v88 = 2;
                      goto LABEL_231;
                    }

                    a1 = atomic_load(&qword_2A174E9E0);
                    if (!a1)
                    {
                      a1 = sub_29ADC4754();
                    }

                    if ((*(a1 + 536) ^ *(v7 + 32)) > 7)
                    {
                      a1 = atomic_load(&qword_2A174E9E0);
                      if (!a1)
                      {
                        a1 = sub_29ADC4754();
                      }

                      if ((*(a1 + 544) ^ *(v7 + 32)) > 7)
                      {
                        a1 = atomic_load(&qword_2A174E9E0);
                        if (!a1)
                        {
                          a1 = sub_29ADC4754();
                        }

                        if ((*(a1 + 552) ^ *(v7 + 32)) > 7)
                        {
                          a1 = atomic_load(&qword_2A174E9E0);
                          if (!a1)
                          {
                            a1 = sub_29ADC4754();
                          }

                          if ((*(a1 + 560) ^ *(v7 + 32)) > 7)
                          {
                            a1 = atomic_load(&qword_2A174E9E0);
                            if (!a1)
                            {
                              a1 = sub_29ADC4754();
                            }

                            if ((*(a1 + 568) ^ *(v7 + 32)) <= 7)
                            {
                              *(a3 + 272) = 1;
                            }
                          }

                          else
                          {
                            *(a3 + 272) = 0;
                          }

                          break;
                        }

                        v112 = 2;
                      }

                      else
                      {
                        v112 = 1;
                      }

                      *(a3 + 268) = v112;
                    }

                    else
                    {
                      *(a3 + 268) = 0;
                    }
                  }

                  else
                  {
                    *(a3 + 264) = 0;
                  }
                }
              }
            }

            else if (*v7 == 2)
            {
              if ((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v17 = ((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
              }

              v87 = (a3 + 304);
LABEL_177:
              a1 = std::string::operator=(v87, v17);
            }

            break;
          default:
            break;
        }
      }

      else
      {
        if (v11 <= 6)
        {
          if (v11 != 5)
          {
            v13 = *(v7 + 56);
            v12 = *(v7 + 64);
            while (v13 != v12)
            {
              if ((v13[1] & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v14 = ((v13[1] & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
              }

              v15 = sub_29ADA8708(v13);
              if ((*v15 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v16 = ((*v15 & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
              }

              memset(&__p, 0, sizeof(__p));
              pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(a3, v14, v16, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v13 += 4;
            }

            goto LABEL_225;
          }

          v25 = *(v7 + 56);
          if (*(v7 + 64) - v25 != 32)
          {
            __p.__r_.__value_.__r.__words[0] = "hdSt/codeGen.cpp";
            __p.__r_.__value_.__l.__size_ = "_GenerateHgiResources";
            __p.__r_.__value_.__r.__words[2] = 909;
            v125.__r_.__value_.__r.__words[0] = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ResourceGenerator::_GenerateHgiResources(const Hgi *, HgiShaderFunctionDesc *, const TfToken &, const HioGlslfxResourceLayout::ElementVector &, const HdSt_ResourceBinder::MetaData &)";
            v125.__r_.__value_.__s.__data_[8] = 0;
            a1 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "element.members.size() == 1", 0);
            if (!a1)
            {
              goto LABEL_225;
            }

            v25 = *(v7 + 56);
          }

          v26 = *(v7 + 40);
          if (!v26 || ((v27 = v26 & 0xFFFFFFFFFFFFFFF8) == 0 ? (v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1)) : (v28 = (v27 + 16)), a1 = std::stoi(v28, 0, 10), !a1))
          {
            if ((v25[1] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v74 = ((v25[1] & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v74 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
            }

            v10 = v117;
            v75 = sub_29ADA8708(v25);
            if ((*v75 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v76 = ((*v75 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v76 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v75);
            }

            v62 = sub_29ADC20A4(v117, v7, a6);
            v63 = a3;
            v64 = v74;
            v65 = v76;
            v66 = 1;
            goto LABEL_145;
          }

          v72 = a1;
          if ((v25[1] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v73 = ((v25[1] & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v73 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
          }

          v80 = sub_29ADA8708(v25);
          if ((*v80 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v81 = ((*v80 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v81 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v80);
          }

          v62 = sub_29ADC20A4(v117, v7, a6);
          v63 = a3;
          v64 = v73;
          v65 = v81;
          v66 = 3;
          v77 = v72;
          v10 = v117;
LABEL_146:
          pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(v63, v64, v65, v62, v66, v77);
          goto LABEL_225;
        }

        if (v11 == 7)
        {
          v29 = *(v7 + 56);
          if (*(v7 + 64) - v29 != 32)
          {
            __p.__r_.__value_.__r.__words[0] = "hdSt/codeGen.cpp";
            __p.__r_.__value_.__l.__size_ = "_GenerateHgiResources";
            __p.__r_.__value_.__r.__words[2] = 940;
            v125.__r_.__value_.__r.__words[0] = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ResourceGenerator::_GenerateHgiResources(const Hgi *, HgiShaderFunctionDesc *, const TfToken &, const HioGlslfxResourceLayout::ElementVector &, const HdSt_ResourceBinder::MetaData &)";
            v125.__r_.__value_.__s.__data_[8] = 0;
            a1 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "element.members.size() == 1", 0);
            if (!a1)
            {
              goto LABEL_225;
            }

            v29 = *(v7 + 56);
          }

          if ((v29[1] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v30 = ((v29[1] & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
          }

          v60 = sub_29ADA8708(v29);
          if ((*v60 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v61 = ((*v60 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v61 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v60);
          }

          v62 = sub_29ADC20A4(v10, v7, a6);
          v63 = a3;
          v64 = v30;
          v65 = v61;
          v66 = 4;
LABEL_145:
          v77 = 0;
          goto LABEL_146;
        }

        if (v11 == 8)
        {
          v18 = *(v7 + 56);
          if (*(v7 + 64) - v18 == 32)
          {
            goto LABEL_29;
          }

          __p.__r_.__value_.__r.__words[0] = "hdSt/codeGen.cpp";
          __p.__r_.__value_.__l.__size_ = "_GenerateHgiResources";
          __p.__r_.__value_.__r.__words[2] = 950;
          v125.__r_.__value_.__r.__words[0] = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ResourceGenerator::_GenerateHgiResources(const Hgi *, HgiShaderFunctionDesc *, const TfToken &, const HioGlslfxResourceLayout::ElementVector &, const HdSt_ResourceBinder::MetaData &)";
          v125.__r_.__value_.__s.__data_[8] = 0;
          a1 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "element.members.size() == 1", 0);
          if (a1)
          {
            v18 = *(v7 + 56);
LABEL_29:
            if ((v18[1] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v19 = ((v18[1] & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
            }

            v67 = sub_29ADA8708(v18);
            if ((*v67 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v68 = ((*v67 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v68 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v67);
            }

            v69 = sub_29ADC20A4(v10, v7, a6);
            pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(a3, v19, v68, v69);
          }
        }
      }

LABEL_225:
      v7 += 80;
    }

    while (v7 != v6);
  }
}

void sub_29ADBD6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v30 = *(v29 - 144);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADBD7E4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *(v2 + 20);
      if (v5 == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2 * (v5 == 2);
      }

      HdFormat = pxrInternal__aapl__pxrReserved__::HdStHioConversions::GetHdFormat(*(v2 + 16));
      v8 = HdFormat;
      v9 = *(v2 + 24);
      v10 = *v2 & 0xFFFFFFFFFFFFFFF8;
      if (v9 < 1)
      {
        if (v10)
        {
          EmptyString = (v10 + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(HdFormat);
        }

        v16 = *(v2 + 8);
        v15 = *(v2 + 12);
        HgiFormat = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiFormat(v8);
        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(a1, EmptyString, v15, v16, &HgiFormat, v6);
      }

      else
      {
        if (v10)
        {
          v11 = (v10 + 16);
        }

        else
        {
          v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(HdFormat);
          v9 = *(v2 + 24);
        }

        v14 = *(v2 + 8);
        v13 = *(v2 + 12);
        v18 = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiFormat(v8);
        pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddArrayOfTextures(a1, v11, v9, v13, v14, &v18, v6);
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::operator+<char>();
  v4 = sub_29A5DAB7C((a1 + 5032), &__p);
  v5 = v4;
  if (v12 < 0)
  {
    operator delete(__p);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    v6 = v5[5];
    *a2 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*(v5 + 71) & 0x80000000) == 0)
    {
      v7 = *(v5 + 3);
      v8 = v5[8];
LABEL_11:
      *(a2 + 24) = v8;
      *(a2 + 8) = v7;
      return;
    }

    sub_29A008D14((a2 + 8), v5[6], v5[7]);
    return;
  }

  v9 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  if ((*(EmptyString + 23) & 0x80000000) == 0)
  {
    v7 = *EmptyString;
    v8 = EmptyString[2];
    goto LABEL_11;
  }

  sub_29A008D14((a2 + 8), *EmptyString, EmptyString[1]);
}

void sub_29ADBDA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((*v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoord(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, const char *a5, const char *a6)
{
  v11 = sub_29A00911C((a2 + 16), "hd_drawingCoord GetDrawingCoord() { \n", 37);
  sub_29A00911C(v11, "  hd_drawingCoord dc; \n", 23);
  v13 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(a1, &v64);
      v14 = sub_29A00911C((a2 + 16), "  dc.", 5);
      v15 = *(v13 + 23);
      if (v15 >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = *(v13 + 8);
      }

      v18 = sub_29A00911C(v14, v16, v17);
      v19 = sub_29A00911C(v18, " = ", 3);
      v20 = strlen(a5);
      v21 = sub_29A00911C(v19, a5, v20);
      v22 = pxrInternal__aapl__pxrReserved__::operator<<(v21, &v64);
      v23 = strlen(a6);
      v24 = sub_29A00911C(v22, a6, v23);
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
        v26 = v67;
      }

      else
      {
        v26 = v66;
      }

      v27 = sub_29A00911C(v24, p_p, v26);
      sub_29A00911C(v27, ";\n", 2);
      if (v67 < 0)
      {
        operator delete(__p);
      }

      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 += 24;
    }

    while (v13 != v12);
  }

  if (a4 >= 1)
  {
    v28 = 0;
    do
    {
      std::to_string(&v61, v28);
      v29 = std::string::insert(&v61, 0, "instanceIndexI");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v63 = v29->__r_.__value_.__r.__words[2];
      *v62 = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(a1, &v64);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v31 = sub_29A00911C((a2 + 16), "  dc.instanceIndex[", 19);
      v32 = MEMORY[0x29C2C1ED0](v31, v28);
      v33 = sub_29A00911C(v32, "]", 1);
      v34 = sub_29A00911C(v33, " = ", 3);
      v35 = strlen(a5);
      v36 = sub_29A00911C(v34, a5, v35);
      v37 = pxrInternal__aapl__pxrReserved__::operator<<(v36, &v64);
      v38 = strlen(a6);
      v39 = sub_29A00911C(v37, a6, v38);
      if ((v67 & 0x80u) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p;
      }

      if ((v67 & 0x80u) == 0)
      {
        v41 = v67;
      }

      else
      {
        v41 = v66;
      }

      v42 = sub_29A00911C(v39, v40, v41);
      sub_29A00911C(v42, ";\n", 2);
      if (v67 < 0)
      {
        operator delete(__p);
      }

      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = (v28 + 1);
    }

    while (a4 != v28);
    if (a4 != 1)
    {
      v43 = 0;
      do
      {
        std::to_string(&v61, v43);
        v44 = std::string::insert(&v61, 0, "instanceCoordsI");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v63 = v44->__r_.__value_.__r.__words[2];
        *v62 = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(a1, &v64);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v46 = sub_29A00911C((a2 + 16), "  dc.instanceCoords[", 20);
        v47 = MEMORY[0x29C2C1ED0](v46, v43);
        v48 = sub_29A00911C(v47, "]", 1);
        v49 = sub_29A00911C(v48, " = ", 3);
        v50 = strlen(a5);
        v51 = sub_29A00911C(v49, a5, v50);
        v52 = pxrInternal__aapl__pxrReserved__::operator<<(v51, &v64);
        v53 = strlen(a6);
        v54 = sub_29A00911C(v52, a6, v53);
        if ((v67 & 0x80u) == 0)
        {
          v55 = &__p;
        }

        else
        {
          v55 = __p;
        }

        if ((v67 & 0x80u) == 0)
        {
          v56 = v67;
        }

        else
        {
          v56 = v66;
        }

        v57 = sub_29A00911C(v54, v55, v56);
        sub_29A00911C(v57, ";\n", 2);
        if (v67 < 0)
        {
          operator delete(__p);
        }

        if ((v64 & 7) != 0)
        {
          atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v43 = (v43 + 1);
      }

      while (a4 - 1 != v43);
    }
  }

  v58 = sub_29A00911C((a2 + 16), "  return dc; \n", 14);
  return sub_29A00911C(v58, "}\n", 2);
}

void sub_29ADBDEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_ProcessDrawingCoord(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, const char *a5, const char *a6)
{
  sub_29A00911C((a2 + 16), "  hd_drawingCoord dc = GetDrawingCoord();\n", 42);
  v11 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(a1, &v64);
      v13 = sub_29A00911C((a2 + 16), "  ", 2);
      v14 = strlen(a5);
      v15 = sub_29A00911C(v13, a5, v14);
      v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, &v64);
      v17 = strlen(a6);
      v18 = sub_29A00911C(v16, a6, v17);
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

      v21 = sub_29A00911C(v18, p_p, v20);
      v22 = sub_29A00911C(v21, " = ", 3);
      v23 = sub_29A00911C(v22, "dc.", 3);
      v24 = *(v11 + 23);
      if (v24 >= 0)
      {
        v25 = v11;
      }

      else
      {
        v25 = *v11;
      }

      if (v24 >= 0)
      {
        v26 = *(v11 + 23);
      }

      else
      {
        v26 = *(v11 + 8);
      }

      v27 = sub_29A00911C(v23, v25, v26);
      sub_29A00911C(v27, ";\n", 2);
      if (v67 < 0)
      {
        operator delete(__p);
      }

      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 += 24;
    }

    while (v11 != v12);
  }

  if (a4 >= 1)
  {
    v28 = 0;
    do
    {
      std::to_string(&v61, v28);
      v29 = std::string::insert(&v61, 0, "instanceIndexI");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v63 = v29->__r_.__value_.__r.__words[2];
      *v62 = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(a1, &v64);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v31 = sub_29A00911C((a2 + 16), "  ", 2);
      v32 = strlen(a5);
      v33 = sub_29A00911C(v31, a5, v32);
      v34 = pxrInternal__aapl__pxrReserved__::operator<<(v33, &v64);
      v35 = strlen(a6);
      v36 = sub_29A00911C(v34, a6, v35);
      if ((v67 & 0x80u) == 0)
      {
        v37 = &__p;
      }

      else
      {
        v37 = __p;
      }

      if ((v67 & 0x80u) == 0)
      {
        v38 = v67;
      }

      else
      {
        v38 = v66;
      }

      v39 = sub_29A00911C(v36, v37, v38);
      v40 = sub_29A00911C(v39, " = ", 3);
      v41 = sub_29A00911C(v40, "dc.instanceIndex[", 17);
      v42 = MEMORY[0x29C2C1ED0](v41, v28);
      v43 = sub_29A00911C(v42, "]", 1);
      sub_29A00911C(v43, ";\n", 2);
      if (v67 < 0)
      {
        operator delete(__p);
      }

      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = (v28 + 1);
    }

    while (a4 != v28);
    if (a4 != 1)
    {
      v44 = 0;
      do
      {
        std::to_string(&v61, v44);
        v45 = std::string::insert(&v61, 0, "instanceCoordsI");
        v46 = *&v45->__r_.__value_.__l.__data_;
        v63 = v45->__r_.__value_.__r.__words[2];
        *v62 = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoordMapping(a1, &v64);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v47 = sub_29A00911C((a2 + 16), "  ", 2);
        v48 = strlen(a5);
        v49 = sub_29A00911C(v47, a5, v48);
        v50 = pxrInternal__aapl__pxrReserved__::operator<<(v49, &v64);
        v51 = strlen(a6);
        v52 = sub_29A00911C(v50, a6, v51);
        if ((v67 & 0x80u) == 0)
        {
          v53 = &__p;
        }

        else
        {
          v53 = __p;
        }

        if ((v67 & 0x80u) == 0)
        {
          v54 = v67;
        }

        else
        {
          v54 = v66;
        }

        v55 = sub_29A00911C(v52, v53, v54);
        v56 = sub_29A00911C(v55, " = ", 3);
        v57 = sub_29A00911C(v56, "dc.instanceCoords[", 18);
        v58 = MEMORY[0x29C2C1ED0](v57, v44);
        v59 = sub_29A00911C(v58, "]", 1);
        sub_29A00911C(v59, ";\n", 2);
        if (v67 < 0)
        {
          operator delete(__p);
        }

        if ((v64 & 7) != 0)
        {
          atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v44 = (v44 + 1);
      }

      while (a4 - 1 != v44);
    }
  }
}

void sub_29ADBE3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29ADBE450(uint64_t a1, uint64_t *a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    v6 = (a1 + 8);
LABEL_9:
    v7 = operator new(0x48uLL);
    v8 = v7;
    v9 = *a2;
    *(v7 + 4) = *a2;
    if ((v9 & 7) != 0)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v7 + 4) = v10;
      }
    }

    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v6;
    *v5 = v7;
    v11 = **a1;
    v12 = v7;
    if (v11)
    {
      *a1 = v11;
      v12 = *v5;
    }

    sub_29A00B25C(*(a1 + 8), v12);
    ++*(a1 + 16);
    return v8 + 5;
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      if (!sub_29A153D90(a1, a2, v4 + 4))
      {
        break;
      }

      v4 = *v6;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (!sub_29A153D90(a1, v6 + 4, a2))
    {
      break;
    }

    v5 = (v6 + 1);
    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v8 = *v5;
  if (!*v5)
  {
    goto LABEL_9;
  }

  return v8 + 5;
}

void *sub_29ADBE564(void *a1)
{
  v2 = atomic_load(&qword_2A174E9E0);
  if (!v2)
  {
    v2 = sub_29ADC4754();
  }

  v3 = *(v2 + 448) ^ *a1;
  v4 = atomic_load(&qword_2A174E9E0);
  if (v3 <= 7)
  {
    if (v4)
    {
      return (v4 + 384);
    }

LABEL_16:
    v4 = sub_29ADC4754();
    return (v4 + 384);
  }

  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  v5 = *(v4 + 456) ^ *a1;
  v6 = atomic_load(&qword_2A174E9E0);
  if (v5 > 7)
  {
    if (!v6)
    {
      v6 = sub_29ADC4754();
    }

    if ((*(v6 + 464) ^ *a1) <= 7)
    {
      v4 = atomic_load(&qword_2A174E9E0);
      if (v4)
      {
        return (v4 + 384);
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!v6)
    {
      v6 = sub_29ADC4754();
    }

    return (v6 + 368);
  }

  return a1;
}

void *sub_29ADBE62C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C8A58();
  }

  return result;
}

void *sub_29ADBE664(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::TfToken, LevelEntries>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::TfToken, LevelEntries>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void sub_29ADBE70C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_29ADBE564(a4);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v8);
  v10 = sub_29A00911C(v9, " HdGet_", 7);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, a2);
  sub_29A00911C(v11, "(int localIndex) { return ", 26);
  v12 = sub_29ADBF8C8(a4, 1);
  v13 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v12);
  v14 = sub_29A00911C(v13, "(", 1);
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = sub_29A00911C(v14, v16, v17);
  sub_29A00911C(v18, ");}\n", 4);
  v19 = sub_29ADBE564(a4);
  v20 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v19);
  v21 = sub_29A00911C(v20, " HdGet_", 7);
  v22 = pxrInternal__aapl__pxrReserved__::operator<<(v21, a2);
  v23 = sub_29A00911C(v22, "()", 2);
  v24 = sub_29A00911C(v23, " { return HdGet_", 16);
  v25 = pxrInternal__aapl__pxrReserved__::operator<<(v24, a2);
  sub_29A00911C(v25, "(0); }\n", 7);

  sub_29ADBFABC(a1, a2, a4);
}

void *sub_29ADBE858(uint64_t a1, void *a2, void *a3, const char *a4)
{
  if (a4)
  {
    v8 = sub_29ADBE564(a3);
    v9 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v8);
    v10 = sub_29A00911C(v9, " HdGet_", 7);
    v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, a2);
    v12 = sub_29A00911C(v11, "(int localIndex) {\n", 19);
    v13 = sub_29A00911C(v12, "  int index = ", 14);
    v14 = strlen(a4);
    v15 = sub_29A00911C(v13, a4, v14);
    v16 = sub_29A00911C(v15, ";\n", 2);
    v17 = sub_29A00911C(v16, "  return ", 9);
    v18 = sub_29ADBF8C8(a3, 1);
    v19 = pxrInternal__aapl__pxrReserved__::operator<<(v17, v18);
    v20 = sub_29A00911C(v19, "(", 1);
    v21 = pxrInternal__aapl__pxrReserved__::operator<<(v20, a2);
    sub_29A00911C(v21, "[index]);\n}\n", 12);
  }

  v22 = sub_29ADBE564(a3);
  v23 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v22);
  v24 = sub_29A00911C(v23, " HdGet_", 7);
  v25 = pxrInternal__aapl__pxrReserved__::operator<<(v24, a2);
  v26 = sub_29A00911C(v25, "()", 2);
  v27 = sub_29A00911C(v26, " { return HdGet_", 16);
  v28 = pxrInternal__aapl__pxrReserved__::operator<<(v27, a2);

  return sub_29A00911C(v28, "(0); }\n", 7);
}

void *sub_29ADBE9D4(int a1, uint64_t a2, void *a3, void *a4, _DWORD *a5, int *a6, uint64_t a7)
{
  v14 = sub_29ADBE564(a4);
  v15 = pxrInternal__aapl__pxrReserved__::operator<<((a2 + 16), v14);
  v16 = sub_29A00911C(v15, " HdGet_", 7);
  v17 = pxrInternal__aapl__pxrReserved__::operator<<(v16, a3);
  sub_29A00911C(v17, "_Coarse(int localIndex) {\n", 26);
  if ((*a6 | 2) == 2)
  {
    v18 = "  int fvarIndex = GetFVarIndex(localIndex);\n";
    v19 = (a2 + 16);
    v20 = 44;
  }

  else
  {
    v18 = "  int fvarIndex = GetDrawingCoord().fvarCoord + localIndex;\n";
    v19 = (a2 + 16);
    v20 = 60;
  }

  sub_29A00911C(v19, v18, v20);
  v21 = sub_29A00911C((a2 + 16), "  return ", 9);
  v22 = sub_29ADBF8C8(a4, 1);
  v23 = pxrInternal__aapl__pxrReserved__::operator<<(v21, v22);
  v24 = sub_29A00911C(v23, "(", 1);
  v25 = pxrInternal__aapl__pxrReserved__::operator<<(v24, a3);
  sub_29A00911C(v25, "[fvarIndex]);\n}\n", 16);
  v26 = sub_29ADBE564(a4);
  v27 = pxrInternal__aapl__pxrReserved__::operator<<((a2 + 16), v26);
  v28 = sub_29A00911C(v27, " HdGet_", 7);
  v29 = pxrInternal__aapl__pxrReserved__::operator<<(v28, a3);
  sub_29A00911C(v29, "(int localIndex, vec2 st) {\n", 28);
  v30 = *a6;
  if (*a6 == 5)
  {
    v31 = "  int patchType = OSD_PATCH_DESCRIPTOR_LOOP;\n";
    v32 = (a2 + 16);
    v33 = 45;
  }

  else
  {
    if (v30 != 4)
    {
      goto LABEL_9;
    }

    v31 = "  int patchType = OSD_PATCH_DESCRIPTOR_REGULAR;\n";
    v32 = (a2 + 16);
    v33 = 48;
  }

  sub_29A00911C(v32, v31, v33);
  v30 = *a6;
LABEL_9:
  if (v30 > 2)
  {
    if ((v30 - 4) < 2)
    {
      v54 = sub_29A00911C((a2 + 16), "  ivec2 fvarPatchParam = HdGet_fvarPatchParam", 45);
      v55 = MEMORY[0x29C2C1ED0](v54, a7);
      v56 = sub_29A00911C(v55, "();\n", 4);
      v57 = sub_29A00911C(v56, "  OsdPatchParam param = OsdPatchParamInit(fvarPatchParam.x,", 59);
      v58 = sub_29A00911C(v57, " fvarPatchParam.y, 0.0f);\n", 26);
      v59 = sub_29A00911C(v58, "  float wP[20], wDu[20], wDv[20], wDuu[20], wDuv[20], ", 54);
      v60 = sub_29A00911C(v59, "wDvv[20];\n", 10);
      v61 = sub_29A00911C(v60, "  OsdEvaluatePatchBasisNormalized(patchType, param,", 51);
      v62 = sub_29A00911C(v61, " st.x, st.y, wP, wDu, wDv, wDuu, wDuv, wDvv);\n", 46);
      v63 = sub_29A00911C(v62, "  ", 2);
      v64 = sub_29ADBE564(a4);
      v65 = pxrInternal__aapl__pxrReserved__::operator<<(v63, v64);
      v66 = sub_29A00911C(v65, " result = ", 10);
      v67 = sub_29ADBE564(a4);
      v68 = pxrInternal__aapl__pxrReserved__::operator<<(v66, v67);
      v69 = sub_29A00911C(v68, "(0);\n", 5);
      v70 = sub_29A00911C(v69, "  for (int i = 0; i < HD_NUM_PATCH_VERTS; ++i) {\n", 49);
      v71 = sub_29A00911C(v70, "    int fvarIndex = HdGet_fvarIndices", 37);
      v72 = MEMORY[0x29C2C1ED0](v71, a7);
      v73 = sub_29A00911C(v72, "(i);\n", 5);
      v74 = sub_29A00911C(v73, "    ", 4);
      v75 = sub_29ADBE564(a4);
      v76 = pxrInternal__aapl__pxrReserved__::operator<<(v74, v75);
      v77 = sub_29A00911C(v76, " cv = ", 6);
      v78 = sub_29ADBE564(a4);
      v79 = pxrInternal__aapl__pxrReserved__::operator<<(v77, v78);
      v80 = sub_29A00911C(v79, "(HdGet_", 7);
      v81 = pxrInternal__aapl__pxrReserved__::operator<<(v80, a3);
      v82 = sub_29A00911C(v81, "_Coarse(fvarIndex));\n", 21);
      v83 = sub_29A00911C(v82, "    result += wP[i] * cv;\n", 26);
      v51 = sub_29A00911C(v83, "  }\n", 4);
      v52 = " return result;\n}\n";
      v53 = 18;
    }

    else
    {
      if (v30 == 3)
      {
        v105 = sub_29A00911C((a2 + 16), "  ivec4 indices = HdGet_fvarIndices", 35);
        v106 = MEMORY[0x29C2C1ED0](v105, a7);
        v107 = sub_29A00911C(v106, "();\n", 4);
        v108 = sub_29A00911C(v107, "  return mix(", 13);
        v109 = sub_29A00911C(v108, "mix(", 4);
        v110 = sub_29A00911C(v109, "HdGet_", 6);
        v111 = pxrInternal__aapl__pxrReserved__::operator<<(v110, a3);
        v112 = sub_29A00911C(v111, "_Coarse(indices[0]),", 20);
        v113 = sub_29A00911C(v112, "HdGet_", 6);
        v114 = pxrInternal__aapl__pxrReserved__::operator<<(v113, a3);
        v115 = sub_29A00911C(v114, "_Coarse(indices[1]), st.x),", 27);
        v116 = sub_29A00911C(v115, "mix(", 4);
        v117 = sub_29A00911C(v116, "HdGet_", 6);
        v118 = pxrInternal__aapl__pxrReserved__::operator<<(v117, a3);
        v119 = sub_29A00911C(v118, "_Coarse(indices[3]),", 20);
        v120 = sub_29A00911C(v119, "HdGet_", 6);
        v47 = pxrInternal__aapl__pxrReserved__::operator<<(v120, a3);
        v48 = "_Coarse(indices[2]), st.x), ";
        v49 = 28;
        goto LABEL_23;
      }

      if (v30 != 6)
      {
LABEL_21:
        v103 = sub_29A00911C((a2 + 16), "  return HdGet_", 15);
        v104 = pxrInternal__aapl__pxrReserved__::operator<<(v103, a3);
        sub_29A00911C(v104, "_Coarse(localIndex);\n}\n", 23);
        v159[0] = "hdSt/codeGen.cpp";
        v159[1] = "_EmitFVarAccessor";
        v159[2] = 4126;
        v159[3] = "void pxrInternal__aapl__pxrReserved__::_EmitFVarAccessor(BOOL, std::stringstream &, const TfToken &, const TfToken &, const HdStBinding &, const HdSt_GeometricShader::PrimitiveType &, const HdSt_GeometricShader::FvarPatchType &, int)";
        v160 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v159, 1, "Face varing bindings for unexpected for HdSt_GeometricShader::PrimitiveType %d", *a5);
        goto LABEL_25;
      }

      v50 = sub_29A00911C((a2 + 16), "  return HdGet_", 15);
      v51 = pxrInternal__aapl__pxrReserved__::operator<<(v50, a3);
      v52 = "_Coarse(localIndex);\n}\n";
      v53 = 23;
    }
  }

  else if (v30)
  {
    if (v30 != 1)
    {
      if (v30 == 2)
      {
        v34 = sub_29A00911C((a2 + 16), "  return mix(", 13);
        v35 = sub_29A00911C(v34, "mix(", 4);
        v36 = sub_29A00911C(v35, "HdGet_", 6);
        v37 = pxrInternal__aapl__pxrReserved__::operator<<(v36, a3);
        v38 = sub_29A00911C(v37, "_Coarse(0),", 11);
        v39 = sub_29A00911C(v38, "HdGet_", 6);
        v40 = pxrInternal__aapl__pxrReserved__::operator<<(v39, a3);
        v41 = sub_29A00911C(v40, "_Coarse(1), st.x),", 18);
        v42 = sub_29A00911C(v41, "mix(", 4);
        v43 = sub_29A00911C(v42, "HdGet_", 6);
        v44 = pxrInternal__aapl__pxrReserved__::operator<<(v43, a3);
        v45 = sub_29A00911C(v44, "_Coarse(3),", 11);
        v46 = sub_29A00911C(v45, "HdGet_", 6);
        v47 = pxrInternal__aapl__pxrReserved__::operator<<(v46, a3);
        v48 = "_Coarse(2), st.x), ";
        v49 = 19;
LABEL_23:
        v51 = sub_29A00911C(v47, v48, v49);
        v52 = "st.y);\n}\n";
        v53 = 9;
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v92 = sub_29A00911C((a2 + 16), "  ivec3 indices = HdGet_fvarIndices", 35);
    v93 = MEMORY[0x29C2C1ED0](v92, a7);
    v94 = sub_29A00911C(v93, "();\n", 4);
    v95 = sub_29A00911C(v94, "  return (", 10);
    v96 = sub_29A00911C(v95, "HdGet_", 6);
    v97 = pxrInternal__aapl__pxrReserved__::operator<<(v96, a3);
    v98 = sub_29A00911C(v97, "_Coarse(indices[0]) * (1-st.x-st.y)", 35);
    v99 = sub_29A00911C(v98, " + HdGet_", 9);
    v100 = pxrInternal__aapl__pxrReserved__::operator<<(v99, a3);
    v101 = sub_29A00911C(v100, "_Coarse(indices[1]) * st.x", 26);
    v102 = sub_29A00911C(v101, " + HdGet_", 9);
    v51 = pxrInternal__aapl__pxrReserved__::operator<<(v102, a3);
    v52 = "_Coarse(indices[2]) * st.y);\n}\n";
    v53 = 31;
  }

  else
  {
    v84 = sub_29A00911C((a2 + 16), "  return (", 10);
    v85 = sub_29A00911C(v84, "HdGet_", 6);
    v86 = pxrInternal__aapl__pxrReserved__::operator<<(v85, a3);
    v87 = sub_29A00911C(v86, "_Coarse(0) * (1-st.x-st.y)", 26);
    v88 = sub_29A00911C(v87, " + HdGet_", 9);
    v89 = pxrInternal__aapl__pxrReserved__::operator<<(v88, a3);
    v90 = sub_29A00911C(v89, "_Coarse(1) * st.x", 17);
    v91 = sub_29A00911C(v90, " + HdGet_", 9);
    v51 = pxrInternal__aapl__pxrReserved__::operator<<(v91, a3);
    v52 = "_Coarse(2) * st.y);\n}\n";
    v53 = 22;
  }

LABEL_24:
  sub_29A00911C(v51, v52, v53);
LABEL_25:
  v121 = sub_29A00911C((a2 + 16), "FORWARD_DECL(vec4 GetPatchCoord(int index));\n", 45);
  v122 = sub_29A00911C(v121, "FORWARD_DECL(vec2 GetPatchCoordLocalST());\n", 43);
  v123 = sub_29ADBE564(a4);
  v124 = pxrInternal__aapl__pxrReserved__::operator<<(v122, v123);
  v125 = sub_29A00911C(v124, " HdGet_", 7);
  v126 = pxrInternal__aapl__pxrReserved__::operator<<(v125, a3);
  sub_29A00911C(v126, "(int localIndex) {\n", 19);
  v127 = *a6;
  if (*a6 > 2)
  {
    if (v127 != 3)
    {
      if (v127 == 4)
      {
        v143 = sub_29A00911C((a2 + 16), "  ivec2 fvarPatchParam = HdGet_fvarPatchParam", 45);
        v144 = MEMORY[0x29C2C1ED0](v143, a7);
        v145 = sub_29A00911C(v144, "();\n", 4);
        v146 = sub_29A00911C(v145, "  OsdPatchParam param = OsdPatchParamInit(fvarPatchParam.x,", 59);
        v147 = sub_29A00911C(v146, " fvarPatchParam.y, 0.0f);\n", 26);
        v148 = sub_29A00911C(v147, "  vec2 unnormalized = GetPatchCoord(localIndex).xy;\n", 52);
        v137 = sub_29A00911C(v148, "  float uv[2] = { unnormalized.x, unnormalized.y };\n", 52);
        v138 = "  OsdPatchParamNormalize(param, uv);\n";
        v139 = 37;
      }

      else
      {
        if (v127 != 5)
        {
          goto LABEL_36;
        }

        v131 = sub_29A00911C((a2 + 16), "  ivec2 fvarPatchParam = HdGet_fvarPatchParam", 45);
        v132 = MEMORY[0x29C2C1ED0](v131, a7);
        v133 = sub_29A00911C(v132, "();\n", 4);
        v134 = sub_29A00911C(v133, "  OsdPatchParam param = OsdPatchParamInit(fvarPatchParam.x,", 59);
        v135 = sub_29A00911C(v134, " fvarPatchParam.y, 0.0f);\n", 26);
        v136 = sub_29A00911C(v135, "  vec2 unnormalized = GetPatchCoord(localIndex).xy;\n", 52);
        v137 = sub_29A00911C(v136, "  float uv[2] = { unnormalized.x, unnormalized.y };\n", 52);
        v138 = "  OsdPatchParamNormalizeTriangle(param, uv);\n";
        v139 = 45;
      }

      v129 = sub_29A00911C(v137, v138, v139);
      v128 = "  vec2 localST = vec2(uv[0], uv[1]);\n";
      v130 = 37;
      goto LABEL_43;
    }

    if (a1)
    {
      v140 = sub_29A00911C((a2 + 16), "  vec2 lut[4] = vec2[4](vec2(0,0), vec2(1,0), ", 46);
      v141 = "vec2(1,1), vec2(0,1));\n";
      v142 = 23;
LABEL_39:
      v129 = sub_29A00911C(v140, v141, v142);
      v128 = "  vec2 localST = lut[localIndex];\n";
      v130 = 34;
      goto LABEL_43;
    }

LABEL_40:
    v128 = "  vec2 localST = GetPatchCoordLocalST();\n";
    v129 = (a2 + 16);
    v130 = 41;
    goto LABEL_43;
  }

  if (v127)
  {
    if (v127 != 1)
    {
      if (v127 == 2)
      {
        goto LABEL_29;
      }

LABEL_36:
      v128 = "  vec2 localST = vec2(0);\n";
      v129 = (a2 + 16);
      v130 = 26;
      goto LABEL_43;
    }

    if (a1)
    {
      v140 = sub_29A00911C((a2 + 16), "  vec2 lut[3] = vec2[3](vec2(0,0), vec2(1,0), ", 46);
      v141 = "vec2(0,1));\n";
      v142 = 12;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_29:
  v128 = "  vec2 localST = GetPatchCoord(localIndex).xy;\n";
  v129 = (a2 + 16);
  v130 = 47;
LABEL_43:
  sub_29A00911C(v129, v128, v130);
  v149 = sub_29A00911C((a2 + 16), "  return HdGet_", 15);
  v150 = pxrInternal__aapl__pxrReserved__::operator<<(v149, a3);
  sub_29A00911C(v150, "(localIndex, localST);\n}\n", 25);
  v151 = sub_29ADBE564(a4);
  v152 = pxrInternal__aapl__pxrReserved__::operator<<((a2 + 16), v151);
  v153 = sub_29A00911C(v152, " HdGet_", 7);
  v154 = pxrInternal__aapl__pxrReserved__::operator<<(v153, a3);
  v155 = sub_29A00911C(v154, "()", 2);
  v156 = sub_29A00911C(v155, " { return HdGet_", 16);
  v157 = pxrInternal__aapl__pxrReserved__::operator<<(v156, a3);
  return sub_29A00911C(v157, "(0); }\n", 7);
}

void sub_29ADBF3F8(uint64_t a1, int a2, void *a3, uint64_t *a4, uint64_t **a5, uint64_t *a6)
{
  v15 = 2;
  v16 = a2;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
  if (!v11)
  {
    v11 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
  }

  v12 = *(a1 + 8);
  if (v12 >= *(a1 + 16))
  {
    v13 = sub_29ADC3650(a1, &v16, &v15, v11 + 1, a4, a6);
  }

  else
  {
    sub_29ADC3350(a1, *(a1 + 8), &v16, &v15, v11 + 1, a4, a6);
    v13 = v12 + 80;
    *(a1 + 8) = v12 + 80;
  }

  *(a1 + 8) = v13;
  sub_29A166F2C((v13 - 32), a3);
  v14 = *(a1 + 8) - 24;
  if (v14 != a5)
  {
    sub_29ADC37B4(v14, *a5, a5[1], (a5[1] - *a5) >> 5);
  }
}

void *sub_29ADBF4F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {

    return std::operator+<char>();
  }

  v7 = atomic_load(&qword_2A174E9E0);
  if (!v7)
  {
    v7 = sub_29ADC4754();
  }

  if ((*(v7 + 384) ^ *a1) >= 8)
  {
    v8 = atomic_load(&qword_2A174E9E0);
    if (!v8)
    {
      v8 = sub_29ADC4754();
    }

    if ((*(v8 + 352) ^ *a1) > 7)
    {
      v10 = atomic_load(&qword_2A174E9E0);
      if (!v10)
      {
        v10 = sub_29ADC4754();
      }

      if ((*(v10 + 376) ^ *a1) < 8)
      {
        goto LABEL_23;
      }

      v11 = atomic_load(&qword_2A174E9E0);
      if (!v11)
      {
        v11 = sub_29ADC4754();
      }

      if ((*(v11 + 344) ^ *a1) <= 7)
      {
LABEL_23:
        v9 = ".xyz";
        goto LABEL_14;
      }

      v12 = atomic_load(&qword_2A174E9E0);
      if (!v12)
      {
        v12 = sub_29ADC4754();
      }

      if ((*(v12 + 368) ^ *a1) < 8)
      {
        goto LABEL_30;
      }

      v13 = atomic_load(&qword_2A174E9E0);
      if (!v13)
      {
        v13 = sub_29ADC4754();
      }

      if ((*(v13 + 336) ^ *a1) <= 7)
      {
LABEL_30:
        v9 = ".xy";
        goto LABEL_14;
      }

      if (sub_29ADC1C78(a1))
      {
        goto LABEL_35;
      }

      v14 = atomic_load(&qword_2A174E9E0);
      if (!v14)
      {
        v14 = sub_29ADC4754();
      }

      if ((*(v14 + 448) ^ *a1) <= 7)
      {
LABEL_35:
        v9 = ".x";
        goto LABEL_14;
      }
    }
  }

  v9 = "";
LABEL_14:

  return sub_29A008E78(a3, v9);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetFallbackScalarSwizzleString@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_29ADC1C78(a2);
  if (v7)
  {
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
    if (!v10)
    {
      v10 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
    }

    if ((*v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = ((*v10 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(EmptyString, v11, &__p);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v23);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    v12 = *this + 48;
    __p = *(*this + 40);
    v21 = v12;
LABEL_16:
    if (__p == v21)
    {
      result = sub_29A008E78(a4, "");
    }

    else
    {
      v13 = sub_29ADA84A4(&__p);
      v14 = *(*v13 + 56);
      v18 = *(*v13 + 48);
      v19 = v14;
      while (1)
      {
        if (v18 == v19)
        {
          sub_29ADA8DC0(&__p);
          goto LABEL_16;
        }

        v15 = sub_29ADA84DC(&v18);
        if ((v23 ^ **v15) <= 7)
        {
          break;
        }

        sub_29ADA8D40(&v18);
      }

      v16 = sub_29ADA84DC(&v18);
      if (sub_29ADC1C78((*v16 + 8)))
      {
        v17 = "";
      }

      else
      {
        v17 = ".x";
      }

      result = sub_29A008E78(a4, v17);
    }

    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {

    return sub_29A008E78(a4, "");
  }

  return result;
}

void sub_29ADBF87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ADBF8C8(void *a1, int a2)
{
  if (!a2)
  {
    goto LABEL_32;
  }

  v3 = atomic_load(&qword_2A174E9E0);
  if (!v3)
  {
    v3 = sub_29ADC4754();
  }

  v4 = *(v3 + 344) ^ *a1;
  v5 = atomic_load(&qword_2A174E9E0);
  if (v4 <= 7)
  {
    if (!v5)
    {
      v5 = sub_29ADC4754();
    }

    return (v5 + 160);
  }

  if (!v5)
  {
    v5 = sub_29ADC4754();
  }

  v6 = *(v5 + 376) ^ *a1;
  v7 = atomic_load(&qword_2A174E9E0);
  if (v6 <= 7)
  {
    if (!v7)
    {
      v7 = sub_29ADC4754();
    }

    return (v7 + 136);
  }

  if (!v7)
  {
    v7 = sub_29ADC4754();
  }

  v8 = *(v7 + 400) ^ *a1;
  v9 = atomic_load(&qword_2A174E9E0);
  if (v8 <= 7)
  {
    if (!v9)
    {
      v9 = sub_29ADC4754();
    }

    return (v9 + 184);
  }

  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  v10 = *(v9 + 416) ^ *a1;
  v11 = atomic_load(&qword_2A174E9E0);
  if (v10 <= 7)
  {
    if (!v11)
    {
      v11 = sub_29ADC4754();
    }

    return (v11 + 208);
  }

  if (!v11)
  {
    v11 = sub_29ADC4754();
  }

  if ((*(v11 + 432) ^ *a1) <= 7)
  {
    v12 = atomic_load(&qword_2A174E9E0);
    if (!v12)
    {
      v12 = sub_29ADC4754();
    }

    return (v12 + 232);
  }

  else
  {
LABEL_32:
    v13 = atomic_load(&qword_2A174E9E0);
    if (!v13)
    {
      v13 = sub_29ADC4754();
    }

    v14 = *(v13 + 448) ^ *a1;
    v15 = atomic_load(&qword_2A174E9E0);
    if (v14 > 7)
    {
      if (!v15)
      {
        v15 = sub_29ADC4754();
      }

      v16 = *(v15 + 456) ^ *a1;
      v17 = atomic_load(&qword_2A174E9E0);
      if (v16 > 7)
      {
        if (!v17)
        {
          v17 = sub_29ADC4754();
        }

        if ((*(v17 + 464) ^ *a1) <= 7)
        {
          v18 = atomic_load(&qword_2A174E9E0);
          if (!v18)
          {
            v18 = sub_29ADC4754();
          }

          return (v18 + 280);
        }
      }

      else
      {
        if (!v17)
        {
          v17 = sub_29ADC4754();
        }

        return (v17 + 264);
      }
    }

    else
    {
      if (!v15)
      {
        v15 = sub_29ADC4754();
      }

      return (v15 + 248);
    }
  }

  return a1;
}

void sub_29ADBFABC(uint64_t a1, void *a2, void *a3)
{
  if (sub_29ADC1834(a3) <= 4)
  {
    v6 = sub_29ADBA554(a3);
    v7 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v6);
    v8 = sub_29A00911C(v7, " HdGetScalar_", 13);
    v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, a2);
    v10 = sub_29A00911C(v9, "(int localIndex)", 16);
    v11 = sub_29A00911C(v10, " { return HdGet_", 16);
    v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, a2);
    v13 = sub_29A00911C(v12, "(localIndex)", 12);
    sub_29ADC19F0(a3, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v15 = v30;
    }

    else
    {
      v15 = v29;
    }

    v16 = sub_29A00911C(v13, p_p, v15);
    sub_29A00911C(v16, "; }\n", 4);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    v17 = sub_29ADBA554(a3);
    v18 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v17);
    v19 = sub_29A00911C(v18, " HdGetScalar_", 13);
    v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, a2);
    v21 = sub_29A00911C(v20, "()", 2);
    v22 = sub_29A00911C(v21, " { return HdGet_", 16);
    v23 = pxrInternal__aapl__pxrReserved__::operator<<(v22, a2);
    v24 = sub_29A00911C(v23, "(0)", 3);
    sub_29ADC19F0(a3, &__p);
    if ((v30 & 0x80u) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v26 = v30;
    }

    else
    {
      v26 = v29;
    }

    v27 = sub_29A00911C(v24, v25, v26);
    sub_29A00911C(v27, "; }\n", 4);
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29ADBFC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADBFC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t __val, int a6, int a7, char a8, char a9, char a10, unsigned __int8 a11)
{
  std::to_string(&v408, __val);
  v18 = std::string::insert(&v408, 0, "sampler");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v409.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v409.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (a11)
  {
    v20 = std::string::append(&v409, "DShadow");
  }

  else
  {
    v20 = std::string::append(&v409, "D");
  }

  v21 = *&v20->__r_.__value_.__l.__data_;
  v411 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v409.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v408.__r_.__value_.__l.__data_);
    if (!a7)
    {
      goto LABEL_27;
    }
  }

  else if (!a7)
  {
    goto LABEL_27;
  }

  v22 = sub_29A00911C((a1 + 16), "#ifdef HD_HAS_", 14);
  v23 = pxrInternal__aapl__pxrReserved__::operator<<(v22, a2);
  v24 = sub_29A00911C(v23, "_", 1);
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v25)
  {
    v25 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v26 = pxrInternal__aapl__pxrReserved__::operator<<(v24, v25 + 25);
  v27 = sub_29A00911C(v26, "_", 1);
  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v28)
  {
    v28 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v29 = pxrInternal__aapl__pxrReserved__::operator<<(v27, v28 + 5);
  v30 = sub_29A00911C(v29, "\n", 1);
  v31 = sub_29A00911C(v30, "FORWARD_DECL(vec4 HdGet_", 24);
  v32 = pxrInternal__aapl__pxrReserved__::operator<<(v31, a2);
  v33 = sub_29A00911C(v32, "_", 1);
  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v34)
  {
    v34 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v35 = pxrInternal__aapl__pxrReserved__::operator<<(v33, v34 + 25);
  v36 = sub_29A00911C(v35, "_", 1);
  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v37)
  {
    v37 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v38 = pxrInternal__aapl__pxrReserved__::operator<<(v36, v37 + 5);
  v39 = sub_29A00911C(v38, "());\n", 5);
  v40 = sub_29A00911C(v39, "#endif\n", 7);
  v41 = sub_29A00911C(v40, "#ifdef HD_HAS_", 14);
  v42 = pxrInternal__aapl__pxrReserved__::operator<<(v41, a2);
  v43 = sub_29A00911C(v42, "_", 1);
  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v44)
  {
    v44 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v45 = pxrInternal__aapl__pxrReserved__::operator<<(v43, v44 + 25);
  v46 = sub_29A00911C(v45, "_", 1);
  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v47)
  {
    v47 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v48 = pxrInternal__aapl__pxrReserved__::operator<<(v46, v47 + 6);
  v49 = sub_29A00911C(v48, "\n", 1);
  v50 = sub_29A00911C(v49, "FORWARD_DECL(vec4 HdGet_", 24);
  v51 = pxrInternal__aapl__pxrReserved__::operator<<(v50, a2);
  v52 = sub_29A00911C(v51, "_", 1);
  v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v53)
  {
    v53 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v54 = pxrInternal__aapl__pxrReserved__::operator<<(v52, v53 + 25);
  v55 = sub_29A00911C(v54, "_", 1);
  v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v56)
  {
    v56 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  v57 = pxrInternal__aapl__pxrReserved__::operator<<(v55, v56 + 6);
  v58 = sub_29A00911C(v57, "());\n", 5);
  v20 = sub_29A00911C(v58, "#endif\n", 7);
LABEL_27:
  if ((a8 & 1) == 0)
  {
    if (!a9)
    {
      v81 = sub_29A00911C((a1 + 16), "#define HdGetSampler_", 21);
      v82 = pxrInternal__aapl__pxrReserved__::operator<<(v81, a2);
      if (a10)
      {
        v83 = sub_29A00911C(v82, "(index) ", 8);
        v84 = sub_29A00911C(v83, "  HgiGetSampler_", 16);
        v85 = pxrInternal__aapl__pxrReserved__::operator<<(v84, a2);
        v86 = sub_29A00911C(v85, "(index)\n", 8);
        v87 = sub_29A00911C(v86, "#define HdGetSize_", 18);
        v88 = pxrInternal__aapl__pxrReserved__::operator<<(v87, a2);
        v89 = sub_29A00911C(v88, "(index) ", 8);
        v90 = sub_29A00911C(v89, "  HgiGetSize_", 13);
        v91 = pxrInternal__aapl__pxrReserved__::operator<<(v90, a2);
        v92 = "(index)\n";
        v93 = 8;
      }

      else
      {
        v399 = sub_29A00911C(v82, "() ", 3);
        v400 = sub_29A00911C(v399, "  HgiGetSampler_", 16);
        v401 = pxrInternal__aapl__pxrReserved__::operator<<(v400, a2);
        v402 = sub_29A00911C(v401, "()\n", 3);
        v403 = sub_29A00911C(v402, "#define HdGetSize_", 18);
        v404 = pxrInternal__aapl__pxrReserved__::operator<<(v403, a2);
        v405 = sub_29A00911C(v404, "() ", 3);
        v406 = sub_29A00911C(v405, "  HgiGetSize_", 13);
        v91 = pxrInternal__aapl__pxrReserved__::operator<<(v406, a2);
        v92 = "()\n";
        v93 = 3;
      }

      goto LABEL_58;
    }

    if (v411 >= 0)
    {
      v68 = __p;
    }

    else
    {
      v68 = __p[0];
    }

    if (v411 >= 0)
    {
      v69 = HIBYTE(v411);
    }

    else
    {
      v69 = __p[1];
    }

    v70 = sub_29A00911C((a1 + 16), v68, v69);
    v71 = sub_29A00911C(v70, " ", 1);
    v72 = sub_29A00911C(v71, "HdGetSampler_", 13);
    v73 = pxrInternal__aapl__pxrReserved__::operator<<(v72, a2);
    if (a10)
    {
      v74 = sub_29A00911C(v73, "(int index) {\n", 14);
      v75 = sub_29A00911C(v74, "  return sampler", 16);
      v76 = MEMORY[0x29C2C1ED0](v75, __val);
      v77 = sub_29A00911C(v76, "d_", 2);
      v78 = pxrInternal__aapl__pxrReserved__::operator<<(v77, a2);
      v79 = "[index];\n";
      v80 = 9;
    }

    else
    {
      v99 = sub_29A00911C(v73, "() {\n", 5);
      v100 = sub_29A00911C(v99, "  return sampler", 16);
      v101 = MEMORY[0x29C2C1ED0](v100, __val);
      v102 = sub_29A00911C(v101, "d_", 2);
      v78 = pxrInternal__aapl__pxrReserved__::operator<<(v102, a2);
      v79 = ";\n";
      v80 = 2;
    }

LABEL_57:
    v91 = sub_29A00911C(v78, v79, v80);
    v92 = "}\n";
    v93 = 2;
LABEL_58:
    v20 = sub_29A00911C(v91, v92, v93);
    goto LABEL_59;
  }

  if (a9)
  {
    if (v411 >= 0)
    {
      v59 = __p;
    }

    else
    {
      v59 = __p[0];
    }

    if (v411 >= 0)
    {
      v60 = HIBYTE(v411);
    }

    else
    {
      v60 = __p[1];
    }

    v61 = sub_29A00911C((a1 + 16), v59, v60);
    v62 = sub_29A00911C(v61, " ", 1);
    v63 = sub_29A00911C(v62, "HdGetSampler_", 13);
    v64 = pxrInternal__aapl__pxrReserved__::operator<<(v63, a2);
    if (a10)
    {
      v65 = sub_29A00911C(v64, "(int index) {\n", 14);
    }

    else
    {
      v65 = sub_29A00911C(v64, "() {\n", 5);
    }

    v66 = sub_29A00911C(v65, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
    v67 = sub_29A00911C(v66, "  return ", 9);
    if (v411 >= 0)
    {
      v94 = __p;
    }

    else
    {
      v94 = __p[0];
    }

    if (v411 >= 0)
    {
      v95 = HIBYTE(v411);
    }

    else
    {
      v95 = __p[1];
    }

    v96 = sub_29A00911C(v67, v94, v95);
    v97 = sub_29A00911C(v96, "(", 1);
    v98 = sub_29A00911C(v97, "    shaderData[shaderCoord].", 28);
    v78 = pxrInternal__aapl__pxrReserved__::operator<<(v98, a2);
    v79 = ");\n";
    v80 = 3;
    goto LABEL_57;
  }

LABEL_59:
  if (!a6)
  {
    goto LABEL_85;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
  }

  std::operator+<char>();
  v103 = std::string::append(&v408, "SamplingTransform");
  v104 = *&v103->__r_.__value_.__l.__data_;
  v409.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
  *&v409.__r_.__value_.__l.__data_ = v104;
  v103->__r_.__value_.__l.__size_ = 0;
  v103->__r_.__value_.__r.__words[2] = 0;
  v103->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v408.__r_.__value_.__l.__data_);
  }

  v105 = sub_29A00911C((a1 + 16), "mat4 ", 5);
  if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v106 = &v409;
  }

  else
  {
    v106 = v409.__r_.__value_.__r.__words[0];
  }

  if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v409.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v409.__r_.__value_.__l.__size_;
  }

  v108 = sub_29A00911C(v105, v106, size);
  v109 = sub_29A00911C(v108, ";\n", 2);
  v110 = sub_29A00911C(v109, "\n", 1);
  v111 = sub_29A00911C(v110, "void Process_", 13);
  if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v112 = &v409;
  }

  else
  {
    v112 = v409.__r_.__value_.__r.__words[0];
  }

  if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v113 = HIBYTE(v409.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v113 = v409.__r_.__value_.__l.__size_;
  }

  v114 = sub_29A00911C(v111, v112, v113);
  v115 = sub_29A00911C(v114, "(MAT4 instanceModelViewInverse) { \n", 35);
  v116 = sub_29A00911C(v115, "    int shaderCoord = GetDrawingCoord().shaderCoord; \n", 54);
  v117 = sub_29A00911C(v116, "    ", 4);
  if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v118 = &v409;
  }

  else
  {
    v118 = v409.__r_.__value_.__r.__words[0];
  }

  if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v119 = HIBYTE(v409.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v119 = v409.__r_.__value_.__l.__size_;
  }

  v120 = sub_29A00911C(v117, v118, v119);
  v121 = sub_29A00911C(v120, " = mat4(\n", 9);
  v122 = sub_29A00911C(v121, "        MAT4(shaderData[shaderCoord].", 37);
  v123 = pxrInternal__aapl__pxrReserved__::operator<<(v122, a2);
  v124 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  if (!v124)
  {
    v124 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  }

  v125 = pxrInternal__aapl__pxrReserved__::operator<<(v123, v124 + 1);
  v126 = sub_29A00911C(v125, ") * instanceModelViewInverse);\n", 31);
  sub_29A00911C(v126, "}\n", 2);
  if ((SHIBYTE(v409.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_85:
    if (a8)
    {
      goto LABEL_86;
    }

LABEL_89:
    if (!a10)
    {
      v151 = sub_29ADBE564((a2 + 8));
      v152 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v151);
      v153 = sub_29A00911C(v152, " HdTextureLod_", 14);
      v154 = pxrInternal__aapl__pxrReserved__::operator<<(v153, a2);
      v155 = sub_29A00911C(v154, "(vec", 4);
      v156 = MEMORY[0x29C2C1ED0](v155, a11 + __val);
      v157 = sub_29A00911C(v156, " coord, float lod) {\n", 21);
      v158 = sub_29A00911C(v157, "  return ", 9);
      v159 = sub_29ADBF8C8((a2 + 8), 0);
      v160 = pxrInternal__aapl__pxrReserved__::operator<<(v158, v159);
      v161 = sub_29A00911C(v160, "(HgiTextureLod_", 15);
      v162 = pxrInternal__aapl__pxrReserved__::operator<<(v161, a2);
      v163 = sub_29A00911C(v162, "(coord, lod)", 12);
      v164 = *(a3 + 23);
      if (v164 >= 0)
      {
        v165 = a3;
      }

      else
      {
        v165 = *a3;
      }

      if (v164 >= 0)
      {
        v166 = *(a3 + 23);
      }

      else
      {
        v166 = *(a3 + 8);
      }

      v167 = sub_29A00911C(v163, v165, v166);
      v168 = sub_29A00911C(v167, ");\n", 3);
      sub_29A00911C(v168, "}\n", 2);
      goto LABEL_105;
    }

    v127 = sub_29ADBE564((a2 + 8));
    v128 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v127);
    v129 = sub_29A00911C(v128, " HdTextureLod_", 14);
    v130 = pxrInternal__aapl__pxrReserved__::operator<<(v129, a2);
    v131 = sub_29A00911C(v130, "(int index, vec", 15);
    v132 = MEMORY[0x29C2C1ED0](v131, a11 + __val);
    v133 = sub_29A00911C(v132, " coord, float lod) {\n", 21);
    v134 = sub_29A00911C(v133, "  return ", 9);
    v135 = sub_29ADBF8C8((a2 + 8), 0);
    v136 = pxrInternal__aapl__pxrReserved__::operator<<(v134, v135);
    v137 = sub_29A00911C(v136, "(HgiTextureLod_", 15);
    v138 = pxrInternal__aapl__pxrReserved__::operator<<(v137, a2);
    v139 = sub_29A00911C(v138, "(index, coord, lod)", 19);
    v140 = *(a3 + 23);
    if (v140 >= 0)
    {
      v141 = a3;
    }

    else
    {
      v141 = *a3;
    }

    if (v140 >= 0)
    {
      v142 = *(a3 + 23);
    }

    else
    {
      v142 = *(a3 + 8);
    }

    v143 = sub_29A00911C(v139, v141, v142);
    v144 = sub_29A00911C(v143, ");\n", 3);
    sub_29A00911C(v144, "}\n", 2);
LABEL_97:
    v145 = sub_29ADBE564((a2 + 8));
    v146 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v145);
    v147 = sub_29A00911C(v146, " HdGet_", 7);
    v148 = pxrInternal__aapl__pxrReserved__::operator<<(v147, a2);
    v149 = "(int index, vec";
    v150 = 15;
    goto LABEL_106;
  }

  operator delete(v409.__r_.__value_.__l.__data_);
  if ((a8 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_86:
  if (a10)
  {
    goto LABEL_97;
  }

LABEL_105:
  v169 = sub_29ADBE564((a2 + 8));
  v170 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v169);
  v171 = sub_29A00911C(v170, " HdGet_", 7);
  v148 = pxrInternal__aapl__pxrReserved__::operator<<(v171, a2);
  v149 = "(vec";
  v150 = 4;
LABEL_106:
  v172 = sub_29A00911C(v148, v149, v150);
  v173 = MEMORY[0x29C2C1ED0](v172, a11 + __val);
  v174 = sub_29A00911C(v173, " coord) {\n", 10);
  v175 = sub_29A00911C(v174, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
  if (a6)
  {
    if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v175);
    }

    std::operator+<char>();
    v178 = std::string::append(&v408, "SamplingTransform");
    v179 = *&v178->__r_.__value_.__l.__data_;
    v409.__r_.__value_.__r.__words[2] = v178->__r_.__value_.__r.__words[2];
    *&v409.__r_.__value_.__l.__data_ = v179;
    v178->__r_.__value_.__l.__size_ = 0;
    v178->__r_.__value_.__r.__words[2] = 0;
    v178->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v408.__r_.__value_.__l.__data_);
    }

    v180 = sub_29A00911C((a1 + 16), "   vec4 c = ", 12);
    if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = &v409;
    }

    else
    {
      v181 = v409.__r_.__value_.__r.__words[0];
    }

    if ((v409.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v182 = HIBYTE(v409.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v182 = v409.__r_.__value_.__l.__size_;
    }

    v183 = sub_29A00911C(v180, v181, v182);
    v184 = sub_29A00911C(v183, " * vec4(coord, 1);\n", 19);
    sub_29A00911C(v184, "   vec3 sampleCoord = c.xyz / c.w;\n", 35);
    if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v409.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v176 = sub_29A00911C((a1 + 16), "  vec", 5);
    v177 = MEMORY[0x29C2C1ED0](v176, a11 + __val);
    sub_29A00911C(v177, " sampleCoord = coord;\n", 22);
  }

  if (a7)
  {
    if (a8)
    {
      v185 = sub_29A00911C((a1 + 16), "  ", 2);
      v186 = sub_29ADBE564((a2 + 8));
      v187 = pxrInternal__aapl__pxrReserved__::operator<<(v185, v186);
      v188 = sub_29A00911C(v187, " result = ", 10);
      v189 = sub_29ADBF8C8((a2 + 8), 0);
      v190 = pxrInternal__aapl__pxrReserved__::operator<<(v188, v189);
      v191 = sub_29A00911C(v190, "((texture(HdGetSampler_", 23);
      pxrInternal__aapl__pxrReserved__::operator<<(v191, a2);
      v192 = a10 == 0;
      if (a10)
      {
        v193 = "(index), sampleCoord)\n";
      }

      else
      {
        v193 = "(), sampleCoord)\n";
      }

      v194 = 17;
      v195 = 22;
    }

    else
    {
      v207 = sub_29A00911C((a1 + 16), "  ", 2);
      v208 = sub_29ADBE564((a2 + 8));
      v209 = pxrInternal__aapl__pxrReserved__::operator<<(v207, v208);
      v210 = sub_29A00911C(v209, " result = ", 10);
      v211 = sub_29ADBF8C8((a2 + 8), 0);
      v212 = pxrInternal__aapl__pxrReserved__::operator<<(v210, v211);
      v213 = sub_29A00911C(v212, "((HgiGet_", 9);
      pxrInternal__aapl__pxrReserved__::operator<<(v213, a2);
      v192 = a10 == 0;
      if (a10)
      {
        v193 = "(index, sampleCoord)\n";
      }

      else
      {
        v193 = "(sampleCoord)\n";
      }

      v194 = 14;
      v195 = 21;
    }

    if (v192)
    {
      v214 = v194;
    }

    else
    {
      v214 = v195;
    }

    sub_29A00911C((a1 + 16), v193, v214);
    v215 = sub_29A00911C((a1 + 16), "#ifdef HD_HAS_", 14);
    v216 = pxrInternal__aapl__pxrReserved__::operator<<(v215, a2);
    v217 = sub_29A00911C(v216, "_", 1);
    v218 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v218)
    {
      v218 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v219 = pxrInternal__aapl__pxrReserved__::operator<<(v217, v218 + 25);
    v220 = sub_29A00911C(v219, "_", 1);
    v221 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v221)
    {
      v221 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v222 = pxrInternal__aapl__pxrReserved__::operator<<(v220, v221 + 5);
    v223 = sub_29A00911C(v222, "\n", 1);
    v224 = sub_29A00911C(v223, "    * HdGet_", 12);
    v225 = pxrInternal__aapl__pxrReserved__::operator<<(v224, a2);
    v226 = sub_29A00911C(v225, "_", 1);
    v227 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v227)
    {
      v227 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v228 = pxrInternal__aapl__pxrReserved__::operator<<(v226, v227 + 25);
    v229 = sub_29A00911C(v228, "_", 1);
    v230 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v230)
    {
      v230 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v231 = pxrInternal__aapl__pxrReserved__::operator<<(v229, v230 + 5);
    v232 = sub_29A00911C(v231, "()\n", 3);
    v233 = sub_29A00911C(v232, "#endif\n", 7);
    v234 = sub_29A00911C(v233, "#ifdef HD_HAS_", 14);
    v235 = pxrInternal__aapl__pxrReserved__::operator<<(v234, a2);
    v236 = sub_29A00911C(v235, "_", 1);
    v237 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v237)
    {
      v237 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v238 = pxrInternal__aapl__pxrReserved__::operator<<(v236, v237 + 25);
    v239 = sub_29A00911C(v238, "_", 1);
    v240 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v240)
    {
      v240 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v241 = pxrInternal__aapl__pxrReserved__::operator<<(v239, v240 + 6);
    v242 = sub_29A00911C(v241, "\n", 1);
    v243 = sub_29A00911C(v242, "    + HdGet_", 12);
    v244 = pxrInternal__aapl__pxrReserved__::operator<<(v243, a2);
    v245 = sub_29A00911C(v244, "_", 1);
    v246 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v246)
    {
      v246 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v247 = pxrInternal__aapl__pxrReserved__::operator<<(v245, v246 + 25);
    v248 = sub_29A00911C(v247, "_", 1);
    v249 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v249)
    {
      v249 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v250 = pxrInternal__aapl__pxrReserved__::operator<<(v248, v249 + 6);
    v251 = sub_29A00911C(v250, "()\n", 3);
    v252 = sub_29A00911C(v251, "#endif\n", 7);
    v253 = sub_29A00911C(v252, ")", 1);
  }

  else
  {
    if (a8)
    {
      v196 = sub_29A00911C((a1 + 16), "  ", 2);
      v197 = sub_29ADBE564((a2 + 8));
      v198 = pxrInternal__aapl__pxrReserved__::operator<<(v196, v197);
      v199 = sub_29A00911C(v198, " result = ", 10);
      v200 = sub_29ADBF8C8((a2 + 8), 0);
      v201 = pxrInternal__aapl__pxrReserved__::operator<<(v199, v200);
      v202 = sub_29A00911C(v201, "(texture(HdGetSampler_", 22);
      pxrInternal__aapl__pxrReserved__::operator<<(v202, a2);
      v203 = a10 == 0;
      if (a10)
      {
        v204 = "(index), sampleCoord)";
      }

      else
      {
        v204 = "(), sampleCoord)";
      }

      v205 = 16;
      v206 = 21;
    }

    else
    {
      v254 = sub_29A00911C((a1 + 16), "  ", 2);
      v255 = sub_29ADBE564((a2 + 8));
      v256 = pxrInternal__aapl__pxrReserved__::operator<<(v254, v255);
      v257 = sub_29A00911C(v256, " result = ", 10);
      v258 = sub_29ADBF8C8((a2 + 8), 0);
      v259 = pxrInternal__aapl__pxrReserved__::operator<<(v257, v258);
      v260 = sub_29A00911C(v259, "(HgiGet_", 8);
      pxrInternal__aapl__pxrReserved__::operator<<(v260, a2);
      v203 = a10 == 0;
      if (a10)
      {
        v204 = "(index, sampleCoord)";
      }

      else
      {
        v204 = "(sampleCoord)";
      }

      v205 = 13;
      v206 = 20;
    }

    if (v203)
    {
      v261 = v205;
    }

    else
    {
      v261 = v206;
    }

    sub_29A00911C((a1 + 16), v204, v261);
    v253 = (a1 + 16);
  }

  v262 = *(a3 + 23);
  if (v262 >= 0)
  {
    v263 = a3;
  }

  else
  {
    v263 = *a3;
  }

  if (v262 >= 0)
  {
    v264 = *(a3 + 23);
  }

  else
  {
    v264 = *(a3 + 8);
  }

  v265 = sub_29A00911C(v253, v263, v264);
  sub_29A00911C(v265, ");\n", 3);
  if (*(a2 + 65) == 1)
  {
    v266 = sub_29A00911C((a1 + 16), "  if (BOOL(shaderData[shaderCoord].", 35);
    v267 = pxrInternal__aapl__pxrReserved__::operator<<(v266, a2);
    v268 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
    if (!v268)
    {
      v268 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
    }

    v269 = pxrInternal__aapl__pxrReserved__::operator<<(v267, v268 + 4);
    sub_29A00911C(v269, ")) {\n", 5);
    if (a7)
    {
      v270 = sub_29A00911C((a1 + 16), "    return result;\n", 19);
      v271 = sub_29A00911C(v270, "  } else {\n", 11);
      v272 = sub_29A00911C(v271, "    return (", 12);
      v273 = sub_29ADBF8C8((a2 + 8), 0);
      v274 = pxrInternal__aapl__pxrReserved__::operator<<(v272, v273);
      v275 = sub_29A00911C(v274, "(shaderData[shaderCoord].", 25);
      v276 = pxrInternal__aapl__pxrReserved__::operator<<(v275, a2);
      v277 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      if (!v277)
      {
        v277 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      }

      v278 = pxrInternal__aapl__pxrReserved__::operator<<(v276, v277);
      v279 = *(a4 + 23);
      if (v279 >= 0)
      {
        v280 = a4;
      }

      else
      {
        v280 = *a4;
      }

      if (v279 >= 0)
      {
        v281 = *(a4 + 23);
      }

      else
      {
        v281 = *(a4 + 8);
      }

      v282 = sub_29A00911C(v278, v280, v281);
      v283 = sub_29A00911C(v282, ")\n", 2);
      v284 = sub_29A00911C(v283, "#ifdef HD_HAS_", 14);
      v285 = pxrInternal__aapl__pxrReserved__::operator<<(v284, a2);
      v286 = sub_29A00911C(v285, "_", 1);
      v287 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v287)
      {
        v287 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v288 = pxrInternal__aapl__pxrReserved__::operator<<(v286, v287 + 25);
      v289 = sub_29A00911C(v288, "_", 1);
      v290 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v290)
      {
        v290 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v291 = pxrInternal__aapl__pxrReserved__::operator<<(v289, v290 + 5);
      v292 = sub_29A00911C(v291, "\n", 1);
      v293 = sub_29A00911C(v292, "        * HdGet_", 16);
      v294 = pxrInternal__aapl__pxrReserved__::operator<<(v293, a2);
      v295 = sub_29A00911C(v294, "_", 1);
      v296 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v296)
      {
        v296 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v297 = pxrInternal__aapl__pxrReserved__::operator<<(v295, v296 + 25);
      v298 = sub_29A00911C(v297, "_", 1);
      v299 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v299)
      {
        v299 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v300 = pxrInternal__aapl__pxrReserved__::operator<<(v298, v299 + 5);
      v301 = sub_29A00911C(v300, "()", 2);
      v302 = *(a3 + 23);
      if (v302 >= 0)
      {
        v303 = a3;
      }

      else
      {
        v303 = *a3;
      }

      if (v302 >= 0)
      {
        v304 = *(a3 + 23);
      }

      else
      {
        v304 = *(a3 + 8);
      }

      v305 = sub_29A00911C(v301, v303, v304);
      v306 = sub_29A00911C(v305, "\n", 1);
      v307 = sub_29A00911C(v306, "#endif\n", 7);
      v308 = sub_29A00911C(v307, "#ifdef HD_HAS_", 14);
      v309 = pxrInternal__aapl__pxrReserved__::operator<<(v308, a2);
      v310 = sub_29A00911C(v309, "_", 1);
      v311 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v311)
      {
        v311 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v312 = pxrInternal__aapl__pxrReserved__::operator<<(v310, v311 + 25);
      v313 = sub_29A00911C(v312, "_", 1);
      v314 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v314)
      {
        v314 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v315 = pxrInternal__aapl__pxrReserved__::operator<<(v313, v314 + 6);
      v316 = sub_29A00911C(v315, "\n", 1);
      v317 = sub_29A00911C(v316, "        + HdGet_", 16);
      v318 = pxrInternal__aapl__pxrReserved__::operator<<(v317, a2);
      v319 = sub_29A00911C(v318, "_", 1);
      v320 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v320)
      {
        v320 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v321 = pxrInternal__aapl__pxrReserved__::operator<<(v319, v320 + 25);
      v322 = sub_29A00911C(v321, "_", 1);
      v323 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v323)
      {
        v323 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v324 = pxrInternal__aapl__pxrReserved__::operator<<(v322, v323 + 6);
      v325 = sub_29A00911C(v324, "()", 2);
      v326 = *(a3 + 23);
      if (v326 >= 0)
      {
        v327 = a3;
      }

      else
      {
        v327 = *a3;
      }

      if (v326 >= 0)
      {
        v328 = *(a3 + 23);
      }

      else
      {
        v328 = *(a3 + 8);
      }

      v329 = sub_29A00911C(v325, v327, v328);
      v330 = sub_29A00911C(v329, "\n", 1);
      v331 = sub_29A00911C(v330, "#endif\n", 7);
    }

    else
    {
      v335 = sub_29A00911C((a1 + 16), "    return result;\n", 19);
      v336 = sub_29A00911C(v335, "  } else {\n", 11);
      v337 = sub_29A00911C(v336, "    return ", 11);
      v338 = sub_29ADBF8C8((a2 + 8), 0);
      v339 = pxrInternal__aapl__pxrReserved__::operator<<(v337, v338);
      v340 = sub_29A00911C(v339, "(shaderData[shaderCoord].", 25);
      v341 = pxrInternal__aapl__pxrReserved__::operator<<(v340, a2);
      v342 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      if (!v342)
      {
        v342 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      }

      v343 = pxrInternal__aapl__pxrReserved__::operator<<(v341, v342);
      v344 = *(a4 + 23);
      if (v344 >= 0)
      {
        v345 = a4;
      }

      else
      {
        v345 = *a4;
      }

      if (v344 >= 0)
      {
        v346 = *(a4 + 23);
      }

      else
      {
        v346 = *(a4 + 8);
      }

      v331 = sub_29A00911C(v343, v345, v346);
    }

    v334 = sub_29A00911C(v331, ");\n", 3);
    v332 = "  }\n";
    v333 = 4;
  }

  else
  {
    v332 = "  return result;\n";
    v333 = 17;
    v334 = (a1 + 16);
  }

  sub_29A00911C(v334, v332, v333);
  sub_29A00911C((a1 + 16), "}\n", 2);
  if (*(a2 + 40) != *(a2 + 48))
  {
    v347 = sub_29A00911C((a1 + 16), "#if defined(HD_HAS_", 19);
    v348 = pxrInternal__aapl__pxrReserved__::operator<<(v347, *(a2 + 40));
    v349 = sub_29A00911C(v348, ")\n", 2);
    v350 = sub_29A00911C(v349, "FORWARD_DECL(vec", 16);
    v351 = MEMORY[0x29C2C1ED0](v350, __val);
    v352 = sub_29A00911C(v351, " HdGet_", 7);
    v353 = pxrInternal__aapl__pxrReserved__::operator<<(v352, *(a2 + 40));
    v354 = sub_29A00911C(v353, "(int localIndex));\n", 19);
    sub_29A00911C(v354, "#endif\n", 7);
  }

  v355 = sub_29A00911C((a1 + 16), "vec", 3);
  v356 = MEMORY[0x29C2C1ED0](v355, a11 + __val);
  v357 = sub_29A00911C(v356, " HdGetCoord_", 12);
  v358 = pxrInternal__aapl__pxrReserved__::operator<<(v357, a2);
  v359 = sub_29A00911C(v358, "(int localIndex) {\n", 19);
  sub_29A00911C(v359, "  return \n", 10);
  if (*(a2 + 40) == *(a2 + 48))
  {
    v372 = sub_29A00911C((a1 + 16), "  vec", 5);
    v369 = MEMORY[0x29C2C1ED0](v372, a11 + __val);
    v370 = "(0.0)";
    v371 = 5;
  }

  else
  {
    v360 = sub_29A00911C((a1 + 16), "#if defined(HD_HAS_", 19);
    v361 = pxrInternal__aapl__pxrReserved__::operator<<(v360, *(a2 + 40));
    v362 = sub_29A00911C(v361, ")\n", 2);
    v363 = sub_29A00911C(v362, "  HdGet_", 8);
    v364 = pxrInternal__aapl__pxrReserved__::operator<<(v363, *(a2 + 40));
    v365 = sub_29A00911C(v364, "(localIndex).xy\n", 16);
    v366 = sub_29A00911C(v365, "#else\n", 6);
    v367 = sub_29A00911C(v366, "  vec", 5);
    v368 = MEMORY[0x29C2C1ED0](v367, a11 + __val);
    v369 = sub_29A00911C(v368, "(0.0)\n", 6);
    v370 = "#endif\n";
    v371 = 7;
  }

  sub_29A00911C(v369, v370, v371);
  sub_29A00911C((a1 + 16), ";\n}\n", 4);
  v373 = sub_29A00911C((a1 + 16), "vec", 3);
  v374 = MEMORY[0x29C2C1ED0](v373, a11 + __val);
  v375 = sub_29A00911C(v374, " HdGetCoord_", 12);
  v376 = pxrInternal__aapl__pxrReserved__::operator<<(v375, a2);
  v377 = sub_29A00911C(v376, "() {", 4);
  v378 = sub_29A00911C(v377, "  return HdGetCoord_", 20);
  v379 = pxrInternal__aapl__pxrReserved__::operator<<(v378, a2);
  sub_29A00911C(v379, "(0);\n }\n", 8);
  v380 = sub_29ADBE564((a2 + 8));
  v381 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v380);
  v382 = sub_29A00911C(v381, " HdGet_", 7);
  v383 = pxrInternal__aapl__pxrReserved__::operator<<(v382, a2);
  v384 = sub_29A00911C(v383, "(int localIndex) { return HdGet_", 32);
  v385 = pxrInternal__aapl__pxrReserved__::operator<<(v384, a2);
  if (a10)
  {
    v386 = "(localIndex, ";
    v387 = 13;
  }

  else
  {
    v386 = "(";
    v387 = 1;
  }

  v388 = sub_29A00911C(v385, v386, v387);
  v389 = sub_29A00911C(v388, "HdGetCoord_", 11);
  v390 = pxrInternal__aapl__pxrReserved__::operator<<(v389, a2);
  sub_29A00911C(v390, "(localIndex));\n}\n", 17);
  v391 = sub_29ADBE564((a2 + 8));
  v392 = pxrInternal__aapl__pxrReserved__::operator<<((a1 + 16), v391);
  v393 = sub_29A00911C(v392, " HdGet_", 7);
  v394 = pxrInternal__aapl__pxrReserved__::operator<<(v393, a2);
  v395 = sub_29A00911C(v394, "() {\n  return HdGet_", 20);
  v396 = pxrInternal__aapl__pxrReserved__::operator<<(v395, a2);
  sub_29A00911C(v396, "(0);\n}\n", 7);
  sub_29ADBFABC(a1, a2, (a2 + 8));
  if (*(a2 + 64) == 1)
  {
    v397 = sub_29A00911C((a1 + 16), "#define ", 8);
    v398 = pxrInternal__aapl__pxrReserved__::operator<<(v397, a2);
    sub_29A00911C(v398, "_IS_PREMULTIPLIED 1\n", 20);
  }

  if (SHIBYTE(v411) < 0)
  {
    operator delete(__p[0]);
  }
}