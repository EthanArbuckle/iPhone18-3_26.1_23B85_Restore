void sub_1E52B5C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, uint64_t a38, const void *a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, const void *a45)
{
  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a45);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::CreateValidationBlob(unint64_t *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    dispatch_once(&BBUpdaterCommon::getECID(void)::sOnce, &__block_literal_global_18);
  }

  v44 = BBUpdaterCommon::getECID(void)::ecid;
  v42 = 17433507;
  v43 = 4;
  v45[0] = 0;
  v45[2] = 512;
  *&v46[8] = 0u;
  v45[1] = 12;
  *v46 = xmmword_1E5391A80;
  *&v46[16] = 512;
  v41[0] = v45;
  v41[1] = 0xAAAAAAAAAAAA0002;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v2;
  v40 = v2;
  v37 = v2;
  v38 = v2;
  v35 = v2;
  v36 = v2;
  v33 = v2;
  v34 = v2;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v3 = a1[1] - *a1;
  v10[0] = *a1;
  v10[1] = v3;
  memset(v11, 170, sizeof(v11));
  v7 = DERDecodeItem(v10, v11);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  v7 = DEREncodeItemIntoVector(0xCuLL, 6uLL, "kNonce", &v21);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  *&v37 = v21;
  *(&v37 + 1) = v22 - v21;
  v38 = *&v11[1];
  v7 = DEREncodeSequenceIntoVector(0x2000000000000010, &v37, v41, &v27);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  v7 = DEREncodeItemIntoVector(0xCuLL, 0x11uLL, "kDeviceIdentifier", &v30);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  v7 = DEREncodeItemIntoVector(4uLL, 8uLL, &v44, &v24);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  *&v39 = v30;
  *(&v39 + 1) = v31 - v30;
  *&v40 = v24;
  *(&v40 + 1) = v25 - v24;
  v7 = DEREncodeSequenceIntoVector(0x2000000000000010, &v39, v41, &v18);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  *&v35 = v18;
  *(&v35 + 1) = v19 - v18;
  *&v36 = v27;
  *(&v36 + 1) = v28 - v27;
  v7 = DEREncodeSequenceIntoVector(0x2000000000000010, &v35, v41, &v15);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  v7 = DEREncodeItemIntoVector(0xA000000000000005, v16 - v15, v15, &__p);
  if (v7)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  *&v33 = &v42;
  *(&v33 + 1) = 5;
  *&v34 = __p;
  *(&v34 + 1) = v13 - __p;
  v7 = DEREncodeSequenceIntoVector(0x2000000000000010, &v33, v41, a1);
  if (!v7)
  {
    goto LABEL_30;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
LABEL_50:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

LABEL_29:
  _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v4, v5, v6, "DR_Success == ret");
LABEL_30:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "CreateValidationBlob DR %d\n", v4, v5, v6, v7);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v7)
  {
    result = 11;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E52B6408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
    v38 = a21;
    if (!a21)
    {
LABEL_3:
      v39 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v38 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v38);
  v39 = a24;
  if (!a24)
  {
LABEL_4:
    v40 = a27;
    if (!a27)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v39);
  v40 = a27;
  if (!a27)
  {
LABEL_5:
    v41 = a30;
    if (!a30)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v40);
  v41 = a30;
  if (!a30)
  {
LABEL_6:
    v42 = a33;
    if (!a33)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v41);
  v42 = a33;
  if (!a33)
  {
LABEL_7:
    v43 = a36;
    if (!a36)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v42);
  v43 = a36;
  if (!a36)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(v43);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::ValidatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = 0;
  v25 = operator new(0x20uLL);
  v26 = xmmword_1E5390FF0;
  strcpy(v25, "ValidatePersoDeviceRequest.bin");
  __p = 0;
  v23 = 0;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = v6 - *a2;
  if (v6 != *a2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 - *a2);
    v10 = &v9[v8];
    __p = v9;
    v24 = &v9[v8];
    memcpy(v9, v7, v8);
    v23 = v10;
  }

  v11 = *(a1 + 40);
  if (v11 >= *(a1 + 48))
  {
    v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v25, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v25, &__p);
    v12 = v11 + 2;
    *(a1 + 40) = v11 + 2;
  }

  *(a1 + 40) = v12;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  v16 = (*(**a3 + 80))(*a3, a2, a2);
  if (v16)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kBBUReturnSuccess == ret");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete ValidatePerso command\n", v17, v18, v19, v21);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ValidatePersoDevice %d\n", v13, v14, v15, v16);
  return v16;
}

void sub_1E52B6700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::SendReceiptServer(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    v8 = 0;
    v7 = 0;
    cf = 0;
    keys = 0;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - *a2);
    memcpy(v7, v5, v6);
    v8 = operator new(v6);
    memcpy(v8, v7, v6);
    cf = 0;
    v9 = operator new(v6);
    v10 = &v9[v6];
    keys = v9;
    v47 = &v9[v6];
    memcpy(v9, v7, v6);
    v46 = v10;
  }

  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    cf = values[0];
  }

  if (keys)
  {
    v46 = keys;
    operator delete(keys);
  }

  v11 = cf;
  v38 = cf;
  cf = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  keys = @"Command";
  v46 = @"DATA";
  v47 = @"SessionId";
  values[0] = @"SendReceipt";
  values[1] = v11;
  values[2] = *(a1 + 16);
  v15 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 3);
  if (v15)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "kBBUReturnSuccess == ret");
    v19 = 0;
    if (gBBULogMaskGet(void)::once != -1)
    {
LABEL_40:
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }
  }

  else
  {
    v35 = 0;
    v36 = operator new(0x20uLL);
    v37 = xmmword_1E5390FF0;
    strcpy(v36, "SendReceiptServerRequest.plist");
    __p = 0;
    v34 = 0;
    v20 = *(a1 + 40);
    if (v20 >= *(a1 + 48))
    {
      v21 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v36, &__p);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v36, &__p);
      v21 = v20 + 2;
      *(a1 + 40) = v20 + 2;
    }

    *(a1 + 40) = v21;
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    eUICC::Perso::PersoImplementation::PostDataSync(&cf, a1, &v39);
    v25 = cf;
    v19 = v32;
    v42 = cf;
    v43 = v32;
    if (cf)
    {
      v29 = operator new(0x20uLL);
      v30 = xmmword_1E5391A90;
      strcpy(v29, "SendReceiptServerResponse.plist");
      (*(*v25 + 40))(&v28, v25);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v29, &v28);
      if (v28)
      {
        CFRelease(v28);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      v15 = 0;
      *(a2 + 8) = *a2;
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v22, v23, v24, "response");
      v15 = 53;
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_40;
      }
    }
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "SendReceiptServer %d\n", v16, v17, v18, v15);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1E52B6C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E52B6D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (!a27)
  {
    JUMPOUT(0x1E52B6CF8);
  }

  JUMPOUT(0x1E52B6CF0);
}

uint64_t eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(const void **keys, const void **values, CFIndex numValues)
{
  v40 = 0;
  v41 = 0;
  v3 = *MEMORY[0x1E695E480];
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, numValues, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v39 = v7;
  if (v7)
  {
    error = 0;
    v37 = &v41;
    v11 = CFPropertyListCreateData(v3, v7, kCFPropertyListXMLFormat_v1_0, 0, &error);
    v40 = v11;
    v12 = *v37;
    if (error)
    {
      *v37 = error;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v37 = 0;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v12);
LABEL_12:
    if (v11)
    {
      if (ctu::cf::assign())
      {
        v16 = 0;
        goto LABEL_32;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "success");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to assign output data\n", v28, v29, v30, v33);
LABEL_31:
      v16 = 11;
LABEL_32:
      CFRelease(v7);
      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_34;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "outData");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(1, v7, v20);
    v21 = v38;
    v22 = error;
    ctu::cf::show(1, v41, v23);
    p_error = &error;
    if (v21 < 0)
    {
      LOBYTE(p_error) = v22;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to serialize dictionary %s error %s\n", v24, v25, v26, p_error);
    if (v35 < 0)
    {
      operator delete(__p);
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(error);
    goto LABEL_31;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v4, v5, v6, "inDict");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create dictionary\n", v13, v14, v15, v32);
  v16 = 11;
LABEL_34:
  if (v41)
  {
    CFRelease(v41);
  }

  return v16;
}

void sub_1E52B70F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v25 - 72));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v25 - 64));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v25 - 56));
  _Unwind_Resume(a1);
}

void *eUICC::Perso::PersoImplementation::PostDataSync(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 3) = 850045863;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_1F5F008D8;
  v33 = v6;
  v34 = v6;
  std::mutex::lock((v6 + 24));
  v7 = *(v6 + 34);
  if ((v7 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  *(v6 + 34) = v7 | 2;
  std::mutex::unlock((v6 + 24));
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v8 = a2[3];
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  cf[1] = 0;
  cf[2] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v28, v29);
  (*(*v31 + 8))(v31, *a2);
  v9 = v31;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v33, &v28);
  (*(*v9 + 16))(v9, v28);
  if (v28)
  {
    _Block_release(v28);
  }

  (*(*v31 + 96))(v31, 60.0);
  v10 = v31;
  v11 = a2[1];
  cf[0] = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  (*(*v10 + 88))(v10, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  (*(*v31 + 56))(v31, a3);
  __p[1] = 0;
  v26 = 0;
  __p[0] = 0;
  (*(*v31 + 40))(v31, __p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v33;
  v33 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v12, &v24);
  if (v12 && !atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  if ((*(*v24 + 16))(v24) == 1 && (*(*v24 + 24))(v24) == 200)
  {
    *a1 = v24;
    goto LABEL_26;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v13 = (*(*v24 + 16))(v24);
  (*(*v24 + 24))(v24);
  (*(*v24 + 32))(v24);
  (*(*v24 + 72))(&v23);
  ctu::cf::show(&v28, v23, v14);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "result %d code %d raw_error %ld error %s\n", v15, v16, v17, v13);
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    v18 = v23;
    if (!v23)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(v28);
  v18 = v23;
  if (v23)
  {
LABEL_22:
    CFRelease(v18);
  }

LABEL_23:
  *a1 = 0;
  *(a1 + 8) = 0;
  v19 = *(&v24 + 1);
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_26:
  v20 = v32;
  if (v32 && !atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v33;
  if (v33 && !atomic_fetch_add(v33 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v21 + 16))(v21);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v34);
}

void sub_1E52B7740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v30 - 80);
  v32 = *(v30 - 64);
  if (v32)
  {
    if (!atomic_fetch_add(v32 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v32 + 16))(v32);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v30 - 56));
  _Unwind_Resume(a1);
}

void eUICC::Perso::PersoImplementation::logTransactionCFData(uint64_t a1, __int128 *a2, CFDataRef *a3)
{
  if (*a3)
  {
    BytePtr = CFDataGetBytePtr(*a3);
    Length = CFDataGetLength(*a3);
    v14 = 0;
    v15 = 0;
    __p = 0;
    if (Length)
    {
      if (Length < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v8 = Length;
      v9 = operator new(Length);
      v10 = &v9[v8];
      __p = v9;
      v15 = &v9[v8];
      memcpy(v9, BytePtr, v8);
      v14 = v10;
    }

    v11 = *(a1 + 40);
    if (v11 >= *(a1 + 48))
    {
      v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, &__p);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), a2, &__p);
      v12 = v11 + 2;
      *(a1 + 40) = v11 + 2;
    }

    *(a1 + 40) = v12;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }
}

void sub_1E52B798C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(uint64_t *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = 0;
  v48 = 0;
  v9 = *a1;
  if (!*a1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", a6, a7, a8, "inData");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create data\n", v17, v18, v19, v41);
    goto LABEL_25;
  }

  v11 = *MEMORY[0x1E695E480];
  error = 0;
  v45 = &v48;
  v15 = CFPropertyListCreateWithData(v11, v9, 0, 0, &error);
  v47 = v15;
  v16 = *v45;
  if (error)
  {
    *v45 = error;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v45 = 0;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v16);
LABEL_12:
  if (!v15)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "outPlist");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(1, *a1, v26);
    v27 = v46;
    v28 = error;
    ctu::cf::show(&__p, v48, v29);
    p_error = &error;
    if (v27 < 0)
    {
      LOBYTE(p_error) = v28;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to deserialize dictionary %s error %s\n", v30, v31, v32, p_error);
    if (v43 < 0)
    {
      operator delete(__p);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v46 & 0x80000000) == 0)
    {
LABEL_25:
      v34 = 11;
      goto LABEL_40;
    }

    operator delete(error);
    goto LABEL_25;
  }

  v20 = CFGetTypeID(v15);
  if (v20 != CFDictionaryGetTypeID())
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v21, v22, v23, "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(&error, v15, v35);
    if (v46 >= 0)
    {
      v39 = &error;
    }

    else
    {
      LOBYTE(v39) = error;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Deserialized plist data is not a dictionary: %s\n", v36, v37, v38, v39);
    if (v46 < 0)
    {
      operator delete(error);
    }

    v34 = 11;
    goto LABEL_39;
  }

  v24 = CFGetTypeID(v15);
  if (v24 == CFDictionaryGetTypeID())
  {
    CFRetain(v15);
    v25 = *a2;
    *a2 = v15;
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v25 = *a2;
  *a2 = 0;
  if (v25)
  {
LABEL_37:
    CFRelease(v25);
  }

LABEL_38:
  v34 = 0;
LABEL_39:
  CFRelease(v15);
LABEL_40:
  if (v48)
  {
    CFRelease(v48);
  }

  return v34;
}

void sub_1E52B7D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v24 - 40));
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

