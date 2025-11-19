void sub_262597924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void std::vector<TGrammarCompiler::TArgument>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<TGrammarCompiler::TArgument>::__append(a1, a2 - v2);
  }
}

void std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarCompiler::TArgument>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

uint64_t TGrammarCompiler::makeClientData(uint64_t *a1, __int128 *a2, uint64_t a3, TAllocator *this)
{
  if ((a3 + 1) >> 61)
  {
    v8 = -1;
  }

  else
  {
    v8 = 8 * (a3 + 1);
  }

  v9 = TAllocator::allocate(this, v8);
  v10 = v9;
  if (a3)
  {
    v11 = v9;
    v12 = a3;
    do
    {
      v13 = TAllocator::allocate(this, 24);
      v14 = *a1++;
      *v13 = v14;
      v15 = *a2++;
      *(v13 + 8) = v15;
      *v11++ = v13;
      --v12;
    }

    while (v12);
  }

  *(v10 + 8 * a3) = 0;
  return v10;
}

void *TFunctionDescr::TFunctionDescr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  MEMORY[0x26672AF30]();
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  a1[6] = a6;
  a1[7] = a7;
  return a1;
}

void sub_262597CB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t compileInstruction(TLexer *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  Token = nextToken(a1, a2, a3, a4, a5);
  v13 = *Token;
  if (*Token > 17)
  {
    if (v13 != 20)
    {
      if (v13 != 18)
      {
LABEL_42:
        loggableToken(a1, Token);
        if (__p[23] >= 0)
        {
          v69 = __p;
        }

        else
        {
          v69 = *__p;
        }

        tknPrintf("Error: %sExpected an attribute or a condition\n", v65, v66, v67, v68, v69);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v146) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
        }

        else
        {
          *&__p[8] = *v145;
          v148 = v146;
        }

        *__p = &unk_287527330;
        if (v148 >= 0)
        {
          v117 = &__p[8];
        }

        else
        {
          v117 = *&__p[8];
        }

        conditionalAssert(v117, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 712, v70, v71);
        *__p = byte_287529580;
        if (SHIBYTE(v148) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(v145[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v119 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v119, *__p, *&__p[8]);
        }

        else
        {
          v138 = *__p;
          exception[3] = *&__p[16];
          *&v119->__r_.__value_.__l.__data_ = v138;
        }

        *exception = &unk_287527330;
      }

      v16 = *(a1 + 3);
      if (v16)
      {
        *(a1 + 3) = v16 - 1;
      }

      nextToken(a1, Token, v10, v11, v12);
      v21 = nextToken(a1, v17, v18, v19, v20);
      if (*v21 != 6)
      {
        loggableToken(a1, v21);
        if (__p[23] >= 0)
        {
          v76 = __p;
        }

        else
        {
          v76 = *__p;
        }

        tknPrintf("Error: %sExpected '(' after 'if'\n", v72, v73, v74, v75, v76);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v146) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
        }

        else
        {
          *&__p[8] = *v145;
          v148 = v146;
        }

        *__p = &unk_287527330;
        if (v148 >= 0)
        {
          v120 = &__p[8];
        }

        else
        {
          v120 = *&__p[8];
        }

        conditionalAssert(v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 566, v77, v78);
        *__p = byte_287529580;
        if (SHIBYTE(v148) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(v145[0]);
        }

        v121 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v121 = byte_287529580;
        v122 = (v121 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v122, *__p, *&__p[8]);
        }

        else
        {
          v139 = *__p;
          v121[3] = *&__p[16];
          *&v122->__r_.__value_.__l.__data_ = v139;
        }

        *v121 = &unk_287527330;
      }

      compileExpression(a1, a2, a3, a4, v22);
      v27 = nextToken(a1, v23, v24, v25, v26);
      if (*v27 != 7)
      {
        loggableToken(a1, v27);
        if (__p[23] >= 0)
        {
          v97 = __p;
        }

        else
        {
          v97 = *__p;
        }

        tknPrintf("Error: %s() mismatch\n", v93, v94, v95, v96, v97);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v146) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
        }

        else
        {
          *&__p[8] = *v145;
          v148 = v146;
        }

        *__p = &unk_287527330;
        if (v148 >= 0)
        {
          v129 = &__p[8];
        }

        else
        {
          v129 = *&__p[8];
        }

        conditionalAssert(v129, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 577, v98, v99);
        *__p = byte_287529580;
        if (SHIBYTE(v148) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(v145[0]);
        }

        v130 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v130 = byte_287529580;
        v131 = (v130 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v131, *__p, *&__p[8]);
        }

        else
        {
          v142 = *__p;
          v130[3] = *&__p[16];
          *&v131->__r_.__value_.__l.__data_ = v142;
        }

        *v130 = &unk_287527330;
      }

      *__p = 9;
      TBuffer<wchar_t>::insert(a2, a2[2], __p, 1uLL);
      v28 = a2[2];
      *__p = 0;
      TBuffer<wchar_t>::insert(a2, v28, __p, 1uLL);
      v33 = nextToken(a1, v29, v30, v31, v32);
      v34 = *(a1 + 3);
      if (v34)
      {
        *(a1 + 3) = v34 - 1;
      }

      if (*v33 == 14)
      {
        compileCode(a1, a2, a3, a4);
      }

      else
      {
        compileInstruction(a1, a2, a3, a4);
      }

      if (*nextToken(a1, v35, v36, v37, v38) == 19)
      {
        *__p = 8;
        TBuffer<wchar_t>::insert(a2, a2[2], __p, 1uLL);
        v57 = a2[2];
        *__p = 0;
        TBuffer<wchar_t>::insert(a2, v57, __p, 1uLL);
        *(*a2 + 4 * v28) = *(a2 + 4) - v28 + 1;
        v62 = nextToken(a1, v58, v59, v60, v61);
        v63 = *(a1 + 3);
        if (v63)
        {
          *(a1 + 3) = v63 - 1;
        }

        if (*v62 == 14)
        {
          compileCode(a1, a2, a3, a4);
        }

        else
        {
          compileInstruction(a1, a2, a3, a4);
        }

        v56 = a2[2];
        *(*a2 + 4 * v57) = v56 - v57 + 1;
      }

      else
      {
        v56 = a2[2];
        *(*a2 + 4 * v28) = v56 - v28 + 1;
        v64 = *(a1 + 3);
        if (v64)
        {
          *(a1 + 3) = v64 - 1;
        }
      }

      *__p = 7;
      return TBuffer<wchar_t>::insert(a2, v56, __p, 1uLL);
    }

    v55 = nextToken(a1, Token, v10, v11, v12);
    if (*v55 != 10)
    {
      loggableToken(a1, v55);
      if (__p[23] >= 0)
      {
        v90 = __p;
      }

      else
      {
        v90 = *__p;
      }

      tknPrintf("Error: %sMissing ';'\n", v86, v87, v88, v89, v90);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v146) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
      }

      else
      {
        *&__p[8] = *v145;
        v148 = v146;
      }

      *__p = &unk_287527330;
      if (v148 >= 0)
      {
        v126 = &__p[8];
      }

      else
      {
        v126 = *&__p[8];
      }

      conditionalAssert(v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 694, v91, v92);
      *__p = byte_287529580;
      if (SHIBYTE(v148) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v146) < 0)
      {
        operator delete(v145[0]);
      }

      v127 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v127 = byte_287529580;
      v128 = (v127 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v128, *__p, *&__p[8]);
      }

      else
      {
        v141 = *__p;
        v127[3] = *&__p[16];
        *&v128->__r_.__value_.__l.__data_ = v141;
      }

      *v127 = &unk_287527330;
    }

    *__p = 11;
LABEL_29:
    v56 = a2[2];
    return TBuffer<wchar_t>::insert(a2, v56, __p, 1uLL);
  }

  if (v13 == 1)
  {
    v39 = *(a1 + 3);
    if (v39)
    {
      *(a1 + 3) = v39 - 1;
    }

    v40 = nextToken(a1, Token, v10, v11, v12);
    *__p = *(v40 + 8);
    if (a3 + 8 != std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a3, __p))
    {
      loggableToken(a1, v40);
      if (__p[23] >= 0)
      {
        v83 = __p;
      }

      else
      {
        v83 = *__p;
      }

      tknPrintf("Error: %sIllegal array assignment.\n", v79, v80, v81, v82, v83);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v146) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
      }

      else
      {
        *&__p[8] = *v145;
        v148 = v146;
      }

      *__p = &unk_287527330;
      if (v148 >= 0)
      {
        v123 = &__p[8];
      }

      else
      {
        v123 = *&__p[8];
      }

      conditionalAssert(v123, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 646, v84, v85);
      *__p = byte_287529580;
      if (SHIBYTE(v148) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v146) < 0)
      {
        operator delete(v145[0]);
      }

      v124 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v124 = byte_287529580;
      v125 = (v124 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v125, *__p, *&__p[8]);
      }

      else
      {
        v140 = *__p;
        v124[3] = *&__p[16];
        *&v125->__r_.__value_.__l.__data_ = v140;
      }

      *v124 = &unk_287527330;
    }

    v45 = nextToken(a1, v41, v42, v43, v44);
    if (*v45 != 11)
    {
      loggableToken(a1, v45);
      v100 = __p[23];
      v101 = *__p;
      loggableUnicode(*(v40 + 8), v145);
      if (v100 >= 0)
      {
        v106 = __p;
      }

      else
      {
        v106 = v101;
      }

      if (v146 >= 0)
      {
        v107 = v145;
      }

      else
      {
        v107 = v145[0];
      }

      tknPrintf("Error: %sExpected '=' after %s\n", v102, v103, v104, v105, v106, v107);
      if (SHIBYTE(v146) < 0)
      {
        operator delete(v145[0]);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v146) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
      }

      else
      {
        *&__p[8] = *v145;
        v148 = v146;
      }

      *__p = &unk_287527330;
      if (v148 >= 0)
      {
        v135 = &__p[8];
      }

      else
      {
        v135 = *&__p[8];
      }

      conditionalAssert(v135, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 654, v108, v109);
      *__p = byte_287529580;
      if (SHIBYTE(v148) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v146) < 0)
      {
        operator delete(v145[0]);
      }

      v136 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v136 = byte_287529580;
      v137 = (v136 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v137, *__p, *&__p[8]);
      }

      else
      {
        v144 = *__p;
        v136[3] = *&__p[16];
        *&v137->__r_.__value_.__l.__data_ = v144;
      }

      *v136 = &unk_287527330;
    }

    compileExpression(a1, a2, a3, a4, v46);
    v51 = nextToken(a1, v47, v48, v49, v50);
    if (*v51 != 10)
    {
      loggableToken(a1, v51);
      if (__p[23] >= 0)
      {
        v114 = __p;
      }

      else
      {
        v114 = *__p;
      }

      tknPrintf("Error: %sMissing ';'\n", v110, v111, v112, v113, v114);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v145, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v146) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v145[0], v145[1]);
      }

      else
      {
        *&__p[8] = *v145;
        v148 = v146;
      }

      *__p = &unk_287527330;
      if (v148 >= 0)
      {
        v132 = &__p[8];
      }

      else
      {
        v132 = *&__p[8];
      }

      conditionalAssert(v132, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 665, v115, v116);
      *__p = byte_287529580;
      if (SHIBYTE(v148) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v146) < 0)
      {
        operator delete(v145[0]);
      }

      v133 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v133 = byte_287529580;
      v134 = (v133 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v134, *__p, *&__p[8]);
      }

      else
      {
        v143 = *__p;
        v133[3] = *&__p[16];
        *&v134->__r_.__value_.__l.__data_ = v143;
      }

      *v133 = &unk_287527330;
    }

    *__p = 5;
    TBuffer<wchar_t>::insert(a2, a2[2], __p, 1uLL);
    v52 = 0;
    v53 = *(v40 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(a2, a2[2], v53, v52 - 1);
    *__p = 0;
    goto LABEL_29;
  }

  if (v13 != 14)
  {
    goto LABEL_42;
  }

  v14 = *(a1 + 3);
  if (v14)
  {
    *(a1 + 3) = v14 - 1;
  }

  return compileCode(a1, a2, a3, a4);
}

