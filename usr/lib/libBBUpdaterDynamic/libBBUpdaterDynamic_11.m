void sub_1E52D0B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        *(v2 + 64) = v3;
        operator delete(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t __cxx_global_var_init_14()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUEUR25Loader::queryChipInfo(BBUFeedback **a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x60uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v7 = *(a2 + 40);
  if (!v7 || !v7(a2, 4, v6, 96, &v48, 0))
  {
    BBUFeedback::handleComment(a1[1], "Failed to get chip info: Failed to read pk hash");
LABEL_10:
    BBUFeedback::handleComment(a1[1], "failed to read MSMHWID");
    goto LABEL_11;
  }

  v8 = (*(*a1 + 9))(a1);
  v9 = operator new(0x10uLL);
  *v9 = &unk_1F5F04C88;
  v9[1] = 0;
  v9[1] = CFDataCreate(*MEMORY[0x1E695E480], v6, v8);
  (*(*a3 + 24))(a3, v9);
  v10 = (*(*a1 + 10))(a1);
  v11 = (*(*a1 + 9))(a1);
  if (!memcmp(v10, v6, v11))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v29 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v29, "", "Detect as unfused BB\n", v30, v31, v32, v41);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v13 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v13, "", "Detect as fused BB\n", v14, v15, v16, v41);
    }
  }

LABEL_41:
  *(a3 + 22) = v12;
  v33 = *(a2 + 40);
  if (!v33)
  {
    goto LABEL_10;
  }

  v34 = v33(a2, 3, v6, 24, &v48, 0);
  if (!v34)
  {
    goto LABEL_10;
  }

  v35 = capabilities::radio::chipID(v34);
  v36 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v35);
  v37 = a3[2];
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  a3[2] = v36;
  v38 = *(a2 + 40);
  if (!v38)
  {
    v46 = v47 | 0x44300000000;
LABEL_11:
    BBUFeedback::handleComment(a1[1], "failed to read SerialNumber");
    v17 = 98;
    v18 = -559030611;
    v19 = a1[1];
    v20 = a3[2];
    v21 = -559030611;
    if (!v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = v38(a2, 0, &v47, 4, &v48, 0);
  v46 = v47 | 0x44300000000;
  if (!v39)
  {
    goto LABEL_11;
  }

  v40 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v46, 0x40);
  (*(*a3 + 16))(a3, v40);
  v17 = 0;
  v18 = -559030611;
  v19 = a1[1];
  v20 = a3[2];
  v21 = -559030611;
  if (v20)
  {
LABEL_12:
    v21 = (*(*v20 + 24))(v20);
  }

LABEL_13:
  v22 = a3[4];
  if (!v22)
  {
    v24 = "failed";
    v25 = a3[5];
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = "failed";
    v27 = a3[3];
    if (!v27)
    {
      goto LABEL_29;
    }

LABEL_28:
    v18 = (*(*v27 + 24))(v27);
    goto LABEL_29;
  }

  v23 = v44;
  (*(*v22 + 24))(v44, a3[4]);
  if (v45 < 0)
  {
    v23 = v44[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_18:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
  {
    v24 = v23;
  }

  else
  {
    v24 = "<< SNUM >>";
  }

  v25 = a3[5];
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_22:
  v26 = __p;
  (*(*v25 + 24))(__p, v25);
  if (v43 < 0)
  {
    v26 = __p[0];
  }

  v27 = a3[3];
  if (v27)
  {
    goto LABEL_28;
  }

LABEL_29:
  BBUFeedback::handleComment(v19, "CHIPID=0x%x, SNUM=0x%s, PKHASH=0x%s, CERTID=0x%x\n", v21, v24, v26, v18);
  if (v25 && v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 && v45 < 0)
  {
    operator delete(v44[0]);
  }

  operator delete(v6);
  return v17;
}

void sub_1E52D11FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    if (a24 < 0)
    {
      operator delete(__p);
      operator delete(v24);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR25Loader::load(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  BBUFeedback::handleComment(a1[1], "Loading second stage bootloader");
  if ((v7 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v8 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v8, "", "invalid arguments transport:  %p, updateSource: %p\n", v9, v10, v11, a2);
    }
  }

LABEL_12:
  v12 = (*(*a3 + 24))(a3);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v13 = v12;
  v14 = operator new(v12);
  bzero(v14, v13);
  if (&v14[v13] == v14)
  {
LABEL_14:
    if (gBBULogMaskGet(void)::once == -1)
    {
      v15 = 80;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v15 = 80;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v16 = (*(*a1 + 8))(a1);
      _BBULog(1, 0, v16, "", "invalid programmer data size\n", v17, v18, v19, v45);
    }

    goto LABEL_36;
  }

  if (!v7)
  {
    v15 = 2;
    goto LABEL_36;
  }

  v48 = 0;
  v15 = (*(*a3 + 16))(a3, v14, v13, &v48, 0);
  if (v15)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v20 = (*(*a1 + 8))(a1);
      _BBULog(1, 0, v20, "", "failed to copy programmer data from data source\n", v21, v22, v23, v45);
    }

LABEL_25:
    if (v13 == v48)
    {
      goto LABEL_36;
    }

LABEL_31:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_33:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v26 = (*(*a1 + 8))(a1);
          _BBULog(1, 0, v26, "", "failed to copy programmer data from data source; not all of programmer data was copied\n", v27, v28, v29, v45);
        }
      }
    }

    v15 = 80;
    goto LABEL_36;
  }

  if (v13 != v48)
  {
    goto LABEL_31;
  }

  v46 = -1;
  v47 = 0;
  v24 = *(a2 + 32);
  if (v24)
  {
    v25 = v24(a2, v14, v13, &v47, 10000, &v46, 0);
  }

  else
  {
    v25 = 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_46;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v31 = (*(*a1 + 8))(a1);
    v35 = "failure";
    if (v25)
    {
      v35 = "success";
    }

    _BBULog(9, 1, v31, "", "SendImage returned %s, amountWritten = %u, errorCode = %#x\n", v32, v33, v34, v35);
  }

LABEL_46:
  if ((v25 & 1) == 0)
  {
    v36 = gBBULogMaskGet(void)::once;
LABEL_54:
    if (v36 == -1)
    {
      v15 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v15 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v41 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v41, "", "Fail to send bootloader !\n", v42, v43, v44, v45);
    }

    goto LABEL_36;
  }

  v36 = gBBULogMaskGet(void)::once;
  if (v13 != v47 || v46)
  {
    goto LABEL_54;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v15 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v15 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v37 = (*(*a1 + 8))(a1);
    _BBULog(9, 1, v37, "", "Sent bootloader successfully!\n", v38, v39, v40, v45);
    v15 = 0;
  }

LABEL_36:
  if (v14)
  {
    operator delete(v14);
  }

  return v15;
}

