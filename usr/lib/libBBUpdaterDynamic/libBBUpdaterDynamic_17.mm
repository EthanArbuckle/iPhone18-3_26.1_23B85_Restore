void sub_1E531FA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN17BBUEUR2Programmer15collectCoreDumpENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  *&v10.st_dev = v4;
  v5 = (a2 + 21);
  v6 = *(a2 + 18);
  memset(&v9, 170, sizeof(v9));
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  ctu::path_join_impl();
  v7 = *(a2 + 20);
  if (v7 == 4)
  {
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  <DIR>", v5);
  }

  else if (v7 == 10 || v7 == 8)
  {
    memset(&v10, 0, sizeof(v10));
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v9;
    }

    else
    {
      v8 = v9.__r_.__value_.__r.__words[0];
    }

    stat(v8, &v10);
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  0x%-10llx", v5, v10.st_size);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1E531FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN17BBUEUR2Programmer20collectCoreDump64BitENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  *&v10.st_dev = v4;
  v5 = (a2 + 21);
  v6 = *(a2 + 18);
  memset(&v9, 170, sizeof(v9));
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  ctu::path_join_impl();
  v7 = *(a2 + 20);
  if (v7 == 4)
  {
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  <DIR>", v5);
  }

  else if (v7 == 10 || v7 == 8)
  {
    memset(&v10, 0, sizeof(v10));
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v9;
    }

    else
    {
      v8 = v9.__r_.__value_.__r.__words[0];
    }

    stat(v8, &v10);
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  0x%-10llx", v5, v10.st_size);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1E531FEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN17BBUEUR2Programmer16captureRecord_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK28ETLSAHDebugDataFieldRecord_t_block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[1];
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    v11 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "%s: ... %0.1f%c\n", a6, a7, a8, a3 + 32);
  }
}

void ___ZN17BBUEUR2Programmer21captureRecord64Bit_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK33ETLSAHDebugDataFieldRecord64Bit_t_block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[1];
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    v11 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "%s: ... %0.1f%c\n", a6, a7, a8, a3 + 44);
  }
}

uint64_t BBUEUR2Programmer::sendImageInternal_nl(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(*a2 + 32))(a2);
  v6 = *(a1 + 8);
  *(&v103.__r_.__value_.__s + 23) = 15;
  strcpy(&v103, "Sending Image '");
  v7 = (*(*a2 + 16))(a2);
  v8 = 0x7FFFFFFFFFFFFFF7;
  v9 = strlen(v7);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    v101 = v10;
    v102 = v12 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v102) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_9:
    memmove(p_dst, v7, v10);
  }

  *(p_dst + v10) = 0;
  if (v102 >= 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = __dst;
  }

  if (v102 >= 0)
  {
    v14 = HIBYTE(v102);
  }

  else
  {
    v14 = v101;
  }

  v15 = std::string::append(&v103, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v105 = v15->__r_.__value_.__r.__words[2];
  *v104 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = SHIBYTE(v105);
  if ((SHIBYTE(v105) & 0x8000000000000000) == 0)
  {
    v18 = v104;
    if (SHIBYTE(v105) == 22)
    {
      v19 = v5;
      v20 = 22;
      v21 = 23;
LABEL_22:
      v22 = 2 * v20;
      if (v21 > 2 * v20)
      {
        v22 = v21;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v8 = v23;
      }

      else
      {
        v8 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

LABEL_37:
    *(v17 + v18) = 39;
    v28 = v17 + 1;
    if (SHIBYTE(v105) < 0)
    {
      v104[1] = v28;
    }

    else
    {
      HIBYTE(v105) = v28 & 0x7F;
    }

    v27 = &v28[v18];
    goto LABEL_41;
  }

  v17 = v104[1];
  v21 = v105 & 0x7FFFFFFFFFFFFFFFLL;
  v20 = (v105 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 != v104[1])
  {
    v18 = v104[0];
    goto LABEL_37;
  }

  if (v21 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v104[0];
  v19 = v5;
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_22;
  }

  v24 = 0;
LABEL_31:
  v25 = operator new(v8);
  v26 = v25;
  if (v20)
  {
    memmove(v25, v18, v20);
  }

  v26[v20] = 39;
  if (!v24)
  {
    operator delete(v18);
  }

  v104[1] = v21;
  v105 = v8 | 0x8000000000000000;
  v104[0] = v26;
  v27 = &v26[v21];
  v5 = v19;
LABEL_41:
  *v27 = 0;
  *__p = *v104;
  v107 = v105;
  v104[1] = 0;
  v105 = 0;
  v104[0] = 0;
  (*(*v6 + 32))(v6, __p, 0, v5);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v105) & 0x80000000) == 0)
    {
LABEL_43:
      if ((SHIBYTE(v102) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_59:
      operator delete(__dst);
      if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_60;
    }
  }

  else if ((SHIBYTE(v105) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(v104[0]);
  if (SHIBYTE(v102) < 0)
  {
    goto LABEL_59;
  }

LABEL_44:
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_60:
  operator delete(v103.__r_.__value_.__l.__data_);
LABEL_45:
  v29 = operator new[](0x100000uLL);
  LODWORD(__p[0]) = -1431655766;
  LODWORD(v104[0]) = -1431655766;
  LODWORD(v103.__r_.__value_.__l.__data_) = -1431655766;
  Current = CFAbsoluteTimeGetCurrent();
  v31 = *(a1 + 16);
  if ((ETLSAHCommandReceive() & 1) == 0)
  {
    goto LABEL_51;
  }

  Data = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v32, v33, v34, __p[0]);
  }

LABEL_50:
  if (Data)
  {
    goto LABEL_114;
  }

LABEL_51:
  v36 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_66;
  }

  v40 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_65:
      if (v40)
      {
        goto LABEL_114;
      }

      goto LABEL_66;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_65;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v37, v38, v39, __p[0]);
  if (v40)
  {
    goto LABEL_114;
  }

LABEL_66:
  v41 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_74;
  }

  v45 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_73:
      if (v45)
      {
        goto LABEL_114;
      }

      goto LABEL_74;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_73;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v42, v43, v44, __p[0]);
  if (v45)
  {
    goto LABEL_114;
  }

LABEL_74:
  v46 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_82;
  }

  v50 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_81:
      if (v50)
      {
        goto LABEL_114;
      }

      goto LABEL_82;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_81;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v47, v48, v49, __p[0]);
  if (v50)
  {
    goto LABEL_114;
  }

LABEL_82:
  v51 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_90;
  }

  v55 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_89:
      if (v55)
      {
        goto LABEL_114;
      }

      goto LABEL_90;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_89;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v52, v53, v54, __p[0]);
  if (v55)
  {
    goto LABEL_114;
  }

LABEL_90:
  v56 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_98;
  }

  v60 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_97:
      if (v60)
      {
        goto LABEL_114;
      }

      goto LABEL_98;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_97;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v57, v58, v59, __p[0]);
  if (v60)
  {
    goto LABEL_114;
  }

LABEL_98:
  v61 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_106;
  }

  v65 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_105:
      if (v65)
      {
        goto LABEL_114;
      }

LABEL_106:
      v66 = *(a1 + 16);
      if (!ETLSAHCommandReceive())
      {
        goto LABEL_111;
      }

      v70 = ETLSAHCommandParseReadData();
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_113;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v67, v68, v69, __p[0]);
        if (v70)
        {
          goto LABEL_114;
        }

        goto LABEL_111;
      }

LABEL_113:
      if (v70)
      {
        goto LABEL_114;
      }

LABEL_111:
      v71 = 0;
      v72 = 3;
      goto LABEL_150;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_105;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", v62, v63, v64, __p[0]);
  if ((v65 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_114:
  v73 = v103.__r_.__value_.__l.__data_;
  v74 = LODWORD(v103.__r_.__value_.__l.__data_) + LODWORD(v104[0]);
  if (v5 < LODWORD(v103.__r_.__value_.__l.__data_) + LODWORD(v104[0]))
  {
    goto LABEL_164;
  }

  v75 = v5;
  v98 = v5;
  while (2)
  {
    if (v5 == v74)
    {
      (*(*a2 + 16))(a2);
      v73 = v103.__r_.__value_.__l.__data_;
    }

    v76 = 0;
    do
    {
      while (1)
      {
        v77 = v73 >= 0x100000 ? 0x100000 : v73;
        (*(*a2 + 24))(a2, v29, v77, LODWORD(v104[0]));
        v78 = *(a1 + 16);
        v82 = ETLSAHSendReadData();
        if (!v82)
        {
          break;
        }

        if (a3)
        {
          LODWORD(v83) = v104[0];
          BBUFeedback::updateProgressBarItem(*(a1 + 8), v83 / v75);
        }

        v73 = LODWORD(v103.__r_.__value_.__l.__data_) - v77;
        LODWORD(v103.__r_.__value_.__l.__data_) = v73;
        LODWORD(v104[0]) += v77;
        v76 = v82 ^ 1;
        if (!v73)
        {
          goto LABEL_135;
        }
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_130;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", &str_8_3, "Failed to send read data at offset 0x%x, chunk %u\n", v79, v80, v81, v104[0]);
      }

LABEL_130:
      if (v76)
      {
        goto LABEL_146;
      }

      sched_yield();
      usleep(0x64u);
      v73 = v103.__r_.__value_.__l.__data_;
      v76 = 1;
    }

    while (LODWORD(v103.__r_.__value_.__l.__data_));
LABEL_135:
    (*(**(a1 + 8) + 40))(*(a1 + 8), LODWORD(v104[0]));
    v84 = *(a1 + 16);
    if (ETLSAHCommandReceive())
    {
      LODWORD(v5) = v98;
      if (v98 != v74)
      {
        if (ETLSAHCommandParseReadData())
        {
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
            {
LABEL_140:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                _BBULog(5, 0, "BBUProgrammer", &str_8_3, "request image ID %u, data offset 0x%x, data length %u\n", v85, v86, v87, __p[0]);
              }
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
            {
              goto LABEL_140;
            }
          }

          v73 = v103.__r_.__value_.__l.__data_;
          v74 = LODWORD(v103.__r_.__value_.__l.__data_) + LODWORD(v104[0]);
          if (v98 < LODWORD(v103.__r_.__value_.__l.__data_) + LODWORD(v104[0]))
          {
LABEL_164:
            exception = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(exception, 72, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x3FCu, "Assertion failure(( imagePayloadDataLength >=(dataOffset + dataLength)) && Error: Chunk size is not sufficient to write payload data!)", v94, v95, v96, v97);
          }

          continue;
        }

LABEL_159:
        v71 = 0;
        v72 = 12;
        goto LABEL_150;
      }

      LODWORD(__dst) = -1431655766;
      if (!ETLSAHCommandParseEndOfImageTransfer())
      {
        goto LABEL_159;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
LABEL_156:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            _BBULog(5, 0, "BBUProgrammer", &str_8_3, "end of image %u\n", v90, v91, v92, __p[0]);
          }
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
          goto LABEL_156;
        }
      }

      v72 = 0;
      v71 = 1;
      goto LABEL_150;
    }

    break;
  }

LABEL_146:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v71 = 0;
    v72 = 12;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_150;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v71 = 0;
    v72 = 12;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_150;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Timeout on receiving read request\n", v79, v80, v81, v97);
    v71 = 0;
  }

LABEL_150:
  (*(**(a1 + 8) + 48))(*(a1 + 8), v72);
  if (v71)
  {
    v88 = CFAbsoluteTimeGetCurrent();
    BBUFeedback::handleComment(*(a1 + 8), "Took %f seconds", v88 - Current);
  }

  operator delete[](v29);
  return v72;
}

void sub_1E5320EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(a27);
    if (a20 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a26 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a21);
      goto LABEL_8;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_3;
  }

  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t BBUEUR2Programmer::processItems(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x493u, "Assertion failure(fConnected && Not connected to programmer.)", v25, v26, v27, v28);
  }

  pthread_mutex_lock((a1 + 88));
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Sending %zu Images", *(a1 + 56) - 1);
  v15 = *(a1 + 48);
  if (v15 == a1 + 40)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  if ((a4 & 1) == 0)
  {
    while (1)
    {
      v18 = *(v15 + 16);
      if (!v18)
      {
        break;
      }

      v17 = (*(*a1 + 168))(a1, v18, a2, a3, 0, a5, a7, a8);
      if (v17)
      {
        goto LABEL_10;
      }

      v15 = *(v15 + 8);
      if (v15 == a1 + 40)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v20 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v20, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x4A1u, "Assertion failure(item && Unable to create programmer item.)", v21, v22, v23, v29);
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = (*(*a1 + 168))(a1, v16, a2, a3, 1, a5, a7, a8);
LABEL_10:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v17);
  pthread_mutex_unlock((a1 + 88));
  return v17;
}

void BBUEUR2Programmer::setDebugParameters(uint64_t a1, uint64_t a2)
{
  memset(v22, 170, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  ctu::tokenize();
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    v3 = v22[0];
    v4 = v22[1];
    if (v22[1] == v22[0])
    {
      goto LABEL_39;
    }

    goto LABEL_8;
  }

  v3 = v22[0];
  v4 = v22[1];
  if (v22[1] != v22[0])
  {
LABEL_8:
    v5 = 0;
    v6 = 0;
    do
    {
      v8 = &v3[3 * v5];
      memset(__p, 170, sizeof(__p));
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *v8, v8[1]);
      }

      else
      {
        v9 = *v8;
        v19.__r_.__value_.__r.__words[2] = v8[2];
        *&v19.__r_.__value_.__l.__data_ = v9;
      }

      ctu::tokenize();
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        v10 = __p[0];
        if ((__p[1] - __p[0]) != 24)
        {
LABEL_17:
          if (v10)
          {
            goto LABEL_34;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v10 = __p[0];
        if ((__p[1] - __p[0]) != 24)
        {
          goto LABEL_17;
        }
      }

      memset(&v18, 170, sizeof(v18));
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *v10, v10[1]);
      }

      else
      {
        v11 = *v10;
        v18.__r_.__value_.__r.__words[2] = v10[2];
        *&v18.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = v18.__r_.__value_.__r.__words[0];
        if (v18.__r_.__value_.__l.__size_ != 4)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_29;
        }

        v13 = &v18;
      }

      if (LODWORD(v13->__r_.__value_.__l.__data_) == 1953068401)
      {
        *(a1 + 4292) = 1;
        if ((v12 & 0x80000000) == 0)
        {
LABEL_29:
          v10 = __p[0];
          if (__p[0])
          {
            goto LABEL_34;
          }

          goto LABEL_11;
        }
      }

      else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v13 = v18.__r_.__value_.__r.__words[0];
LABEL_33:
      operator delete(v13);
      v10 = __p[0];
      if (__p[0])
      {
LABEL_34:
        v14 = __p[1];
        v7 = v10;
        if (__p[1] != v10)
        {
          do
          {
            v15 = *(v14 - 1);
            v14 -= 3;
            if (v15 < 0)
            {
              operator delete(*v14);
            }
          }

          while (v14 != v10);
          v7 = __p[0];
        }

        __p[1] = v10;
        operator delete(v7);
      }

LABEL_11:
      v3 = v22[0];
      v4 = v22[1];
      v5 = ++v6;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v22[1] - v22[0]) >> 3) > v6);
  }