void sub_262598C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t compileExpression(TLexer *a1, void *Token, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a3;
  v6 = Token;
  v8 = 0;
  v305 = *MEMORY[0x277D85DE8];
  do
  {
    v9 = &v304[v8];
    *v9 = 0;
    *(v9 + 1) = 0;
    v8 += 4;
  }

  while (v8 != 512);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v296 = a3 + 8;
  while (1)
  {
    v297 = v11;
    for (i = v10; ; i = 0)
    {
      result = nextToken(a1, Token, a3, a4, a5);
      v15 = result;
      v16 = *result;
      if (*result != 5)
      {
        break;
      }

      if ((i & 1) == 0)
      {
        loggableToken(a1, result);
        if (v302[23] >= 0)
        {
          v111 = v302;
        }

        else
        {
          v111 = *v302;
        }

        tknPrintf("Error: %sExpected an operand\n", v107, v108, v109, v110, v111);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v155 = &v302[8];
        }

        else
        {
          v155 = *&v302[8];
        }

        conditionalAssert(v155, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 363, v112, v113);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *exception = byte_287529580;
        v157 = (exception + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v157, *v302, *&v302[8]);
        }

        else
        {
          v211 = *v302;
          exception[3] = *&v302[16];
          *&v157->__r_.__value_.__l.__data_ = v211;
        }

        *exception = &unk_287527330;
      }

      OperatorId = getOperatorId(*(result + 8));
      if (v12 >= 1)
      {
        do
        {
          v18 = *&v302[v12 + 16];
          if (v18 > OperatorId)
          {
            break;
          }

          if ((v18 & 0xFFFFFFFE) == 0x14)
          {
            *(*v6 + 4 * *&v304[v12 / 4 - 2] + 4) = *(v6 + 4) - *&v304[v12 / 4 - 2];
          }

          else
          {
            *v302 = 3;
            TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
            *v302 = *&v302[v12 + 16];
            TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
          }

          v12 -= 16;
        }

        while (v12 != 0 && v12 < 0xFFFFFFFFFFFFFFF0);
      }

      v19 = &v304[v12 / 4];
      *v19 = OperatorId;
      Token = v6[2];
      *(v19 + 1) = Token;
      if (OperatorId == 20)
      {
        *v302 = 9;
        TBuffer<wchar_t>::insert(v6, Token, v302, 1uLL);
        *v302 = 0;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
        *v302 = 7;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      }

      else if (OperatorId == 21)
      {
        *v302 = 10;
        TBuffer<wchar_t>::insert(v6, Token, v302, 1uLL);
        *v302 = 0;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
        *v302 = 7;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      }

      if (v12 >= 2032)
      {
        loggableToken(a1, v15);
        if (v302[23] >= 0)
        {
          v104 = v302;
        }

        else
        {
          v104 = *v302;
        }

        tknPrintf("Error: %sExpression contains too many operators\n", v100, v101, v102, v103, v104);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v152 = &v302[8];
        }

        else
        {
          v152 = *&v302[8];
        }

        conditionalAssert(v152, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 411, v105, v106);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v153 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v153 = byte_287529580;
        v154 = (v153 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v154, *v302, *&v302[8]);
        }

        else
        {
          v210 = *v302;
          v153[3] = *&v302[16];
          *&v154->__r_.__value_.__l.__data_ = v210;
        }

        *v153 = &unk_287527330;
      }

      v12 += 16;
    }

    if (*result <= 5)
    {
      break;
    }

    if (v16 > 23)
    {
      if (v16 == 24)
      {
        goto LABEL_52;
      }

      if (v16 != 26)
      {
        goto LABEL_104;
      }

      v10 = 0;
      v11 = 1;
      if (i)
      {
        loggableToken(a1, result);
        if (v302[23] >= 0)
        {
          v165 = v302;
        }

        else
        {
          v165 = *v302;
        }

        tknPrintf("Error: %sExpected a binary operator\n", v161, v162, v163, v164, v165);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v246 = &v302[8];
        }

        else
        {
          v246 = *&v302[8];
        }

        conditionalAssert(v246, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 251, v166, v167);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v247 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v247 = byte_287529580;
        v248 = (v247 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v248, *v302, *&v302[8]);
        }

        else
        {
          v280 = *v302;
          v247[3] = *&v302[16];
          *&v248->__r_.__value_.__l.__data_ = v280;
        }

        *v247 = &unk_287527330;
      }
    }

    else
    {
      if (v16 == 6)
      {
        if (i)
        {
          loggableToken(a1, result);
          if (v302[23] >= 0)
          {
            v193 = v302;
          }

          else
          {
            v193 = *v302;
          }

          tknPrintf("Error: %sExpected an operator\n", v189, v190, v191, v192, v193);
          if ((v302[23] & 0x80000000) != 0)
          {
            operator delete(*v302);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v302 = byte_287529580;
          if (SHIBYTE(v301) < 0)
          {
            std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
          }

          else
          {
            *&v302[8] = *__p;
            v303 = v301;
          }

          *v302 = &unk_287527330;
          if (v303 >= 0)
          {
            v261 = &v302[8];
          }

          else
          {
            v261 = *&v302[8];
          }

          conditionalAssert(v261, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 421, v194, v195);
          *v302 = byte_287529580;
          if (SHIBYTE(v303) < 0)
          {
            operator delete(*&v302[8]);
          }

          if (SHIBYTE(v301) < 0)
          {
            operator delete(__p[0]);
          }

          v262 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
          *v262 = byte_287529580;
          v263 = (v262 + 1);
          if ((v302[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v263, *v302, *&v302[8]);
          }

          else
          {
            v285 = *v302;
            v262[3] = *&v302[16];
            *&v263->__r_.__value_.__l.__data_ = v285;
          }

          *v262 = &unk_287527330;
        }

        compileExpression(a1, v6, v5, a4);
        Token = nextToken(a1, v45, v46, v47, v48);
        if (*Token != 7)
        {
          loggableToken(a1, Token);
          if (v302[23] >= 0)
          {
            v186 = v302;
          }

          else
          {
            v186 = *v302;
          }

          tknPrintf("Error: %s() mismatch\n", v182, v183, v184, v185, v186);
          if ((v302[23] & 0x80000000) != 0)
          {
            operator delete(*v302);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v302 = byte_287529580;
          if (SHIBYTE(v301) < 0)
          {
            std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
          }

          else
          {
            *&v302[8] = *__p;
            v303 = v301;
          }

          *v302 = &unk_287527330;
          if (v303 >= 0)
          {
            v258 = &v302[8];
          }

          else
          {
            v258 = *&v302[8];
          }

          conditionalAssert(v258, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 430, v187, v188);
          *v302 = byte_287529580;
          if (SHIBYTE(v303) < 0)
          {
            operator delete(*&v302[8]);
          }

          if (SHIBYTE(v301) < 0)
          {
            operator delete(__p[0]);
          }

          v259 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
          *v259 = byte_287529580;
          v260 = (v259 + 1);
          if ((v302[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v260, *v302, *&v302[8]);
          }

          else
          {
            v284 = *v302;
            v259[3] = *&v302[16];
            *&v260->__r_.__value_.__l.__data_ = v284;
          }

          *v259 = &unk_287527330;
        }

        goto LABEL_102;
      }

      if (v16 != 9)
      {
        goto LABEL_104;
      }

      if (i)
      {
        loggableToken(a1, result);
        if (v302[23] >= 0)
        {
          v179 = v302;
        }

        else
        {
          v179 = *v302;
        }

        tknPrintf("Error: %sExpected an operator\n", v175, v176, v177, v178, v179);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v255 = &v302[8];
        }

        else
        {
          v255 = *&v302[8];
        }

        conditionalAssert(v255, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 440, v180, v181);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v256 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v256 = byte_287529580;
        v257 = (v256 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v257, *v302, *&v302[8]);
        }

        else
        {
          v283 = *v302;
          v256[3] = *&v302[16];
          *&v257->__r_.__value_.__l.__data_ = v283;
        }

        *v256 = &unk_287527330;
      }

      v295 = nextToken(a1, Token, a3, a4, a5);
      v294 = v5;
      if (*v295 != 1)
      {
        loggableToken(a1, v295);
        if (v302[23] >= 0)
        {
          v172 = v302;
        }

        else
        {
          v172 = *v302;
        }

        tknPrintf("Error: %sExpected a function name after '$'\n", v168, v169, v170, v171, v172);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v249 = &v302[8];
        }

        else
        {
          v249 = *&v302[8];
        }

        conditionalAssert(v249, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 447, v173, v174);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v250 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v250 = byte_287529580;
        v251 = (v250 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v251, *v302, *&v302[8]);
        }

        else
        {
          v281 = *v302;
          v250[3] = *&v302[16];
          *&v251->__r_.__value_.__l.__data_ = v281;
        }

        *v250 = &unk_287527330;
      }

      v21 = *a4;
      v20 = a4[1];
      if (v20 == *a4)
      {
LABEL_114:
        v299 = 0;
LABEL_115:
        loggableToken(a1, v295);
        v90 = v302[23];
        v91 = *v302;
        loggableUnicode(*(v295 + 8), __p);
        v96 = v302;
        if (v90 < 0)
        {
          v96 = v91;
        }

        if (v301 >= 0)
        {
          v97 = __p;
        }

        else
        {
          v97 = __p[0];
        }

        tknPrintf("Error: %s$%s : Invalid function name\n", v92, v93, v94, v95, v96, v97);
        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287526298;
        if (v303 >= 0)
        {
          v158 = &v302[8];
        }

        else
        {
          v158 = *&v302[8];
        }

        conditionalAssert(v158, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 454, v98, v99);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v159 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v159 = byte_287529580;
        v160 = (v159 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v160, *v302, *&v302[8]);
        }

        else
        {
          v229 = *v302;
          v159[3] = *&v302[16];
          *&v160->__r_.__value_.__l.__data_ = v229;
        }

        *v159 = &unk_287526298;
      }

      v22 = 0;
      v23 = *(v295 + 8);
      while (1)
      {
        v24 = *(v21 + 8 * v22);
        v25 = wcslen(v23);
        v29 = v25;
        v30 = *(v24 + 23);
        if (v30 < 0)
        {
          break;
        }

        v31 = *(v21 + 8 * v22);
        if (v29 == v30)
        {
          if (!v29)
          {
            goto LABEL_64;
          }

          goto LABEL_34;
        }

LABEL_36:
        if (++v22 >= ((v20 - v21) >> 3))
        {
          goto LABEL_114;
        }
      }

      if (v25 != *(v24 + 8))
      {
        goto LABEL_36;
      }

      if (v25 == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v31 = *v24;
      if (!v29)
      {
LABEL_64:
        v299 = *(v21 + 8 * v22);
        goto LABEL_68;
      }

LABEL_34:
      v32 = wmemcmp(v31, v23, v29);
      v21 = *a4;
      if (v32)
      {
        v20 = a4[1];
        goto LABEL_36;
      }

      v299 = *(v21 + 8 * v22);
      if (!v299)
      {
        goto LABEL_115;
      }

LABEL_68:
      v5 = v294;
      if (*nextToken(a1, v26, v29, v27, v28) != 6)
      {
        v67 = *(a1 + 3);
        if (v67)
        {
          v66 = 0;
          *(a1 + 3) = v67 - 1;
          goto LABEL_81;
        }

LABEL_80:
        v66 = 0;
        goto LABEL_81;
      }

      v58 = nextToken(a1, v54, v55, v56, v57);
      v59 = *v58;
      if (*v58 == 7)
      {
        goto LABEL_80;
      }

      v60 = 0;
      do
      {
        if (v60)
        {
          if (v59 != 8)
          {
            loggableToken(a1, v58);
            if (v302[23] >= 0)
            {
              v118 = v302;
            }

            else
            {
              v118 = *v302;
            }

            tknPrintf("Error: %sMissing ',' between function parameters\n", v114, v115, v116, v117, v118);
            if ((v302[23] & 0x80000000) != 0)
            {
              operator delete(*v302);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v302 = byte_287529580;
            if (SHIBYTE(v301) < 0)
            {
              std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
            }

            else
            {
              *&v302[8] = *__p;
              v303 = v301;
            }

            *v302 = &unk_287527330;
            if (v303 >= 0)
            {
              v226 = &v302[8];
            }

            else
            {
              v226 = *&v302[8];
            }

            conditionalAssert(v226, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 480, v119, v120);
            *v302 = byte_287529580;
            if (SHIBYTE(v303) < 0)
            {
              operator delete(*&v302[8]);
            }

            if (SHIBYTE(v301) < 0)
            {
              operator delete(__p[0]);
            }

            v227 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
            *v227 = byte_287529580;
            v228 = (v227 + 1);
            if ((v302[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v228, *v302, *&v302[8]);
            }

            else
            {
              v267 = *v302;
              v227[3] = *&v302[16];
              *&v228->__r_.__value_.__l.__data_ = v267;
            }

            *v227 = &unk_287527330;
          }
        }

        else
        {
          v61 = *(a1 + 3);
          if (v61)
          {
            *(a1 + 3) = v61 - 1;
          }
        }

        compileExpression(a1, v6, v294, a4);
        v58 = nextToken(a1, v62, v63, v64, v65);
        v59 = *v58;
        --v60;
      }

      while (*v58 != 7);
      v66 = -v60;
LABEL_81:
      if (v66 < *(v299 + 32) || v66 > *(v299 + 40))
      {
        loggableToken(a1, v295);
        v128 = v302[23];
        v129 = *v302;
        loggableUnicode(*(v295 + 8), __p);
        v134 = v302;
        if (v128 < 0)
        {
          v134 = v129;
        }

        if (v301 >= 0)
        {
          v135 = __p;
        }

        else
        {
          v135 = __p[0];
        }

        tknPrintf("Error: %s$%s : Function takes between %llu and %llu parameters\n", v130, v131, v132, v133, v134, v135, *(v299 + 32), *(v299 + 40));
        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287526298;
        if (v303 >= 0)
        {
          v252 = &v302[8];
        }

        else
        {
          v252 = *&v302[8];
        }

        conditionalAssert(v252, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 493, v136, v137);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v253 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v253 = byte_287529580;
        v254 = (v253 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v254, *v302, *&v302[8]);
        }

        else
        {
          v282 = *v302;
          v253[3] = *&v302[16];
          *&v254->__r_.__value_.__l.__data_ = v282;
        }

        *v253 = &unk_287526298;
      }

      *v302 = 4;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      TBuffer<wchar_t>::insert(v6, v6[2], &v299, 2uLL);
      *v302 = v66;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
LABEL_102:
      v11 = 0;
      v10 = 1;
      if (v297)
      {
        *v302 = 12;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
        *v302 = 1;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
        v11 = 0;
        v10 = 1;
      }
    }
  }

  if (v16 == 1)
  {
LABEL_52:
    if (i)
    {
      loggableToken(a1, result);
      if (v302[23] >= 0)
      {
        v142 = v302;
      }

      else
      {
        v142 = *v302;
      }

      tknPrintf("Error: %sExpected a binary operator\n", v138, v139, v140, v141, v142);
      if ((v302[23] & 0x80000000) != 0)
      {
        operator delete(*v302);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v302 = byte_287529580;
      if (SHIBYTE(v301) < 0)
      {
        std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
      }

      else
      {
        *&v302[8] = *__p;
        v303 = v301;
      }

      *v302 = &unk_287527330;
      if (v303 >= 0)
      {
        v240 = &v302[8];
      }

      else
      {
        v240 = *&v302[8];
      }

      conditionalAssert(v240, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 262, v143, v144);
      *v302 = byte_287529580;
      if (SHIBYTE(v303) < 0)
      {
        operator delete(*&v302[8]);
      }

      if (SHIBYTE(v301) < 0)
      {
        operator delete(__p[0]);
      }

      v241 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
      *v241 = byte_287529580;
      v242 = (v241 + 1);
      if ((v302[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v242, *v302, *&v302[8]);
      }

      else
      {
        v272 = *v302;
        v241[3] = *&v302[16];
        *&v242->__r_.__value_.__l.__data_ = v272;
      }

      *v241 = &unk_287527330;
    }

    v42 = nextToken(a1, Token, a3, a4, a5);
    if (*v42 == 3)
    {
      *v302 = 2;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      *v302 = 48;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      *v302 = 0;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      v44 = 0;
    }

    else
    {
      if (*v42 != 15)
      {
        goto LABEL_96;
      }

      if (*v15 == 1)
      {
        *v302 = v15[1];
        if (v296 == std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(v5, v302))
        {
          loggableToken(a1, v15);
          if (v302[23] >= 0)
          {
            v223 = v302;
          }

          else
          {
            v223 = *v302;
          }

          tknPrintf("Error: %sIllegal use of '[]' on an attribute.\n", v219, v220, v221, v222, v223);
          if ((v302[23] & 0x80000000) != 0)
          {
            operator delete(*v302);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v302 = byte_287529580;
          if (SHIBYTE(v301) < 0)
          {
            std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
          }

          else
          {
            *&v302[8] = *__p;
            v303 = v301;
          }

          *v302 = &unk_287527330;
          if (v303 >= 0)
          {
            v277 = &v302[8];
          }

          else
          {
            v277 = *&v302[8];
          }

          conditionalAssert(v277, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 273, v224, v225);
          *v302 = byte_287529580;
          if (SHIBYTE(v303) < 0)
          {
            operator delete(*&v302[8]);
          }

          if (SHIBYTE(v301) < 0)
          {
            operator delete(__p[0]);
          }

          v278 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
          *v278 = byte_287529580;
          v279 = (v278 + 1);
          if ((v302[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v279, *v302, *&v302[8]);
          }

          else
          {
            v292 = *v302;
            v278[3] = *&v302[16];
            *&v279->__r_.__value_.__l.__data_ = v292;
          }

          *v278 = &unk_287527330;
        }
      }

      v43 = nextToken(a1, v38, v39, v40, v41);
      if (*v43 == 5 && getOperatorId(*(v43 + 8)) == 7)
      {
        v44 = 1;
      }

      else
      {
        v53 = *(a1 + 3);
        v44 = 0;
        if (v53)
        {
          *(a1 + 3) = v53 - 1;
        }
      }

      compileExpression(a1, v6, v5, a4);
      v72 = nextToken(a1, v68, v69, v70, v71);
      if (*v72 != 16)
      {
        loggableToken(a1, v72);
        if (v302[23] >= 0)
        {
          v207 = v302;
        }

        else
        {
          v207 = *v302;
        }

        tknPrintf("Error: %s[] mismatch\n", v203, v204, v205, v206, v207);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v268 = &v302[8];
        }

        else
        {
          v268 = *&v302[8];
        }

        conditionalAssert(v268, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 287, v208, v209);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v269 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v269 = byte_287529580;
        v270 = (v269 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v270, *v302, *&v302[8]);
        }

        else
        {
          v290 = *v302;
          v269[3] = *&v302[16];
          *&v270->__r_.__value_.__l.__data_ = v290;
        }

        *v269 = &unk_287527330;
      }

      v42 = nextToken(a1, v72, v73, v74, v75);
    }

    if (*v42 == 3)
    {
      if (*v15 == 1)
      {
        *v302 = v15[1];
        if (v296 == std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(v5, v302))
        {
          loggableToken(a1, v15);
          if (v302[23] >= 0)
          {
            v216 = v302;
          }

          else
          {
            v216 = *v302;
          }

          tknPrintf("Error: %sIllegal use of '.' on an attribute.\n", v212, v213, v214, v215, v216);
          if ((v302[23] & 0x80000000) != 0)
          {
            operator delete(*v302);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v302 = byte_287529580;
          if (SHIBYTE(v301) < 0)
          {
            std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
          }

          else
          {
            *&v302[8] = *__p;
            v303 = v301;
          }

          *v302 = &unk_287527330;
          if (v303 >= 0)
          {
            v274 = &v302[8];
          }

          else
          {
            v274 = *&v302[8];
          }

          conditionalAssert(v274, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 321, v217, v218);
          *v302 = byte_287529580;
          if (SHIBYTE(v303) < 0)
          {
            operator delete(*&v302[8]);
          }

          if (SHIBYTE(v301) < 0)
          {
            operator delete(__p[0]);
          }

          v275 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
          *v275 = byte_287529580;
          v276 = (v275 + 1);
          if ((v302[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v276, *v302, *&v302[8]);
          }

          else
          {
            v291 = *v302;
            v275[3] = *&v302[16];
            *&v276->__r_.__value_.__l.__data_ = v291;
          }

          *v275 = &unk_287527330;
        }
      }

      v76 = nextToken(a1, v49, v50, v51, v52);
      if ((*v76 - 21) >= 3 && *v76 != 1)
      {
        loggableToken(a1, v76);
        if (v302[23] >= 0)
        {
          v234 = v302;
        }

        else
        {
          v234 = *v302;
        }

        tknPrintf("Error: %sExpected an identifier\n", v230, v231, v232, v233, v234);
        if ((v302[23] & 0x80000000) != 0)
        {
          operator delete(*v302);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v302 = byte_287529580;
        if (SHIBYTE(v301) < 0)
        {
          std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
        }

        else
        {
          *&v302[8] = *__p;
          v303 = v301;
        }

        *v302 = &unk_287527330;
        if (v303 >= 0)
        {
          v287 = &v302[8];
        }

        else
        {
          v287 = *&v302[8];
        }

        conditionalAssert(v287, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 332, v235, v236);
        *v302 = byte_287529580;
        if (SHIBYTE(v303) < 0)
        {
          operator delete(*&v302[8]);
        }

        if (SHIBYTE(v301) < 0)
        {
          operator delete(__p[0]);
        }

        v288 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
        *v288 = byte_287529580;
        v289 = (v288 + 1);
        if ((v302[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v289, *v302, *&v302[8]);
        }

        else
        {
          v293 = *v302;
          v288[3] = *&v302[16];
          *&v289->__r_.__value_.__l.__data_ = v293;
        }

        *v288 = &unk_287527330;
      }

      *v302 = 1;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      *v302 = v44;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      v77 = 0;
      v78 = v15[1];
        ;
      }

      TBuffer<wchar_t>::insert(v6, v6[2], v78, v77 - 1);
      *v302 = 0;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      v34 = 0;
      v35 = v76[1];
      v36 = v6[2];
        ;
      }

LABEL_47:
      TBuffer<wchar_t>::insert(v6, v36, v35, v34 - 1);
      *v302 = 0;
      TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      goto LABEL_102;
    }

LABEL_96:
    if (*v15 == 24 || (*v302 = v15[1], v296 != std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(v5, v302)))
    {
      loggableToken(a1, v42);
      if (v302[23] >= 0)
      {
        v125 = v302;
      }

      else
      {
        v125 = *v302;
      }

      tknPrintf("Error: %sExpected '.' after reference to array.\n", v121, v122, v123, v124, v125);
      if ((v302[23] & 0x80000000) != 0)
      {
        operator delete(*v302);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v302 = byte_287529580;
      if (SHIBYTE(v301) < 0)
      {
        std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
      }

      else
      {
        *&v302[8] = *__p;
        v303 = v301;
      }

      *v302 = &unk_287527330;
      if (v303 >= 0)
      {
        v237 = &v302[8];
      }

      else
      {
        v237 = *&v302[8];
      }

      conditionalAssert(v237, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 305, v126, v127);
      *v302 = byte_287529580;
      if (SHIBYTE(v303) < 0)
      {
        operator delete(*&v302[8]);
      }

      if (SHIBYTE(v301) < 0)
      {
        operator delete(__p[0]);
      }

      v238 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
      *v238 = byte_287529580;
      v239 = (v238 + 1);
      if ((v302[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v239, *v302, *&v302[8]);
      }

      else
      {
        v271 = *v302;
        v238[3] = *&v302[16];
        *&v239->__r_.__value_.__l.__data_ = v271;
      }

      *v238 = &unk_287527330;
    }

    *v302 = 6;
    TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
    v81 = 0;
    v82 = v15[1];
      ;
    }

    TBuffer<wchar_t>::insert(v6, v6[2], v82, v81 - 1);
    *v302 = 0;
    TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
    v84 = *(a1 + 3);
    if (v84)
    {
      *(a1 + 3) = v84 - 1;
    }

    goto LABEL_102;
  }

  if (v16 == 2 || v16 == 4)
  {
    if (i)
    {
      loggableToken(a1, result);
      if (v302[23] >= 0)
      {
        v149 = v302;
      }

      else
      {
        v149 = *v302;
      }

      tknPrintf("Error: %sExpected an operator\n", v145, v146, v147, v148, v149);
      if ((v302[23] & 0x80000000) != 0)
      {
        operator delete(*v302);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v302 = byte_287529580;
      if (SHIBYTE(v301) < 0)
      {
        std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
      }

      else
      {
        *&v302[8] = *__p;
        v303 = v301;
      }

      *v302 = &unk_287527330;
      if (v303 >= 0)
      {
        v243 = &v302[8];
      }

      else
      {
        v243 = *&v302[8];
      }

      conditionalAssert(v243, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 350, v150, v151);
      *v302 = byte_287529580;
      if (SHIBYTE(v303) < 0)
      {
        operator delete(*&v302[8]);
      }

      if (SHIBYTE(v301) < 0)
      {
        operator delete(__p[0]);
      }

      v244 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
      *v244 = byte_287529580;
      v245 = (v244 + 1);
      if ((v302[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v245, *v302, *&v302[8]);
      }

      else
      {
        v273 = *v302;
        v244[3] = *&v302[16];
        *&v245->__r_.__value_.__l.__data_ = v273;
      }

      *v244 = &unk_287527330;
    }

    *v302 = 2;
    TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
    v34 = 0;
    v35 = v15[1];
    v36 = v6[2];
      ;
    }

    goto LABEL_47;
  }

LABEL_104:
  v85 = *(a1 + 3);
  if (v85)
  {
    *(a1 + 3) = v85 - 1;
  }

  if (v12 >= 1)
  {
    v86 = &v304[v12 / 4];
    v87 = &v304[v12 / 4];
    do
    {
      v88 = *(v87 - 4);
      v87 -= 4;
      if ((v88 & 0xFFFFFFFE) == 0x14)
      {
        *(*v6 + 4 * *(v86 - 1) + 4) = *(v6 + 4) - *(v86 - 1);
      }

      else
      {
        *v302 = 3;
        TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
        *v302 = *v87;
        result = TBuffer<wchar_t>::insert(v6, v6[2], v302, 1uLL);
      }

      v86 = v87;
    }

    while (v87 > v304);
  }

  if (v297 & 1 | ((i & 1) == 0))
  {
    loggableToken(a1, v15);
    if (v302[23] >= 0)
    {
      v200 = v302;
    }

    else
    {
      v200 = *v302;
    }

    tknPrintf("Error: %sMissing operand\n", v196, v197, v198, v199, v200);
    if ((v302[23] & 0x80000000) != 0)
    {
      operator delete(*v302);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v302 = byte_287529580;
    if (SHIBYTE(v301) < 0)
    {
      std::string::__init_copy_ctor_external(&v302[8], __p[0], __p[1]);
    }

    else
    {
      *&v302[8] = *__p;
      v303 = v301;
    }

    *v302 = &unk_287527330;
    if (v303 >= 0)
    {
      v264 = &v302[8];
    }

    else
    {
      v264 = *&v302[8];
    }

    conditionalAssert(v264, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 535, v201, v202);
    *v302 = byte_287529580;
    if (SHIBYTE(v303) < 0)
    {
      operator delete(*&v302[8]);
    }

    if (SHIBYTE(v301) < 0)
    {
      operator delete(__p[0]);
    }

    v265 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v302, &byte_262899963);
    *v265 = byte_287529580;
    v266 = (v265 + 1);
    if ((v302[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v266, *v302, *&v302[8]);
    }

    else
    {
      v286 = *v302;
      v265[3] = *&v302[16];
      *&v266->__r_.__value_.__l.__data_ = v286;
    }

    *v265 = &unk_287527330;
  }

  v89 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26259B564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _Unwind_Exception *exception_object, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, void *a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t getOperatorId(const __int32 *a1)
{
  if (!wcscmp(a1, "="))
  {
    return 10;
  }

  if (!wcscmp(a1, "!"))
  {
    return 11;
  }

  if (!wcscmp(a1, "<"))
  {
    return 9;
  }

  if (!wcscmp(a1, ">"))
  {
    return 8;
  }

  if (!wcscmp(a1, ">"))
  {
    return 13;
  }

  if (!wcscmp(a1, "<"))
  {
    return 12;
  }

  if (!wcscmp(a1, "|"))
  {
    return 21;
  }

  if (!wcscmp(a1, "&"))
  {
    return 20;
  }

  if (!wcscmp(a1, "+"))
  {
    return 6;
  }

  if (!wcscmp(a1, "-"))
  {
    return 7;
  }

  if (!wcscmp(a1, "*"))
  {
    return 3;
  }

  if (!wcscmp(a1, "/"))
  {
    return 4;
  }

  if (!wcscmp(a1, "%"))
  {
    return 5;
  }

  if (!wcscmp(a1, ":"))
  {
    return 1;
  }

  if (!wcscmp(a1, "^"))
  {
    return 2;
  }

  if (!wcscmp(a1, "e"))
  {
    return 16;
  }

  if (!wcscmp(a1, "n"))
  {
    return 17;
  }

  if (!wcscmp(a1, "g"))
  {
    return 14;
  }

  if (!wcscmp(a1, "l"))
  {
    return 15;
  }

  if (!wcscmp(a1, "g"))
  {
    return 19;
  }

  if (!wcscmp(a1, "l"))
  {
    return 18;
  }

  return 10;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B3A578, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void TLexer::~TLexer(TLexer *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  TAllocator::clear((this + 32));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void TGrammar::forEachNonTerminal<TIntegrityChecker>(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2 != (a1 + 48))
  {
    do
    {
      TIntegrityChecker::operator()(a2, v2[5]);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void TGrammar::forEachTerminal<TIntegrityChecker>(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 144);
  if (*(a1 + 152) != v2)
  {
    v5 = 0;
    do
    {
      TIntegrityChecker::operator()(a2, *(v2 + 8 * v5++));
      v2 = *(a1 + 144);
    }

    while (v5 < (*(a1 + 152) - v2) >> 3);
  }
}

void std::vector<TGrammarCompiler::TArgument>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v11 = 0;
      v12 = v5 + 16 * a2;
      v13 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = (v5 + 16);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_26286B680)));
        if (v16.i8[0])
        {
          *(v15 - 2) = 0;
        }

        if (v16.i8[4])
        {
          *v15 = 0;
        }

        v11 += 2;
        v15 += 4;
      }

      while (v13 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2 != v11);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    *(a1 + 8) = v12;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarCompiler::TArgument>>(a1, v10);
    }

    v17 = 0;
    v18 = 16 * v8;
    v19 = 16 * v8 + 16 * a2;
    v20 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
    v21 = v20 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
    v22 = vdupq_n_s64(v20);
    v23 = (v18 + 16);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v17), xmmword_26286B680)));
      if (v24.i8[0])
      {
        *(v23 - 2) = 0;
      }

      if (v24.i8[4])
      {
        *v23 = 0;
      }

      v17 += 2;
      v23 += 4;
    }

    while (v21 != v17);
    v25 = *(a1 + 8) - *a1;
    v26 = v18 - v25;
    memcpy((v18 - v25), *a1, v25);
    v27 = *a1;
    *a1 = v26;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarCompiler::TArgument>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t getItnControlCategory(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 5;
  }

  else
  {
    return dword_26286C654[a1 - 1];
  }
}