void sub_1E52D1864(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandBooter::create(uint64_t **a1@<X8>)
{
  v6 = 0u;
  v11 = 0u;
  v13 = 0;
  v12 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = &unk_1F5F01F98;
  BYTE8(v6) = 0;
  BYTE8(v11) = 0;
  BasebandBooter::create(&v2, a1);
  BasebandBooterParams::~BasebandBooterParams(&v2);
}

void BasebandBooter::create(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  v11 = &unk_1F5F01F98;
  LOBYTE(v12) = 0;
  v14 = 0;
  if (*(a1 + 32) == 1)
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v14 = 1;
    LOBYTE(v15) = 0;
    v17 = 0;
    if (*(a1 + 64) != 1)
    {
LABEL_3:
      LOBYTE(v18) = 0;
      v20 = 0;
      if (*(a1 + 96) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v17 = 0;
    if (*(a1 + 64) != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v17 = 1;
  LOBYTE(v18) = 0;
  v20 = 0;
  if (*(a1 + 96) != 1)
  {
LABEL_4:
    LOBYTE(v21) = 0;
    v25 = 0;
    if (*(a1 + 144) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v18 = *(a1 + 72);
  v19 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  if (*(a1 + 144) != 1)
  {
LABEL_5:
    LOBYTE(v26) = 0;
    v27 = 0;
    v3 = *(a1 + 168);
    if (v3 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v6 = *(a1 + 120);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v21 = v7;
  v22 = v8;
  v9 = *(a1 + 128);
  v23[0] = v6;
  v23[1] = v9;
  v24 = *(a1 + 136);
  if (v9)
  {
    v10 = *(v6 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v10 >= v8)
      {
        v10 %= v8;
      }
    }

    else
    {
      v10 &= v8 - 1;
    }

    *(v7 + 8 * v10) = v23;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  v25 = 1;
  LOBYTE(v26) = 0;
  v27 = 0;
  v3 = *(a1 + 168);
  if (v3 == 1)
  {
LABEL_6:
    v26 = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v27 = v3;
  }

LABEL_7:
  DaleBooter::create(&v11, &v28);
  v4 = v28;
  v28 = 0;
  BasebandBooterParams::~BasebandBooterParams(&v11);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
  }
}

void sub_1E52D1BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BasebandBooterParams::~BasebandBooterParams(va);
  *v4 = 0;
  _Unwind_Resume(a1);
}

void BasebandBooterParams::~BasebandBooterParams(BasebandBooterParams *this)
{
  *this = &unk_1F5F01F98;
  if (*(this + 168) == 1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  if (*(this + 144) == 1)
  {
    v3 = *(this + 15);
    if (!v3)
    {
LABEL_7:
      v4 = *(this + 13);
      *(this + 13) = 0;
      if (v4)
      {
        operator delete(v4);
      }

      goto LABEL_9;
    }

    while (1)
    {
      v5 = *v3;
      if (*(v3 + 63) < 0)
      {
        operator delete(v3[5]);
        if (*(v3 + 39) < 0)
        {
LABEL_19:
          operator delete(v3[2]);
        }
      }

      else if (*(v3 + 39) < 0)
      {
        goto LABEL_19;
      }

      operator delete(v3);
      v3 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_9:
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if (*(this + 64) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

LABEL_21:
  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t BBUEUR2HashData::compare(BBUEUR2HashData *this, BBUFeedback *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v7 = BBUHashData::compareHash(this, a2, this + 8, v6 + 8, "EDBL");
  v8 = BBUHashData::compareHash(this, a2, this + 40, v6 + 40, "OSBL");
  return (BBUHashData::compareHash(this, a2, this + 72, v6 + 72, "AMSS") && v8) & v7;
}

void BBUEUR2HashData::showHashes(BBUEUR2HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "DBL_HASH", &__p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "OSBL_HASH", p_p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v8 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "AMSS_HASH", v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52D201C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUEURFirmwareVersion::~BBUEURFirmwareVersion(void **this)
{
  *this = &unk_1F5F02020;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[3]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 47) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_1F5F02020;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(this[3]);
  v2 = this;

LABEL_6:
  operator delete(v2);
}

BOOL BBUEURFirmwareVersion::initCommon(uint64_t a1, uint64_t a2)
{
  memset(&__dst, 0, sizeof(__dst));
  memset(v60, 170, sizeof(v60));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *a2, *(a2 + 8));
  }

  else
  {
    v59 = *a2;
  }

  ctu::tokenize();
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v3 = v60[0];
  if (0xAAAAAAAAAAAAAAABLL * ((v60[1] - v60[0]) >> 3) < 2)
  {
    goto LABEL_27;
  }

  (*(*a1 + 24))(__p, a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = *(v3 + 23);
  }

  else
  {
    v5 = *(v3 + 8);
  }

  v6 = v58;
  v7 = v58;
  if ((v58 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v5 == v6)
  {
    if (v4 >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    if ((v58 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = memcmp(v8, v9, v5) == 0;
    if ((v7 & 0x80000000) == 0)
    {
LABEL_20:
      v3 = v60[0];
      if (v10)
      {
        goto LABEL_21;
      }

LABEL_27:
      if (v3)
      {
        v12 = v60[1];
        v13 = v3;
        if (v60[1] == v3)
        {
          goto LABEL_114;
        }

        do
        {
          v14 = *(v12 - 1);
          v12 -= 3;
          if (v14 < 0)
          {
            operator delete(*v12);
          }
        }

        while (v12 != v3);
LABEL_113:
        v13 = v60[0];
LABEL_114:
        v60[1] = v3;
        operator delete(v13);
      }

LABEL_115:
      v39 = 0;
      goto LABEL_116;
    }
  }

  else
  {
    v10 = 0;
    if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  operator delete(__p[0]);
  v3 = v60[0];
  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (&__dst != (v3 + 24))
  {
    v11 = *(v3 + 47);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v11 >= 0)
      {
        v15 = (v3 + 24);
      }

      else
      {
        v15 = *(v3 + 24);
      }

      if (v11 >= 0)
      {
        v16 = *(v3 + 47);
      }

      else
      {
        v16 = *(v3 + 32);
      }

      std::string::__assign_no_alias<false>(&__dst.__r_.__value_.__l.__data_, v15, v16);
    }

    else if ((*(v3 + 47) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&__dst, *(v3 + 24), *(v3 + 32));
    }

    else
    {
      __dst = *(v3 + 24);
    }

    v3 = v60[0];
  }

  if (v3)
  {
    v17 = v60[1];
    v18 = v3;
    if (v60[1] != v3)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v3);
      v18 = v60[0];
    }

    v60[1] = v3;
    operator delete(v18);
  }

  memset(v60, 170, sizeof(v60));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v56 = __dst;
  }

  ctu::tokenize();
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v3 = v60[0];
  v20 = v60[1];
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v60[1] - v60[0]) >> 3);
  if (v21 != 1)
  {
    if (v21 != 2)
    {
      if (v60[0])
      {
        v13 = v60[0];
        if (v60[1] == v60[0])
        {
          goto LABEL_114;
        }

        do
        {
          v24 = *(v20 - 1);
          v20 -= 3;
          if (v24 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v3);
        goto LABEL_113;
      }

      goto LABEL_115;
    }

    if (&__dst != v60[0])
    {
      v22 = *(v60[0] + 23);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v22 >= 0)
        {
          v25 = v60[0];
        }

        else
        {
          v25 = *v60[0];
        }

        if (v22 >= 0)
        {
          v26 = *(v60[0] + 23);
        }

        else
        {
          v26 = *(v60[0] + 8);
        }

        std::string::__assign_no_alias<false>(&__dst.__r_.__value_.__l.__data_, v25, v26);
      }

      else if ((*(v60[0] + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(&__dst, *v60[0], *(v60[0] + 8));
      }

      else
      {
        v23 = *v60[0];
        __dst.__r_.__value_.__r.__words[2] = *(v60[0] + 16);
        *&__dst.__r_.__value_.__l.__data_ = v23;
      }
    }

    v3 = v60[0];
    if (v60[0] != a1)
    {
      v27 = *(v60[0] + 47);
      if (*(a1 + 47) < 0)
      {
        if (v27 >= 0)
        {
          v29 = (v60[0] + 24);
        }

        else
        {
          v29 = *(v60[0] + 24);
        }

        if (v27 >= 0)
        {
          v30 = *(v60[0] + 47);
        }

        else
        {
          v30 = *(v60[0] + 32);
        }

        std::string::__assign_no_alias<false>((a1 + 24), v29, v30);
      }

      else if ((*(v60[0] + 47) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((a1 + 24), *(v60[0] + 24), *(v60[0] + 32));
      }

      else
      {
        v28 = *(v60[0] + 24);
        *(a1 + 40) = *(v60[0] + 40);
        *(a1 + 24) = v28;
      }

      v3 = v60[0];
    }
  }

  if (v3)
  {
    v31 = v60[1];
    v32 = v3;
    if (v60[1] != v3)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v3);
      v32 = v60[0];
    }

    v60[1] = v3;
    operator delete(v32);
  }

  memset(v60, 170, sizeof(v60));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = __dst;
  }

  ctu::tokenize();
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v3 = v60[0];
  v34 = v60[1];
  v35 = 0xAAAAAAAAAAAAAAABLL * ((v60[1] - v60[0]) >> 3);
  if (v35 != 1)
  {
    if (v35 == 2)
    {
      if (&__dst != v60[0])
      {
        v36 = *(v60[0] + 23);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v36 >= 0)
          {
            v41 = v60[0];
          }

          else
          {
            v41 = *v60[0];
          }

          if (v36 >= 0)
          {
            v42 = *(v60[0] + 23);
          }

          else
          {
            v42 = *(v60[0] + 8);
          }

          std::string::__assign_no_alias<false>(&__dst.__r_.__value_.__l.__data_, v41, v42);
        }

        else if ((*(v60[0] + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&__dst, *v60[0], *(v60[0] + 8));
        }

        else
        {
          v37 = *v60[0];
          __dst.__r_.__value_.__r.__words[2] = *(v60[0] + 16);
          *&__dst.__r_.__value_.__l.__data_ = v37;
        }
      }

      if (*(v60[0] + 47) >= 0)
      {
        v43 = (v60[0] + 24);
      }

      else
      {
        v43 = *(v60[0] + 24);
      }

      *(a1 + 20) = strtoul(v43, 0, 10);
      v3 = v60[0];
      goto LABEL_131;
    }

    if (v60[0])
    {
      v13 = v60[0];
      if (v60[1] == v60[0])
      {
        goto LABEL_114;
      }

      do
      {
        v38 = *(v34 - 1);
        v34 -= 3;
        if (v38 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v3);
      goto LABEL_113;
    }

    goto LABEL_115;
  }

LABEL_131:
  if (v3)
  {
    v44 = v60[1];
    v45 = v3;
    if (v60[1] != v3)
    {
      do
      {
        v46 = *(v44 - 1);
        v44 -= 3;
        if (v46 < 0)
        {
          operator delete(*v44);
        }
      }

      while (v44 != v3);
      v45 = v60[0];
    }

    v60[1] = v3;
    operator delete(v45);
  }

  memset(v60, 170, sizeof(v60));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = __dst;
  }

  ctu::tokenize();
  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v47 = v60[0];
    v39 = v60[1] - v60[0] == 72;
    if (v60[1] - v60[0] == 72)
    {
      goto LABEL_144;
    }

LABEL_156:
    if (!v47)
    {
      goto LABEL_116;
    }

    goto LABEL_157;
  }

  operator delete(v54.__r_.__value_.__l.__data_);
  v47 = v60[0];
  v39 = v60[1] - v60[0] == 72;
  if (v60[1] - v60[0] != 72)
  {
    goto LABEL_156;
  }

LABEL_144:
  if (*(v47 + 23) >= 0)
  {
    v48 = v47;
  }

  else
  {
    v48 = *v47;
  }

  *(a1 + 8) = strtoul(v48, 0, 10);
  if (*(v60[0] + 47) >= 0)
  {
    v49 = (v60[0] + 24);
  }

  else
  {
    v49 = *(v60[0] + 24);
  }

  *(a1 + 12) = strtoul(v49, 0, 10);
  if (*(v60[0] + 71) >= 0)
  {
    v50 = (v60[0] + 48);
  }

  else
  {
    v50 = *(v60[0] + 48);
  }

  *(a1 + 16) = strtoul(v50, 0, 10);
  v47 = v60[0];
  if (!v60[0])
  {
    goto LABEL_116;
  }

LABEL_157:
  v51 = v60[1];
  v52 = v47;
  if (v60[1] != v47)
  {
    do
    {
      v53 = *(v51 - 1);
      v51 -= 3;
      if (v53 < 0)
      {
        operator delete(*v51);
      }
    }

    while (v51 != v47);
    v52 = v60[0];
  }

  v60[1] = v47;
  operator delete(v52);
LABEL_116:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v39;
}

void sub_1E52D286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::vector<std::string>::~vector[abi:ne200100]((v37 - 88));
  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
  }

  _Unwind_Resume(a1);
}

BOOL BBUEURFirmwareVersion::initWithVersionString(uint64_t a1, const void **a2)
{
  v49[2] = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v4 = &v47;
  (*(*a1 + 24))(&v47);
  v5 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
  v6 = v47.__r_.__value_.__r.__words[0];
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v47.__r_.__value_.__l.__size_;
    v4 = v47.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if (size <= 0)
    {
      v14 = 0;
      v15 = v4->__r_.__value_.__s.__data_[0];
      v16 = __s;
      do
      {
        if (&v14[-size] == -1)
        {
          break;
        }

        v17 = memchr(v16, v15, &v14[-size + 1]);
        if (!v17)
        {
          break;
        }

        v18 = v17;
        if (!memcmp(v17, v4, size))
        {
          v8 = 0;
          if ((v5 & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }

        v16 = v18 + 1;
        v14 = (__s - (v18 + 1));
      }

      while (v14 >= size);
    }

    v8 = 0;
    if ((v5 & 0x80000000) == 0)
    {
LABEL_7:
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = 1;
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_13:
  operator delete(v6);
  if (v8)
  {
LABEL_8:
    if (__s != a2)
    {
      v9 = *(a2 + 23);
      if ((__s[23] & 0x80000000) != 0)
      {
        if (v9 >= 0)
        {
          v26 = a2;
        }

        else
        {
          v26 = *a2;
        }

        if (v9 >= 0)
        {
          v27 = *(a2 + 23);
        }

        else
        {
          v27 = a2[1];
        }

        std::string::__assign_no_alias<false>(__s, v26, v27);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__s, *a2, a2[1]);
      }

      else
      {
        *__s = *a2;
        *&__s[16] = a2[2];
      }
    }

    goto LABEL_66;
  }

LABEL_14:
  (*(*a1 + 24))(&__p, a1);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__l.__size_;
    v13 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v12 == __p.__r_.__value_.__l.__size_)
    {
      if (v13 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if (v12 > 0x3FFFFFFFFFFFFFF2)
      {
        v22 = 0;
        v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_35:
        v23 = operator new(v21);
        v24 = v23;
        if (v12)
        {
          memmove(v23, p_p, v12);
        }

        *(v24 + v12) = 32;
        if (!v22)
        {
          operator delete(p_p);
        }

        __p.__r_.__value_.__l.__size_ = v13;
        __p.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
        __p.__r_.__value_.__r.__words[0] = v24;
        v25 = (v24 + v13);
        goto LABEL_52;
      }

LABEL_26:
      v19 = 2 * v12;
      if (v13 > 2 * v12)
      {
        v19 = v13;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v12 == 22;
      goto LABEL_35;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      v12 = 22;
      v13 = 23;
      goto LABEL_26;
    }
  }

  p_p->__r_.__value_.__s.__data_[v10] = 32;
  v28 = v10 + 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v28;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v28 & 0x7F;
  }

  v25 = p_p + v28;
LABEL_52:
  *v25 = 0;
  v47 = __p;
  memset(&__p, 0, sizeof(__p));
  v29 = *(a2 + 23);
  if (v29 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  if (v29 >= 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = a2[1];
  }

  v32 = std::string::append(&v47, v30, v31);
  v33 = v32->__r_.__value_.__r.__words[0];
  v49[0] = v32->__r_.__value_.__l.__size_;
  *(v49 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
  v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if ((__s[23] & 0x80000000) != 0)
  {
    operator delete(*__s);
  }

  *__s = v33;
  *&__s[8] = v49[0];
  *&__s[15] = *(v49 + 7);
  __s[23] = v34;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_66:
  v35 = *(a2 + 23);
  if (v35 >= 0)
  {
    v36 = *(a2 + 23);
  }

  else
  {
    v36 = a2[1];
  }

  v37 = v36 + 16;
  if (v36 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 < 0x17)
  {
    v40 = &v47.__r_.__value_.__s.__data_[16];
    v47.__r_.__value_.__r.__words[2] = 0;
    *(&v47.__r_.__value_.__s + 23) = v36 + 16;
    *&v47.__r_.__value_.__l.__data_ = *"Version String: ";
    if (!v36)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if ((v37 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v37 | 7) + 1;
    }

    v39 = operator new(v38);
    v47.__r_.__value_.__l.__size_ = v36 + 16;
    v47.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    v47.__r_.__value_.__r.__words[0] = v39;
    *v39 = *"Version String: ";
    v40 = (v39 + 1);
  }

  v41 = *a2;
  if (v35 >= 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = *a2;
  }

  memmove(v40, v42, v36);
LABEL_80:
  v40[v36] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = v47;
  result = BBUEURFirmwareVersion::initCommon(a1, __s);
  if ((__s[23] & 0x80000000) != 0)
  {
    v44 = result;
    operator delete(*__s);
    result = v44;
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E52D2DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(a10);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

BOOL BBUEURFirmwareVersion::initWithFolderName(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  v4 = v3 + 8;
  if (v3 + 8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 < 0x17)
  {
    v8 = &v12 + 8;
    v13 = 0;
    HIBYTE(v13) = v3 + 8;
    v12 = 0x203A7265646C6F46uLL;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    *(&v12 + 1) = v3 + 8;
    v13 = v7 | 0x8000000000000000;
    *&v12 = operator new(v7);
    *v12 = 0x203A7265646C6F46;
    v8 = (v12 + 8);
  }

  v9 = *a2;
  if (v2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  memmove(v8, v10, v3);
LABEL_15:
  v8[v3] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = v12;
  *(a1 + 64) = v13;

  return BBUEURFirmwareVersion::initCommon(a1, a2);
}

uint64_t BBUEURFirmwareVersion::isNewerThan(_DWORD *a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    v5 = a1[2];
    v6 = *(result + 8);
    if (v5 >= v6)
    {
      if (v5 > v6)
      {
        return 1;
      }

      v7 = a1[3];
      v8 = *(result + 12);
      if (v7 < v8)
      {
        return 0;
      }

      if (v7 > v8)
      {
        return 1;
      }

      v9 = a1[4];
      v10 = *(result + 16);
      if (v9 < v10)
      {
        return 0;
      }

      if (v9 > v10)
      {
        return 1;
      }

      return a1[5] > *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *BBUEURFirmwareVersion::equals(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    if (*(a1 + 8) == result[2])
    {
      if (*(a1 + 12) != result[3] || *(a1 + 16) != result[4] || *(a1 + 20) != result[5])
      {
        return 0;
      }

      v5 = *(a1 + 47);
      if (v5 >= 0)
      {
        v6 = *(a1 + 47);
      }

      else
      {
        v6 = *(a1 + 32);
      }

      v7 = *(result + 47);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(result + 4);
      }

      if (v6 == v7)
      {
        v11 = *(a1 + 24);
        v10 = (a1 + 24);
        v9 = v11;
        if (v5 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        v15 = *(result + 3);
        v13 = (result + 6);
        v14 = v15;
        if (v8 >= 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = v14;
        }

        return (memcmp(v12, v16, v6) == 0);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BBUEURFirmwareVersion::getAsFileName@<X0>(BBUEURFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[7] = v4;
  v41[8] = v4;
  v41[5] = v4;
  v41[6] = v4;
  v41[3] = v4;
  v41[4] = v4;
  v41[1] = v4;
  v41[2] = v4;
  v40 = v4;
  v41[0] = v4;
  *__p = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
  v5 = v34;
  v6 = &v34 + *(v34 - 24);
  if (*(v6 + 36) == -1)
  {
    std::ios_base::getloc((&v34 + *(v34 - 24)));
    v7 = std::locale::use_facet(&v33, MEMORY[0x1E69E5318]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v33);
    v5 = v34;
  }

  *(v6 + 36) = 48;
  *(&v35 + *(v5 - 24) + 8) = 2;
  MEMORY[0x1E69270E0](&v34, *(this + 2));
  *(&v35 + *(v34 - 24) + 8) = 1;
  v33.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, &v33, 1);
  *(&v35 + *(v34 - 24) + 8) = 2;
  MEMORY[0x1E69270E0](&v34, *(this + 3));
  *(&v35 + *(v34 - 24) + 8) = 1;
  v33.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, &v33, 1);
  *(&v35 + *(v34 - 24) + 8) = 2;
  MEMORY[0x1E69270E0](&v34, *(this + 4));
  *(&v35 + *(v34 - 24) + 8) = 1;
  if (*(this + 5) != -1)
  {
    v33.__r_.__value_.__s.__data_[0] = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, &v33, 1);
    MEMORY[0x1E69270D0](&v34, *(this + 5));
  }

  memset(a2, 170, sizeof(std::string));
  (*(*this + 24))(&v32, this);
  size = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v9 = &v32;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) == 22)
    {
      v10 = 22;
      v11 = 23;
LABEL_11:
      v13 = 2 * v10;
      if (v11 > 2 * v10)
      {
        v13 = v11;
      }

      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      if (v13 >= 0x17)
      {
        v12 = v14;
      }

      else
      {
        v12 = 23;
      }

      v15 = v10 == 22;
      goto LABEL_20;
    }

LABEL_26:
    v9->__r_.__value_.__s.__data_[size] = 45;
    v19 = size + 1;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      v32.__r_.__value_.__l.__size_ = v19;
    }

    else
    {
      *(&v32.__r_.__value_.__s + 23) = v19 & 0x7F;
    }

    v18 = v9 + v19;
    goto LABEL_30;
  }

  size = v32.__r_.__value_.__l.__size_;
  v11 = v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v10 = (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 != v32.__r_.__value_.__l.__size_)
  {
    v9 = v32.__r_.__value_.__r.__words[0];
    goto LABEL_26;
  }

  v12 = 0x7FFFFFFFFFFFFFF7;
  if (v11 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v32.__r_.__value_.__r.__words[0];
  if (v10 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_11;
  }

  v15 = 0;
LABEL_20:
  v16 = operator new(v12);
  v17 = v16;
  if (v10)
  {
    memmove(v16, v9, v10);
  }

  *(v17 + v10) = 45;
  if (!v15)
  {
    operator delete(v9);
  }

  v32.__r_.__value_.__l.__size_ = v11;
  v32.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
  v32.__r_.__value_.__r.__words[0] = v17;
  v18 = (v17 + v11);
LABEL_30:
  *v18 = 0;
  v33 = v32;
  memset(&v32, 0, sizeof(v32));
  if ((BYTE8(v40) & 0x10) != 0)
  {
    v22 = v40;
    if (v40 < *(&v37 + 1))
    {
      *&v40 = *(&v37 + 1);
      v22 = *(&v37 + 1);
    }

    v23 = v37;
    v20 = v22 - v37;
    if ((v22 - v37) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if ((BYTE8(v40) & 8) == 0)
    {
      v20 = 0;
      HIBYTE(v31) = 0;
      v21 = &v29;
      goto LABEL_44;
    }

    v23 = *(&v35 + 1);
    v20 = *(&v36 + 1) - *(&v35 + 1);
    if (*(&v36 + 1) - *(&v35 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_60:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v20 | 7) + 1;
    }

    v21 = operator new(v24);
    v30 = v20;
    v31 = v24 | 0x8000000000000000;
    v29 = v21;
    goto LABEL_43;
  }

  HIBYTE(v31) = v20;
  v21 = &v29;
  if (v20)
  {
LABEL_43:
    memmove(v21, v23, v20);
  }

LABEL_44:
  *(v21 + v20) = 0;
  if (v31 >= 0)
  {
    v25 = &v29;
  }

  else
  {
    v25 = v29;
  }

  if (v31 >= 0)
  {
    v26 = HIBYTE(v31);
  }

  else
  {
    v26 = v30;
  }

  v27 = std::string::append(&v33, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_57:
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_58;
  }

  operator delete(v29);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_52:
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_58:
  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_53:
  *&v34 = *MEMORY[0x1E69E54E8];
  *(&v34 + *(v34 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v34 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v34 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v35);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v41);
}

void sub_1E52D3760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](&a42);
  _Unwind_Resume(a1);
}

void BBUEURFirmwareVersion::getAsString(BBUEURFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  (*(*this + 32))(a2);
  v4 = *(this + 47);
  if (v4 < 0)
  {
    if (!*(this + 4))
    {
      return;
    }
  }

  else if (!*(this + 47))
  {
    return;
  }

  if (v4 >= 0)
  {
    v5 = *(this + 47);
  }

  else
  {
    v5 = *(this + 4);
  }

  v6 = v5 + 1;
  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v6 | 7) + 1;
    }

    v8 = operator new(v7);
    v14 = v5 + 1;
    v15 = v7 | 0x8000000000000000;
    __p = v8;
    *v8 = 95;
    v9 = v8 + 1;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  HIBYTE(v15) = v5 + 1;
  v9 = &__p + 1;
  __p = 95;
  if (v5)
  {
LABEL_15:
    if (v4 >= 0)
    {
      v10 = this + 24;
    }

    else
    {
      v10 = *(this + 3);
    }

    memmove(v9, v10, v5);
  }

  v9[v5] = 0;
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v15 >= 0)
  {
    v12 = HIBYTE(v15);
  }

  else
  {
    v12 = v14;
  }

  std::string::append(a2, p_p, v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52D3970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void BBUEURFirmwareVersion::getFirmwarePrefix(BBUEURFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

uint64_t BBULogIOABP::startRunLoopThread(pthread_t *this)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1174405120;
  v7[2] = ___ZN11BBULogIOABP18startRunLoopThreadEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_15;
  v7[4] = this;
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  pthread_create(this + 9, 0, enterRunLoopThread, v7);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  v5 = this[11];
  this[11] = Controller;
  if (v5)
  {
    CFRelease(v5);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  return 1;
}

void sub_1E52D3ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFRunLoopSource>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFRunLoop>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<std::unique_ptr<BBULogIOABP::ABPBuffer>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = v5[1];
          if (v7)
          {
            v5[2] = v7;
            operator delete(v7);
          }

          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BBULogIOABP::BBULogIOABP(BBULogIOABP *this)
{
  *(this + 12) = &off_1F5F02370;
  *this = &off_1F5F023F8;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  v2 = operator new(0x1000uLL);
  bzero(v2, 0x1000uLL);
  *(this + 17) = v2 + 4096;
  *(this + 18) = v2 + 4096;
  *(this + 15) = 4096;
  *(this + 16) = v2;
  *(this + 104) = xmmword_1E53924E0;
  *(this + 152) = 1;
  *(this + 12) = &unk_1F5F02168;
  *this = &unk_1F5F020D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = dispatch_queue_create("com.apple.BBULogIOABP", 0);
  *(this + 2) = 0u;
  *(this + 3) = v3;
  *(this + 80) = 0;
  *(this + 11) = 0;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + *(*this - 80) + 56) = 0;
  BBULogIOABP::startRunLoopThread(this);
}

void sub_1E52D3D80(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v3);
  ctu::cf::CFSharedRef<__CFRunLoopSource>::~CFSharedRef((v2 + 64));
  ctu::cf::CFSharedRef<__CFRunLoop>::~CFSharedRef((v2 + 56));
  std::vector<std::unique_ptr<BBULogIOABP::ABPBuffer>>::~vector[abi:ne200100](v4);
  v7 = *(v2 + 24);
  if (v7)
  {
    dispatch_release(v7);
    v8 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (!v8)
    {
LABEL_3:
      v9 = *v5;
      *v5 = 0;
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  (*(*v8 + 8))(v8);
  v9 = *v5;
  *v5 = 0;
  if (!v9)
  {
LABEL_4:
    BBULogCircularBuffer::~BBULogCircularBuffer(v1, off_1F5F021C0);
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v9 + 16))(v9);
  BBULogCircularBuffer::~BBULogCircularBuffer(v1, off_1F5F021C0);
  _Unwind_Resume(a1);
}

void BBULogCircularBuffer::~BBULogCircularBuffer(BBULogCircularBuffer *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 80)) = a2[1];
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void BBULogIOABP::~BBULogIOABP(BBULogIOABP *this)
{
  *(this + 12) = &unk_1F5F02168;
  *this = &unk_1F5F020D8;
  BBULogIOABP::disable(this);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = ___ZN11BBULogIOABP17stopRunLoopThreadEv_block_invoke;
  v17[3] = &__block_descriptor_tmp_4_0;
  v17[4] = &v18;
  v17[5] = this;
  dispatch_sync(v3, v17);
  if (*(v19 + 24) == 1)
  {
    pthread_join(*(this + 9), 0);
    v4 = *(this + 7);
    *(this + 7) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  _Block_object_dispose(&v18, 8);
  v5 = *(this + 11);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          v13 = v11[1];
          if (v13)
          {
            v11[2] = v13;
            operator delete(v13);
          }

          operator delete(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  v14 = *(this + 3);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 1);
  *(this + 1) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }
}

{
  BBULogIOABP::~BBULogIOABP(this);
  v2[12] = &off_1F5F02370;
  *v2 = &off_1F5F023F8;
  v3 = v2[16];
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }
}

{
  BBULogIOABP::~BBULogIOABP(this);
  v2[12] = &off_1F5F02370;
  *v2 = &off_1F5F023F8;
  v3 = v2[16];
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  operator delete(this);
}

void sub_1E52D4130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  __clang_call_terminate(a1);
}

void virtual thunk toBBULogIOABP::~BBULogIOABP(BBULogIOABP *this)
{
  BBULogIOABP::~BBULogIOABP((this + *(*this - 32)));
  v1[12] = &off_1F5F02370;
  *v1 = &off_1F5F023F8;
  v2 = v1[16];
  if (v2)
  {
    v1[17] = v2;

    operator delete(v2);
  }
}

{
  v1 = (this + *(*this - 32));
  BBULogIOABP::~BBULogIOABP(v1);
  *(v1 + 12) = &off_1F5F02370;
  *v1 = &off_1F5F023F8;
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 17) = v2;
    operator delete(v2);
  }

  operator delete(v1);
}