void sub_1E52B7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v8 - 48));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1E52B7E40(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v1 - 48));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v1 - 40));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef cf)
{
  if (!cf)
  {
LABEL_4:
    v5 = *a1;
    *a1 = cf;
    if (!v5)
    {
      return a1;
    }

    goto LABEL_7;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFDataGetTypeID())
  {
    CFRetain(cf);
    goto LABEL_4;
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
LABEL_7:
    CFRelease(v5);
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    eUICC::Perso::PersoImplementation::~PersoImplementation(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391B3ALL)
  {
    if (((v2 & 0x80000001E5391B3ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391B3ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391B3ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void eUICC::Perso::PersoImplementation::~PersoImplementation(eUICC::Perso::PersoImplementation *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  v7 = *(this + 2);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    CFRelease(v8);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

eUICC::Perso::PersoImplementation **std::unique_ptr<eUICC::Perso::PersoImplementation>::~unique_ptr[abi:ne200100](eUICC::Perso::PersoImplementation **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    eUICC::Perso::PersoImplementation::~PersoImplementation(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::reset(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_94()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUEURELFImage::~BBUEURELFImage(BBUEURELFImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

uint64_t BBUEURELFImage::getWritePayloadData(BBUEURELFImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*this + 32))(this) <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 77, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/ELF/BBUEURELFImage.cpp", 0x16u, "Assertion failure(( offset < getWritePayloadLength()) && Error: Chunk size is not sufficient to write payload data of the ELF image.)", v10, v11, v12, v19);
    goto LABEL_8;
  }

  v20 = -1431655766;
  result = (*(**(this + 1) + 16))(*(this + 1), a2, a3, &v20, *(this + 6) + a4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 78, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/ELF/BBUEURELFImage.cpp", 0x19u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy from ELF image!)", v13, v14, v15, v19);
    goto LABEL_8;
  }

  if (v20 != a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 78, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/ELF/BBUEURELFImage.cpp", 0x1Au, "Assertion failure(( amountCopied == amount) && Copied data size mismatch: Failed to copy from ELF image!)", v16, v17, v18, v19);
LABEL_8:
  }

  return result;
}

uint64_t BBUFSServerParametersInit(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && __s1)
  {
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    v10 = strnlen(__s1, 0x100uLL);
    v11 = TelephonyUtilStrlcpy();
    v18 = v11 != v10 || (v11 + 1) >= 0x101;
    result = !v18;
    if (v18)
    {
      v20 = result;
      _BBUFSDebugPrint("BBUFSServerParametersInit", "required path length = %zu, copied = %zu, max length = %zu\n", v12, v13, v14, v15, v16, v17, v10 + 1);
      result = v20;
    }

    *(a1 + 360) = a3;
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerParametersInit", "invalid parameters specified: parameters = %p, destination = %s\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  return result;
}

uint64_t BBUFSServerPrepare(bbufs *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (bbufs::prepareDestination(a1, a2))
    {
      return 1;
    }

    else
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v8, v9, v10, v11, v12, v13, v15);
      return 0;
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", a3, a4, a5, a6, a7, a8, 0);
    return 0;
  }
}

uint64_t BBUFSServerCreate(void *a1, uint64_t (**a2)(const char *, const char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = 0;
    v19 = "bad parameters for file server creation\n";
    goto LABEL_15;
  }

  a1[50] = 0;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v10 = memcpy(a1, a2, 0x170uLL);
  v11 = ICEStateMachineSetConfigDefaults;
  v12 = ICEStateMachineSetConfig;
  v13 = ICEStateMachineSnapshotInProgress;
  v14 = ICEStateMachinePerformSnapshot;
  v15 = ICEStateMachineStop;
  v16 = ICEStateMachineStart;
  v17 = capabilities::radio::vendor(v10);
  if (v17 == 3)
  {
    v11 = INTStateMachineSetConfigDefaults;
    v12 = INTStateMachineSetConfig;
    v13 = INTStateMachineSnapshotInProgress;
    v14 = INTStateMachinePerformSnapshot;
    v15 = INTStateMachineStop;
    v16 = INTStateMachineStart;
    goto LABEL_8;
  }

  if (v17 == 2)
  {
LABEL_8:
    sBBUFSServerStart = v16;
    sBBUFSServerStop = v15;
    sBBUFSServerFlush = v14;
    sBBUFSServerFlushInProgress = v13;
    sBBUFSServerSetConfig = v12;
    sBBUFSServerSetConfigDefaults = v11;
LABEL_10:
    if ((v11)(a1))
    {
      goto LABEL_11;
    }

LABEL_14:
    v18 = 0;
    v19 = "BBUFSServer create failed\n";
    goto LABEL_15;
  }

  if (v17 != 1)
  {
    _BBUFSDebugPrint("BBUFSServerCreate", "invalid state machine type %u\n", a3, a4, a5, a6, a7, a8, v17);
    v11 = sBBUFSServerSetConfigDefaults;
    if (!sBBUFSServerSetConfigDefaults)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  sBBUFSServerStart = EURStateMachineStart;
  sBBUFSServerStop = EURStateMachineStop;
  sBBUFSServerFlush = EURStateMachinePerformFlush;
  sBBUFSServerFlushInProgress = EURStateMachineFlushInProgress;
  sBBUFSServerSetConfig = EURStateMachineSetConfig;
  sBBUFSServerSetConfigDefaults = 0;
LABEL_11:
  if (*a2)
  {
    sDelegate = *a2;
  }

  v18 = 1;
  v19 = "BBUFSServer created successfully\n";
LABEL_15:
  _BBUFSDebugPrint("BBUFSServerCreate", v19, a3, a4, a5, a6, a7, a8, v21);
  return v18;
}

BOOL BBUFSServerRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 360))
    {
      _BBUFSDebugPrint("BBUFSServerRelease", "BBUFSServer releasing registry\n", a3, a4, a5, a6, a7, a8, v13);
      v9 = *(a1 + 360);
      if (v9)
      {
        v10 = v9[1];
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        operator delete(v9);
      }

      *(a1 + 360) = 0;
    }

    sBBUFSServerStart = 0;
    sBBUFSServerStop = 0;
    sBBUFSServerFlush = 0;
    sBBUFSServerFlushInProgress = 0;
    sBBUFSServerSetConfig = 0;
    v11 = "BBUFSServer destroyed\n";
    sBBUFSServerSetConfigDefaults = 0;
  }

  else
  {
    v11 = "trying to release invalid file server\n";
  }

  _BBUFSDebugPrint("BBUFSServerRelease", v11, a3, a4, a5, a6, a7, a8, v13);
  return a1 != 0;
}

uint64_t BBUFSServerStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sBBUFSServerStart;
  if (!sBBUFSServerStart)
  {
    _BBUFSDebugPrint("BBUFSServerStart", "sBBUFSServerStart function not initialized\n", a3, a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return v10();
}

uint64_t BBUFSServerFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sBBUFSServerFlush;
  if (!sBBUFSServerFlush)
  {
    _BBUFSDebugPrint("BBUFSServerFlush", "sBBUFSServerFlush function not initialized\n", a3, a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return v10();
}

uint64_t BBUFSServerFlushInProgress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sBBUFSServerFlushInProgress;
  if (!sBBUFSServerFlushInProgress)
  {
    _BBUFSDebugPrint("BBUFSServerFlushInProgress", "sBBUFSServerFlushInProgress function not initialized\n", a3, a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return v10();
}

uint64_t BBUFSServerSetConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sBBUFSServerSetConfig;
  if (!sBBUFSServerSetConfig)
  {
    _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", a3, sBBUFSServerSetConfig, a5, a6, a7, a8, v8);
    return 0;
  }

  return v10();
}

uint64_t BBUFSServerSetConfigDefaults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sBBUFSServerSetConfigDefaults;
  if (!sBBUFSServerSetConfigDefaults)
  {
    _BBUFSDebugPrint("BBUFSServerSetConfigDefaults", "sBBUFSServerSetConfigDefaults function not initialized\n", a3, a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return v10();
}

uint64_t BBUFSServerStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sBBUFSServerStop;
  if (!sBBUFSServerStop)
  {
    _BBUFSDebugPrint("BBUFSServerStop", "sBBUFSServerStop function not initialized\n", a3, a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return v10();
}

uint64_t BBUEUR10HashData::compare(BBUEUR10HashData *this, BBUFeedback *a2, char **lpsrc)
{
  v4 = this;
  if (!lpsrc)
  {
    v6 = 0;
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v5 = **lpsrc;
  v6 = this;
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 8, this + 8, "SBL1");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 40, v6 + 40, "RPM");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 264, v6 + 264, "ACDB");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 72, v6 + 72, "APPS");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 104, v6 + 104, "DSP3");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 136, v6 + 136, "MBA");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 168, v6 + 168, "QDSP6SW");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 200, v6 + 200, "TZ");
  if (!this)
  {
    goto LABEL_13;
  }

  this = BBUHashData::compareHash(v4, a2, v4 + 232, v6 + 232, "WDT");
  v7 = this;
LABEL_14:
  v8 = capabilities::updater::supportsBbcfgImage(this) ^ 1;
  if ((v8 & 1) != 0 || !v7)
  {
    return v8 & v7;
  }

  return BBUHashData::compareHash(v4, a2, v4 + 296, v6 + 296, "BBCFG");
}

void BBUEUR10HashData::showHashes(BBUEUR10HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "SBL1_HASH", &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "RPM_HASH", p_p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "APPS_HASH", v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "DSP3_HASH", v6);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "MBA_HASH", v7);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "QDSP6SW_HASH", v8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "TZ_HASH", v9);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "WDT_HASH", v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "ACDB_HASH", v11);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v15 >= 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "BBCFG_HASH", v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52B9410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _BBUException::constructCommon(uint64_t a1, int a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *this, char *a6)
{
  memset(&v62, 170, sizeof(v62));
  ctu::LogMessageBuffer::vCreateWithFormat(&v60, this, a6, a3);
  v10 = MEMORY[0x1E69264F0](&v60);
  v11 = *v10;
  v62.__r_.__value_.__r.__words[2] = *(v10 + 16);
  *&v62.__r_.__value_.__l.__data_ = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  MEMORY[0x1E6926520](&v60);
  *(&v55.__r_.__value_.__s + 23) = 1;
  LOWORD(v55.__r_.__value_.__l.__data_) = 32;
  v12 = BBUReturnAsString::BBUReturnStrings[a2];
  v13 = strlen(v12);
  v14 = std::string::append(&v55, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v17 = &v56;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) == 22)
    {
      v18 = 22;
      v19 = 23;
LABEL_7:
      v21 = 2 * v18;
      if (v19 > 2 * v18)
      {
        v21 = v19;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v20 = v22;
      }

      else
      {
        v20 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_16;
    }

LABEL_22:
    v17->__r_.__value_.__s.__data_[size] = 64;
    v27 = size + 1;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      v56.__r_.__value_.__l.__size_ = v27;
    }

    else
    {
      *(&v56.__r_.__value_.__s + 23) = v27 & 0x7F;
    }

    v26 = v17 + v27;
    goto LABEL_26;
  }

  size = v56.__r_.__value_.__l.__size_;
  v19 = v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v18 = (v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 != v56.__r_.__value_.__l.__size_)
  {
    v17 = v56.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

  v20 = 0x7FFFFFFFFFFFFFF7;
  if (v19 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v56.__r_.__value_.__r.__words[0];
  if (v18 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_7;
  }

  v23 = 0;
LABEL_16:
  v24 = operator new(v20);
  v25 = v24;
  if (v18)
  {
    memmove(v24, v17, v18);
  }

  *(v25 + v18) = 64;
  if (!v23)
  {
    operator delete(v17);
  }

  v56.__r_.__value_.__l.__size_ = v19;
  v56.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
  v56.__r_.__value_.__r.__words[0] = v25;
  v26 = (v25 + v19);
LABEL_26:
  *v26 = 0;
  v57 = v56;
  memset(&v56, 0, sizeof(v56));
  strlen(a3);
  ctu::basename();
  if ((v54 & 0x80u) == 0)
  {
    v28 = v53;
  }

  else
  {
    v28 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v29 = v54;
  }

  else
  {
    v29 = v53[1];
  }

  v30 = std::string::append(&v57, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      v34 = 22;
      v35 = 23;
LABEL_38:
      v37 = 2 * v34;
      if (v35 > 2 * v34)
      {
        v37 = v35;
      }

      if ((v37 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v37 | 7) + 1;
      }

      if (v37 >= 0x17)
      {
        v36 = v38;
      }

      else
      {
        v36 = 23;
      }

      v39 = v34 == 22;
      goto LABEL_47;
    }

LABEL_53:
    p_p->__r_.__value_.__s.__data_[v32] = 58;
    v43 = v32 + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v43;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v43 & 0x7F;
    }

    v42 = p_p + v43;
    goto LABEL_57;
  }

  v32 = __p.__r_.__value_.__l.__size_;
  v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v34 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v34 != __p.__r_.__value_.__l.__size_)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    goto LABEL_53;
  }

  v36 = 0x7FFFFFFFFFFFFFF7;
  if (v35 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v34 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_38;
  }

  v39 = 0;
LABEL_47:
  v40 = operator new(v36);
  v41 = v40;
  if (v34)
  {
    memmove(v40, p_p, v34);
  }

  *(v41 + v34) = 58;
  if (!v39)
  {
    operator delete(p_p);
  }

  __p.__r_.__value_.__l.__size_ = v35;
  __p.__r_.__value_.__r.__words[2] = v36 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v41;
  v42 = (v41 + v35);
LABEL_57:
  *v42 = 0;
  v59 = __p;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v52, a4);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v52;
  }

  else
  {
    v44 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v52.__r_.__value_.__l.__size_;
  }

  v46 = std::string::append(&v59, v44, v45);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v61 = v46->__r_.__value_.__r.__words[2];
  v60 = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (v61 >= 0)
  {
    v48 = &v60;
  }

  else
  {
    v48 = v60;
  }

  if (v61 >= 0)
  {
    v49 = HIBYTE(v61);
  }

  else
  {
    v49 = *(&v60 + 1);
  }

  std::string::append(&v62, v48, v49);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_71:
      if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_84;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_72:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_84:
  operator delete(v59.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_73:
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v54 & 0x80000000) == 0)
  {
LABEL_74:
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(v53[0]);
  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_75:
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_88:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_89;
  }

LABEL_87:
  operator delete(v57.__r_.__value_.__l.__data_);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_76:
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_89:
  operator delete(v55.__r_.__value_.__l.__data_);
LABEL_77:
  *(a1 + 8) = 0u;
  v50 = a1 + 8;
  *(v50 + 480) = 0u;
  *(v50 + 496) = 0u;
  *(v50 + 448) = 0u;
  *(v50 + 464) = 0u;
  *(v50 + 416) = 0u;
  *(v50 + 432) = 0u;
  *(v50 + 384) = 0u;
  *(v50 + 400) = 0u;
  *(v50 + 352) = 0u;
  *(v50 + 368) = 0u;
  *(v50 + 320) = 0u;
  *(v50 + 336) = 0u;
  *(v50 + 288) = 0u;
  *(v50 + 304) = 0u;
  *(v50 + 256) = 0u;
  *(v50 + 272) = 0u;
  *(v50 + 224) = 0u;
  *(v50 + 240) = 0u;
  *(v50 + 192) = 0u;
  *(v50 + 208) = 0u;
  *(v50 + 160) = 0u;
  *(v50 + 176) = 0u;
  *(v50 + 128) = 0u;
  *(v50 + 144) = 0u;
  *(v50 + 96) = 0u;
  *(v50 + 112) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  v51 = &v62;
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v51 = v62.__r_.__value_.__r.__words[0];
  }

  *(v50 + 16) = 0uLL;
  snprintf(v50, 0x200uLL, "%s\n", v51);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }
}

void sub_1E52B9988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a47 < 0)
  {
    operator delete(a42);
    if (a21 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a40 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_3;
  }

  if ((a40 & 0x80000000) == 0)
  {
LABEL_4:
    if (a33 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a35);
  if (a33 < 0)
  {
LABEL_5:
    operator delete(a28);
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v54 - 105) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if (*(v54 - 105) < 0)
  {
LABEL_7:
    operator delete(*(v54 - 128));
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

void sub_1E52B9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x1E52B9A10);
  }

  JUMPOUT(0x1E52B9A74);
}

void sub_1E52B9ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x1E52B9A7CLL);
  }

  JUMPOUT(0x1E52B9A20);
}

void sub_1E52B9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x1E52B9A94);
  }

  JUMPOUT(0x1E52B9A38);
}

uint64_t _BBUException::_BBUException(uint64_t a1, int a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *a1 = &unk_1F5F01570;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, &a9);
  return a1;
}