BOOL TItnControlState::isSet(TItnControlState *this)
{
  v2 = *this;
  v1 = (this + 32);
  if (v2 == -1)
  {
    v5 = 0;
    v3 = 1;
    do
    {
      if (*v1 != -1)
      {
        break;
      }

      v3 = v5 < 3;
      if (v5 == 3)
      {
        break;
      }

      v6 = *(v1 - 3);
      ++v1;
      ++v5;
    }

    while (v6 == -1);
  }

  else
  {
    return 1;
  }

  return v3;
}

_OWORD *TItnControlState::set(_OWORD *result, uint64_t *a2, char a3, char a4, int a5, unint64_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  result[2] = v6;
  v32 = result;
  v33 = result + 2;
  memset(v37, 0, sizeof(v37));
  *result = v6;
  result[1] = v6;
  result[3] = v6;
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v11 = 40;
    v30 = a4 ^ 1;
    v12 = -1;
    do
    {
      v13 = (v7 + 24 * v9);
      v14 = v13[2];
      if (v14 >= a6)
      {
        v15 = v13[1];
        if (v15 != 2)
        {
          if (v15 == 1 && v9 + 1 < v10 && a5 != 0)
          {
            v18 = v10 + v12;
            v19 = (v7 + v11);
            do
            {
              if (*(v19 - 1) - 1 <= 1)
              {
                ItnControlCategory = getItnControlCategory(*(v19 - 2));
                result = getItnControlCategory(*v13);
                if (ItnControlCategory == result && v14 <= *v19)
                {
                  goto LABEL_35;
                }
              }

              v19 += 3;
            }

            while (--v18);
          }

          v21 = *v13;
          result = getItnControlCategory(*v13);
          if (result != 2)
          {
            if (v21 == 6 || (a3 & 1) == 0)
            {
              v22 = a5;
              if (v15 != 4)
              {
                v22 = 1;
              }

              v23 = v30;
              if (v15 != 3)
              {
                v23 = 0;
              }

              if ((v23 & 1) != 0 || !v22)
              {
                goto LABEL_35;
              }
            }

LABEL_29:
            v24 = *(v37 + result);
            if (v14 > v24)
            {
              *(v32 + result) = -1;
              *(v33 + result) = -1;
              v7 = *a2;
              v14 = *(*a2 + 24 * v9 + 16);
            }

            if (v14 >= v24)
            {
              v25 = (v7 + 24 * v9);
              *(v37 + result) = v14;
              v27 = *v25;
              v26 = v25[1];
              result = getItnControlCategory(*v25);
              v28 = v33 + result;
              if (v26 == 1)
              {
                *v28 = -1;
                v28 = v32 + result;
              }

              *v28 = v27;
            }

            goto LABEL_35;
          }

          if (v15 - 5) < 0xFFFFFFFFFFFFFFFELL || (a5)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_35:
      ++v9;
      v7 = *a2;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      --v12;
      v11 += 24;
    }

    while (v9 < v10);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SDEnvHolder_New()
{
  SdapiInsurance::SdapiInsurance(v7, "SDEnvHolder_New", 1, 1, 95);
  if (v7[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %s()\n", v0, v1, v2, v3, "SDEnvHolder_New");
    }

    v4 = EnvHolderMgr::newEnvHolder(EnvHolderMgr::smpEnvHolderMgr);
    if (v4 == -1)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v7);
  return v5;
}

uint64_t SDEnvHolder_NewFromFile(FileSpec *a1, unint64_t a2)
{
  v4 = SdapiInsurance::SdapiInsurance(v28, "SDEnvHolder_NewFromFile", 1, 1, 96);
  if (v28[97] == 1)
  {
    if (!a1)
    {
      throwBadStringPointer(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    LOBYTE(v29) = 0;
    if (gbShowCalls & 1) != 0 || (gbShowCallsWithFileSpecArgs)
    {
      DgnString::DgnString(&v26);
      DgnString::DgnString(&v29);
      FileSpec::getDiagnosticMaskedName(a1, &v29, v12);
      DgnString::preAllocate(&v26, 96);
      if (v30)
      {
        v13 = v29;
      }

      else
      {
        v13 = &unk_26286C6C1;
      }

      DgnString::formatStringInPlace(&v26, v13);
      DgnString::~DgnString(&v29);
      if (v27)
      {
        v18 = v26;
      }

      else
      {
        v18 = &unk_26286C6C1;
      }

      xlprintf("Entering sdapi call %.500s(%.500s, <SDh %lld>)\n", v14, v15, v16, v17, "SDEnvHolder_NewFromFile", v18, a2);
      DgnString::~DgnString(&v26);
    }

    v19 = a2 - 1;
    if (a2 - 1 >= 5)
    {
      throwBadSdapiArgument("SDEnvHolderSource", a2, v6, v7, v8, v9, v10, v11);
      LODWORD(v19) = 0;
      v20 = 0;
    }

    else
    {
      v20 = dword_26286C6C4[v19];
    }

    FileSpec::FileSpec(&v29, a1);
    DFileOwner::DFileOwner(&v26);
    v21 = DFile::openDFile(&v29, 0, v20, &v26);
    EnvHolder = EnvHolderMgr::loadEnvHolder(EnvHolderMgr::smpEnvHolderMgr, v21, v19);
    if (EnvHolder == -1)
    {
      v24 = -1;
    }

    else
    {
      v24 = EnvHolder;
    }

    DFileOwner::~DFileOwner(&v26, v23);
    FileSpec::~FileSpec(&v29);
  }

  else
  {
    v24 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v28);
  return v24;
}

uint64_t SDEnvHolder_Save(unint64_t a1, FileSpec *a2, unsigned int a3)
{
  v6 = SdapiInsurance::SdapiInsurance(v35, "SDEnvHolder_Save", 1, 1, 97);
  if (v35[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    LOBYTE(v36) = 0;
    if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
    {
      DgnString::DgnString(&v33);
      DgnString::DgnString(&v36);
      FileSpec::getDiagnosticMaskedName(a2, &v36, v14);
      DgnString::preAllocate(&v33, 96);
      if (v37)
      {
        v15 = v36;
      }

      else
      {
        v15 = &unk_26286C6C1;
      }

      DgnString::formatStringInPlace(&v33, v15);
      DgnString::~DgnString(&v36);
      if (v34)
      {
        v20 = v33;
      }

      else
      {
        v20 = &unk_26286C6C1;
      }

      v21 = "SD_TRUE";
      if (!a3)
      {
        v21 = "SD_FALSE";
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, %.500s, %.500s)\n", v16, v17, v18, v19, "SDEnvHolder_Save", a1, v20, v21);
      DgnString::~DgnString(&v33);
    }

    if (*(ApiState::smpApiState + 1) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenvh.cpp", 95, "sdapi/sdenvh", 1, "%s", v12, v13, &unk_26286C6C1);
    }

    FileSpec::FileSpec(&v36, a2);
    v32 = 0;
    DgnString::DgnString(&v33);
    v28 = EnvHolderMgr::smpEnvHolderMgr;
    if (a1 == -1)
    {
      LODWORD(a1) = -1;
    }

    else
    {
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhEnvHolder", a1, v22, v23, v24, v25, v26, v27);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhEnvHolder", a1, v22, v23, v24, v25, v26, v27);
      }
    }

    if (a3 >= 2)
    {
      throwBadSdapiArgument("SDBool", a3, v22, v23, v24, v25, v26, v27);
    }

    EnvHolderMgr::saveEnvHolder(v28, a1, &v36, &v32, 2, a3 == 1, v26, v27);
    if (v32 == 1)
    {
      v29 = 2;
    }

    else if (v32 == 2)
    {
      v29 = 3;
    }

    else
    {
      v29 = 1;
    }

    if (v34)
    {
      v30 = v33;
    }

    else
    {
      v30 = &unk_26286C6C1;
    }

    ApiState::setLastResultCodeString(ApiState::smpApiState, v30);
    DgnString::~DgnString(&v33);
    FileSpec::~FileSpec(&v36);
  }

  else
  {
    v29 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v35);
  return v29;
}

void SDEnvHolder_Delete(unint64_t a1)
{
  SdapiInsurance::SdapiInsurance(v10, "SDEnvHolder_Delete", 1, 1, 98);
  if (v10[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>)\n", v2, v3, v4, v5, "SDEnvHolder_Delete", a1);
    }

    v9 = EnvHolderMgr::smpEnvHolderMgr;
    if (a1 == -1)
    {
      LODWORD(a1) = -1;
    }

    else
    {
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhEnvHolder", a1, v3, v4, v5, v6, v7, v8);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhEnvHolder", a1, v3, v4, v5, v6, v7, v8);
      }
    }

    EnvHolderMgr::deleteEnvHolder(v9, a1, v3, v4, v5, v6, v7, v8);
  }

  SdapiInsurance::~SdapiInsurance(v10);
}

uint64_t TLocaleInfo::unicodeToMultiByte(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    if (a2 < 128 || a2 - 160 < 0x60)
    {
      v10 = a2;
      v8 = *(a3 + 16);
      v9 = &v10;
    }

    else
    {
      v5 = &dword_26286C6DC;
      v6 = 66;
      while (*v5 != a2)
      {
        v5 += 2;
        v6 -= 2;
        if (!v6)
        {
          return 1;
        }
      }

      v11 = *(v5 - 1);
      v8 = *(a3 + 16);
      v9 = &v11;
    }

    goto LABEL_16;
  }

  if (a2 <= 127)
  {
    v12 = a2;
    v8 = *(a3 + 16);
    v9 = &v12;
LABEL_16:
    TBuffer<char>::insert(a3, v8, v9, 1uLL);
    return 0;
  }

  if (a2 <= 0x7FF)
  {
    v13 = (a2 >> 6) | 0xC0;
    TBuffer<char>::insert(a3, *(a3 + 16), &v13, 1uLL);
    v14 = a2 & 0x3F | 0x80;
    v8 = *(a3 + 16);
    v9 = &v14;
    goto LABEL_16;
  }

  if (!HIWORD(a2))
  {
    v15 = (a2 >> 12) | 0xE0;
    TBuffer<char>::insert(a3, *(a3 + 16), &v15, 1uLL);
    v16 = (a2 >> 6) & 0x3F | 0x80;
    TBuffer<char>::insert(a3, *(a3 + 16), &v16, 1uLL);
    v17 = a2 & 0x3F | 0x80;
    v8 = *(a3 + 16);
    v9 = &v17;
    goto LABEL_16;
  }

  return 0;
}

BOOL TLocaleInfo::unicodeToMultiByte(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  do
  {
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    ++a2;
  }

  while (!TLocaleInfo::unicodeToMultiByte(a1, v6, a3));
  return v6 != 0;
}

uint64_t TLocaleInfo::unicodeToMultiByte(uint64_t a1, unsigned int *a2, uint64_t *a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = 0;
  v15 = 0;
  while (1)
  {
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    ++a2;
    if (TLocaleInfo::unicodeToMultiByte(a1, v6, &v11))
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }
  }

  if (v13 >= v12)
  {
    if (v15)
    {
      v10 = 0;
      TBuffer<char>::insert(&v11, v13--, &v10, 1uLL);
    }

    else if (v12)
    {
      *(v11 + v12 - 1) = 0;
    }
  }

  else
  {
    *(v11 + v13) = 0;
  }

  v7 = (v13 + 1);
LABEL_12:
  if (v15 == 1 && v11 != &v14 && v11)
  {
    MEMORY[0x26672B1B0]();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_26259CB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a10 != &a13)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t TLocaleInfo::multiByteToUnicode(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*(a1 + 64) == 1)
  {
    if (v3 <= -97)
    {
      v3 = s_pszCodePage1252ToUnicode[2 * v3 - 255];
      if (v3 == 0xFFFF)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 1;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v3 & 0x80) == 0)
  {
LABEL_7:
    result = 1;
LABEL_8:
    *a3 = v3;
    return result;
  }

  if ((v3 & 0xE0) == 0xC0)
  {
    v5 = v3 & 0x1F;
    *a3 = v5;
    if (v3 >= 0xC2)
    {
      result = 2;
      goto LABEL_17;
    }

LABEL_26:
    result = 0xFFFFFFFFLL;
    v3 = 0xFFFF;
    goto LABEL_8;
  }

  if ((v3 & 0xF0) != 0xE0)
  {
    goto LABEL_26;
  }

  v5 = v3 & 0xF;
  *a3 = v5;
  if (v3 == 237)
  {
    if ((a2[1] & 0xE0) != 0x80)
    {
      goto LABEL_26;
    }
  }

  else if (v3 == 224 && (a2[1] & 0xE0) != 0xA0)
  {
    goto LABEL_26;
  }

  result = 3;