void ___ZN11BBULogIOABP18startRunLoopThreadEv_block_invoke(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  Current = CFRunLoopGetCurrent();
  v6 = Current;
  if (Current)
  {
    CFRetain(Current);
  }

  v7 = *(v4 + 56);
  *(v4 + 56) = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = a2;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);

  dispatch_group_leave(v9);
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t enterRunLoopThread(void (**a1)(void, void))
{
  memset(&context, 0, 72);
  context.perform = performNOP;
  v2 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, v2, *MEMORY[0x1E695E8E0]);
  (a1)[2](a1, v2);
  CFRunLoopRun();
  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

void sub_1E52D44E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFRunLoopSource>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN11BBULogIOABP17stopRunLoopThreadEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 56);
  if (v3)
  {
    CFRunLoopWakeUp(v3);
    CFRunLoopSourceInvalidate(*(v2 + 64));
    v4 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    CFRunLoopPerformBlock(*(v2 + 56), *MEMORY[0x1E695E8E0], &__block_literal_global_2);
    CFRunLoopWakeUp(*(v2 + 56));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZN11BBULogIOABP17stopRunLoopThreadEv_block_invoke_2()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

void ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke()
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v0 = pci::transport::kernel::errorAsString();
    _BBULog(1, 0, "BBULogIOABP", "", "received '%s' error. arg0 = %#llx arg1 = %#llx\n", v1, v2, v3, v0);
  }
}

uint64_t ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_3;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = v3;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v4, block);
  return 0;
}

void ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[4];
  if ((*(v8 + *(*v8 - 80) + 56) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 0x93u, "Assertion failure(fEnabled)", v17, v18, v19, v23);
    goto LABEL_22;
  }

  v10 = a1[5];
  if (!*v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 0x95u, "Assertion failure(buf->size)", v20, v21, v22, v23);
LABEL_22:
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    v24 = a1[6];
    _BBULog(2, 6, "BBULogIOABP", "", "add log: data %p size %zu\n", a6, a7, a8, *(v10 + 1));
  }

LABEL_7:
  (*(*(v8 + *(*v8 - 80)) + 24))(v8 + *(*v8 - 80), *(v10 + 1), a1[6]);
  if (*(v8 + 80))
  {
    v11 = *(v10 + 4);

    _Block_release(v11);
  }

  else
  {
    v15 = (*(**(v8 + 16) + 64))(*(v8 + 16), *(v10 + 1), *v10, 0, BBULogIOABP::cbReadLogs, v10);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(2, 6, "BBULogIOABP", "", "readLogsAsync: ret %#x\n", v12, v13, v14, v15);
    }
  }
}

void BBULogIOABP::cbReadLogs(BBULogIOABP *this, void *a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "readCompletion: ret %#x, arg0 %p, refCon %p\n", a6, a7, a8, v8);
  }

LABEL_5:
  if (this && (*(*(this + 4) + 16))())
  {
    v10 = *(this + 4);

    _Block_release(v10);
  }
}

void **std::unique_ptr<BBULogIOABP::ABPBuffer>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      v1[2] = v3;
      operator delete(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void BBULogIOABP::enable(BBULogIOABP *this)
{
  v1 = *(this + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN11BBULogIOABP6enableEv_block_invoke;
  block[3] = &__block_descriptor_tmp_40;
  block[4] = this;
  dispatch_async(v1, block);
}

void ___ZN11BBULogIOABP6enableEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 32);
  if ((*(v9 + *(*v9 - 80) + 56) & 1) != 0 || !v9[7] || !v9[11])
  {
    return;
  }

  _Block_copy(&__block_literal_global_33);
  v10 = TelephonyBasebandRegisterForReset();
  if ((v10 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v10 = _BBULog(1, 1, "BBULogIOABP", "", "Failed to register for reset detect", v11, v12, v13, v52);
    }
  }

LABEL_9:
  LODWORD(__sz) = 0x10000;
  pci::transport::kernelControl::create(&v54, v10);
  v17 = v54;
  v54 = 0;
  v18 = v9[2];
  v9[2] = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v54;
    v54 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v17 = v9[2];
  }

  if (!v17)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_90;
        }

LABEL_58:
        if (gBBULogVerbosity < 1)
        {
          goto LABEL_90;
        }

        v48 = "Fail to create kernelControl\n";
LABEL_89:
        _BBULog(1, 1, "BBULogIOABP", "", v48, v14, v15, v16, v52);
        goto LABEL_90;
      }
    }

LABEL_57:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_58;
  }

  if (((*(*v17 + 24))(v17) & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_90;
        }

LABEL_65:
        if (gBBULogVerbosity < 1)
        {
          goto LABEL_90;
        }

        v48 = "Fail to start kernelControl\n";
        goto LABEL_89;
      }
    }

LABEL_64:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_65;
  }

  v20 = (*(*v9[2] + 72))(v9[2], v9[7], &__block_literal_global_15);
  if (v20)
  {
    v49 = v20;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_71;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_90;
        }

LABEL_72:
        if (gBBULogVerbosity < 1)
        {
          goto LABEL_90;
        }

        v50 = "Fail to registerEventNotification: %#x \n";
LABEL_81:
        _BBULog(1, 1, "BBULogIOABP", "", v50, v14, v15, v16, v49);
        goto LABEL_90;
      }
    }

LABEL_71:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_72;
  }

  v21 = (*(*v9[2] + 40))(v9[2], v9[7]);
  if (v21)
  {
    v49 = v21;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_78;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_90;
        }

LABEL_79:
        if (gBBULogVerbosity < 1)
        {
          goto LABEL_90;
        }

        v50 = "Fail to open kernelControl: %#x \n";
        goto LABEL_81;
      }
    }

LABEL_78:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_79;
  }

  v22 = (*(*v9[2] + 96))(v9[2], &__sz);
  if (gBBULogMaskGet(void)::once == -1)
  {
    v23 = *gBBULogMaskGet(void)::sBBULogMask;
    v24 = gBBULogVerbosity;
    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_83;
  }

  v51 = v22;
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v23 = *gBBULogMaskGet(void)::sBBULogMask;
  v24 = gBBULogVerbosity;
  if ((v51 & 1) == 0)
  {
LABEL_83:
    if ((v23 & 2) != 0 && v24 >= 6 && (_BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp"), gBBULogMaskGet(void)::once != -1))
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_90;
      }
    }

    else if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_90;
    }

    if (gBBULogVerbosity >= 1)
    {
      v48 = "failed to getLogInternalBufferSize... will use %lu bytes.\n";
      v52 = __sz;
      goto LABEL_89;
    }

LABEL_90:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      return;
    }

    v45 = "Failed to enable\n";
    v46 = 1;
    v47 = 1;
    goto LABEL_50;
  }

LABEL_19:
  if ((v23 & 4) != 0 && v24 >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "internal buffer is %lu bytes\n", v14, v15, v16, __sz);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_28;
  v25 = 4;
  aBlock[4] = v9;
  do
  {
    v26 = operator new(0x28uLL);
    v27 = __sz;
    *v26 = __sz;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 1) = 0;
    if (v27)
    {
      v28 = operator new(v27);
      *(v26 + 1) = v28;
      v29 = &v28[v27];
      *(v26 + 3) = &v28[v27];
      bzero(v28, v27);
      *(v26 + 2) = v29;
    }

    *(v26 + 4) = _Block_copy(aBlock);
    v54 = v26;
    v31 = v9[5];
    v30 = v9[6];
    if (v31 >= v30)
    {
      v33 = v9[4];
      v34 = v31 - v33;
      v35 = (v31 - v33) >> 3;
      v36 = v35 + 1;
      if ((v35 + 1) >> 61)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v37 = v30 - v33;
      if (v37 >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        if (v38 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v39 = operator new(8 * v38);
      }

      else
      {
        v39 = 0;
      }

      v40 = &v39[8 * v35];
      *v40 = v26;
      v32 = v40 + 1;
      memcpy(v39, v33, v34);
      v9[4] = v39;
      v9[5] = v32;
      v9[6] = &v39[8 * v38];
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v31 = v26;
      v32 = v31 + 8;
    }

    v9[5] = v32;
    v44 = (*(*v9[2] + 64))(v9[2], *(v26 + 1), *v26, 0, BBULogIOABP::cbReadLogs, v26);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        goto LABEL_23;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(2, 6, "BBULogIOABP", "", "readLogsAsync returned %#x\n", v41, v42, v43, v44);
    }

LABEL_23:
    --v25;
  }

  while (v25);
  (*(*(v9 + *(*v9 - 80)) + 56))(v9 + *(*v9 - 80), (2 * __sz));
  *(v9 + *(*v9 - 80) + 56) = 1;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return;
    }

LABEL_48:
    if (gBBULogVerbosity < 6)
    {
      return;
    }

    v45 = "Succeed to enable\n";
    v46 = 2;
    v47 = 6;
LABEL_50:

    _BBULog(v46, v47, "BBULogIOABP", "", v45, v14, v15, v16, a9);
    return;
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
  {
    goto LABEL_48;
  }
}

void sub_1E52D56E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<BBULogIOABP::ABPBuffer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52D5710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<BBULogIOABP::ABPBuffer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN11BBULogIOABP6enableEv_block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v10 = *gBBULogMaskGet(void)::sBBULogMask;
  if (a2 == -469794816)
  {
    if ((v10 & 4) == 0 || gBBULogVerbosity < 0)
    {
      return;
    }

    v11 = "baseband reset detected\n";
    goto LABEL_11;
  }

  if (a2 == -469794815)
  {
    if ((v10 & 4) == 0 || gBBULogVerbosity < 0)
    {
      return;
    }

    v11 = "baseband alive detected\n";
LABEL_11:

    _BBULog(2, 0, "BBULogIOABP", "", v11, a6, a7, a8, a9);
    return;
  }

  if ((v10 & 4) != 0 && gBBULogVerbosity >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "reset message type: %x\n", a6, a7, a8, a2);
  }
}

void sResetDetectCallback(void (**a1)(void, void), unsigned int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    a1[2](a1, a3);

    _Block_release(a1);
  }
}

void virtual thunk toBBULogIOABP::enable(BBULogIOABP *this)
{
  v1 = this + *(*this - 48);
  v2 = *(v1 + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN11BBULogIOABP6enableEv_block_invoke;
  block[3] = &__block_descriptor_tmp_40;
  block[4] = v1;
  dispatch_async(v2, block);
}

void BBULogIOABP::disable(BBULogIOABP *this)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(this + 3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZN11BBULogIOABP7disableEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_50;
  v8[4] = this;
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  dispatch_async(v3, v8);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  if (*(this + 2))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_6:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(2, 6, "BBULogIOABP", "", "closing ABPControlObj\n", v4, v5, v6, v8[0]);
        }
      }
    }

    (*(**(this + 2) + 56))(*(this + 2));
    (*(**(this + 2) + 32))(*(this + 2));
    v7 = *(this + 2);
    *(this + 2) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v2)
  {
    dispatch_release(v2);
  }
}