void _BBUException::~_BBUException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void support::fs::SyncFile::create(uint64_t a1@<X0>, int a2@<W1>, size_t a3@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((a3 & (a3 - 1)) != 0)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v12;
    v27 = v12;
    *&v24[16] = v12;
    v25 = v12;
    *v24 = v12;
    v23.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
    *&v23.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
    strcpy(v23.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
    *(&__p.__r_.__value_.__s + 23) = 8;
    strcpy(&__p, "syncfile");
    support::log::client::client(v24, &v23, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        v13 = *v26;
        if (!os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v23.__r_.__value_.__l.__data_);
    v13 = *v26;
    if (!os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      *a4 = 0;
      a4[1] = 0;
      *v24 = &unk_1F5EFEF10;
      v14 = v27;
      if (!v27)
      {
        goto LABEL_38;
      }

LABEL_11:
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_38;
    }

LABEL_17:
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    _os_log_error_impl(&dword_1E5234000, v13, OS_LOG_TYPE_ERROR, "error: buffer size provided (%lu) must be a power of two", &buf, 0xCu);
    *a4 = 0;
    a4[1] = 0;
    *v24 = &unk_1F5EFEF10;
    v14 = v27;
    if (!v27)
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_4;
    }

LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_38;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = operator new(0x2F8uLL);
  v9 = dispatch_queue_create("SyncFile", 0);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v9;
  if (v9)
  {
    v10 = v9;
    dispatch_retain(v9);
    *(v8 + 4) = 0;
    dispatch_release(v10);
    *v8 = &unk_1F5F015B0;
    v11 = (v8 + 40);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      *&v11->__r_.__value_.__l.__data_ = *a1;
      v11->__r_.__value_.__r.__words[2] = *(a1 + 16);
      goto LABEL_21;
    }
  }

  else
  {
    *(v8 + 4) = 0;
    *v8 = &unk_1F5F015B0;
    v11 = (v8 + 40);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(v11, *a1, *(a1 + 8));
LABEL_21:
  *(v8 + 68) = 0;
  *(v8 + 9) = 0;
  *(v8 + 8) = &unk_1F5F01768;
  *(v8 + 62) = &unk_1F5F01790;
  std::ios_base::init((v8 + 496), v8 + 88);
  *(v8 + 79) = 0;
  *(v8 + 160) = -1;
  MEMORY[0x1E6926FC0](v8 + 88);
  *(v8 + 162) = a2;
  *(v8 + 82) = 0;
  *(v8 + 84) = 0;
  *(v8 + 83) = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v15 = operator new(a3);
    *(v8 + 82) = v15;
    v16 = &v15[a3];
    *(v8 + 84) = &v15[a3];
    bzero(v15, a3);
    *(v8 + 83) = v16;
  }

  *v24 = operator new(0x30uLL);
  *&v24[8] = xmmword_1E538EAF0;
  strcpy(*v24, "com.apple.telephony.basebandservices.support");
  *(&buf.__r_.__value_.__s + 23) = 8;
  strcpy(&buf, "syncfile");
  support::log::client::client(v8 + 85, v24, &buf);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v24[23] & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    operator delete(*v24);
    if (*(v8 + 83) == *(v8 + 82))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((v24[23] & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (*(v8 + 83) != *(v8 + 82))
  {
LABEL_30:
    (*(*(v8 + 11) + 24))(v8 + 88);
  }

LABEL_31:
  *a4 = v8;
  v17 = operator new(0x20uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__vftable = &unk_1F5F01818;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v8;
  a4[1] = v17;
  v19 = *(v8 + 2);
  if (!v19)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v17;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_34;
    }

LABEL_38:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v19->__shared_owners_ != -1)
  {
    goto LABEL_38;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v8 + 1) = v8;
  *(v8 + 2) = v17;
  std::__shared_weak_count::__release_weak(v19);
  if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_38;
  }

LABEL_34:
  (v17->__on_zero_shared)(v17);
  v20 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v17);
}

void sub_1E52BA1E8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1E52BA2ACLL);
}

void sub_1E52BA1F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      v36 = *v35;
      if (!*v35)
      {
LABEL_5:
        JUMPOUT(0x1E52BA284);
      }

LABEL_4:
      *(v33 + 664) = v36;
      operator delete(v36);
      goto LABEL_5;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  v36 = *v35;
  if (!*v35)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void sub_1E52BA254()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 664) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E52BA284);
}

void sub_1E52BA264(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v4);
  if (v1[63] < 0)
  {
    operator delete(*v3);
  }

  ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1E52BA2B4()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 664) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E52BA284);
}

void sub_1E52BA2C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    JUMPOUT(0x1E52BA2A8);
  }

  JUMPOUT(0x1E52BA2ACLL);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x1E6926FD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v2);
  return a1;
}

void ___ZN7support2fs8SyncFile4openEv_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = **(v1 + 728);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (v1 + 40);
    if (*(v1 + 63) < 0)
    {
      v3 = *v3;
    }

    v13 = 136315138;
    v14 = v3;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "Opening file '%s'", &v13, 0xCu);
  }

  if (!*(v1 + 208))
  {
    if (*(v1 + 63) < 0)
    {
      v7 = *(v1 + 40);
    }

    v8 = *(v1 + 648);
    v9 = std::filebuf::open();
    v10 = (v1 + 64 + *(*(v1 + 64) - 24));
    if (!v9)
    {
      std::ios_base::clear(v10, v10->__rdstate_ | 4);
      v12 = *MEMORY[0x1E69E9840];
      return;
    }

    std::ios_base::clear(v10, 0);
    goto LABEL_14;
  }

  v4 = **(v1 + 728);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
LABEL_14:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = (v1 + 40);
  if (*(v1 + 63) < 0)
  {
    v5 = *v5;
  }

  v13 = 136315138;
  v14 = v5;
  _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "Skipped open, file '%s' is already open", &v13, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void support::fs::SyncFile::close_sync(support::fs::SyncFile *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "Closing file '%s'", &v8, 0xCu);
  }

  if (*(this + 26))
  {
    support::fs::SyncFile::flush_sync(this);
    if (!std::filebuf::close())
    {
      v4 = (this + *(*(this + 8) - 24) + 64);
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }
  }

  else
  {
    v5 = **(this + 91);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_INFO, "Skipped close, file '%s' is not open", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void support::fs::SyncFile::flush_sync(support::fs::SyncFile *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "Flushing file '%s'", &v7, 0xCu);
  }

  if (*(this + 26))
  {
    std::ostream::flush();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (this + 40);
      if (*(this + 63) < 0)
      {
        v5 = *v5;
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "Skipped flush, file '%s' is not open", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t support::fs::SyncFile::isOpen(support::fs::SyncFile *this)
{
  v4 = this;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNKS3_6isOpenEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_19;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_21_0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_20;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void support::fs::SyncFile::~SyncFile(void **this)
{
  *this = &unk_1F5F015B0;
  support::fs::SyncFile::close_sync(this);
  this[85] = &unk_1F5EFEF10;
  v2 = this[93];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[82];
  if (v3)
  {
    this[83] = v3;
    operator delete(v3);
  }

  MEMORY[0x1E6926FD0](this + 11);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](this + 62);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  support::fs::SyncFile::~SyncFile(this);

  operator delete(v1);
}

void support::fs::SyncFile::flush(support::fs::SyncFile *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t support::fs::SyncFile::write(support::fs::SyncFile *this, const void *a2, uint64_t a3)
{
  v6[0] = this;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v7[3] = &__block_descriptor_tmp_22;
  v7[4] = this + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v15 = -86;
    block = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_21_0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = -86;
    block = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_20;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15 & 1;
}

uint64_t std::fstream::~fstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[8];
  a1[2] = a2[9];
  MEMORY[0x1E6926FD0](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x1E6926FD0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E69273B0);
}

{
  v1 = a1 - 2;
  v2 = a1 + 52;
  MEMORY[0x1E6926FD0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v2);

  operator delete(v1);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6926FD0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E69273B0);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6926FD0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v1 + 54);

  operator delete(v1);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v2 = a1 + 54;
  MEMORY[0x1E6926FD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v2);

  operator delete(a1);
}

void std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile*)#1}::operator() const(support::fs::SyncFile*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void __copy_helper_block_e8_32b40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  _Block_object_dispose(v2, 7);
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  support::fs::SyncFile::flush_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_1E52BB688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v4 = v1[1];
    v5 = v1[2];
    std::ostream::write();
  }

  else
  {
    v6 = **(v2 + 728);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_1E5234000, v6, OS_LOG_TYPE_ERROR, "error: Failed to write, file '%s' is not open", &v10, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E52BB784(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __cxx_global_var_init_10()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

eUICC::eUICCVinylICEValve *eUICC::eUICCVinylICEValve::eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this, void *a2, int a3, char a4)
{
  *(this + 289) = 0;
  *(this + 304) = 0;
  *this = &unk_1F5F01898;
  *(this + 39) = 0;
  *(this + 37) = a2;
  v5 = a3 != 1;
  if (a3 == 255)
  {
    v5 = 255;
  }

  *(this + 73) = v5;
  *(this + 290) = a4;
  IceAriGetContext();
  v6 = operator new(0x40uLL);
  eUICC::VinylCommandDriver::VinylCommandDriver();
  v7 = *(this + 39);
  *(this + 39) = v6;
  if (v7)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v7);
    operator delete(v8);
  }

  *(this + 304) = 15;
  return this;
}

void sub_1E52BB878(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unique_ptr<eUICC::VinylCommandDriver>::~unique_ptr[abi:ne200100]((v1 + 312));
  _Unwind_Resume(a1);
}

std::__shared_weak_count_vtbl *IceAriGetContext(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (!qword_1ED9441D8)
  {
    v0 = operator new(0x28uLL);
    LOBYTE(v0->__on_zero_shared_weak) = 0;
    v1 = operator new(0x20uLL);
    v1->__vftable = &unk_1F5F01938;
    v1->__shared_owners_ = 0;
    v1->__shared_weak_owners_ = 0;
    v1[1].__vftable = v0;
    v3 = off_1ED9441E0;
    qword_1ED9441D8 = v0;
    off_1ED9441E0 = v1;
    if (!v3)
    {
      goto LABEL_7;
    }

    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v0 = qword_1ED9441D8;
  v1 = off_1ED9441E0;
  if (off_1ED9441E0)
  {
LABEL_7:
    v2 = 0;
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v2 = 1;
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if ((v2 & 1) != 0 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v0;
  }

  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  return v0;
}

void sub_1E52BB9F8(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  _Unwind_Resume(a1);
}

void *eUICC::eUICCVinylICEValve::GetVinylType@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 287) = 1;
  return memcpy(a2, this + 8, 0x11AuLL);
}

uint64_t eUICC::eUICCVinylICEValve::GetData@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63[3] = v4;
  *__p = v4;
  v63[1] = v4;
  v63[2] = v4;
  v63[0] = v4;
  AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(v63);
  v8 = (this + 8);
  if (*(this + 289) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylData cache is valid. Using cached data!\n", v5, v6, v7, v60);
    eUICC::logEUICCData(this + 2);
    goto LABEL_5;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v8 = 0u;
  *(this + 274) = 0u;
  v10 = operator new(4uLL);
  *v10 = *(this + 73);
  v11 = __p[0];
  __p[0] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[2] = v14;
  v66[3] = v14;
  v66[0] = v14;
  v66[1] = v14;
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v66);
  v65 = 0;
  v15 = operator new(4uLL);
  *v15 = *(this + 73);
  v16 = v67;
  v67 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = 0;
  while (1)
  {
    v18 = *(this + 39);
    if ((eUICC::VinylCommandDriver::GetVinylType() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get slot info from BB\n", v19, v20, v21, v60);
LABEL_30:
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "ret");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to get data from UIM\n", v29, v30, v31, v61);
LABEL_40:
      v35 = 0;
      goto LABEL_41;
    }

    v22 = v65;
    v23 = **(v65 + 128);
    if (v23)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "!(GET_RSP_FIELD(rsp, sim_error_cause_t28) & sim_error_cause_mask)");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v62 = **(v65 + 128);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x, sim_error_cause 0x%x\n", v32, v33, v34, **(v65 + 72));
      goto LABEL_40;
    }

    v24 = **(v65 + 72);
    if (v24 != 1 && v24 != 254 && v24 != 4)
    {
      break;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... sim_state 0x%x (retryCount: %d, retryLimit: %d)\n", v19, v20, v21, **(v65 + 72));
    if (v65)
    {
      (*(*v65 + 16))(v65);
    }

    v65 = 0;
    __ns.__rep_ = 2000000000;
    std::this_thread::sleep_for (&__ns);
    if (++v17 == 7)
    {
      goto LABEL_30;
    }
  }

  if (v23 == 2)
  {
    v35 = 1;
    goto LABEL_42;
  }

  v54 = *(v65 + 136);
  if (v54)
  {
    v35 = (*v54 & 3) == 0;
  }

  else
  {
    v35 = 1;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v55 = **(v65 + 72);
    v56 = *(v65 + 136);
    v57 = **(v65 + 128);
    if (v56)
    {
      goto LABEL_73;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v55 = **(v65 + 72);
    v56 = *(v65 + 136);
    v59 = **(v65 + 128);
    if (v56)
    {
LABEL_73:
      v58 = *v56;
    }
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x sim_error_cause: 0x%x sim_ext_capabilities 0x%x isAbsentOk: %s\n", v19, v20, v21, v55);
LABEL_41:
  v22 = v65;
  if (!v65)
  {
    goto LABEL_43;
  }

LABEL_42:
  (*(*v22 + 16))(v22);
LABEL_43:
  MEMORY[0x1E6926C10](v66);
  *(this + 286) = v35;
  *(this + 288) = 0;
  if (v35)
  {
    goto LABEL_65;
  }

  v36 = *(this + 39);
  if ((eUICC::VinylCommandDriver::GetData() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Invalid GetData response from the BB\n", v37, v38, v39, v60);
LABEL_65:
    *v8 = 255;
    goto LABEL_5;
  }

  *(this + 2) = *MEMORY[0x48];
  v40 = MEMORY[0x60];
  *(this + 13) = *MEMORY[0x58];
  if (v40 == MEMORY[0x68])
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  *(this + 15) = *v41;
  v42 = MEMORY[0x80];
  *(this + 31) = *MEMORY[0x78];
  if (v42 == MEMORY[0x88])
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  v44 = v43[1];
  *(this + 2) = *v43;
  *(this + 3) = v44;
  *(this + 8) = *MEMORY[0x98];
  *(this + 9) = *MEMORY[0xB0];
  v45 = MEMORY[0xC8];
  if (MEMORY[0xC8] == MEMORY[0xD0])
  {
    v45 = 0;
  }

  *(this + 5) = *v45;
  v46 = MEMORY[0x128];
  if (MEMORY[0x128] == MEMORY[0x130])
  {
    v46 = 0;
  }

  *(this + 155) = *v46;
  v47 = MEMORY[0x1C0];
  if (MEMORY[0x1C0] == MEMORY[0x1C8])
  {
    v47 = 0;
  }

  v48 = v47[1];
  *(this + 251) = *v47;
  *(this + 267) = v48;
  *(this + 115) = *MEMORY[0x188];
  v49 = MEMORY[0x1A8];
  if (MEMORY[0x1A8] == MEMORY[0x1B0])
  {
    v49 = 0;
  }

  v50 = *(v49 + 2);
  *(this + 124) = *v49;
  *(this + 250) = v50;
  *(this + 12) = *MEMORY[0x50];
  *(this + 283) = *MEMORY[0x1E8];
  *(this + 289) = 1;
  eUICC::logEUICCData(this + 2);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "result  0x%x \n", v51, v52, v53, *MEMORY[0x48]);
LABEL_5:
  memcpy(a2, this + 8, 0x11AuLL);
  return MEMORY[0x1E6926AB0](v63);
}

uint64_t eUICC::eUICCVinylICEValve::SetCardMode(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[3] = v2;
  *__p = v2;
  v14[1] = v2;
  v14[2] = v2;
  v14[0] = v2;
  AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(v14);
  v3 = operator new(4uLL);
  *v3 = *(a1 + 292);
  v4 = __p[0];
  __p[0] = v3;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = operator new(1uLL);
  *v5 = 0;
  v6 = __p[1];
  __p[1] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::SwitchCardMode())
  {
    v11 = 0;
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to SwitchCardMode\n", v8, v9, v10, v13);
    v11 = 18;
  }

  MEMORY[0x1E6926B70](v14);
  return v11;
}