LABEL_17:
  v6 = result - 1;
  v7 = (a2 + 1);
  while (1)
  {
    v8 = *v7++;
    v9 = v8 & 0xC0;
    v10 = v8 & 0x3F | (v5 << 6);
    v11 = v9 == 128 ? v10 : 0xFFFF;
    *a3 = v11;
    if (v9 != 128)
    {
      break;
    }

    v5 = v10;
    if (!--v6)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t TLocaleInfo::multiByteToUnicode(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    v9 = 0;
    v6 = TLocaleInfo::multiByteToUnicode(a1, v4, &v9);
    if (v6 == -1)
    {
      break;
    }

    v7 = v6;
    v10 = v9;
    TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v10, 1uLL);
    v4 += v7;
    if (!*v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TLocaleInfo::multiByteToUnicode(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  result = 0;
  if (a3)
  {
    v6 = a2;
    if (*a2)
    {
      v9 = 0;
      while (1)
      {
        v14 = 0;
        v10 = TLocaleInfo::multiByteToUnicode(a1, v6, &v14);
        v9 += v10;
        if (v10 == -1 || v9 > a3)
        {
          break;
        }

        v12 = v10;
        v15 = v14;
        TBuffer<wchar_t>::insert(a4, *(a4 + 16), &v15, 1uLL);
        v6 += v12;
        if (v9 >= a3 || *v6 == 0)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t TLocaleInfo::unicodeStringCompare(uint64_t a1, unsigned int *a2, int *a3, char a4, unint64_t a5)
{
  v8 = *a2;
  if (v8)
  {
    v11 = a2 + 1;
    v12 = 1;
    while (1)
    {
      v13 = v12 - 1;
      v14 = *a3;
      if (!*a3 || v13 >= a5)
      {
        break;
      }

      if (v8 != v14)
      {
        if (a4)
        {
          goto LABEL_19;
        }

        v16 = TLocaleInfo::toLower(a1, v8);
        if (v16 != TLocaleInfo::toLower(a1, *a3))
        {
          LODWORD(v8) = *(v11 - 1);
          v14 = *a3;
          goto LABEL_19;
        }
      }

      ++a3;
      v17 = *v11++;
      v8 = v17;
      ++v12;
      if (!v17)
      {
        v18 = v12 - 1;
        goto LABEL_13;
      }
    }

    if (v13 < a5)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v18 = 0;
LABEL_13:
  if (v18 >= a5)
  {
    return 0;
  }

  LODWORD(v8) = 0;
  result = 0;
  v14 = *a3;
  if (*a3)
  {
LABEL_19:
    if (v8 < v14)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t TBuffer<char>::insert(uint64_t result, unint64_t a2, char *a3, unint64_t a4)
{
  v5 = *(result + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 16);
  }

  if (*(result + 280) == 1)
  {
    v7 = v5 + a4;
    v8 = *(result + 8);
    if (v5 + a4 > v8 && v8 < 2 * v7)
    {
      *(result + 8) = (2 * v7) | 1;
      operator new[]();
    }
  }

  if (v6 < v5)
  {
    v9 = *(result + 8);
    if (v6 + a4 < v9)
    {
      if (v9 >= v5 + a4)
      {
        v9 = v5 + a4;
      }

      v10 = v9 - (v6 + a4);
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = v9 - 1;
      do
      {
        *(*result + v11) = *(*result + v11 - a4);
        --v11;
        --v10;
      }

      while (v10);
    }
  }

  v12 = *(result + 8);
  v13 = v12 - v6;
  if (v12 > v6)
  {
    if (v13 >= a4)
    {
      v13 = a4;
    }

    if (v13)
    {
      do
      {
        v14 = *a3++;
        *(*result + v6++) = v14;
        --v13;
      }

      while (v13);
      v12 = *(result + 8);
    }
  }

  v15 = *(result + 16) + a4;
  *(result + 16) = v15;
  if (v15 < v12)
  {
    *(*result + v15) = 0;
  }

  return result;
}

uint64_t MrecInitLibrary_dfutil(void)
{
  MrecInitModule_dfile_dfutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dtxtfile_dfutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_progcall_dfutil();
  MrecInitModule_realdf_dfutil();
  MrecInitModule_sdpres_sdapi();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughDfutil(void)
{
  MrecInitLibrarySet_throughMrecutil();

  return MrecInitLibrary_dfutil();
}

void StartupMrec(DgnSharedMemMgr *a1, const char *a2)
{
  StartupMrecutil(a1, a2);
  v3 = ParamSetHolderMgr::startupParamSetHolderMgr(v2);
  ChannelMgr::startupChannelMgr(v3);
  UttFileMgr::startupUttFileMgr(v4);
  EnvHolderMgr::startupEnvHolderMgr(v5);
  v7 = ModelMgr::startupModelMgr(v6);

  RecogCtlMgr::startupRecogCtlMgr(v7);
}

void MrecPrintSize(unsigned int a1, int a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  MrecutilPrintSize(a1, a2, a3, a4, a5);
  if (ParamSetHolderMgr::smpParamSetHolderMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSetHolderMgr::printSize(ParamSetHolderMgr::smpParamSetHolderMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (ChannelMgr::smpChannelMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ChannelMgr::printSize(ChannelMgr::smpChannelMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (UttFileMgr::smpUttFileMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    UttFileMgr::printSize(UttFileMgr::smpUttFileMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (EnvHolderMgr::smpEnvHolderMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    EnvHolderMgr::printSize(EnvHolderMgr::smpEnvHolderMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (ModelMgr::smpModelMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ModelMgr::printSize(ModelMgr::smpModelMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (RecogCtlMgr::smpRecogCtlMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    RecogCtlMgr::printSize(RecogCtlMgr::smpRecogCtlMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }
}

DgnThreadMgr *MessageFormatPrefix(DgnThreadMgr *result, char a2, int a3, int CurrentThreadId)
{
  v4 = result;
  if ((a2 & 1) != 0 || a3)
  {
    if (CurrentThreadId == -1 && (a2 & 1) == 0)
    {
      CurrentThreadId = DgnThreadMgr::getCurrentThreadId(result);
    }

    if (CurrentThreadId == -1)
    {
      return DgnBuffer::printfAppend(v4, "%s [%s %d %s %d] ");
    }

    else
    {
      return DgnBuffer::printfAppend(v4, "DThread %u: %s [%s %d %s %d] ");
    }
  }

  return result;
}

uint64_t DgnThreadMgr::getCurrentThreadId(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr)
  {
    v1 = DgnThreadMgr::smTlsID == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = pthread_getspecific(DgnThreadMgr::smTlsID);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void DgnString::DgnString(DgnString *this, const DgnString *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = *(a2 + 2);
  if (v3)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 >= 2)
  {
    v6 = *(a2 + 3);
    if (v6)
    {
      v9 = 0;
      *(this + 3) = realloc_array(0, &v9, v6, 0, 0, 1);
      *this = v9;
    }

    DgnString::allocBuffer(this, v4);
    v7 = 0;
    if (v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    do
    {
      *(*this + v7) = *(*a2 + v7);
      ++v7;
    }

    while (v8 != v7);
  }
}

void *DgnString::allocBuffer(DgnString *this, unsigned int a2)
{
  v4 = a2 + 1;
  v5 = *(this + 3);
  if (v4 <= v5)
  {
    result = *this;
  }

  else
  {
    v6 = (a2 & 0xFFFFFFFC) + 4;
    result = *this;
    if (v5 < v6)
    {
      v8 = 0;
      v5 = realloc_array(result, &v8, v6, *(this + 2), *(this + 2), 1);
      *(this + 3) = v5;
      result = v8;
      *this = v8;
    }
  }

  if (v5 < v4)
  {
    v8 = 0;
    *(this + 3) = realloc_array(result, &v8, v4, *(this + 2), *(this + 2), 1);
    result = v8;
    *this = v8;
  }

  *(this + 2) = v4;
  *(result + a2) = 0;
  return result;
}

void DgnString::DgnString(DgnString *this, const char *__s)
{
  *this = 0;
  *(this + 1) = 0;
  if (__s)
  {
    v4 = strlen(__s);
    if (v4)
    {
      DgnString::allocBuffer(this, v4);
      v5 = 0;
      do
      {
        *(*this + v5) = __s[v5];
        ++v5;
      }

      while (v4 != v5);
    }
  }
}

void DgnString::DgnString(DgnString *this, char a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  if (a3)
  {
    DgnString::allocBuffer(this, a3);
    v6 = 0;
    do
    {
      *(*this + v6++) = a2;
    }

    while (a3 != v6);
  }
}

void DgnString::DgnString(DgnString *this, const char *a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  if (a3)
  {
    DgnString::allocBuffer(this, a3);
    v6 = 0;
    do
    {
      *(*this + v6) = a2[v6];
      ++v6;
    }

    while (a3 != v6);
  }
}

DgnString *DgnString::operator=(DgnString *this, DgnString *a2)
{
  if (this != a2)
  {
    v3 = *(a2 + 2);
    v4 = v3 - 1;
    if (v3 > 1)
    {
      v5 = *a2;
      DgnString::allocBuffer(this, v3 - 1);
      v6 = 0;
      do
      {
        *(*this + v6) = *(v5 + v6);
        ++v6;
      }

      while (v4 != v6);
    }

    else
    {
      *(this + 2) = 0;
    }
  }

  return this;
}

DgnString *DgnString::operator=(DgnString *a1, char *__s)
{
  if (__s && (v4 = strlen(__s)) != 0)
  {
    DgnString::allocBuffer(a1, v4);
    v5 = 0;
    do
    {
      *(*a1 + v5) = __s[v5];
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    *(a1 + 2) = 0;
  }

  return a1;
}

_DWORD *DgnString::set(_DWORD *this, const char *a2, unsigned int a3)
{
  v3 = this;
  if (a3)
  {
    this = DgnString::allocBuffer(this, a3);
    v6 = 0;
    do
    {
      *(*v3 + v6) = a2[v6];
      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    this[2] = 0;
  }

  return this;
}

_DWORD *DgnString::concatInPlace(_DWORD *this, unsigned int a2, char *a3)
{
  v4 = this;
  v5 = this[2];
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + a2;
  if (v9)
  {
    this = DgnString::allocBuffer(this, v9);
    if (a2)
    {
      v11 = a2;
      do
      {
        v12 = *a3++;
        *(*v4 + v8++) = v12;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    this[2] = 0;
  }

  return this;
}

uint64_t DgnString::printfAppend(DgnString *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v20 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  __str[0] = 0;
  __size_4 = 0;
  __size = 0x2000;
  if (vsnprintf(__str, 0x2000uLL, v6, va) >= 0x2000)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(__str, 1);
        v10 = __size;
        v11 = vsnprintf(Buffer, __size, v7, va);
      }

      while (v11 < 0);
    }

    while (v11 >= v10);
  }

  if (DWORD2(v19))
  {
    v12 = v19;
  }

  else
  {
    v12 = &byte_262899963;
  }

  if (__size_4)
  {
    v13 = v12;
  }

  else
  {
    v13 = __str;
  }

  DgnString::operator+=(v8, v13);
  result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

DgnBuffer *DgnBuffer::getBuffer(DgnBuffer *this, char a2)
{
  v2 = this;
  v3 = *(this + 8196);
  if (a2)
  {
    if ((*(this + 8196) & 1) == 0)
    {
      DgnString::operator=((this + 8200), this);
      *(v2 + 8196) = 1;
    }
  }

  else if ((*(this + 8196) & 1) == 0)
  {
    *(this + 2048) = 0x2000;
    return v2;
  }

  v4 = 6 * *(v2 + 2048) / 5u;
  *(v2 + 2048) = v4;
  DgnString::allocBuffer((v2 + 8200), v4);
  return *(v2 + 1025);
}

DgnString *DgnString::operator+=(DgnString *this, char *a2)
{
  v2 = a2;
  if (a2)
  {
    LODWORD(a2) = strlen(a2);
  }

  DgnString::concatInPlace(this, a2, v2);
  return this;
}

uint64_t DgnString::stringPrintf(DgnString *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v20 = *MEMORY[0x277D85DE8];
  *(v5 + 8) = 0;
  v19 = 0u;
  __str[0] = 0;
  __size_4 = 0;
  __size = 0x2000;
  if (vsnprintf(__str, 0x2000uLL, v6, va) >= 0x2000)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(__str, 1);
        v10 = __size;
        v11 = vsnprintf(Buffer, __size, v7, va);
      }

      while (v11 < 0);
    }

    while (v11 >= v10);
  }

  if (DWORD2(v19))
  {
    v12 = v19;
  }

  else
  {
    v12 = &byte_262899963;
  }

  if (__size_4)
  {
    v13 = v12;
  }

  else
  {
    v13 = __str;
  }

  DgnString::operator+=(v8, v13);
  result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DgnString::makeStringPrintf(DgnString *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v6;
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  __str[0] = 0;
  __size_4 = 0;
  __size = 0x2000;
  if (vsnprintf(__str, 0x2000uLL, v5, va) >= 0x2000)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(__str, 1);
        v9 = __size;
        v10 = vsnprintf(Buffer, __size, v5, va);
      }

      while (v10 < 0);
    }

    while (v10 >= v9);
  }

  if (DWORD2(v18))
  {
    v11 = v18;
  }

  else
  {
    v11 = &byte_262899963;
  }

  if (__size_4)
  {
    v12 = v11;
  }

  else
  {
    v12 = __str;
  }

  DgnString::DgnString(v7, v12);
  result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

char *DgnString::formatFloat@<X0>(DgnString *this@<X0>, double a2@<D0>, DgnString *a3@<X8>)
{
  v5 = eround(a2, this);
  *a3 = 0;
  *(a3 + 1) = 0;
  DgnString::stringPrintf(a3, "%1.*g", v6, v7, v8, this, *&v5);
  if (*(a3 + 2) < 2u)
  {
    goto LABEL_2;
  }

  v10 = *a3;
  v11 = strchr(*a3, 101);
  if (v11)
  {
    v12 = v11 - v10;
    if (v12 == -1)
    {
      v13 = 1;
    }

    else
    {
      DgnString::mid(a3, v12 + 2, v19);
      if (v20 == 3)
      {
        DgnString::left(a3, v12 + 2, v16);
        operator+("0", v16, v17);
        operator+(v17, v19, v18);
        DgnString::operator=(a3, v18);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
      if (*(a3 + 2) < 2u)
      {
LABEL_14:
        DgnString::left(a3, v12, v16);
        operator+(".", v16, v17);
        operator+("0", v17, v18);
        DgnString::mid(a3, v12, v15);
        operator+(v18, v15, v19);
        DgnString::operator=(a3, v19);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
        return DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
    v12 = -1;
  }

  v14 = *a3;
  result = strchr(*a3, 46);
  if (!result || result - v14 == 0xFFFFFFFFLL)
  {
    if (v13)
    {
LABEL_2:
      DgnString::concatInPlace(a3, 1u, ".");
      return DgnString::concatInPlace(a3, 1u, "0");
    }

    goto LABEL_14;
  }

  return result;
}

void sub_26259E0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6 - 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  _Unwind_Resume(a1);
}

uint64_t DgnString::find(DgnString *this, int a2)
{
  if (*(this + 2) < 2u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *this;
  v4 = strchr(*this, a2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

_DWORD *DgnString::mid@<X0>(DgnString *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  return DgnString::setToMid(a3, this, a2);
}

_DWORD *operator+@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = *(a1 + 8);
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  v5 = v7 != 0;
  v8 = v7 - 1;
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return DgnString::concatCopy(a3, v6, *a1, v9, *a2);
}

_DWORD *operator+@<X0>(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = *(a2 + 8);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  if (__s)
  {
    v10 = strlen(__s);
  }

  else
  {
    v10 = 0;
  }

  return DgnString::concatCopy(a3, v8, v9, v10, __s);
}

void *DgnString::left@<X0>(void *this@<X0>, unsigned int a2@<W1>, DgnString *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  if (a2)
  {
    v4 = this;
    this = DgnString::allocBuffer(a3, a2);
    v6 = 0;
    v7 = *a3;
    do
    {
      *(v7 + v6) = *(*v4 + v6);
      ++v6;
    }

    while (a2 != v6);
  }

  return this;
}

uint64_t DgnString::atoui(char **this)
{
  if (!DgnString::checkWhiteSpaceFree(this, -1) || !DgnString::checkIntegral(this, 0))
  {
    if (*(this + 2))
    {
      v4 = *this;
    }

    else
    {
      v4 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 362, "mrecutil/dstring", 3, "%.500s %.500s", v2, v3, v4);
  }

  if (*(this + 2))
  {
    v5 = *this;
  }

  else
  {
    v5 = &byte_262899963;
  }

  v6 = MEMORY[0x277D85DE0];
  if (*v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = *v5;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      v8 = *++v5;
      v7 = v8;
    }

    while (v8 > 0);
    v9 = v7 == 43;
  }

  v10 = v5[v9];
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = &v5[v9 + 1];
  do
  {
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_21;
    }

    v13 = *(v6 + 4 * v10 + 60);
    if ((v13 & 0x4000) != 0)
    {
      return v11;
    }

    if ((v13 & 0x400) == 0)
    {
LABEL_21:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 377, "mrecutil/dstring", 1, "%02x %c", v2, v3, v10);
      v10 = *(v12 - 1);
    }

    v14 = v10 - 48;
    if ((~(v10 - 48) | 0xFFFFFF01) / 0xA < v11)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 381, "mrecutil/dstring", 2, "%.500s", v2, v3, v5);
    }

    v11 = (v14 + 10 * v11);
    v15 = *v12++;
    v10 = v15;
  }

  while (v15);
  return v11;
}

double DgnString::atodb(char **this)
{
  if (!DgnString::checkWhiteSpaceFree(this, -1) || (DgnString::checkReal(this) & 1) == 0)
  {
    if (*(this + 2))
    {
      v4 = *this;
    }

    else
    {
      v4 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 422, "mrecutil/dstring", 3, "%.500s %.500s", v2, v3, v4);
  }

  if (*(this + 2))
  {
    v5 = *this;
  }

  else
  {
    v5 = &byte_262899963;
  }

  v6 = atof(v5);

  return eround(v6, 14);
}

uint64_t DgnString::checkWhiteSpaceFree(char **this, int a2)
{
  if (*(this + 2))
  {
    v2 = *this;
  }

  else
  {
    v2 = &byte_262899963;
  }

  v3 = *v2;
  if (a2)
  {
    result = *v2 == 0;
  }

  else
  {
    result = 1;
  }

  if ((*v2 & 0x80000000) == 0 && (result & 1) == 0)
  {
    v5 = v2 + 1;
    v6 = a2 - 1;
    while ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x4000) == 0)
    {
      v8 = *v5++;
      v7 = v8;
      v3 = v8;
      v9 = v8 == 0;
      if (v6)
      {
        result = v9;
      }

      else
      {
        result = 1;
      }

      if ((v7 & 0x80000000) == 0)
      {
        --v6;
        if (!result)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

BOOL DgnString::checkIntegral(char **this, unsigned int a2)
{
  if (*(this + 2))
  {
    v2 = *this;
  }

  else
  {
    v2 = &byte_262899963;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  if (v3 == 45 || v3 == 43)
  {
    v2 += a2;
    v3 = *v2;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 1);
  do
  {
    v5 = v3 - 48;
    result = v5 < 0xA;
    if (v5 >= 0xA)
    {
      break;
    }

    v7 = *v4++;
    v3 = v7;
  }

  while (v7);
  return result;
}

uint64_t DgnString::checkReal(char **this)
{
  if (*(this + 2))
  {
    v1 = *this;
  }

  else
  {
    v1 = &byte_262899963;
  }

  v2 = *v1;
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    for (i = 1; ; i = 0)
    {
      if (v2 == 43 || v2 == 45)
      {
        v6 = *++v1;
        v2 = v6;
        if (!v6)
        {
LABEL_20:
          v4 = 0;
          if ((i & 1) == 0)
          {
            return v4 & 1;
          }

          goto LABEL_21;
        }
      }

      else if (!v2)
      {
        return v4 & 1;
      }

      v7 = 0;
      v4 = 0;
      ++v1;
      do
      {
        if ((v2 - 58) > 0xFFFFFFF5)
        {
          v4 = 1;
        }

        else
        {
          if ((v2 & 0xDF) == 0x45)
          {
            goto LABEL_20;
          }

          if ((v3 | v7) & 1 | (v2 != 46))
          {
            goto LABEL_22;
          }

          v7 = 1;
        }

        v8 = *v1++;
        v2 = v8;
      }

      while (v8);
      --v1;
      if ((i & 1) == 0)
      {
        return v4 & 1;
      }

LABEL_21:
      v2 = *v1;
      v3 = 1;
    }
  }

LABEL_22:
  v4 = 0;
  return v4 & 1;
}

_DWORD *DgnString::appendFormattedString(DgnString *this, char *__s)
{
  v2 = __s;
  LODWORD(v4) = strlen(__s);
  v5 = strchr(v2, 39);
  v6 = strchr(v2, 34);
  if (v5)
  {
    v7 = "";
  }

  else
  {
    v7 = "'";
  }

  if (v5)
  {
    v8 = "'";
  }

  else
  {
    v8 = "";
  }

  if (v6)
  {
    v9 = "'";
  }

  else
  {
    v9 = v7;
  }

  if (v6)
  {
    v10 = "";
  }

  else
  {
    v10 = v8;
  }

  v4 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = v4;
    v13 = v2;
    do
    {
      v14 = *v13++;
      v11 += strlen(sStringEncodingTable[v14]);
      --v12;
    }

    while (v12);
    DgnString::preAllocate(this, v11 + 2);
    DgnString::concatInPlace(this, 1u, v9);
    v15 = *v10;
    do
    {
      v17 = *v2++;
      v16 = v17;
      v18 = v10;
      if (v17 != v15)
      {
        v18 = sStringEncodingTable[v16];
      }

      DgnString::operator+=(this, v18);
      --v4;
    }

    while (v4);
  }

  else
  {
    DgnString::preAllocate(this, 2);
    DgnString::concatInPlace(this, 1u, v9);
  }

  return DgnString::concatInPlace(this, 1u, v9);
}

unint64_t DgnString::preAllocate(unint64_t this, int a2)
{
  v4 = (a2 + 1);
  if (*(this + 12) < v4)
  {
    v6[3] = v2;
    v6[4] = v3;
    v5 = this;
    v6[0] = 0;
    this = realloc_array(*this, v6, v4, *(v5 + 8), *(v5 + 8), 1);
    *(v5 + 12) = this;
    *v5 = v6[0];
  }

  return this;
}

_DWORD *DgnString::concatCopy(_DWORD *this, unsigned int a2, const char *a3, unsigned int a4, char *a5)
{
  v5 = a2;
  v6 = this;
  v7 = a4 + a2;
  if (v7)
  {
    this = DgnString::allocBuffer(this, v7);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*v6 + i) = a3[i];
      }
    }

    if (a4)
    {
      v12 = a4;
      do
      {
        v13 = *a5++;
        *(*v6 + v5++) = v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    this[2] = 0;
  }

  return this;
}

unint64_t DgnString::appendCharWithGrow(unint64_t this, char a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 12);
  if (v4)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 > v5)
  {
    this = DgnPrimArray<char>::reallocElts(this, v6 - v5, 1);
  }

  *(v3 + 8) = v6;
  *(*v3 + v6 - 2) = a2;
  *(*v3 + v6 - 1) = 0;
  return this;
}

_DWORD *DgnString::operator+=(_DWORD *a1, char a2)
{
  v4 = a2;
  DgnString::concatInPlace(a1, 1u, &v4);
  return a1;
}

_DWORD *DgnString::operator+=(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  DgnString::concatInPlace(a1, v5, *a2);
  return a1;
}

_DWORD *DgnString::setToMid(_DWORD *this, const DgnString *a2, unsigned int a3, unsigned int a4)
{
  v4 = this;
  if (a4)
  {
    this = DgnString::allocBuffer(this, a4);
    v8 = 0;
    do
    {
      *(*v4 + v8++) = *(*a2 + a3++);
    }

    while (a4 != v8);
  }

  else
  {
    this[2] = 0;
  }

  return this;
}

_DWORD *DgnString::setToMid(_DWORD *this, const DgnString *a2, int a3)
{
  v3 = this;
  v4 = *(a2 + 2);
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (v6 - a3);
  if (v6 == a3)
  {
    this[2] = 0;
  }

  else
  {
    this = DgnString::allocBuffer(this, v6 - a3);
    v10 = 0;
    do
    {
      *(*v3 + v10) = *(*a2 + (a3 + v10));
      ++v10;
    }

    while (v7 != v10);
  }

  return this;
}

uint64_t DgnString::reverseFind(DgnString *this, int a2)
{
  if (*(this + 2) < 2u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *this;
  v4 = strrchr(*this, a2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DgnString::find(DgnString *this, const char *a2)
{
  if (*(this + 2) < 2u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *this;
  v4 = strstr(*this, a2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DgnString::compareNoCase(DgnString *this, const char *a2, const char *a3)
{
  while (1)
  {
    v5 = *a2;
    if (!*this)
    {
      break;
    }

    if (!*a2)
    {
      return 1;
    }

    v6 = __tolower(*this);
    v7 = *a2++;
    this = (this + 1);
    result = (v6 - __tolower(v7));
    if (result)
    {
      return result;
    }
  }

  if (*a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL DgnString::isPrefixNoCase(DgnString *this, const char *a2, const char *a3)
{
  v4 = this;
  v5 = strlen(this);
  if (!v5)
  {
    return 1;
  }

  while (1)
  {
    v6 = *v4;
    v7 = *a2;
    if (*v4)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return (v6 | v7) == 0;
    }

    v9 = __tolower(v6);
    if (v9 != __tolower(*a2))
    {
      break;
    }

    v4 = (v4 + 1);
    ++a2;
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DgnBuffer::printfAppend(DgnBuffer *this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 8196) == 1)
  {
    if (*(this + 2052))
    {
      v4 = *(this + 1025);
    }

    else
    {
      v4 = &byte_262899963;
    }

    v5 = strlen(v4);
    v8 = 6 * *(this + 2048) / 5u;
    *(this + 2048) = v8;
    DgnString::allocBuffer((this + 8200), v8);
    v7 = *(this + 1025);
    v6 = *(this + 2048);
  }

  else
  {
    v5 = strlen(this);
    v6 = 0x2000;
    *(this + 2048) = 0x2000;
    v7 = this;
  }

  v9 = v6 - v5;
  result = vsnprintf(v7 + v5, v6 - v5, a2, va);
  if ((result & 0x80000000) != 0 || result >= v9)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(this, 1);
        v12 = *(this + 2048) - v5;
        result = vsnprintf(Buffer + v5, v12, a2, va);
      }

      while ((result & 0x80000000) != 0);
    }

    while (result >= v12);
  }

  return result;
}

char *DgnBuffer::appendString(DgnBuffer *this, const char *__s)
{
  v4 = strlen(__s);
  if (*(this + 8196))
  {
    v5 = 6 * *(this + 2048) / 5u;
    *(this + 2048) = v5;
    DgnString::allocBuffer((this + 8200), v5);
    v6 = *(this + 1025);
    v7 = *(this + 2048) - 1;
  }

  else
  {
    *(this + 2048) = 0x2000;
    v7 = 0x1FFF;
    v6 = this;
  }

  v8 = strlen(v6) + v4;
  if (v8 >= v7)
  {
    do
    {
      Buffer = DgnBuffer::getBuffer(this, 1);
    }

    while (v8 >= *(this + 2048) - 1);
    v6 = Buffer;
  }

  return strcat(v6, __s);
}

uint64_t TItnRule::TItnRule(uint64_t a1, __int32 **a2, char a3, char a4, uint64_t a5, char a6, char *a7, char *a8, char *a9, char *a10, __n128 *a11, __n128 *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *(a1 + 48) = 0u;
  v22 = (a1 + 48);
  *(a1 + 96) = 0u;
  *(a1 + 152) = 0;
  v23 = (a1 + 152);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v24 = a1 + 120;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 217) = a4;
  *(a1 + 216) = a3;
  *(a1 + 176) = a16;
  *(a1 + 184) = a15;
  *(a1 + 220) = 0;
  v25 = *a2;
  v75 = a1 + 96;
  v76 = (a1 + 120);
  MEMORY[0x26672AF30]();
  if (a5)
  {
    MEMORY[0x26672AF30](v24, a5);
  }

  *(a1 + 144) = a6;
  v84 = v86;
  v85 = xmmword_26286B6F0;
  v87 = 1;
  TWord::getWrittenForm(a2, &v84);
  if (*(a1 + 144) == 1)
  {
    v26 = *(a1 + 143);
    if (v26 < 0)
    {
      v26 = *(a1 + 128);
    }
  }

  else
  {
    v26 = *(&v85 + 1);
  }

  *(a1 + 145) = v26 == 0;
  std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>((a1 + 24), a7, a8, (a8 - a7) >> 3);
  std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>(v22, a9, a10, (a10 - a9) >> 3);
  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  v29 = 126 - 2 * __clz(v28 - v27);
  v80 = sortTags;
  if (v28 == v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(v27, v28, &v80, v30, 1);
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v33 = 126 - 2 * __clz(v32 - v31);
  v80 = sortTags;
  if (v32 == v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(v31, v32, &v80, v34, 1);
  v35 = a11;
  if (*(a1 + 145))
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  std::vector<TItnControl>::resize(v23, a12 - a11);
  v38 = *(a1 + 184);
  v77 = *(v38 + 136);
  *(v38 + 136) = 1;
  v39 = *(a1 + 152);
  if (a11 != a12)
  {
    v40 = (v39 + 16);
    do
    {
      v41 = *v35++;
      v37 = v41;
      *(v40 - 1) = v41;
      *v40 = v36;
      v40 += 3;
    }

    while (v35 != a12);
  }

  v42 = *(a1 + 160);
  v43 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v42 - v39) >> 3));
  v80 = sortControls;
  if (v42 == v39)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,false>(v39, v42, &v80, v44, 1, v37);
  *(a1 + 192) = a13;
  *(a1 + 200) = a14;
  if (a13 != -1)
  {
    v45 = *(*(*(a1 + 184) + 24) + 8 * a13 - 8);
    ++*(v45 + 128);
  }

  v46 = 2 * (*(a1 + 32) == *(a1 + 24));
  *(a1 + 208) = v46;
  v48 = *(a1 + 48);
  v47 = *(a1 + 56);
  if (v47 == v48 || a13 == -1)
  {
    if (v47 == v48)
    {
      v46 += 2;
    }

    if (a13 == -1)
    {
      v49 = v46 + 1;
    }

    else
    {
      v49 = v46;
    }

    *(a1 + 208) = v49;
  }

  ActiveConfigHandle = TParam::getActiveConfigHandle((a15 + 5768));
  if (*(a15 + TParam::getValidConfig((a15 + 5768), ActiveConfigHandle) + 5920) == 1 && (*(a1 + 145) & 1) == 0)
  {
    if ((*(a1 + 143) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 128))
      {
        goto LABEL_99;
      }
    }

    else if (!*(a1 + 143))
    {
      goto LABEL_99;
    }

    v79 = 0;
    v80 = v82;
    v81 = xmmword_26286B6F0;
    v83 = 1;
    v78 = 0;
    TBuffer<wchar_t>::assign(&v80, "R");
    v51 = 0;
    v52 = *a2;
      ;
    }

    TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v52, v51 - 1);
    v54 = *(a1 + 176);
    if (*(&v81 + 1) >= v81)
    {
      if (v83)
      {
        v88[0] = 0;
        TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
        --*(&v81 + 1);
      }

      else if (v81)
      {
        *(v80 + v81 - 1) = 0;
      }
    }

    else
    {
      *(v80 + *(&v81 + 1)) = 0;
    }

    v78 = TTagManager::addWordRuleTag(v54);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a1 + 72, &v78);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](v75, &v78);
    TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), "=", 2uLL);
    v55 = *(&v81 + 1);
    if (*(&v85 + 1) >= v85)
    {
      if (v87)
      {
        v88[0] = 0;
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v88, 1uLL);
        v56 = v84;
        --*(&v85 + 1);
        v57 = *(&v81 + 1);
        goto LABEL_53;
      }

      v56 = v84;
      if (v85)
      {
        v84[v85 - 1] = 0;
      }
    }

    else
    {
      v56 = v84;
      v84[*(&v85 + 1)] = 0;
    }

    v57 = v55;
LABEL_53:
    v58 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v80, v57, v56, v58 - 1);
    v60 = *(a1 + 176);
    if (*(&v81 + 1) >= v81)
    {
      if (v83)
      {
        v88[0] = 0;
        TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
        --*(&v81 + 1);
      }

      else if (v81)
      {
        *(v80 + v81 - 1) = 0;
      }
    }

    else
    {
      *(v80 + *(&v81 + 1)) = 0;
    }

    v79 = TTagManager::addWordRuleTag(v60);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](v75, &v79);
    TBuffer<wchar_t>::resize(&v80, v55);
    v61 = v76;
    if (*(a1 + 143) < 0)
    {
      v61 = *v76;
    }

    v62 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v61, v62 - 1);
    v64 = *(a1 + 176);
    if (*(&v81 + 1) >= v81)
    {
      if (v83)
      {
        v88[0] = 0;
        TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
        --*(&v81 + 1);
      }

      else if (v81)
      {
        *(v80 + v81 - 1) = 0;
      }
    }

    else
    {
      *(v80 + *(&v81 + 1)) = 0;
    }

    v79 = TTagManager::addWordRuleTag(v64);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a1 + 72, &v79);
    if (*(a1 + 192) != -1)
    {
      TBuffer<wchar_t>::assign(&v80, dword_26286C828);
      v65 = *(*(*(a1 + 184) + 24) + 8 * *(a1 + 192) - 8);
      v66 = (v65 + 16);
      if (*(v65 + 39) < 0)
      {
        v66 = *v66;
      }

      v67 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v66, v67 - 1);
      v88[0] = 61;
      TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
      v69 = *(&v81 + 1);
      if (a14)
      {
        v70 = 49;
      }

      else
      {
        v70 = 48;
      }

      v88[0] = v70;
      TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
      v71 = *(a1 + 176);
      if (*(&v81 + 1) >= v81)
      {
        if (v83)
        {
          v88[0] = 0;
          TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
          --*(&v81 + 1);
        }

        else if (v81)
        {
          *(v80 + v81 - 1) = 0;
        }
      }

      else
      {
        *(v80 + *(&v81 + 1)) = 0;
      }

      v79 = TTagManager::addParamTag(v71);
      std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a1 + 72, &v79);
      TBuffer<wchar_t>::resize(&v80, v69);
      if (a14)
      {
        v72 = 48;
      }

      else
      {
        v72 = 49;
      }

      v88[0] = v72;
      TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
      v73 = *(a1 + 176);
      if (*(&v81 + 1) >= v81)
      {
        if (v83)
        {
          v88[0] = 0;
          TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), v88, 1uLL);
          --*(&v81 + 1);
        }

        else if (v81)
        {
          *(v80 + v81 - 1) = 0;
        }
      }

      else
      {
        *(v80 + *(&v81 + 1)) = 0;
      }

      v79 = TTagManager::addParamTag(v73);
      std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](v75, &v79);
    }

    if (v83 == 1 && v80 != v82 && v80)
    {
      MEMORY[0x26672B1B0]();
    }
  }

LABEL_99:
  *(v38 + 136) = v77;
  if (v87 == 1 && v84 != v86 && v84)
  {
    MEMORY[0x26672B1B0]();
  }

  return a1;
}

void sub_26259F7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != v22 && a17)
  {
    MEMORY[0x26672B1B0]();
  }

  *(v20 + 136) = a14;
  if (LOBYTE(STACK[0x878]) == 1)
  {
    v24 = STACK[0x460];
    if (STACK[0x460] != v21)
    {
      if (v24)
      {
        MEMORY[0x26672B1B0](v24, 0x1000C4052888210);
      }
    }
  }

  v25 = *v19;
  if (*v19)
  {
    *(v17 + 160) = v25;
    operator delete(v25);
  }

  if (*(v17 + 143) < 0)
  {
    operator delete(*a13);
  }

  v26 = *a12;
  if (*a12)
  {
    *(v17 + 104) = v26;
    operator delete(v26);
  }

  v27 = *(v17 + 72);
  if (v27)
  {
    *(v17 + 80) = v27;
    operator delete(v27);
  }

  v28 = *v18;
  if (*v18)
  {
    *(v17 + 56) = v28;
    operator delete(v28);
  }

  v29 = *(v17 + 24);
  if (v29)
  {
    *(v17 + 32) = v29;
    operator delete(v29);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void std::vector<TItnControl>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<TItnControl>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

BOOL sortControls(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

void std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v10);
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

void TItnRule::~TItnRule(TItnRule *this)
{
  v2 = *(this + 24);
  if (v2 != -1)
  {
    v3 = *(*(*(this + 23) + 24) + 8 * v2 - 8);
    --*(v3 + 128);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t TItnRule::operator==(const __int32 *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (!v3)
  {
    goto LABEL_48;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (!wmemcmp(a1, a2, v3))
  {
LABEL_48:
    if (*(v7 + 145) == *(v6 + 145))
    {
      v8 = *(v7 + 3);
      v9 = *(v7 + 4);
      v10 = *(v6 + 3);
      if (v9 - v8 == *(v6 + 4) - v10)
      {
        if (v9 == v8)
        {
LABEL_20:
          v12 = *(v7 + 6);
          v13 = *(v7 + 7);
          v14 = *(v6 + 6);
          if (v13 - v12 == *(v6 + 7) - v14)
          {
            if (v13 == v12)
            {
LABEL_26:
              result = std::operator==[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v7 + 30, v6 + 30);
              if (!result)
              {
                return result;
              }

              if (*(v7 + 144) == *(v6 + 144) && *(v7 + 24) == *(v6 + 24) && *(v7 + 200) == *(v6 + 200) && v7[55] == v6[55])
              {
                v18 = *(v7 + 19);
                v17 = *(v7 + 20);
                v19 = v17 - v18;
                v20 = *(v6 + 19);
                if (v17 - v18 == *(v6 + 20) - v20)
                {
                  if (v17 == v18)
                  {
                    return 1;
                  }

                  v21 = 0;
                  v22 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
                  if (v22 <= 1)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = v22;
                  }

                  v24 = (v18 + 16);
                  for (i = (v20 + 8); *(v24 - 2) == *(i - 1) && *(v24 - 1) == *i && *v24 == i[1]; i += 3)
                  {
                    ++v21;
                    v24 += 3;
                    if (v23 == v21)
                    {
                      return v21 >= v22;
                    }
                  }
                }
              }
            }

            else
            {
              v15 = (v13 - v12) >> 3;
              if (v15 <= 1)
              {
                v15 = 1;
              }

              while (*v12 == *v14)
              {
                v12 += 8;
                ++v14;
                if (!--v15)
                {
                  goto LABEL_26;
                }
              }
            }
          }
        }

        else
        {
          v11 = (v9 - v8) >> 3;
          if (v11 <= 1)
          {
            v11 = 1;
          }

          while (*v8 == *v10)
          {
            v8 += 8;
            ++v10;
            if (!--v11)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

  return 0;
}

void *TItnRule::save(uint64_t a1, void **a2, uint64_t a3)
{
  v35 = v37;
  v36 = xmmword_26286B6F0;
  v38 = 1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "Rule = \n{\n", 10);
  v6 = a1;
  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  slashEscape(v6, &v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Token = ", 13);
  if (*(&v36 + 1) >= v36)
  {
    if (v38)
    {
      v39[0] = 0;
      TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v39, 1uLL);
      v7 = v35;
      --*(&v36 + 1);
    }

    else
    {
      v7 = v35;
      if (v36)
      {
        v35[v36 - 1] = 0;
      }
    }
  }

  else
  {
    v7 = v35;
    v35[*(&v36 + 1)] = 0;
  }

  v8 = TOutputStream::operator<<(a2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v8, "\n", 2);
  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
      goto LABEL_13;
    }
  }

  else if (!*(a1 + 143))
  {
LABEL_13:
    if (*(a1 + 144) != 1)
    {
      goto LABEL_24;
    }
  }

  TBuffer<wchar_t>::resize(&v35, 0);
  v9 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v9 = *v9;
  }

  slashEscape(v9, &v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Rewrite = ", 15);
  if (*(&v36 + 1) >= v36)
  {
    if (v38)
    {
      v39[0] = 0;
      TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v39, 1uLL);
      v10 = v35;
      --*(&v36 + 1);
    }

    else
    {
      v10 = v35;
      if (v36)
      {
        v35[v36 - 1] = 0;
      }
    }
  }

  else
  {
    v10 = v35;
    v35[*(&v36 + 1)] = 0;
  }

  v11 = TOutputStream::operator<<(a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v11, "\n", 2);
  if ((*(a1 + 144) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    IsRewriteActive = '0'\n", 26);
  }

LABEL_24:
  if (*(a1 + 32) != *(a1 + 24))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    LeftContexts = {", 20);
    if (*(a1 + 32) != *(a1 + 24))
    {
      v12 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " '", 2);
        Tag = TTagManager::getTag(a3, *(*(a1 + 24) + 8 * v12));
        v14 = Tag;
        if (*(Tag + 23) < 0)
        {
          v14 = *Tag;
        }

        v15 = TOutputStream::operator<<(a2, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v15, "'", 1);
        ++v12;
      }

      while (v12 < (*(a1 + 32) - *(a1 + 24)) >> 3);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " }\n", 3);
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    RightContexts = {", 21);
    if (*(a1 + 56) != *(a1 + 48))
    {
      v16 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " '", 2);
        v17 = TTagManager::getTag(a3, *(*(a1 + 48) + 8 * v16));
        v18 = v17;
        if (*(v17 + 23) < 0)
        {
          v18 = *v17;
        }

        v19 = TOutputStream::operator<<(a2, v18);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v19, "'", 1);
        ++v16;
      }

      while (v16 < (*(a1 + 56) - *(a1 + 48)) >> 3);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " }\n", 3);
  }

  if (*(a1 + 152) != *(a1 + 160))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Controls = {", 16);
    if (*(a1 + 160) != *(a1 + 152))
    {
      v20 = 0;
      v21 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " '", 2);
        v22 = *(*(a1 + 152) + v20) - 1;
        v23 = &dword_26286C844;
        if (v22 <= 0xB)
        {
          v23 = off_279B3B248[v22];
        }

        v24 = TOutputStream::operator<<(a2, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v24, "-", 1);
        v25 = *(*(a1 + 152) + v20 + 8) - 1;
        v26 = &dword_26286C844;
        if (v25 <= 4)
        {
          v26 = off_279B3B2A8[v25];
        }

        v27 = TOutputStream::operator<<(a2, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v27, "'", 1);
        ++v21;
        v20 += 24;
      }

      while (v21 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - *(a1 + 152)) >> 3));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " }\n", 3);
  }

  v28 = *(a1 + 192);
  if (v28 != -1)
  {
    if (v28 && (v29 = v28 - 1, v30 = *(*(a1 + 184) + 24), v29 < (*(*(a1 + 184) + 32) - v30) >> 3))
    {
      v31 = *(v30 + 8 * v29);
    }

    else
    {
      v31 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Parameter = '", 17);
    v32 = (v31 + 16);
    if (*(v31 + 39) < 0)
    {
      v32 = *v32;
    }

    v33 = TOutputStream::operator<<(a2, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v33, "-", 1);
    MEMORY[0x26672B050](*v33, *(a1 + 200));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v33, "'\n", 2);
  }

  if (*(a1 + 216) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    UserAdded = '1'\n", 20);
  }

  if (*(a1 + 217) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Deleted = '1'\n", 18);
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n\n", 3);
  if (v38 == 1)
  {
    result = v35;
    if (v35 != v37)
    {
      if (v35)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return result;
}

void sub_2625A02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (LOBYTE(STACK[0x428]) == 1 && a11 != v11 && a11 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void TItnRuleManager::TItnRuleManager(TItnRuleManager *this, TInputStream *a2, TTagManager *a3, TLexicon *a4, TItnParamManager *a5)
{
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *this = &unk_287527760;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 88) = 0u;
  v6 = this + 88;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 7) = a5;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 80) = 0;
  if (*(a2 + 8))
  {
    if (TInputStream::verifyHeader(a2, "ItnRule", pItnRuleVersion, 6))
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v33) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v32, *(&v32 + 1));
      }

      else
      {
        *&__p[8] = v32;
        v25[0] = v33;
      }

      *__p = &unk_287528000;
      if (v25[0] >= 0)
      {
        v16 = &__p[8];
      }

      else
      {
        v16 = *&__p[8];
      }

      conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 602, v12, v13);
      *__p = byte_287529580;
      if (SHIBYTE(v25[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v18 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v18, *__p, *&__p[8]);
      }

      else
      {
        v22 = *__p;
        exception[3] = *&__p[16];
        *&v18->__r_.__value_.__l.__data_ = v22;
      }

      *exception = &unk_287528000;
    }

    BoolParameter = TInputStream::getBoolParameter(a2, "Tokens", 1);
    TFileObjectParser::TFileObjectParser(&v32, a2);
    v9 = v32;
    v30 = xmmword_26286B6D0;
    v29 = "R";
    v31 = -1;
    if (TFileObject::verify(v32, &v29, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(&v27, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v28) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v27, *(&v27 + 1));
      }

      else
      {
        *&__p[8] = v27;
        v25[0] = v28;
      }

      *__p = &unk_287528000;
      if (v25[0] >= 0)
      {
        v19 = &__p[8];
      }

      else
      {
        v19 = *&__p[8];
      }

      conditionalAssert(v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 617, v14, v15);
      *__p = byte_287529580;
      if (SHIBYTE(v25[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      v20 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v20 = byte_287529580;
      v21 = (v20 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v21, *__p, *&__p[8]);
      }

      else
      {
        v23 = *__p;
        v20[3] = *&__p[16];
        *&v21->__r_.__value_.__l.__data_ = v23;
      }

      *v20 = &unk_287528000;
    }

    v10 = *(a2 + 12);
    v11 = *(v9 + 24);
    if (v11)
    {
      TItnRuleManager::addRule(this, v11, BoolParameter, v10);
    }

    if (v10 >= 6)
    {
      *__p = v25;
      *&__p[8] = xmmword_26286B6F0;
      v26 = 1;
      TInputStream::getStringParameter(a2, "HintRewriteNever", __p, &dword_26286C844);
      if (*&__p[16] >= *&__p[8])
      {
        if (v26)
        {
          LODWORD(v27) = 0;
          TBuffer<wchar_t>::insert(__p, *&__p[16], &v27, 1uLL);
          --*&__p[16];
        }

        else if (*&__p[8])
        {
          *(*__p + 4 * *&__p[8] - 4) = 0;
        }
      }

      else
      {
        *(*__p + 4 * *&__p[16]) = 0;
      }

      MEMORY[0x26672AF30](v6);
      TInputStream::getStringParameter(a2, "HintRewriteAlways", __p, &dword_26286C844);
      if (*&__p[16] >= *&__p[8])
      {
        if (v26)
        {
          LODWORD(v27) = 0;
          TBuffer<wchar_t>::insert(__p, *&__p[16], &v27, 1uLL);
          --*&__p[16];
        }

        else if (*&__p[8])
        {
          *(*__p + 4 * *&__p[8] - 4) = 0;
        }
      }

      else
      {
        *(*__p + 4 * *&__p[16]) = 0;
      }

      MEMORY[0x26672AF30](this + 112);
      if (v26 == 1 && *__p != v25)
      {
        if (*__p)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }

    TFileObjectParser::~TFileObjectParser(&v32);
  }
}