void sub_1E52D5AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

void ___ZN11BBULogIOABP7disableEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + *(*v1 - 80) + 56) == 1 && *(v1 + 16))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN11BBULogIOABP7disableEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_47_1;
    v3 = *(a1 + 40);
    aBlock[4] = v1;
    object = v3;
    if (v3)
    {
      dispatch_retain(v3);
    }

    *(v1 + 80) = 1;
    v4 = operator new(0x28uLL);
    *v4 = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    *(v4 + 4) = _Block_copy(aBlock);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    if (v6 >= v5)
    {
      v11 = *(v1 + 32);
      v12 = v6 - v11;
      v13 = (v6 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v15 = v5 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v17 = operator new(8 * v16);
      }

      else
      {
        v17 = 0;
      }

      v18 = &v17[8 * v13];
      *v18 = v4;
      v9 = v18 + 1;
      memcpy(v17, v11, v12);
      *(v1 + 32) = v17;
      *(v1 + 40) = v9;
      *(v1 + 48) = &v17[8 * v16];
      if (v11)
      {
        operator delete(v11);
        v8 = *v4;
        v7 = *(v4 + 1);
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      *v6 = v4;
      v9 = v6 + 8;
    }

    *(v1 + 40) = v9;
    if ((*(**(v1 + 16) + 64))(*(v1 + 16), v7, v8, 1, BBULogIOABP::cbReadLogs, v4))
    {
      dispatch_group_leave(*(a1 + 40));
    }

    if (object)
    {
      dispatch_release(object);
    }
  }

  else
  {
    v10 = *(a1 + 40);

    dispatch_group_leave(v10);
  }
}

void sub_1E52D5D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN11BBULogIOABP7disableEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN11BBULogIOABP7disableEv_block_invoke_3;
  v5[3] = &__block_descriptor_tmp_44_0;
  v5[4] = v2;
  object = v1;
  if (v1)
  {
    dispatch_retain(v1);
  }

  dispatch_async(v3, v5);
  if (object)
  {
    dispatch_release(object);
  }

  return 1;
}

void ___ZN11BBULogIOABP7disableEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBULogIOABP", "", "last readLogBlock callback\n", a6, a7, a8, v11);
  }

LABEL_5:
  *(v9 + *(*v9 - 80) + 56) = 0;
  v10 = *(a1 + 40);

  dispatch_group_leave(v10);
}

void BBULogCircularBuffer::~BBULogCircularBuffer(BBULogCircularBuffer *this)
{
  *this = &unk_1F5F025E8;
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 5) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_1F5F025E8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void virtual thunk toBBULogCircularBuffer::~BBULogCircularBuffer(BBULogCircularBuffer *this)
{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F5F025E8;
  v2 = v1[4];
  if (v2)
  {
    v1[5] = v2;
    operator delete(v2);
  }
}

{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F5F025E8;
  v2 = v1[4];
  if (v2)
  {
    v1[5] = v2;
    operator delete(v2);
  }

  operator delete(v1);
}

uint64_t DaleImage_DDR::create@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x40uLL);
  *__p = *a1;
  v8 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  DaleImage_DDR::DaleImage_DDR(v4, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*v4 + 16))(v4);
  if (result)
  {
    *a2 = v4;
  }

  else
  {
    ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage();
    v6 = *(*v4 + 8);

    return v6(v4);
  }

  return result;
}

void sub_1E52D61A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  *v16 = 0;
  _Unwind_Resume(a1);
}

void sub_1E52D61D4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void *DaleImage_DDR::DaleImage_DDR(void *a1, const void **a2)
{
  v14 = 2;
  v15 = 1;
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 7;
  if (v3 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

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

    v8 = operator new(v7);
    *(&v12 + 1) = v3 + 7;
    v13 = v7 | 0x8000000000000000;
    *&v12 = v8;
    goto LABEL_11;
  }

  v13 = 0;
  v12 = 0uLL;
  v8 = &v12;
  HIBYTE(v13) = v3 + 7;
  if (v3)
  {
LABEL_11:
    v9 = *a2;
    if (v2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v8, v10, v3);
  }

  strcpy(v8 + v3, "ddr.bin");
  v16 = v12;
  v17 = v13;
  v13 = 0;
  v12 = 0uLL;
  v18 = 0;
  v19 = 1;
  DaleImage::DaleImage(a1, &v14);
  if (v19 == 1 && v18 != -1)
  {
    v21[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v21[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v21[v18])(&v20, &v16);
  }

  *a1 = &unk_1F5F02480;
  return a1;
}

void sub_1E52D63AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

uint64_t DaleImage_DDR::saveNewDataToFile(DaleImage_DDR *this, const void *a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  if (!a2 || !a3 || (*(this + 48) & 1) == 0 || *(this + 10))
  {
    goto LABEL_33;
  }

  v5 = *(this + 39);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(this + 3);
  }

  if (!v5)
  {
LABEL_33:
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    return 0;
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    v8 = MEMORY[0x1E6926300]();
    operator delete(v8);
    if (*(this + 10))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(this + 2), *(this + 3));
  }

  else
  {
    v21 = *(this + 16);
  }

  support::fs::SyncFile::create(&v21, 20, 0x100000uLL, &block);
  v11 = block;
  v10 = v26;
  block = 0;
  v26 = 0;
  v22 = v11;
  v23 = v10;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (!v11)
  {
    goto LABEL_34;
  }

  block = MEMORY[0x1E69E9820];
  v26 = 0x40000000;
  v27 = ___ZN7support2fs8SyncFile4openEv_block_invoke;
  v28 = &__block_descriptor_tmp_2;
  v29 = v11;
  ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped((v11 + 8), &block);
  isOpen = support::fs::SyncFile::isOpen(v11);
  if ((isOpen & 1) == 0)
  {
    goto LABEL_35;
  }

  isOpen = support::fs::SyncFile::write(v11, a2, a3);
  if ((isOpen & 1) == 0)
  {
    goto LABEL_35;
  }

  v24 = v11;
  block = MEMORY[0x1E69E9820];
  v26 = 0x40000000;
  v27 = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v28 = &__block_descriptor_tmp_17;
  v29 = v11 + 8;
  v30 = &v24;
  v13 = *(v11 + 24);
  if (*(v11 + 32))
  {
    dispatch_async_and_wait(v13, &block);
  }

  else
  {
    dispatch_sync(v13, &block);
  }

  isOpen = support::fs::SyncFile::isOpen(v11);
  if (isOpen)
  {
LABEL_35:
    ACFULogging::getLogInstance(isOpen);
    v18 = *(v11 + 40);
    *(v11 + 63);
    ACFULogging::handleMessage();
    goto LABEL_40;
  }

  LODWORD(block) = 0;
  LODWORD(v24) = 0;
  UidGid = support::fs::getUidGid(1, &block, &v24);
  if ((UidGid & 1) == 0)
  {
LABEL_34:
    ACFULogging::getLogInstance(UidGid);
    ACFULogging::handleMessage();
    goto LABEL_40;
  }

  if (*(v11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(v11 + 40), *(v11 + 48));
  }

  else
  {
    v20 = *(v11 + 40);
  }

  updated = support::fs::updateOwner(&v20, block, v24);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    v15 = updated;
    operator delete(v20.__r_.__value_.__l.__data_);
    updated = v15;
  }

  if ((updated & 1) == 0)
  {
    ACFULogging::getLogInstance(updated);
    if (*(v11 + 63) < 0)
    {
      v19 = *(v11 + 40);
    }

    ACFULogging::handleMessage();
LABEL_40:
    result = 0;
    if (!v10)
    {
      return result;
    }

    goto LABEL_30;
  }

  result = 1;
  if (!v10)
  {
    return result;
  }

LABEL_30:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v17 = result;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    return v17;
  }

  return result;
}

void sub_1E52D67D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a26);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void DaleImage_DDR::~DaleImage_DDR(DaleImage_DDR *this)
{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }

    *(this + 10) = -1;
  }
}

{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }
  }

  operator delete(this);
}

void DaleImageParameters::~DaleImageParameters(DaleImageParameters *this)
{
  if (*(this + 40) == 1)
  {
    v1 = *(this + 8);
    if (v1 != -1)
    {
      v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = this;
      (v4[v1])(&v3, this + 8);
      this = v2;
    }

    *(this + 8) = -1;
  }
}

{
  if (*(this + 40) == 1)
  {
    v1 = *(this + 8);
    if (v1 != -1)
    {
      v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = this;
      (v4[v1])(&v3, this + 8);
      this = v2;
    }

    *(this + 8) = -1;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

uint64_t __cxx_global_var_init_15()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUICEProgrammer::BBUICEProgrammer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BBUProgrammer::BBUProgrammer(a1, a2, a3, a4);
  *v5 = &unk_1F5F024A8;
  v6 = capabilities::programmer::connectAttemptCount(v5);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0xCu, "Assertion failure(capabilities::programmer::connectAttemptCount() <= std::numeric_limits<UInt32>::max() && capabilities::programmer::connectAttemptCount() exceeds maximum allowable value)", v13, v14, v15, v22);
    goto LABEL_8;
  }

  v7 = capabilities::programmer::connectTimeout(v6);
  if (v7 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0xDu, "Assertion failure(capabilities::programmer::connectTimeout().count() <= std::numeric_limits<UInt32>::max() && capabilities::programmer::connectTimeout().count() exceeds maximum allowable value)", v16, v17, v18, v22);
    goto LABEL_8;
  }

  v8 = capabilities::programmer::commandTimeout(v7);
  if (v8 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0xEu, "Assertion failure(capabilities::programmer::commandTimeout().count() <= std::numeric_limits<UInt32>::max() && capabilities::programmer::commandTimeout().count() exceeds maximum allowable value)", v19, v20, v21, v22);
LABEL_8:
  }

  v9 = capabilities::programmer::connectAttemptCount(v8);
  *(a1 + 68) = v9;
  v10 = capabilities::programmer::connectTimeout(v9);
  *(a1 + 72) = v10;
  *(a1 + 76) = capabilities::programmer::commandTimeout(v10);
  *(a1 + 80) = 0;
  return a1;
}

void sub_1E52D6C24(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  BBUProgrammer::~BBUProgrammer(v1);
  _Unwind_Resume(a1);
}

void BBUICEProgrammer::~BBUICEProgrammer(BBUICEProgrammer *this)
{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  operator delete(this);
}

void BBUICEProgrammer::gatherPersonalizationParameters(BBUICEProgrammer *this, BOOL a2, BOOL a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  exception = __cxa_allocate_exception(0x210uLL);
  _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0x36u, "Assertion failure(false && Error in gathering personalization parameters.)", v6, v7, v8, v9);
}

void BBUICEProgrammer::program()
{
  exception = __cxa_allocate_exception(0x210uLL);
  _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0x3Du, "Assertion failure(false && Programmer failure.)", v1, v2, v3, v4);
}

uint64_t BBUProgrammer::collectCoreDump()
{
  return 0;
}

{
  return 0;
}

void BBUProgrammer::getHashVerifiedFiles(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *DaleCommon::DalePersonalizationParams::DalePersonalizationParams(void *a1, uint64_t a2)
{
  __p = 0;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 != *a2)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v4 - *a2);
    memcpy(__p, v5, v6);
  }

  ACFUCommon::PersonalizeParams::PersonalizeParams();
  if (__p)
  {
    operator delete(__p);
  }

  *a1 = &unk_1F5F02560;
  ACFUCommon::Parameter::Parameter((a1 + 26));
  a1[28] = 0;
  a1[29] = 0;
  a1[30] = 0;
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  if (v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v8);
    a1[28] = v9;
    a1[29] = v9;
    v10 = &v9[v8];
    a1[30] = &v9[v8];
    memcpy(v9, v7, v8);
    a1[29] = v10;
  }

  return a1;
}

void sub_1E52D7174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E52D7190(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 29) = v5;
    operator delete(v5);
  }

  MEMORY[0x1E6925A00](v2);
  ACFUCommon::PersonalizeParams::~PersonalizeParams(v1);
  _Unwind_Resume(a1);
}

__CFDictionary *DaleCommon::DalePersonalizationParams::copyParametersDictionary(DaleCommon::DalePersonalizationParams *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = *(this + 28); i != *(this + 29); ++i)
    {
      location = CFStringFind(*i, @"ChipID", 0).location;
      if (location != -1)
      {
        if (*(this + 16) == 1)
        {
          v4 = *i;
          v5 = *(this + 1);
          goto LABEL_5;
        }

        ACFULogging::getLogInstance(location);
        ACFULogging::handleMessage();
      }

      v7 = CFStringFind(*i, @"SNUM", 0).location;
      if (v7 != -1)
      {
        if (*(this + 48) == 1)
        {
          v4 = *i;
          v5 = *(this + 5);
          goto LABEL_5;
        }

        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
      }

      v8 = CFStringFind(*i, @"GoldCertId", 0).location;
      if (v8 != -1)
      {
        if (*(this + 216) == 1)
        {
          v4 = *i;
          v5 = *(this + 26);
          goto LABEL_5;
        }

        ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage();
      }

      v9 = CFStringFind(*i, @"Nonce", 0).location;
      if (v9 == -1)
      {
        continue;
      }

      if (*(this + 64) != 1)
      {
        ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage();
        continue;
      }

      v4 = *i;
      v5 = *(this + 7);
LABEL_5:
      CFDictionaryAddValue(Mutable, v4, v5);
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return Mutable;
}