uint64_t eUICC::eUICCVinylICEValve::InstallTicket(_DWORD *a1, CFDataRef *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v4;
  v46 = v4;
  v43[3] = v4;
  *__p = v4;
  v43[1] = v4;
  v43[2] = v4;
  v43[0] = v4;
  AriSdk::ARI_IBIVinylInstallVadReq_SDK::ARI_IBIVinylInstallVadReq_SDK(v43);
  if (!*a2)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "installTicket");
    goto LABEL_24;
  }

  (*(*a1 + 8))(__src, a1);
  v8 = memcpy(a1 + 2, __src, 0x11AuLL);
  if (a1[2] == capabilities::updater::EUICCVinylSuccessStatus(v8))
  {
    if (*(a1 + 31))
    {
      v15 = (*(*a1 + 16))(a1, 0, 0);
      if (v15)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "kBBUReturnSuccess == ret");
        goto LABEL_25;
      }
    }

    v16 = operator new(4uLL);
    *v16 = a1[73];
    v17 = __p[0];
    __p[0] = v16;
    if (v17)
    {
      operator delete(v17);
    }

    v18 = operator new(2uLL);
    *v18 = 1;
    v19 = __p[1];
    __p[1] = v18;
    if (v19)
    {
      operator delete(v19);
    }

    v20 = operator new(2uLL);
    *v20 = 0;
    v21 = v45[0];
    v45[0] = v20;
    if (v21)
    {
      operator delete(v21);
    }

    BytePtr = CFDataGetBytePtr(*a2);
    Length = CFDataGetLength(*a2);
    if (Length >= 0xE01)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Ticket provided is larger than spec. [ %lu (lenth) > %lu (spec max) ] \n", v23, v24, v25, Length);
LABEL_24:
      v15 = 2;
      goto LABEL_25;
    }

    v29 = operator new(2uLL);
    *v29 = Length;
    v30 = v45[1];
    v45[1] = v29;
    if (v30)
    {
      operator delete(v30);
    }

    if (Length)
    {
      v31 = operator new(Length);
      memcpy(v31, BytePtr, Length);
      v32 = operator new(Length);
      v33 = &v32[Length];
      *&__src[0] = v32;
      *&__src[1] = &v32[Length];
      memcpy(v32, v31, Length);
      *(&__src[0] + 1) = v33;
    }

    else
    {
      v31 = 0;
      memset(__src, 0, 24);
    }

    AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v46, __src);
    if (*&__src[0])
    {
      *(&__src[0] + 1) = *&__src[0];
      operator delete(*&__src[0]);
    }

    v34 = *(a1 + 39);
    if (eUICC::VinylCommandDriver::InstallVad())
    {
      if (*MEMORY[0x48])
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        v42 = *MEMORY[0x50];
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "InstallTicket result 0x%x sw1_sw2 0x%hx\n", v35, v36, v37, *MEMORY[0x48]);
        v15 = 16;
        if (!v31)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v15 = 0;
        if (!v31)
        {
          goto LABEL_25;
        }
      }

LABEL_46:
      operator delete(v31);
      goto LABEL_25;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v35, v36, v37, "status");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "InstallTicket failed to get desired response\n", v38, v39, v40, v41);
    v15 = 11;
    if (v31)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "outData.Valid()");
    v15 = 18;
  }

LABEL_25:
  MEMORY[0x1E6926B50](v43);
  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1E52BC8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (v31)
  {
    operator delete(v31);
    MEMORY[0x1E6926B50](&a15);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E6926B50](&a15);
  _Unwind_Resume(a1);
}