void sub_2625A0A2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  TFileObjectParser::~TFileObjectParser((v25 - 168));
  if (a2 == 1)
  {
    __cxa_begin_catch(v28);
    TItnRuleManager::freeMemory(v20);
    __cxa_rethrow();
  }

  if (*(v20 + 135) < 0)
  {
    operator delete(*(v20 + 112));
  }

  if (*(v20 + 111) < 0)
  {
    operator delete(*v22);
  }

  v27 = *v23;
  if (*v23)
  {
    *(v20 + 40) = v27;
    operator delete(v27);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v21, *v24);
  _Unwind_Resume(v28);
}

void sub_2625A0B48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (LOBYTE(STACK[0x428]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v5);
  }

  TFileObjectParser::~TFileObjectParser((v6 - 168));
  if (a2 == 1)
  {
    __cxa_begin_catch(v8);
    TItnRuleManager::freeMemory(v4);
    __cxa_rethrow();
  }

  JUMPOUT(0x2625A0B98);
}

void TItnRuleManager::addRule(TItnRuleManager *this, const TFileObject *a2, int a3, unint64_t a4)
{
  v190 = *MEMORY[0x277D85DE8];
  memset(v153, 0, sizeof(v153));
  memset(v152, 0, sizeof(v152));
  *(this + 80) = 1;
  v164 = xmmword_26286B6A0;
  v163 = dword_26286C848;
  v165 = -1;
  v167 = xmmword_26286B6A0;
  v166 = dword_26286C870;
  v168 = -1;
  v170 = xmmword_26286B680;
  v169 = dword_26286C890;
  v171 = -1;
  v173 = xmmword_26286B6A0;
  v172 = dword_26286C8A8;
  v174 = -1;
  v176 = xmmword_26286B6A0;
  v175 = dword_26286C8C8;
  v177 = -1;
  v179 = xmmword_26286B6A0;
  v178 = dword_26286C8FC;
  v180 = -1;
  v182 = xmmword_26286B6A0;
  v181 = dword_26286C934;
  v183 = -1;
  v185 = xmmword_26286B6A0;
  v184 = dword_26286C95C;
  v186 = -1;
  v187 = dword_26286C980;
  v188 = 2;
  v189 = xmmword_26286B690;
  if (TFileObject::verify(a2, &v163, 9, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v158 = byte_287529580;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v158[8], __p[0], __p[1]);
    }

    else
    {
      *&v158[8] = *__p;
      v159[0] = __p[2];
    }

    *v158 = &unk_287528000;
    if (v159[0] >= 0)
    {
      v130 = &v158[8];
    }

    else
    {
      v130 = *&v158[8];
    }

    conditionalAssert(v130, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 725, v126, v127);
    *v158 = byte_287529580;
    if (SHIBYTE(v159[0]) < 0)
    {
      operator delete(*&v158[8]);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v158, &byte_262899963);
    *exception = byte_287529580;
    v132 = (exception + 1);
    if ((v158[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v132, *v158, *&v158[8]);
    }

    else
    {
      v139 = *v158;
      exception[3] = *&v158[16];
      *&v132->__r_.__value_.__l.__data_ = v139;
    }

    *exception = &unk_287528000;
  }

  v151 = 0;
  v7 = *(a2 + 3);
  v145 = a3;
  if (!v7)
  {
    v148 = 0;
    v149 = 0;
    v150 = 0;
    goto LABEL_263;
  }

  v146 = 0;
  v147 = 0;
  v143 = 0;
  v142 = a2;
  v8 = 0x1070C40ADD13FEBLL;
  while (1)
  {
    v9 = *(v7 + 8);
    if (!wcscmp(v9, dword_26286C890))
    {
      if (TFileObject::verify(v7, 0, 0))
      {
        v151 = 1;
      }

      else if (TLexicon::checkName(*(this + 9), *(v7 + 24), a3, 0xFFFFFFFFFFFFFFFFLL))
      {
        v151 = 1;
        loggableFileObject(v7);
        v13 = v158[23];
        v14 = *v158;
        loggableUnicode(*(v7 + 24), __p);
        v19 = v158;
        if (v13 < 0)
        {
          v19 = v14;
        }

        v20 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v20 = __p[0];
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v15, v16, v17, v18, v19, v20);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v158[23] & 0x80000000) != 0)
        {
          operator delete(*v158);
        }
      }

      else
      {
        v24 = *(this + 9);
        v25 = *(v7 + 24);
        if (a3)
        {
          HeadClone = TLexicon::findHeadClone(v24, v25);
        }

        else
        {
          HeadClone = TLexicon::findWord(v24, v25);
        }

        if (!HeadClone)
        {
          v29 = TLexicon::addTempWord(*(this + 9), *(v7 + 24), 0, 0, 0);
          if (*(getPropCheckTokenExistence() + 8) == 1)
          {
            *v158 = v159;
            *&v158[8] = xmmword_26286B6F0;
            v160 = 1;
            TWord::getWordSense(v29, v158);
            if (*&v158[16] >= *&v158[8])
            {
              if (v160)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(v158, *&v158[16], __p, 1uLL);
                v30 = *v158;
                --*&v158[16];
              }

              else
              {
                v30 = *v158;
                if (*&v158[8])
                {
                  *(*v158 + 4 * *&v158[8] - 4) = 0;
                }
              }
            }

            else
            {
              v30 = *v158;
              *(*v158 + 4 * *&v158[16]) = 0;
            }

            if (wcsncmp(v30, dword_26286C9C0, 4uLL))
            {
              loggableFileObject(v7);
              v43 = SHIBYTE(__p[2]);
              v44 = __p[0];
              loggableUnicode(*v29, v156);
              v49 = __p;
              if (v43 < 0)
              {
                v49 = v44;
              }

              v50 = v156;
              if (v157 < 0)
              {
                v50 = v156[0];
              }

              tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v45, v46, v47, v48, v49, v50);
              if (v157 < 0)
              {
                operator delete(v156[0]);
              }

              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v160 == 1 && *v158 != v159 && *v158)
            {
              MEMORY[0x26672B1B0]();
            }
          }
        }
      }

      goto LABEL_78;
    }

    if (!wcscmp(v9, dword_26286C8A8))
    {
      v12 = TFileObject::verify(v7, 0, 1);
      v151 |= v12;
      if ((v151 & 1) == 0)
      {
        v147 = *(v7 + 24);
      }

      goto LABEL_78;
    }

    if (!wcscmp(v9, dword_26286C848))
    {
      v21 = TFileObject::verify(v7, 0, 0);
      v151 |= v21;
      if ((v151 & 1) == 0)
      {
        v22 = *(v7 + 24);
        {
          operator new();
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (wcscmp(v9, dword_26286C870))
      {
        if (!wcscmp(v9, dword_26286C8C8))
        {
          v27 = formatContexts(v7, *(this + 8), v153);
        }

        else
        {
          if (wcscmp(v9, dword_26286C8FC))
          {
            if (!wcscmp(v9, dword_26286C95C))
            {
              v146 = v7;
              goto LABEL_78;
            }

            if (wcscmp(v9, dword_26286C9D4) && wcscmp(v9, dword_26286C934))
            {
              if (!wcscmp(v9, dword_26286C980))
              {
                v10 = TFileObject::verify(v7, 0, 0);
                v151 |= v10;
                if ((v151 & 1) == 0)
                {
                  v11 = *(v7 + 24);
                  {
                    operator new();
                  }

                  TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v151);
                }

                v143 = 1;
              }

              goto LABEL_78;
            }

            v31 = *(this + 7);
            if (TFileObject::verify(v7, 0, 0))
            {
LABEL_49:
              v32 = -1;
              goto LABEL_50;
            }

            v33 = v8;
            v34 = *(v7 + 24);
            v35 = wcschr(v34, 45);
            if (!v35)
            {
              loggableFileObject(v7);
              a3 = v145;
              v8 = v33;
              v42 = v158;
              if (v158[23] < 0)
              {
                v42 = *v158;
              }

              tknPrintf("Error: %sSyntax error, no '-' in control value\n", v38, v39, v40, v41, v42);
              if ((v158[23] & 0x80000000) != 0)
              {
                operator delete(*v158);
              }

              goto LABEL_49;
            }

            v36 = v35;
            *v158 = v159;
            *&v158[8] = xmmword_26286B6F0;
            v160 = 1;
            TBuffer<wchar_t>::resize(v158, 0);
            TBuffer<wchar_t>::insert(v158, 0, v34, v36 - v34);
            if (*&v158[16] >= *&v158[8])
            {
              v8 = v33;
              if (v160)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(v158, *&v158[16], __p, 1uLL);
                v37 = *v158;
                --*&v158[16];
              }

              else
              {
                v37 = *v158;
                if (*&v158[8])
                {
                  *(*v158 + 4 * *&v158[8] - 4) = 0;
                }
              }
            }

            else
            {
              v37 = *v158;
              *(*v158 + 4 * *&v158[16]) = 0;
              v8 = v33;
            }

            TParamManager::find(v31, v37, v154);
            TParamManager::end(v31, __p);
            if (v154[0] == __p[0])
            {
              loggableFileObject(v7);
              if (SHIBYTE(__p[2]) >= 0)
              {
                v53 = __p;
              }

              else
              {
                v53 = __p[0];
              }

              a3 = v145;
              if (*&v158[16] >= *&v158[8])
              {
                if (v160)
                {
                  LODWORD(v148) = 0;
                  TBuffer<wchar_t>::insert(v158, *&v158[16], &v148, 1uLL);
                  v54 = *v158;
                  --*&v158[16];
                }

                else
                {
                  v54 = *v158;
                  if (*&v158[8])
                  {
                    *(*v158 + 4 * *&v158[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v54 = *v158;
                *(*v158 + 4 * *&v158[16]) = 0;
              }

              loggableUnicode(v54, v156);
              v66 = v156;
              if (v157 < 0)
              {
                v66 = v156[0];
              }

              tknPrintf("Error: %s'%s' : Parameter name does not exist\n", v62, v63, v64, v65, v53, v66);
LABEL_123:
              if (v157 < 0)
              {
                operator delete(v156[0]);
              }

              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              v32 = -1;
            }

            else
            {
              if (*(*(*(v31 + 24) + 8 * *(v154[0] + 5) - 8) + 8))
              {
                loggableFileObject(v7);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v51 = __p;
                }

                else
                {
                  v51 = __p[0];
                }

                a3 = v145;
                if (*&v158[16] >= *&v158[8])
                {
                  if (v160)
                  {
                    LODWORD(v148) = 0;
                    TBuffer<wchar_t>::insert(v158, *&v158[16], &v148, 1uLL);
                    v52 = *v158;
                    --*&v158[16];
                  }

                  else
                  {
                    v52 = *v158;
                    if (*&v158[8])
                    {
                      *(*v158 + 4 * *&v158[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v52 = *v158;
                  *(*v158 + 4 * *&v158[16]) = 0;
                }

                loggableUnicode(v52, v156);
                v61 = v156;
                if (v157 < 0)
                {
                  v61 = v156[0];
                }

                tknPrintf("Error: %s'%s' : This parameter type cannot be used in word rules\n", v57, v58, v59, v60, v51, v61);
                goto LABEL_123;
              }

              LOBYTE(v162) = 0;
              {
                operator new();
              }

              TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, (v36 + 1), &v162);
              a3 = v145;
              if (v162 == 1)
              {
                loggableFileObject(v7);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v55 = __p;
                }

                else
                {
                  v55 = __p[0];
                }

                if (*&v158[16] >= *&v158[8])
                {
                  if (v160)
                  {
                    LODWORD(v148) = 0;
                    TBuffer<wchar_t>::insert(v158, *&v158[16], &v148, 1uLL);
                    v56 = *v158;
                    --*&v158[16];
                  }

                  else
                  {
                    v56 = *v158;
                    if (*&v158[8])
                    {
                      *(*v158 + 4 * *&v158[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v56 = *v158;
                  *(*v158 + 4 * *&v158[16]) = 0;
                }

                loggableUnicode(v56, v156);
                v71 = v156;
                if (v157 < 0)
                {
                  v71 = v156[0];
                }

                tknPrintf("Error: %s'%s' : The value is out of range, expected a BOOLean.\n", v67, v68, v69, v70, v55, v71);
                goto LABEL_123;
              }

              v32 = *(v154[0] + 5);
            }

            if (v160 == 1 && *v158 != v159 && *v158)
            {
              MEMORY[0x26672B1B0]();
            }

LABEL_50:
            v28 = v151 | (v32 == -1);
LABEL_42:
            v151 = v28;
            goto LABEL_78;
          }

          v27 = formatContexts(v7, *(this + 8), v152);
        }

        v28 = v151 | v27;
        goto LABEL_42;
      }

      v23 = TFileObject::verify(v7, 0, 0);
      v151 |= v23;
      if ((v151 & 1) == 0)
      {
        v22 = *(v7 + 24);
        {
          operator new();
        }

LABEL_33:
        TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v22, &v151);
      }
    }

LABEL_78:
    v7 = *(v7 + 16);
    if (!v7)
    {
      if (v151)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v158 = byte_287529580;
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v158[8], __p[0], __p[1]);
        }

        else
        {
          *&v158[8] = *__p;
          v159[0] = __p[2];
        }

        *v158 = &unk_287528000;
        if (v159[0] >= 0)
        {
          v133 = &v158[8];
        }

        else
        {
          v133 = *&v158[8];
        }

        conditionalAssert(v133, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 830, v128, v129);
        *v158 = byte_287529580;
        if (SHIBYTE(v159[0]) < 0)
        {
          operator delete(*&v158[8]);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v134 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v158, &byte_262899963);
        *v134 = byte_287529580;
        v135 = (v134 + 1);
        if ((v158[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v135, *v158, *&v158[8]);
        }

        else
        {
          v140 = *v158;
          v134[3] = *&v158[16];
          *&v135->__r_.__value_.__l.__data_ = v140;
        }

        *v134 = &unk_287528000;
      }

      if (!((v147 != 0) | (v143 ^ 1) & 1))
      {
        loggableFileObject(v142);
        if (v158[23] >= 0)
        {
          v76 = v158;
        }

        else
        {
          v76 = *v158;
        }

        tknPrintf("Error: %sIsRewriteActive = '1' but no Rewrite attribute specified\n", v72, v73, v74, v75, v76);
        if ((v158[23] & 0x80000000) != 0)
        {
          operator delete(*v158);
        }

        v151 = 1;
      }

      v148 = 0;
      v149 = 0;
      v150 = 0;
      if (v146)
      {
        *&__p[1] = vdupq_n_s64(1uLL);
        __p[0] = &unk_26286C844;
        __p[3] = -1;
        if (TFileObject::verify(v146, __p, 1, 1))
        {
          v77 = 1;
          goto LABEL_262;
        }

        v80 = *(v146 + 24);
        if (v80)
        {
          v81 = 0;
          do
          {
            ++v81;
            v80 = *(v80 + 16);
          }

          while (v80);
        }

        else
        {
          v81 = 0;
        }

        std::vector<TPItnRuleControl>::reserve(&v148, v81);
        v82 = *(v146 + 24);
        if (v82)
        {
          v77 = 0;
          while (1)
          {
            v83 = wcschr(*(v82 + 24), 45);
            if (!v83)
            {
              loggableFileObject(v82);
              if (v158[23] >= 0)
              {
                v91 = v158;
              }

              else
              {
                v91 = *v158;
              }

              tknPrintf("Error: %sSyntax error, no '-' in control value\n", v87, v88, v89, v90, v91);
              if ((v158[23] & 0x80000000) != 0)
              {
                operator delete(*v158);
              }

              v77 = 1;
              goto LABEL_252;
            }

            v84 = v83;
            *v158 = v159;
            *&v158[8] = xmmword_26286B6F0;
            v160 = 1;
            v85 = *(v82 + 24);
            TBuffer<wchar_t>::resize(v158, 0);
            TBuffer<wchar_t>::insert(v158, 0, v85, v84 - v85);
            if (*&v158[16] >= *&v158[8])
            {
              if (v160)
              {
                LODWORD(v156[0]) = 0;
                TBuffer<wchar_t>::insert(v158, *&v158[16], v156, 1uLL);
                v86 = *v158;
                --*&v158[16];
              }

              else
              {
                v86 = *v158;
                if (*&v158[8])
                {
                  *(*v158 + 4 * *&v158[8] - 4) = 0;
                }
              }
            }

            else
            {
              v86 = *v158;
              *(*v158 + 4 * *&v158[16]) = 0;
            }

            if (!wcscmp(v86, "C"))
            {
              v94 = 6;
            }

            else if (!wcscmp(v86, "N"))
            {
              v94 = 4;
            }

            else if (!wcscmp(v86, "A"))
            {
              v94 = 5;
            }

            else if (!wcscmp(v86, "N"))
            {
              v94 = 1;
            }

            else if (!wcscmp(v86, "O"))
            {
              v94 = 2;
            }

            else if (!wcscmp(v86, "T"))
            {
              v94 = 3;
            }

            else if (!wcscmp(v86, "R"))
            {
              v94 = 9;
            }

            else if (!wcscmp(v86, "S"))
            {
              v94 = 8;
            }

            else if (!wcscmp(v86, "K"))
            {
              v94 = 10;
            }

            else if (!wcscmp(v86, "H"))
            {
              v94 = 11;
            }

            else if (!wcscmp(v86, "R"))
            {
              v94 = 12;
            }

            else
            {
              if (wcscmp(v86, "F"))
              {
                loggableFileObject(v82);
                if (v157 >= 0)
                {
                  v92 = v156;
                }

                else
                {
                  v92 = v156[0];
                }

                if (*&v158[16] >= *&v158[8])
                {
                  if (v160)
                  {
                    v162 = 0;
                    TBuffer<wchar_t>::insert(v158, *&v158[16], &v162, 1uLL);
                    v93 = *v158;
                    --*&v158[16];
                  }

                  else
                  {
                    v93 = *v158;
                    if (*&v158[8])
                    {
                      *(*v158 + 4 * *&v158[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v93 = *v158;
                  *(*v158 + 4 * *&v158[16]) = 0;
                }

                loggableUnicode(v93, v154);
                v125 = v154;
                if (v155 < 0)
                {
                  v125 = v154[0];
                }

                tknPrintf("Error: %s'%s' : Bad control name\n", v121, v122, v123, v124, v92, v125);
LABEL_230:
                if (v155 < 0)
                {
                  operator delete(v154[0]);
                }

                if (v157 < 0)
                {
                  operator delete(v156[0]);
                }

                v77 = 1;
                goto LABEL_248;
              }

              v94 = 7;
            }

            if (!wcscmp(v84 + 1, "O"))
            {
              v95 = 1;
            }

            else if (!wcscmp(v84 + 1, "O"))
            {
              v95 = 2;
            }

            else if (!wcscmp(v84 + 1, "B"))
            {
              v95 = 4;
            }

            else if (!wcscmp(v84 + 1, "A"))
            {
              v95 = 3;
            }

            else if (!wcscmp(v84 + 1, "I"))
            {
              v95 = 5;
            }

            else if (!wcscmp(v84 + 1, "T"))
            {
              v95 = 6;
            }

            else
            {
              v95 = -1;
            }

            if (v95 != 6)
            {
              if (v95 != -1)
              {
                v112 = v149;
                if (v149 >= v150)
                {
                  v114 = (v149 - v148) >> 4;
                  v115 = v114 + 1;
                  if ((v114 + 1) >> 60)
                  {
                    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
                  }

                  v116 = v150 - v148;
                  if ((v150 - v148) >> 3 > v115)
                  {
                    v115 = v116 >> 3;
                  }

                  if (v116 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v117 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v117 = v115;
                  }

                  if (v117)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(&v148, v117);
                  }

                  v118 = (16 * v114);
                  *v118 = v94;
                  v118[1] = v95;
                  v113 = 16 * v114 + 16;
                  v119 = (16 * v114 - (v149 - v148));
                  memcpy(v119, v148, v149 - v148);
                  v120 = v148;
                  v148 = v119;
                  v149 = v113;
                  v150 = 0;
                  if (v120)
                  {
                    operator delete(v120);
                  }
                }

                else
                {
                  *v149 = v94;
                  *(v112 + 1) = v95;
                  v113 = (v112 + 16);
                }

                v149 = v113;
                goto LABEL_248;
              }

              loggableFileObject(v82);
              v96 = v157;
              v97 = v156[0];
              loggableUnicode(v84 + 1, v154);
              v102 = v156;
              if (v96 < 0)
              {
                v102 = v97;
              }

              v103 = v154;
              if (v155 < 0)
              {
                v103 = v154[0];
              }

              tknPrintf("Error: %s'%s' : Bad control param\n", v98, v99, v100, v101, v102, v103);
              goto LABEL_230;
            }

            if (a4 >= 5)
            {
              loggableFileObject(v82);
              v104 = v157;
              v105 = v156[0];
              loggableUnicode(v84 + 1, v154);
              v110 = v156;
              if (v104 < 0)
              {
                v110 = v105;
              }

              v111 = v154;
              if (v155 < 0)
              {
                v111 = v154[0];
              }

              tknPrintf("Error: %s'%s' : Transfer control param is deprecated.\n", v106, v107, v108, v109, v110, v111);
              goto LABEL_230;
            }

LABEL_248:
            if (v160 == 1 && *v158 != v159 && *v158)
            {
              MEMORY[0x26672B1B0]();
            }

LABEL_252:
            v82 = *(v82 + 16);
            if (!v82)
            {
              goto LABEL_262;
            }
          }
        }

        v77 = 0;
LABEL_262:
        v151 |= v77 & 1;
        if ((v151 & 1) == 0)
        {
LABEL_263:
          operator new();
        }
      }

      else if ((v147 != 0) | (v143 ^ 1) & 1)
      {
        goto LABEL_263;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v158 = byte_287529580;
      if (SHIBYTE(__p[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v158[8], __p[0], __p[1]);
      }

      else
      {
        *&v158[8] = *__p;
        v159[0] = __p[2];
      }

      *v158 = &unk_287528000;
      if (v159[0] >= 0)
      {
        v136 = &v158[8];
      }

      else
      {
        v136 = *&v158[8];
      }

      conditionalAssert(v136, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 848, v78, v79);
      *v158 = byte_287529580;
      if (SHIBYTE(v159[0]) < 0)
      {
        operator delete(*&v158[8]);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v137 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v158, &byte_262899963);
      *v137 = byte_287529580;
      v138 = (v137 + 1);
      if ((v158[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v138, *v158, *&v158[8]);
      }

      else
      {
        v141 = *v158;
        v137[3] = *&v158[16];
        *&v138->__r_.__value_.__l.__data_ = v141;
      }

      *v137 = &unk_287528000;
    }
  }
}

void sub_2625A251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37)
{
  MEMORY[0x26672B1B0](v37, 0x1070C40ADD13FEBLL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void TItnRuleManager::freeMemory(TItnRuleManager *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        TItnRule::~TItnRule(v5);
        MEMORY[0x26672B1B0]();
        v3 = *(this + 4);
        v2 = *(this + 5);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v7 = *(this + 2);
  v6 = (this + 16);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
  v6[3] = v6[2];
}

void TItnRuleManager::~TItnRuleManager(TItnRuleManager *this)
{
  *this = &unk_287527760;
  TItnRuleManager::freeMemory(this);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 8, *(this + 2));
}

{
  TItnRuleManager::~TItnRuleManager(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t TItnRuleManager::isCustomized(TItnRuleManager *this)
{
  v1 = *(this + 1);
  if (v1 == (this + 16))
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 7);
    if (v2)
    {
      v3 = *(this + 4);
      if (v2 <= (*(this + 5) - v3) >> 3)
      {
        v2 = *(v3 + 8 * v2 - 8);
      }

      else
      {
        v2 = 0;
      }
    }

    if (*(v2 + 217) & 1) != 0 || (*(v2 + 216))
    {
      break;
    }

    v4 = *(v1 + 1);
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = *(v1 + 2);
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
    if (v5 == (this + 16))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t formatContexts(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v24 = &unk_26286C844;
  v6 = 1;
  v25 = vdupq_n_s64(1uLL);
  v26 = -1;
  if ((TFileObject::verify(a1, &v24, 1, 1) & 1) == 0)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = 0;
      do
      {
        ++v8;
        v7 = *(v7 + 16);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    std::vector<TPItnTagHandle_fake **>::reserve(a3, v8);
    v9 = a1[3];
    if (v9)
    {
      v6 = 0;
      do
      {
        v23 = (*(*a2 + 16))(a2, *(v9 + 24));
        if (v23 == -1)
        {
          loggableFileObject(a1);
          if (v22 >= 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = __p[0];
          }

          tknPrintf("Error: %sBad tag\n", v10, v11, v12, v13, v14);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }

          v6 = 1;
        }

        else
        {
          std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a3, &v23);
        }

        v9 = *(v9 + 16);
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }

    v15 = *a3;
    v16 = a3[1];
    v17 = 126 - 2 * __clz(v16 - *a3);
    v18 = v16 == *a3;
    __p[0] = sortTags;
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(v15, v16, __p, v19, 1);
  }

  return v6 & 1;
}

void sub_2625A2C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TItnRuleManager::isAmbiguousRule(TItnRuleManager *this, const TItnRule *a2)
{
  v2 = a2;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(this + 8, __p);
  v6 = v5;
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == v6)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(*(this + 4) - 8 + 8 * v4[7]);
    if ((*(v7 + 217) & 1) == 0)
    {
      v8 = *(v2 + 3);
      v9 = *(v2 + 4);
      v10 = v9 - v8;
      v11 = *(v7 + 24);
      if (v9 - v8 == *(v7 + 32) - v11)
      {
        if (v9 == v8)
        {
          goto LABEL_13;
        }

        v12 = 0;
        v13 = v10 >> 3;
        do
        {
          v14 = *(v8 + 8 * v12);
          v15 = *(v11 + 8 * v12++);
        }

        while (v12 < v13 && v14 == v15);
        if (v14 == v15)
        {
LABEL_13:
          v16 = *(v2 + 6);
          v17 = *(v2 + 7);
          v18 = v17 - v16;
          v19 = *(v7 + 48);
          if (v17 - v16 == *(v7 + 56) - v19)
          {
            if (v17 == v16)
            {
              goto LABEL_20;
            }

            v20 = 0;
            v21 = v18 >> 3;
            do
            {
              v22 = *(v16 + 8 * v20);
              v23 = *(v19 + 8 * v20++);
            }

            while (v20 < v21 && v22 == v23);
            if (v22 == v23)
            {
LABEL_20:
              if (*(v2 + 24) == *(v7 + 192) && *(v2 + 200) == *(v7 + 200))
              {
                return 1;
              }
            }
          }
        }
      }
    }

    v24 = v4[1];
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      do
      {
        v25 = v4[2];
        v26 = *v25 == v4;
        v4 = v25;
      }

      while (!v26);
    }

    v4 = v25;
    if (v25 == v6)
    {
      return 0;
    }
  }
}

void sub_2625A2DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnRule *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, v10);
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

uint64_t TItnRuleManager::getRules(uint64_t a1, __int32 *a2, int a3, uint64_t a4)
{
  *(a4 + 16) = 0;
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(a1 + 8, __p);
  v9 = v8;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != v9)
  {
    LOBYTE(v10) = 0;
    while (1)
    {
      v11 = v7[7];
      if (v11 && (v12 = *(a1 + 32), v11 <= (*(a1 + 40) - v12) >> 3))
      {
        v13 = *(v12 + 8 * v11 - 8);
        if (a3)
        {
LABEL_9:
          if (*(v13 + 216))
          {
            goto LABEL_14;
          }

LABEL_13:
          __p[0] = v7[7];
          TBuffer<TPItnRuleHandle_fake **>::insert(a4, *(a4 + 16), __p, 1uLL);
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 0;
        if (a3)
        {
          goto LABEL_9;
        }
      }

      if ((*(v13 + 217) & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (*(v13 + 216))
      {
        v14 = 1;
      }

      else
      {
        v14 = *(v13 + 217);
      }

      v15 = v7[1];
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
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v10 = v14 | (v10 & 1);
      v7 = v16;
      if (v16 == v9)
      {
        return v10;
      }
    }
  }

  return 0;
}

void sub_2625A300C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::addRule(uint64_t a1, int *a2)
{
  *(a1 + 80) = 1;
  if (!TLexicon::findWord(*(a1 + 72), a2))
  {
    TLexicon::addTempWord(*(a1 + 72), a2, 0, 0, 0);
  }

  operator new();
}

void sub_2625A3250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::deleteRule(uint64_t a1, unint64_t a2)
{
  if (a2 && (v4 = *(a1 + 32), a2 <= (*(a1 + 40) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 80) = 1;
  v6 = v5;
  if (v5[23] < 0)
  {
    v6 = *v5;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, v6);
  v7 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(a1 + 8, __p);
  v9 = v8;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != v9)
  {
    while (v7[7] != a2)
    {
      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
      if (v11 == v9)
      {
        v7 = v9;
        break;
      }
    }
  }

  if (v5[216])
  {
    TItnRule::~TItnRule(v5);
    MEMORY[0x26672B1B0]();
    *(*(a1 + 32) + 8 * a2 - 8) = 0;
    std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase((a1 + 8), v7);
  }

  else
  {
    v5[217] = 1;
  }
}

void sub_2625A33CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::resetRules(uint64_t a1, __int32 *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(a1 + 8, __p);
  v5 = v4;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 80) = 1;
  if (v3 != v5)
  {
    do
    {
      v6 = v3[7];
      if (v6 && (v7 = *(a1 + 32), v6 <= (*(a1 + 40) - v7) >> 3))
      {
        v8 = *(v7 + 8 * v6 - 8);
      }

      else
      {
        v8 = 0;
      }

      if (*(v8 + 216) == 1)
      {
        TItnRule::~TItnRule(v8);
        MEMORY[0x26672B1B0]();
        *(*(a1 + 32) + 8 * v3[7] - 8) = 0;
        v9 = v3[1];
        v10 = v3;
        if (v9)
        {
          do
          {
            v11 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v11 = v10[2];
            v12 = *v11 == v10;
            v10 = v11;
          }

          while (!v12);
        }

        std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase((a1 + 8), v3);
      }

      else
      {
        *(v8 + 217) = 0;
        v13 = v3[1];
        if (v13)
        {
          do
          {
            v11 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v11 = v3[2];
            v12 = *v11 == v3;
            v3 = v11;
          }

          while (!v12);
        }
      }

      v3 = v11;
    }

    while (v11 != v5);
  }
}

void sub_2625A3538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::resetAllRules(TItnRuleManager *this)
{
  v2 = (this + 8);
  v3 = *(this + 1);
  *(this + 80) = 1;
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5 && (v6 = *(this + 4), v5 <= (*(this + 5) - v6) >> 3))
      {
        v7 = *(v6 + 8 * v5 - 8);
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 216) == 1)
      {
        TItnRule::~TItnRule(v7);
        MEMORY[0x26672B1B0]();
        *(*(this + 4) + 8 * *(v3 + 7) - 8) = 0;
        v8 = *(v3 + 1);
        v9 = v3;
        if (v8)
        {
          do
          {
            v10 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v10 = *(v9 + 2);
            v11 = *v10 == v9;
            v9 = v10;
          }

          while (!v11);
        }

        std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase(v2, v3);
      }

      else
      {
        *(v7 + 217) = 0;
        v12 = *(v3 + 1);
        if (v12)
        {
          do
          {
            v10 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = (this + 32);
  v16 = (v14 - v13) >> 3;
  v17 = v13 - 8;
  do
  {
    v18 = v16;
    if (!v16)
    {
      break;
    }

    --v16;
  }

  while (!*(v17 + 8 * v18));

  std::vector<TItnRule *>::resize(v15, v18);
}

void std::vector<TItnRule *>::resize(void *a1, unint64_t a2)
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
    std::vector<TItnRule *>::__append(a1, a2 - v2);
  }
}

BOOL TItnRuleManager::save(uint64_t a1, void **a2, char a3)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::string::basic_string[abi:ne200100]<0>(__p, "Tokens");
  v21 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p);
  MEMORY[0x26672AF30](v6 + 56, &unk_26286C9F0);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_12;
    }

    v7 = *v7;
  }

  else if (!*(a1 + 111))
  {
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "HintRewriteNever");
  v21 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p);
  MEMORY[0x26672AF30](v9 + 56, v7);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v10 = (a1 + 112);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    if (!*(a1 + 135))
    {
      goto LABEL_19;
    }

LABEL_17:
    std::string::basic_string[abi:ne200100]<0>(__p, "HintRewriteAlways");
    v21 = __p;
    v11 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p);
    MEMORY[0x26672AF30](v11 + 56, v10);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_19;
  }

  if (*(a1 + 120))
  {
    v10 = *v10;
    goto LABEL_17;
  }

LABEL_19:
  TOutputStream::writeHeader(a2, "ItnRule", pItnRuleVersion, 6, &v19);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v12 != v13)
  {
    v14 = 0;
    v8 = 0;
    while (1)
    {
      v15 = *(v13 + 8 * v14);
      if (v15)
      {
        if (*(v15 + 216) == 1)
        {
          v8 = 1;
          if (a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v8 = (*(v15 + 217) | v8) != 0;
        }

        TItnRule::save(v15, a2, *(a1 + 64));
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
      }

LABEL_27:
      if (++v14 >= ((v12 - v13) >> 3))
      {
        goto LABEL_30;
      }
    }
  }

  v8 = 0;
LABEL_30:
  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(&v19, v20[0]);
  return v8;
}

void TItnRuleManager::importChanges(TItnRuleManager *this, const TItnRuleManager *a2)
{
  *(this + 80) = 1;
  v2 = *(a2 + 1);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v20 = v22;
  v21 = xmmword_26286B6F0;
  v23 = 1;
  v3 = a2 + 16;
  if (v2 == (a2 + 16))
  {
LABEL_27:
    v19 = v20 == v22 || v20 == 0;
    if (!v19)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_32;
  }

  v6 = 0;
  do
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = (v2 + 4);
    v8 = wcslen(v6);
    v9 = *(v2 + 55);
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v8 == v9)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_11:
        if (!wmemcmp(v7, v6, v8))
        {
          goto LABEL_20;
        }
      }