void DaleCommon::DalePersonalizationParams::logParameters(DaleCommon::DalePersonalizationParams *this)
{
  v2 = ACFUCommon::PersonalizeParams::logParameters(this);
  if (*(this + 216) == 1)
  {
    ACFULogging::getLogInstance(v2);
    ACFUCommon::Parameter::dataAsString((this + 208));
    ACFULogging::handleMessage();
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1E52D7494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DaleCommon::DalePersonalizationParams::~DalePersonalizationParams(DaleCommon::DalePersonalizationParams *this)
{
  *this = &unk_1F5F02560;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  MEMORY[0x1E6925A00](this + 208);

  ACFUCommon::PersonalizeParams::~PersonalizeParams(this);
}

{
  *this = &unk_1F5F02560;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  MEMORY[0x1E6925A00](this + 208);
  ACFUCommon::PersonalizeParams::~PersonalizeParams(this);

  operator delete(v3);
}

void *BBULogCircularBuffer::clearLog(void *this)
{
  this[1] = 0;
  this[3] = this[2];
  return this;
}

void *virtual thunk toBBULogCircularBuffer::clearLog(void *this)
{
  v1 = (this + *(*this - 24));
  v1[1] = 0;
  v1[3] = v1[2];
  return this;
}

uint64_t BBULogCircularBuffer::log(BBULogCircularBuffer *this, const char *a2, size_t a3)
{
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (!v4 && *(this + 56) == 1)
  {
    v6 = result;
    v7 = *(this + 1);
    v8 = *(this + 2);
    v9 = a3 - v8;
    if (a3 < v8)
    {
      v9 = 0;
    }

    v10 = &a2[v9];
    if (v8 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = *(this + 2);
    }

    v12 = v8 - v7;
    v13 = (*(this + 4) + v7);
    v14 = v11 - (v8 - v7);
    if (v11 <= v8 - v7)
    {
      memcpy(v13, &a2[v9], v11);
    }

    else
    {
      memcpy(v13, &a2[v9], v8 - v7);
      v15 = *(this + 3);
      v16 = *(this + 4);
      v17 = v15 >= v12;
      v18 = v15 - v12;
      if (!v17)
      {
        v18 = 0;
      }

      *(this + 3) = v18;
      v19 = (*(this + 1) + v12) % *(this + 2);
      *(this + 1) = v19;
      memcpy((v16 + v19), &v10[v12], v14);
      v11 = v14;
    }

    v21 = *(this + 2);
    v20 = *(this + 3);
    v17 = v20 >= v11;
    v22 = v20 - v11;
    if (!v17)
    {
      v22 = 0;
    }

    *(this + 3) = v22;
    *(this + 1) = (*(this + 1) + v11) % v21;
    return v6;
  }

  return result;
}

uint64_t virtual thunk toBBULogCircularBuffer::log(BBULogCircularBuffer *this, const char *a2, size_t a3)
{
  v4 = *(*this - 40);
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (!v5)
  {
    v7 = (this + v4);
    if (*(this + v4 + 56) == 1)
    {
      v8 = result;
      v9 = v7[1];
      v10 = v7[2];
      v11 = a3 - v10;
      if (a3 < v10)
      {
        v11 = 0;
      }

      v12 = &a2[v11];
      if (v10 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v7[2];
      }

      v14 = v10 - v9;
      v15 = (v7[4] + v9);
      v16 = v13 - (v10 - v9);
      if (v13 <= v10 - v9)
      {
        memcpy(v15, &a2[v11], v13);
      }

      else
      {
        memcpy(v15, &a2[v11], v10 - v9);
        v17 = v7[3];
        v18 = v7[4];
        v19 = v17 >= v14;
        v20 = v17 - v14;
        if (!v19)
        {
          v20 = 0;
        }

        v7[3] = v20;
        v21 = (v7[1] + v14) % v7[2];
        v7[1] = v21;
        memcpy((v18 + v21), &v12[v14], v16);
        v13 = v16;
      }

      v23 = v7[2];
      v22 = v7[3];
      v19 = v22 >= v13;
      v24 = v22 - v13;
      if (!v19)
      {
        v24 = 0;
      }

      v7[3] = v24;
      v7[1] = (v7[1] + v13) % v23;
      return v8;
    }
  }

  return result;
}

uint64_t BBULogCircularBuffer::getLogAsStringStreamSharedRef@<X0>(BBULogCircularBuffer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x118uLL);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_1F5F02660;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  if (!*(this + 3))
  {
    v6 = *(this + 4);
    v7 = *(this + 1);
    v8 = *(this + 2);
    std::ostream::write();
  }

  if (*(this + 1))
  {
    v9 = *(this + 4);
    std::ostream::write();
  }

  return (**this)(this);
}

void BBULogCircularBuffer::resize(BBULogCircularBuffer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 56) == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      return;
    }

    goto LABEL_25;
  }

  if (*(this + 2) >= a2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      return;
    }

LABEL_25:
    _BBULog(1, 6, "BBULogCircularBuffer", "", "check failed: %s, %d, assertion: %s\n", a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogCircularBuffer.cpp");
    return;
  }

  v11 = *(this + 4);
  v10 = *(this + 5);
  v12 = v10 - v11;
  v13 = a2 - (v10 - v11);
  if (a2 <= v10 - v11)
  {
    if (a2 < v10 - v11)
    {
      *(this + 5) = &v11[a2];
    }
  }

  else
  {
    v14 = *(this + 6);
    if (v14 - v10 >= v13)
    {
      bzero(v10, v13);
      *(this + 5) = &v11[a2];
    }

    else
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v15 = v14 - v11;
      v16 = 2 * v15;
      if (2 * v15 <= a2)
      {
        v16 = a2;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      v18 = operator new(v17);
      bzero(&v18[v12], v13);
      memcpy(v18, v11, v12);
      *(this + 4) = v18;
      *(this + 5) = &v18[a2];
      *(this + 6) = &v18[v17];
      if (v11)
      {
        operator delete(v11);
      }
    }
  }

  *(this + 2) = a2;
  *(this + 3) = a2;
  *(this + 1) = 0;
}

void std::__shared_ptr_pointer<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::__shared_ptr_default_delete<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>,std::allocator<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::__shared_ptr_default_delete<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>,std::allocator<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::__shared_ptr_default_delete<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>,std::allocator<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5392607)
  {
    if (((v2 & 0x80000001E5392607 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5392607))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5392607 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BBUICEUpdateSource::containsFile(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    v4 = *(a1 + 103);
    if (v4 >= 0)
    {
      v5 = *(a1 + 103);
    }

    else
    {
      v5 = *(a1 + 88);
    }

    v6 = v5 + 1;
    if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 < 0x17)
    {
      memset(&v19, 0, sizeof(v19));
      v10 = &v19;
      *(&v19.__r_.__value_.__s + 23) = v5 + 1;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((v6 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v6 | 7) + 1;
      }

      v9 = a1;
      v10 = operator new(v8);
      a1 = v9;
      v19.__r_.__value_.__l.__size_ = v5 + 1;
      v19.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
      v19.__r_.__value_.__r.__words[0] = v10;
    }

    if (v4 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    memmove(v10, v11, v5);
LABEL_19:
    *&v10[v5] = 47;
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = std::string::append(&v19, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    result = ctu::fs::file_exists();
    if (SHIBYTE(v21) < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      result = v17;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v18 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v18;
  }

  v2 = *(a1 + 64);

  return BBUZipFile::containsFile(v2, a2);
}

void sub_1E52D7E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void BBUICEUpdateSource::listFiles(uint64_t a1, uint64_t *a2, const void **a3)
{
  v63 = &v63;
  v64 = &v63;
  v65 = 0;
  if (*(a1 + 64))
  {
    BBUZipFile::getFileList(*(a1 + 64), &__p.__r_.__value_.__l.__data_);
    if (v65)
    {
      v5 = v64;
      v6 = *(v63 + 8);
      v7 = *v64;
      *(v7 + 8) = v6;
      *v6 = v7;
      v65 = 0;
      if (v5 != &v63)
      {
        do
        {
          v13 = v5[1];
          if (*(v5 + 39) < 0)
          {
            v14 = v5;
            operator delete(v5[2]);
            v5 = v14;
          }

          operator delete(v5);
          v5 = v13;
        }

        while (v13 != &v63);
      }
    }

    v8 = __p.__r_.__value_.__r.__words[2];
    if (__p.__r_.__value_.__r.__words[2])
    {
      v9 = *&__p.__r_.__value_.__l.__data_;
      v10 = *(__p.__r_.__value_.__r.__words[0] + 8);
      v11 = *__p.__r_.__value_.__l.__size_;
      *(v11 + 8) = v10;
      *v10 = v11;
      v12 = v63;
      *(v63 + 8) = *(&v9 + 1);
      **(&v9 + 1) = v12;
      *(v9 + 8) = &v63;
      v63 = v9;
      v65 += v8;
    }
  }

  else
  {
    BBUpdaterCommon::BBUReadDirectory((a1 + 80), &v63);
  }

  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (*(a3 + 23))
    {
      goto LABEL_12;
    }

LABEL_65:
    if (&v63 != a2)
    {
      v35 = v64;
      v36 = a2[1];
      if (v64 != &v63 && v36 != a2)
      {
        do
        {
          if (v36 != v35)
          {
            v40 = *(v35 + 39);
            if (*(v36 + 39) < 0)
            {
              if (v40 >= 0)
              {
                v37 = v35 + 2;
              }

              else
              {
                v37 = v35[2];
              }

              if (v40 >= 0)
              {
                v38 = *(v35 + 39);
              }

              else
              {
                v38 = v35[3];
              }

              std::string::__assign_no_alias<false>(v36 + 2, v37, v38);
            }

            else if ((*(v35 + 39) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v36 + 2, v35[2], v35[3]);
            }

            else
            {
              v41 = *(v35 + 1);
              v36[4] = v35[4];
              *(v36 + 1) = v41;
            }
          }

          v35 = v35[1];
          v36 = v36[1];
        }

        while (v35 != &v63 && v36 != a2);
      }

      if (v36 == a2)
      {
        if (v35 != &v63)
        {
          v45 = operator new(0x28uLL);
          v46 = v45;
          *v45 = 0;
          *(v45 + 1) = 0;
          if (*(v35 + 39) < 0)
          {
            std::string::__init_copy_ctor_external((v45 + 16), v35[2], v35[3]);
          }

          else
          {
            v47 = *(v35 + 1);
            *(v45 + 4) = v35[4];
            *(v45 + 1) = v47;
          }

          v48 = v35[1];
          v49 = 1;
          if (v48 == &v63)
          {
            v53 = v46;
          }

          else
          {
            v50 = v46;
            do
            {
              v52 = operator new(0x28uLL);
              v53 = v52;
              *v52 = v50;
              *(v52 + 1) = 0;
              if (*(v48 + 39) < 0)
              {
                std::string::__init_copy_ctor_external((v52 + 16), *(v48 + 16), *(v48 + 24));
              }

              else
              {
                v51 = *(v48 + 16);
                *(v52 + 4) = *(v48 + 32);
                *(v52 + 1) = v51;
              }

              v50[1] = v53;
              ++v49;
              v48 = *(v48 + 8);
              v50 = v53;
            }

            while (v48 != &v63);
          }

          v54 = *a2;
          *(v54 + 8) = v46;
          *v46 = v54;
          *a2 = v53;
          v53[1] = a2;
          a2[2] += v49;
        }
      }

      else
      {
        v42 = *(*a2 + 8);
        v43 = *v36;
        v43[1] = v42;
        *v42 = v43;
        do
        {
          v44 = v36[1];
          --a2[2];
          if (*(v36 + 39) < 0)
          {
            operator delete(v36[2]);
          }

          operator delete(v36);
          v36 = v44;
        }

        while (v44 != a2);
      }
    }

    goto LABEL_102;
  }

  if (!a3[1])
  {
    goto LABEL_65;
  }

LABEL_12:
  for (i = v64; i != &v63; i = i[1])
  {
    memset(&__p, 170, sizeof(__p));
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v16 = *(a3 + 23);
    if (v16 < 0)
    {
      v17 = a3[1];
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_21:
        if (v17 > size)
        {
          continue;
        }

        v19 = size;
LABEL_25:
        if ((v16 & 0x80000000) != 0)
        {
          v20 = v19 - a3[1];
          if ((size & 0x80000000) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v20 = v19 - v16;
          if ((size & 0x80000000) == 0)
          {
LABEL_27:
            if (v20 > size)
            {
              goto LABEL_108;
            }

            p_p = &__p;
            v22 = size - v20;
            if (size - v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_109;
            }

            goto LABEL_33;
          }
        }

        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ < v20)
        {
LABEL_108:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        v22 = __p.__r_.__value_.__l.__size_ - v20;
        if (__p.__r_.__value_.__l.__size_ - v20 >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_109:
          std::string::__throw_length_error[abi:ne200100]();
        }

LABEL_33:
        if (v22 >= 0x17)
        {
          if ((v22 | 7) == 0x17)
          {
            v24 = 25;
          }

          else
          {
            v24 = (v22 | 7) + 1;
          }

          p_dst = operator new(v24);
          v60 = v22;
          v61 = v24 | 0x8000000000000000;
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v61) = v22;
          p_dst = &__dst;
          if (size == v20)
          {
LABEL_41:
            v25 = 0;
            *(p_dst + v22) = 0;
            v26 = *(a3 + 23);
            if (v26 >= 0)
            {
              v27 = *(a3 + 23);
            }

            else
            {
              v27 = a3[1];
            }

            v28 = HIBYTE(v61);
            v29 = SHIBYTE(v61);
            if (v61 < 0)
            {
              v28 = v60;
            }

            if (v27 == v28)
            {
              if (v26 >= 0)
              {
                v30 = a3;
              }

              else
              {
                v30 = *a3;
              }

              if (v61 >= 0)
              {
                v31 = &__dst;
              }

              else
              {
                v31 = __dst;
              }

              v25 = memcmp(v30, v31, v27) == 0;
              if (v29 < 0)
              {
                goto LABEL_54;
              }

LABEL_58:
              if (!v25)
              {
LABEL_55:
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  continue;
                }

                goto LABEL_14;
              }
            }

            else
            {
              if ((SHIBYTE(v61) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_54:
              operator delete(__dst);
              if (!v25)
              {
                goto LABEL_55;
              }
            }

            v32 = operator new(0x28uLL);
            v33 = v32;
            *v32 = 0;
            *(v32 + 1) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external((v32 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              *(v32 + 16) = __p;
            }

            v34 = *a2;
            *v33 = *a2;
            v33[1] = a2;
            *(v34 + 8) = v33;
            *a2 = v33;
            ++a2[2];
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              continue;
            }

            goto LABEL_14;
          }
        }

        memmove(p_dst, p_p + v20, v22);
        goto LABEL_41;
      }
    }

    else
    {
      v17 = *(a3 + 23);
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v19 = __p.__r_.__value_.__l.__size_;
    if (v17 <= __p.__r_.__value_.__l.__size_)
    {
      goto LABEL_25;
    }

LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_102:
  if (v65)
  {
    v55 = v64;
    v56 = *(v63 + 8);
    v57 = *v64;
    *(v57 + 8) = v56;
    *v56 = v57;
    v65 = 0;
    if (v55 != &v63)
    {
      do
      {
        v58 = v55[1];
        if (*(v55 + 39) < 0)
        {
          operator delete(v55[2]);
        }

        operator delete(v55);
        v55 = v58;
      }

      while (v58 != &v63);
    }
  }
}

void sub_1E52D8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  operator delete(v16);
  std::list<std::string>::~list(&a16);
  _Unwind_Resume(a1);
}

void sub_1E52D8420(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  operator delete(v17);
  __cxa_begin_catch(a1);
  while (1)
  {
    v19 = *v16;
    if (*(v16 + 39) < 0)
    {
      operator delete(v16[2]);
    }

    operator delete(v16);
    v16 = v19;
    if (!v19)
    {
      __cxa_rethrow();
    }
  }
}

void sub_1E52D8498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  operator delete(v19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::list<std::string>::~list(&a19);
  _Unwind_Resume(a1);
}

void *BBUICEUpdateSource::createDataSource(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = *(a1 + 103);
    }

    else
    {
      v9 = *(a1 + 88);
    }

    v10 = v9 + 1;
    if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 < 0x17)
    {
      memset(&v21, 0, sizeof(v21));
      v13 = &v21;
      *(&v21.__r_.__value_.__s + 23) = v9 + 1;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      v12 = a1;
      v13 = operator new(v11);
      a1 = v12;
      v21.__r_.__value_.__l.__size_ = v9 + 1;
      v21.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
      v21.__r_.__value_.__r.__words[0] = v13;
    }

    if (v8 >= 0)
    {
      v14 = (a1 + 80);
    }

    else
    {
      v14 = *(a1 + 80);
    }

    memmove(v13, v14, v9);
LABEL_23:
    *&v13[v9] = 47;
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    v18 = std::string::append(&v21, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v23 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v7 = operator new(0x30uLL);
    *v7 = &unk_1F5F00F28;
    *(v7 + 1) = 0u;
    *(v7 + 3) = 0u;
    if (BBUFileDataSource::init(v7, __p, a3))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v7;
      }
    }

    else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    operator delete(v21.__r_.__value_.__l.__data_);
    return v7;
  }

  v6 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = operator new(0x38uLL);
  *v7 = &unk_1F5F02918;
  v7[1] = v5;
  v7[4] = 0;
  v7[5] = 0;
  v7[3] = 0;
  if (BBUZipDataSource::init(v7, a2, a3))
  {
    (*(*v7 + 8))(v7);
    v7 = 0;
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return v7;
}

void sub_1E52D8798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::saveFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x58u, "Assertion failure(fZipFile && Error: BBU firmware data error!)", v37, v38, v39, v40);
  }

  if (!BBUZipFile::containsFile(v4, a2))
  {
    return 35;
  }

  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v53 = v8;
  v54 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = operator new(0x38uLL);
  *v9 = &unk_1F5F02918;
  v9[1] = v8;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  if (BBUZipDataSource::init(v9, a2, 0))
  {
    (*(*v9 + 8))(v9);
    v9 = 0;
  }

  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9)
    {
      goto LABEL_10;
    }

    return 35;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v9)
  {
    return 35;
  }