Ari *AriSdk::TlvArray<unsigned char,3584ul>::operator=(Ari *a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0xE01uLL)
  {
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v10;
      operator delete(v10);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v15, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v7);
        v13 = v16 >= 0 ? v15 : v15[0];
        v14 = *(a2 + 1) - *a2;
        *__p = 136316418;
        *&__p[4] = "ari";
        v18 = 2080;
        v19 = v13;
        v20 = 1024;
        v21 = 360;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = v14;
        v26 = 2048;
        v27 = 3584;
        _os_log_error_impl(&dword_1E5234000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v7);
      if (v20 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v8, v9, 360, a1, *(a2 + 1) - *a2, 3584);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E52BCB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::StreamFirmware(_DWORD *a1, uint64_t a2)
{
  v103 = *MEMORY[0x1E69E9840];
  v88 = 0;
  memset(v87, 170, sizeof(v87));
  (*(**a2 + 24))(v87);
  v3 = v87[1];
  v4 = v87[0];
  (*(*a1 + 8))(v91, a1);
  v5 = memcpy(a1 + 2, v91, 0x11AuLL);
  if (a1[2] != capabilities::updater::EUICCVinylSuccessStatus(v5))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "outData.Valid()");
    v11 = 18;
    v12 = v88;
    if (v88)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if (*(a1 + 31) == 1)
  {
    v10 = 18;
  }

  else
  {
    v11 = (*(*a1 + 16))(a1, 0, 0);
    if (v11)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "kBBUReturnSuccess == ret");
      goto LABEL_81;
    }

    v10 = 0;
  }

  v13 = (v3 - v4) >> 5;
  v14 = *(a1 + 304);
  v84 = v13;
  if (v13 % v14)
  {
    v15 = v13 / v14 + 1;
  }

  else
  {
    v15 = v13 / v14;
  }

  if (!v15)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "apduSetCount");
    v11 = 15;
    v12 = v88;
    if (v88)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v81 = v10;
  v85 = 0;
  v86 = 0;
  v16 = 0;
  v80 = &v91[6] + 1;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 136316418;
  v79 = v9;
  v82 = v15;
  while (1)
  {
    v91[6] = v17;
    v91[7] = v17;
    v91[5] = v17;
    v91[3] = v17;
    v91[4] = v17;
    v91[1] = v17;
    v91[2] = v17;
    v91[0] = v17;
    v18 = AriSdk::ARI_IBIVinylInstallFwReq_SDK::ARI_IBIVinylInstallFwReq_SDK(v91);
    v83 = &v79;
    v19 = *(a1 + 304);
    if (v84 - v16 * v19 >= v19)
    {
      v20 = *(a1 + 304);
    }

    else
    {
      v20 = v84 - v16 * v19;
    }

    MEMORY[0x1EEE9AC00](v18);
    v22 = &v79 - v21;
    bzero(&v79 - v21, v23);
    v24 = operator new(4uLL);
    *v24 = a1[73];
    v28 = *&v91[4];
    *&v91[4] = v24;
    if (v28)
    {
      operator delete(v28);
    }

    v29 = v22;
    if (v20)
    {
      break;
    }

LABEL_31:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v37 = v82;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v25, v26, v27, v16);
    v38 = operator new(2uLL);
    *v38 = v37;
    v39 = *(&v91[4] + 1);
    *(&v91[4] + 1) = v38;
    if (v39)
    {
      operator delete(v39);
    }

    v40 = operator new(2uLL);
    *v40 = v16;
    v41 = *&v91[5];
    *&v91[5] = v40;
    if (v41)
    {
      operator delete(v41);
    }

    v42 = operator new(2uLL);
    v43 = v29 - v22;
    *v42 = v29 - v22;
    v44 = *&v91[6];
    *&v91[6] = v42;
    if (v44)
    {
      operator delete(v44);
    }

    if (v43 >= 0xF5B)
    {
      LogLevels = Ari::GetLogLevels(v42);
      if ((LogLevels & 8) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v89, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v53);
          v64 = v89;
          if (v90 < 0)
          {
            v64 = v89[0];
          }

          *buf = v79;
          *&buf[4] = "ari";
          v93 = 2080;
          v94 = v64;
          v95 = 1024;
          v96 = 385;
          v97 = 2048;
          v98 = v80;
          v99 = 2048;
          v100 = v43;
          v101 = 2048;
          v102 = 3930;
          _os_log_error_impl(&dword_1E5234000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", buf, 0x3Au);
          if (v90 < 0)
          {
            operator delete(v89[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v53);
        v55 = buf;
        if (v95 < 0)
        {
          v55 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v54, v55, 385, v80, v43, 3930);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v45 = *(&v91[7] + 1);
      v46 = *(&v91[6] + 1);
      if (*(&v91[7] + 1) - *(&v91[6] + 1) < v43)
      {
        if (*(&v91[6] + 1))
        {
          *&v91[7] = *(&v91[6] + 1);
          operator delete(*(&v91[6] + 1));
          v45 = 0;
          v47 = v80;
          *v80 = 0;
          v47[1] = 0;
          v47[2] = 0;
        }

        v48 = 2 * v45;
        if (2 * v45 <= v43)
        {
          v48 = v29 - v22;
        }

        if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v49 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        v50 = operator new(v49);
        v46 = v50;
        *(&v91[6] + 1) = v50;
        *(&v91[7] + 1) = &v50[v49];
        if (v29 != v22)
        {
          memcpy(v50, v22, v29 - v22);
        }

LABEL_64:
        *&v91[7] = &v46[v43];
        goto LABEL_65;
      }

      v56 = *&v91[7];
      v57 = *&v91[7] - *(&v91[6] + 1);
      if (*&v91[7] - *(&v91[6] + 1) >= v43)
      {
        v37 = v82;
        if (v29 != v22)
        {
          memmove(*(&v91[6] + 1), v22, v29 - v22);
        }

        goto LABEL_64;
      }

      if (*&v91[7] != *(&v91[6] + 1))
      {
        memmove(*(&v91[6] + 1), v22, *&v91[7] - *(&v91[6] + 1));
        v56 = *&v91[7];
      }

      if (v29 != &v22[v57])
      {
        memmove(v56, &v22[v57], v29 - &v22[v57]);
      }

      *&v91[7] = &v56[v29 - &v22[v57]];
      v37 = v82;
    }

LABEL_65:
    v58 = operator new(1uLL);
    *v58 = v20;
    v59 = *(&v91[5] + 1);
    *(&v91[5] + 1) = v58;
    if (v59)
    {
      operator delete(v59);
    }

    v60 = *(a1 + 39);
    if ((eUICC::VinylCommandDriver::StreamFW() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v61, v62, v63, "status");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "StreamFirmware failed\n", v70, v71, v72, v79);
      v11 = 11;
      goto LABEL_80;
    }

    if (**(v88 + 72))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v61, v62, v63, "!GET_RSP_FIELD(rsp, result_t3)");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v76 = **(v88 + 72);
      v78 = **(v88 + 80);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed StreamAPDU set %d/%zu, status %d sw1_sw2 0x%x \n", v73, v74, v75, v16);
      v11 = 16;
      goto LABEL_80;
    }

    (*(*v88 + 16))(v88);
    v88 = 0;
    MEMORY[0x1E6926B10](v91);
    v11 = 0;
    ++v16;
    --v85;
    v86 += 32;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (v37 <= v16)
    {
      goto LABEL_81;
    }
  }

  if (v84 + v85 * v19 >= v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = v84 + v85 * v19;
  }

  v31 = (v87[0] + v86 * *(a1 + 304) + 24);
  v29 = v22;
  while (1)
  {
    v32 = *(v31 - 2);
    if (v32 > 5 || *v31 >= 0x100)
    {
      break;
    }

    v33 = &v29[v32 + *v31];
    *v29 = v32;
    memcpy(v29 + 1, *(v31 - 3), *(v31 - 2));
    v29[*(v31 - 2) + 1] = *v31;
    v34 = *(v31 - 1);
    v35 = &v29[*(v31 - 2)];
    v36 = *v31;
    v31 += 4;
    memcpy(v35 + 2, v34, v36);
    v29 = v33 + 2;
    if (!--v30)
    {
      goto LABEL_31;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = v81;
  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "f.header.length <= 5 && f.data.length <= 255");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v77 = *v31;
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Firmware APDU not within expected bounds : received (header - 5 : %zu data- 255 : %zu\n", v65, v66, v67, *(v31 - 2));
LABEL_80:
  MEMORY[0x1E6926B10](v91);
LABEL_81:
  v12 = v88;
  if (v88)
  {
LABEL_82:
    (*(*v12 + 16))(v12);
  }

LABEL_83:
  v88 = 0;
  if (v87[0])
  {
    v87[1] = v87[0];
    operator delete(v87[0]);
  }

  v68 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1E52BD64C(_Unwind_Exception *a1)
{
  MEMORY[0x1E6926B10](v1 + 128);
  v3 = *(v1 + 72);
  if (!v3)
  {
    _Unwind_Resume(a1);
  }

  *(v1 + 80) = v3;
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::DeleteProfile(eUICC::eUICCVinylICEValve *this, unsigned int a2)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v44 = v4;
  *__dst = v4;
  *__p = v4;
  *v43 = v4;
  v41[2] = v4;
  v41[3] = v4;
  v41[0] = v4;
  v41[1] = v4;
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v41);
  v40 = 0;
  v37 = 0xBFD00602820434BFLL;
  v38 = 42075188;
  v39 = -10234;
  v5 = operator new(4uLL);
  *v5 = *(this + 73);
  v6 = __p[0];
  __p[0] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = operator new(4uLL);
  *v7 = 16;
  v8 = __p[1];
  __p[1] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = operator new(4uLL);
  *v9 = 1;
  v10 = v43[0];
  v43[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(2uLL);
  *v11 = 1;
  v12 = v43[1];
  v43[1] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(2uLL);
  *v13 = 0;
  v14 = v44[0];
  v44[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = 7;
  v16 = v44[1];
  v44[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = (&v37 + 8 * a2 - a2);
  v18 = v46;
  v19 = __dst[0];
  if (v46 - __dst[0] >= 7)
  {
    v24 = __dst[1];
    v25 = __dst[1] - __dst[0];
    if ((__dst[1] - __dst[0]) > 6)
    {
      *__dst[0] = *v17;
      *(v19 + 3) = *(v17 + 3);
      v23 = v19 + 7;
    }

    else
    {
      if (__dst[1] != __dst[0])
      {
        memcpy(__dst[0], v17, __dst[1] - __dst[0]);
        v24 = __dst[1];
      }

      memcpy(v24, v17 + v25, 7 - v25);
      v23 = &v24[7 - v25];
    }
  }

  else
  {
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
      v18 = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      v46 = 0;
    }

    v20 = 2 * v18;
    if (2 * v18 <= 7)
    {
      v20 = 7;
    }

    if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    v22 = operator new(v21);
    v46 = v22 + v21;
    *v22 = *v17;
    *(v22 + 3) = *(v17 + 3);
    v23 = v22 + 7;
    __dst[0] = v22;
  }

  __dst[1] = v23;
  v26 = *(this + 39);
  if (eUICC::VinylCommandDriver::DeleteProfile())
  {
    v30 = v40;
    if (**(v40 + 80))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "!GET_RSP_FIELD(rsp, result_t4)");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v36 = **(v40 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to DeleteProfile status %d SW1_SW2 0x%x\n", v31, v32, v33, **(v40 + 80));
      v34 = 18;
      v30 = v40;
      if (!v40)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_40:
    (*(*v30 + 16))(v30);
    goto LABEL_41;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
  v34 = 11;
  v30 = v40;
  if (v40)
  {
    goto LABEL_40;
  }

LABEL_41:
  MEMORY[0x1E6926A30](v41);
  return v34;
}

uint64_t eUICC::eUICCVinylICEValve::StoreData(uint64_t a1, char **a2, uint64_t a3, _WORD *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v82 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v80 = v8;
  *__dst = v8;
  *__p = v8;
  *v79 = v8;
  v77[2] = v8;
  v77[3] = v8;
  v77[0] = v8;
  v77[1] = v8;
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v77);
  v9 = operator new(4uLL);
  *v9 = *(a1 + 292);
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(4uLL);
  *v11 = 5;
  v12 = __p[1];
  __p[1] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(4uLL);
  *v13 = 1;
  v14 = v79[0];
  v79[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = 1;
  v16 = v79[1];
  v79[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = operator new(2uLL);
  *v17 = 0;
  v18 = v80[0];
  v80[0] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *a2;
  v20 = a2[1];
  v21 = operator new(2uLL);
  v22 = v20 - v19;
  *v21 = v20 - v19;
  v23 = v80[1];
  v80[1] = v21;
  if (v23)
  {
    operator delete(v23);
    v19 = *a2;
    v20 = a2[1];
    v22 = v20 - *a2;
  }

  if (v22 < 0xE01)
  {
    v24 = v82;
    v25 = __dst[0];
    if (v82 - __dst[0] < v22)
    {
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
        v24 = 0;
        __dst[0] = 0;
        __dst[1] = 0;
        v82 = 0;
      }

      v26 = 2 * v24;
      if (2 * v24 <= v22)
      {
        v26 = v22;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      v28 = operator new(v27);
      __dst[0] = v28;
      __dst[1] = v28;
      v82 = &v28[v27];
      v29 = v20 - v19;
      if (v20 == v19)
      {
        v30 = v28;
      }

      else
      {
        if (v29 < 0x20)
        {
          goto LABEL_49;
        }

        if ((v28 - v19) < 0x20)
        {
          goto LABEL_49;
        }

        v30 = &v28[v29 & 0xFFFFFFFFFFFFFFE0];
        v47 = v28 + 16;
        v48 = (v19 + 16);
        v49 = v29 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 32;
        }

        while (v49);
        v19 += v29 & 0xFFFFFFFFFFFFFFE0;
        v28 += v29 & 0xFFFFFFFFFFFFFFE0;
        if (v29 != (v29 & 0xFFFFFFFFFFFFFFE0))
        {
LABEL_49:
          v30 = v28;
          do
          {
            v51 = *v19++;
            *v30++ = v51;
          }

          while (v19 != v20);
        }
      }

      goto LABEL_55;
    }

    v36 = __dst[1];
    v37 = __dst[1] - __dst[0];
    if (__dst[1] - __dst[0] >= v22)
    {
      if (v20 != v19)
      {
        v46 = __dst[0];
        memmove(__dst[0], v19, v22);
        v25 = v46;
      }

      v30 = &v25[v22];
      goto LABEL_55;
    }

    v38 = &v19[v37];
    if (__dst[1] != __dst[0])
    {
      memmove(__dst[0], v19, v37);
      v36 = __dst[1];
    }

    v39 = v36;
    v40 = v20 - v38;
    if (v20 != v38)
    {
      v41 = v38;
      if (v40 < 0x20)
      {
        v39 = v36;
      }

      else
      {
        v39 = v36;
        if ((v36 - v38) >= 0x20)
        {
          v41 = &v38[v40 & 0xFFFFFFFFFFFFFFE0];
          v39 = &v36[v40 & 0xFFFFFFFFFFFFFFE0];
          v42 = v36 + 16;
          v43 = (v38 + 16);
          v44 = v40 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v45 = *v43;
            *(v42 - 1) = *(v43 - 1);
            *v42 = v45;
            v42 += 2;
            v43 += 2;
            v44 -= 32;
          }

          while (v44);
          if (v40 == (v40 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_54;
          }
        }
      }

      do
      {
        v52 = *v41++;
        *v39++ = v52;
      }

      while (v41 != v20);
    }

LABEL_54:
    v30 = v39;
LABEL_55:
    __dst[1] = v30;
    goto LABEL_56;
  }

  LogLevels = Ari::GetLogLevels(v21);
  if ((LogLevels & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v83, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v33);
      v75 = v84 >= 0 ? v83 : v83[0];
      *buf = 136316418;
      *&buf[4] = "ari";
      v86 = 2080;
      v87 = v75;
      v88 = 1024;
      v89 = 385;
      v90 = 2048;
      v91 = __dst;
      v92 = 2048;
      v93 = v22;
      v94 = 2048;
      v95 = 3584;
      _os_log_error_impl(&dword_1E5234000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", buf, 0x3Au);
      if (v84 < 0)
      {
        operator delete(v83[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v33);
    if (v88 >= 0)
    {
      v35 = buf;
    }

    else
    {
      v35 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v34, v35, 385, __dst, v22, 3584);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_56:
  v53 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::DeleteProfile())
  {
    if (*MEMORY[0x50])
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v54, v55, v56, "!GET_RSP_FIELD(rsp, result_t4)");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v76 = *MEMORY[0x58];
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to store data status %d SW1_SW2 0x%x\n", v57, v58, v59, *MEMORY[0x50]);
      v60 = 18;
    }

    else
    {
      v61 = MEMORY[0x78];
      v62 = *MEMORY[0x70];
      v63 = *(a3 + 16);
      v64 = *a3;
      if (v63 - *a3 >= v62)
      {
        v69 = *(a3 + 8);
        v70 = v69 - v64;
        v71 = v62 - (v69 - v64);
        if (v62 <= v69 - v64)
        {
          if (*MEMORY[0x70])
          {
            v72 = *a3;
            memmove(v64, MEMORY[0x78], *MEMORY[0x70]);
            v64 = v72;
          }

          v68 = &v64[v62];
        }

        else
        {
          if (v69 != v64)
          {
            memmove(v64, MEMORY[0x78], v69 - v64);
            v69 = *(a3 + 8);
          }

          memmove(v69, &v61[v70], v71);
          v68 = &v69[v71];
        }
      }

      else
      {
        if (v64)
        {
          *(a3 + 8) = v64;
          operator delete(v64);
          v63 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v65 = 2 * v63;
        if (2 * v63 <= v62)
        {
          v65 = v62;
        }

        if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v66 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v66 = v65;
        }

        v67 = operator new(v66);
        *a3 = v67;
        *(a3 + 8) = v67;
        *(a3 + 16) = &v67[v66];
        memmove(v67, v61, v62);
        v68 = &v67[v62];
      }

      *(a3 + 8) = v68;
      v60 = 0;
      *a4 = *MEMORY[0x58];
      (*(MEMORY[0] + 16))(0);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v54, v55, v56, "status");
    v60 = 11;
  }

  MEMORY[0x1E6926A30](v77);
  v73 = *MEMORY[0x1E69E9840];
  return v60;
}

void sub_1E52BE200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1E6926A30](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::InitPerso(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v55 = v6;
  v56 = v6;
  v53[3] = v6;
  *__p = v6;
  v53[1] = v6;
  v53[2] = v6;
  v53[0] = v6;
  AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(v53);
  v52 = 0;
  v10 = a2[1];
  v11 = v10 - *a2;
  v12 = (v10 - *a2);
  if (v12 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v7, v8, v9, v11);
    goto LABEL_24;
  }

  v13 = operator new(4uLL);
  *v13 = *(a1 + 292);
  v14 = __p[0];
  __p[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(1uLL);
  *v15 = 0;
  v16 = __p[1];
  __p[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = operator new(1uLL);
  *v17 = 0;
  v18 = v55[0];
  v55[0] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = operator new(2uLL);
  *v19 = v11;
  v20 = v55[1];
  v55[1] = v19;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *a2;
  v51 = 0;
  v50 = 0uLL;
  if (v12)
  {
    v22 = operator new(v12);
    v23 = &v22[v12];
    *&v50 = v22;
    v51 = &v22[v12];
    memcpy(v22, v21, v12);
    *(&v50 + 1) = v23;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v56, &v50);
  if (v50)
  {
    operator delete(v50);
  }

  v24 = *(a1 + 312);
  if ((eUICC::VinylCommandDriver::InitPerso() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "status");
    v31 = 11;
    v32 = v52;
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!**(v52 + 72))
  {
    v34 = *(v52 + 88);
    v35 = *v34;
    if (*v34)
    {
      v36 = *(v52 + 96);
      v37 = *(a3 + 16);
      v38 = *a3;
      if (v37 - *a3 >= v35)
      {
        v42 = *(a3 + 8);
        v43 = v42 - v38;
        if (v42 - v38 < v35)
        {
          v44 = &v36[v35];
          v45 = &v36[v43];
          if (v42 != v38)
          {
            memmove(v38, v36, v43);
            v42 = *(a3 + 8);
          }

          v46 = v44 - v45;
          memmove(v42, v45, v46);
          v31 = 0;
          v47 = &v42[v46];
LABEL_47:
          *(a3 + 8) = v47;
          v32 = v52;
          if (!v52)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v41 = *a3;
      }

      else
      {
        if (v38)
        {
          *(a3 + 8) = v38;
          operator delete(v38);
          v37 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v39 = 2 * v37;
        if (2 * v37 <= v35)
        {
          v39 = v35;
        }

        if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        v38 = operator new(v40);
        v41 = v38;
        *a3 = v38;
        *(a3 + 8) = v38;
        *(a3 + 16) = &v38[v40];
      }

      memmove(v38, v36, v35);
      v31 = 0;
      v47 = &v41[v35];
      goto LABEL_47;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v48 = **(v52 + 80);
  v49 = **(v52 + 88);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InitPerso status %d SW1_SW2 0x%x rsp_len %u\n", v28, v29, v30, **(v52 + 72));
LABEL_24:
  v31 = 18;
  v32 = v52;
  if (v52)
  {
LABEL_25:
    (*(*v32 + 16))(v32);
  }

LABEL_26:
  MEMORY[0x1E6926AD0](v53);
  return v31;
}

uint64_t eUICC::eUICCVinylICEValve::AuthPerso(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v55 = v6;
  v56 = v6;
  v53[3] = v6;
  *__p = v6;
  v53[1] = v6;
  v53[2] = v6;
  v53[0] = v6;
  AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(v53);
  v52 = 0;
  v10 = a2[1];
  v11 = v10 - *a2;
  v12 = (v10 - *a2);
  if (v12 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v7, v8, v9, v11);
    goto LABEL_24;
  }

  v13 = operator new(4uLL);
  *v13 = *(a1 + 292);
  v14 = __p[0];
  __p[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(1uLL);
  *v15 = 0;
  v16 = __p[1];
  __p[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = operator new(1uLL);
  *v17 = 0;
  v18 = v55[0];
  v55[0] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = operator new(2uLL);
  *v19 = v11;
  v20 = v55[1];
  v55[1] = v19;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *a2;
  v51 = 0;
  v50 = 0uLL;
  if (v12)
  {
    v22 = operator new(v12);
    v23 = &v22[v12];
    *&v50 = v22;
    v51 = &v22[v12];
    memcpy(v22, v21, v12);
    *(&v50 + 1) = v23;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v56, &v50);
  if (v50)
  {
    operator delete(v50);
  }

  v24 = *(a1 + 312);
  if ((eUICC::VinylCommandDriver::AuthPerso() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "status");
    v31 = 11;
    v32 = v52;
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!**(v52 + 72))
  {
    v34 = *(v52 + 88);
    v35 = *v34;
    if (*v34)
    {
      v36 = *(v52 + 96);
      v37 = *(a3 + 16);
      v38 = *a3;
      if (v37 - *a3 >= v35)
      {
        v42 = *(a3 + 8);
        v43 = v42 - v38;
        if (v42 - v38 < v35)
        {
          v44 = &v36[v35];
          v45 = &v36[v43];
          if (v42 != v38)
          {
            memmove(v38, v36, v43);
            v42 = *(a3 + 8);
          }

          v46 = v44 - v45;
          memmove(v42, v45, v46);
          v31 = 0;
          v47 = &v42[v46];
LABEL_47:
          *(a3 + 8) = v47;
          v32 = v52;
          if (!v52)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v41 = *a3;
      }

      else
      {
        if (v38)
        {
          *(a3 + 8) = v38;
          operator delete(v38);
          v37 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v39 = 2 * v37;
        if (2 * v37 <= v35)
        {
          v39 = v35;
        }

        if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        v38 = operator new(v40);
        v41 = v38;
        *a3 = v38;
        *(a3 + 8) = v38;
        *(a3 + 16) = &v38[v40];
      }

      memmove(v38, v36, v35);
      v31 = 0;
      v47 = &v41[v35];
      goto LABEL_47;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v48 = **(v52 + 80);
  v49 = **(v52 + 88);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", v28, v29, v30, **(v52 + 72));
LABEL_24:
  v31 = 18;
  v32 = v52;
  if (v52)
  {
LABEL_25:
    (*(*v32 + 16))(v32);
  }

LABEL_26:
  MEMORY[0x1E6926A90](v53);
  return v31;
}

uint64_t eUICC::eUICCVinylICEValve::FinalizePerso(uint64_t a1, void *a2)
{
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v38 = v4;
  v39 = v4;
  v36[3] = v4;
  *__p = v4;
  v36[1] = v4;
  v36[2] = v4;
  v36[0] = v4;
  AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(v36);
  v35 = 0;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = (v8 - *a2);
  if (v10 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v5, v6, v7, v9);
    goto LABEL_24;
  }

  v11 = operator new(4uLL);
  *v11 = *(a1 + 292);
  v12 = __p[0];
  __p[0] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(1uLL);
  *v13 = 0;
  v14 = __p[1];
  __p[1] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(1uLL);
  *v15 = 0;
  v16 = v38[0];
  v38[0] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = operator new(2uLL);
  *v17 = v9;
  v18 = v38[1];
  v38[1] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *a2;
  v34 = 0;
  v33 = 0uLL;
  if (v10)
  {
    v20 = operator new(v10);
    v21 = &v20[v10];
    *&v33 = v20;
    v34 = &v20[v10];
    memcpy(v20, v19, v10);
    *(&v33 + 1) = v21;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v39, &v33);
  if (v33)
  {
    operator delete(v33);
  }

  v22 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::FinalizePerso())
  {
    v26 = v35;
    if (**(v35 + 72))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "!GET_RSP_FIELD(rsp, result_t3)");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v32 = **(v35 + 80);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to FinalizePerso status %d SW1_SW2 0x%x\n", v27, v28, v29, **(v35 + 72));
LABEL_24:
      v30 = 18;
      v26 = v35;
      if (!v35)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v30 = 0;
LABEL_31:
    (*(*v26 + 16))(v26);
    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "status");
  v30 = 11;
  v26 = v35;
  if (v35)
  {
    goto LABEL_31;
  }

LABEL_32:
  MEMORY[0x1E6926B90](v36);
  return v30;
}

uint64_t eUICC::eUICCVinylICEValve::ValidatePerso(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v55 = v6;
  v56 = v6;
  v53[3] = v6;
  *__p = v6;
  v53[1] = v6;
  v53[2] = v6;
  v53[0] = v6;
  AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(v53);
  v52 = 0;
  v10 = a2[1];
  v11 = v10 - *a2;
  v12 = (v10 - *a2);
  if (v12 >= 0xE01)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v7, v8, v9, v11);
    goto LABEL_24;
  }

  v13 = operator new(4uLL);
  *v13 = *(a1 + 292);
  v14 = __p[0];
  __p[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = 1;
  v16 = __p[1];
  __p[1] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = operator new(2uLL);
  *v17 = 0;
  v18 = v55[0];
  v55[0] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = operator new(2uLL);
  *v19 = v11;
  v20 = v55[1];
  v55[1] = v19;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *a2;
  v51 = 0;
  v50 = 0uLL;
  if (v12)
  {
    v22 = operator new(v12);
    v23 = &v22[v12];
    *&v50 = v22;
    v51 = &v22[v12];
    memcpy(v22, v21, v12);
    *(&v50 + 1) = v23;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v56, &v50);
  if (v50)
  {
    operator delete(v50);
  }

  v24 = *(a1 + 312);
  if ((eUICC::VinylCommandDriver::ValidatePerso() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "status");
    v31 = 11;
    v32 = v52;
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!**(v52 + 72))
  {
    v34 = *(v52 + 88);
    v35 = *v34;
    if (*v34)
    {
      v36 = *(v52 + 96);
      v37 = *(a3 + 16);
      v38 = *a3;
      if (v37 - *a3 >= v35)
      {
        v42 = *(a3 + 8);
        v43 = v42 - v38;
        if (v42 - v38 < v35)
        {
          v44 = &v36[v35];
          v45 = &v36[v43];
          if (v42 != v38)
          {
            memmove(v38, v36, v43);
            v42 = *(a3 + 8);
          }

          v46 = v44 - v45;
          memmove(v42, v45, v46);
          v31 = 0;
          v47 = &v42[v46];
LABEL_47:
          *(a3 + 8) = v47;
          v32 = v52;
          if (!v52)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v41 = *a3;
      }

      else
      {
        if (v38)
        {
          *(a3 + 8) = v38;
          operator delete(v38);
          v37 = 0;
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
        }

        v39 = 2 * v37;
        if (2 * v37 <= v35)
        {
          v39 = v35;
        }

        if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        v38 = operator new(v40);
        v41 = v38;
        *a3 = v38;
        *(a3 + 8) = v38;
        *(a3 + 16) = &v38[v40];
      }

      memmove(v38, v36, v35);
      v31 = 0;
      v47 = &v41[v35];
      goto LABEL_47;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v48 = **(v52 + 80);
  v49 = **(v52 + 88);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", v28, v29, v30, **(v52 + 72));
LABEL_24:
  v31 = 18;
  v32 = v52;
  if (v52)
  {
LABEL_25:
    (*(*v32 + 16))(v32);
  }

LABEL_26:
  MEMORY[0x1E6926BB0](v53);
  return v31;
}

void eUICC::eUICCVinylICEValve::~eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this)
{
  *this = &unk_1F5F01898;
  v1 = *(this + 39);
  *(this + 39) = 0;
  if (v1)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v1);
    operator delete(v2);
  }
}

{
  *this = &unk_1F5F01898;
  v1 = *(this + 39);
  *(this + 39) = 0;
  if (v1)
  {
    v2 = this;
    eUICC::VinylCommandDriver::~VinylCommandDriver(v1);
    operator delete(v3);
    this = v2;
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391E65)
  {
    if (((v2 & 0x80000001E5391E65 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391E65))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391E65 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

eUICC::VinylCommandDriver **std::unique_ptr<eUICC::VinylCommandDriver>::~unique_ptr[abi:ne200100](eUICC::VinylCommandDriver **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    eUICC::VinylCommandDriver::~VinylCommandDriver(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

char *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v6;
    if (2 * v6 <= a4)
    {
      v10 = a4;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = operator new(v11);
    v12 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v11];
    v13 = a3 - a2;
    if (v13)
    {
      result = memcpy(result, a2, v13);
    }

LABEL_17:
    a1[1] = &v12[v13];
    return result;
  }

  v12 = a1[1];
  v14 = v12 - result;
  if (v12 - result < a4)
  {
    v15 = &a2[v14];
    if (v12 != result)
    {
      result = memmove(result, a2, v14);
      v12 = a1[1];
    }

    v13 = a3 - v15;
    if (v13)
    {
      result = memmove(v12, v15, v13);
    }

    goto LABEL_17;
  }

  v16 = a3 - a2;
  if (v16)
  {
    v17 = result;
    memmove(result, a2, v16);
    result = v17;
  }

  a1[1] = &result[v16];
  return result;
}

uint64_t __cxx_global_var_init_11()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t support::cf::createNum64Num32FromData(ACFULogging *Length, const void **a2)
{
  if (Length)
  {
    if (a2 && (v3 = Length, BytePtr = CFDataGetBytePtr(Length), Length = CFDataGetLength(v3), Length - 9 > 0xFFFFFFFFFFFFFFF7))
    {
      if (Length < 5)
      {
        valuePtr = 0;
        memcpy(&valuePtr, BytePtr, Length);
        v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        v8 = *a2;
        *a2 = v5;
        if (v8)
        {
          CFRelease(v8);
          v5 = *a2;
        }

        if (v5)
        {
          return 1;
        }
      }

      else
      {
        __dst = 0;
        memcpy(&__dst, BytePtr, Length);
        v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &__dst);
        v6 = *a2;
        *a2 = v5;
        if (v6)
        {
          CFRelease(v6);
          v5 = *a2;
        }

        if (v5)
        {
          return 1;
        }
      }

      ACFULogging::getLogInstance(v5);
    }

    else
    {
      ACFULogging::getLogInstance(Length);
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
  }

  ACFULogging::handleMessage();
  return 0;
}

uint64_t support::cf::createByteSwappedData(CFDataRef theData, CFDataRef *a2)
{
  if (a2)
  {
    v2 = theData;
    if (theData)
    {
      theData = CFDataGetLength(theData);
      if (theData)
      {
        v4 = theData;
        v5 = malloc(theData);
        v12.location = 0;
        v12.length = v4;
        CFDataGetBytes(v2, v12, v5);
        v6 = v4 + v5 - 1;
        if (v6 > v5)
        {
          v7 = v5 + 1;
          do
          {
            v8 = *(v7 - 1);
            *(v7 - 1) = *v6;
            *v6-- = v8;
          }

          while (v7++ < v6);
        }

        theData = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v4, *MEMORY[0x1E695E488]);
        v10 = *a2;
        *a2 = theData;
        if (v10)
        {
          CFRelease(v10);
          theData = *a2;
        }

        if (theData)
        {
          return 1;
        }
      }
    }
  }

  ACFULogging::getLogInstance(theData);
  ACFULogging::handleMessage();
  return 0;
}

uint64_t support::cf::createNum32FromString(support::cf *this, const __CFString *a2, const __CFNumber **a3)
{
  v3 = 0;
  valuePtr = 0;
  memset(&__p, 0, sizeof(__p));
  if (this && a2)
  {
    if ((ctu::cf::assign() & 1) == 0)
    {
      v3 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v3;
      }

      goto LABEL_8;
    }

    valuePtr = std::stoi(&__p, 0, 10);
    a2->isa = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v3 = 1;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_8:
  operator delete(__p.__r_.__value_.__l.__data_);
  return v3;
}

uint64_t support::cf::copyDataFromHexString(support::cf *this, const __CFString *a2, const __CFData **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    ACFULogging::getLogInstance(0);
LABEL_11:
    ACFULogging::handleMessage();
    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!a2)
  {
    ACFULogging::getLogInstance(this);
    goto LABEL_11;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v4;
  v42 = v4;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  v23 = v4;
  v24 = v4;
  v21 = v4;
  v22 = v4;
  v19 = v4;
  v20 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  v13 = v4;
  v14 = v4;
  *buffer = v4;
  v12 = v4;
  CString = CFStringGetCString(this, buffer, 512, 0x8000100u);
  if (!CString)
  {
    ACFULogging::getLogInstance(CString);
    goto LABEL_11;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = AMSupportCopyDataFromAsciiEncodedHex();
  a2->isa = v7;
  if (!v7)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_11;
  }

  result = 1;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BBUPersonalizedConsoleFeedback::writeToStreamInternal(BBUPersonalizedConsoleFeedback *this, const char *__format, va_list a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[14] = v6;
  v9[15] = v6;
  v9[12] = v6;
  v9[13] = v6;
  v9[10] = v6;
  v9[11] = v6;
  v9[8] = v6;
  v9[9] = v6;
  v9[6] = v6;
  v9[7] = v6;
  v9[4] = v6;
  v9[5] = v6;
  v9[2] = v6;
  v9[3] = v6;
  v9[0] = v6;
  v9[1] = v6;
  if (gBBULogSinkFunc)
  {
    vsnprintf(v9, 0x100uLL, __format, a3);
    gBBULogSinkFunc(gBBULogSinkContext, 3, v9);
  }

  else
  {
    vprintf(__format, a3);
  }

  result = (*(*this + 112))(this, __format, a3);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void BBUPersonalizedConsoleFeedback::~BBUPersonalizedConsoleFeedback(BBUPersonalizedConsoleFeedback *this)
{
  BBUConsoleFeedback::~BBUConsoleFeedback(this);

  operator delete(v1);
}

unint64_t DEREncodeItemIntoVector(unint64_t a1, unint64_t a2, const void *a3, unint64_t *a4)
{
  v8 = DERLengthOfItem(a1, a2);
  v35 = v8;
  v10 = *a4;
  v9 = a4[1];
  v11 = &v9[-*a4];
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      a4[1] = &v10[v8];
    }
  }

  else
  {
    v13 = a4[2];
    if (v13 - v9 >= v12)
    {
      v19 = &v9[v12];
      bzero(a4[1], v12);
      a4[1] = v19;
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      v14 = v13 - v10;
      v15 = 2 * (v13 - v10);
      if (v15 <= v8)
      {
        v15 = v8;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v8;
      v18 = operator new(v16);
      bzero(&v18[v11], v12);
      memcpy(v18, v10, v11);
      *a4 = v18;
      a4[1] = &v18[v17];
      a4[2] = &v18[v16];
      if (v10)
      {
        operator delete(v10);
      }
    }
  }

  result = DEREncodeItem(a1, a2, a3, *a4, &v35);
  if (result)
  {
    v21 = *a4;
LABEL_16:
    a4[1] = v21;
    return result;
  }

  v22 = v35;
  v24 = *a4;
  v23 = a4[1];
  v25 = &v23[-*a4];
  v26 = v35 - v25;
  if (v35 > v25)
  {
    v27 = a4[2];
    if (v27 - v23 >= v26)
    {
      v33 = &v23[v26];
      v34 = result;
      bzero(a4[1], v26);
      result = v34;
      a4[1] = v33;
      return result;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      v28 = result;
      v29 = v27 - v24;
      v30 = 2 * (v27 - v24);
      if (v30 <= v35)
      {
        v30 = v35;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      v32 = operator new(v31);
      bzero(&v32[v25], v26);
      memcpy(v32, v24, v25);
      *a4 = v32;
      a4[1] = &v32[v22];
      a4[2] = &v32[v31];
      result = v28;
      if (v24)
      {
        operator delete(v24);
        return v28;
      }

      return result;
    }

LABEL_31:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (v35 < v25)
  {
    v21 = &v24[v35];
    goto LABEL_16;
  }

  return result;
}

uint64_t DEREncodeSequenceIntoVector(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = DERLengthOfEncodedSequence(a1, a2, *(a3 + 8), *a3);
  v35 = v8;
  v10 = *a4;
  v9 = a4[1];
  v11 = &v9[-*a4];
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      a4[1] = &v10[v8];
    }
  }

  else
  {
    v13 = a4[2];
    if (v13 - v9 >= v12)
    {
      v19 = &v9[v12];
      bzero(a4[1], v12);
      a4[1] = v19;
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      v14 = v13 - v10;
      v15 = 2 * (v13 - v10);
      if (v15 <= v8)
      {
        v15 = v8;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v8;
      v18 = operator new(v16);
      bzero(&v18[v11], v12);
      memcpy(v18, v10, v11);
      *a4 = v18;
      a4[1] = &v18[v17];
      a4[2] = &v18[v16];
      if (v10)
      {
        operator delete(v10);
      }
    }
  }

  result = DEREncodeSequence(a1, a2, *(a3 + 8), *a3, *a4, &v35);
  if (result)
  {
    v21 = *a4;
LABEL_16:
    a4[1] = v21;
    return result;
  }

  v22 = v35;
  v24 = *a4;
  v23 = a4[1];
  v25 = &v23[-*a4];
  v26 = v35 - v25;
  if (v35 > v25)
  {
    v27 = a4[2];
    if (v27 - v23 >= v26)
    {
      v33 = &v23[v26];
      v34 = result;
      bzero(a4[1], v26);
      result = v34;
      a4[1] = v33;
      return result;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      v28 = result;
      v29 = v27 - v24;
      v30 = 2 * (v27 - v24);
      if (v30 <= v35)
      {
        v30 = v35;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      v32 = operator new(v31);
      bzero(&v32[v25], v26);
      memcpy(v32, v24, v25);
      *a4 = v32;
      a4[1] = &v32[v22];
      a4[2] = &v32[v31];
      result = v28;
      if (v24)
      {
        operator delete(v24);
        return v28;
      }

      return result;
    }

LABEL_31:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (v35 < v25)
  {
    v21 = &v24[v35];
    goto LABEL_16;
  }

  return result;
}

uint64_t DERDecodeBBTicket(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v11, 170, sizeof(v11));
  v14[6] = xmmword_1E5391F50;
  v14[7] = unk_1E5391F60;
  v14[8] = xmmword_1E5391F70;
  v14[2] = xmmword_1E5391F10;
  v14[3] = unk_1E5391F20;
  v14[4] = xmmword_1E5391F30;
  v14[5] = unk_1E5391F40;
  v14[0] = __const__Z17DERDecodeBBTicketPhjP11DERBbTicket_DERBbTicketItemSpecs;
  v14[1] = unk_1E5391F00;
  v12[6] = xmmword_1E5391FE0;
  v12[7] = unk_1E5391FF0;
  v12[8] = xmmword_1E5392000;
  v12[9] = unk_1E5392010;
  v12[2] = xmmword_1E5391FA0;
  v12[3] = unk_1E5391FB0;
  v12[4] = xmmword_1E5391FC0;
  v12[5] = unk_1E5391FD0;
  v12[0] = __const__Z17DERDecodeBBTicketPhjP11DERBbTicket_DERBbTicketItemSpecs_MAV;
  v12[1] = unk_1E5391F90;
  v13 = 1;
  v10[0] = a1;
  v10[1] = a2;
  result = DERDecodeItem(v10, v11);
  if (!result)
  {
    if (v11[0] != 0x2000000000000010)
    {
      result = 2;
      goto LABEL_16;
    }

    if (capabilities::radio::maverick(result))
    {
      result = DERParseSequenceContent(&v11[1], 7u, v12, a3, 0);
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = DERParseSequenceContent(&v11[1], 6u, v14, a3, 0);
      if (result)
      {
        goto LABEL_16;
      }
    }

    v5 = *(a3 + 16);
    v6 = *v5;
    v7 = *(v5 + 4);
    v8 = v6 == 0x43DCE48862A0806 && v7 == 771;
    result = 3;
    if (v8)
    {
      if (*(a3 + 24) == 10)
      {
        result = 0;
      }

      else
      {
        result = 3;
      }
    }
  }

LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *getPtImageVersion@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, _BYTE *a6@<X8>)
{
  memset(a6, 170, 24);
  a6[23] = 0;
  *a6 = 0;
  if (!result || !a2)
  {
    return result;
  }

  memset(v16, 170, sizeof(v16));
  v17[0] = result + 48;
  v17[1] = a2 - 48;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if (*gBBULogMaskGet(void)::sBBULogMask)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if (*gBBULogMaskGet(void)::sBBULogMask)
    {
LABEL_5:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(0, 6, "BBUDerHelpers", "", "Parsing der encoded file to get the version \n", a3, a4, a5, v14);
      }
    }
  }

  result = DERDecodeItem(v17, v16);
  if (result || v16[0] != 0x2000000000000010)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v11 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      return result;
    }

    v10 = "Decode sequence failure with der return: %d, decode tag: %x\n";
    return _BBULog(0, 6, "BBUDerHelpers", "", v10, v7, v8, v9, result);
  }

  v15 = *&v16[1];
  result = DERDecodeItem(&v15, v16);
  if (result || LODWORD(v16[0]))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    v12 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v12;
    if (*gBBULogMaskGet(void)::sBBULogMask)
    {
LABEL_13:
      if (gBBULogVerbosity <= 5)
      {
        return result;
      }

      v10 = "Decode 1st tag failure with der return: %d, decoded tag: %llu\n";
      return _BBULog(0, 6, "BBUDerHelpers", "", v10, v7, v8, v9, result);
    }
  }

  else
  {
    *&v15 = v16[1] + v16[2];
    *(&v15 + 1) -= v16[2];
    result = DERDecodeItem(&v15, v16);
    if (!result && LODWORD(v16[0]) == 1)
    {
      return std::string::basic_string[abi:ne200100](a6, v16[1], v16[2]);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v13 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v13;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      v10 = "Decode 2nd tag failure with der return: %d, decoded tag: %llu\n";
      return _BBULog(0, 6, "BBUDerHelpers", "", v10, v7, v8, v9, result);
    }
  }

  return result;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__len | 7) + 1;
    }

    v7 = a2;
    v8 = operator new(v6);
    a2 = v7;
    v5 = v8;
    v4[1] = __len;
    v4[2] = v6 | 0x8000000000000000;
    *v4 = v8;
  }

  else
  {
    __dst[23] = __len;
    v5 = __dst;
    if (!__len)
    {
      *__dst = 0;
      return __dst;
    }
  }

  memmove(v5, a2, __len);
  *(v5 + __len) = 0;
  return v4;
}

const char *BBUBootModeAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_1E876E038[a1];
  }
}

const char *BBUNVRestoreSettingAsString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Invalid";
  }

  else
  {
    return off_1E876E050[a1];
  }
}

uint64_t EURStateMachineStart(uint64_t a1)
{
  *(a1 + 376) = 0;
  *(a1 + 368) = 1;
  return 1;
}

uint64_t EURStateMachineStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 368) = 0;
  _BBUFSDebugPrint("EURStateMachineStop", "aborting pending reads\n", a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 24);
  if (v9)
  {
    v9(a1 + 8);
  }

  return 1;
}

uint64_t EURStateMachinePerformFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0x1ECFD4000uLL;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = *(a1 + 376);
        v11 = "Unknown";
        if (v10 <= 2)
        {
          v11 = off_1E876E0A8[v10];
        }

        _BBUFSDebugPrint("EURStateMachinePerformFlush", "---------------------%s---------------------\n", a3, a4, a5, a6, a7, a8, v11);
        v18 = *(a1 + 376);
        if (v18)
        {
          break;
        }

        v89 = 0;
        v91[0] = 0;
        v92[0] = 0;
        v29 = createETLStructures(v92, &v89, v91, v13, v14, v15, v16, v17);
        v36 = "failed creating ETL header and ring buffer structures\n";
        if (v29)
        {
          while (1)
          {
            _BBUFSDebugPrint("sListen", "waiting for hello with timeout of %u sec\n", v30, v31, v32, v33, v34, v35, *(v9 + 3752) / 0x3E8u);
            v37 = *(v9 + 3752);
            if (!ETLSAHCommandReceive())
            {
              v36 = "failed receiving hello packet\n";
              goto LABEL_18;
            }

            if (*v89 != 8)
            {
              break;
            }

            _BBUFSDebugPrint("sListen", "received reset response (dropping)\n", v30, v31, v32, v33, v34, v35, v85);
          }

          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v90[0] = v40;
          v90[1] = v40;
          v41 = ETLSAHCommandParseHello();
          v42 = "failed parsing hello packet\n";
          if (!v41)
          {
            goto LABEL_23;
          }

          _BBUFSDebugPrint("sPrintHelloParameters", "version number:  %u\n", a3, a4, a5, a6, a7, a8, v90[0]);
          _BBUFSDebugPrint("sPrintHelloParameters", "version compatible:  %u\n", v43, v44, v45, v46, v47, v48, SBYTE4(v90[0]));
          _BBUFSDebugPrint("sPrintHelloParameters", "command packet Length:  %u\n", v49, v50, v51, v52, v53, v54, SBYTE8(v90[0]));
          v55 = ETLSAHModeAsString();
          _BBUFSDebugPrint("sPrintHelloParameters", "mode:  %s\n", v56, v57, v58, v59, v60, v61, v55);
          HelloResponse = ETLSAHCommandCreateHelloResponse();
          v42 = "Failed to create hello response\n";
          if (!HelloResponse)
          {
            goto LABEL_23;
          }

          v63 = ETLSAHCommandSend();
          v42 = "failed to respond to hello packet\n";
          if (v63)
          {
            v38 = 1;
          }

          else
          {
LABEL_23:
            _BBUFSDebugPrint("sListen", v42, a3, a4, a5, a6, a7, a8, v85);
            v38 = 0;
          }
        }

        else
        {
LABEL_18:
          _BBUFSDebugPrint("sListen", v36, v30, v31, v32, v33, v34, v35, v85);
          v38 = 0;
          *&v39 = 0xAAAAAAAAAAAAAAAALL;
          *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v90[0] = v39;
          v90[1] = v39;
        }

        v64 = v92[0];
        if (v89 | v92[0])
        {
          if (v89)
          {
            free(v89);
            v89 = 0;
            v64 = v92[0];
          }

          if (v64)
          {
            if (*v64)
            {
              free(*v64);
              v64 = v92[0];
            }

            free(v64);
          }
        }

        if (!v38)
        {
          goto LABEL_66;
        }

        *(a1 + 376) = 1;
      }

      if (v18 != 1)
      {
        break;
      }

      v88 = 0;
      v87 = 0;
      v86 = 0;
      v19 = createETLStructures(&v86, &v88, &v87, v13, v14, v15, v16, v17);
      v26 = "failed creating ETL header and ring buffer structures\n";
      if (v19 && (v27 = ETLSAHGetDebugRecordCount(), v26 = "failed receiving debug table location\n", (v27 & 1) != 0))
      {
        v28 = 1;
      }

      else
      {
        _BBUFSDebugPrint("sGetRecords", v26, v20, v21, v22, v23, v24, v25, v85);
        v28 = 0;
      }

      _BBUFSDebugPrint("sGetRecords", "%i records requested\n", v20, v21, v22, v23, v24, v25, 0);
      v65 = v86;
      if (v88 | v86)
      {
        if (v88)
        {
          free(v88);
          v88 = 0;
          v65 = v86;
        }

        if (v65)
        {
          if (*v65)
          {
            free(*v65);
            v65 = v86;
          }

          free(v65);
        }
      }

      if (!v28)
      {
        goto LABEL_66;
      }

      *(a1 + 376) = 2;
      v9 = 0x1ECFD4000;
    }

    if (v18 == 2)
    {
      break;
    }

    _BBUFSDebugPrint("EURStateMachinePerformFlush", "unknown state\n", v12, v13, v14, v15, v16, v17, v85);
  }

  *&v90[0] = 0;
  LODWORD(v92[0]) = 0;
  v89 = 0;
  if (!createETLStructures(&v89, v90, v92, v13, v14, v15, v16, v17))
  {
    v80 = "failed creating ETL header and ring buffer structures\n";
    goto LABEL_51;
  }

  if (!ETLSAHCommandCreateReset())
  {
    v80 = "failed to create reset command\n";
    goto LABEL_51;
  }

  if ((ETLSAHCommandSend() & 1) == 0)
  {
    v80 = "failed sending reset command\n";
LABEL_51:
    _BBUFSDebugPrint("sCompleteTransfer", v80, v66, v67, v68, v69, v70, v71, v85);
    *(a1 + 376) = 0;
    v78 = *&v90[0];
    v81 = v89;
    if (!(*&v90[0] | v89))
    {
      goto LABEL_66;
    }

    goto LABEL_52;
  }

  *(a1 + 376) = 0;
  if (ETLSAHCommandReceive())
  {
    v78 = *&v90[0];
    if (**&v90[0] == 8)
    {
      v79 = 1;
      goto LABEL_54;
    }

    v85 = **&v90[0];
    v83 = "expect reset response but receive type %d\n";
  }

  else
  {
    v83 = "failed to receive reset response\n";
  }

  _BBUFSDebugPrint("sCompleteTransfer", v83, v72, v73, v74, v75, v76, v77, v85);
  v78 = *&v90[0];
  v81 = v89;
  if (*&v90[0] | v89)
  {
LABEL_52:
    if (v78)
    {
      v79 = 0;
LABEL_54:
      free(v78);
      *&v90[0] = 0;
      v81 = v89;
      if (!v89)
      {
        if (!v79)
        {
          goto LABEL_66;
        }

LABEL_62:
        *(a1 + 376) = 0;
        v82 = 1;
        return v82 & 1 | ((*(a1 + 368) & 1) == 0);
      }

LABEL_59:
      if (*v81)
      {
        free(*v81);
        v81 = v89;
      }

      free(v81);
      if ((v79 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v81)
    {
      LOBYTE(v79) = 0;
      goto LABEL_59;
    }
  }

LABEL_66:
  v82 = 0;
  return v82 & 1 | ((*(a1 + 368) & 1) == 0);
}

void sub_1E52C17F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 169) < 0)
  {
    operator delete(v32[18]);
  }

  if (*(v33 - 137) < 0)
  {
    operator delete(v32[22]);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(v32[26]);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EURStateMachineSetConfig(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v8 = a2, a2))
  {
    v9 = a3;
    if (!strcasecmp("HelloWaitTimeoutSec", a2))
    {
      if (v9 < 1)
      {
        if (v9)
        {
          _BBUFSDebugPrint("EURStateMachineSetConfig", "failed to set config '%s', invalid config value '%d'\n", v10, v11, v12, v13, v14, v15, v8);
          return 0;
        }

        else
        {
          gHelloWaitTimeoutMilliSec = -1;
          _BBUFSDebugPrint("EURStateMachineSetConfig", "Set config '%s' to 'infinite'\n", v10, v11, v12, v13, v14, v15, v8);
          return 1;
        }
      }

      else
      {
        gHelloWaitTimeoutMilliSec = 1000 * v9;
        _BBUFSDebugPrint("EURStateMachineSetConfig", "Set config '%s' to '%d' millisec\n", v10, v11, v12, v13, v14, v15, v8);
        return 1;
      }
    }

    else
    {
      _BBUFSDebugPrint("EURStateMachineSetConfig", "failed to set config, unrecognized config name '%s'\n", v10, v11, v12, v13, v14, v15, v8);
      return 0;
    }
  }

  else
  {
    _BBUFSDebugPrint("EURStateMachineSetConfig", "failed to set config as one of the args is NULL\n", a3, a4, a5, a6, a7, a8, v17);
    return 0;
  }
}