LABEL_12:
      v6 = (v2 + 4);
      if (*(v2 + 55) < 0)
      {
        v6 = *v6;
      }

      if ((*(*a2 + 48))(a2, v6, 0, &v20))
      {
        v10 = *(this + 9);
        v11 = *(*(a2 + 9) + 336);
        ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 144));
        ValidConfig = TParam::getValidConfig((v11 + 144), ActiveConfigHandle);
        TLexicon::mapWord(v10, v6, *(v11 + 4 * ValidConfig + 304), 1, &v24);
        v14 = v24;
        if (v25 != v24)
        {
          v15 = 0;
          do
          {
            TWord::getWordSpec(v14[v15]);
            if (v16 != -1)
            {
              TItnRuleManager::importAdd(this, a2, &v20, v24[v15]);
            }

            ++v15;
            v14 = v24;
          }

          while (v15 < v25 - v24);
        }
      }

      goto LABEL_20;
    }

    if (v8 != v2[5])
    {
      goto LABEL_12;
    }

    if (v8 == -1)
    {
      std::wstring::__throw_out_of_range[abi:ne200100]();
    }

    v7 = *v7;
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_20:
    v17 = v2[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v2[2];
        v19 = *v18 == v2;
        v2 = v18;
      }

      while (!v19);
    }

    v2 = v18;
  }

  while (v18 != v3);
  if (v23)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_2625A3B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x820]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v14 = *(v11 - 104);
  if (v14)
  {
    *(v11 - 96) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void TItnRuleManager::importAdd(void *a1, void *a2, void *a3, __int32 **a4)
{
  v39 = v41;
  v40 = xmmword_26286B6F0;
  v42 = 1;
  if (((*(*a1 + 48))(a1, *a4, 0, &v39) & 1) == 0)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    std::wstring::basic_string[abi:ne200100]<0>(__p, *a4);
    v8 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>((a1 + 1), __p);
    v10 = v9;
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 != v10)
    {
      v11 = a1[4] - 8;
      do
      {
        *(*(v11 + 8 * v8[7]) + 217) = 1;
        v12 = v8[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v8[2];
            v14 = *v13 == v8;
            v8 = v13;
          }

          while (!v14);
        }

        v8 = v13;
      }

      while (v13 != v10);
    }

    if (a3[2])
    {
      v15 = 0;
      do
      {
        v16 = *(*a3 + 8 * v15);
        if (v16 && (v17 = a2[4], v16 <= (a2[5] - v17) >> 3))
        {
          v18 = *(v17 + 8 * v16 - 8);
        }

        else
        {
          v18 = 0;
        }

        if (*(v18 + 32) == *(v18 + 24))
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v18 + 24);
        }

        if (*(v18 + 56) == *(v18 + 48))
        {
          v20 = 0;
        }

        else
        {
          v20 = *(v18 + 48);
        }

        std::vector<TPItnRuleControl>::resize(&v36, 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 160) - *(v18 + 152)) >> 3));
        v22 = *(v18 + 152);
        v21 = *(v18 + 160);
        if (v21 != v22)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
          v24 = v36;
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v25 = *(v18 + 152);
          do
          {
            v26 = *v25;
            v25 = (v25 + 24);
            *v24++ = v26;
            --v23;
          }

          while (v23);
        }

        if (v21 == v22)
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

        v28 = *(v18 + 192);
        if (v28 == -1)
        {
          goto LABEL_37;
        }

        v29 = *(*(a2[7] + 24) + 8 * v28 - 8);
        v30 = (v29 + 16);
        if (*(v29 + 39) < 0)
        {
          v30 = *v30;
        }

        TParamManager::find(a1[7], v30, __p);
        TParamManager::end(a1[7], &v33);
        if (__p[0] != v33)
        {
          v28 = *(__p[0] + 5);
          if (!*(*(*(a1[7] + 24) + 8 * v28 - 8) + 8))
          {
LABEL_37:
            v31 = (v18 + 120);
            if (*(v18 + 143) < 0)
            {
              v31 = *v31;
            }

            LOBYTE(v32) = *(v18 + 200);
            (*(*a1 + 16))(a1, *a4, v31, *(v18 + 144), v19, v19 + *(v18 + 32) - *(v18 + 24), v20, v20 + *(v18 + 56) - *(v18 + 48), v27, v27 - 0x5555555555555550 * ((*(v18 + 160) - *(v18 + 152)) >> 3), v28, v32);
          }
        }

        ++v15;
      }

      while (v15 < a3[2]);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  if (v42 == 1 && v39 != v41)
  {
    if (v39)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_2625A3F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (LOBYTE(STACK[0x880]) == 1 && a25 != a14 && a25 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void std::vector<TPItnRuleControl>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<TPItnRuleControl>::__append(a1, a2 - v2);
  }
}