LABEL_10:
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51[7] = v10;
  v51[8] = v10;
  v51[5] = v10;
  v51[6] = v10;
  v51[3] = v10;
  v51[4] = v10;
  v51[1] = v10;
  v51[2] = v10;
  v51[0] = v10;
  v49 = v10;
  v50 = v10;
  v47 = v10;
  *__p = v10;
  v45 = v10;
  v46 = v10;
  v44 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/", 1);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_45;
  }

  v22 = (**a1)(a1);
  if ((BYTE8(v50) & 0x10) != 0)
  {
    v26 = v50;
    if (v50 < *(&v47 + 1))
    {
      *&v50 = *(&v47 + 1);
      v26 = *(&v47 + 1);
    }

    v27 = v47;
    v23 = v26 - v47;
    if ((v26 - v47) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if ((BYTE8(v50) & 8) == 0)
    {
      v23 = 0;
      HIBYTE(v43) = 0;
      p_dst = &__dst;
      goto LABEL_41;
    }

    v27 = *(&v45 + 1);
    v23 = *(&v46 + 1) - *(&v45 + 1);
    if (*(&v46 + 1) - *(&v45 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_67:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v23 | 7) + 1;
    }

    p_dst = operator new(v28);
    v42 = v23;
    v43 = v28 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v43) = v23;
    p_dst = &__dst;
    if (!v23)
    {
      goto LABEL_41;
    }
  }

  memmove(p_dst, v27, v23);
LABEL_41:
  *(p_dst + v23) = 0;
  v29 = &__dst;
  if (v43 < 0)
  {
    LOBYTE(v29) = __dst;
  }

  _BBULog(3, 0, v22, "", "Saving %s\n", v19, v20, v21, v29);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__dst);
  }

LABEL_45:
  if ((BYTE8(v50) & 0x10) != 0)
  {
    v32 = v50;
    if (v50 < *(&v47 + 1))
    {
      *&v50 = *(&v47 + 1);
      v32 = *(&v47 + 1);
    }

    v33 = v47;
    v30 = v32 - v47;
    if ((v32 - v47) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if ((BYTE8(v50) & 8) == 0)
    {
      v30 = 0;
      HIBYTE(v43) = 0;
      v31 = &__dst;
      goto LABEL_59;
    }

    v33 = *(&v45 + 1);
    v30 = *(&v46 + 1) - *(&v45 + 1);
    if (*(&v46 + 1) - *(&v45 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_65:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v30 | 7) + 1;
    }

    v31 = operator new(v34);
    v42 = v30;
    v43 = v34 | 0x8000000000000000;
    __dst = v31;
  }

  else
  {
    HIBYTE(v43) = v30;
    v31 = &__dst;
    if (!v30)
    {
      goto LABEL_59;
    }
  }

  memmove(v31, v33, v30);
LABEL_59:
  *(v31 + v30) = 0;
  v35 = (*(*v9 + 48))(v9, &__dst, 0);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__dst);
  }

  (*(*v9 + 8))(v9);
  *&v44 = *MEMORY[0x1E69E54E8];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v44 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v44 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v45);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v51);
  return v35;
}

void sub_1E52D8DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::saveImages(BBUICEUpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x72u, "Assertion failure(fZipFile && Error: BBU firmware data error!)", v29, v30, v31, v36);
  }

  memset(__src, 170, 24);
  capabilities::radio::personalizedFirmwarePath(__src, this);
  if (SHIBYTE(__src[2]) < 0)
  {
    if (__src[1])
    {
      v2 = __src[0];
      goto LABEL_7;
    }

LABEL_76:
    v32 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v32, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x75u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v33, v34, v35, v36);
  }

  if (!HIBYTE(__src[2]))
  {
    goto LABEL_76;
  }

  v2 = __src;
LABEL_7:
  v37 = this;
  BBUFeedback::handleComment(*(this + 1), "Saving image to %s", v2);
  v3 = 0;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v39.st_blksize = v4;
  *v39.st_qspare = v4;
  v39.st_birthtimespec = v4;
  *&v39.st_size = v4;
  v39.st_mtimespec = v4;
  v39.st_ctimespec = v4;
  *&v39.st_uid = v4;
  v39.st_atimespec = v4;
  *&v39.st_dev = v4;
  while (1)
  {
    v5 = __src[2] >= 0 ? __src : __src[0];
    v6 = stat(v5, &v39);
    result = 0;
    if (v3 == -1 || !v6)
    {
      break;
    }

    v8 = HIBYTE(__src[2]);
    v9 = __src[1];
    if (__src[2] >= 0)
    {
      v10 = HIBYTE(__src[2]);
    }

    else
    {
      v10 = __src[1];
    }

    if (v10 <= v3 || ((v11 = __src[0], __src[2] >= 0) ? (v12 = __src) : (v12 = __src[0]), (v13 = memchr(v12 + v3, 47, v10 - v3), v14 = v13 - v12, v13) ? (v15 = v14 == -1) : (v15 = 1), v15))
    {
      v3 = 1;
      if ((v8 & 0x80) != 0)
      {
        if (v9)
        {
          memset(__dst, 170, sizeof(__dst));
          v14 = v9;
          v8 = v9;
          v11 = __src[0];
          v16 = v9;
          if (v9 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_60;
          }

          goto LABEL_38;
        }
      }

      else if (v8)
      {
        v14 = v8;
        memset(__dst, 170, sizeof(__dst));
        v11 = __src;
        v16 = v8;
        goto LABEL_38;
      }
    }

    else
    {
      v3 = 1;
      if (v14)
      {
        memset(__dst, 170, sizeof(__dst));
        if ((v8 & 0x80) != 0)
        {
          v8 = v9;
          if (v9 >= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v9;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
LABEL_60:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        else
        {
          v11 = __src;
          if (v8 >= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v8;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_60;
          }
        }

LABEL_38:
        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __dst[1] = v16;
          __dst[2] = (v18 | 0x8000000000000000);
          __dst[0] = v17;
LABEL_45:
          memmove(v17, v11, v16);
          goto LABEL_46;
        }

        HIBYTE(__dst[2]) = v16;
        v17 = __dst;
        if (v8)
        {
          goto LABEL_45;
        }

LABEL_46:
        *(v17 + v16) = 0;
        if (SHIBYTE(__dst[2]) >= 0)
        {
          v19 = __dst;
        }

        else
        {
          v19 = __dst[0];
        }

        if (stat(v19, &v39))
        {
          v20 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
          if (mkdir(v20, 0x1EDu))
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              v21 = v37;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
LABEL_63:
                if ((gBBULogVerbosity & 0x80000000) == 0)
                {
                  v22 = (**v21)(v21);
                  v26 = __dst;
                  if (SHIBYTE(__dst[2]) < 0)
                  {
                    LOBYTE(v26) = __dst[0];
                  }

                  _BBULog(3, 0, v22, "", "Failed to create path %s", v23, v24, v25, v26);
                }
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v21 = v37;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
                goto LABEL_63;
              }
            }

            if (SHIBYTE(__dst[2]) < 0)
            {
              operator delete(__dst[0]);
            }

            result = 35;
            break;
          }
        }

        if (SHIBYTE(__dst[2]) < 0)
        {
          operator delete(__dst[0]);
        }

        v3 = v14 + 1;
      }
    }
  }

  if (SHIBYTE(__src[2]) < 0)
  {
    v27 = result;
    operator delete(__src[0]);
    return v27;
  }

  return result;
}

void sub_1E52D9238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v17 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v17 - 120));
  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::cleanupFirmwareImage(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x9Bu, "Assertion failure(fZipFile && Error: BBU firmware data error!)", v26, v27, v28, v33);
  }

  memset(v37, 170, sizeof(v37));
  capabilities::radio::personalizedFirmwarePath(v37, a1);
  v4 = SHIBYTE(v37[2]);
  if ((SHIBYTE(v37[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v37[2]))
    {
      v5 = v37[1];
      goto LABEL_6;
    }

LABEL_44:
    v29 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v29, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xA0u, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)", v30, v31, v32, v33);
  }

  v5 = v37[1];
  if (!v37[1])
  {
    goto LABEL_44;
  }

LABEL_6:
  if (SHIBYTE(v37[2]) >= 0)
  {
    v6 = SHIBYTE(v37[2]);
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v34, 0, sizeof(v34));
    v9 = &v34;
    *(&v34.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v34.__r_.__value_.__l.__size_ = v6 + 1;
    v34.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v34.__r_.__value_.__r.__words[0] = v9;
  }

  if (v4 >= 0)
  {
    v10 = v37;
  }

  else
  {
    v10 = v37[0];
  }

  memmove(v9, v10, v6);
LABEL_20:
  *&v9[v6] = 47;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v34, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = v37;
  if (SHIBYTE(v37[2]) < 0)
  {
    v17 = v37[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Removing Firmware image [%s] in path [%s]\n", v16, v17);
  v18 = HIBYTE(v36);
  if (v36 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (unlink(v19))
  {
    v20 = *(a1 + 8);
    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    BBUFeedback::handleComment(v20, "Unable to remove Firmware image [%s]. Error[%d][%s]\n", v19, v21, v23);
    v18 = HIBYTE(v36);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_42:
    operator delete(v37[0]);
    return 0;
  }

  if (SHIBYTE(v37[2]) < 0)
  {
    goto LABEL_42;
  }

  return 0;
}

void sub_1E52D955C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::saveFirmwareImage(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xB1u, "Assertion failure(fZipFile && Error: BBU firmware data error!)", v27, v28, v29, v30);
  }

  memset(v42, 170, sizeof(v42));
  capabilities::radio::personalizedFirmwarePath(v42, a1);
  if ((SHIBYTE(v42[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v42[2]))
    {
      goto LABEL_4;
    }

LABEL_21:
    v16 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v16, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xB8u, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)", v17, v18, v19, v30);
  }

  if (!v42[1])
  {
    goto LABEL_21;
  }

LABEL_4:
  v4 = BBUICEUpdateSource::saveImages(a1);
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v5;
  v40[8] = v5;
  v40[5] = v5;
  v40[6] = v5;
  v40[3] = v5;
  v40[4] = v5;
  v40[1] = v5;
  v40[2] = v5;
  v40[0] = v5;
  v38 = v5;
  v39 = v5;
  v36 = v5;
  *__p = v5;
  v34 = v5;
  v35 = v5;
  v33 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
  if (v42[2] >= 0)
  {
    v6 = v42;
  }

  else
  {
    v6 = v42[0];
  }

  if (v42[2] >= 0)
  {
    v7 = HIBYTE(v42[2]);
  }

  else
  {
    v7 = v42[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/", 1);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  if (v4)
  {
    goto LABEL_41;
  }

  v13 = *(a1 + 64);
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v20 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v20 = *(&v36 + 1);
    }

    v21 = v36;
    v14 = v20 - v36;
    if ((v20 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v32) = 0;
      v15 = __dst;
      goto LABEL_33;
    }

    v21 = *(&v34 + 1);
    v14 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_47:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v14 | 7) + 1;
    }

    v15 = operator new(v22);
    __dst[1] = v14;
    v32 = v22 | 0x8000000000000000;
    __dst[0] = v15;
  }

  else
  {
    HIBYTE(v32) = v14;
    v15 = __dst;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  memmove(v15, v21, v14);
LABEL_33:
  *(v15 + v14) = 0;
  v4 = BBUZipFile::saveDataToFile(v13, __dst);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = *a2;
  }

  v24 = v42;
  if (v42[2] < 0)
  {
    v24 = v42[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Saving Firmware image [%s] in path [%s]\n", v23, v24);
LABEL_41:
  *&v33 = *MEMORY[0x1E69E54E8];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v34);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v40);
  if (SHIBYTE(v42[2]) < 0)
  {
    operator delete(v42[0]);
  }

  return v4;
}

void sub_1E52D99A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18);
  if (*(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(a1);
}

void BBUICEUpdateSource::loadProvisioningData(BBUICEUpdateSource *this)
{
  v2 = operator new(0x30uLL);
  strcpy(v2, "provisioning/info.plist");
  v45 = v2;
  v46 = xmmword_1E5392690;
  strcpy(v44, "provisioning/puk.pem");
  HIBYTE(v44[2]) = 20;
  v3 = operator new(0x30uLL);
  strcpy(v3, "provisioning/manifest.bin");
  __p = v3;
  v43 = xmmword_1E53926A0;
  v4 = *(this + 8);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xD2u, "Assertion failure(fZipFile && BBU firmware data error.)", v27, v28, v29, v39);
    goto LABEL_60;
  }

  v41 = 13;
  strcpy(v40, "provisioning/");
  if (BBUZipFile::containsFile(v4, v40))
  {
    *(this + 120) = 1;
  }

  if (BBUZipFile::containsFile(*(this + 8), &v45))
  {
    if (*(this + 16))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xDDu, "Assertion failure(fProvisioningDictSource == __null)", v30, v31, v32, v39);
      goto LABEL_60;
    }

    v6 = *(this + 8);
    v5 = *(this + 9);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = operator new(0x38uLL);
    *v7 = &unk_1F5F02918;
    v7[1] = v6;
    v7[4] = 0;
    v7[5] = 0;
    v7[3] = 0;
    if (BBUZipDataSource::init(v7, &v45, 0))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    *(this + 16) = v7;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v8 = (**this)(this);
      _BBULog(3, 0, v8, "", "Loaded provisioning dictionary\n", v9, v10, v11, v39);
    }
  }

LABEL_17:
  if (!BBUZipFile::containsFile(*(this + 8), v44))
  {
    goto LABEL_30;
  }

  if (*(this + 17))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xE7u, "Assertion failure(fProvisioningPublicKeySource == __null)", v33, v34, v35, v39);
    goto LABEL_60;
  }

  v13 = *(this + 8);
  v12 = *(this + 9);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = operator new(0x38uLL);
  *v14 = &unk_1F5F02918;
  v14[1] = v13;
  v14[4] = 0;
  v14[5] = 0;
  v14[3] = 0;
  if (BBUZipDataSource::init(v14, v44, 0))
  {
    (*(*v14 + 8))(v14);
    v14 = 0;
  }

  *(this + 17) = v14;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v15 = (**this)(this);
    _BBULog(3, 0, v15, "", "Loaded public key source\n", v16, v17, v18, v39);
  }

LABEL_30:
  if (!BBUZipFile::containsFile(*(this + 8), &__p))
  {
    goto LABEL_43;
  }

  if (*(this + 18))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xF0u, "Assertion failure(fProvisioningManifestSource == __null)", v36, v37, v38, v39);
LABEL_60:
  }

  v20 = *(this + 8);
  v19 = *(this + 9);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = operator new(0x38uLL);
  *v21 = &unk_1F5F02918;
  v21[1] = v20;
  v21[4] = 0;
  v21[5] = 0;
  v21[3] = 0;
  if (BBUZipDataSource::init(v21, &__p, 0))
  {
    (*(*v21 + 8))(v21);
    v21 = 0;
  }

  *(this + 18) = v21;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v22 = (**this)(this);
    _BBULog(3, 0, v22, "", "Loaded provisioning manifest\n", v23, v24, v25, v20);
  }

LABEL_43:
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        return;
      }

LABEL_49:
      operator delete(v45);
      return;
    }
  }

  else if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v44[0]);
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_49;
  }
}

void sub_1E52DA114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v24 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v24 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v24 - 80));
  if ((*(v24 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v24 - 56));
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::copyProvisioningData(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x105u, "Assertion failure(false && Unrecognized provisioning support type.)", v12, v13, v14, v15);
  }

  v5 = *(a1 + 136);
  if (!v5 && !*(a1 + 144))
  {
    return 0;
  }

  v6 = operator new(0x18uLL);
  v7 = v6;
  v8 = *(a1 + 144);
  *v6 = &unk_1F5F037C0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v9 = (v6 + 16);
  if (v5)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v6, v6 + 1, v5);
  }

  if (v8)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v7, v9, v8);
  }

  *a3 = v7;
  return 1;
}