void BBUEUREFSImage::BBUEUREFSImage(BBUEUREFSImage *this, BBUDataSource *a2, uint64_t a3, uint64_t a4)
{
  BBUEURMIImage::BBUEURMIImage(this, a2, a4);
  *v6 = &unk_1F5F01A48;
  v6[8] = 0;
  v7 = (v6 + 8);
  v6[9] = 0;
  v6[10] = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[7] = v8;
  v24[8] = v8;
  v24[5] = v8;
  v24[6] = v8;
  v24[3] = v8;
  v24[4] = v8;
  v24[1] = v8;
  v24[2] = v8;
  v24[0] = v8;
  v22 = v8;
  v23 = v8;
  v20 = v8;
  *__p = v8;
  v18 = v8;
  v19 = v8;
  v17 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "EFS", 3);
  MEMORY[0x1E69270E0](v9, a3);
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < *(&v20 + 1))
    {
      *&v23 = *(&v20 + 1);
      v12 = *(&v20 + 1);
    }

    v13 = v20;
    v10 = v12 - v20;
    if ((v12 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v16) = 0;
      p_dst = &__dst;
      goto LABEL_15;
    }

    v13 = *(&v18 + 1);
    v10 = *(&v19 + 1) - *(&v18 + 1);
    if (*(&v19 + 1) - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v10;
    v16 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v16) = v10;
  p_dst = &__dst;
  if (v10)
  {
LABEL_14:
    memmove(p_dst, v13, v10);
  }