uint64_t TItnRuleManager::getRuleWordName(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (a2 <= (*(a1 + 40) - v3) >> 3)
    {
      a2 = *(v3 + 8 * a2 - 8);
    }

    else
    {
      a2 = 0;
    }
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  return TBuffer<wchar_t>::assign(a3, a2);
}

uint64_t TItnRuleManager::getRuleRewriteForm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8 * a2 - 8);
  v4 = (v3 + 120);
  if (*(v3 + 143) < 0)
  {
    v4 = *v4;
  }

  return TBuffer<wchar_t>::assign(a3, v4);
}

void TItnRuleManager::getRuleTags(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a2 && (v5 = *(a1 + 32), a2 <= (*(a1 + 40) - v5) >> 3))
  {
    v6 = *(v5 + 8 * a2 - 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = 24;
  if (a3)
  {
    v7 = 48;
  }

  v8 = (v6 + v7);
  v9 = *(v6 + v7 + 8) - *(v6 + v7);
  v10 = v9 >> 3;
  if (*(a4 + 2072) == 1 && *(a4 + 8) < v10)
  {
    *(a4 + 8) = v10 + 1;
    operator new[]();
  }

  v11 = *(a4 + 16);
  if (v11 < v10)
  {
    if (*(a4 + 2072) == 1)
    {
      v12 = (*a4 + 8 * v11);
      v13 = v9 - 8 * v11;
    }

    else
    {
      v14 = *(a4 + 8);
      if (v11 >= v14)
      {
        goto LABEL_18;
      }

      if (v14 >= v10)
      {
        v14 = v9 >> 3;
      }

      v12 = (*a4 + 8 * v11);
      v13 = 8 * (v14 - v11);
    }

    bzero(v12, v13);
  }

LABEL_18:
  *(a4 + 16) = v10;
  v15 = *v8;
  if (v8[1] != *v8)
  {
    v16 = 0;
    do
    {
      *(*a4 + 8 * v16) = *(v15 + 8 * v16);
      ++v16;
      v15 = *v8;
    }

    while (v16 < (v8[1] - *v8) >> 3);
  }
}

double TItnRuleManager::getRuleControls(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 && (v4 = *(a1 + 32), a2 <= (*(a1 + 40) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v5 + 152);
  v6 = *(v5 + 160);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (*(a3 + 4120) == 1 && *(a3 + 8) < v8)
  {
    *(a3 + 8) = v8 + 1;
    operator new[]();
  }

  v9 = *(a3 + 16);
  if (v9 < v8)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    if ((*(a3 + 4120) & 1) == 0)
    {
      v10 = *(a3 + 8);
      if (v9 >= v10)
      {
        goto LABEL_14;
      }

      if (v10 >= v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
      }
    }

    bzero((*a3 + 16 * v9), 16 * (v10 - v9));
  }

LABEL_14:
  *(a3 + 16) = v8;
  if (v6 != v7)
  {
    v12 = *(v5 + 152);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 160) - v12) >> 3);
    v14 = *a3;
    if (v8 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    }

    do
    {
      if (!v13)
      {
        std::vector<TItnControl>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *v12;
      v12 = (v12 + 24);
      result = *&v16;
      *v14++ = v16;
      --v13;
      --v15;
    }

    while (v15);
  }

  return result;
}