void sub_1E52DA2F4(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::getFusingSource(BBUICEUpdateSource *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x10Eu, "Assertion failure(fZipFile && BBU firmware data error.)", v13, v14, v15, v19);
    goto LABEL_22;
  }

  v3 = *(this + 26);
  if ((v3 & 4) != 0)
  {
    return *(this + 14);
  }

  *(this + 26) = v3 | 4;
  v21 = 19;
  strcpy(__p, "fusingprogram.plist");
  if (!BBUZipFile::containsFile(v2, __p))
  {
    return *(this + 14);
  }

  if (*(this + 14))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x116u, "Assertion failure(fFusingSource == __null)", v16, v17, v18, aFusingprogramP[0]);
LABEL_22:
  }

  v5 = *(this + 8);
  v4 = *(this + 9);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = 19;
  strcpy(__p, "fusingprogram.plist");
  v6 = operator new(0x38uLL);
  *v6 = &unk_1F5F02918;
  v6[1] = v5;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = 0;
  if (BBUZipDataSource::init(v6, __p, 0))
  {
    (*(*v6 + 8))(v6);
    v6 = 0;
  }

  *(this + 14) = v6;
  if (v21 < 0)
  {
    operator delete(*__p);
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return *(this + 14);
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return *(this + 14);
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = (**this)(this);
    _BBULog(3, 0, v7, "", "Loaded Fusing program\n", v8, v9, v10, aFusingprogramP[0]);
  }

  return *(this + 14);
}

void sub_1E52DA5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::getManifestSource(BBUICEUpdateSource *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    return *(this + 19);
  }

  *(this + 26) = v2 | 1;
  v3 = *(this + 8);
  if (!v3)
  {
    v5 = *(this + 103);
    if (v5 < 0)
    {
      if (!*(this + 11))
      {
        return *(this + 19);
      }
    }

    else if (!*(this + 103))
    {
      return *(this + 19);
    }

    v10 = *(this + 11);
    if (v5 >= 0)
    {
      v11 = *(this + 103);
    }

    else
    {
      v11 = *(this + 11);
    }

    v12 = v11 + 1;
    if (v11 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_88;
    }

    v13 = (this + 80);
    if (v12 < 0x17)
    {
      memset(&v50, 0, sizeof(v50));
      v15 = &v50;
      *(&v50.__r_.__value_.__s + 23) = v11 + 1;
      if (!v11)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v12 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v12 | 7) + 1;
      }

      v15 = operator new(v14);
      v50.__r_.__value_.__l.__size_ = v11 + 1;
      v50.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
      v50.__r_.__value_.__r.__words[0] = v15;
    }

    v16 = *v13;
    if (v5 >= 0)
    {
      v17 = this + 80;
    }

    else
    {
      v17 = *v13;
    }

    memmove(v15, v17, v11);
LABEL_38:
    *&v15[v11] = 47;
    (*(*this + 56))(&v47, this);
    if ((v49 & 0x80u) == 0)
    {
      v18 = &v47;
    }

    else
    {
      v18 = v47;
    }

    if ((v49 & 0x80u) == 0)
    {
      v19 = v49;
    }

    else
    {
      v19 = v48;
    }

    v20 = std::string::append(&v50, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v54 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = ctu::fs::file_exists();
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
      if ((v49 & 0x80000000) == 0)
      {
LABEL_46:
        if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    operator delete(v47);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      if (!v22)
      {
        return *(this + 19);
      }

      goto LABEL_52;
    }

LABEL_51:
    operator delete(v50.__r_.__value_.__l.__data_);
    if (!v22)
    {
      return *(this + 19);
    }

LABEL_52:
    if (*(this + 19))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x132u, "Assertion failure(fRootManifestSource == __null)", v44, v45, v46, v47);
LABEL_91:
    }

    v23 = *(this + 103);
    if (v23 >= 0)
    {
      v24 = *(this + 103);
    }

    else
    {
      v24 = *(this + 11);
    }

    v25 = v24 + 1;
    if (v24 + 1 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v25 < 0x17)
      {
        memset(&v50, 0, sizeof(v50));
        v27 = &v50;
        *(&v50.__r_.__value_.__s + 23) = v24 + 1;
        if (!v24)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if ((v25 | 7) == 0x17)
        {
          v26 = 25;
        }

        else
        {
          v26 = (v25 | 7) + 1;
        }

        v27 = operator new(v26);
        v50.__r_.__value_.__l.__size_ = v24 + 1;
        v50.__r_.__value_.__r.__words[2] = v26 | 0x8000000000000000;
        v50.__r_.__value_.__r.__words[0] = v27;
      }

      v28 = *v13;
      if (v23 >= 0)
      {
        v29 = this + 80;
      }

      else
      {
        v29 = *v13;
      }

      memmove(v27, v29, v24);
LABEL_67:
      *&v27[v24] = 47;
      (*(*this + 56))(&v47, this);
      if ((v49 & 0x80u) == 0)
      {
        v30 = &v47;
      }

      else
      {
        v30 = v47;
      }

      if ((v49 & 0x80u) == 0)
      {
        v31 = v49;
      }

      else
      {
        v31 = v48;
      }

      v32 = std::string::append(&v50, v30, v31);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v54 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v34 = operator new(0x30uLL);
      *v34 = &unk_1F5F00F28;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      if (BBUFileDataSource::init(v34, __p, 0))
      {
        (*(*v34 + 8))(v34);
        v34 = 0;
      }

      *(this + 19) = v34;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
        if ((v49 & 0x80000000) == 0)
        {
LABEL_77:
          if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_85;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v47);
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_78:
        if (gBBULogMaskGet(void)::once != -1)
        {
          goto LABEL_86;
        }

        goto LABEL_79;
      }

LABEL_85:
      operator delete(v50.__r_.__value_.__l.__data_);
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_86;
      }

LABEL_79:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return *(this + 19);
      }

      goto LABEL_80;
    }

LABEL_88:
    std::string::__throw_length_error[abi:ne200100]();
  }

  (*(*this + 56))(__p, this);
  v4 = BBUZipFile::containsFile(v3, __p);
  if (SHIBYTE(v54) < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    if (!v6)
    {
      return *(this + 19);
    }
  }

  else if (!v4)
  {
    return *(this + 19);
  }

  if (*(this + 19))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x129u, "Assertion failure(fRootManifestSource == __null)", v41, v42, v43, v47);
    goto LABEL_91;
  }

  v8 = *(this + 8);
  v7 = *(this + 9);
  v51 = v8;
  v52 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(__p, this);
  v9 = operator new(0x38uLL);
  *v9 = &unk_1F5F02918;
  v9[1] = v8;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  if (BBUZipDataSource::init(v9, __p, 0))
  {
    (*(*v9 + 8))(v9);
    v9 = 0;
  }

  *(this + 19) = v9;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return *(this + 19);
    }

    goto LABEL_80;
  }

LABEL_86:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    return *(this + 19);
  }

LABEL_80:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v35 = (**this)(this);
    _BBULog(3, 0, v35, "", "Loaded Manifest\n", v36, v37, v38, v47);
  }

  return *(this + 19);
}

void sub_1E52DAC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a15);
  goto LABEL_6;
}

uint64_t BBUICEUpdateSource::hasManifestSource(BBUICEUpdateSource *this)
{
  if (*(this + 104))
  {
    return *(this + 19) != 0;
  }

  (*(*this + 56))(__p);
  result = BBUICEUpdateSource::containsFile(this, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    return v3;
  }

  return result;
}

void sub_1E52DADF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::generateHash(BBUICEUpdateSource *this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x154u, "Assertion failure(fZipFile && BBU firmware data error.)", v8, v9, v10, v11);
  }

  v4 = *(v2 + 144);
  v5 = operator new(0x18uLL);
  v5[4] = 0;
  *v5 = &unk_1F5F04B00;
  *(v5 + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  BBUDataSource::generateHash(v5, a2, 0);
  (*(*v5 + 8))(v5);
  return 1;
}

uint64_t BBUEUR13Communication::freeTransportSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 80);
  if (!v8)
  {
    return 1;
  }

  if (v8 != a2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = a1;
      v14 = a2;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      a1 = v16;
      LOBYTE(a2) = v14;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_5:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v15 = *(a1 + 80);
          _BBULog(2, 0, "BBUEUR13Communication", "", "call with %p different from fTransportCreated(%p)\n", a6, a7, a8, a2);
        }
      }
    }

    return 0;
  }

  v10 = a1;
  v11 = a2;
  v12 = TelephonyUtilTransportFree();
  v13 = *(v10 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN21BBUEUR13Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  v18 = v12;
  block[4] = v10;
  block[5] = v11;
  dispatch_sync(v13, block);
  return v12;
}

uint64_t ___ZN21BBUEUR13Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 80) = 0;
    return result;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v8;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(2, 0, "BBUEUR13Communication", "", "fail to free transport: %p\n", a6, a7, a8, *(result + 40));
  }

  return result;
}

uint64_t BBUEUR13Communication::createTransport(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 3;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2000000000;
  v45 = 0;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v9;
  v42 = v9;
  v39 = v9;
  v40 = v9;
  v38 = v9;
  TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 80))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x4Du, "Assertion failure(nullptr == fTransportCreated && Telephony transport error.)", v20, v21, v22, v29);
    goto LABEL_32;
  }

  v13 = *(a1 + 72);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 0x40000000;
  v37[2] = ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke;
  v37[3] = &__block_descriptor_tmp_11;
  v37[4] = a2;
  *(&v38 + 1) = v13;
  *&v39 = v37;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "Creating transport:%p stage:%d interface:%d %f ms\n", v10, v11, v12, a2);
  }

LABEL_6:
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      goto LABEL_14;
    }

    if (a3 != 2)
    {
      goto LABEL_33;
    }

    v14 = 0;
    LODWORD(v38) = 0;
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    v14 = 1;
    LODWORD(v38) = 1;
LABEL_17:
    DWORD2(v39) = 5000;
    LODWORD(v43) = 25;
    *(a1 + 88) = v14;
    if (gBBULogMaskGet(void)::once != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if (a3 == 8)
  {
    if (a5 == 1)
    {
      v18 = 3;
LABEL_26:
      LODWORD(v38) = v18;
      DWORD2(v39) = 5000;
      *(a1 + 88) = v18;
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_27;
      }

LABEL_18:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (!a5)
    {
      v18 = 2;
      goto LABEL_26;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_40:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUEUR13Communication", "", "Unsupported intf: %d\n", v10, v11, v12, a5);
        }
      }
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x72u, "Assertion failure(false)", v26, v27, v28, v29);
LABEL_32:
  }

  if (a3 != 16)
  {
LABEL_33:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_35:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUEUR13Communication", "", "Unsupported BBU stage: %d\n", v10, v11, v12, a3);
        }
      }
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x78u, "Assertion failure(false && Unsupported BBU stage.)", v23, v24, v25, v29);
    goto LABEL_32;
  }

LABEL_14:
  LODWORD(v38) = 2;
  DWORD2(v39) = 2000;
  *(a1 + 88) = 2;
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_18;
  }

LABEL_27:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "Creating with timeout set to %u ms\n", v10, v11, v12, SBYTE8(v39));
  }

LABEL_21:
  v15 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2;
  block[3] = &__block_descriptor_tmp_20_0;
  block[6] = a1;
  block[7] = a2;
  v33 = v40;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v31 = v38;
  v32 = v39;
  block[4] = v44;
  block[5] = &v46;
  dispatch_sync(v15, block);
  v16 = *(v47 + 6);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);
  return v16;
}

void sub_1E52DB6B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  _Block_object_dispose((v2 - 160), 8);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "transport %p, status: %#x\n", a6, a7, a8, v9);
  }

LABEL_5:
  if (a2 != 1)
  {
    return;
  }

  v10 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  v12 = TelephonyBasebandResetModem();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v12;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v12 = v17;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
LABEL_8:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v16 = "failure";
        if (v12)
        {
          v16 = "success";
        }

        _BBULog(2, 0, "BBUEUR13Communication", "", "Resetting modem: %s\n", v13, v14, v15, v16);
      }
    }
  }

  if (Controller)
  {
    CFRelease(Controller);
  }
}

void sub_1E52DB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2(void *a1)
{
  v2 = a1[6];
  *(v2 + 80) = a1[7];
  *(*(a1[4] + 8) + 24) = TelephonyBasebandPCITransportCreate();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v9 = "success";
    }

    else
    {
      v9 = "failure";
    }

    _BBULog(2, 0, "BBUEUR13Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v6, v7, v8, v9);
  }

LABEL_8:
  if (*(*(a1[4] + 8) + 24))
  {
    if (!*(v2 + 80))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x8Au, "Assertion failure(nullptr != fTransportCreated && Telephony Util transport error!)", v12, v13, v14, v15);
    }

    v10 = 0;
  }

  else
  {
    BBUEUR13Communication::freeTransportSync(v2, a1[7], v3, v4, v5, v6, v7, v8);
    v10 = 3;
  }

  *(*(a1[5] + 8) + 24) = v10;
}

void __copy_helper_block_e8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t BBUEUR13Communication::getBasebandState(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88);
  if (v8 > 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = dword_1E53927C0[v8];
  }

  *a3 = v9;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  else
  {
    v11 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "returning state: %d\n", a6, a7, a8, *a3);
  }

  return 0;
}

uint64_t BBUEUR13Communication::freeTransport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 1;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "request to free transport: %p\n", a6, a7, a8, a2);
  }

LABEL_5:
  v10 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUEUR13Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &__block_descriptor_tmp_23_1;
  block[4] = &v14;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v10, block);
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t ___ZN21BBUEUR13Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = BBUEUR13Communication::freeTransportSync(a1[5], a1[6], a3, a4, a5, a6, a7, a8);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void BBUEUR13Communication::~BBUEUR13Communication(BBUEUR13Communication *this)
{
  *this = &unk_1F5F028B0;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F02A18;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  *this = &unk_1F5F028B0;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F02A18;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void *BBUEUR13Communication::getIPCLogBuffer@<X0>(void *a1@<X8>)
{
  v3 = operator new(0xA0uLL);
  BBULogIOABP::BBULogIOABP(v3);
  *a1 = v3 + *(*v3 - 88);
  result = operator new(0x20uLL);
  *result = &unk_1F5F02860;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void std::__shared_ptr_pointer<BBULogIOABP *,std::shared_ptr<BBULogBuffer>::__shared_ptr_default_delete<BBULogBuffer,BBULogIOABP>,std::allocator<BBULogIOABP>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBULogIOABP *,std::shared_ptr<BBULogBuffer>::__shared_ptr_default_delete<BBULogBuffer,BBULogIOABP>,std::allocator<BBULogIOABP>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBULogIOABP *,std::shared_ptr<BBULogBuffer>::__shared_ptr_default_delete<BBULogBuffer,BBULogIOABP>,std::allocator<BBULogIOABP>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5392764)
  {
    if (((v2 & 0x80000001E5392764 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5392764))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5392764 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void BBUZipFile::BBUZipFile(BBUZipFile *this, const __CFData *a2)
{
  v109 = *MEMORY[0x1E69E9840];
  pthread_mutex_init(this, 0);
  *(this + 12) = 0;
  v4 = (this + 96);
  *(this + 11) = this + 96;
  v5 = this + 88;
  *(this + 8) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 18) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v77[2] = v6;
  v77[3] = v6;
  v77[0] = v6;
  v77[1] = v6;
  fill_memory_filefunc(v77);
  v94 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v7;
  v93 = v7;
  *(this + 18) = a2;
  CFRetain(a2);
  BytePtr = CFDataGetBytePtr(*(this + 18));
  Length = CFDataGetLength(*(this + 18));
  snprintf(__str, 0x28uLL, "%lx+%lx", BytePtr, Length);
  v10 = unzOpen2(__str, v77);
  *(this + 8) = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x31u, "Assertion failure(ret == (0))", v72, v73, v74, v75);
LABEL_97:
  }

  *(this + 72) = *(v10 + 72);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v76 = *(this + 9);
    _BBULog(15, 0, "BBUZipFile", &str_4_4, "%s - Num entries %lu\n", v11, v12, v13, __str);
  }