LABEL_15:
  *(p_dst + v10) = 0;
  if (*(this + 87) < 0)
  {
    operator delete(*v7);
  }

  *v7 = __dst;
  v7[2] = v16;
  *&v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v18);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v24);
}

void sub_1E52C1D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 + 87) < 0)
  {
    operator delete(*v14);
    *v13 = &unk_1F5F04F58;
    v16 = *(v13 + 8);
    if (!v16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v13 = &unk_1F5F04F58;
    v16 = *(v13 + 8);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  (*(*v16 + 8))(v16);
  _Unwind_Resume(exception_object);
}

void BBUEUREFSImage::~BBUEUREFSImage(void **this)
{
  *this = &unk_1F5F01A48;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_1F5F04F58;
  v2 = this[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_1F5F01A48;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_1F5F04F58;
  v2 = this[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(this);
}

uint64_t BBUEUREFSImage::getName(BBUEUREFSImage *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

void BBUFeedback::BBUFeedback(BBUFeedback *this, const void *a2)
{
  *this = &unk_1F5F01AC0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 8) = 0;
  BBUProfiler::BBUProfiler((this + 80));
  v3 = operator new(8uLL);
  v4 = operator new(0x1000uLL);
  *v3 = v4;
  *v4 = 0;
  *(this + 17) = v3;
  *(this + 18) = v3;
  *(this + 19) = v3 + 1;
  *(this + 20) = v3 + 1;
  *(this + 21) = 0;
  *(this + 22) = 1;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  *(this + 9) = LocalCenter;
  CFRetain(LocalCenter);
  v6 = CFGetAllocator(*(this + 7));
  *(this + 8) = CFDictionaryCreateMutable(v6, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0;
  v7 = CFGetAllocator(*(this + 7));
  v8 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(*(this + 8), @"percentage", v8);
  CFRelease(v8);
}

void sub_1E52C2058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  __cxa_end_catch();
  operator delete(__p);
  BBUProfiler::~BBUProfiler((v10 + 80));
  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(v9, *v11);
  _Unwind_Resume(a1);
}

void BBUFeedback::~BBUFeedback(CFTypeRef *this)
{
  *this = &unk_1F5F01AC0;
  CFRelease(this[9]);
  CFRelease(this[8]);
  std::deque<BBUpdaterCommon::StageContext>::~deque[abi:ne200100]((this + 17));
  v2 = this[12];
  v3 = this[13];
  if (v3 == v2)
  {
    v3 = this[12];
    this[16] = 0;
    v10 = 0;
  }

  else
  {
    v4 = this[15];
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((this[16] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((this[16] + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = this[12];
      v3 = this[13];
    }

    this[16] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = this[13];
        v2 = (this[12] + 8);
        this[12] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_17:
    this[15] = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = this[12];
    v13 = this[13];
    if (v13 != v14)
    {
      this[13] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  v15 = this[11];
  if (v15)
  {
    operator delete(v15);
  }

  v16 = this[10];
  if (v16)
  {
    CFRelease(v16);
  }

  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy((this + 1), this[2]);
}

void BBUFeedback::updateProgressBarItem(BBUFeedback *this, double a2)
{
  if (*(this + 44) == 1)
  {
    v18 = v5;
    v19 = v4;
    v20 = v2;
    v21 = v3;
    v9 = (this + 16);
    v8 = *(this + 2);
    v10 = *(this + 10);
    if (v8)
    {
      while (1)
      {
        while (1)
        {
          v11 = v8;
          v12 = *(v8 + 32);
          if (v10 >= v12)
          {
            break;
          }

          v8 = *v11;
          v9 = v11;
          if (!*v11)
          {
            goto LABEL_9;
          }
        }

        if (v12 >= v10)
        {
          break;
        }

        v8 = *(v11 + 1);
        if (!v8)
        {
          v9 = v11 + 8;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v11 = this + 16;
LABEL_9:
      v13 = v11;
      v11 = operator new(0x30uLL);
      *(v11 + 8) = v10;
      *(v11 + 5) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v13;
      *v9 = v11;
      v14 = **(this + 1);
      if (v14)
      {
        *(this + 1) = v14;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 2), v11);
      ++*(this + 3);
    }

    valuePtr = ((*(this + 6) + *(v11 + 5) * a2 / *(this + 4)) * 100.0);
    v15 = CFGetAllocator(*(this + 7));
    v16 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(this + 8), @"percentage", v16);
    CFRelease(v16);
    CFNotificationCenterPostNotification(*(this + 9), @"BBUpdateProgress", *(this + 7), *(this + 8), 0);
  }
}

void BBUFeedback::endProgressBarItem(BBUFeedback *this)
{
  if (*(this + 44) == 1)
  {
    v15 = v1;
    v16 = v2;
    v5 = (this + 16);
    v4 = *(this + 2);
    v6 = *(this + 10);
    if (v4)
    {
      while (1)
      {
        while (1)
        {
          v7 = v4;
          v8 = *(v4 + 32);
          if (v6 >= v8)
          {
            break;
          }

          v4 = *v7;
          v5 = v7;
          if (!*v7)
          {
            goto LABEL_9;
          }
        }

        if (v8 >= v6)
        {
          break;
        }

        v4 = *(v7 + 1);
        if (!v4)
        {
          v5 = v7 + 8;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v7 = this + 16;
LABEL_9:
      v9 = v7;
      v7 = operator new(0x30uLL);
      *(v7 + 8) = v6;
      *(v7 + 5) = 0;
      *v7 = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = v9;
      *v5 = v7;
      v10 = **(this + 1);
      if (v10)
      {
        *(this + 1) = v10;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 2), v7);
      ++*(this + 3);
    }

    v11 = *(this + 6) + *(v7 + 5) / *(this + 4);
    *(this + 6) = v11;
    valuePtr = (v11 * 100.0);
    v12 = CFGetAllocator(*(this + 7));
    v13 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(this + 8), @"percentage", v13);
    CFRelease(v13);
    CFNotificationCenterPostNotification(*(this + 9), @"BBUpdateProgress", *(this + 7), *(this + 8), 0);
  }
}

void BBUFeedback::handleBeginQuickStep(BBUFeedback *this, const char *a2, ...)
{
  va_start(va, a2);
  v13 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  va_copy(v11, va);
  vsnprintf(__b, 0x400uLL, a2, va);
  v4 = strlen(__b);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v10) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, __b, v5);
  }

  *(v5 + v6) = 0;
  (*(*this + 56))(this, __dst);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E52C2694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUFeedback::handleBeginPhase(BBUFeedback *this, const char *a2, ...)
{
  va_start(va, a2);
  v13 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  va_copy(v11, va);
  vsnprintf(__b, 0x400uLL, a2, va);
  v4 = strlen(__b);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v10) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, __b, v5);
  }

  *(v5 + v6) = 0;
  (*(*this + 64))(this, __dst);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E52C2800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUFeedback::handleComment(BBUFeedback *this, const char *a2, ...)
{
  va_start(va, a2);
  v13 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  va_copy(v11, va);
  vsnprintf(__b, 0x400uLL, a2, va);
  v4 = strlen(__b);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v10) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, __b, v5);
  }

  *(v5 + v6) = 0;
  (*(*this + 72))(this, __dst);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E52C296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUFeedback::exitStageContext(BBUFeedback *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUFeedback.cpp", 0xC9u, "Assertion failure(!fStageContext.empty())", v14, v15, v16, v20);
    goto LABEL_16;
  }

  v3 = *(*(*(this + 18) + (((v1 + *(this + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v1 + *(this + 21) - 1) & 0x3FF)) - 1;
  if (v3 > 7)
  {
    v4 = "StageContext::None";
  }

  else
  {
    v4 = off_1E876E0C0[v3];
  }

  BBUFeedback::handleComment(this, "exiting %s", v4);
  v6 = *(this + 18);
  v5 = *(this + 19);
  v7 = ((v5 - v6) << 7) - 1;
  v9 = *(this + 21);
  v8 = *(this + 22);
  if (v5 == v6)
  {
    v7 = 0;
  }

  v10 = v8 - 1;
  *(this + 22) = v8 - 1;
  if ((v7 - (v8 + v9) + 1) >= 0x800)
  {
    operator delete(*(v5 - 8));
    *(this + 19) -= 8;
    v10 = *(this + 22);
  }

  if (!v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUFeedback.cpp", 0xCEu, "Assertion failure(!fStageContext.empty())", v17, v18, v19, v21);
LABEL_16:
  }

  v11 = *(*(*(this + 18) + (((v10 + *(this + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + *(this + 21) - 1) & 0x3FF)) - 1;
  if (v11 > 7)
  {
    v12 = "StageContext::None";
  }

  else
  {
    v12 = off_1E876E0C0[v11];
  }

  BBUFeedback::handleComment(this, "now in %s", v12);
}

uint64_t BBUFeedback::getStageContext(BBUFeedback *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUFeedback.cpp", 0xD4u, "Assertion failure(!fStageContext.empty())", v4, v5, v6, v7);
  }

  return *(*(*(this + 18) + (((v1 + *(this + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v1 + *(this + 21) - 1) & 0x3FF));
}

void BBUProfiler::~BBUProfiler(BBUProfiler *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v3 == v2)
  {
    *(this + 6) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(this + 5);
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((*(this + 6) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(this + 2);
      v3 = *(this + 3);
    }

    *(this + 6) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 3);
        v2 = (*(this + 2) + 8);
        *(this + 2) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_17:
    *(this + 5) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v13 != v14)
    {
      *(this + 3) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(this + 1);
  if (v15)
  {
    operator delete(v15);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::__split_buffer<BBUpdaterCommon::StageContext *>::emplace_back<BBUpdaterCommon::StageContext *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    a1[2] = &v8[v9];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] += 8;
}

uint64_t std::deque<BBUpdaterCommon::StageContext>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x400;
  v4 = v2 - 1024;
  if (v3)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 8);
    v8 = *v5;
    v6 = v5 + 1;
    v7 = v8;
LABEL_4:
    v66 = v7;
    *(a1 + 8) = v6;
    std::__split_buffer<BBUpdaterCommon::StageContext *>::emplace_back<BBUpdaterCommon::StageContext *&>(a1, &v66);
    return;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = v10 - v12;
  v14 = &v9[-*a1];
  if (v10 - v12 < v14)
  {
    v15 = operator new(0x1000uLL);
    if (v9 != v10)
    {
      *v10 = v15;
      *(a1 + 16) += 8;
      return;
    }

    if (v12 != v11)
    {
      v26 = v12;
LABEL_61:
      *(v26 - 1) = v15;
      v6 = *(a1 + 8);
      *(a1 + 8) = v6 - 1;
      v7 = *(v6 - 1);
      goto LABEL_4;
    }

    v49 = (v9 - v12) >> 2;
    if (v10 == v12)
    {
      v49 = 1;
    }

    if (!(v49 >> 61))
    {
      v50 = v15;
      v51 = (v49 + 3) >> 2;
      v52 = 8 * v49;
      v53 = operator new(8 * v49);
      v26 = &v53[8 * v51];
      v54 = v26;
      v15 = v50;
      if (v10 != v12)
      {
        v54 = &v26[v13];
        v55 = v10 - v12 - 8;
        v56 = &v53[8 * v51];
        v57 = v12;
        if (v55 < 0x38)
        {
          goto LABEL_67;
        }

        v58 = &v53[8 * v51];
        v56 = v58;
        v57 = v12;
        if ((v58 - v12) < 0x20)
        {
          goto LABEL_67;
        }

        v59 = (v55 >> 3) + 1;
        v60 = 8 * (v59 & 0x3FFFFFFFFFFFFFFCLL);
        v56 = &v26[v60];
        v57 = &v12[v60];
        v61 = (v12 + 16);
        v62 = v58 + 16;
        v63 = v59 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v64 = *v61;
          *(v62 - 1) = *(v61 - 1);
          *v62 = v64;
          v61 += 2;
          v62 += 2;
          v63 -= 4;
        }

        while (v63);
        if (v59 != (v59 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_67:
          do
          {
            v65 = *v57;
            v57 += 8;
            *v56 = v65;
            v56 += 8;
          }

          while (v56 != v54);
        }
      }

      *a1 = v53;
      *(a1 + 8) = v26;
      *(a1 + 16) = v54;
      *(a1 + 24) = &v53[v52];
      if (v12)
      {
        operator delete(v11);
        v15 = v50;
        v26 = *(a1 + 8);
      }

      goto LABEL_61;
    }

LABEL_63:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = v14 >> 2;
  if (v9 == v11)
  {
    v16 = 1;
  }

  if (v16 >> 61)
  {
    goto LABEL_63;
  }

  v17 = 8 * v16;
  v18 = operator new(8 * v16);
  v19 = operator new(0x1000uLL);
  v20 = v19;
  v21 = &v18[v13];
  v22 = &v18[v17];
  if (v13 != v17)
  {
    goto LABEL_14;
  }

  if (v13 < 1)
  {
    if (v10 == v12)
    {
      v27 = 1;
    }

    else
    {
      v27 = v13 >> 2;
    }

    if (v27 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * v27);
    v22 = &v21[8 * v27];
    operator delete(v18);
    v28 = *(a1 + 8);
    v10 = *(a1 + 16);
    v18 = v21;
    *v21 = v20;
    v23 = v21 + 8;
    if (v10 == v28)
    {
      goto LABEL_15;
    }

LABEL_31:
    while (v21 != v18)
    {
      v29 = v21;
LABEL_30:
      v30 = *(v10 - 1);
      v10 -= 8;
      *(v29 - 1) = v30;
      v24 = v29 - 8;
      v21 = v24;
      if (v10 == *(a1 + 8))
      {
        goto LABEL_16;
      }
    }

    if (v23 < v22)
    {
      v29 = &v18[8 * ((((v22 - v23) >> 3) + 1 + ((((v22 - v23) >> 3) + 1) >> 63)) >> 1)];
      v32 = v23 - v18;
      v31 = v23 == v18;
      v23 += 8 * ((((v22 - v23) >> 3) + 1 + ((((v22 - v23) >> 3) + 1) >> 63)) >> 1);
      if (!v31)
      {
        memmove(v29, v21, v32);
      }

      goto LABEL_30;
    }

    if (v22 == v18)
    {
      v33 = 1;
    }

    else
    {
      v33 = (v22 - v18) >> 2;
    }

    if (v33 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v34 = operator new(8 * v33);
    v35 = v34;
    v36 = (v33 + 3) >> 2;
    v29 = &v34[8 * v36];
    v37 = v23 - v18;
    v31 = v23 == v18;
    v23 = v29;
    if (!v31)
    {
      v23 = &v29[v37];
      v38 = v37 - 8;
      if (v38 >= 0x18 && (v39 = 8 * v36, (&v34[8 * v36] - v21) >= 0x20))
      {
        v43 = (v38 >> 3) + 1;
        v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
        v40 = &v29[v44];
        v41 = &v21[v44];
        v45 = (v21 + 16);
        v46 = &v34[v39 + 16];
        v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v48 = *v45;
          *(v46 - 1) = *(v45 - 1);
          *v46 = v48;
          v45 += 2;
          v46 += 32;
          v47 -= 4;
        }

        while (v47);
        if (v43 == (v43 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v40 = &v34[8 * v36];
        v41 = v21;
      }

      do
      {
        v42 = *v41;
        v41 += 8;
        *v40 = v42;
        v40 += 8;
      }

      while (v40 != v23);
    }

LABEL_44:
    v22 = &v34[8 * v33];
    operator delete(v18);
    v18 = v35;
    goto LABEL_30;
  }

  v21 -= ((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_14:
  *v21 = v19;
  v23 = v21 + 8;
  if (v10 != v12)
  {
    goto LABEL_31;
  }

LABEL_15:
  v24 = v21;
LABEL_16:
  v25 = *a1;
  *a1 = v18;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23;
  *(a1 + 24) = v22;
  if (v25)
  {

    operator delete(v25);
  }
}

void sub_1E52C345C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *BBUCommunication::create(capabilities::updater *a1)
{
  CommunicationType = capabilities::updater::getCommunicationType(a1);
  if (CommunicationType <= 1)
  {
    if (CommunicationType == 1)
    {
      v4 = operator new(0x60uLL);
      *v4 = &unk_1F5F02A18;
      *(v4 + 1) = a1;
      __asm { FMOV            V0.2D, #5.0 }

      *(v4 + 1) = _Q0;
      strcpy(v4 + 32, "/dev/cu.debug");
      *(v4 + 55) = 13;
      *(v4 + 14) = -1;
      *(v4 + 3) = *(v4 + 3) + (capabilities::updater::bootupTimeMaxValue(v4) / 1000);
      *v4 = &unk_1F5F028B0;
LABEL_6:
      *(v4 + 8) = dispatch_queue_create("com.apple.BBUCommunication", 0);
      *(v4 + 9) = dispatch_queue_create("com.apple.BBUStatuscallback", 0);
      *(v4 + 10) = 0;
      *(v4 + 22) = 35;
      return v4;
    }

    if (CommunicationType)
    {
      return v1;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Common/BBUCommunication.cpp", 0x1Bu, "Assertion failure(false && Unrecognized radio type.)", v13, v14, v15, v16);
  }

  if (CommunicationType == 2)
  {
    v4 = operator new(0x60uLL);
    *v4 = &unk_1F5F04A78;
    *(v4 + 1) = a1;
    __asm { FMOV            V0.2D, #5.0 }

    *(v4 + 1) = _Q0;
    strcpy(v4 + 32, "/dev/cu.debug");
    *(v4 + 55) = 13;
    *(v4 + 14) = -1;
    *(v4 + 3) = *(v4 + 3) + (capabilities::updater::bootupTimeMaxValue(v4) / 1000);
    *v4 = &unk_1F5F05120;
    *(v4 + 60) = 0;
    goto LABEL_6;
  }

  if (CommunicationType == 3)
  {
    goto LABEL_10;
  }

  return v1;
}

void sub_1E52C36CC(_Unwind_Exception *a1)
{
  if (v1[55] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
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

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1, char *a2, int a3)
{
  v6 = MEMORY[0x1E69272B0]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x1E69E5318]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]) != &a2[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_1E52C3B90(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, std::basic_regex<char> *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_1F5EFE748;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_1F5EFE7A0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(a1, a2, a3);
      }

LABEL_44:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
    }

LABEL_15:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
  if (v17 != v13)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_1F5EFED60;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &unk_1F5EFEDA8;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v35, a3, v33, (v34 + 1), (*(a1 + 28) + 1));
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_1E52C4038(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = (result + 1);
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_1F5EFED60;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_1F5EFEDA8;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_1F5EFE898;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = &v13->__traits_.__loc_.__locale_ + 1;
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_1F5EFE8E0;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_1F5EFED60;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_1F5EFEDA8;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}