BOOL TItnRuleManager::isValidRule(uint64_t a1, unint64_t a2)
{
  if (a2 && (v2 = *(a1 + 32), a2 <= (*(a1 + 40) - v2) >> 3))
  {
    return *(v2 + 8 * a2 - 8) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t TItnRuleManager::getRuleParamSetting(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8 * a2 - 8);
  result = *(v2 + 192);
  v4 = *(v2 + 200);
  return result;
}

void *std::vector<TPItnTagHandle_fake **>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<TPItnRuleControl>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v49 = (*a3)(v11 + 1, v11);
        v50 = (*a3)(v8, v11 + 1);
        if (v49)
        {
          v51 = *v11;
          if (v50)
          {
            goto LABEL_78;
          }

          *v11 = v11[1];
          v11[1] = v51;
          if (!(*a3)(v8, v11 + 1))
          {
            return result;
          }

          v51 = v11[1];
          v11[1] = *v8;
LABEL_79:
          *v8 = v51;
          return result;
        }

        if (!v50)
        {
          return result;
        }

        v57 = v11[1];
        v11[1] = *v8;
        *v8 = v57;
        goto LABEL_104;
      case 4uLL:
        v54 = (*a3)(v11 + 1, v11);
        v55 = (*a3)(v11 + 2, v11 + 1);
        if (v54)
        {
          v56 = *v11;
          if (v55)
          {
            *v11 = v11[2];
            v11[2] = v56;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v56;
            if ((*a3)(v11 + 2, v11 + 1))
            {
              *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
            }
          }
        }

        else if (v55)
        {
          *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
          if ((*a3)(v11 + 1, v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v8, v11 + 2))
        {
          return result;
        }

        v58 = v11[2];
        v11[2] = *v8;
        *v8 = v58;
        if (!(*a3)(v11 + 2, v11 + 1))
        {
          return result;
        }

        *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
LABEL_104:
        if ((*a3)(v11 + 1, v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
        return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(&v11[v14 >> 1], v11);
      v18 = (*a3)(a2 - 1, v15);
      if (v17)
      {
        v19 = *a1;
        if (v18)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        if ((*a3)(a2 - 1, v15))
        {
          v19 = *v15;
          *v15 = *v8;
LABEL_27:
          *v8 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v15;
        *v15 = *v8;
        *v8 = v23;
        if ((*a3)(v15, a1))
        {
          v24 = *a1;
          *a1 = *v15;
          *v15 = v24;
        }
      }

      v27 = v15 - 1;
      v28 = (*a3)(v15 - 1, a1 + 1);
      v29 = (*a3)(a2 - 2, v15 - 1);
      if (v28)
      {
        v30 = a1[1];
        if (v29)
        {
          a1[1] = *v9;
          goto LABEL_39;
        }

        a1[1] = *v27;
        *v27 = v30;
        if ((*a3)(a2 - 2, v15 - 1))
        {
          v30 = *v27;
          *v27 = *v9;
LABEL_39:
          *v9 = v30;
        }
      }

      else if (v29)
      {
        v31 = *v27;
        *v27 = *v9;
        *v9 = v31;
        if ((*a3)(v15 - 1, a1 + 1))
        {
          v32 = a1[1];
          a1[1] = *v27;
          *v27 = v32;
        }
      }

      v33 = (*a3)(v15 + 1, a1 + 2);
      v34 = (*a3)(a2 - 3, v15 + 1);
      if (v33)
      {
        v35 = a1[2];
        if (v34)
        {
          a1[2] = *v10;
          goto LABEL_48;
        }

        a1[2] = v15[1];
        v15[1] = v35;
        if ((*a3)(a2 - 3, v15 + 1))
        {
          v35 = v15[1];
          v15[1] = *v10;
LABEL_48:
          *v10 = v35;
        }
      }

      else if (v34)
      {
        v36 = v15[1];
        v15[1] = *v10;
        *v10 = v36;
        if ((*a3)(v15 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v15[1];
          v15[1] = v37;
        }
      }

      v38 = (*a3)(v15, v15 - 1);
      v39 = (*a3)(v15 + 1, v15);
      if (v38)
      {
        v40 = *v27;
        if (v39)
        {
          v41 = *v15;
          *v27 = v15[1];
          v15[1] = v40;
LABEL_58:
          v45 = *a1;
          *a1 = v41;
          *v15 = v45;
          goto LABEL_59;
        }

        *v27 = *v15;
        *v15 = v40;
        v44 = (*a3)(v15 + 1, v15);
        v41 = *v15;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v15[1];
        *v15 = v43;
        v15[1] = v41;
      }

      else
      {
        v41 = *v15;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v15 = v15[1];
        v15[1] = v41;
        v42 = (*a3)(v15, v15 - 1);
        v41 = *v15;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v27;
        *v27 = v41;
        *v15 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v20 = v16(v11, &v11[v14 >> 1]);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      v22 = *v15;
      if (v21)
      {
        *v15 = *v8;
LABEL_36:
        *v8 = v22;
        goto LABEL_59;
      }

      *v15 = *a1;
      *a1 = v22;
      if ((*a3)(a2 - 1, a1))
      {
        v22 = *a1;
        *a1 = *v8;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v25 = *a1;
      *a1 = *v8;
      *v8 = v25;
      if ((*a3)(a1, v15))
      {
        v26 = *v15;
        *v15 = *a1;
        *a1 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TPItnTagHandle_fake ***,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v46 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TPItnTagHandle_fake ***,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&)>(a1, a2, a3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(a1, v46, a3);
    v11 = v46 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(v46 + 1, a2, a3))
    {
      a4 = -v13;
      a2 = v46;
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v48)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(a1, v46, a3, -v13, a5 & 1);
      v11 = v46 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v11))
  {
    v51 = *v11;
LABEL_78:
    *v11 = *v8;
    goto LABEL_79;
  }

  return result;
}