LABEL_6:
  v14 = *(this + 8);
  if (!v14 || (v15 = v14[8].i64[1], v14[6].i64[0] = 0, v14[6].i64[1] = v15, CurrentFileInfoInternal = unzlocal_GetCurrentFileInfoInternal(v14, v14 + 9, &v14[17].i64[1], 0, 0, 0, 0, 0, 0), v14[7].i64[0] = CurrentFileInfoInternal == 0, CurrentFileInfoInternal))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x4Bu, "Assertion failure(ret == (0))", v69, v70, v71, v75);
    goto LABEL_97;
  }

  do
  {
    while (1)
    {
      v88 = 0xAAAAAAAAAAAAAAAALL;
      v18.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v18.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v86 = v18;
      v87 = v18;
      v84 = v18;
      v85 = v18;
      v82 = v18;
      v83 = v18;
      v80 = v18;
      v81 = v18;
      v79 = v18;
      memset(v78, 0, sizeof(v78));
      *__s = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0;
      *v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0;
      v19 = *(this + 8);
      if (!v19 || !v19[7].i64[0])
      {
        v58 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v58, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x57u, "Assertion failure(ret == (0))", v59, v60, v61, v75);
        goto LABEL_94;
      }

      v79 = vextq_s8(v19[6], v19[6], 8uLL);
      if (unzlocal_GetCurrentFileInfoInternal(v19, &v80, 0, __s, 0x63uLL, 0, 0, v95, 0x63uLL))
      {
        v58 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v58, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x5Eu, "Assertion failure(ret == (0))", v65, v66, v67, v75);
LABEL_94:
      }

      std::string::__assign_external(v78, __s);
      std::string::__assign_external(&v78[1], v95);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_19;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUZipFile", &str_4_4, "Loaded file %s, Comment %s\n", v20, v21, v22, __s);
      }

LABEL_19:
      v23 = v5;
      v24 = *v4;
      v25 = (this + 96);
      v26 = this + 96;
      if (*v4)
      {
        if ((v78[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = v78;
        }

        else
        {
          v27 = v78[0].__r_.__value_.__r.__words[0];
        }

        if ((v78[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v78[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v78[0].__r_.__value_.__l.__size_;
        }

        while (1)
        {
          v26 = v24;
          v31 = *(v24 + 4);
          v29 = v24 + 32;
          v30 = v31;
          v32 = v29[23];
          if (v32 >= 0)
          {
            v33 = v29;
          }

          else
          {
            v33 = v30;
          }

          if (v32 >= 0)
          {
            v34 = v29[23];
          }

          else
          {
            v34 = *(v29 + 1);
          }

          if (v34 >= size)
          {
            v35 = size;
          }

          else
          {
            v35 = v34;
          }

          v36 = memcmp(v27, v33, v35);
          if (v36)
          {
            if (v36 < 0)
            {
              goto LABEL_26;
            }

LABEL_40:
            v37 = memcmp(v33, v27, v35);
            if (v37)
            {
              if ((v37 & 0x80000000) == 0)
              {
                goto LABEL_53;
              }
            }

            else if (v34 >= size)
            {
LABEL_53:
              v39 = v26;
              v5 = v23;
              v41 = (v26 + 56);
              if (v26 + 56 != v78)
              {
                goto LABEL_54;
              }

              goto LABEL_76;
            }

            v24 = *(v26 + 1);
            if (!v24)
            {
              v25 = v26 + 8;
              break;
            }
          }

          else
          {
            if (size >= v34)
            {
              goto LABEL_40;
            }

LABEL_26:
            v24 = *v26;
            v25 = v26;
            if (!*v26)
            {
              break;
            }
          }
        }
      }

      v5 = v23;
      v38 = operator new(0x100uLL);
      v39 = v38;
      v89 = v38;
      v90 = v23;
      v91 = 0;
      if (SHIBYTE(v78[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v38 + 32), v78[0].__r_.__value_.__l.__data_, v78[0].__r_.__value_.__l.__size_);
      }

      else
      {
        *(v38 + 32) = v78[0];
      }

      *(v39 + 31) = 0;
      *(v39 + 232) = 0u;
      *(v39 + 216) = 0u;
      *(v39 + 200) = 0u;
      *(v39 + 184) = 0u;
      *(v39 + 168) = 0u;
      *(v39 + 152) = 0u;
      *(v39 + 136) = 0u;
      *(v39 + 120) = 0u;
      *(v39 + 104) = 0u;
      *(v39 + 88) = 0u;
      *(v39 + 72) = 0u;
      *(v39 + 56) = 0u;
      *v39 = 0;
      *(v39 + 1) = 0;
      *(v39 + 2) = v26;
      *v25 = v39;
      v40 = **v23;
      if (v40)
      {
        *v23 = v40;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 12), v39);
      ++*(this + 13);
      v41 = (v39 + 56);
      if (v39 + 56 != v78)
      {
LABEL_54:
        if (v39[79] < 0)
        {
          if ((v78[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = v78;
          }

          else
          {
            v42 = v78[0].__r_.__value_.__r.__words[0];
          }

          if ((v78[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = HIBYTE(v78[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v43 = v78[0].__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(v41, v42, v43);
        }

        else if ((*(&v78[0].__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v41, v78[0].__r_.__value_.__l.__data_, v78[0].__r_.__value_.__l.__size_);
        }

        else
        {
          *v41 = v78[0];
        }

        if (v39[103] < 0)
        {
          if ((v78[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            data = &v78[1];
          }

          else
          {
            data = v78[1].__r_.__value_.__l.__data_;
          }

          if ((v78[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = HIBYTE(v78[1].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v45 = v78[1].__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(v39 + 10, data, v45);
        }

        else if ((*(&v78[1].__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v39 + 10, v78[1].__r_.__value_.__l.__data_, v78[1].__r_.__value_.__l.__size_);
        }

        else
        {
          *(v39 + 80) = v78[1];
        }
      }

LABEL_76:
      v46 = v83;
      *(v39 + 184) = v84;
      *(v39 + 168) = v46;
      v47 = v81;
      *(v39 + 152) = v82;
      *(v39 + 136) = v47;
      v48 = v88;
      v49 = v86;
      *(v39 + 232) = v87;
      v50 = v85;
      *(v39 + 216) = v49;
      *(v39 + 200) = v50;
      v51 = v80;
      *(v39 + 104) = v79;
      *(v39 + 31) = v48;
      *(v39 + 120) = v51;
      v52 = *(this + 8);
      if (!v52)
      {
LABEL_92:
        v58 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v58, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x6Fu, "Assertion failure(ret == (0))", v62, v63, v64, v75);
        goto LABEL_94;
      }

      if (v52[7].i64[0])
      {
        v53 = v52[4].i64[1];
        v54 = v52[6].i64[0] + 1;
        if (v53 == 0xFFFF || v54 != v53)
        {
          v55 = v52[13].i64[0] + v52[13].i64[1] + v52[14].i64[0] + v52[6].i64[1] + 46;
          v52[6].i64[0] = v54;
          v52[6].i64[1] = v55;
          v56 = unzlocal_GetCurrentFileInfoInternal(v52, v52 + 9, &v52[17].i64[1], 0, 0, 0, 0, 0, 0);
          v52[7].i64[0] = v56 == 0;
          if (v56 != -100)
          {
            break;
          }
        }
      }

      v17 = 0;
      if (SHIBYTE(v78[1].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_83;
      }

LABEL_10:
      if (SHIBYTE(v78[0].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_84;
      }

LABEL_11:
      if ((v17 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    if (v56)
    {
      goto LABEL_92;
    }

    v17 = 1;
    if ((SHIBYTE(v78[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_83:
    operator delete(v78[1].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v78[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_84:
    operator delete(v78[0].__r_.__value_.__l.__data_);
  }

  while ((v17 & 1) != 0);
LABEL_88:
  v57 = *MEMORY[0x1E69E9840];
}

void sub_1E52DC7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  __cxa_free_exception(v47);
  if (*(v46 + 135) < 0)
  {
    operator delete(*a11);
  }

  std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(v48, *(v46 + 96));
  pthread_mutex_destroy(v46);
  _Unwind_Resume(a1);
}

void sub_1E52DC844(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void BBUZipFile::~BBUZipFile(BBUZipFile *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(v2 + 288);
    if (v3)
    {
      if (*v3)
      {
        free(*v3);
      }

      *v3 = 0;
      if (*(v3 + 128))
      {
        inflateEnd((v3 + 8));
      }

      free(v3);
      *(v2 + 288) = 0;
    }

    (*(v2 + 40))(*(v2 + 56), *(v2 + 64));
    free(v2);
    *(this + 8) = 0;
  }

  v4 = *(this + 18);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(this + 88, *(this + 12));
  pthread_mutex_destroy(this);
}

uint64_t BBUZipFile::containsFile(uint64_t a1, void *a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 96);
  if (!v4)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  while (1)
  {
    v7 = *(v4 + 55);
    if (v7 >= 0)
    {
      v8 = (v4 + 4);
    }

    else
    {
      v8 = v4[4];
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 55);
    }

    else
    {
      v9 = v4[5];
    }

    if (v9 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    v11 = memcmp(a2, v8, v10);
    if (v11)
    {
      if (v11 < 0)
      {
        goto LABEL_7;
      }
    }

    else if (v6 < v9)
    {
      goto LABEL_7;
    }

    v12 = memcmp(v8, a2, v10);
    if (!v12)
    {
      if (v9 >= v6)
      {
        break;
      }

      goto LABEL_6;
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

LABEL_6:
    ++v4;
LABEL_7:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_24;
    }
  }

  v13 = 1;
LABEL_25:
  pthread_mutex_unlock(a1);
  return v13;
}

uint64_t BBUZipFile::getFileSize(pthread_mutex_t *a1, const void **a2)
{
  pthread_mutex_lock(a1);
  v4 = std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(&a1[1].__opaque[16], a2);
  if (&a1[1].__opaque[24] == v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x124u, "Assertion failure(i != fFileMap.end())", v8, v9, v10, v11);
  }

  v5 = v4[22];
  pthread_mutex_unlock(a1);
  return v5;
}

uint64_t BBUZipFile::copyDataFromFile(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v76 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(a1);
  v10 = std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(a1 + 88, a2);
  if ((a1 + 96) == v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x124u, "Assertion failure(i != fFileMap.end())", v61, v62, v63, v73);
  }

  v14 = v10;
  v15 = (a1 + 112);
  v16 = *(a1 + 135);
  if (v16 >= 0)
  {
    v17 = *(a1 + 135);
  }

  else
  {
    v17 = *(a1 + 120);
  }

  v18 = *(a2 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 1);
  }

  if (v17 == v18)
  {
    v20 = (v16 >= 0 ? a1 + 112 : *v15);
    v21 = *a2;
    v22 = v19 >= 0 ? a2 : *a2;
    if (!memcmp(v20, v22, v17))
    {
      v33 = *(a1 + 136);
      if (v33 <= a5)
      {
        goto LABEL_69;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_54;
        }
      }

      if (gBBULogVerbosity >= 1)
      {
        if (*(a2 + 23) < 0)
        {
          v34 = *a2;
        }

        v74 = *(a1 + 136);
        _BBULog(15, 1, "BBUZipFile", &str_4_4, "Reset offset for %u, current %u, file %s\n", v11, v12, v13, a5);
      }

LABEL_54:
      *(a1 + 136) = 0;
      v35 = *(a1 + 64);
      if (!v35)
      {
        goto LABEL_63;
      }

      v36 = *(v35 + 288);
      if (!v36)
      {
        goto LABEL_63;
      }

      if (*(v36 + 184) || *(v36 + 280))
      {
        v37 = 1;
        v38 = *v36;
        if (!*v36)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v37 = *(v36 + 160) == *(v36 + 168);
        v38 = *v36;
        if (!*v36)
        {
LABEL_60:
          *v36 = 0;
          if (*(v36 + 128))
          {
            inflateEnd((v36 + 8));
          }

          free(v36);
          *(v35 + 288) = 0;
          if (v37)
          {
            goto LABEL_67;
          }

LABEL_63:
          v39 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x9Eu, "Assertion failure(ret == (0))", v40, v41, v42, v73);
          goto LABEL_93;
        }
      }

      free(v38);
      goto LABEL_60;
    }
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_23;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    LOBYTE(v23) = a1 + 112;
    if (*(a1 + 135) < 0)
    {
      v23 = *v15;
    }

    if (*(a2 + 23) < 0)
    {
      v24 = *a2;
    }

    _BBULog(15, 0, "BBUZipFile", &str_4_4, "Switch from file %s to %s\n", v11, v12, v13, v23);
  }

LABEL_23:
  if ((*(a1 + 135) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 135))
    {
      goto LABEL_36;
    }

LABEL_27:
    v25 = *(a1 + 64);
    if (!v25)
    {
      goto LABEL_88;
    }

    v26 = *(v25 + 288);
    if (!v26)
    {
      goto LABEL_88;
    }

    if (*(v26 + 184) || *(v26 + 280))
    {
      v27 = 1;
      v28 = *v26;
      if (!*v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v27 = *(v26 + 160) == *(v26 + 168);
      v28 = *v26;
      if (!*v26)
      {
LABEL_33:
        *v26 = 0;
        if (*(v26 + 128))
        {
          inflateEnd((v26 + 8));
        }

        free(v26);
        *(v25 + 288) = 0;
        if (v27)
        {
          goto LABEL_36;
        }

LABEL_88:
        v39 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xAFu, "Assertion failure(ret == (0))", v57, v58, v59, v73);
        goto LABEL_93;
      }
    }

    free(v28);
    goto LABEL_33;
  }

  if (*(a1 + 120))
  {
    goto LABEL_27;
  }

LABEL_36:
  if (v15 != a2)
  {
    v29 = *(a2 + 23);
    if (*(a1 + 135) < 0)
    {
      if (v29 >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a2;
      }

      if (v29 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = *(a2 + 1);
      }

      std::string::__assign_no_alias<false>((a1 + 112), v31, v32);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 112), *a2, *(a2 + 1));
    }

    else
    {
      v30 = *a2;
      *(a1 + 128) = *(a2 + 2);
      *v15 = v30;
    }
  }

  *(a1 + 136) = 0;
  v43 = *(a1 + 64);
  if (!v43 || (v43[6] = vextq_s8(*(v14 + 13), *(v14 + 13), 8uLL), CurrentFileInfoInternal = unzlocal_GetCurrentFileInfoInternal(v43, v43 + 9, &v43[17].i64[1], 0, 0, 0, 0, 0, 0), v43[7].i64[0] = CurrentFileInfoInternal == 0, CurrentFileInfoInternal))
  {
    v53 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v53, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xB7u, "Assertion failure(ret == (0))", v54, v55, v56, v73);
  }

LABEL_67:
  if (unzOpenCurrentFile3(*(a1 + 64), 0, 0, 0, 0))
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xBDu, "Assertion failure(ret == (0))", v70, v71, v72, v73);
LABEL_93:
  }

  v33 = *(a1 + 136);
LABEL_69:
  v45 = a5 - v33;
  if (a5 < v33)
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xC0u, "Assertion failure(fCurrentFileOffset <= offset)", v64, v65, v66, v73);
    goto LABEL_93;
  }

  memset(__b, 170, sizeof(__b));
  for (; v45; v45 -= v46)
  {
    if (v45 >= 0x400)
    {
      v46 = 1024;
    }

    else
    {
      v46 = v45;
    }

    if (unzReadCurrentFile(*(a1 + 64), __b, v46) != v46)
    {
      v49 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v49, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xCBu, "Assertion failure(err == chunk)", v50, v51, v52, v73);
    }
  }

  *(a1 + 136) = a5;
  if (unzReadCurrentFile(*(a1 + 64), a3, a4) != a4)
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0xD3u, "Assertion failure(ret == static_cast<SInt32>( amount))", v67, v68, v69, v73);
    goto LABEL_93;
  }

  *(a1 + 136) += a4;
  pthread_mutex_unlock(a1);
  v47 = *MEMORY[0x1E69E9840];
  return 0;
}