LABEL_39:
  if (v3)
  {
    v16 = v3;
    if (v4 != v3)
    {
      do
      {
        v17 = *(v4 - 1);
        v4 -= 3;
        if (v17 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v16 = v22[0];
    }

    v22[1] = v3;
    operator delete(v16);
  }
}

void sub_1E5321498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR2Programmer::handleHashesQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v17[12] = v7;
  v16 = v7;
  *v17 = v7;
  v15 = v7;
  if (ETLSAHCommandParseMaverickSendHashesQuery())
  {
    result = 0;
    if (a3 && a4)
    {
      v9 = operator new(0x68uLL);
      *v9 = &unk_1F5F01FD0;
      v10 = off_1F5F01FF0(v9);
      memcpy(v9 + 8, &v15, v10);
      v11 = (*(*v9 + 32))(v9);
      memcpy(v9 + 40, &v16 + 4, v11);
      v12 = (*(*v9 + 32))(v9);
      memcpy(v9 + 72, &v17[8], v12);
      (*(*v9 + 24))(v9, *(a1 + 8));
      if ((*(*a4 + 16))(a4, *(a1 + 8), v9))
      {
        v13 = 0;
      }

      else
      {
        v13 = 33;
      }

      (*(*v9 + 8))(v9);
      result = v13;
    }
  }

  else
  {
    result = 3;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BBUEUR2Programmer::handleMaverickHashData_nl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7)
{
  DigestType = capabilities::updater::getDigestType(a1);
  v14 = DigestType;
  if (DigestType == 1)
  {
    v15 = 32;
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (DigestType != 2)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Capabilities returned invalid hash_length");
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x540u, "Assertion failure(false && Unsupported hash digest type.)", v50, v51, v52, v61);
  }

  v15 = 48;
  if (a6)
  {
LABEL_6:
    BBUFeedback::handleComment(*(a1 + 8), "Resuming Maverick Protocol");
  }

LABEL_7:
  v16 = a3;
  if (a2)
  {
    v16 = (*(*a2 + 24))(a2);
  }

  v17 = operator new(v15);
  v18 = &v17[v15];
  __p = v17;
  v68 = &v17[v15];
  bzero(v17, v15);
  v67 = v18;
  if (v16 <= a3)
  {
    v22 = operator new[](v16);
    if (a2)
    {
      *v69 = 0;
      v19 = (*(*a2 + 16))(a2, v22, v16, v69, 0);
      if (v14 == 1)
      {
        CC_SHA256(v22, v16, __p);
      }

      else
      {
        CC_SHA384(v22, v16, __p);
      }

      if (v19)
      {
        BBUFeedback::handleComment(*(a1 + 8), "failed copying root manifest to buffer\n");
        if (*v69 == v16)
        {
          v23 = v22;
          goto LABEL_71;
        }

LABEL_79:
        v53 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v53, 76, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x570u, "Assertion failure(( copied == rootManifestSize) && Copied data size does not match root manifest size!)", v54, v55, v56, v61);
      }

      if (*v69 != v16)
      {
        goto LABEL_79;
      }
    }

    else
    {
      BBUFeedback::handleComment(*(a1 + 8), "No root manifest present\n");
      bzero(v22, v16);
    }

    v24 = v16 + 1024;
    if (v16 + 1024 != (v16 + 1024) << 31 >> 31)
    {
      v57 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v57, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x582u, "Assertion failure(success)", v58, v59, v60, v61);
    }

    v23 = operator new[](v24);
    if ((ETLSAHCommandCreateMaverickRootManifestResponse() & 1) == 0)
    {
      BBUFeedback::handleComment(*(a1 + 8), "failed createing maverick root manifest response\n");
      operator delete[](v22);
      v19 = 11;
      goto LABEL_71;
    }

    operator delete[](v22);
    v25 = *(a1 + 16);
    v26 = ETLSAHCommandSend();
    v27 = *(a1 + 8);
    if (v26)
    {
      ctu::hex();
      if (v69[23] >= 0)
      {
        v28 = v69;
      }

      else
      {
        v28 = *v69;
      }

      BBUFeedback::handleComment(v27, "Sent Manifest with length %u, %s", v16, v28);
      if ((v69[23] & 0x80000000) != 0)
      {
        operator delete(*v69);
      }

      if (v24 < v16 || (v29 = *(a1 + 16), (ETLSAHCommandReceive() & 1) == 0))
      {
        BBUFeedback::handleComment(*(a1 + 8), "failed reading hash query results\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v37 = off_1ED944120;
        if (!off_1ED944120)
        {
          v38 = operator new(0x38uLL);
          v39 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
          v40 = dispatch_queue_create("BBUError", v39);
          *v38 = 0;
          v38[1] = 0;
          v38[2] = v40;
          if (v40)
          {
            v41 = v40;
            dispatch_retain(v40);
            v38[3] = 0;
            dispatch_release(v41);
          }

          else
          {
            v38[3] = 0;
          }

          v38[4] = 0;
          v38[5] = 0;
          v38[6] = 0;
          std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(v69, v38);
          v42 = *v69;
          *v69 = 0;
          *&v69[8] = 0;
          v43 = *(&off_1ED944120 + 1);
          off_1ED944120 = v42;
          if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
          }

          v44 = *&v69[8];
          if (*&v69[8] && !atomic_fetch_add((*&v69[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
          }

          v37 = off_1ED944120;
        }

        v35 = *(&off_1ED944120 + 1);
        v64 = v37;
        v65 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v62 = operator new(0x28uLL);
        v63 = xmmword_1E5392800;
        strcpy(v62, "Failed reading hash query results");
        *v69 = MEMORY[0x1E69E9820];
        *&v69[8] = 0x40000000;
        *&v69[16] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
        v70 = &__block_descriptor_tmp_8;
        v71 = v37;
        v72 = &v62;
        v73 = 47;
        v74 = v69;
        block = MEMORY[0x1E69E9820];
        v76 = 0x40000000;
        v77 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
        v78 = &__block_descriptor_tmp_13_0;
        v79 = v37;
        v80 = &v74;
        v45 = *(v37 + 16);
        if (*(v37 + 24))
        {
          dispatch_async_and_wait(v45, &block);
          if ((SHIBYTE(v63) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }
        }

        else
        {
          dispatch_sync(v45, &block);
          if ((SHIBYTE(v63) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }
        }

        v36 = v62;
LABEL_66:
        operator delete(v36);
LABEL_67:
        if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }

        v19 = 47;
LABEL_71:
        operator delete[](v23);
        v20 = __p;
        if (!__p)
        {
          return v19;
        }

        goto LABEL_11;
      }

      if ((*(*a1 + 152))(a1, v23, a2, a4))
      {
        BBUFeedback::handleComment(*(a1 + 8), "failed handling hash query\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v30 = off_1ED944120;
        if (!off_1ED944120)
        {
          v31 = operator new(0x38uLL);
          BBUError::BBUError(v31);
          std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(v69, v31);
          v32 = *v69;
          *v69 = 0;
          *&v69[8] = 0;
          v33 = *(&off_1ED944120 + 1);
          off_1ED944120 = v32;
          if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }

          v34 = *&v69[8];
          if (*&v69[8] && !atomic_fetch_add((*&v69[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
          }

          v30 = off_1ED944120;
        }

        v35 = *(&off_1ED944120 + 1);
        block = v30;
        v76 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        *v69 = operator new(0x20uLL);
        *&v69[8] = xmmword_1E5393720;
        strcpy(*v69, "Failed handling hash query");
        BBUError::addError(v30, v69, 47);
        if ((v69[23] & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v36 = *v69;
        goto LABEL_66;
      }

      *a7 = 1;
      MaverickHashResponse = ETLSAHCommandCreateMaverickHashResponse();
      v47 = *(a1 + 8);
      if ((MaverickHashResponse & 1) == 0)
      {
        BBUFeedback::handleComment(v47, "failed creating maverick hash response\n");
        v19 = 11;
        goto LABEL_71;
      }

      BBUFeedback::handleComment(v47, "Sending Hash Response: value %u  success %u", *a7, 1);
      v48 = *(a1 + 16);
      if (ETLSAHCommandSend())
      {
        v19 = 0;
        goto LABEL_71;
      }

      BBUFeedback::handleComment(*(a1 + 8), "failed sending maverick hash response\n");
    }

    else
    {
      BBUFeedback::handleComment(v27, "failed sending maverick root manifest response\n");
    }

    v19 = 3;
    goto LABEL_71;
  }

  BBUFeedback::handleComment(*(a1 + 8), "root manifest larger than protocol specification, size = %u bytes", v16);
  v19 = 12;
  v20 = __p;
  if (__p)
  {
LABEL_11:
    v67 = v20;
    operator delete(v20);
  }

  return v19;
}

void sub_1E5321F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR2Programmer::handleMaverickEnd_nl(BBUEUR2Programmer *this)
{
  v2 = operator new[](0x400uLL);
  v3 = *(this + 2);
  if (ETLSAHCommandReceive())
  {
    if (ETLSAHCommandMaverickParseEnd())
    {
      v4 = 0;
    }

    else
    {
      v4 = 11;
      BBUFeedback::handleComment(*(this + 1), "failed parsing maverick end\n");
    }
  }

  else
  {
    v4 = 3;
    BBUFeedback::handleComment(*(this + 1), "failed receiving maverick end\n");
  }

  operator delete[](v2);
  return v4;
}

void BBUEUR2Programmer::postCrashReason(uint64_t a1, const void **a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x613u, "Assertion failure(fFeedback)", v67, v68, v69, v70);
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  memset(&__p, 0, 24);
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  folder = ctu::fs::read_folder();
  v10 = folder;
  v11 = *&__p.st_dev;
  if (folder)
  {
    v12 = -1431655765 * ((__p.st_ino - *&__p.st_dev) >> 3);
    if (v12)
    {
      v13 = 0;
      v14 = 24 * v12;
      while (1)
      {
        v16 = (*&__p.st_dev + v13);
        BYTE7(v78) = 8;
        strcpy(&__s2, "mav_core");
        v17 = *(*&__p.st_dev + v13 + 23);
        if (v17 < 0)
        {
          v19 = *v16;
          if (v16[1] >= 8)
          {
            v18 = 8;
          }

          else
          {
            v18 = v16[1];
          }
        }

        else
        {
          if (v17 >= 8)
          {
            v18 = 8;
          }

          else
          {
            v18 = v17;
          }

          v19 = (*&__p.st_dev + v13);
        }

        v20 = memcmp(v19, &__s2, v18);
        if (v18 != 8 || v20 != 0)
        {
          goto LABEL_12;
        }

        if ((v17 & 0x80000000) != 0)
        {
          v23 = *(*&__p.st_dev + v13 + 8);
          v24 = v23 > 4;
          v25 = v23 - 4;
          if (!v24)
          {
            v30 = v75;
            if (v75 < v76)
            {
              goto LABEL_44;
            }

            goto LABEL_10;
          }

          BYTE7(v78) = 4;
          strcpy(&__s2, ".bin");
          v26 = *(*&__p.st_dev + v13 + 8);
          v27 = v26 >= v25;
          v28 = v26 - v25;
          if (!v27)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (v28 >= 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = v28;
          }

          v22 = memcmp(*v16 + v25, &__s2, v29);
          if (v29 != 4)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v17 <= 4)
          {
            v30 = v75;
            if (v75 < v76)
            {
              goto LABEL_42;
            }

            goto LABEL_10;
          }

          BYTE7(v78) = 4;
          strcpy(&__s2, ".bin");
          v22 = memcmp(v16 + v17 - 4, &__s2, 4uLL);
        }

        if (v22)
        {
          goto LABEL_12;
        }

        v30 = v75;
        if (v75 < v76)
        {
          if ((v17 & 0x80000000) != 0)
          {
LABEL_44:
            std::string::__init_copy_ctor_external(v30, *(*&__p.st_dev + v13), *(*&__p.st_dev + v13 + 8));
          }

          else
          {
LABEL_42:
            v31 = *v16;
            v30->__r_.__value_.__r.__words[2] = v16[2];
            *&v30->__r_.__value_.__l.__data_ = v31;
          }

          v15 = &v30[1];
          goto LABEL_11;
        }

LABEL_10:
        v15 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v74, v16);
LABEL_11:
        v75 = v15;
LABEL_12:
        v13 += 24;
        if (v14 == v13)
        {
          v11 = *&__p.st_dev;
          break;
        }
      }
    }
  }

  if (v11)
  {
    st_ino = __p.st_ino;
    v33 = v11;
    if (__p.st_ino != v11)
    {
      do
      {
        v34 = *(st_ino - 1);
        st_ino -= 3;
        if (v34 < 0)
        {
          operator delete(*st_ino);
        }
      }

      while (st_ino != v11);
      v33 = *&__p.st_dev;
    }

    __p.st_ino = v11;
    operator delete(v33);
  }

  if (v10)
  {
    v35 = v74;
    if (v74 != v75)
    {
      while (1)
      {
        memset(v73, 170, sizeof(v73));
        v36 = *(a2 + 23);
        if (v36 >= 0)
        {
          v37 = *(a2 + 23);
        }

        else
        {
          v37 = a2[1];
        }

        v38 = v37 + 1;
        if (v37 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v38 < 0x17)
        {
          *&v78 = 0;
          __s2 = 0uLL;
          p_s2 = &__s2;
          BYTE7(v78) = v37 + 1;
          if (!v37)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if ((v38 | 7) == 0x17)
          {
            v39 = 25;
          }

          else
          {
            v39 = (v38 | 7) + 1;
          }

          p_s2 = operator new(v39);
          *(&__s2 + 1) = v37 + 1;
          *&v78 = v39 | 0x8000000000000000;
          *&__s2 = p_s2;
        }

        v41 = *a2;
        if (v36 >= 0)
        {
          v42 = a2;
        }

        else
        {
          v42 = *a2;
        }

        memmove(p_s2, v42, v37);
LABEL_71:
        *(p_s2 + v37) = 47;
        v43 = SHIBYTE(v35->__r_.__value_.__r.__words[2]);
        if (v43 >= 0)
        {
          v44 = v35;
        }

        else
        {
          v44 = v35->__r_.__value_.__r.__words[0];
        }

        if (v43 >= 0)
        {
          size = HIBYTE(v35->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v35->__r_.__value_.__l.__size_;
        }

        v46 = std::string::append(&__s2, v44, size);
        v47 = *&v46->__r_.__value_.__l.__data_;
        v73[2] = v46->__r_.__value_.__r.__words[2];
        *v73 = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v78) < 0)
        {
          operator delete(__s2);
        }

        v48.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v48.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *__p.st_qspare = v48;
        *&__p.st_size = v48;
        *&__p.st_blksize = v48;
        __p.st_ctimespec = v48;
        __p.st_birthtimespec = v48;
        __p.st_atimespec = v48;
        __p.st_mtimespec = v48;
        *&__p.st_dev = v48;
        *&__p.st_uid = v48;
        if (SHIBYTE(v73[2]) >= 0)
        {
          v49 = v73;
        }

        else
        {
          v49 = v73[0];
        }

        if (stat(v49, &__p))
        {
          v61 = v73;
          if (SHIBYTE(v73[2]) < 0)
          {
            v61 = v73[0];
          }

          BBUFeedback::handleComment(*(a1 + 8), "Failed on getting file status from (%s) \n", v61);
          if (SHIBYTE(v73[2]) < 0)
          {
            operator delete(v73[0]);
          }

          goto LABEL_126;
        }

        if (SHIBYTE(v73[2]) >= 0)
        {
          v50 = v73;
        }

        else
        {
          v50 = v73[0];
        }

        v51 = open(v50, 0);
        if (v51 < 0)
        {
          if (SHIBYTE(v73[2]) >= 0)
          {
            v55 = v73;
          }

          else
          {
            v55 = v73[0];
          }

          BBUFeedback::handleComment(*(a1 + 8), "Failed on opening a file (%s).\n", v55);
        }

        else
        {
          st_size = __p.st_size;
          st_size_low = LODWORD(__p.st_size);
          if (LODWORD(__p.st_size))
          {
            v54 = operator new(LODWORD(__p.st_size));
            bzero(v54, st_size_low);
          }

          else
          {
            v54 = 0;
          }

          if (read(v51, v54, st_size) < 0)
          {
            BBUFeedback::handleComment(*(a1 + 8), "Failed on reading the file.\n");
          }

          else if (ETLEFSDumpInterpret())
          {
            v82 = 0xAAAAAAAAAAAAAAAALL;
            *&v56 = 0xAAAAAAAAAAAAAAAALL;
            *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v81[14] = v56;
            v81[15] = v56;
            v81[12] = v56;
            v81[13] = v56;
            v81[10] = v56;
            v81[11] = v56;
            v81[8] = v56;
            v81[9] = v56;
            v81[6] = v56;
            v81[7] = v56;
            v81[4] = v56;
            v81[5] = v56;
            v81[2] = v56;
            v81[3] = v56;
            v81[0] = v56;
            v81[1] = v56;
            v79 = v56;
            v80 = v56;
            __s2 = v56;
            v78 = v56;
            v57 = ETLEFSDUmpCopyCrashLocationDetails();
            v58 = *(a1 + 8);
            if (v57)
            {
              if (SHIBYTE(v73[2]) >= 0)
              {
                v59 = v73;
              }

              else
              {
                v59 = v73[0];
              }

              BBUFeedback::handleComment(v58, "File: %s", v59);
              BBUFeedback::handleComment(*(a1 + 8), "\tCrash at %s:%d, Reason '%s', TID %d\n", &__s2 + 8, DWORD1(__s2), v81 + 8, __s2);
            }

            else
            {
              BBUFeedback::handleComment(v58, "Failed on parsing the information.\n");
            }

            if ((ETLEFSDumpInfoFree() & 1) == 0)
            {
              BBUFeedback::handleComment(*(a1 + 8), "Failed on freeing dumpInfo.\n");
            }
          }

          else
          {
            BBUFeedback::handleComment(*(a1 + 8), "Failed on interpreting the file.\n");
          }

          if (close(v51))
          {
            if (SHIBYTE(v73[2]) >= 0)
            {
              v60 = v73;
            }

            else
            {
              v60 = v73[0];
            }

            BBUFeedback::handleComment(*(a1 + 8), "Failed on closing a file (%s).\n", v60);
          }

          if (v54)
          {
            operator delete(v54);
          }
        }

        if (SHIBYTE(v73[2]) < 0)
        {
          operator delete(v73[0]);
        }

        if ((v51 & 0x80000000) == 0 && ++v35 != v75)
        {
          continue;
        }

        goto LABEL_126;
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_126;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_126;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed scanning coredump folder\n", v7, v8, v9, v70);
    }

LABEL_126:
    v35 = v74;
  }

  if (v35)
  {
    p_data = &v75->__r_.__value_.__l.__data_;
    v63 = v35;
    if (v75 != v35)
    {
      do
      {
        v64 = *(p_data - 1);
        p_data -= 3;
        if (v64 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v35);
      v63 = v74;
    }

    v75 = v35;
    operator delete(v63);
  }

  v65 = *MEMORY[0x1E69E9840];
}

void sub_1E532283C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a41);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_30()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t readStickyNvramItems(uint64_t *a1)
{
  v41[2] = *MEMORY[0x1E69E9840];
  __p = 0;
  v38 = 0uLL;
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v39 = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v35[0] = v2;
  v35[1] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v7 = v2[1];
  if (!v7)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v8 = *(v7 + 8);
      if (v8 < 3)
      {
        break;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    if (v8 == 2)
    {
      break;
    }

    v7 = v7[1];
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (*(v7 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v7[5], v7[6]);
  }

  else
  {
    *&v40.st_dev = *(v7 + 5);
    *&v40.st_uid = v7[7];
  }

  st_gid_high = SHIBYTE(v40.st_gid);
  if ((SHIBYTE(v40.st_gid) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v40.st_gid) < 0x17)
    {
      v10 = SHIBYTE(v40.st_gid) + 25;
      v11 = &v40;
      v12 = 22;
LABEL_24:
      v14 = 2 * v12;
      if (v10 > 2 * v12)
      {
        v14 = v10;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v13 = v15;
      }

      else
      {
        v13 = 23;
      }

      v16 = v12 == 22;
      goto LABEL_33;
    }

    v20 = &v40;
    qmemcpy(&v40 + SHIBYTE(v40.st_gid), "/sticky_nvram_items.plist", 25);
    v21 = st_gid_high + 25;
    HIBYTE(v40.st_gid) = (st_gid_high + 25) & 0x7F;
LABEL_40:
    v19 = v20 + v21;
    goto LABEL_41;
  }

  st_gid_high = v40.st_ino;
  v12 = (*&v40.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - v40.st_ino >= 0x19)
  {
    v20 = *&v40.st_dev;
    qmemcpy((*&v40.st_dev + v40.st_ino), "/sticky_nvram_items.plist", 25);
    v21 = st_gid_high + 25;
    v40.st_ino = st_gid_high + 25;
    goto LABEL_40;
  }

  v13 = 0x7FFFFFFFFFFFFFF7;
  v10 = v40.st_ino + 25;
  if (0x7FFFFFFFFFFFFFF7 - (*&v40.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v40.st_ino + 25 - v12)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = *&v40.st_dev;
  if (v12 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_24;
  }

  v16 = 0;
LABEL_33:
  v17 = operator new(v13);
  v18 = v17;
  if (st_gid_high)
  {
    memmove(v17, v11, st_gid_high);
  }

  qmemcpy(&v18[st_gid_high], "/sticky_nvram_items.plist", 25);
  if (!v16)
  {
    operator delete(v11);
  }

  v40.st_ino = v10;
  *&v40.st_uid = v13 | 0x8000000000000000;
  *&v40.st_dev = v18;
  v19 = &v18[v10];
LABEL_41:
  *v19 = 0;
  v41[0] = v40.st_ino;
  v22 = *&v40.st_dev;
  *(v41 + 7) = *(&v40.st_ino + 7);
  v23 = HIBYTE(v40.st_gid);
  memset(&v40, 0, 24);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
    __p = v22;
    *&v38 = v41[0];
    *(&v38 + 7) = *(v41 + 7);
    HIBYTE(v38) = v23;
    if (SHIBYTE(v40.st_gid) < 0)
    {
      operator delete(*&v40.st_dev);
    }
  }

  else
  {
    __p = v22;
    *&v38 = v41[0];
    *(&v38 + 7) = *(v41 + 7);
    HIBYTE(v38) = v23;
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v24.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v24.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v24;
  *v40.st_qspare = v24;
  v40.st_birthtimespec = v24;
  *&v40.st_size = v24;
  v40.st_mtimespec = v24;
  v40.st_ctimespec = v24;
  *&v40.st_uid = v24;
  v40.st_atimespec = v24;
  *&v40.st_dev = v24;
  if (v38 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v26 = stat(p_p, &v40);
  if (v26)
  {
    if (*(a1 + 23) < 0)
    {
      a1[1] = 0;
      a1 = *a1;
    }

    else
    {
      *(a1 + 23) = 0;
    }

    *a1 = 0;
    ACFULogging::getLogInstance(v26);
    ACFULogging::handleMessage();
    v28 = cf;
    if (!cf)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v38 >= 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  v28 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v27, 0x8000100u);
  v29 = cf;
  cf = v28;
  if (v29)
  {
    CFRelease(v29);
  }

  memset(&v40, 170, 24);
  MEMORY[0x1E69265F0](&v40, v28, *MEMORY[0x1E695E8B8]);
  ctu::cf::MakeCFString::MakeCFString(v35, "NvramItems");
  v30 = (**&v40.st_dev)(&v40, v35[0]);
  if (v30)
  {
    ctu::cf::assign();
    CFRelease(v30);
  }

  v31 = MEMORY[0x1E6926590](v35);
  ACFULogging::getLogInstance(v31);
  if (*(a1 + 23) < 0)
  {
    v32 = *a1;
  }

  ACFULogging::handleMessage();
  MEMORY[0x1E6926600](&v40);
  if (v28)
  {
LABEL_67:
    CFRelease(v28);
  }

LABEL_68:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  v33 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E5322F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createNVData(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __src = a4;
  LODWORD(v652) = a3;
  v703 = *MEMORY[0x1E69E9840];
  v685 = 0;
  v686 = 0;
  v655 = &v685;
  v683 = 0;
  v684 = &v685;
  v681 = 0;
  v682 = 0;
  v678 = 0;
  v679 = 0;
  v680 = 0;
  v675 = 0;
  v676 = 0;
  v677 = 0;
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!*(a1 + 8))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 23))
  {
LABEL_5:
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      v6 = *(a2 + 8);
    }

    if (!v6)
    {
      ACFULogging::getLogInstance(a1);
      v643 = "BasebandNVRAM";
      v644 = "createNVData";
      ACFULogging::handleMessage();
      v8 = 1;
      goto LABEL_1157;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v674, *a1, *(a1 + 8));
  }

  else
  {
    v674 = *a1;
  }

  NVRAMKeyValPairs = sGetNVRAMKeyValPairs(&v674.__r_.__value_.__l.__data_, &v681);
  v8 = NVRAMKeyValPairs;
  if (SHIBYTE(v674.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v674.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    ACFULogging::getLogInstance(NVRAMKeyValPairs);
    v644 = "createNVData";
    v645 = v8;
    v643 = "BasebandNVRAM";
    ACFULogging::handleMessage();
    goto LABEL_1157;
  }

  if (v682 == v681)
  {
    goto LABEL_34;
  }

  ACFULogging::getLogInstance(NVRAMKeyValPairs);
  v643 = "BasebandNVRAM";
  v644 = "createNVData";
  ACFULogging::handleMessage();
  __p = 0;
  v672 = 0;
  v673 = 0;
  v9 = v681;
  v10 = v682;
  *__dst = &__p;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v11 = v682 - v681;
  if (v682 == v681)
  {
    goto LABEL_34;
  }

  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  __p = operator new(v682 - v681);
  v672 = __p;
  v673 = __p + v11;
  v12 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&__p, v9, v10, __p);
  v13 = v12;
  v672 = v12;
  v14 = __p;
  if (__p != v12)
  {
    while (1)
    {
      ACFULogging::getLogInstance(v12);
      v15 = v14;
      if (*(v14 + 23) < 0)
      {
        v15 = *v14;
        v16 = v14 + 3;
        if (*(v14 + 47) < 0)
        {
LABEL_23:
          v16 = *v16;
        }
      }

      else
      {
        v16 = v14 + 3;
        if (*(v14 + 47) < 0)
        {
          goto LABEL_23;
        }
      }

      v645 = v15;
      words = v16;
      v643 = "BasebandNVRAM";
      v644 = "sPrintKeyValPairs";
      v12 = ACFULogging::handleMessage();
      v14 += 6;
      if (v14 == v13)
      {
        v14 = __p;
        break;
      }
    }
  }

  if (!v14)
  {
    goto LABEL_34;
  }

  v17 = v672;
  v18 = v14;
  if (v672 != v14)
  {
    while (1)
    {
      if (*(v17 - 1) < 0)
      {
        operator delete(*(v17 - 3));
        v19 = v17 - 6;
        if ((*(v17 - 25) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v19);
        v17 = v19;
        if (v19 == v14)
        {
LABEL_32:
          v18 = __p;
          break;
        }
      }

      else
      {
        v19 = v17 - 6;
        if (*(v17 - 25) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v17 = v19;
        if (v19 == v14)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v672 = v14;
  operator delete(v18);
LABEL_34:
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v670, *a2, *(a2 + 8));
  }

  else
  {
    v670 = *a2;
  }

  v20 = sGetNVRAMKeyValPairs(&v670.__r_.__value_.__l.__data_, &v678);
  v8 = v20;
  if (SHIBYTE(v670.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v670.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    ACFULogging::getLogInstance(v20);
    v645 = v8;
    v643 = "BasebandNVRAM";
    v644 = "createNVData";
    ACFULogging::handleMessage();
    goto LABEL_1157;
  }

  if (v679 != v678)
  {
    ACFULogging::getLogInstance(v20);
    v643 = "BasebandNVRAM";
    v644 = "createNVData";
    v20 = ACFULogging::handleMessage();
    v667 = 0;
    v668 = 0;
    v669 = 0;
    v21 = v678;
    v22 = v679;
    *__dst = &v667;
    *&__dst[8] = 0xAAAAAAAAAAAAAA00;
    v23 = v679 - v678;
    if (v679 != v678)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v23 >> 4) > 0x555555555555555)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v667 = operator new(v679 - v678);
      v668 = v667;
      v669 = v667 + v23;
      v20 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v667, v21, v22, v667);
      v24 = v20;
      v668 = v20;
      v25 = v667;
      if (v667 != v20)
      {
        while (1)
        {
          ACFULogging::getLogInstance(v20);
          v26 = v25;
          if (*(v25 + 23) < 0)
          {
            v26 = *v25;
            v27 = v25 + 3;
            if (*(v25 + 47) < 0)
            {
LABEL_49:
              v27 = *v27;
            }
          }

          else
          {
            v27 = v25 + 3;
            if (*(v25 + 47) < 0)
            {
              goto LABEL_49;
            }
          }

          v645 = v26;
          words = v27;
          v643 = "BasebandNVRAM";
          v644 = "sPrintKeyValPairs";
          v20 = ACFULogging::handleMessage();
          v25 += 6;
          if (v25 == v24)
          {
            v25 = v667;
            break;
          }
        }
      }

      if (v25)
      {
        v28 = v668;
        v29 = v25;
        if (v668 == v25)
        {
LABEL_59:
          v668 = v25;
          operator delete(v29);
          goto LABEL_60;
        }

        while (1)
        {
          if (*(v28 - 1) < 0)
          {
            operator delete(*(v28 - 3));
            v30 = v28 - 6;
            if ((*(v28 - 25) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

LABEL_57:
            operator delete(*v30);
            v28 = v30;
            if (v30 == v25)
            {
LABEL_58:
              v29 = v667;
              goto LABEL_59;
            }
          }

          else
          {
            v30 = v28 - 6;
            if (*(v28 - 25) < 0)
            {
              goto LABEL_57;
            }

LABEL_54:
            v28 = v30;
            if (v30 == v25)
            {
              goto LABEL_58;
            }
          }
        }
      }
    }
  }

LABEL_60:
  v664 = 0;
  v665 = 0;
  v666 = 0;
  v31 = v681;
  v32 = v682;
  *__dst = &v664;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v33 = v682 - v681;
  if (v682 == v681)
  {
    v34 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v33 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v664 = operator new(v682 - v681);
    v665 = v664;
    v666 = v664 + v33;
    v20 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v664, v31, v32, v664);
    v34 = v20;
    v665 = v20;
  }

  v662 = 0;
  v663 = 0;
  v661 = 0;
  v35 = v678;
  v36 = v679;
  *__dst = &v661;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v37 = v679 - v678;
  if (v679 == v678)
  {
    v39 = 0;
    v38 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v37 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v661 = operator new(v679 - v678);
    v662 = v661;
    v663 = v661 + v37;
    v20 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v661, v35, v36, v661);
    v38 = v20;
    v662 = v20;
    v34 = v665;
    v39 = v661;
  }

  memset(__dst, 0, sizeof(__dst));
  if (v34 != v664)
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v664) >> 4);
    if (v38 != v39)
    {
      std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v675, v664, v34, v40);
      v42 = v661;
      v43 = v662;
      if (v661 != v662)
      {
        do
        {
          memset(&__s2, 170, sizeof(__s2));
          if (*(v42 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__s2, *v42, v42[1]);
          }

          else
          {
            v44 = *v42;
            __s2.__r_.__value_.__r.__words[2] = v42[2];
            *&__s2.__r_.__value_.__l.__data_ = v44;
          }

          v45 = v675;
          v46 = v676;
          if (v675 != v676)
          {
            if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __s2.__r_.__value_.__l.__size_;
            }

            if ((*(&__s2.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              v48 = __s2.__r_.__value_.__r.__words[0];
              while (1)
              {
                v52 = *(v45 + 23);
                v53 = v52;
                if ((v52 & 0x80u) != 0)
                {
                  v52 = *(v45 + 1);
                }

                if (v52 == size)
                {
                  v54 = v53 >= 0 ? v45 : *v45;
                  v41 = memcmp(v54, v48, size);
                  if (!v41)
                  {
                    break;
                  }
                }

                v45 += 3;
                if (v45 == v46)
                {
                  goto LABEL_100;
                }
              }
            }

            else
            {
              while (1)
              {
                v49 = *(v45 + 23);
                v50 = v49;
                if ((v49 & 0x80u) != 0)
                {
                  v49 = *(v45 + 1);
                }

                if (v49 == size)
                {
                  v51 = v50 >= 0 ? v45 : *v45;
                  v41 = memcmp(v51, &__s2, size);
                  if (!v41)
                  {
                    break;
                  }
                }

                v45 += 3;
                if (v45 == v46)
                {
                  goto LABEL_100;
                }
              }
            }
          }

          if (v45 == v46)
          {
LABEL_100:
            if (__dst != v42)
            {
              v55 = *(v42 + 23);
              if ((__dst[23] & 0x80000000) != 0)
              {
                if (v55 >= 0)
                {
                  v57 = v42;
                }

                else
                {
                  v57 = *v42;
                }

                if (v55 >= 0)
                {
                  v58 = *(v42 + 23);
                }

                else
                {
                  v58 = v42[1];
                }

                std::string::__assign_no_alias<false>(__dst, v57, v58);
              }

              else if ((*(v42 + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(__dst, *v42, v42[1]);
              }

              else
              {
                v56 = *v42;
                *&__dst[16] = v42[2];
                *__dst = v56;
              }

              v59 = *(v42 + 47);
              if ((__dst[47] & 0x80000000) != 0)
              {
                if (v59 >= 0)
                {
                  v61 = v42 + 3;
                }

                else
                {
                  v61 = v42[3];
                }

                if (v59 >= 0)
                {
                  v62 = *(v42 + 47);
                }

                else
                {
                  v62 = v42[4];
                }

                std::string::__assign_no_alias<false>(&__dst[24], v61, v62);
              }

              else if ((*(v42 + 47) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(&__dst[24], v42[3], v42[4]);
              }

              else
              {
                v60 = *(v42 + 3);
                *&__dst[40] = v42[5];
                *&__dst[24] = v60;
              }
            }

            std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v675, __dst);
          }

          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s2.__r_.__value_.__l.__data_);
          }

          v42 += 6;
        }

        while (v42 != v43);
      }

LABEL_130:
      v8 = 0;
      v63 = 1;
      if ((__dst[47] & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    v39 = v664;
    v38 = v34;
LABEL_129:
    std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v675, v39, v38, v40);
    goto LABEL_130;
  }

  if (v38 != v39)
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 4);
    goto LABEL_129;
  }

  ACFULogging::getLogInstance(v20);
  v643 = "BasebandNVRAM";
  v644 = "sMergeNVRAMKeyValPairLists";
  v41 = ACFULogging::handleMessage();
  v63 = 0;
  v8 = 1;
  if ((__dst[47] & 0x80000000) == 0)
  {
LABEL_131:
    if ((__dst[23] & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_148;
  }

LABEL_147:
  operator delete(*&__dst[24]);
  if ((__dst[23] & 0x80000000) == 0)
  {
LABEL_132:
    v64 = v661;
    if (v661)
    {
      goto LABEL_133;
    }

LABEL_149:
    v66 = v664;
    if (!v664)
    {
      goto LABEL_159;
    }

LABEL_150:
    v68 = v665;
    v69 = v66;
    if (v665 == v66)
    {
LABEL_158:
      v665 = v66;
      operator delete(v69);
      goto LABEL_159;
    }

    while (1)
    {
      if (*(v68 - 1) < 0)
      {
        operator delete(*(v68 - 3));
        v70 = v68 - 6;
        if ((*(v68 - 25) & 0x80000000) == 0)
        {
          goto LABEL_153;
        }

LABEL_156:
        operator delete(*v70);
        v68 = v70;
        if (v70 == v66)
        {
LABEL_157:
          v69 = v664;
          goto LABEL_158;
        }
      }

      else
      {
        v70 = v68 - 6;
        if (*(v68 - 25) < 0)
        {
          goto LABEL_156;
        }

LABEL_153:
        v68 = v70;
        if (v70 == v66)
        {
          goto LABEL_157;
        }
      }
    }
  }

LABEL_148:
  operator delete(*__dst);
  v64 = v661;
  if (!v661)
  {
    goto LABEL_149;
  }

LABEL_133:
  v65 = v662;
  if (v662 == v64)
  {
    v662 = v64;
    operator delete(v64);
    v66 = v664;
    if (!v664)
    {
      goto LABEL_159;
    }

    goto LABEL_150;
  }

  do
  {
    while (*(v65 - 1) < 0)
    {
      operator delete(*(v65 - 3));
      v67 = v65 - 6;
      if (*(v65 - 25) < 0)
      {
        goto LABEL_140;
      }

LABEL_137:
      v65 = v67;
      if (v67 == v64)
      {
        goto LABEL_141;
      }
    }

    v67 = v65 - 6;
    if ((*(v65 - 25) & 0x80000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_140:
    operator delete(*v67);
    v65 = v67;
  }

  while (v67 != v64);
LABEL_141:
  v662 = v64;
  operator delete(v661);
  v66 = v664;
  if (v664)
  {
    goto LABEL_150;
  }

LABEL_159:
  if ((v63 & 1) == 0)
  {
    ACFULogging::getLogInstance(v41);
    v645 = v8;
    v643 = "BasebandNVRAM";
    v644 = "createNVData";
    ACFULogging::handleMessage();
    goto LABEL_1157;
  }

  ACFULogging::getLogInstance(v41);
  v643 = "BasebandNVRAM";
  v644 = "createNVData";
  v71 = ACFULogging::handleMessage();
  v72 = v675;
  v73 = v676;
  if (v675 != v676)
  {
    v74 = 0;
    alloc[0] = *MEMORY[0x1E695E480];
    do
    {
      ACFULogging::getLogInstance(v71);
      v75 = v72;
      if (SHIBYTE(v72->__r_.__value_.__r.__words[2]) < 0)
      {
        v75 = v72->__r_.__value_.__r.__words[0];
        v76 = v72 + 1;
        v77 = v72 + 1;
        if ((SHIBYTE(v72[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v76 = v72 + 1;
        v77 = v72 + 1;
        if ((SHIBYTE(v72[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }
      }

      v77 = v76->__r_.__value_.__r.__words[0];
LABEL_165:
      v645 = v75;
      words = v77->__r_.__value_.__r.__words;
      v643 = "BasebandNVRAM";
      v644 = "createNVData";
      ACFULogging::handleMessage();
      if (SHIBYTE(v72->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v660, v72->__r_.__value_.__l.__data_, v72->__r_.__value_.__l.__size_);
      }

      else
      {
        v78 = *&v72->__r_.__value_.__l.__data_;
        v660.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v660.__r_.__value_.__l.__data_ = v78;
      }

      if (SHIBYTE(v72[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v659, v72[1].__r_.__value_.__l.__data_, v72[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v659 = *v76;
      }

      if ((v659.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v659;
      }

      else
      {
        v79 = v659.__r_.__value_.__r.__words[0];
      }

      v80 = CFStringCreateWithCString(alloc[0], v79, 0x600u);
      v82 = v80;
      if (!v80)
      {
        v8 = 1007;
        if ((SHIBYTE(v659.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_186;
        }

LABEL_185:
        operator delete(v659.__r_.__value_.__l.__data_);
        goto LABEL_186;
      }

      if (SHIBYTE(v660.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v660.__r_.__value_.__l.__size_ != 7)
        {
          if (v660.__r_.__value_.__l.__size_ != 8)
          {
            goto LABEL_237;
          }

          v83 = v660.__r_.__value_.__r.__words[0];
          if (*v660.__r_.__value_.__l.__data_ == 0x79616C64746F6F62 || *v660.__r_.__value_.__l.__data_ == 0x7374726175676264 || *v660.__r_.__value_.__l.__data_ == 0x6B636F6C72727463)
          {
            goto LABEL_244;
          }

          goto LABEL_229;
        }

        if (*v660.__r_.__value_.__l.__data_ != 1752462689 || *(v660.__r_.__value_.__r.__words[0] + 3) != 1734501480)
        {
LABEL_237:
          v8 = 0;
          v74 = v80;
          if (SHIBYTE(v659.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_185;
          }

          goto LABEL_186;
        }
      }

      else
      {
        if (HIBYTE(v660.__r_.__value_.__r.__words[2]) != 7)
        {
          if (HIBYTE(v660.__r_.__value_.__r.__words[2]) != 8)
          {
            goto LABEL_237;
          }

          if (v660.__r_.__value_.__r.__words[0] == 0x6B636F6C72727463 || v660.__r_.__value_.__r.__words[0] == 0x7374726175676264 || v660.__r_.__value_.__r.__words[0] == 0x79616C64746F6F62)
          {
            goto LABEL_244;
          }

          v83 = &v660;
LABEL_229:
          if (v83->__r_.__value_.__r.__words[0] != 0x746F6F626F747561)
          {
            goto LABEL_237;
          }

          goto LABEL_244;
        }

        v101 = LODWORD(v660.__r_.__value_.__l.__data_) == 1752462689 && *(v660.__r_.__value_.__r.__words + 3) == 1734501480;
        if (!v101)
        {
          goto LABEL_237;
        }
      }

LABEL_244:
      *__dst = 0;
      Num32FromString = support::cf::createNum32FromString(v80, __dst, v81);
      v104 = *__dst;
      if (Num32FromString)
      {
        v8 = 0;
      }

      else
      {
        if (*__dst)
        {
          CFRelease(*__dst);
          *__dst = 0;
        }

        v8 = 1;
        v104 = v74;
      }

      CFRelease(v82);
      v74 = v104;
      if (SHIBYTE(v659.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_185;
      }

LABEL_186:
      if (SHIBYTE(v660.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v660.__r_.__value_.__l.__data_);
        if (v8)
        {
LABEL_1005:
          ACFULogging::getLogInstance(v80);
          v645 = v8;
          v643 = "BasebandNVRAM";
          v644 = "createNVData";
          ACFULogging::handleMessage();
          goto LABEL_1157;
        }
      }

      else if (v8)
      {
        goto LABEL_1005;
      }

      if (SHIBYTE(v72->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(__dst, v72->__r_.__value_.__l.__data_, v72->__r_.__value_.__l.__size_);
      }

      else
      {
        v84 = *&v72->__r_.__value_.__l.__data_;
        *&__dst[16] = *(&v72->__r_.__value_.__l + 2);
        *__dst = v84;
      }

      *&__dst[24] = v74;
      v85 = v685;
      v86 = v655;
      v87 = v655;
      if (v685)
      {
        v88 = __dst[23];
        if (__dst[23] >= 0)
        {
          v89 = __dst;
        }

        else
        {
          v89 = *__dst;
        }

        if (__dst[23] >= 0)
        {
          v90 = __dst[23];
        }

        else
        {
          v90 = *&__dst[8];
        }

        while (1)
        {
          v86 = v85;
          v93 = v85[4];
          v91 = v85 + 4;
          v92 = v93;
          v94 = *(v91 + 23);
          if (v94 >= 0)
          {
            v95 = v91;
          }

          else
          {
            v95 = v92;
          }

          if (v94 >= 0)
          {
            v96 = *(v91 + 23);
          }

          else
          {
            v96 = v91[1];
          }

          if (v96 >= v90)
          {
            v97 = v90;
          }

          else
          {
            v97 = v96;
          }

          v98 = memcmp(v89, v95, v97);
          if (v98)
          {
            if (v98 < 0)
            {
              goto LABEL_200;
            }

LABEL_214:
            v71 = memcmp(v95, v89, v97);
            if (v71)
            {
              if ((v71 & 0x80000000) == 0)
              {
                goto LABEL_231;
              }
            }

            else if (v96 >= v90)
            {
LABEL_231:
              if (v88 < 0)
              {
                goto LABEL_232;
              }

              goto LABEL_162;
            }

            v85 = v86[1];
            if (!v85)
            {
              v87 = v86 + 1;
              break;
            }
          }

          else
          {
            if (v90 >= v96)
            {
              goto LABEL_214;
            }

LABEL_200:
            v85 = *v86;
            v87 = v86;
            if (!*v86)
            {
              break;
            }
          }
        }
      }

      v99 = operator new(0x40uLL);
      v99[2] = *__dst;
      v100 = *&__dst[16];
      memset(__dst, 0, 24);
      *(v99 + 6) = v100;
      *(v99 + 7) = v74;
      *v99 = 0;
      *(v99 + 1) = 0;
      *(v99 + 2) = v86;
      *v87 = v99;
      if (*v684)
      {
        v684 = *v684;
      }

      v71 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v685, v99);
      ++v686;
      if ((__dst[23] & 0x80) != 0)
      {
LABEL_232:
        operator delete(*__dst);
      }

LABEL_162:
      v72 += 2;
    }

    while (v72 != v73);
  }

  ACFURTKitNVRMGenerator::create();
  v108 = *__dst;
  if (*__dst)
  {
    v109 = operator new(0x20uLL);
    *v109 = &unk_1F5F04428;
    v109[1] = 0;
    v109[2] = 0;
    v109[3] = v108;
    *__dst = 0;
    v110 = __src;
    v111 = *(__src + 1);
    *__src = v108;
    v110[1] = v109;
    if (!v111)
    {
      goto LABEL_257;
    }
  }

  else
  {
    *__dst = 0;
    v112 = __src;
    v111 = *(__src + 1);
    *__src = 0;
    v112[1] = 0;
    if (!v111)
    {
      goto LABEL_257;
    }
  }

  if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v111->__on_zero_shared)(v111);
    std::__shared_weak_count::__release_weak(v111);
  }

LABEL_257:
  v113 = *__dst;
  *__dst = 0;
  if (v113)
  {
    v114 = MEMORY[0x1E69263C0](v113, v105, v106, v107);
    operator delete(v114);
  }

  if (!*__src)
  {
    ACFULogging::getLogInstance(v113);
    v643 = "BasebandNVRAM";
    v644 = "createNVData";
    ACFULogging::handleMessage();
    v8 = 1007;
    goto LABEL_1157;
  }

  if (!v652)
  {
    goto LABEL_1156;
  }

  v656 = 0;
  v657 = 0;
  v658 = 0;
  v115 = v675;
  v116 = v676;
  *__dst = &v656;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v117 = v676 - v675;
  if (v676 == v675)
  {
    v118 = 0;
    v119 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v117 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v656 = operator new(v676 - v675);
    v657 = v656;
    v658 = v656 + v117;
    v113 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v656, v115, v116, v656);
    v118 = v113;
    v657 = v113;
    v119 = v656;
  }

  v696 = 0uLL;
  v695 = 0;
  memset(&v694, 0, sizeof(v694));
  v692 = 0;
  cf = 0;
  v690 = 0;
  v691 = 0;
  v688 = 0;
  v689 = 0;
  v687 = 0;
  *__dst = &v687;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v120 = v118 - v119;
  if (v118 == v119)
  {
    v701 = 0uLL;
    v702 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v120 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v687 = operator new(v118 - v119);
    v688 = v687;
    v689 = v687 + v120;
    v113 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v687, v119, v118, v687);
    v688 = v113;
    v121 = v687;
    v701 = 0uLL;
    v702 = 0;
    if (v687 != v113)
    {
      alloc[0] = v113;
      while (1)
      {
        ACFULogging::getLogInstance(v113);
        v122 = v121;
        if (*(v121 + 23) < 0)
        {
          v122 = *v121;
          v123 = (v121 + 3);
          if ((*(v121 + 47) & 0x80000000) == 0)
          {
LABEL_273:
            v124 = v123;
            goto LABEL_276;
          }
        }

        else
        {
          v123 = (v121 + 3);
          if ((*(v121 + 47) & 0x80000000) == 0)
          {
            goto LABEL_273;
          }
        }

        v124 = *v123;
LABEL_276:
        v645 = v122;
        words = v124;
        v643 = "BasebandNVRAM";
        v644 = "sGetNVRAMListFromKeyValPairs";
        ACFULogging::handleMessage();
        if (&v701 != v121)
        {
          v125 = *(v121 + 23);
          if (SHIBYTE(v702) < 0)
          {
            if (v125 >= 0)
            {
              v127 = v121;
            }

            else
            {
              v127 = *v121;
            }

            if (v125 >= 0)
            {
              v128 = *(v121 + 23);
            }

            else
            {
              v128 = v121[1];
            }

            std::string::__assign_no_alias<false>(&v701, v127, v128);
          }

          else if ((*(v121 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(&v701, *v121, v121[1]);
          }

          else
          {
            v126 = *v121;
            v702 = v121[2];
            v701 = v126;
          }
        }

        v129 = mNVRAMItems;
        if (mNVRAMItems != &qword_1ED949BF8)
        {
          do
          {
            v137 = *(v121 + 23);
            if (v137 >= 0)
            {
              v138 = *(v121 + 23);
            }

            else
            {
              v138 = v121[1];
            }

            v139 = *(v129 + 79);
            v140 = v139;
            if ((v139 & 0x80u) != 0)
            {
              v139 = *(v129 + 64);
            }

            if (v138 == v139)
            {
              v141 = (v129 + 32);
              v142 = v137 >= 0 ? v121 : *v121;
              v143 = v140 >= 0 ? (v129 + 56) : *(v129 + 56);
              v144 = memcmp(v142, v143, v138);
              if (&v701 != v141 && !v144)
              {
                v145 = *(v129 + 55);
                if (SHIBYTE(v702) < 0)
                {
                  if (v145 >= 0)
                  {
                    v146 = (v129 + 32);
                  }

                  else
                  {
                    v146 = *(v129 + 32);
                  }

                  if (v145 >= 0)
                  {
                    v147 = *(v129 + 55);
                  }

                  else
                  {
                    v147 = *(v129 + 40);
                  }

                  std::string::__assign_no_alias<false>(&v701, v146, v147);
                }

                else if ((*(v129 + 55) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(&v701, *(v129 + 32), *(v129 + 40));
                }

                else
                {
                  v701 = *v141;
                  v702 = *(v129 + 48);
                }
              }
            }

            v148 = *(v129 + 8);
            if (v148)
            {
              do
              {
                v149 = v148;
                v148 = *v148;
              }

              while (v148);
            }

            else
            {
              do
              {
                v149 = *(v129 + 16);
                v101 = *v149 == v129;
                v129 = v149;
              }

              while (!v101);
            }

            v129 = v149;
          }

          while (v149 != &qword_1ED949BF8);
        }

        v130 = SHIBYTE(v694.__r_.__value_.__r.__words[2]);
        if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v131 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v131 = v694.__r_.__value_.__l.__size_;
        }

        v132 = SHIBYTE(v702);
        if (v702 >= 0)
        {
          v133 = HIBYTE(v702);
        }

        else
        {
          v133 = *(&v701 + 1);
        }

        v134 = v133 + v131;
        if (v133 + v131 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v134 <= 0x16)
        {
          memset(&v697, 0, sizeof(v697));
          v136 = &v697;
          *(&v697.__r_.__value_.__s + 23) = v133 + v131;
          if (!v131)
          {
            goto LABEL_339;
          }

LABEL_335:
          if (v130 >= 0)
          {
            v150 = &v694;
          }

          else
          {
            v150 = v694.__r_.__value_.__r.__words[0];
          }

          memmove(v136, v150, v131);
          goto LABEL_339;
        }

        if ((v134 | 7) == 0x17)
        {
          v135 = 25;
        }

        else
        {
          v135 = (v134 | 7) + 1;
        }

        v136 = operator new(v135);
        v697.__r_.__value_.__l.__size_ = v133 + v131;
        v697.__r_.__value_.__r.__words[2] = v135 | 0x8000000000000000;
        v697.__r_.__value_.__r.__words[0] = v136;
        if (v131)
        {
          goto LABEL_335;
        }

LABEL_339:
        v151 = v136 + v131;
        if (v133)
        {
          if (v132 >= 0)
          {
            v152 = &v701;
          }

          else
          {
            v152 = v701;
          }

          memmove(v151, v152, v133);
        }

        v151[v133] = 0;
        v153 = SHIBYTE(v697.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v697.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          if ((SHIBYTE(v697.__r_.__value_.__r.__words[2]) - 21) >= 2)
          {
            v164 = &v697;
            *(&v697.__r_.__value_.__l.__data_ + SHIBYTE(v697.__r_.__value_.__r.__words[2])) = 10045;
            v165 = v153 + 2;
            if (SHIBYTE(v697.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_367;
            }

            goto LABEL_365;
          }

          v154 = SHIBYTE(v697.__r_.__value_.__r.__words[2]) + 2;
          v155 = &v697;
          v156 = 22;
LABEL_350:
          v157 = 2 * v156;
          if (v154 > 2 * v156)
          {
            v157 = v154;
          }

          if ((v157 | 7) == 0x17)
          {
            v158 = 25;
          }

          else
          {
            v158 = (v157 | 7) + 1;
          }

          if (v157 >= 0x17)
          {
            v159 = v158;
          }

          else
          {
            v159 = 23;
          }

          v160 = v156 == 22;
          goto LABEL_359;
        }

        v153 = v697.__r_.__value_.__l.__size_;
        v156 = (v697.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v156 - v697.__r_.__value_.__l.__size_ >= 2)
        {
          v164 = v697.__r_.__value_.__r.__words[0];
          *(v697.__r_.__value_.__r.__words[0] + v697.__r_.__value_.__l.__size_) = 10045;
          v165 = v153 + 2;
          if (SHIBYTE(v697.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_367:
            v697.__r_.__value_.__l.__size_ = v165;
            goto LABEL_368;
          }

LABEL_365:
          *(&v697.__r_.__value_.__s + 23) = v165 & 0x7F;
LABEL_368:
          v163 = v164 + v165;
          goto LABEL_369;
        }

        v154 = v697.__r_.__value_.__l.__size_ + 2;
        if (0x7FFFFFFFFFFFFFF7 - (v697.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v697.__r_.__value_.__l.__size_ + 2 - v156)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v155 = v697.__r_.__value_.__r.__words[0];
        if (v156 < 0x3FFFFFFFFFFFFFF3)
        {
          goto LABEL_350;
        }

        v160 = 0;
        v159 = 0x7FFFFFFFFFFFFFF7;
LABEL_359:
        v161 = operator new(v159);
        v162 = v161;
        if (v153)
        {
          memmove(v161, v155, v153);
        }

        *(v162 + v153) = 10045;
        if (!v160)
        {
          operator delete(v155);
        }

        v697.__r_.__value_.__l.__size_ = v154;
        v697.__r_.__value_.__r.__words[2] = v159 | 0x8000000000000000;
        v697.__r_.__value_.__r.__words[0] = v162;
        v163 = (v162 + v154);
LABEL_369:
        *v163 = 0;
        __s2 = v697;
        memset(&v697, 0, sizeof(v697));
        v166 = *(v121 + 47);
        if (v166 >= 0)
        {
          v167 = v123;
        }

        else
        {
          v167 = v121[3];
        }

        if (v166 >= 0)
        {
          v168 = *(v121 + 47);
        }

        else
        {
          v168 = v121[4];
        }

        v113 = std::string::append(&__s2, v167, v168);
        v169 = *v113;
        *&__dst[16] = *(v113 + 2);
        *__dst = v169;
        *(v113 + 1) = 0;
        *(v113 + 2) = 0;
        *v113 = 0;
        v170 = __dst[23];
        if ((__dst[23] & 0x8000000000000000) != 0)
        {
          v170 = *&__dst[8];
          v173 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v173 - *&__dst[8] < 2)
          {
            v171 = *&__dst[8] + 2;
            if (0x7FFFFFFFFFFFFFF7 - (*&__dst[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__dst[8] + 2 - v173)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v172 = *__dst;
            if (v173 >= 0x3FFFFFFFFFFFFFF3)
            {
              v177 = 0;
              v176 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_381:
              v174 = 2 * v173;
              if (v171 > 2 * v173)
              {
                v174 = v171;
              }

              if ((v174 | 7) == 0x17)
              {
                v175 = 25;
              }

              else
              {
                v175 = (v174 | 7) + 1;
              }

              if (v174 >= 0x17)
              {
                v176 = v175;
              }

              else
              {
                v176 = 23;
              }

              v177 = v173 == 22;
            }

            v113 = operator new(v176);
            v178 = v113;
            if (v170)
            {
              v113 = memmove(v113, v172, v170);
            }

            *(v178 + v170) = 11303;
            if (!v177)
            {
              operator delete(v172);
            }

            *&__dst[8] = v171;
            *&__dst[16] = v176 | 0x8000000000000000;
            *__dst = v178;
            v179 = v178 + v171;
            goto LABEL_400;
          }

          v180 = *__dst;
          *(*__dst + *&__dst[8]) = 11303;
          v181 = v170 + 2;
          if ((__dst[23] & 0x80000000) != 0)
          {
LABEL_398:
            *&__dst[8] = v181;
            goto LABEL_399;
          }
        }

        else
        {
          if ((__dst[23] - 21) < 2)
          {
            v171 = __dst[23] + 2;
            v172 = __dst;
            v173 = 22;
            goto LABEL_381;
          }

          v180 = __dst;
          *&__dst[__dst[23]] = 11303;
          v181 = v170 + 2;
          if ((__dst[23] & 0x80000000) != 0)
          {
            goto LABEL_398;
          }
        }

        __dst[23] = v181 & 0x7F;
LABEL_399:
        v179 = &v180[v181];
LABEL_400:
        *v179 = 0;
        v700[0] = *&__dst[8];
        v182 = *__dst;
        *(v700 + 7) = *&__dst[15];
        v183 = __dst[23];
        memset(__dst, 0, 24);
        if (SHIBYTE(v694.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v694.__r_.__value_.__l.__data_);
          v694.__r_.__value_.__r.__words[0] = v182;
          v694.__r_.__value_.__l.__size_ = v700[0];
          *(&v694.__r_.__value_.__r.__words[1] + 7) = *(v700 + 7);
          *(&v694.__r_.__value_.__s + 23) = v183;
          if ((__dst[23] & 0x80000000) == 0)
          {
            v184 = alloc[0];
            if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_269;
            }

            goto LABEL_405;
          }

          operator delete(*__dst);
          v184 = alloc[0];
          if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_405;
          }

LABEL_269:
          operator delete(__s2.__r_.__value_.__l.__data_);
          if (SHIBYTE(v697.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_406;
          }

LABEL_270:
          v121 += 6;
          if (v121 == v184)
          {
            break;
          }
        }

        else
        {
          v694.__r_.__value_.__r.__words[0] = v182;
          v694.__r_.__value_.__l.__size_ = v700[0];
          *(&v694.__r_.__value_.__r.__words[1] + 7) = *(v700 + 7);
          *(&v694.__r_.__value_.__s + 23) = v183;
          v184 = alloc[0];
          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_269;
          }

LABEL_405:
          if ((SHIBYTE(v697.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_270;
          }

LABEL_406:
          operator delete(v697.__r_.__value_.__l.__data_);
          v121 += 6;
          if (v121 == v184)
          {
            break;
          }
        }
      }
    }
  }

  v185 = SHIBYTE(v694.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v694.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!v694.__r_.__value_.__l.__size_)
    {
      goto LABEL_482;
    }

    --v694.__r_.__value_.__l.__size_;
    *(v694.__r_.__value_.__r.__words[0] + v694.__r_.__value_.__l.__size_) = 0;
    LODWORD(v185) = SHIBYTE(v694.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v694.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_416;
    }

    goto LABEL_420;
  }

  if (*(&v694.__r_.__value_.__s + 23))
  {
    --*(&v694.__r_.__value_.__s + 23);
    v694.__r_.__value_.__s.__data_[v185 - 1] = 0;
    LODWORD(v185) = SHIBYTE(v694.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v694.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_420:
      v186 = v694.__r_.__value_.__l.__size_;
      v187 = v694.__r_.__value_.__r.__words[0];
      if (!v694.__r_.__value_.__l.__size_)
      {
        goto LABEL_482;
      }

      goto LABEL_421;
    }
  }

LABEL_416:
  v186 = v185;
  v187 = &v694;
  if (!v185)
  {
    goto LABEL_482;
  }

LABEL_421:
  v188 = v187;
  if (v186 < 8)
  {
    goto LABEL_989;
  }

  if (v186 < 0x10)
  {
    v189 = 0;
    goto LABEL_424;
  }

  v189 = v186 & 0xFFFFFFFFFFFFFFF0;
  v193 = &v187->__r_.__value_.__s.__data_[7];
  v194.i64[0] = 0x2020202020202020;
  v194.i64[1] = 0x2020202020202020;
  v195 = v186 & 0xFFFFFFFFFFFFFFF0;
  while (2)
  {
    v196 = vceqq_s8(*(v193 - 7), v194);
    if (v196.i8[0])
    {
      *(v193 - 7) = 44;
      if ((v196.i8[1] & 1) == 0)
      {
        goto LABEL_449;
      }

LABEL_465:
      *(v193 - 6) = 44;
      if ((v196.i8[2] & 1) == 0)
      {
        goto LABEL_466;
      }

LABEL_450:
      *(v193 - 5) = 44;
      if ((v196.i8[3] & 1) == 0)
      {
        goto LABEL_451;
      }

LABEL_467:
      *(v193 - 4) = 44;
      if ((v196.i8[4] & 1) == 0)
      {
        goto LABEL_468;
      }

LABEL_452:
      *(v193 - 3) = 44;
      if ((v196.i8[5] & 1) == 0)
      {
        goto LABEL_453;
      }

LABEL_469:
      *(v193 - 2) = 44;
      if ((v196.i8[6] & 1) == 0)
      {
        goto LABEL_470;
      }

LABEL_454:
      *(v193 - 1) = 44;
      if ((v196.i8[7] & 1) == 0)
      {
        goto LABEL_455;
      }

LABEL_471:
      *v193 = 44;
      if ((v196.i8[8] & 1) == 0)
      {
        goto LABEL_472;
      }

LABEL_456:
      v193[1] = 44;
      if ((v196.i8[9] & 1) == 0)
      {
        goto LABEL_457;
      }

LABEL_473:
      v193[2] = 44;
      if ((v196.i8[10] & 1) == 0)
      {
        goto LABEL_474;
      }

LABEL_458:
      v193[3] = 44;
      if ((v196.i8[11] & 1) == 0)
      {
        goto LABEL_459;
      }

LABEL_475:
      v193[4] = 44;
      if ((v196.i8[12] & 1) == 0)
      {
        goto LABEL_476;
      }

LABEL_460:
      v193[5] = 44;
      if ((v196.i8[13] & 1) == 0)
      {
        goto LABEL_461;
      }

LABEL_477:
      v193[6] = 44;
      if ((v196.i8[14] & 1) == 0)
      {
        goto LABEL_478;
      }

LABEL_462:
      v193[7] = 44;
      if (v196.i8[15])
      {
        goto LABEL_479;
      }
    }

    else
    {
      if (v196.i8[1])
      {
        goto LABEL_465;
      }

LABEL_449:
      if (v196.i8[2])
      {
        goto LABEL_450;
      }

LABEL_466:
      if (v196.i8[3])
      {
        goto LABEL_467;
      }

LABEL_451:
      if (v196.i8[4])
      {
        goto LABEL_452;
      }

LABEL_468:
      if (v196.i8[5])
      {
        goto LABEL_469;
      }

LABEL_453:
      if (v196.i8[6])
      {
        goto LABEL_454;
      }

LABEL_470:
      if (v196.i8[7])
      {
        goto LABEL_471;
      }

LABEL_455:
      if (v196.i8[8])
      {
        goto LABEL_456;
      }

LABEL_472:
      if (v196.i8[9])
      {
        goto LABEL_473;
      }

LABEL_457:
      if (v196.i8[10])
      {
        goto LABEL_458;
      }

LABEL_474:
      if (v196.i8[11])
      {
        goto LABEL_475;
      }

LABEL_459:
      if (v196.i8[12])
      {
        goto LABEL_460;
      }

LABEL_476:
      if (v196.i8[13])
      {
        goto LABEL_477;
      }

LABEL_461:
      if (v196.i8[14])
      {
        goto LABEL_462;
      }

LABEL_478:
      if (v196.i8[15])
      {
LABEL_479:
        v193[8] = 44;
      }
    }

    v193 += 16;
    v195 -= 16;
    if (v195)
    {
      continue;
    }

    break;
  }

  if (v186 == v189)
  {
    goto LABEL_481;
  }

  if ((v186 & 8) == 0)
  {
    v188 = (v187 + v189);
LABEL_989:
    v557 = (v187 + v186);
    do
    {
      if (v188->__r_.__value_.__s.__data_[0] == 32)
      {
        v188->__r_.__value_.__s.__data_[0] = 44;
      }

      v188 = (v188 + 1);
    }

    while (v188 != v557);
    goto LABEL_481;
  }

LABEL_424:
  v188 = (v187 + (v186 & 0xFFFFFFFFFFFFFFF8));
  v190 = v189 - (v186 & 0xFFFFFFFFFFFFFFF8);
  v191 = &v187->__r_.__value_.__s.__data_[v189 + 3];
  while (2)
  {
    v192 = vceq_s8(*(v191 - 3), 0x2020202020202020);
    if (v192.i8[0])
    {
      *(v191 - 3) = 44;
      if ((v192.i8[1] & 1) == 0)
      {
        goto LABEL_428;
      }

LABEL_436:
      *(v191 - 2) = 44;
      if ((v192.i8[2] & 1) == 0)
      {
        goto LABEL_437;
      }

LABEL_429:
      *(v191 - 1) = 44;
      if ((v192.i8[3] & 1) == 0)
      {
        goto LABEL_430;
      }

LABEL_438:
      *v191 = 44;
      if ((v192.i8[4] & 1) == 0)
      {
        goto LABEL_439;
      }

LABEL_431:
      v191[1] = 44;
      if ((v192.i8[5] & 1) == 0)
      {
        goto LABEL_432;
      }

LABEL_440:
      v191[2] = 44;
      if ((v192.i8[6] & 1) == 0)
      {
        goto LABEL_441;
      }

LABEL_433:
      v191[3] = 44;
      if (v192.i8[7])
      {
        goto LABEL_442;
      }
    }

    else
    {
      if (v192.i8[1])
      {
        goto LABEL_436;
      }

LABEL_428:
      if (v192.i8[2])
      {
        goto LABEL_429;
      }

LABEL_437:
      if (v192.i8[3])
      {
        goto LABEL_438;
      }

LABEL_430:
      if (v192.i8[4])
      {
        goto LABEL_431;
      }

LABEL_439:
      if (v192.i8[5])
      {
        goto LABEL_440;
      }

LABEL_432:
      if (v192.i8[6])
      {
        goto LABEL_433;
      }

LABEL_441:
      if (v192.i8[7])
      {
LABEL_442:
        v191[4] = 44;
      }
    }

    v191 += 8;
    v190 += 8;
    if (v190)
    {
      continue;
    }

    break;
  }

  if (v186 != (v186 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_989;
  }

LABEL_481:
  LOBYTE(v185) = *(&v694.__r_.__value_.__s + 23);
LABEL_482:
  if ((v185 & 0x80u) == 0)
  {
    v197 = &v694;
  }

  else
  {
    v197 = v694.__r_.__value_.__r.__words[0];
  }

  v198 = v185;
  if ((v185 & 0x80u) != 0)
  {
    v198 = v694.__r_.__value_.__l.__size_;
  }

  if (!v198)
  {
    goto LABEL_1050;
  }

  v199 = v197;
  while (*v199 != 44)
  {
    ++v199;
    if (!--v198)
    {
      goto LABEL_1050;
    }
  }

  memset(__dst, 0, sizeof(__dst));
  v200 = v199 + 1;
  *alloc = xmmword_1E538E420;
  v201 = v197;
  while (2)
  {
    v651 = v200;
    v202 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(__dst, v197, v201, v199);
    v197 = v202;
    v203 = *&__dst[40];
    v204 = *&__dst[32] + *&__dst[40];
    v206 = *&__dst[16];
    v205 = *&__dst[8];
    v207 = *&__dst[32] >> 12;
    v208 = *&__dst[16] - *&__dst[8];
    v652 = *&__dst[32];
    if (*&__dst[16] == *&__dst[8] || (v209 = (v204 >> 9) & 0x7FFFFFFFFFFFF8, *(*&__dst[8] + v209) + (v204 & 0xFFF) == *(*&__dst[8] + 8 * v207) + (*&__dst[32] & 0xFFF)))
    {
      v210 = 0;
      if (*&__dst[40])
      {
        goto LABEL_504;
      }

LABEL_497:
      v211 = (v208 << 9) - 1;
      v212 = *&__dst[16] - *&__dst[8];
      if (*&__dst[16] == *&__dst[8])
      {
        v211 = 0;
      }

      if (v211 - v204 > 1)
      {
LABEL_696:
        v367 = &v205[8 * (v204 >> 12)];
        if (v206 == v205)
        {
          v368 = 0;
          v369 = v203 - v210;
          if (v369 <= 1)
          {
            goto LABEL_698;
          }
        }

        else
        {
          v368 = (*v367 + (v204 & 0xFFF));
          v369 = v203 - v210;
          if (v369 <= 1)
          {
LABEL_698:
            v370 = v369;
            v371 = &asc_1E53A7FA9[v369];
            v372 = v369;
            v373 = v367;
            v374 = v368;
            do
            {
              *v374++ = asc_1E53A7FA9[v372];
              if (&v374[-*v373] == 4096)
              {
                v375 = *(v373 + 1);
                v373 += 8;
                v374 = v375;
              }

              ++*&__dst[40];
              ++v372;
            }

            while (v372 != 2);
            if (!v369)
            {
              goto LABEL_940;
            }

            v376 = &v368[-v369 - *v367];
            if (v376 >= 1)
            {
              goto LABEL_704;
            }

LABEL_708:
            v381 = 4095 - v376;
            v377 = &v367[-8 * (v381 >> 12)];
            v378 = (*v377 + (~v381 & 0xFFF));
            v379 = v377;
            v380 = v378;
            if (v378 == v368)
            {
              goto LABEL_709;
            }

            while (1)
            {
LABEL_721:
              *v374++ = *v380;
              if (&v374[-*v373] == 4096)
              {
                v390 = *(v373 + 1);
                v373 += 8;
                v374 = v390;
                if (&(++v380)[-*v379] == 4096)
                {
                  goto LABEL_725;
                }
              }

              else if (&(++v380)[-*v379] == 4096)
              {
LABEL_725:
                v391 = *(v379 + 1);
                v379 += 8;
                v380 = v391;
              }

              ++*&__dst[40];
              if (v380 == v368)
              {
                goto LABEL_709;
              }
            }
          }
        }

        v370 = 2;
        v371 = "";
        v373 = v367;
        v374 = v368;
        v376 = &v368[-*v367 - 2];
        if (v376 >= 1)
        {
LABEL_704:
          v377 = &v367[8 * (v376 >> 12)];
          v378 = (*v377 + (v376 & 0xFFF));
          v379 = v377;
          v380 = v378;
          if (v378 != v368)
          {
            goto LABEL_721;
          }

LABEL_709:
          if (v370 >= v369)
          {
            goto LABEL_928;
          }

          v382 = *v367;
          v383 = &v368[-v369 - *v367];
          if (v383 < 1)
          {
            v392 = 4095 - v383;
            v384 = &v367[-8 * (v392 >> 12)];
            v385 = (*v384 + (~v392 & 0xFFF));
            if (v384 != v377)
            {
              goto LABEL_712;
            }
          }

          else
          {
            v384 = &v367[8 * (v383 >> 12)];
            v385 = (*v384 + (v383 & 0xFFF));
            if (v384 != v377)
            {
LABEL_712:
              v386 = *v377;
              if (*v377 != v378)
              {
                while (1)
                {
                  v387 = (v368 - v382);
                  if (v378 - v386 >= v387)
                  {
                    v388 = v387;
                  }

                  else
                  {
                    v388 = v378 - v386;
                  }

                  v378 -= v388;
                  v368 -= v388;
                  if (v388)
                  {
                    memmove(v368, v378, v388);
                  }

                  if (v378 == v386)
                  {
                    break;
                  }

                  v389 = *(v367 - 1);
                  v367 -= 8;
                  v382 = v389;
                  v368 = v389 + 4096;
                }

                goto LABEL_916;
              }

              while (1)
              {
                v377 -= 8;
                if (v377 == v384)
                {
                  break;
                }

                v514 = *v377;
                v515 = (*v377 + 4096);
                while (1)
                {
                  v516 = (v368 - v382);
                  if (v515 - v514 >= v516)
                  {
                    v517 = v516;
                  }

                  else
                  {
                    v517 = v515 - v514;
                  }

                  v515 -= v517;
                  v368 -= v517;
                  if (v517)
                  {
                    memmove(v368, v515, v517);
                  }

                  if (v515 == v514)
                  {
                    break;
                  }

                  v518 = *(v367 - 1);
                  v367 -= 8;
                  v382 = v518;
                  v368 = v518 + 4096;
                }

LABEL_916:
                v382 = *v367;
                if ((*v367 + 4096) == v368)
                {
                  v519 = *(v367 + 1);
                  v367 += 8;
                  v382 = v519;
                  v368 = v519;
                }
              }

              v520 = (*v377 + 4096);
              if (v520 == v385)
              {
LABEL_928:
                if (v371 == ", ")
                {
                  goto LABEL_940;
                }

                v526 = *v367;
                v525 = v367 - 8;
                v527 = &v368[-v526];
                if (v371 - ", " >= &v368[-v526])
                {
                  v528 = v527;
                }

                else
                {
                  v528 = v371 - ", ";
                }

                v529 = &v371[-v528];
                if (v528)
                {
                  goto LABEL_938;
                }

                while (1)
                {
                  do
                  {
                    if (v529 == ", ")
                    {
                      goto LABEL_940;
                    }

                    v530 = *v525;
                    v525 -= 8;
                    v368 = (v530 + 4096);
                    if (v529 - ", " >= 4096)
                    {
                      v528 = 4096;
                    }

                    else
                    {
                      v528 = v529 - ", ";
                    }

                    v529 -= v528;
                  }

                  while (!v528);
LABEL_938:
                  memcpy(&v368[-v528], v529, v528);
                }
              }

              while (1)
              {
                v521 = (v368 - v382);
                if (v520 - v385 >= v521)
                {
                  v522 = v521;
                }

                else
                {
                  v522 = v520 - v385;
                }

                v520 -= v522;
                v368 -= v522;
                if (v522)
                {
                  memmove(v368, v520, v522);
                }

                if (v520 == v385)
                {
                  break;
                }

                v523 = *(v367 - 1);
                v367 -= 8;
                v382 = v523;
                v368 = v523 + 4096;
              }

LABEL_926:
              if ((*v367 + 4096) == v368)
              {
                v524 = *(v367 + 1);
                v367 += 8;
                v368 = v524;
              }

              goto LABEL_928;
            }
          }

          if (v385 == v378)
          {
            goto LABEL_928;
          }

          while (1)
          {
            v393 = (v368 - v382);
            if (v378 - v385 >= v393)
            {
              v394 = v393;
            }

            else
            {
              v394 = v378 - v385;
            }

            v378 -= v394;
            v368 -= v394;
            if (v394)
            {
              memmove(v368, v378, v394);
            }

            if (v378 == v385)
            {
              break;
            }

            v395 = *(v367 - 1);
            v367 -= 8;
            v382 = v395;
            v368 = v395 + 4096;
          }

          goto LABEL_926;
        }

        goto LABEL_708;
      }

      v649 = v202;
      v213 = *&__dst[16];
      v214 = v207 != 0;
      if (v207)
      {
        v652 -= 4096;
        *&__dst[32] = v652;
        v216 = (*&__dst[8] + 8);
        v215 = **&__dst[8];
        if (*&__dst[16] != *&__dst[24])
        {
          v217 = *&__dst[8] + 8;
LABEL_694:
          *v213 = v215;
          *&__dst[8] = v217;
          *&__dst[16] = v213 + 8;
          v206 = v213 + 8;
          v205 = v217;
          goto LABEL_695;
        }

        v244 = *__dst;
        if (v216 > *__dst)
        {
          v245 = ((&v216[-*__dst] >> 3) + 1 + (((&v216[-*__dst] >> 3) + 1) >> 63)) >> 1;
          v217 = &v216[-8 * v245];
          if (*&__dst[16] != v216)
          {
            memmove(&v216[-8 * v245], (*&__dst[8] + 8), *&__dst[16] - v216);
          }

          v213 = (v217 + v213 - v216);
          goto LABEL_694;
        }

        if (*&__dst[16] == *__dst)
        {
          v247 = 1;
        }

        else
        {
          v247 = (*&__dst[16] - *__dst) >> 2;
        }

        if (v247 >> 61)
        {
          *&__dst[8] += 8;
          goto LABEL_1226;
        }

        v248 = operator new(8 * v247);
        v217 = &v248[8 * (v247 >> 2)];
        v249 = v213 - v216;
        v101 = v213 == v216;
        v213 = v217;
        if (!v101)
        {
          v213 = (v217 + v249);
          if ((v212 - 16) >= 0x18)
          {
            v359 = &v248[8 * (v247 >> 2)];
            v250 = v359;
            if ((v359 - v205 - 8) >= 0x20)
            {
              v360 = ((v212 - 16) >> 3) + 1;
              v361 = 8 * (v360 & 0x3FFFFFFFFFFFFFFCLL);
              v250 = (v217 + v361);
              v216 += v361;
              v362 = (v205 + 24);
              v363 = v359 + 16;
              v364 = v360 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v365 = *v362;
                *(v363 - 1) = *(v362 - 1);
                *v363 = v365;
                v362 += 2;
                v363 += 2;
                v364 -= 4;
              }

              while (v364);
              if (v360 == (v360 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_693;
              }
            }
          }

          else
          {
            v250 = &v248[8 * (v247 >> 2)];
          }

          do
          {
            v366 = *v216;
            v216 += 8;
            *v250 = v366;
            v250 += 8;
          }

          while (v250 != v213);
        }

LABEL_693:
        *__dst = v248;
        *&__dst[24] = &v248[8 * v247];
        operator delete(v244);
        goto LABEL_694;
      }

      v648 = v210;
      v237 = *&__dst[24];
      v238 = *__dst;
      v239 = v212 >> 3;
      if (__PAIR128__(((*&__dst[24] - *__dst) >> 3) - (v212 >> 3), 0) < 1)
      {
        if ((*&__dst[24] - *__dst) >> 2 <= v239 + (v207 == 0))
        {
          v240 = v239 + (v207 == 0);
        }

        else
        {
          v240 = (*&__dst[24] - *__dst) >> 2;
        }

        if (v240)
        {
          if (v240 >> 61)
          {
            goto LABEL_1226;
          }

          v241 = operator new(8 * v240);
        }

        else
        {
          v241 = 0;
        }

        __src = v241;
        v314 = operator new(0x1000uLL);
        v315 = &v241[8 * (v239 - v214)];
        if (v239 - v214 == v240)
        {
          if (v239 == v214)
          {
            v316 = operator new(8uLL);
            v315 = v316 + 8;
            v210 = v648;
            if (__src)
            {
              operator delete(__src);
            }

            __src = v316;
LABEL_637:
            *v316 = v314;
            v206 = v316 + 8;
            if (v652 < 0x1000)
            {
LABEL_638:
              if (v213 == v205)
              {
LABEL_639:
                v319 = *__dst;
                *__dst = __src;
                *&__dst[8] = v316;
                *&__dst[16] = v206;
                *&__dst[24] = v315;
                *&__dst[32] = v652;
                if (v319)
                {
                  operator delete(v319);
                }

                v205 = v316;
                goto LABEL_695;
              }

              while (1)
              {
                if (v316 == __src)
                {
                  if (v206 >= v315)
                  {
                    if (v315 == __src)
                    {
                      v322 = 1;
                    }

                    else
                    {
                      v322 = (v315 - __src) >> 2;
                    }

                    if (v322 >> 61)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v323 = operator new(8 * v322);
                    v324 = v323;
                    v325 = (v322 + 3) >> 2;
                    v320 = &v323[8 * v325];
                    v326 = v206 - __src;
                    v101 = v206 == __src;
                    v206 = v320;
                    if (!v101)
                    {
                      v206 = &v320[v326];
                      v327 = v326 - 8;
                      if (v327 < 0x18 || (v328 = 8 * v325, (&v323[8 * v325] - v316) < 0x20))
                      {
                        v329 = &v323[8 * v325];
                        v330 = v316;
                        goto LABEL_656;
                      }

                      v332 = (v327 >> 3) + 1;
                      v333 = 8 * (v332 & 0x3FFFFFFFFFFFFFFCLL);
                      v329 = &v320[v333];
                      v330 = &v316[v333];
                      v334 = (v316 + 16);
                      v335 = &v323[v328 + 16];
                      v336 = v332 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v337 = *v334;
                        *(v335 - 1) = *(v334 - 1);
                        *v335 = v337;
                        v334 += 2;
                        v335 += 32;
                        v336 -= 4;
                      }

                      while (v336);
                      if (v332 != (v332 & 0x3FFFFFFFFFFFFFFCLL))
                      {
                        do
                        {
LABEL_656:
                          v331 = *v330;
                          v330 += 8;
                          *v329 = v331;
                          v329 += 8;
                        }

                        while (v329 != v206);
                      }
                    }

                    v315 = &v323[8 * v322];
                    if (__src)
                    {
                      operator delete(__src);
                    }

                    __src = v324;
                    goto LABEL_643;
                  }

                  v320 = __src + 8 * ((((v315 - v206) >> 3) + 1 + ((((v315 - v206) >> 3) + 1) >> 63)) >> 1);
                  v321 = v206 - __src;
                  v101 = v206 == __src;
                  v206 += 8 * ((((v315 - v206) >> 3) + 1 + ((((v315 - v206) >> 3) + 1) >> 63)) >> 1);
                  if (!v101)
                  {
                    memmove(v320, v316, v321);
                  }
                }

                else
                {
                  v320 = v316;
                }

LABEL_643:
                *(v320 - 1) = *(v213 - 1);
                v316 = v320 - 8;
                v213 -= 8;
                if (v213 == v205)
                {
                  goto LABEL_639;
                }
              }
            }

            while (1)
            {
              while (v206 != v315)
              {
                v338 = *v205;
                v205 += 8;
                *v206 = v338;
                v206 += 8;
                *&__dst[8] = v205;
                if (!--v214)
                {
                  goto LABEL_638;
                }
              }

              if (v316 <= __src)
              {
                break;
              }

              v339 = (((v316 - __src) >> 3) + 1 + ((((v316 - __src) >> 3) + 1) >> 63)) >> 1;
              v340 = &v316[-8 * v339];
              if (v315 != v316)
              {
                memmove(&v316[-8 * v339], v316, v315 - v316);
              }

              v341 = &v340[v315 - v316];
LABEL_682:
              v352 = *v205;
              v205 += 8;
              *v341 = v352;
              v206 = v341 + 8;
              *&__dst[8] = v205;
              v316 = v340;
              if (!--v214)
              {
                goto LABEL_638;
              }
            }

            if (v315 == __src)
            {
              v342 = 1;
            }

            else
            {
              v342 = (v315 - __src) >> 2;
            }

            if (v342 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v343 = operator new(8 * v342);
            v344 = v343;
            v345 = v342 >> 2;
            v340 = &v343[8 * (v342 >> 2)];
            v341 = v340;
            v346 = v315 - v316;
            if (v315 != v316)
            {
              v341 = &v340[v346];
              v347 = v346 - 8;
              if (v347 >= 0x18 && (v348 = 8 * v345, (&v343[8 * v345] - v316) >= 0x20))
              {
                v353 = (v347 >> 3) + 1;
                v354 = 8 * (v353 & 0x3FFFFFFFFFFFFFFCLL);
                v349 = &v340[v354];
                v350 = &v316[v354];
                v355 = (v316 + 16);
                v356 = &v343[v348 + 16];
                v357 = v353 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v358 = *v355;
                  *(v356 - 1) = *(v355 - 1);
                  *v356 = v358;
                  v355 += 2;
                  v356 += 32;
                  v357 -= 4;
                }

                while (v357);
                if (v353 == (v353 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_679;
                }
              }

              else
              {
                v349 = &v343[8 * (v342 >> 2)];
                v350 = v316;
              }

              do
              {
                v351 = *v350;
                v350 += 8;
                *v349 = v351;
                v349 += 8;
              }

              while (v349 != v341);
            }

LABEL_679:
            v315 = &v343[8 * v342];
            if (__src)
            {
              operator delete(__src);
            }

            __src = v344;
            goto LABEL_682;
          }

          v316 = &v315[-((4 * (v239 - v214) + 4) & 0xFFFFFFFFFFFFFFF8)];
        }

        else
        {
          v316 = &v241[8 * (v239 - v214)];
          v315 = &v241[8 * v240];
        }

        v210 = v648;
        goto LABEL_637;
      }

      if (*&__dst[24] != *&__dst[16])
      {
        *v213 = operator new(0x1000uLL);
        *&__dst[16] = v213 + 8;
        *&__dst[32] = v652;
        v206 = v213 + 8;
        v210 = v648;
LABEL_695:
        v203 = *&__dst[40];
        v204 = *&__dst[40] + v652;
        v197 = v649;
        goto LABEL_696;
      }

      v317 = operator new(0x1000uLL);
      if (v205 == v238)
      {
        if (v213 == v205)
        {
          v410 = 1;
        }

        else
        {
          v410 = (v237 - v205) >> 2;
        }

        if (v410 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v411 = operator new(8 * v410);
        v412 = (v410 + 3) >> 2;
        v318 = &v411[8 * v412];
        v413 = v213 - v205;
        v101 = v213 == v205;
        v213 = v318;
        if (!v101)
        {
          v213 = &v318[v212];
          v414 = v413 - 8;
          v415 = &v411[8 * v412];
          v416 = v205;
          if (v414 < 0x18)
          {
            goto LABEL_1241;
          }

          v417 = 8 * v412;
          v415 = &v411[8 * v412];
          v416 = v205;
          if ((v415 - v205) < 0x20)
          {
            goto LABEL_1241;
          }

          v418 = (v414 >> 3) + 1;
          v419 = 8 * (v418 & 0x3FFFFFFFFFFFFFFCLL);
          v415 = &v318[v419];
          v416 = &v205[v419];
          v420 = (v205 + 16);
          v421 = &v411[v417 + 16];
          v422 = v418 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v423 = *v420;
            *(v421 - 1) = *(v420 - 1);
            *v421 = v423;
            v420 += 2;
            v421 += 32;
            v422 -= 4;
          }

          while (v422);
          if (v418 != (v418 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_1241:
            do
            {
              v424 = *v416;
              v416 += 8;
              *v415 = v424;
              v415 += 8;
            }

            while (v415 != v213);
          }
        }

        *__dst = v411;
        *&__dst[8] = v318;
        *&__dst[16] = v213;
        *&__dst[24] = &v411[8 * v410];
        if (v205)
        {
          operator delete(v238);
          v213 = *&__dst[16];
          v318 = *&__dst[8];
          v652 = *&__dst[32];
        }
      }

      else
      {
        v318 = v205;
      }

      *(v318 - 1) = v317;
      v425 = v318 - 8;
      v426 = 4095;
      if (v213 - v425 != 8)
      {
        v426 = 4096;
      }

      *&__dst[8] = v425;
      v652 = v426 + v652 - 4096;
      *&__dst[32] = v652;
      v427 = v425;
      v428 = *&__dst[24];
      v429 = v425 + 8;
      v430 = *v425;
      if (v213 != *&__dst[24])
      {
        v431 = v425 + 8;
LABEL_906:
        v210 = v648;
        *v213 = v430;
        *&__dst[8] = v431;
        *&__dst[16] = v213 + 8;
        v206 = v213 + 8;
        v205 = v431;
        goto LABEL_695;
      }

      v432 = *__dst;
      if (v429 > *__dst)
      {
        v433 = ((&v429[-*__dst] >> 3) + 1 + (((&v429[-*__dst] >> 3) + 1) >> 63)) >> 1;
        v431 = &v429[-8 * v433];
        if (*&__dst[24] != v429)
        {
          memmove(&v429[-8 * v433], v427 + 8, *&__dst[24] - v429);
        }

        v213 = &v431[v428 - v429];
        goto LABEL_906;
      }

      if (*&__dst[24] == *__dst)
      {
        v434 = 1;
      }

      else
      {
        v434 = (*&__dst[24] - *__dst) >> 2;
      }

      if (v434 >> 61)
      {
        *&__dst[8] = v425 + 8;
        goto LABEL_1226;
      }

      v435 = operator new(8 * v434);
      v431 = &v435[8 * (v434 >> 2)];
      v213 = v431;
      if (v428 != v429)
      {
        v213 = &v431[v428 - v429];
        v436 = v428 - v427 - 16;
        if (v436 >= 0x18)
        {
          v506 = &v435[8 * (v434 >> 2)];
          v437 = v506;
          if ((v506 - v427 - 8) >= 0x20)
          {
            v507 = (v436 >> 3) + 1;
            v508 = 8 * (v507 & 0x3FFFFFFFFFFFFFFCLL);
            v437 = &v431[v508];
            v429 += v508;
            v509 = (v427 + 24);
            v510 = v506 + 16;
            v511 = v507 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v512 = *v509;
              *(v510 - 1) = *(v509 - 1);
              *v510 = v512;
              v509 += 2;
              v510 += 2;
              v511 -= 4;
            }

            while (v511);
            if (v507 == (v507 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_905;
            }
          }
        }

        else
        {
          v437 = &v435[8 * (v434 >> 2)];
        }

        do
        {
          v513 = *v429;
          v429 += 8;
          *v437 = v513;
          v437 += 8;
        }

        while (v437 != v213);
      }

LABEL_905:
      *__dst = v435;
      *&__dst[24] = &v435[8 * v434];
      operator delete(v432);
      goto LABEL_906;
    }

    v210 = (v204 & 0xFFF) + ((v209 - 8 * v207) << 9) - (*&__dst[32] & 0xFFF);
    if (v210 >= *&__dst[40] - v210)
    {
      goto LABEL_497;
    }

LABEL_504:
    v218 = v652;
    if (v652 > 1)
    {
      goto LABEL_805;
    }

    v219 = (v208 << 9) - 1;
    v220 = *&__dst[16] - *&__dst[8];
    if (*&__dst[16] == *&__dst[8])
    {
      v219 = 0;
    }

    v221 = ((*&__dst[16] == *&__dst[8]) - v652 + 2) >> 12;
    v222 = v221 + 1;
    v223 = v219 - v204;
    v224 = (v219 - v204) >> 12;
    if (v221 + 1 < v224)
    {
      v225 = v221 + 1;
    }

    else
    {
      v225 = v224;
    }

    v649 = v202;
    if (v221 < v224)
    {
      v226 = v652 | (v225 << 12);
      *&__dst[32] = v226;
      v227 = *__dst;
      v229 = (*&__dst[16] - 8);
      v228 = *(*&__dst[16] - 8);
      if (*&__dst[8] != *__dst)
      {
        v230 = *&__dst[8];
LABEL_513:
        *(v230 - 1) = v228;
        v231 = v230 - 8;
        *&__dst[8] = v231;
        *&__dst[16] = v229;
        goto LABEL_804;
      }

      if (v229 < *&__dst[24])
      {
        v230 = (8 * ((((*&__dst[24] - v229) >> 3) + 1 + ((((*&__dst[24] - v229) >> 3) + 1) >> 63)) >> 1) + *&__dst[8]);
        v246 = &v229[-*&__dst[8]];
        v101 = v229 == *&__dst[8];
        v229 += 8 * ((((*&__dst[24] - v229) >> 3) + 1 + ((((*&__dst[24] - v229) >> 3) + 1) >> 63)) >> 1);
        if (!v101)
        {
          memmove(v230, *&__dst[8], v246);
        }

        goto LABEL_513;
      }

      if (*&__dst[24] == *&__dst[8])
      {
        v256 = 1;
      }

      else
      {
        v256 = (*&__dst[24] - *&__dst[8]) >> 2;
      }

      if (!(v256 >> 61))
      {
        v257 = operator new(8 * v256);
        v258 = (v256 + 3) >> 2;
        v230 = &v257[8 * v258];
        v259 = v229 - v205;
        v101 = v229 == v205;
        v229 = v230;
        if (!v101)
        {
          v229 = &v230[v259];
          v260 = &v257[8 * v258];
          v261 = v205;
          if ((v220 - 16) < 0x18)
          {
            goto LABEL_1242;
          }

          v262 = 8 * v258;
          v260 = &v257[8 * v258];
          v261 = v205;
          if ((v260 - v205) < 0x20)
          {
            goto LABEL_1242;
          }

          v263 = ((v220 - 16) >> 3) + 1;
          v264 = 8 * (v263 & 0x3FFFFFFFFFFFFFFCLL);
          v260 = &v230[v264];
          v261 = &v205[v264];
          v265 = (v205 + 16);
          v266 = &v257[v262 + 16];
          v267 = v263 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v268 = *v265;
            *(v266 - 1) = *(v265 - 1);
            *v266 = v268;
            v265 += 2;
            v266 += 32;
            v267 -= 4;
          }

          while (v267);
          if (v263 != (v263 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_1242:
            do
            {
              v269 = *v261;
              v261 += 8;
              *v260 = v269;
              v260 += 8;
            }

            while (v260 != v229);
          }
        }

        *__dst = v257;
        *&__dst[24] = &v257[8 * v256];
        if (v205)
        {
          operator delete(v227);
        }

        goto LABEL_513;
      }

      *&__dst[16] -= 8;
LABEL_1226:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v648 = v210;
    v650 = v221 + 1;
    v232 = *&__dst[24];
    v233 = *__dst;
    v234 = v220 >> 3;
    if (v222 - v225 <= ((*&__dst[24] - *__dst) >> 3) - (v220 >> 3))
    {
      if (*&__dst[8] == *__dst)
      {
        v254 = *&__dst[16];
        v255 = operator new(0x1000uLL);
        if (v206 == v232)
        {
          if (v206 == v205)
          {
            v396 = 1;
          }

          else
          {
            v396 = (v206 - v233) >> 2;
          }

          if (v396 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v397 = operator new(8 * v396);
          v398 = v396 >> 2;
          v231 = &v397[8 * (v396 >> 2)];
          v399 = v231;
          if (v254 != v205)
          {
            v400 = v254 - v205 - 8;
            v401 = &v397[8 * (v396 >> 2)];
            v402 = v205;
            if (v400 < 0x18)
            {
              goto LABEL_775;
            }

            v403 = 8 * v398;
            v401 = &v397[8 * (v396 >> 2)];
            v402 = v205;
            if ((&v397[8 * v398] - v205) < 0x20)
            {
              goto LABEL_775;
            }

            v404 = (v400 >> 3) + 1;
            v405 = 8 * (v404 & 0x3FFFFFFFFFFFFFFCLL);
            v401 = &v231[v405];
            v402 = &v205[v405];
            v406 = (v205 + 16);
            v407 = &v397[v403 + 16];
            v408 = v404 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v409 = *v406;
              *(v407 - 1) = *(v406 - 1);
              *v407 = v409;
              v406 += 2;
              v407 += 2;
              v408 -= 4;
            }

            while (v408);
            if (v404 == (v404 & 0x3FFFFFFFFFFFFFFCLL))
            {
              v399 = &v231[v220];
            }

            else
            {
LABEL_775:
              v399 = &v231[v220];
              do
              {
                v438 = *v402;
                v402 += 8;
                *v401 = v438;
                v401 += 8;
              }

              while (v401 != &v231[v220]);
            }
          }

          *__dst = v397;
          *&__dst[8] = &v397[8 * (v396 >> 2)];
          *&__dst[16] = v399;
          *&__dst[24] = &v397[8 * v396];
          v206 = v399;
          if (v205)
          {
            operator delete(v233);
            v206 = *&__dst[16];
            v231 = *&__dst[8];
            v652 = *&__dst[32];
          }
        }

        else
        {
          v231 = v205;
        }

        *v206 = v255;
        v206 += 8;
        v313 = v225 + 1;
        *&__dst[16] = v206;
        v652 += (v225 + 1) << 12;
        *&__dst[32] = v652;
      }

      else
      {
        *(v205 - 1) = operator new(0x1000uLL);
        v242 = v205 - 8;
        v231 = v242;
        v243 = 4095;
        if (v206 - v242 != 8)
        {
          v243 = 4096;
        }

        v226 = v243 + v652 + (v225 << 12);
        *&__dst[8] = v242;
        *&__dst[32] = v226;
        if (v223 < 0x1000)
        {
          v229 = v206;
          v210 = v648;
          goto LABEL_804;
        }

        v652 = v226;
        v313 = 1;
      }

      v439 = *__dst;
      v440 = *&__dst[24];
      v229 = v206;
      while (1)
      {
        v442 = v229 - 8;
        v443 = *(v229 - 1);
        if (v231 == v439)
        {
          if (v442 >= v440)
          {
            if (v440 == v439)
            {
              v444 = 1;
            }

            else
            {
              v444 = (v440 - v439) >> 2;
            }

            if (v444 >> 61)
            {
              *&__dst[16] = v229 - 8;
              goto LABEL_1226;
            }

            v445 = operator new(8 * v444);
            v446 = v445;
            v447 = (v444 + 3) >> 2;
            v441 = &v445[8 * v447];
            v448 = v441;
            if (v442 != v439)
            {
              v448 = &v441[v442 - v439];
              v449 = v229 - v439 - 16;
              if (v449 < 0x18 || (v450 = 8 * v447, (&v445[8 * v447] - v231) < 0x20))
              {
                v451 = &v445[8 * v447];
                v452 = v231;
                goto LABEL_795;
              }

              v454 = (v449 >> 3) + 1;
              v455 = 8 * (v454 & 0x3FFFFFFFFFFFFFFCLL);
              v451 = &v441[v455];
              v452 = &v231[v455];
              v456 = (v231 + 16);
              v457 = &v445[v450 + 16];
              v458 = v454 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v459 = *v456;
                *(v457 - 1) = *(v456 - 1);
                *v457 = v459;
                v456 += 2;
                v457 += 2;
                v458 -= 4;
              }

              while (v458);
              if (v454 != (v454 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_795:
                  v453 = *v452;
                  v452 += 8;
                  *v451 = v453;
                  v451 += 8;
                }

                while (v451 != v448);
              }
            }

            v440 = &v445[8 * v444];
            *__dst = v445;
            *&__dst[24] = v440;
            if (v439)
            {
              operator delete(v439);
            }

            v439 = v446;
            v229 = v448;
            goto LABEL_782;
          }

          v229 = &v442[8 * ((((v440 - v442) >> 3) + 1 + ((((v440 - v442) >> 3) + 1) >> 63)) >> 1)];
          v441 = &v439[8 * ((((v440 - v442) >> 3) + 1 + ((((v440 - v442) >> 3) + 1) >> 63)) >> 1)];
          if (v442 != v439)
          {
            memmove(&v439[8 * ((((v440 - v442) >> 3) + 1 + ((((v440 - v442) >> 3) + 1) >> 63)) >> 1)], v231, v442 - v439);
          }
        }

        else
        {
          v229 -= 8;
          v441 = v231;
        }

LABEL_782:
        *(v441 - 1) = v443;
        v231 = v441 - 8;
        *&__dst[8] = v441 - 8;
        if (!--v313)
        {
          *&__dst[16] = v229;
          v210 = v648;
          v226 = v652;
          goto LABEL_804;
        }
      }
    }

    if (*&__dst[16] == *&__dst[8])
    {
      v235 = -1;
    }

    else
    {
      v235 = 0;
    }

    if ((*&__dst[24] - *__dst) >> 2 <= v222 - v225 + v234)
    {
      v236 = v222 - v225 + v234;
    }

    else
    {
      v236 = (*&__dst[24] - *__dst) >> 2;
    }

    if (v236)
    {
      if (v236 >> 61)
      {
        goto LABEL_1226;
      }

      __src = operator new(8 * v236);
    }

    else
    {
      __src = 0;
    }

    v210 = v648;
    v251 = operator new(0x1000uLL);
    v647 = v235;
    if (v236)
    {
      v252 = __src;
      v253 = __src + 8 * v236;
    }

    else
    {
      v252 = operator new(8uLL);
      v253 = v252 + 8;
      if (__src)
      {
        operator delete(__src);
      }
    }

    *v252 = v251;
    v229 = v252 + 8;
    __src = v252;
    v231 = v252;
    if (v223 >= 0x1000)
    {
      while (1)
      {
        while (v229 != v253)
        {
          v291 = *(v206 - 1);
          v206 -= 8;
          *v229 = v291;
          v229 += 8;
          *&__dst[16] = v206;
          if (!--v225)
          {
            goto LABEL_573;
          }
        }

        if (v231 <= __src)
        {
          break;
        }

        v292 = (((v231 - __src) >> 3) + 1 + ((((v231 - __src) >> 3) + 1) >> 63)) >> 1;
        v293 = &v231[-8 * v292];
        if (v253 != v231)
        {
          memmove(&v231[-8 * v292], v231, v253 - v231);
        }

        v294 = &v293[v253 - v231];
LABEL_616:
        v305 = *(v206 - 1);
        v206 -= 8;
        *v294 = v305;
        v229 = v294 + 8;
        *&__dst[16] = v206;
        v231 = v293;
        if (!--v225)
        {
          goto LABEL_573;
        }
      }

      if (v253 == __src)
      {
        v295 = 1;
      }

      else
      {
        v295 = (v253 - __src) >> 2;
      }

      if (v295 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v296 = operator new(8 * v295);
      v297 = v296;
      v298 = v295 >> 2;
      v293 = &v296[8 * (v295 >> 2)];
      v294 = v293;
      v299 = v253 - v231;
      if (v253 != v231)
      {
        v294 = &v293[v299];
        v300 = v299 - 8;
        if (v300 >= 0x18 && (v301 = 8 * v298, (&v296[8 * v298] - v231) >= 0x20))
        {
          v306 = (v300 >> 3) + 1;
          v307 = 8 * (v306 & 0x3FFFFFFFFFFFFFFCLL);
          v302 = &v293[v307];
          v303 = &v231[v307];
          v308 = (v231 + 16);
          v309 = &v296[v301 + 16];
          v310 = v306 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v311 = *v308;
            *(v309 - 1) = *(v308 - 1);
            *v309 = v311;
            v308 += 2;
            v309 += 32;
            v310 -= 4;
          }

          while (v310);
          if (v306 == (v306 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_613;
          }
        }

        else
        {
          v302 = &v296[8 * (v295 >> 2)];
          v303 = v231;
        }

        do
        {
          v304 = *v303;
          v303 += 8;
          *v302 = v304;
          v302 += 8;
        }

        while (v302 != v294);
      }

LABEL_613:
      v253 = &v296[8 * v295];
      if (__src)
      {
        operator delete(__src);
      }

      __src = v297;
      goto LABEL_616;
    }

LABEL_573:
    v270 = v205 == v206;
    v271 = __src;
    while (!v270)
    {
      if (v229 != v253)
      {
        v272 = v231;
        goto LABEL_575;
      }

      if (v231 > v271)
      {
        v274 = (((v231 - v271) >> 3) + 1 + ((((v231 - v271) >> 3) + 1) >> 63)) >> 1;
        v272 = &v231[-8 * v274];
        if (v253 != v231)
        {
          memmove(&v231[-8 * v274], v231, v253 - v231);
        }

        v229 = &v272[v253 - v231];
        goto LABEL_575;
      }

      if (v253 == v271)
      {
        v275 = 1;
      }

      else
      {
        v275 = (v253 - v271) >> 2;
      }

      if (v275 >> 61)
      {
        __src = v271;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v276 = operator new(8 * v275);
      v277 = v276;
      v278 = v275 >> 2;
      v272 = &v276[8 * (v275 >> 2)];
      v229 = v272;
      v279 = v253 - v231;
      if (v253 != v231)
      {
        v229 = &v272[v279];
        v280 = v279 - 8;
        if (v280 >= 0x18 && (v281 = 8 * v278, (&v276[8 * v278] - v231) >= 0x20))
        {
          v285 = (v280 >> 3) + 1;
          v286 = 8 * (v285 & 0x3FFFFFFFFFFFFFFCLL);
          v282 = &v272[v286];
          v283 = &v231[v286];
          v287 = (v231 + 16);
          v288 = &v276[v281 + 16];
          v289 = v285 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v290 = *v287;
            *(v288 - 1) = *(v287 - 1);
            *v288 = v290;
            v287 += 2;
            v288 += 2;
            v289 -= 4;
          }

          while (v289);
          if (v285 == (v285 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_591;
          }
        }

        else
        {
          v282 = &v276[8 * (v275 >> 2)];
          v283 = v231;
        }

        do
        {
          v284 = *v283;
          v283 += 8;
          *v282 = v284;
          v282 += 8;
        }

        while (v282 != v229);
      }

LABEL_591:
      v253 = &v276[8 * v275];
      if (v271)
      {
        operator delete(v271);
      }

      v271 = v277;
LABEL_575:
      v273 = *v205;
      v205 += 8;
      *v229 = v273;
      v229 += 8;
      v231 = v272;
      v270 = v205 == v206;
    }

    v312 = *__dst;
    *__dst = v271;
    *&__dst[8] = v231;
    *&__dst[16] = v229;
    *&__dst[24] = v253;
    v226 = v652 + v647 + (v650 << 12);
    *&__dst[32] = v226;
    if (v312)
    {
      operator delete(v312);
    }

LABEL_804:
    v218 = v226;
    v207 = v226 >> 12;
    v206 = v229;
    v205 = v231;
    v197 = v649;
LABEL_805:
    v460 = &v205[8 * v207];
    if (v206 == v205)
    {
      v461 = 0;
      if (v210 > 1)
      {
        goto LABEL_818;
      }

LABEL_807:
      v462 = v460;
      v463 = v461;
      if (*v460 == v461)
      {
        v462 = (v460 - 8);
        v463 = *(v460 - 1) + 4096;
      }

      v464 = &asc_1E53A7FA9[-v210 + 2];
      *(v463 - 1) = asc_1E53A7FA9[-v210 + 1];
      v465 = (v463 - 1);
      *&__dst[32] = vaddq_s64(*&__dst[32], *alloc);
      if (&asc_1E53A7FA9[-v210 + 1] != ", ")
      {
        if (v465 == *v462)
        {
          v466 = *--v462;
          v465 = (v466 + 4096);
        }

        *--v465 = asc_1E53A7FA9[-v210];
        *&__dst[32] = vaddq_s64(*&__dst[32], *alloc);
      }

      v467 = v210;
      if (v210)
      {
        v468 = &v461[v210 - *v460];
        if (v468 < 1)
        {
          goto LABEL_819;
        }

        goto LABEL_815;
      }

      goto LABEL_940;
    }

    v461 = (*v460 + (v218 & 0xFFF));
    if (v210 <= 1)
    {
      goto LABEL_807;
    }

LABEL_818:
    v467 = 2;
    v464 = ", ";
    v462 = v460;
    v465 = v461;
    v468 = &v461[-*v460 + 2];
    if (v468 < 1)
    {
LABEL_819:
      v473 = 4095 - v468;
      v469 = &v460[-8 * (v473 >> 12)];
      v470 = (*v469 + (~v473 & 0xFFF));
      v471 = v469;
      v472 = v470;
      if (v470 == v461)
      {
        goto LABEL_820;
      }

LABEL_831:
      while (2)
      {
        if (v465 == *v462)
        {
          v482 = *--v462;
          v465 = (v482 + 4096);
          if (v472 == *v471)
          {
            goto LABEL_833;
          }
        }

        else if (v472 == *v471)
        {
LABEL_833:
          v484 = *--v471;
          v472 = (v484 + 4096);
        }

        v483 = *--v472;
        *--v465 = v483;
        *&__dst[32] = vaddq_s64(*&__dst[32], *alloc);
        if (v472 == v461)
        {
          goto LABEL_820;
        }

        continue;
      }
    }

LABEL_815:
    v469 = &v460[8 * (v468 >> 12)];
    v470 = (*v469 + (v468 & 0xFFF));
    v471 = v469;
    v472 = v470;
    if (v470 != v461)
    {
      goto LABEL_831;
    }

LABEL_820:
    if (v467 >= v210)
    {
      if (v464 == "")
      {
        goto LABEL_940;
      }

      goto LABEL_890;
    }

    v474 = v197;
    v475 = *v460;
    v476 = &v461[v210 - *v460];
    if (v476 < 1)
    {
      v487 = 4095 - v476;
      v477 = &v460[-8 * (v487 >> 12)];
      v478 = *v477 + (~v487 & 0xFFF);
      if (v469 == v477)
      {
        goto LABEL_847;
      }

LABEL_823:
      v479 = *v469 + 4096;
      if (v479 != v470)
      {
        v460 += 8;
        v480 = v475 - v461 + 4096;
        if (v479 - v470 >= v480)
        {
          v481 = v480;
        }

        else
        {
          v481 = v479 - v470;
        }

        if (v481)
        {
          goto LABEL_838;
        }

        while (1)
        {
          v470 += v481;
          if (v470 == v479)
          {
            break;
          }

          v485 = *v460;
          v460 += 8;
          v461 = v485;
          if (v479 - v470 >= 4096)
          {
            v481 = 4096;
          }

          else
          {
            v481 = v479 - v470;
          }

          if (v481)
          {
LABEL_838:
            memmove(v461, v470, v481);
          }
        }

        v461 += v481;
        v475 = *(v460 - 1);
        if (v475 + 4096 == v461)
        {
          v475 = *v460;
          v461 = *v460;
          v486 = (v469 + 8);
          if (v469 + 8 != v477)
          {
            goto LABEL_863;
          }

          goto LABEL_873;
        }

        v460 -= 8;
      }

      v486 = (v469 + 8);
      if (v469 + 8 != v477)
      {
        do
        {
LABEL_863:
          while (1)
          {
            v491 = 0;
            v492 = *v486;
            for (v460 += 8; ; v460 += 8)
            {
              v493 = v475 - v461 + 4096;
              if (4096 - v491 >= v493)
              {
                v494 = v493;
              }

              else
              {
                v494 = 4096 - v491;
              }

              if (v494)
              {
                memmove(v461, &v492[v491], v494);
              }

              v491 += v494;
              if (v491 == 4096)
              {
                break;
              }

              v495 = *v460;
              v475 = v495;
              v461 = v495;
            }

            v461 += v494;
            v475 = *(v460 - 1);
            if (v475 + 4096 != v461)
            {
              break;
            }

            v475 = *v460;
            v461 = *v460;
            if (++v486 == v477)
            {
              goto LABEL_873;
            }
          }

          v460 -= 8;
          ++v486;
        }

        while (v486 != v477);
      }

LABEL_873:
      v496 = *v486;
      v197 = v474;
      if (*v486 != v478)
      {
        v497 = *v460;
        v460 += 8;
        v498 = v497 - v461 + 4096;
        if (v478 - v496 >= v498)
        {
          v489 = v498;
        }

        else
        {
          v489 = v478 - v496;
        }

        if (v489)
        {
          goto LABEL_883;
        }

        while (1)
        {
          do
          {
            v496 += v489;
            if (v496 == v478)
            {
              goto LABEL_885;
            }

            v499 = *v460;
            v460 += 8;
            v461 = v499;
            if (v478 - v496 >= 4096)
            {
              v489 = 4096;
            }

            else
            {
              v489 = v478 - v496;
            }
          }

          while (!v489);
LABEL_883:
          memmove(v461, v496, v489);
        }
      }

LABEL_889:
      if (v464 == "")
      {
        goto LABEL_940;
      }

      goto LABEL_890;
    }

    v477 = &v460[8 * (v476 >> 12)];
    v478 = *v477 + (v476 & 0xFFF);
    if (v469 != v477)
    {
      goto LABEL_823;
    }

LABEL_847:
    if (v470 == v478)
    {
      v197 = v474;
      if (v464 != "")
      {
        goto LABEL_890;
      }

      goto LABEL_940;
    }

    v460 += 8;
    v197 = v474;
    v488 = v475 - v461 + 4096;
    if (v478 - v470 >= v488)
    {
      v489 = v488;
    }

    else
    {
      v489 = v478 - v470;
    }

    if (v489)
    {
LABEL_857:
      memmove(v461, v470, v489);
    }

    while (1)
    {
      v470 += v489;
      if (v470 == v478)
      {
        break;
      }

      v490 = *v460;
      v460 += 8;
      v461 = v490;
      if (v478 - v470 >= 4096)
      {
        v489 = 4096;
      }

      else
      {
        v489 = v478 - v470;
      }

      if (v489)
      {
        goto LABEL_857;
      }
    }

LABEL_885:
    v461 += v489;
    if ((*(v460 - 1) + 4096) == v461)
    {
      v461 = *v460;
      goto LABEL_889;
    }

    v460 -= 8;
    if (v464 == "")
    {
      goto LABEL_940;
    }

LABEL_890:
    v502 = *v460;
    v501 = (v460 + 8);
    v500 = v502;
    while (1)
    {
      v503 = v500 - v461 + 4096;
      if (", " - v464 + 2 >= v503)
      {
        v504 = v503;
      }

      else
      {
        v504 = ", " - v464 + 2;
      }

      if (v504)
      {
        memcpy(v461, v464, v504);
      }

      v464 += v504;
      if (v464 == "")
      {
        break;
      }

      v505 = *v501++;
      v500 = v505;
      v461 = v505;
    }

LABEL_940:
    v531 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
    v532 = &v694;
    if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v531 = v694.__r_.__value_.__l.__size_;
      v532 = v694.__r_.__value_.__r.__words[0];
    }

    v533 = v532 + v531;
    v200 = v533;
    v199 = v651;
    if (v651 != v533)
    {
      v199 = v651;
      v534 = v651;
      while (1)
      {
        v535 = *v534++;
        if (v535 == 44)
        {
          break;
        }

        v199 = v534;
        if (v534 == v533)
        {
          goto LABEL_946;
        }
      }

      v200 = v199 + 1;
    }

    v201 = v651;
    if (v199 != v200)
    {
      continue;
    }

    break;
  }

LABEL_946:
  v536 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(__dst, v197, v651, v533);
  if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v537 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v537 = v694.__r_.__value_.__l.__size_;
  }

  if (!*&__dst[40])
  {
    v554 = &v694;
    if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v554 = v694.__r_.__value_.__r.__words[0];
    }

    v555 = v536 - v554;
    if (v537 < v536 - v554)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v556 = v554 + v537 - v536;
    if (v556 == -1)
    {
      if (SHIBYTE(v694.__r_.__value_.__r.__words[2]) < 0)
      {
        v694.__r_.__value_.__l.__size_ = v536 - v554;
        *(v694.__r_.__value_.__r.__words[0] + v555) = 0;
      }

      else
      {
        *(&v694.__r_.__value_.__s + 23) = v555 & 0x7F;
        v694.__r_.__value_.__s.__data_[v555] = 0;
      }
    }

    else
    {
      std::string::__erase_external_with_move(&v694, v555, v556);
    }

    goto LABEL_1037;
  }

  if (*&__dst[16] == *&__dst[8])
  {
    goto LABEL_1037;
  }

  v538 = (*&__dst[32] >> 9) & 0x7FFFFFFFFFFFF8;
  v539 = (*&__dst[8] + v538);
  v540 = (*(*&__dst[8] + v538) + (*&__dst[32] & 0xFFF));
  v541 = ((*&__dst[32] + *&__dst[40]) >> 9) & 0x7FFFFFFFFFFFF8;
  v542 = *(*&__dst[8] + v541) + ((*&__dst[32] + *&__dst[40]) & 0xFFFLL);
  if (v542 == v540 || !(((v541 - v538) << 9) - (*&__dst[32] & 0xFFF) + ((*&__dst[32] + *&__dst[40]) & 0xFFFLL)))
  {
    goto LABEL_1037;
  }

  __src = (((v541 - v538) << 9) - (*&__dst[32] & 0xFFF) + ((*&__dst[32] + *&__dst[40]) & 0xFFFLL));
  alloc[0] = v537;
  v652 = v537;
  memset(&__s2, 0, sizeof(__s2));
  while (2)
  {
    v543 = *v540;
    if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
    {
      v545 = (__s2.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (__s2.__r_.__value_.__l.__size_ == v545)
      {
        if ((__s2.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        p_s2 = __s2.__r_.__value_.__r.__words[0];
        if (v545 >= 0x3FFFFFFFFFFFFFF3)
        {
          v549 = 0;
          v548 = 0x7FFFFFFFFFFFFFF7;
        }

        else
        {
LABEL_961:
          if (v545 + 1 > 2 * v545)
          {
            v546 = v545 + 1;
          }

          else
          {
            v546 = 2 * v545;
          }

          if ((v546 | 7) == 0x17)
          {
            v547 = 25;
          }

          else
          {
            v547 = (v546 | 7) + 1;
          }

          if (v546 >= 0x17)
          {
            v548 = v547;
          }

          else
          {
            v548 = 23;
          }

          v549 = v545 == 22;
        }

        v550 = operator new(v548);
        v551 = v550;
        if (v545)
        {
          memmove(v550, p_s2, v545);
        }

        if (!v549)
        {
          operator delete(p_s2);
        }

        __s2.__r_.__value_.__r.__words[0] = v551;
        __s2.__r_.__value_.__r.__words[2] = v548 | 0x8000000000000000;
      }

      else
      {
        v545 = __s2.__r_.__value_.__l.__size_;
        v551 = __s2.__r_.__value_.__r.__words[0];
      }

      __s2.__r_.__value_.__l.__size_ = v545 + 1;
    }

    else
    {
      if (HIBYTE(__s2.__r_.__value_.__r.__words[2]) == 22)
      {
        p_s2 = &__s2;
        v545 = 22;
        goto LABEL_961;
      }

      v545 = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
      *(&__s2.__r_.__value_.__s + 23) = (*(&__s2.__r_.__value_.__s + 23) + 1) & 0x7F;
      v551 = &__s2;
    }

    v552 = v551 + v545;
    *v552 = v543;
    v552[1] = 0;
    if (&(++v540)[-*v539] == 4096)
    {
      v553 = v539[1];
      ++v539;
      v540 = v553;
    }

    if (v540 != v542)
    {
      continue;
    }

    break;
  }

  v558 = SHIBYTE(v694.__r_.__value_.__r.__words[2]);
  if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v559 = &__s2;
  }

  else
  {
    v559 = __s2.__r_.__value_.__r.__words[0];
  }

  if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v560 = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v560 = __s2.__r_.__value_.__l.__size_;
  }

  if ((SHIBYTE(v694.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v558 = v694.__r_.__value_.__l.__size_;
    v566 = (v694.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v562 = __src;
    v561 = alloc[0];
    v563 = v652;
    v567 = 0x7FFFFFFFFFFFFFF7;
    if (v566 - v694.__r_.__value_.__l.__size_ >= __src)
    {
      v573 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
      v571 = v694.__r_.__value_.__r.__words[0];
      goto LABEL_1028;
    }

    v564 = __src + v694.__r_.__value_.__l.__size_;
    if (0x7FFFFFFFFFFFFFF8 - (v694.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __src + v694.__r_.__value_.__l.__size_ - v566)
    {
      goto LABEL_1234;
    }

    v565 = v694.__r_.__value_.__r.__words[0];
    if (v566 >= 0x3FFFFFFFFFFFFFF3)
    {
      v569 = 0;
    }

    else
    {
LABEL_1009:
      if (v564 <= 2 * v566)
      {
        v564 = 2 * v566;
      }

      if ((v564 | 7) == 0x17)
      {
        v568 = 25;
      }

      else
      {
        v568 = (v564 | 7) + 1;
      }

      if (v564 >= 0x17)
      {
        v567 = v568;
      }

      else
      {
        v567 = 23;
      }

      v569 = v566 == 22;
    }

    v570 = operator new(v567);
    v571 = v570;
    if (v563)
    {
      memmove(v570, v565, v563);
    }

    if (v558 != v561)
    {
      memmove(v561 + v571 + v562, v561 + v565, v558 - v561);
    }

    if (!v569)
    {
      operator delete(v565);
    }

    v694.__r_.__value_.__r.__words[0] = v571;
    v694.__r_.__value_.__r.__words[2] = v567 | 0x8000000000000000;
    v572 = v562 + v558;
  }

  else
  {
    v562 = __src;
    v561 = alloc[0];
    v563 = v652;
    if (22 - SHIBYTE(v694.__r_.__value_.__r.__words[2]) < __src)
    {
      v564 = __src + SHIBYTE(v694.__r_.__value_.__r.__words[2]);
      if (v564 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
      {
        v565 = &v694;
        v566 = 22;
        goto LABEL_1009;
      }

LABEL_1234:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v571 = &v694;
    v573 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
LABEL_1028:
    if (v558 != v561)
    {
      memmove(v561 + v571 + v562, v561 + v571, v558 - v561);
      v573 = HIBYTE(v694.__r_.__value_.__r.__words[2]);
      v563 = v558;
    }

    v572 = v562 + v563;
    if ((v573 & 0x80) == 0)
    {
      *(&v694.__r_.__value_.__s + 23) = v572 & 0x7F;
      goto LABEL_1033;
    }
  }

  v694.__r_.__value_.__l.__size_ = v572;
LABEL_1033:
  v571->__r_.__value_.__s.__data_[v572] = 0;
  if (v560)
  {
    memmove(v561 + v571, v559, v560);
  }

  if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s2.__r_.__value_.__l.__data_);
  }

LABEL_1037:
  v575 = *&__dst[16];
  v574 = *&__dst[8];
  *&__dst[40] = 0;
  v576 = (*&__dst[16] - *&__dst[8]) >> 3;
  if (v576 >= 3)
  {
    do
    {
      operator delete(*v574);
      v575 = *&__dst[16];
      v574 = (*&__dst[8] + 8);
      *&__dst[8] = v574;
      v576 = (*&__dst[16] - v574) >> 3;
    }

    while (v576 > 2);
  }

  if (v576 == 1)
  {
    v577 = 2048;
LABEL_1043:
    *&__dst[32] = v577;
  }

  else if (v576 == 2)
  {
    v577 = 4096;
    goto LABEL_1043;
  }

  if (v574 != v575)
  {
    do
    {
      v578 = *v574++;
      operator delete(v578);
    }

    while (v574 != v575);
    if (*&__dst[16] != *&__dst[8])
    {
      *&__dst[16] += (*&__dst[8] - *&__dst[16] + 7) & 0xFFFFFFFFFFFFFFF8;
    }
  }

  v113 = *__dst;
  if (*__dst)
  {
    operator delete(*__dst);
  }

LABEL_1050:
  ACFULogging::getLogInstance(v113);
  if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v579 = &v694;
  }

  else
  {
    v579 = v694.__r_.__value_.__r.__words[0];
  }

  v644 = "sGetNVRAMListFromKeyValPairs";
  v645 = v579;
  v643 = "BasebandNVRAM";
  ACFULogging::handleMessage();
  if (SHIBYTE(v702) < 0)
  {
    operator delete(v701);
  }

  v580 = v687;
  if (v687)
  {
    v581 = v688;
    v582 = v687;
    if (v688 == v687)
    {
LABEL_1064:
      v688 = v580;
      operator delete(v582);
      goto LABEL_1065;
    }

    while (1)
    {
      if (*(v581 - 1) < 0)
      {
        operator delete(*(v581 - 3));
        v583 = v581 - 6;
        if ((*(v581 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1059;
        }
      }

      else
      {
        v583 = v581 - 6;
        if ((*(v581 - 25) & 0x80000000) == 0)
        {
LABEL_1059:
          v581 = v583;
          if (v583 == v580)
          {
            goto LABEL_1063;
          }

          continue;
        }
      }

      operator delete(*v583);
      v581 = v583;
      if (v583 == v580)
      {
LABEL_1063:
        v582 = v687;
        goto LABEL_1064;
      }
    }
  }

LABEL_1065:
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v584 = off_1ED944170;
  if (!off_1ED944170)
  {
    v585 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v585);
    v697.__r_.__value_.__r.__words[0] = v585;
    v586 = operator new(0x20uLL);
    *v586 = &unk_1F5F05A00;
    v586[1] = 0;
    v586[2] = 0;
    v586[3] = v585;
    v587 = off_1ED944178;
    off_1ED944170 = v585;
    off_1ED944178 = v586;
    if (v587 && !atomic_fetch_add(&v587->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v587->__on_zero_shared)(v587);
      std::__shared_weak_count::__release_weak(v587);
    }

    v584 = off_1ED944170;
  }

  v588 = off_1ED944178;
  __s2.__r_.__value_.__r.__words[0] = v584;
  __s2.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  v589 = pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v590 = v584[1];
  if (!v590)
  {
LABEL_1078:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v591 = *(v590 + 8);
      if (v591 < 3)
      {
        break;
      }

      v590 = *v590;
      if (!v590)
      {
        goto LABEL_1078;
      }
    }

    if (v591 == 2)
    {
      break;
    }

    v590 = v590[1];
    if (!v590)
    {
      goto LABEL_1078;
    }
  }

  if (*(v590 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(__dst, v590[5], v590[6]);
  }

  else
  {
    *__dst = *(v590 + 5);
    *&__dst[16] = v590[7];
  }

  v592 = __dst[23];
  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v592 = *&__dst[8];
    v595 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v595 - *&__dst[8] >= 0x19)
    {
      v602 = *__dst;
      qmemcpy((*__dst + *&__dst[8]), "/sticky_nvram_items.plist", 25);
      v603 = v592 + 25;
      *&__dst[8] = v592 + 25;
      goto LABEL_1104;
    }

    v596 = 0x7FFFFFFFFFFFFFF7;
    v593 = *&__dst[8] + 25;
    if (0x7FFFFFFFFFFFFFF7 - (*&__dst[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__dst[8] + 25 - v595)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v594 = *__dst;
    if (v595 >= 0x3FFFFFFFFFFFFFF3)
    {
      v599 = 0;
    }

    else
    {
LABEL_1088:
      v597 = 2 * v595;
      if (v593 > 2 * v595)
      {
        v597 = v593;
      }

      if ((v597 | 7) == 0x17)
      {
        v598 = 25;
      }

      else
      {
        v598 = (v597 | 7) + 1;
      }

      if (v597 >= 0x17)
      {
        v596 = v598;
      }

      else
      {
        v596 = 23;
      }

      v599 = v595 == 22;
    }

    v589 = operator new(v596);
    v600 = v589;
    if (v592)
    {
      v589 = memmove(v589, v594, v592);
    }

    qmemcpy(&v600[v592], "/sticky_nvram_items.plist", 25);
    if (!v599)
    {
      operator delete(v594);
    }

    *&__dst[8] = v593;
    *&__dst[16] = v596 | 0x8000000000000000;
    *__dst = v600;
    v601 = &v600[v593];
  }

  else
  {
    if (__dst[23] < 0x17)
    {
      v593 = __dst[23] + 25;
      v594 = __dst;
      v595 = 22;
      goto LABEL_1088;
    }

    v602 = __dst;
    qmemcpy(&__dst[__dst[23]], "/sticky_nvram_items.plist", 25);
    v603 = v592 + 25;
    __dst[23] = (v592 + 25) & 0x7F;
LABEL_1104:
    v601 = &v602[v603];
  }

  *v601 = 0;
  *&v701 = *&__dst[8];
  v604 = *__dst;
  *(&v701 + 7) = *&__dst[15];
  v605 = __dst[23];
  memset(__dst, 0, 24);
  if (SHIBYTE(v696) < 0)
  {
    operator delete(v695);
    v695 = v604;
    *&v696 = v701;
    *(&v696 + 7) = *(&v701 + 7);
    HIBYTE(v696) = v605;
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  else
  {
    v695 = v604;
    *&v696 = v701;
    *(&v696 + 7) = *(&v701 + 7);
    HIBYTE(v696) = v605;
  }

  if (v588 && !atomic_fetch_add(&v588->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v588->__on_zero_shared)(v588);
    std::__shared_weak_count::__release_weak(v588);
  }

  ACFULogging::getLogInstance(v589);
  if (v696 >= 0)
  {
    v606 = &v695;
  }

  else
  {
    v606 = v695;
  }

  v644 = "sSaveStickyNVRAMItems";
  v645 = v606;
  v643 = "BasebandNVRAM";
  ACFULogging::handleMessage();
  v607 = *MEMORY[0x1E695E480];
  if (v696 >= 0)
  {
    v608 = &v695;
  }

  else
  {
    v608 = v695;
  }

  v609 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v608, 0x8000100u);
  v610 = cf;
  cf = v609;
  if (v610)
  {
    CFRelease(v610);
  }

  if (v609)
  {
    v611 = CFURLCreateWithString(v607, v609, 0);
    v612 = v690;
    v690 = v611;
    if (v612)
    {
      CFRelease(v612);
    }

    if (v611)
    {
      Mutable = CFDictionaryCreateMutable(v607, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v614 = v692;
      v692 = Mutable;
      if (v614)
      {
        CFRelease(v614);
      }

      if (!Mutable)
      {
        goto LABEL_1211;
      }

      if ((v694.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v615 = &v694;
      }

      else
      {
        v615 = v694.__r_.__value_.__r.__words[0];
      }

      v616 = CFStringCreateWithCString(v607, v615, 0x8000100u);
      v614 = v691;
      v691 = v616;
      if (v614)
      {
        CFRelease(v614);
      }

      if (v616)
      {
        CFDictionarySetValue(Mutable, @"NvramItems", v616);
        v617 = AMSupportWriteDictionarytoFileURL();
        v618 = v617;
        if (v617)
        {
          ACFULogging::getLogInstance(v617);
          v642 = &v695;
          if (v696 < 0)
          {
            v642 = v695;
          }

          v645 = v642;
          words = v618;
          v643 = "BasebandNVRAM";
          v644 = "sSaveStickyNVRAMItems";
          ACFULogging::handleMessage();
        }
      }

      else
      {
LABEL_1211:
        ACFULogging::getLogInstance(v614);
        v643 = "BasebandNVRAM";
        v644 = "sSaveStickyNVRAMItems";
        ACFULogging::handleMessage();
      }

LABEL_1134:
      CFRelease(v611);
    }

    else
    {
      ACFULogging::getLogInstance(v612);
      v643 = "BasebandNVRAM";
      v644 = "sSaveStickyNVRAMItems";
      ACFULogging::handleMessage();
    }
  }

  else
  {
    ACFULogging::getLogInstance(v610);
    v643 = "BasebandNVRAM";
    v644 = "sSaveStickyNVRAMItems";
    ACFULogging::handleMessage();
    v611 = v690;
    if (v690)
    {
      goto LABEL_1134;
    }
  }

  if (v691)
  {
    CFRelease(v691);
  }

  if (v692)
  {
    CFRelease(v692);
  }

  if (v609)
  {
    CFRelease(v609);
  }

  if (SHIBYTE(v694.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v694.__r_.__value_.__l.__data_);
    if (SHIBYTE(v696) < 0)
    {
      goto LABEL_1146;
    }

LABEL_1143:
    v619 = v656;
    if (!v656)
    {
      goto LABEL_1156;
    }

LABEL_1147:
    v620 = v657;
    v621 = v619;
    if (v657 == v619)
    {
LABEL_1155:
      v657 = v619;
      operator delete(v621);
      goto LABEL_1156;
    }

    while (1)
    {
      if (*(v620 - 1) < 0)
      {
        operator delete(*(v620 - 3));
        v622 = v620 - 6;
        if ((*(v620 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1150;
        }

LABEL_1153:
        operator delete(*v622);
        v620 = v622;
        if (v622 == v619)
        {
LABEL_1154:
          v621 = v656;
          goto LABEL_1155;
        }
      }

      else
      {
        v622 = v620 - 6;
        if (*(v620 - 25) < 0)
        {
          goto LABEL_1153;
        }

LABEL_1150:
        v620 = v622;
        if (v622 == v619)
        {
          goto LABEL_1154;
        }
      }
    }
  }

  if ((SHIBYTE(v696) & 0x80000000) == 0)
  {
    goto LABEL_1143;
  }

LABEL_1146:
  operator delete(v695);
  v619 = v656;
  if (v656)
  {
    goto LABEL_1147;
  }

LABEL_1156:
  v8 = 0;
LABEL_1157:
  v623 = v684;
  if (v684 != v655)
  {
    do
    {
      *&v627 = 0xAAAAAAAAAAAAAAAALL;
      *(&v627 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__dst = v627;
      *&__dst[16] = v627;
      if (*(v623 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(__dst, v623[4], v623[5]);
      }

      else
      {
        *__dst = *(v623 + 2);
        *&__dst[16] = v623[6];
      }

      v628 = v623[7];
      *&__dst[24] = v628;
      if (v628)
      {
        CFRelease(v628);
        *&__dst[24] = 0;
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
        v629 = v623[1];
        if (v629)
        {
          do
          {
LABEL_1171:
            v630 = v629;
            v629 = *v629;
          }

          while (v629);
          goto LABEL_1161;
        }
      }

      else
      {
        v629 = v623[1];
        if (v629)
        {
          goto LABEL_1171;
        }
      }

      do
      {
        v630 = v623[2];
        v101 = *v630 == v623;
        v623 = v630;
      }

      while (!v101);
LABEL_1161:
      v623 = v630;
    }

    while (v630 != v655);
  }

  v624 = v675;
  if (!v675)
  {
    goto LABEL_1183;
  }

  v625 = v676;
  v626 = v675;
  if (v676 != v675)
  {
    while (1)
    {
      if (*(v625 - 1) < 0)
      {
        operator delete(*(v625 - 3));
        v631 = v625 - 6;
        if ((*(v625 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1177;
        }

LABEL_1180:
        operator delete(*v631);
        v625 = v631;
        if (v631 == v624)
        {
LABEL_1181:
          v626 = v675;
          break;
        }
      }

      else
      {
        v631 = v625 - 6;
        if (*(v625 - 25) < 0)
        {
          goto LABEL_1180;
        }

LABEL_1177:
        v625 = v631;
        if (v631 == v624)
        {
          goto LABEL_1181;
        }
      }
    }
  }

  v676 = v624;
  operator delete(v626);
LABEL_1183:
  v632 = v678;
  if (v678)
  {
    v633 = v679;
    v634 = v678;
    if (v679 == v678)
    {
LABEL_1192:
      v679 = v632;
      operator delete(v634);
      goto LABEL_1193;
    }

    while (1)
    {
      if (*(v633 - 1) < 0)
      {
        operator delete(*(v633 - 3));
        v635 = v633 - 6;
        if ((*(v633 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1187;
        }
      }

      else
      {
        v635 = v633 - 6;
        if ((*(v633 - 25) & 0x80000000) == 0)
        {
LABEL_1187:
          v633 = v635;
          if (v635 == v632)
          {
            goto LABEL_1191;
          }

          continue;
        }
      }

      operator delete(*v635);
      v633 = v635;
      if (v635 == v632)
      {
LABEL_1191:
        v634 = v678;
        goto LABEL_1192;
      }
    }
  }

LABEL_1193:
  v636 = v681;
  if (v681)
  {
    v637 = v682;
    v638 = v681;
    if (v682 == v681)
    {
LABEL_1202:
      v682 = v636;
      operator delete(v638);
      goto LABEL_1203;
    }

    while (1)
    {
      if (*(v637 - 1) < 0)
      {
        operator delete(*(v637 - 3));
        v639 = v637 - 6;
        if ((*(v637 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1197;
        }
      }

      else
      {
        v639 = v637 - 6;
        if ((*(v637 - 25) & 0x80000000) == 0)
        {
LABEL_1197:
          v637 = v639;
          if (v639 == v636)
          {
            goto LABEL_1201;
          }

          continue;
        }
      }

      operator delete(*v639);
      v637 = v639;
      if (v639 == v636)
      {
LABEL_1201:
        v638 = v681;
        goto LABEL_1202;
      }
    }
  }

LABEL_1203:
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(v685);
  v640 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1E53273A0()
{
  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  JUMPOUT(0x1E5327524);
}

void sub_1E53273BC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x1E532780CLL);
}

void sub_1E53273D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  __cxa_end_catch();
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E5327524);
}

void sub_1E5327458(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (*(v2 - 153) < 0)
    {
      operator delete(*(v2 - 176));
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1E532780CLL);
}

void sub_1E5327508()
{
  if (*(v0 - 201) < 0)
  {
    operator delete(*(v0 - 224));
  }

  JUMPOUT(0x1E5327794);
}

void sub_1E5327520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53, uint64_t a54, uint64_t a55, void **a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::deque<char>::~deque[abi:ne200100](v72 - 224);
  if (*(v72 - 105) < 0)
  {
    operator delete(*(v72 - 128));
  }

  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a65);
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a68);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a69);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a70);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a71);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a24);
  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a53);
  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a56);
  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a59);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(a63);
  _Unwind_Resume(a1);
}

uint64_t sGetNVRAMKeyValPairs(void **a1, uint64_t a2)
{
  v69 = a2;
  v2 = a1;
  memset(v77, 0, 32);
  *v76 = 0u;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v75 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  v72[1] = 0xAAAAAAAAAAAAAAAALL;
  v73 = 0xAAAAAAAAAAAAAALL;
  v72[0] = 0xAAAAAAAAAAAAAA00;
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    a1 = *a1;
    size = v2->__r_.__value_.__l.__size_;
  }

  else
  {
    size = *(a1 + 23);
  }

  v5 = a1 + size;
  v6 = memchr(a1, 32, size);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  if (v7 == v5 || v8 == v5)
  {
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    do
    {
      v12 = *v8;
      if (v12 != 32)
      {
        *v7++ = v12;
      }

      ++v8;
    }

    while (v8 != v5);
    LOBYTE(v3) = *(&v2->__r_.__value_.__s + 23);
    if ((v3 & 0x80) != 0)
    {
LABEL_20:
      v13 = v2->__r_.__value_.__l.__size_;
      v10 = (v2->__r_.__value_.__r.__words[0] + v13);
      v11 = &v7[-v2->__r_.__value_.__r.__words[0]];
      if (v13 < v11)
      {
LABEL_21:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_14;
    }
  }

  v10 = v2 + v3;
  v11 = v7 - v2;
  if (v3 < (v7 - v2))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v10 - v7 == -1)
  {
    if ((v3 & 0x80) != 0)
    {
      v14 = v2->__r_.__value_.__r.__words[0];
      v2->__r_.__value_.__l.__size_ = v11;
      *(v14 + v11) = 0;
    }

    else
    {
      *(&v2->__r_.__value_.__s + 23) = v11 & 0x7F;
      v2->__r_.__value_.__s.__data_[v11] = 0;
    }
  }

  else
  {
    std::string::__erase_external_with_move(v2, v11, v10 - v7);
  }

  v15 = 0;
  v16 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  do
  {
    v17 = v2;
    v18 = v16;
    if (v15 >= v16)
    {
      goto LABEL_208;
    }

    v19 = v16 - v15;
    if ((v16 - v15) < 2)
    {
      goto LABEL_41;
    }

LABEL_31:
    v20 = &v18[v17];
    v21 = v17 + v15;
    while (1)
    {
      v22 = memchr(v21, 39, v19 - 1);
      if (!v22)
      {
        goto LABEL_41;
      }

      if (*v22 == 11303)
      {
        break;
      }

      v21 = v22 + 1;
      v19 = v20 - v21;
      if (v20 - v21 < 2)
      {
        goto LABEL_41;
      }
    }

    if (v22 == v20 || (v23 = v22 - v17, v23 == -1))
    {
LABEL_41:
      if ((v16 & 0x80000000) == 0)
      {
        v23 = v16 - 1;
LABEL_39:
        v24 = v2;
        v25 = v16 - v15;
        if (v16 <= v15)
        {
          goto LABEL_210;
        }

        goto LABEL_45;
      }

      v23 = v2->__r_.__value_.__l.__size_ - 1;
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v24 = v2->__r_.__value_.__r.__words[0];
    v26 = v2->__r_.__value_.__l.__size_;
    v25 = v26 - v15;
    if (v26 <= v15)
    {
LABEL_210:
      v28 = 1005;
LABEL_211:
      if (SHIBYTE(v73) < 0)
      {
        goto LABEL_217;
      }

      goto LABEL_212;
    }

LABEL_45:
    v27 = memchr(v24 + v15, 61, v25);
    v28 = 1005;
    if (!v27)
    {
      goto LABEL_211;
    }

    v29 = (v27 - v24);
    if (v27 - v24 == -1)
    {
      goto LABEL_211;
    }

    if ((v16 & 0x80000000) != 0)
    {
      v32 = v2->__r_.__value_.__l.__size_;
      if (v32 < v15)
      {
LABEL_221:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v30 = v2->__r_.__value_.__r.__words[0];
      if (&v32[-v15] >= &v29[-v15])
      {
        v31 = &v29[-v15];
      }

      else
      {
        v31 = &v32[-v15];
      }

      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_222:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v30 = v2;
      if (v15 > v16)
      {
        goto LABEL_221;
      }

      if (v16 - v15 >= &v29[-v15])
      {
        v31 = &v29[-v15];
      }

      else
      {
        v31 = v16 - v15;
      }

      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_222;
      }
    }

    if (v31 >= 0x17)
    {
      if ((v31 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v31 | 7) + 1;
      }

      p_dst = operator new(v36);
      *(&__dst + 1) = v31;
      v71 = v36 | 0x8000000000000000;
      *&__dst = p_dst;
LABEL_71:
      memmove(p_dst, v30 + v15, v31);
      *(p_dst + v31) = 0;
      if ((SHIBYTE(v75) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    HIBYTE(v71) = v31;
    p_dst = &__dst;
    if (v31)
    {
      goto LABEL_71;
    }

    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

LABEL_72:
    operator delete(__p[0]);
LABEL_62:
    *__p = __dst;
    v75 = v71;
    v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(__p);
    if (v34 == &qword_1ED949BF8)
    {
      v35 = HIBYTE(v75);
      if (v75 < 0)
      {
        v35 = __p[1];
      }

      if (v35 > 8)
      {
        v28 = 1005;
        if (SHIBYTE(v73) < 0)
        {
          goto LABEL_217;
        }

LABEL_212:
        if (SHIBYTE(v75) < 0)
        {
          goto LABEL_218;
        }

LABEL_213:
        if (SHIBYTE(v77[3]) < 0)
        {
          goto LABEL_219;
        }

LABEL_214:
        if (SHIBYTE(v77[0]) < 0)
        {
          goto LABEL_220;
        }

        return v28;
      }
    }

    else if (__p != (v34 + 7))
    {
      v37 = *(v34 + 79);
      if (SHIBYTE(v75) < 0)
      {
        if (v37 >= 0)
        {
          v38 = v34 + 7;
        }

        else
        {
          v38 = v34[7];
        }

        if (v37 >= 0)
        {
          v39 = *(v34 + 79);
        }

        else
        {
          v39 = v34[8];
        }

        std::string::__assign_no_alias<false>(__p, v38, v39);
      }

      else if ((*(v34 + 79) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__p, v34[7], v34[8]);
      }

      else
      {
        *__p = *(v34 + 7);
        v75 = v34[9];
      }
    }

    v40 = v29 + 2;
    v41 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
    if ((v41 & 0x8000000000000000) != 0)
    {
      v41 = v2->__r_.__value_.__l.__size_;
      if (v41 < v40)
      {
LABEL_223:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v42 = v2->__r_.__value_.__r.__words[0];
    }

    else
    {
      v42 = v2;
      if (v40 > v41)
      {
        goto LABEL_223;
      }
    }

    v43 = v41 - v40;
    if (v43 >= v23 - v29 - 2)
    {
      v44 = v23 - v29 - 2;
    }

    else
    {
      v44 = v43;
    }

    if (v44 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v44 >= 0x17)
    {
      if ((v44 | 7) == 0x17)
      {
        v58 = 25;
      }

      else
      {
        v58 = (v44 | 7) + 1;
      }

      v45 = operator new(v58);
      *(&__dst + 1) = v44;
      v71 = v58 | 0x8000000000000000;
      *&__dst = v45;
LABEL_137:
      memmove(v45, &v40[v42], v44);
      *(v45 + v44) = 0;
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_138;
    }

    HIBYTE(v71) = v44;
    v45 = &__dst;
    if (v44)
    {
      goto LABEL_137;
    }

    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_138:
    operator delete(v72[0]);
LABEL_97:
    *v72 = __dst;
    v73 = v71;
    HIBYTE(v71) = 8;
    strcpy(&__dst, "bootargs");
    v46 = HIBYTE(v75);
    if (v75 >= 0)
    {
      v47 = HIBYTE(v75);
    }

    else
    {
      v47 = __p[1];
    }

    if (v75 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = __p[0];
    }

    if (v47 >= 8)
    {
      v49 = 8;
    }

    else
    {
      v49 = v47;
    }

    v50 = memcmp(v48, &__dst, v49);
    if (v47 != 8 || v50)
    {
      goto LABEL_178;
    }

    v51 = HIBYTE(v73);
    v52 = v72;
    if (v73 < 0)
    {
      v52 = v72[0];
      v51 = v72[1];
    }

    if (!v51)
    {
      goto LABEL_178;
    }

    v53 = v52;
    if (v51 < 8)
    {
LABEL_204:
      v67 = v52 + v51;
      do
      {
        if (*v53 == 44)
        {
          *v53 = 32;
        }

        ++v53;
      }

      while (v53 != v67);
      goto LABEL_177;
    }

    if (v51 < 0x10)
    {
      v54 = 0;
      goto LABEL_114;
    }

    v54 = v51 & 0xFFFFFFFFFFFFFFF0;
    v59 = v52 + 7;
    v60 = v51 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v61.i64[0] = 0x2C2C2C2C2C2C2C2CLL;
      v61.i64[1] = 0x2C2C2C2C2C2C2C2CLL;
      v62 = vceqq_s8(*(v59 - 7), v61);
      if (v62.i8[0])
      {
        *(v59 - 7) = 32;
        if ((v62.i8[1] & 1) == 0)
        {
LABEL_145:
          if ((v62.i8[2] & 1) == 0)
          {
            goto LABEL_146;
          }

          goto LABEL_162;
        }
      }

      else if ((v62.i8[1] & 1) == 0)
      {
        goto LABEL_145;
      }

      *(v59 - 6) = 32;
      if ((v62.i8[2] & 1) == 0)
      {
LABEL_146:
        if ((v62.i8[3] & 1) == 0)
        {
          goto LABEL_147;
        }

        goto LABEL_163;
      }

LABEL_162:
      *(v59 - 5) = 32;
      if ((v62.i8[3] & 1) == 0)
      {
LABEL_147:
        if ((v62.i8[4] & 1) == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_164;
      }

LABEL_163:
      *(v59 - 4) = 32;
      if ((v62.i8[4] & 1) == 0)
      {
LABEL_148:
        if ((v62.i8[5] & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_165;
      }

LABEL_164:
      *(v59 - 3) = 32;
      if ((v62.i8[5] & 1) == 0)
      {
LABEL_149:
        if ((v62.i8[6] & 1) == 0)
        {
          goto LABEL_150;
        }

        goto LABEL_166;
      }

LABEL_165:
      *(v59 - 2) = 32;
      if ((v62.i8[6] & 1) == 0)
      {
LABEL_150:
        if ((v62.i8[7] & 1) == 0)
        {
          goto LABEL_151;
        }

        goto LABEL_167;
      }

LABEL_166:
      *(v59 - 1) = 32;
      if ((v62.i8[7] & 1) == 0)
      {
LABEL_151:
        if ((v62.i8[8] & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_168;
      }

LABEL_167:
      *v59 = 32;
      if ((v62.i8[8] & 1) == 0)
      {
LABEL_152:
        if ((v62.i8[9] & 1) == 0)
        {
          goto LABEL_153;
        }

        goto LABEL_169;
      }

LABEL_168:
      v59[1] = 32;
      if ((v62.i8[9] & 1) == 0)
      {
LABEL_153:
        if ((v62.i8[10] & 1) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_170;
      }

LABEL_169:
      v59[2] = 32;
      if ((v62.i8[10] & 1) == 0)
      {
LABEL_154:
        if ((v62.i8[11] & 1) == 0)
        {
          goto LABEL_155;
        }

        goto LABEL_171;
      }

LABEL_170:
      v59[3] = 32;
      if ((v62.i8[11] & 1) == 0)
      {
LABEL_155:
        if ((v62.i8[12] & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_172;
      }

LABEL_171:
      v59[4] = 32;
      if ((v62.i8[12] & 1) == 0)
      {
LABEL_156:
        if ((v62.i8[13] & 1) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_173;
      }

LABEL_172:
      v59[5] = 32;
      if ((v62.i8[13] & 1) == 0)
      {
LABEL_157:
        if (v62.i8[14])
        {
          goto LABEL_174;
        }

        goto LABEL_158;
      }

LABEL_173:
      v59[6] = 32;
      if (v62.i8[14])
      {
LABEL_174:
        v59[7] = 32;
        if ((v62.i8[15] & 1) == 0)
        {
          goto LABEL_142;
        }

        goto LABEL_175;
      }

LABEL_158:
      if ((v62.i8[15] & 1) == 0)
      {
        goto LABEL_142;
      }

LABEL_175:
      v59[8] = 32;
LABEL_142:
      v59 += 16;
      v60 -= 16;
    }

    while (v60);
    if (v51 == v54)
    {
      goto LABEL_177;
    }

    if ((v51 & 8) == 0)
    {
      v53 = v52 + v54;
      goto LABEL_204;
    }

LABEL_114:
    v53 = v52 + (v51 & 0xFFFFFFFFFFFFFFF8);
    v55 = v54 - (v51 & 0xFFFFFFFFFFFFFFF8);
    v56 = v52 + v54 + 3;
    while (2)
    {
      v57 = vceq_s8(*(v56 - 3), 0x2C2C2C2C2C2C2C2CLL);
      if (v57.i8[0])
      {
        *(v56 - 3) = 32;
        if (v57.i8[1])
        {
          goto LABEL_126;
        }

LABEL_118:
        if ((v57.i8[2] & 1) == 0)
        {
          goto LABEL_119;
        }

LABEL_127:
        *(v56 - 1) = 32;
        if (v57.i8[3])
        {
          goto LABEL_128;
        }

LABEL_120:
        if ((v57.i8[4] & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_129:
        v56[1] = 32;
        if (v57.i8[5])
        {
          goto LABEL_130;
        }

LABEL_122:
        if ((v57.i8[6] & 1) == 0)
        {
          goto LABEL_123;
        }

LABEL_131:
        v56[3] = 32;
        if (v57.i8[7])
        {
LABEL_132:
          v56[4] = 32;
        }
      }

      else
      {
        if ((v57.i8[1] & 1) == 0)
        {
          goto LABEL_118;
        }

LABEL_126:
        *(v56 - 2) = 32;
        if (v57.i8[2])
        {
          goto LABEL_127;
        }

LABEL_119:
        if ((v57.i8[3] & 1) == 0)
        {
          goto LABEL_120;
        }

LABEL_128:
        *v56 = 32;
        if (v57.i8[4])
        {
          goto LABEL_129;
        }

LABEL_121:
        if ((v57.i8[5] & 1) == 0)
        {
          goto LABEL_122;
        }

LABEL_130:
        v56[2] = 32;
        if (v57.i8[6])
        {
          goto LABEL_131;
        }

LABEL_123:
        if (v57.i8[7])
        {
          goto LABEL_132;
        }
      }

      v56 += 8;
      v55 += 8;
      if (v55)
      {
        continue;
      }

      break;
    }

    if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_204;
    }

LABEL_177:
    v46 = HIBYTE(v75);
LABEL_178:
    if (SHIBYTE(v77[0]) < 0)
    {
      if (v46 >= 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      if (v46 >= 0)
      {
        v64 = v46;
      }

      else
      {
        v64 = __p[1];
      }

      std::string::__assign_no_alias<false>(v76, v63, v64);
    }

    else if (v46 < 0)
    {
      std::string::__assign_no_alias<true>(v76, __p[0], __p[1]);
    }

    else
    {
      *v76 = *__p;
      v77[0] = v75;
    }

    if (SHIBYTE(v77[3]) < 0)
    {
      if (v73 >= 0)
      {
        v65 = v72;
      }

      else
      {
        v65 = v72[0];
      }

      if (v73 >= 0)
      {
        v66 = HIBYTE(v73);
      }

      else
      {
        v66 = v72[1];
      }

      std::string::__assign_no_alias<false>(&v77[1], v65, v66);
    }

    else if (v73 < 0)
    {
      std::string::__assign_no_alias<true>(&v77[1], v72[0], v72[1]);
    }

    else
    {
      *&v77[1] = *v72;
      v77[3] = v73;
    }

    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v69, v76);
    v15 = v23 + 2;
    v16 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  }

  while ((v16 & 0x8000000000000000) == 0);
LABEL_29:
  v18 = v2->__r_.__value_.__l.__size_;
  if (v15 < v18)
  {
    v17 = v2->__r_.__value_.__r.__words[0];
    v19 = &v18[-v15];
    if (&v18[-v15] >= 2)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_208:
  v28 = 0;
  if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_212;
  }

LABEL_217:
  operator delete(v72[0]);
  if ((SHIBYTE(v75) & 0x80000000) == 0)
  {
    goto LABEL_213;
  }

LABEL_218:
  operator delete(__p[0]);
  if ((SHIBYTE(v77[3]) & 0x80000000) == 0)
  {
    goto LABEL_214;
  }

LABEL_219:
  operator delete(v77[1]);
  if (SHIBYTE(v77[0]) < 0)
  {
LABEL_220:
    operator delete(v76[0]);
  }

  return v28;
}

void sub_1E5328128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      std::pair<std::string,std::string>::~pair(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  std::pair<std::string,std::string>::~pair(&a27);
  _Unwind_Resume(a1);
}

uint64_t saveNVRAMFile(const __CFDictionary *a1, ACFURTKitNVRMGenerator **a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(&v20, 0, sizeof(v20));
  memset(v24, 170, sizeof(v24));
  *&v24[456] = 0;
  v22[1] = 0;
  *&v24[408] = &unk_1F5F01790;
  std::ios_base::init(&v24[408], v24);
  *&v24[552] = -1;
  *&v24[544] = 0;
  v4 = MEMORY[0x1E6926FC0](v24);
  if (a1 && *a2)
  {
    Value = CFDictionaryGetValue(a1, @"NVRAMOutputPath");
    v6 = Value;
    if (!Value)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      CFRetain(v6);
    }

    else
    {
      v6 = 0;
    }

    v21 = v6;
    v9 = CFGetTypeID(v6);
    TypeID = CFStringGetTypeID();
    if (v9 == TypeID)
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      v12 = std::string::__assign_external(&v20, CStringPtr);
      ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage();
      v13 = ACFURTKitNVRMGenerator::copy(*a2);
      v14 = std::filebuf::open();
      v15 = (v22 + *(v22[0] - 24));
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15->__rdstate_ | 4;
      }

      std::ios_base::clear(v15, v16);
      if (*&v24[120])
      {
        CFDataGetBytePtr(v13);
        CFDataGetLength(v13);
        std::ostream::write();
        if (!std::filebuf::close())
        {
          std::ios_base::clear((v22 + *(v22[0] - 24)), *&v24[*(v22[0] - 24) + 8] | 4);
        }

        v8 = 0;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        ACFULogging::getLogInstance(v17);
        ACFULogging::handleMessage();
        v8 = 1;
        if (v13)
        {
LABEL_16:
          CFRelease(v13);
        }
      }
    }

    else
    {
      ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage();
      v8 = 1;
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v6 = 0;
    v8 = 1;
  }

LABEL_17:
  MEMORY[0x1E6926FD0](v24);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](&v24[408]);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (v6)
  {
LABEL_21:
    CFRelease(v6);
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1E5328580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(uint64_t a1, char *__s, const char **a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, __s, v7);
  }

  *(v8 + v7) = 0;
  v10 = *a3;
  v11 = strlen(*a3);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *(a1 + 32) = v12;
    *(a1 + 40) = v14 | 0x8000000000000000;
    *(a1 + 24) = v13;
  }

  else
  {
    v13 = (a1 + 24);
    *(a1 + 47) = v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  memmove(v13, v10, v12);
LABEL_19:
  *(v13 + v12) = 0;
  return a1;
}

void sub_1E5328734(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v12 = *(a2 + 24);
      *(v5 + 40) = *(a2 + 5);
      *(v5 + 24) = v12;
    }

    v13 = (v5 + 48);
    *(a1 + 8) = v13;
LABEL_18:
    *(a1 + 8) = v13;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
  if (v7 + 1 > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v9 = 2 * v8;
  if (2 * v8 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  if (v8 >= 0x2AAAAAAAAAAAAAALL)
  {
    v10 = 0x555555555555555;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    if (v10 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = operator new(48 * v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = &v11[48 * v7];
  v18 = v14;
  v19 = v14;
  v20 = &v11[48 * v10];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v14, *a2, *(a2 + 1));
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *a2;
    v14->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    *&v14[1].__r_.__value_.__l.__data_ = *(a2 + 24);
    v14[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  }

  v13 = v14 + 2;
  v15 = *(a1 + 8) - *a1;
  v16 = v18 - v15;
  memcpy(v18 - v15, *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 8) = v19 + 2;
  *(a1 + 16) = v20;
  if (!v17)
  {
    goto LABEL_18;
  }

  operator delete(v17);
  *(a1 + 8) = v13;
}

void sub_1E532891C(_Unwind_Exception *a1, std::__split_buffer<std::pair<std::string, std::string>> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&a10);
    _Unwind_Resume(a1);
  }

  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}