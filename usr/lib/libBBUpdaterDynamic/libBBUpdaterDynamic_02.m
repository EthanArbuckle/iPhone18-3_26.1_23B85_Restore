void sub_1E524E4AC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Loader::queryChipInfo(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v6 = operator new(0x60uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = *(a2 + 40);
  if (!v7 || ((v8 = v7(a2, 5, v6, 60, &v44, 0), v44 > 0x3B) ? (v9 = v8) : (v9 = 0), (v9 & 1) == 0))
  {
    v22 = 3;
    goto LABEL_52;
  }

  v10 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(v6[2]);
  v11 = *(a3 + 16);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(a3 + 16) = v10;
  v12 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v6 + 10, 0x60);
  (*(*a3 + 16))(a3, v12);
  v13 = operator new(0x10uLL);
  *v13 = &unk_1F5F06780;
  v13[1] = 0;
  v13[1] = CFDataCreate(*MEMORY[0x1E695E480], v6 + 22, 32);
  (*(*a3 + 24))(a3, v13);
  if (v45 == *(v6 + 22) && *(&v45 + 1) == *(v6 + 30) && v46 == *(v6 + 38) && *(&v46 + 1) == *(v6 + 46))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v17 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v17 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v23 = (*(*a1 + 64))(a1);
      _BBULog(9, 1, v23, "", "Detect as unfused BB\n", v24, v25, v26, v39);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v17 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v17 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v18 = (*(*a1 + 64))(a1);
      _BBULog(9, 1, v18, "", "Detect as fused BB\n", v19, v20, v21, v39);
    }
  }

LABEL_27:
  v27 = -559030611;
  *(a3 + 88) = v17;
  v28 = a1[1];
  v29 = *(a3 + 16);
  v30 = -559030611;
  if (v29)
  {
    v30 = (*(*v29 + 24))(v29);
  }

  v31 = *(a3 + 32);
  if (!v31)
  {
    v33 = "failed";
    v34 = *(a3 + 40);
    if (v34)
    {
      goto LABEL_38;
    }

LABEL_43:
    v35 = "failed";
    v36 = *(a3 + 24);
    if (!v36)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v32 = v42;
  (*(*v31 + 24))(v42, *(a3 + 32));
  if (v43 < 0)
  {
    v32 = v42[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_34;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_34:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
  {
    v33 = v32;
  }

  else
  {
    v33 = "<< SNUM >>";
  }

  v34 = *(a3 + 40);
  if (!v34)
  {
    goto LABEL_43;
  }

LABEL_38:
  v35 = __p;
  (*(*v34 + 24))(__p, v34);
  if (v41 < 0)
  {
    v35 = __p[0];
  }

  v36 = *(a3 + 24);
  if (!v36)
  {
    goto LABEL_45;
  }

LABEL_44:
  v27 = (*(*v36 + 24))(v36);
LABEL_45:
  BBUFeedback::handleComment(v28, "CHIPID=0x%x SNUM=0x%s, PKHASH=0x%s CERTID=0x%x\n", v30, v33, v35, v27);
  if (v34 && v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 && v43 < 0)
  {
    operator delete(v42[0]);
  }

  v22 = 0;
LABEL_52:
  operator delete(v6);
  v37 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_1E524EA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    if (a25 < 0)
    {
      operator delete(__p);
      operator delete(v25);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Loader::load(BBUFeedback **a1, void *a2, const void *a3)
{
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(a1[1], "invalid arguments transport:  %p, updateSource:  %p", a2, a3);
    return 2;
  }

  v19 = 0;
  v18 = -1;
  v6 = (*(*a3 + 24))(a3);
  BBUFeedback::handleComment(a1[1], "Send PSI-RAM (%d bytes)", v6);
  v7 = operator new[](v6);
  if ((*(*a3 + 16))(a3, v7, v6, &v19 + 4, 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = HIDWORD(v19) == v6;
  }

  if (!v8)
  {
    BBUFeedback::handleComment(a1[1], "Error: copying PSI-RAM buffer.");
    operator delete[](v7);
    return 1;
  }

  v10 = a2[4];
  if (v10)
  {
    v11 = v10(a2, v7, v6, &v19, 10000, &v18, 0);
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_11:
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
  {
LABEL_12:
    if (gBBULogVerbosity >= 1)
    {
      v12 = (*(*a1 + 8))(a1);
      v16 = "failure";
      if (v11)
      {
        v16 = "success";
      }

      _BBULog(9, 1, v12, "", "SendImage returned %s, amountWritten = %u, status = %u\n", v13, v14, v15, v16);
    }
  }

LABEL_16:
  operator delete[](v7);
  if (v19 == v6)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1 && (v18 == 1 || v18 == 16))
  {
    BBUFeedback::handleComment(a1[1], "Sent PSI successfully!");
    return 0;
  }

  else
  {
    BBUFeedback::handleComment(a1[1], "Failed to send PSI!");
    return 3;
  }
}

void BBUICE16Loader::~BBUICE16Loader(BBUICE16Loader *this)
{
  *this = &unk_1F5EFEFC0;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_1F5EFEFC0;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t RecipeUtil::uninit(RecipeUtil *this)
{
  for (i = *(this + 9); i; i = *(this + 9))
  {
    v12 = *i;
    *(this + 9) = i[1];
    if (v12)
    {
      free(v12);
    }

    operator delete(i);
  }

  v3 = *(this + 13);
  if (v3)
  {
    operator delete[](v3);
    *(this + 13) = 0;
  }

  v5 = (this + 120);
  v4 = *(this + 15);
  *(this + 17) = 0;
  if (v4)
  {
    if (!*(this + 16))
    {
      goto LABEL_9;
    }

    v6 = 0;
    v7 = 1;
    do
    {
      free(*(*(this + 15) + 8 * v6));
      v6 = v7++;
    }

    while (*(this + 16) > v6);
    v4 = *v5;
    if (*v5)
    {
LABEL_9:
      operator delete[](v4);
    }

    *v5 = 0;
    *(this + 16) = 0;
  }

  v10 = *(this + 18);
  v9 = (this + 144);
  v8 = v10;
  if (v10)
  {
    operator delete[](v8);
    *v9 = 0;
    v9[1] = 0;
  }

  return 0;
}

uint64_t RecipeUtil::_parseVariables(RecipeUtil *this)
{
  result = 2147483656;
  v3 = *this;
  if (!*this)
  {
    return result;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    return result;
  }

  v5 = v4 - 54;
  if (v4 < 0x36)
  {
    return 268435461;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *v3;
  *(this + 62) = *(v3 + 46);
  *(this + 2) = v7;
  *(this + 3) = v6;
  *(this + 1) = v8;
  if (*(this + 4))
  {
    return 2147483659;
  }

  if (v5 >= 8)
  {
    v9 = (v3 + 54);
    do
    {
      v10 = v9[1];
      if (!v10)
      {
        v13 = 2147483652;
        goto LABEL_50;
      }

      v11 = v9 + 2;
      v5 -= 8;
      v12 = *v9;
      v13 = 2147483669;
      if (*v9 > 2)
      {
        if (v12 == 3)
        {
          if (v5 < 8)
          {
LABEL_43:
            v13 = 268435461;
            goto LABEL_50;
          }

          if (!*(this + 15))
          {
            v27 = operator new[](8 * v10);
            v28 = 0;
            *(this + 15) = v27;
            while (v5 >= 8)
            {
              v29 = 8 * v11[1] + 8;
              *(*(this + 15) + 8 * v28) = malloc(v29);
              v30 = *(*(this + 15) + 8 * v28);
              if (!v30)
              {
                v13 = 2147483662;
                goto LABEL_50;
              }

              memcpy(v30, v11, v29);
              v11 = (v11 + v29);
              v5 -= v29;
              ++v28;
              v31 = v9[1];
              if (v28 >= v31)
              {
                *(this + 16) = v31;
                goto LABEL_9;
              }
            }

            goto LABEL_43;
          }

LABEL_48:
          v13 = 2147483656;
LABEL_50:
          RecipeUtil::uninit(this);
          return v13;
        }

        if (v12 != 4)
        {
          goto LABEL_50;
        }

        v15 = v5 >= 8 * v10;
        v5 -= 8 * v10;
        if (!v15)
        {
          goto LABEL_43;
        }

        if (*(this + 18))
        {
          goto LABEL_48;
        }

        v17 = operator new[](8 * v10);
        *(this + 18) = v17;
        memcpy(v17, v9 + 2, 8 * v10);
        v11 += 2 * v10;
        *(this + 19) = v10;
      }

      else if (v12 == 1)
      {
        if (*(this + 9))
        {
          v13 = 2147483657;
          goto LABEL_50;
        }

        v18 = operator new(0x10uLL);
        *(this + 9) = v18;
        v19 = v9[1];
        if (v19)
        {
          v20 = v18;
          v21 = 0;
          while (v5 >= 0xC)
          {
            v24 = v11[2];
            if (v5 < v24)
            {
              break;
            }

            v25 = malloc(v24 + 12);
            *v20 = v25;
            if (!v25)
            {
              v13 = 2147483653;
              goto LABEL_50;
            }

            memcpy(v25, v11, v24 + 12);
            v26 = v11[2];
            if (v21 < v19 - 1)
            {
              v22 = operator new(0x10uLL);
              v23 = v22;
            }

            else
            {
              v22 = 0;
              v23 = v20;
            }

            v11 = (v11 + v26 + 12);
            v5 = v5 - v26 - 12;
            v20[1] = v22;
            ++v21;
            v20 = v23;
            if (v19 == v21)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_50;
        }

        *(this + 14) = v10;
        v14 = 52 * v10;
        v15 = v5 >= v14;
        v5 -= v14;
        if (!v15)
        {
          goto LABEL_43;
        }

        if (*(this + 13))
        {
          goto LABEL_48;
        }

        v16 = operator new[](52 * v10);
        *(this + 13) = v16;
        memcpy(v16, v9 + 2, 52 * v10);
        v11 = (v11 + v14);
      }

LABEL_9:
      v9 = v11;
    }

    while (v5 > 7);
  }

  if (v5)
  {
    v13 = 2147483650;
    goto LABEL_50;
  }

  return 0;
}

uint64_t BBUEUR25Initializer::gatherPersonalizationParameters(BBUFeedback **a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *bytes = 0u;
  v40 = 0u;
  v30 = 0;
  (*(*a1 + 25))(a1);
  if (!ETLMaverickReadPublicKeyHash())
  {
    goto LABEL_15;
  }

  v6 = v30;
  v7 = operator new(0x10uLL);
  *v7 = &unk_1F5F04C88;
  v7[1] = 0;
  v8 = *MEMORY[0x1E695E480];
  v7[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v6);
  (*(*a3 + 24))(a3, v7);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *v31 = 0u;
  v32 = 0u;
  v29 = 0;
  (*(*a1 + 25))(a1);
  if (!ETLMaverickReadNonce())
  {
    goto LABEL_15;
  }

  v9 = operator new(0x10uLL);
  v10 = (v29 + 7) >> 3;
  *v9 = &unk_1F5F04B68;
  v9[1] = 0;
  v9[1] = CFDataCreate(v8, v31, v10);
  v11 = a3[1];
  if (v11)
  {
    v11 = (*(*v11 + 8))(v11);
  }

  a3[1] = v9;
  v27 = 0;
  v28 = 0;
  capabilities::updater::personalizationCommandTimeout(v11);
  SerialNumberAndChipID64Bit = ETLMaverickReadSerialNumberAndChipID64Bit();
  *&v26[0] = 0x44300000000;
  BBUFeedback::handleComment(a1[1], "WARNING: Serial number mismatch (DIAG vs. libTU + DIAG); using libTU + DIAG SNUM");
  if (SerialNumberAndChipID64Bit)
  {
    v14 = capabilities::radio::chipID(v13);
    if (v14 != v28)
    {
      BBUFeedback::handleComment(a1[1], "WARNING: ChipID mismatch (DIAG vs. libTU); using libTU ChipID");
    }

    v15 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(v26, HIDWORD(v28));
    (*(*a3 + 16))(a3, v15);
    v16 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v14);
    v17 = a3[2];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    a3[2] = v16;
    LODWORD(v27) = 0;
    (*(*a3 + 32))(a3, &v27, 0);
    if (v27 == 3)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26[0] = v18;
      v26[1] = v18;
      if (ETLMaverickManifestStatusInit())
      {
        v19 = (*(*a1 + 26))(a1, a2, a3, v26);
        ETLMaverickManifestStatusFree();
      }

      else
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v19 = 19;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v19 = 19;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v22 = (**a1)(a1);
          _BBULog(4, 0, v22, "", "Failed to allocate space for manifest_status\n", v23, v24, v25, v26[0]);
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
LABEL_15:
    v19 = 3;
  }

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t BBUEUR25Initializer::queryChipInfoBooted(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v6 = capabilities::radio::chipID(a1);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *bytes = 0u;
  v48 = 0u;
  v41 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  BBUFeedback::handleComment(a1[1], "Querying chip info from booted baseband");
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(a1[1], "missing parameter");
    result = 2;
    v36 = *MEMORY[0x1E69E9840];
    return result;
  }

  __p[0] = 0;
  capabilities::updater::personalizationCommandTimeout(v7);
  SerialNumberAndChipID64Bit = ETLMaverickReadSerialNumberAndChipID64Bit();
  v43 = 0x44300000000;
  BBUFeedback::handleComment(a1[1], "WARNING: Serial number mismatch (DIAG vs. libTU + DIAG); using libTU + DIAG SNUM");
  if ((SerialNumberAndChipID64Bit & 1) == 0)
  {
    BBUFeedback::handleComment(a1[1], "failed reading snum and/or chipID from booted baseband over ETL");
LABEL_46:
    result = 18;
    v37 = *MEMORY[0x1E69E9840];
    return result;
  }

  capabilities::updater::personalizationCommandTimeout(v9);
  if ((ETLMaverickReadPublicKeyHash() & 1) == 0)
  {
    BBUFeedback::handleComment(a1[1], "failed reading PKHash from booted baseband over ETL");
    goto LABEL_46;
  }

  v10 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v43, HIDWORD(v42));
  v11 = (*(*a3 + 16))(a3, v10);
  if (v6 != v42)
  {
    BBUFeedback::handleComment(a1[1], "WARNING: ChipID mismatch (DIAG vs. libTU); using libTU ChipID");
  }

  v12 = capabilities::radio::chipID(v11);
  v13 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v12);
  v14 = *(a3 + 16);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a3 + 16) = v13;
  v15 = v41;
  v16 = operator new(0x10uLL);
  *v16 = &unk_1F5F04C88;
  v16[1] = 0;
  v16[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v15);
  (*(*a3 + 24))(a3, v16);
  if (!v10 || !v13)
  {
    goto LABEL_21;
  }

  v17 = a1[1];
  (*(*v10 + 24))(__p, v10);
  if (v40 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_16;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_16:
  v19 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
  v20 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  v21 = (*(*v13 + 24))(v13);
  if ((v19 | v20))
  {
    v22 = v18;
  }

  else
  {
    v22 = "<< SNUM >>";
  }

  BBUFeedback::handleComment(v17, "   SNUM: 0x%s / CHIPID: 0x%08x", v22, v21);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v23 = a1[1];
  (*(*v16 + 24))(__p, v16);
  if (v40 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  BBUFeedback::handleComment(v23, "   PUBLIC_KEY_HASH: 0x%s", v24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = a1[1];
  v25 = a1 + 1;
  v27 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v26, "   CertID: %u", v27);
  v32 = v44 == *bytes && *(&v44 + 1) == *&bytes[8] && v45 == v48 && *(&v45 + 1) == *(&v48 + 1) && v46 == v49 && *(&v46 + 1) == *(&v49 + 1);
  v33 = *v25;
  if (v32)
  {
    BBUFeedback::handleComment(v33, "   Detected as unfused BB\n");
    result = 0;
    v35 = 1;
  }

  else
  {
    BBUFeedback::handleComment(v33, "   Detected as fused BB\n");
    result = 0;
    v35 = 3;
  }

  *(a3 + 88) = v35;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E524FB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUEUR25Initializer::~BBUEUR25Initializer(BBUEUR25Initializer *this)
{
  *this = &unk_1F5F02D68;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F02D68;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUpdaterController::BBUpdaterController(BBUpdaterController *this, const void *a2)
{
  *this = &unk_1F5EFF170;
  *(this + 1) = a2;
  v4 = operator new(0x1D0uLL);
  *(v4 + 2) = this;
  *v4 = &unk_1F5EFF460;
  *(v4 + 6) = 0;
  v5 = capabilities::updater::repersonalizeLimitCount(v4);
  *(v4 + 7) = v5;
  *v4 = &unk_1F5EFF338;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 50) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 57) = 0;
  *(v4 + 104) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 18) = &unk_1F5EFF490;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  v4[233] = 0;
  *(v4 + 236) = 0;
  *(v4 + 252) = 0;
  *(v4 + 244) = 0;
  *(v4 + 57) = 0;
  *(v4 + 33) = 0;
  *(v4 + 68) = 0;
  *(v4 + 36) = 0;
  *(v4 + 37) = 0;
  *(v4 + 35) = &unk_1F5EFF560;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  v4[369] = 0;
  *(v4 + 388) = 0u;
  *(v4 + 404) = 0u;
  *(v4 + 372) = 0u;
  v6 = capabilities::updater::EUICCAttemptCount(v5);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0xF7u, "Assertion failure(capabilities::updater::EUICCAttemptCount() <= std::numeric_limits<unsigned>::max() && capabilities::updater::EUICCAttemptCount() returns too large a value)", v38, v39, v40, cf);
  }

  v7 = capabilities::updater::EUICCAttemptCount(v6);
  *(v4 + 95) = v7;
  *(v4 + 388) = 0;
  v8 = capabilities::updater::intermittentFailureRetryCount(v7);
  *(v4 + 98) = v8;
  v9 = capabilities::updater::intermittentFailureRetryCount(v8);
  v10 = capabilities::updater::intermittentFailureRetryCount(v9);
  *(v4 + 98) = v10;
  *(v4 + 50) = 0;
  v11 = capabilities::updater::intermittentFailureRetryCount(v10);
  *(v4 + 101) = v11;
  v12 = capabilities::updater::intermittentFailureRetryCount(v11);
  *(v4 + 101) = v12;
  v13 = capabilities::updater::intermittentFailureRetryCount(v12);
  v14 = capabilities::updater::intermittentFailureRetryCount(v13);
  *(v4 + 101) = v14;
  *(v4 + 412) = 0;
  v15 = capabilities::updater::loaderConnectAttempts(v14);
  *(v4 + 104) = v15;
  *(v4 + 76) = 0;
  *(v4 + 91) = 0;
  *(v4 + 428) = 0;
  v16 = capabilities::updater::manifestCheckRetryCount(v15);
  *(v4 + 108) = v16;
  *(v4 + 55) = 0;
  *(v4 + 111) = capabilities::updater::initialStagePingAttemptCount(v16);
  *(v4 + 56) = 0;
  *(v4 + 114) = 0;
  *(v4 + 4) = 0x700000000;
  *(v4 + 92) = 0x700000000;
  v4[233] = 1;
  v4[369] = 1;
  *(this + 2) = v4;
  v17 = operator new(0x20uLL);
  *v17 = &unk_1F5EFF630;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = v4;
  *(this + 4) = 0;
  v18 = (this + 32);
  *(this + 3) = v17;
  *(this + 5) = 0;
  v19 = *MEMORY[0x1E695E480];
  *(this + 6) = TelephonyBasebandCreateController();
  v20 = operator new(0x128uLL);
  BBUFeedback::BBUFeedback(v20, a2);
  *(v20 + 46) = 1;
  *(v20 + 35) = 0;
  *(v20 + 36) = 0;
  *(v20 + 12) = 0u;
  *(v20 + 13) = 0u;
  *(v20 + 14) = 0u;
  *(v20 + 120) = 0;
  *v20 = &unk_1F5F01988;
  *(this + 7) = v20;
  *(this + 8) = BBUCommunication::create(*(this + 6));
  v22 = BBUInitializer::create(*(this + 7), v21);
  *(this + 10) = 0;
  *(this + 9) = v22;
  *(this + 11) = 0;
  BBUPersonalizationParameters::create(v22);
  *(this + 104) = 0u;
  *(this + 12) = v23;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0;
  *(this + 31) = 0;
  *(this + 242) = 0;
  *(this + 85) = 0;
  *(this + 344) = 0;
  *(this + 87) = 0;
  *(this + 352) = 0;
  *(this + 256) = 0;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 321) = 0u;
  *(this + 356) = 0;
  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = *(this + 4);
  *(this + 4) = Mutable;
  if (v25)
  {
    CFRelease(v25);
    Mutable = *v18;
  }

  if (!Mutable)
  {
    v41 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v41, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x53u, "Assertion failure(fOutput)", v42, v43, v44, cf);
  }

  valuePtr = -1431655766;
  if (capabilities::radio::vendor(Mutable) == 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  valuePtr = v26;
  v27 = CFNumberCreate(v19, kCFNumberSInt32Type, &valuePtr);
  cfa = v27;
  if (!v27)
  {
    v45 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v45, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x6Bu, "Assertion failure(v)", v46, v47, v48, 0);
    goto LABEL_30;
  }

  CFDictionarySetValue(*v18, @"VendorID", v27);
  v28 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(*v18, @"done", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(*v18, @"attemptedToFuse", v28);
  if (!*(this + 6))
  {
    v45 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v45, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x72u, "Assertion failure(fBasebandController)", v49, v50, v51, cfa);
    goto LABEL_30;
  }

  v29 = *(this + 7);
  if (!v29)
  {
    v45 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v45, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x73u, "Assertion failure(fFeedback)", v52, v53, v54, cfa);
    goto LABEL_30;
  }

  if (!*(this + 9))
  {
    v45 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v45, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x74u, "Assertion failure(fInitializer)", v55, v56, v57, cfa);
    goto LABEL_30;
  }

  if (!*(this + 12))
  {
    v45 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v45, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x75u, "Assertion failure(fPersonalizationParameters)", v58, v59, v60, cfa);
    goto LABEL_30;
  }

  if (!*(this + 2))
  {
    v45 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v45, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x76u, "Assertion failure(fFSM)", v61, v62, v63, cfa);
LABEL_30:
  }

  *(this + 29) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v31 = *(v29 + 16);
  v30 = v29 + 16;
  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(v30 - 8, v31);
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 - 8) = v30;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  BBULoader::addProgressBarTimes(*(this + 7), v32);
  BBUProgrammer::addProgressBarTimes(*(this + 7), v33);
  v34 = *(this + 2);
  v35 = *(this + 3);
  if (!v35)
  {
    *(v34 + 32) = 0x700000000;
    ++*(v34 + 452);
    ++*(v34 + 124);
    *(this + 363) = 0;
    v36 = cfa;
    if (!cfa)
    {
      return;
    }

    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  *(v34 + 32) = 0x700000000;
  ++*(v34 + 452);
  ++*(v34 + 124);
  if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  *(this + 363) = 0;
  v36 = cfa;
  if (cfa)
  {
LABEL_20:
    CFRelease(v36);
  }
}

void sub_1E525037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v16);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a9);
  BBUpdaterController::DebugOptions::~DebugOptions(v15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v14);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v12);
  v19 = v9[12];
  v9[12] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v9[11];
    v9[11] = 0;
    if (!v20)
    {
LABEL_3:
      v21 = *v17;
      *v17 = 0;
      if (!v21)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v20 = v9[11];
    v9[11] = 0;
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  (*(*v20 + 8))(v20);
  v21 = *v17;
  *v17 = 0;
  if (!v21)
  {
LABEL_4:
    v22 = v9[9];
    v9[9] = 0;
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  (*(*v21 + 8))(v21);
  v22 = v9[9];
  v9[9] = 0;
  if (!v22)
  {
LABEL_5:
    v23 = v9[8];
    v9[8] = 0;
    if (!v23)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  (*(*v22 + 16))(v22);
  v23 = v9[8];
  v9[8] = 0;
  if (!v23)
  {
LABEL_6:
    v24 = v9[7];
    v9[7] = 0;
    if (!v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  (*(*v23 + 8))(v23);
  v24 = v9[7];
  v9[7] = 0;
  if (!v24)
  {
LABEL_8:
    ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v10 + 2);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v11);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v10);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100]((v9 + 2));
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v24 + 8))(v24);
  goto LABEL_8;
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUpdaterController::~BBUpdaterController(BBUpdaterController *this)
{
  *this = &unk_1F5EFF170;
  (*(**(this + 8) + 40))(*(this + 8), this + 152);
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
    if ((*(this + 311) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 287) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(this + 33));
      v2 = *(this + 18);
      if (!v2)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 311) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 36));
  if (*(this + 287) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *(this + 18);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_11:
  v3 = *(this + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 14);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 6);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 5);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 4);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

{
  BBUpdaterController::~BBUpdaterController(this);

  operator delete(v1);
}

uint64_t BBUpdaterController::setOptions(uint64_t a1, int a2, const __CFDictionary *cf)
{
  __p[128] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    v5 = *(a1 + 40);
    *(a1 + 40) = v3;
    if (v5)
    {
      CFRelease(v5);
      v3 = *(a1 + 40);
    }

    v68[0] = 0xAAAAAAAAAAAAAAAALL;
    v68[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v68, v3);
    memset(v67, 170, sizeof(v67));
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v6 = off_1ED944170;
    if (!off_1ED944170)
    {
      v7 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v7);
      __dst[0] = v7;
      v8 = operator new(0x20uLL);
      *v8 = &unk_1F5F05A00;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = v7;
      v9 = off_1ED944178;
      off_1ED944170 = v7;
      off_1ED944178 = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v6 = off_1ED944170;
    }

    v10 = off_1ED944178;
    __p[0] = v6;
    __p[1] = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v11 = v6[1];
    if (!v11)
    {
LABEL_19:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v12 = *(v11 + 8);
        if (v12 < 1)
        {
          break;
        }

        v11 = *v11;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v11[1];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v13 = (v11 + 5);
    if (v11 + 5 != v67)
    {
      if (*(v11 + 63) < 0)
      {
        if (SHIBYTE(v67[2]) >= 0)
        {
          v14 = v67;
        }

        else
        {
          v14 = v67[0];
        }

        if (SHIBYTE(v67[2]) >= 0)
        {
          v15 = HIBYTE(v67[2]);
        }

        else
        {
          v15 = v67[1];
        }

        std::string::__assign_no_alias<false>(v13, v14, v15);
      }

      else if ((HIBYTE(v67[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v13, v67[0], v67[1]);
      }

      else
      {
        *v13 = *v67;
        v11[7] = v67[2];
      }
    }

    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    HIBYTE(__dst[2]) = 0;
    LOBYTE(__dst[0]) = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v67[2]) < 0)
    {
      operator delete(v67[0]);
    }

    *v67 = *__p;
    v67[2] = __p[2];
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v16 = off_1ED944170;
    if (!off_1ED944170)
    {
      v17 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v17);
      __dst[0] = v17;
      v18 = operator new(0x20uLL);
      *v18 = &unk_1F5F05A00;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = v17;
      v19 = off_1ED944178;
      off_1ED944170 = v17;
      off_1ED944178 = v18;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v16 = off_1ED944170;
    }

    v20 = off_1ED944178;
    __p[0] = v16;
    __p[1] = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v21 = v16[1];
    if (!v21)
    {
LABEL_52:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v22 = *(v21 + 8);
        if (v22 < 2)
        {
          break;
        }

        v21 = *v21;
        if (!v21)
        {
          goto LABEL_52;
        }
      }

      if (v22 == 1)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
        goto LABEL_52;
      }
    }

    v23 = (v21 + 5);
    if (v21 + 5 != v67)
    {
      if (*(v21 + 63) < 0)
      {
        if (SHIBYTE(v67[2]) >= 0)
        {
          v24 = v67;
        }

        else
        {
          v24 = v67[0];
        }

        if (SHIBYTE(v67[2]) >= 0)
        {
          v25 = HIBYTE(v67[2]);
        }

        else
        {
          v25 = v67[1];
        }

        std::string::__assign_no_alias<false>(v23, v24, v25);
      }

      else if ((HIBYTE(v67[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v23, v67[0], v67[1]);
      }

      else
      {
        *v23 = *v67;
        v21[7] = v67[2];
      }
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    __dst[0] = operator new(0x28uLL);
    *&__dst[1] = xmmword_1E538EBC0;
    strcpy(__dst[0], "/private/var/wireless/baseband_data");
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v67[2]) < 0)
    {
      operator delete(v67[0]);
    }

    *v67 = *__p;
    v67[2] = __p[2];
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v26 = off_1ED944170;
    if (!off_1ED944170)
    {
      v27 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v27);
      __dst[0] = v27;
      v28 = operator new(0x20uLL);
      *v28 = &unk_1F5F05A00;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = v27;
      v29 = off_1ED944178;
      off_1ED944170 = v27;
      off_1ED944178 = v28;
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      v26 = off_1ED944170;
    }

    v30 = off_1ED944178;
    __p[0] = v26;
    __p[1] = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v31 = v26[1];
    if (!v31)
    {
LABEL_85:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v32 = *(v31 + 8);
        if (v32 < 3)
        {
          break;
        }

        v31 = *v31;
        if (!v31)
        {
          goto LABEL_85;
        }
      }

      if (v32 == 2)
      {
        break;
      }

      v31 = v31[1];
      if (!v31)
      {
        goto LABEL_85;
      }
    }

    v33 = (v31 + 5);
    if (v31 + 5 != v67)
    {
      if (*(v31 + 63) < 0)
      {
        if (SHIBYTE(v67[2]) >= 0)
        {
          v34 = v67;
        }

        else
        {
          v34 = v67[0];
        }

        if (SHIBYTE(v67[2]) >= 0)
        {
          v35 = HIBYTE(v67[2]);
        }

        else
        {
          v35 = v67[1];
        }

        std::string::__assign_no_alias<false>(v33, v34, v35);
      }

      else if ((HIBYTE(v67[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v33, v67[0], v67[1]);
      }

      else
      {
        *v33 = *v67;
        v31[7] = v67[2];
      }
    }

    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v36 = *(a1 + 40);
      v37 = &unk_1ED949000;
      v38 = &unk_1ED949000;
      v39 = &unk_1ED949000;
      v40 = &unk_1ECFD5000;
      if (!v36)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v36 = *(a1 + 40);
      v37 = &unk_1ED949000;
      v38 = &unk_1ED949000;
      v39 = &unk_1ED949000;
      v40 = &unk_1ECFD5000;
      if (!v36)
      {
        goto LABEL_161;
      }
    }

    value = 0xAAAAAAAAAAAAAAAALL;
    if (!CFDictionaryGetValueIfPresent(v36, @"DebugArgs", &value) || (v44 = CFGetTypeID(value), v44 != CFStringGetTypeID()))
    {
LABEL_153:
      if (v37[395] == -1)
      {
        if (v38[394] == -1)
        {
          goto LABEL_155;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (v38[394] == -1)
        {
LABEL_155:
          if ((v39[3144] & 1) == 0)
          {
            goto LABEL_156;
          }

          goto LABEL_157;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
      if ((v39[3144] & 1) == 0)
      {
LABEL_156:
        if ((v40[2241] & 1) == 0)
        {
          goto LABEL_161;
        }
      }

LABEL_157:
      if (*(a1 + 120))
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "enabling kernel IPC log\n", v41, v42, v43, v66);
        (*(**(a1 + 120) + 32))(*(a1 + 120));
      }

LABEL_161:
      if (v37[395] == -1)
      {
        if (v38[394] == -1)
        {
          goto LABEL_163;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (v38[394] == -1)
        {
LABEL_163:
          if (v39[3144])
          {
            goto LABEL_171;
          }

          goto LABEL_164;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
      if (v39[3144])
      {
        goto LABEL_171;
      }

LABEL_164:
      if (v40[2241] & 1) == 0 && (*(a1 + 344))
      {
        if (BBULogRegisterRemoteFSDelegate(void)::delegate)
        {
          sDelegate = BBULogRegisterRemoteFSDelegate(void)::delegate;
          if (SHIBYTE(v67[2]) < 0)
          {
            goto LABEL_174;
          }

          goto LABEL_175;
        }

LABEL_173:
        if (SHIBYTE(v67[2]) < 0)
        {
LABEL_174:
          operator delete(v67[0]);
        }

LABEL_175:
        MEMORY[0x1E69265E0](v68);
        goto LABEL_176;
      }

LABEL_171:
      BBULogRegisterDelegates(*(a1 + 352), *(a1 + 348));
      __p[0] = 0xAAAAAAAAAAAAAAAALL;
      __p[1] = 0xAAAAAAAAAAAAAAAALL;
      (*(**(a1 + 64) + 56))(__p);
      v62 = *(a1 + 120);
      v63 = *(a1 + 128);
      *(a1 + 120) = *__p;
      __p[0] = v62;
      __p[1] = v63;
      if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
        if ((SHIBYTE(v67[2]) & 0x80000000) == 0)
        {
          goto LABEL_175;
        }

        goto LABEL_174;
      }

      goto LABEL_173;
    }

    memset(__dst, 170, sizeof(__dst));
    memset(__p, 170, 0x400uLL);
    CFStringGetCString(value, __p, 1024, 0x8000100u);
    v45 = strlen(__p);
    if (v45 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v46 = v45;
    if (v45 >= 0x17)
    {
      if ((v45 | 7) == 0x17)
      {
        v48 = 25;
      }

      else
      {
        v48 = (v45 | 7) + 1;
      }

      v47 = operator new(v48);
      __dst[1] = v46;
      __dst[2] = (v48 | 0x8000000000000000);
      __dst[0] = v47;
    }

    else
    {
      HIBYTE(__dst[2]) = v45;
      v47 = __dst;
      if (!v45)
      {
        goto LABEL_114;
      }
    }

    memcpy(v47, __p, v46);
LABEL_114:
    *(v46 + v47) = 0;
    v49 = HIBYTE(__dst[2]);
    v50 = HIBYTE(__dst[2]);
    if (SHIBYTE(__dst[2]) < 0)
    {
      v49 = __dst[1];
    }

    if (v49)
    {
      memset(__p, 0, 24);
      BBUStringToArgv(__dst, __p);
      v51 = MEMORY[0x1E69E9900];
      *MEMORY[0x1E69E98F0] = 1;
      *v51 = 1;
      v52 = MEMORY[0x1E69E98E0];
      while (1)
      {
        while (1)
        {
          do
          {
            while (1)
            {
              while (1)
              {
                v53 = getopt_long(((__p[1] - __p[0]) >> 3) - 1, __p[0], "l:v:x:fw:i:t:e:p:d:r:c:hFSqVB:ND:", &BBUpdaterController::parseDebugArgs(void)::long_options, 0);
                if (v53 > 117)
                {
                  break;
                }

                switch(v53)
                {
                  case 0x42:
                    v58 = *v52;
                    if (!strncmp("none", *v52, 4uLL))
                    {
                      *(a1 + 340) = 0;
                    }

                    else if (!strncmp("feedback", v58, 8uLL))
                    {
                      *(a1 + 340) = 1;
                    }

                    else
                    {
                      *(a1 + 340) = 2 * (strncmp("oslog", v58, 5uLL) == 0);
                    }

                    break;
                  case 0x6C:
                    __endptr = 0xAAAAAAAAAAAAAAAALL;
                    v54 = strtoul(*v52, &__endptr, 0);
                    if (!*__endptr)
                    {
                      v55 = v54;
                      sLogInternalMask = v54;
                      if (gBBULogMaskGet(void)::once != -1)
                      {
                        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                      }

                      *gBBULogMaskGet(void)::sBBULogMask = v55;
                    }

                    break;
                  case 0xFFFFFFFF:
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    v50 = HIBYTE(__dst[2]);
                    v40 = &unk_1ECFD5000;
                    v39 = &unk_1ED949000;
                    v38 = &unk_1ED949000;
                    v37 = &unk_1ED949000;
                    goto LABEL_151;
                  default:
LABEL_119:
                    BBUFeedback::handleComment(*(a1 + 56), "%s: Ignoring unknown/RC'd out option %c", "parseDebugArgs", v53);
                    break;
                }
              }

              if (v53 != 118)
              {
                break;
              }

              __endptr = 0xAAAAAAAAAAAAAAAALL;
              v59 = strtoul(*v52, &__endptr, 0);
              if (!*__endptr)
              {
                gBBULogVerbosity = v59;
              }
            }

            if (v53 != 120)
            {
              goto LABEL_119;
            }

            __endptr = 0xAAAAAAAAAAAAAAAALL;
            v56 = strtoul(*v52, &__endptr, 0);
          }

          while (*__endptr);
          if (gBBULogMaskGet(void)::once != -1)
          {
            break;
          }

          if (v56 >= 7)
          {
            v57 = (*gBBULogMaskGet(void)::sBBULogMask & 0x40) == 0;
            *gBBULogMaskGet(void)::sBBULogMask;
          }

          else
          {
            v57 = 1;
          }

          if (!v57)
          {
            goto LABEL_135;
          }
        }

        v60 = v56;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if (v60 >= 7)
        {
          v61 = (*gBBULogMaskGet(void)::sBBULogMask & 0x40) == 0;
          *gBBULogMaskGet(void)::sBBULogMask;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
LABEL_135:
          TelephonyUtilDebugSetFlags();
        }
      }
    }

LABEL_151:
    if (v50 < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_153;
  }

LABEL_176:
  v64 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E525174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  MEMORY[0x1E69265E0](&a17);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::execCommand(uint64_t a1, int a2, CFStringRef theString2, CFDictionaryRef *a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = 0;
  if (!theString2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_87;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_87:
    std::string::basic_string[abi:ne200100]<0>(v81, "null command");
    BBUpdaterCommon::BBUCreateCFError(&v83, v81, 2u, 0, v58, v59, v60, v61);
    if (v82 < 0)
    {
      operator delete(v81[0]);
      v53 = 0;
      if (!a5)
      {
        return v53;
      }

      goto LABEL_110;
    }

    goto LABEL_107;
  }

  if (!a4)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_94;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_94:
    std::string::basic_string[abi:ne200100]<0>(v79, "null output");
    BBUpdaterCommon::BBUCreateCFError(&v83, v79, 2u, 0, v62, v63, v64, v65);
    if (v80 < 0)
    {
      operator delete(v79[0]);
      v53 = 0;
      if (!a5)
      {
        return v53;
      }

      goto LABEL_110;
    }

    goto LABEL_107;
  }

  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    qword_1ED948390 = 0;
    qword_1ED948388 = 0;
    qword_1ED948380 = &qword_1ED948388;
    __cxa_atexit(std::map<__CFString const*,BBUpdaterController::CmdInfo,BBUpdaterController::CFStringCompareFunctor,std::allocator<std::pair<__CFString const* const,BBUpdaterController::CmdInfo>>>::~map[abi:ne200100], &qword_1ED948380, &dword_1E5234000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  if (qword_1ED9482D0 == -1)
  {
    v12 = qword_1ED948388;
    if (!qword_1ED948388)
    {
      goto LABEL_98;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9482D0, &__block_literal_global_0);
    v12 = qword_1ED948388;
    if (!qword_1ED948388)
    {
      goto LABEL_98;
    }
  }

  v13 = &qword_1ED948388;
  do
  {
    v14 = CFStringCompare(*(v12 + 32), theString2, 0);
    if (v14 >= kCFCompareEqualTo)
    {
      v13 = v12;
    }

    v12 = *(v12 + ((v14 >> 60) & 8));
  }

  while (v12);
  if (v13 != &qword_1ED948388 && (CFStringCompare(theString2, v13[4], 0) & 0x8000000000000000) == 0)
  {
    v15 = *(a1 + 56);
    v16 = v13[4];
    memset(&v84, 0, sizeof(v84));
    ctu::cf::assign();
    memset(&__p, 0, sizeof(__p));
    BBUFeedback::handleBeginPhase(v15, "Command: %s", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(v13[6] + 16))();
    v17 = *(a1 + 56);
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v18 = off_1ED944120;
    if (!off_1ED944120)
    {
      v19 = operator new(0x38uLL);
      v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v21 = dispatch_queue_create("BBUError", v20);
      *v19 = 0;
      v19[1] = 0;
      v19[2] = v21;
      if (v21)
      {
        v22 = v21;
        dispatch_retain(v21);
        v19[3] = 0;
        dispatch_release(v22);
      }

      else
      {
        v19[3] = 0;
      }

      v19[4] = 0;
      v19[5] = 0;
      v19[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v84, v19);
      v23 = *&v84.__r_.__value_.__l.__data_;
      *&v84.__r_.__value_.__l.__data_ = 0uLL;
      v24 = *(&off_1ED944120 + 1);
      off_1ED944120 = v23;
      if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }

      size = v84.__r_.__value_.__l.__size_;
      if (v84.__r_.__value_.__l.__size_ && !atomic_fetch_add((v84.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v18 = off_1ED944120;
    }

    v26 = *(&off_1ED944120 + 1);
    __p.__r_.__value_.__r.__words[0] = v18;
    __p.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    ErrorCode = BBUError::getErrorCode(v18);
    (*(*v17 + 16))(v17, ErrorCode);
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v28 = *(a1 + 335);
      if ((v28 & 0x8000000000000000) == 0)
      {
LABEL_30:
        if (!v28)
        {
          goto LABEL_47;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v28 = *(a1 + 335);
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }
    }

    if (!*(a1 + 320))
    {
      goto LABEL_47;
    }

LABEL_34:
    if (v28 < 0)
    {
      v29 = *(a1 + 312);
      v30 = *(a1 + 320);
    }

    if (ctu::fs::is_directory())
    {
      BBUFeedback::handleBeginPhase(*(a1 + 56), "BB Booted");
      (*(**(a1 + 56) + 16))(*(a1 + 56), 0);
      v31 = *(a1 + 56);
      v84.__r_.__value_.__r.__words[0] = operator new(0x19uLL);
      *&v84.__r_.__value_.__r.__words[1] = xmmword_1E538EBD0;
      strcpy(v84.__r_.__value_.__l.__data_, "/bbupdate_profile.plist");
      v32 = *(a1 + 335);
      if (v32 >= 0)
      {
        v33 = (a1 + 312);
      }

      else
      {
        v33 = *(a1 + 312);
      }

      if (v32 >= 0)
      {
        v34 = *(a1 + 335);
      }

      else
      {
        v34 = *(a1 + 320);
      }

      v35 = std::string::insert(&v84, 0, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v76 = v35->__r_.__value_.__r.__words[2];
      *v75 = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      BBUProfiler::exportToFile((v31 + 80), v75);
      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }
    }

LABEL_47:
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
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v84, v38);
      v42 = *&v84.__r_.__value_.__l.__data_;
      *&v84.__r_.__value_.__l.__data_ = 0uLL;
      v43 = *(&off_1ED944120 + 1);
      off_1ED944120 = v42;
      if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
      }

      v44 = v84.__r_.__value_.__l.__size_;
      if (v84.__r_.__value_.__l.__size_ && !atomic_fetch_add((v84.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
      }

      v37 = off_1ED944120;
    }

    v45 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v46 = BBUError::getErrorCode(v37);
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v52 = v46;
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
      if (v52)
      {
LABEL_63:
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v47 = off_1ED944120;
        if (!off_1ED944120)
        {
          v48 = operator new(0x38uLL);
          v49 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
          v50 = dispatch_queue_create("BBUError", v49);
          *v48 = 0;
          v48[1] = 0;
          v48[2] = v50;
          if (v50)
          {
            v51 = v50;
            dispatch_retain(v50);
            v48[3] = 0;
            dispatch_release(v51);
          }

          else
          {
            v48[3] = 0;
          }

          v48[4] = 0;
          v48[5] = 0;
          v48[6] = 0;
          std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v84, v48);
          v54 = *&v84.__r_.__value_.__l.__data_;
          *&v84.__r_.__value_.__l.__data_ = 0uLL;
          v55 = *(&off_1ED944120 + 1);
          off_1ED944120 = v54;
          if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
          }

          v56 = v84.__r_.__value_.__l.__size_;
          if (v84.__r_.__value_.__l.__size_ && !atomic_fetch_add((v84.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          v47 = off_1ED944120;
        }

        v57 = *(&off_1ED944120 + 1);
        __p.__r_.__value_.__r.__words[0] = v47;
        __p.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        BBUError::getCFError(v47, &v83);
        if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v57->__on_zero_shared)(v57);
          std::__shared_weak_count::__release_weak(v57);
          v53 = 0;
          if (!a5)
          {
            return v53;
          }

          goto LABEL_110;
        }

        goto LABEL_107;
      }
    }

    else if (v46)
    {
      goto LABEL_63;
    }

    v53 = 1;
    if (!a5)
    {
      return v53;
    }

    goto LABEL_110;
  }

LABEL_98:
  memset(&v84, 0, sizeof(v84));
  ctu::cf::assign();
  memset(&__p, 0, sizeof(__p));
  v66 = std::string::insert(&__p, 0, "Unrecognized command ", 0x15uLL);
  v72 = v66->__r_.__value_.__r.__words[0];
  v71 = v66->__r_.__value_.__l.__size_;
  v73 = v66->__r_.__value_.__r.__words[2];
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v73 & 0x8000000000000000) == 0)
    {
      goto LABEL_100;
    }
  }

  else if ((v73 & 0x8000000000000000) == 0)
  {
LABEL_100:
    v77.__r_.__value_.__r.__words[0] = v72;
    v77.__r_.__value_.__l.__size_ = v71;
    v77.__r_.__value_.__r.__words[2] = v73;
    goto LABEL_103;
  }

  std::string::__init_copy_ctor_external(&v77, v72, v71);
LABEL_103:
  BBUpdaterCommon::BBUCreateCFError(&v83, &v77, 2u, 0, v67, v68, v69, v70);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
    if ((v73 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }
  }

  else if ((v73 & 0x8000000000000000) != 0)
  {
LABEL_109:
    operator delete(v72);
    v53 = 0;
    if (!a5)
    {
      return v53;
    }

    goto LABEL_110;
  }

LABEL_107:
  v53 = 0;
  if (!a5)
  {
    return v53;
  }

LABEL_110:
  if (v83)
  {
    *a5 = CFRetain(v83);
    CFRelease(v83);
    v83 = 0;
    if (a4)
    {
      if (!*a4)
      {
        *a4 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }
  }

  return v53;
}

void sub_1E5252374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void BBUpdaterController::handleException(CFErrorRef *a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s\n", a6, a7, a8, a2);
  v11 = strlen(a2);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v11 | 7) + 1;
    }

    v17 = operator new(v18);
    __dst[1] = v16;
    v20 = v18 | 0x8000000000000000;
    __dst[0] = v17;
    goto LABEL_11;
  }

  HIBYTE(v20) = v11;
  v17 = __dst;
  if (v11)
  {
LABEL_11:
    memcpy(v17, a2, v16);
  }

  *(v16 + v17) = 0;
  BBUpdaterCommon::BBUCreateCFError(a1, __dst, a3, 0, v12, v13, v14, v15);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E5252758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::query(void *a1, int a2)
{
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(a1, 0);
  v8 = FirmwareDataSource;
  v27 = FirmwareDataSource;
  if (a2 != 4)
  {
    if (a2 != 32)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x136u, "Assertion failure(false && Unrecognized BBU stage.)", v22, v23, v24, v25);
    }

    if (!BBUpdaterController::shouldPerformEUICC(a1))
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_24;
    }

    if (v8)
    {
      v12 = a1[5];
      cf.__r_.__value_.__r.__words[0] = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      v13 = a1[4];
      v31 = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      updated = eUICC::UpdateOutput(a1 + 19, &cf, &v31);
      if (v31)
      {
        CFRelease(v31);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      if (!updated && a1[4])
      {
        goto LABEL_24;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_17:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          }
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to eUICC::updateOutput in BootedStage");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v29 = __p;
      }

      v30 = updated;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v29);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_24;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_37;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_37:
    v20 = BBUStageAsString(32);
    std::string::basic_string[abi:ne200100]<0>(&cf, v20);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to get update source in ", &cf, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v29 = __p;
      goto LABEL_46;
    }

LABEL_45:
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_46:
    v30 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_48:
        if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_52;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_52:
    operator delete(cf.__r_.__value_.__l.__data_);
    return;
  }

  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_31:
    v19 = BBUStageAsString(4);
    std::string::basic_string[abi:ne200100]<0>(&cf, v19);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to get update source in ", &cf, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v29 = __p;
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  BBUpdaterController::queryInfoSecondStageInternal(a1, 1, &v27);
LABEL_24:
  v18 = *(*v8 + 16);

  v18(v8);
}

void sub_1E5252C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

char *BBUpdaterController::getFirmwareDataSource(BBUpdaterController *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v4, @"firmwareData", value))
    {
      v5 = CFGetTypeID(value[0]);
      if (v5 == CFDataGetTypeID())
      {
        v6 = value[0];
        if (value[0])
        {
          v7 = operator new(0x98uLL);
          BBUZipFile::BBUZipFile(v7, v6);
          return BBUUpdateSource::createFromZipFile(v7, *(this + 7), (*(*(this + 12) + 88) == 3));
        }
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  memset(value, 170, 24);
  FirmwareFolder = BBUpdaterController::getFirmwareFolder(value, *(this + 5));
  v10 = HIBYTE(value[2]);
  if (SHIBYTE(value[2]) < 0)
  {
    v10 = value[1];
  }

  if (!v10)
  {
    capabilities::radio::personalizedFirmwarePath(&v18, FirmwareFolder);
    if (SHIBYTE(value[2]) < 0)
    {
      operator delete(value[0]);
    }

    value[2] = v19;
    *value = v18;
    if (SHIBYTE(v19) < 0)
    {
      if (value[1])
      {
        v11 = value[0];
        goto LABEL_19;
      }
    }

    else if (HIBYTE(v19))
    {
      v11 = value;
LABEL_19:
      BBUFeedback::handleComment(*(this + 7), "Baseband fw path that is used: %s\n", v11);
      goto LABEL_20;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x56Du, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v14, v15, v16, v17);
  }

LABEL_20:
  result = BBUUpdateSource::createFromFolder(value, *(this + 7), *(*(this + 12) + 88) == 3);
  if (SHIBYTE(value[2]) < 0)
  {
    v12 = result;
    operator delete(value[0]);
    return v12;
  }

  return result;
}

void sub_1E5252F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::parsePreflightArgs(BBUpdaterController *this)
{
  result = *(this + 5);
  if (result)
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    result = CFDictionaryGetValueIfPresent(result, @"PreflightInfo", &value);
    if (result)
    {
      v3 = CFGetTypeID(value);
      result = CFDictionaryGetTypeID();
      if (v3 == result && (*(this + 361) & 1) == 0)
      {
        BBUFeedback::handleComment(*(this + 7), "Preflight detected");
        *(this + 361) = 1;
        result = (*(**(this + 9) + 80))(*(this + 9), *(this + 12), value);
        if (result)
        {
          exception = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x8C9u, "Assertion failure(ret == kBBUReturnSuccess && Failed overriding preflight personalization parameters.)", v5, v6, v7, v8);
        }
      }
    }
  }

  return result;
}

uint64_t BBUpdaterController::queryInfoFirstStageInternal(BBULoader **this, BBUFeedback *a2)
{
  v4 = BBULoader::create(this[7], a2);
  v5 = this[10];
  this[10] = v3;
  if (v5)
  {
    (*(*v5 + 8))(v5, v4);
    v3 = this[10];
  }

  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x83Au, "Assertion failure(fLoader && Failed to reset and create BBULoader.)", v36, v37, v38, v39);
  }

  TransportNoEvents = BBUpdaterController::createTransportNoEvents(this, 1, 2);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
LABEL_15:
      v10 = TransportNoEvents == 0;
LABEL_16:
      v11 = *gBBULogMaskGet(void)::sBBULogMask;
      v12 = gBBULogVerbosity;
      if (!v10)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_15;
  }

  _BBULog(13, 0, "BBUpdaterController", "", "createTransportNoEvents ret status is %d\n", v6, v7, v8, TransportNoEvents);
  v10 = TransportNoEvents == 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_16;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v11 = *gBBULogMaskGet(void)::sBBULogMask;
  v12 = gBBULogVerbosity;
  if (TransportNoEvents)
  {
LABEL_9:
    if ((v11 & 2) != 0 && v12 >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "kBBUReturnFailCreateTransportFirst");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to create transport: ", &__p, &v44);
    v14 = capabilities::updater::loaderConnectAttempts(v13);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      v33 = v14;
      std::string::__init_copy_ctor_external(&v45, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
      v14 = v33;
    }

    else
    {
      v45 = v44;
    }

    v46 = 50;
    v47 = v14;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(this, &v45);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_53:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 50;
        }

LABEL_57:
        operator delete(__p.__r_.__value_.__l.__data_);
        return 50;
      }
    }

    else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    operator delete(v44.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 50;
    }

    goto LABEL_57;
  }

LABEL_17:
  if ((v11 & 0x2000) != 0 && (v12 & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUpdaterController", "", "Querying first stage\n", v6, v7, v8, v39);
  }

  v15 = (*(*this[10] + 16))(this[10], this + 152);
  if (!v15)
  {
    v44.__r_.__value_.__r.__words[0] = 0;
    (*(*this[10] + 24))(this[10], this + 152, &v44);
    if (v44.__r_.__value_.__r.__words[0])
    {
      v19 = this[7];
      (*(*v44.__r_.__value_.__l.__data_ + 16))(&v45);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v45;
      }

      else
      {
        v20 = v45.__r_.__value_.__r.__words[0];
      }

      BBUFeedback::handleComment(v19, "Loader version: %s", v20);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (v44.__r_.__value_.__r.__words[0])
      {
        (*(*v44.__r_.__value_.__l.__data_ + 8))(v44.__r_.__value_.__r.__words[0]);
      }
    }

    v24 = (*(*this[10] + 32))(this[10], this + 152, this[12]);
    if (!v24)
    {
      BBUFeedback::handleComment(this[7], "fusingState: %d", *(this[12] + 22));
      return v24;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_46:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed querying chip information");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" in the first stage.", &__p, &v44);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = v44;
    }

    v46 = v24;
    v47 = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v45);
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    v34 = v45.__r_.__value_.__r.__words[0];
    goto LABEL_69;
  }

  v24 = v15;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_36:
  std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to connect to loader");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": ", &__p, &v44);
  std::string::basic_string[abi:ne200100]<0>(v40, BBUReturnAsString::BBUReturnStrings[v24]);
  if ((v41 & 0x80u) == 0)
  {
    v26 = v40;
  }

  else
  {
    v26 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v27 = v41;
  }

  else
  {
    v27 = v40[1];
  }

  v28 = std::string::append(&v44, v26, v27);
  v29 = v28->__r_.__value_.__r.__words[0];
  size = v28->__r_.__value_.__l.__size_;
  v42[0] = v28->__r_.__value_.__r.__words[2];
  *(v42 + 3) = *(&v28->__r_.__value_.__r.__words[2] + 3);
  v31 = SHIBYTE(v28->__r_.__value_.__r.__words[2]);
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v32 = capabilities::updater::loaderConnectAttempts(v28);
  if (v31 < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v29, size);
  }

  else
  {
    v45.__r_.__value_.__r.__words[0] = v29;
    v45.__r_.__value_.__l.__size_ = size;
    LODWORD(v45.__r_.__value_.__r.__words[2]) = v42[0];
    *(&v45.__r_.__value_.__r.__words[2] + 3) = *(v42 + 3);
    *(&v45.__r_.__value_.__s + 23) = v31;
  }

  v46 = v24;
  v47 = v32;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(this, &v45);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
LABEL_61:
      if (v41 < 0)
      {
        goto LABEL_65;
      }

      goto LABEL_70;
    }
  }

  else if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(v29);
  if (v41 < 0)
  {
LABEL_65:
    v34 = v40[0];
LABEL_69:
    operator delete(v34);
  }

LABEL_70:
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_1E52537AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v29 = v4;
  v30 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v4 + 24))(__p, v4);
  v5 = __p[0];
  v6 = (__p[0] + 24 * v4[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v28) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * v4[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v28 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F460 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    v25 = v4[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v15, v16, v17);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  v18 = v29;
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventError>(v29) && boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::eventError>(v18, a2))
  {
    v19 = (_MergedGlobals_1[*(v18 + 32) + 218])(v18, 0);
    if (!((_MergedGlobals_1[*(v18 + 36) + 218])(v18, 1) | v19))
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(v18, v18, *(v18 + 32));
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(v18, v18, *(v18 + 36));
    }

    *(v18 + 100) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v18);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_45;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F460 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v20, v21, v22, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_45:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }

  v24 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void sub_1E5253C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::queryInfoSecondStageInternal(uint64_t a1, int a2, uint64_t a3)
{
  v9 = BBUProgrammer::create(*(a1 + 56), a1 + 152, *(a1 + 48));
  v10 = *(a1 + 88);
  *(a1 + 88) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (!*a3)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_19:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to get update source for queryInfoSecondStageInternal");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = __p;
    }

    v31 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v30);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 35;
  }

  if (BBUpdaterController::createTransportNoEvents(a1, 0, 4))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(&v28, "kBBUReturnFailCreateTransportSecond");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to create transport ", &v28, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = __p;
    }

    v31 = 51;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v30);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_50:
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 51;
        }

LABEL_54:
        operator delete(v28.__r_.__value_.__l.__data_);
        return 51;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 51;
    }

    goto LABEL_54;
  }

  v14 = *(a1 + 311);
  if (v14 < 0)
  {
    v14 = *(a1 + 296);
  }

  if (v14)
  {
    (*(**(a1 + 88) + 56))(*(a1 + 88), a1 + 288);
  }

  v15 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  if (v15)
  {
    v25 = v15;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_31:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed connecting to programmer while querying information in the second stage.");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = __p;
    }

    v31 = v25;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v30);
    result = v25;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
      result = v25;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v26 = __p.__r_.__value_.__r.__words[0];
LABEL_68:
    operator delete(v26);
    return v25;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = 0;
  v19 = *(a1 + 96);
  if (*(v19 + 88) == 3)
  {
    v20 = (*(**a3 + 48))() ^ 1;
    v19 = *(a1 + 96);
  }

  else
  {
    v20 = 0;
  }

  result = (*(**(a1 + 88) + 32))(*(a1 + 88), 0, 1, &v27, v19, v20);
  if (result)
  {
    v25 = result;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_39;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_39:
    (*(**(a1 + 88) + 24))(*(a1 + 88));
    std::string::basic_string[abi:ne200100]<0>(&v28, BBUReturnAsString::BBUReturnStrings[v25]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed gathering personalization parameters @ second stage: ", &v28, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = __p;
    }

    v31 = v25;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v30);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_63:
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v25;
        }

        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_67:
    v26 = v28.__r_.__value_.__r.__words[0];
    goto LABEL_68;
  }

  return result;
}

void sub_1E52543F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a13);
  goto LABEL_6;
}

uint64_t BBUpdaterController::shouldPerformEUICC(const __CFDictionary **this)
{
  v5 = capabilities::euicc::supportsLegacyUpdater(this);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(19, 0, "BBUpdaterController", "", "supports legacy eUICC update? %d\n", v2, v3, v4, v5);
  }

LABEL_5:
  if (!v5)
  {
    return 0;
  }

  v6 = this[5];
  v13 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  eUICC::Options::Options(v14, &v13);
  v10 = v14[8];
  if (v16 < 0)
  {
    operator delete(__p);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

LABEL_13:
  if (!v10)
  {
    return 1;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(19, 0, "BBUpdaterController", "", "Skip eUICC options\n", v7, v8, v9, v12);
    return 0;
  }

  return result;
}

void sub_1E5254674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void BBUpdaterController::personalize(uint64_t a1, int a2)
{
  *(a1 + 360) = 1;
  memset(&__p, 0, sizeof(__p));
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(a1, 0);
  v135 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_114:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v4, v5, v6, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    v107 = BBUStageAsString(a2);
    std::string::basic_string[abi:ne200100]<0>(&v137, v107);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to get update source in ", &v137, &v138);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v138;
    }

    v140 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
LABEL_120:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_122:
        if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

LABEL_126:
        operator delete(v137.__r_.__value_.__l.__data_);
        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    operator delete(v138.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_126;
  }

  if (a2 <= 7)
  {
    if (a2 != 2)
    {
      if (a2 == 4)
      {
        v8 = *(a1 + 56);
        BBUFeedback::handleComment(v8, "entering %s", "StageContext::PersonalizeStageSecond");
        v9 = *(v8 + 144);
        v10 = *(v8 + 152);
        v11 = *(v8 + 144);
        if (v10 == v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = ((v10 - v11) << 7) - 1;
        }

        v13 = *(v8 + 176);
        v14 = v13 + *(v8 + 168);
        if (v12 == v14)
        {
          std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v8 + 136);
          v11 = *(v8 + 144);
          v13 = *(v8 + 176);
          v14 = *(v8 + 168) + v13;
        }

        *(*(v11 + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v14 & 0x3FF)) = 3;
        *(v8 + 176) = v13 + 1;
        if (*(a1 + 88))
        {
          v18 = (*(*FirmwareDataSource + 80))(FirmwareDataSource);
          if (!v18)
          {
            v19 = *(a1 + 96);
            if (v19)
            {
              v20 = (*(**(v19 + 16) + 24))(*(v19 + 16));
              (*(*FirmwareDataSource + 200))(FirmwareDataSource, v20);
              v21 = (*(**(*(a1 + 96) + 24) + 24))(*(*(a1 + 96) + 24));
              (*(*FirmwareDataSource + 208))(FirmwareDataSource, v21);
            }

            v25 = BBUpdaterController::performSecondStageInternal(a1, 1, &v135, &__p);
            if (!v25)
            {
              v29 = BBUpdaterController::bootupInternal(a1, &v135);
              if (!v29)
              {
                v33 = BBUpdaterController::performPingInternal(a1);
                if (v33)
                {
                  if (gBBULogMaskGet(void)::once == -1)
                  {
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  else
                  {
                    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  if (gBBULogVerbosity >= 6)
                  {
                    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
                  }

LABEL_21:
                  std::string::basic_string[abi:ne200100]<0>(&v137, BBUReturnAsString::BBUReturnStrings[v33]);
                  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to ping baseband: ", &v137, &v138);
                  v35 = capabilities::updater::intermittentFailureRetryCount(v34);
                  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    __dst = v138;
LABEL_220:
                    v140 = __PAIR64__(v35, v33);
                    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(a1, &__dst);
                    goto LABEL_120;
                  }

                  goto LABEL_219;
                }

LABEL_67:
                BBUpdaterController::performBootedStageInternal(a1, &v135);
                goto LABEL_69;
              }

              if (gBBULogMaskGet(void)::once == -1)
              {
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                {
                  goto LABEL_180;
                }
              }

              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
              }

LABEL_180:
              std::string::basic_string[abi:ne200100]<0>(&v137, BBUReturnAsString::BBUReturnStrings[v29]);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to bootup baseband: ", &v137, &v138);
              v117 = capabilities::updater::intermittentFailureRetryCount(v116);
              if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
              {
                v119 = v117;
                std::string::__init_copy_ctor_external(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
                v117 = v119;
              }

              else
              {
                __dst = v138;
              }

              v140 = __PAIR64__(v117, v29);
              BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(a1, &__dst);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_214:
                  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_215:
                    *(a1 + 362) = 1;
                    goto LABEL_69;
                  }

LABEL_218:
                  operator delete(v137.__r_.__value_.__l.__data_);
                  goto LABEL_215;
                }
              }

              else if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_214;
              }

              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_215;
              }

              goto LABEL_218;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_162;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_162;
              }
            }

            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
            }

LABEL_162:
            std::string::basic_string[abi:ne200100]<0>(&v132, BBUReturnAsString::BBUReturnStrings[v25]);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to perform second stage: ", &v132, &v133);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": ", &v133, &cf);
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

            v111 = std::string::append(&cf, p_p, size);
            v112 = *&v111->__r_.__value_.__l.__data_;
            v137.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
            *&v137.__r_.__value_.__l.__data_ = v112;
            v111->__r_.__value_.__l.__size_ = 0;
            v111->__r_.__value_.__r.__words[2] = 0;
            v111->__r_.__value_.__r.__words[0] = 0;
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("\n", &v137, &v138);
            v114 = capabilities::updater::intermittentFailureRetryCount(v113);
            if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
            {
              v118 = v114;
              std::string::__init_copy_ctor_external(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
              v114 = v118;
            }

            else
            {
              __dst = v138;
            }

            v140 = __PAIR64__(v114, v25);
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(a1, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_199:
                if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_200;
                }

                goto LABEL_206;
              }
            }

            else if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_199;
            }

            operator delete(v138.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_200:
              if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_201;
              }

              goto LABEL_207;
            }

LABEL_206:
            operator delete(v137.__r_.__value_.__l.__data_);
            if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_201:
              if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_202;
              }

              goto LABEL_208;
            }

LABEL_207:
            operator delete(cf.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_202:
              if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_69;
              }

LABEL_209:
              operator delete(v132.__r_.__value_.__l.__data_);
              goto LABEL_69;
            }

LABEL_208:
            operator delete(v133.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_209;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_135;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_135:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
              }
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&v138, "Miss images for saveImages\n");
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v138;
          }

          v140 = v18;
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
          }

          goto LABEL_69;
        }

        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x15Bu, "Assertion failure(fProgrammer && Null programmer?)", v125, v126, v127, v129);
LABEL_232:
      }

LABEL_230:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x1CBu, "Assertion failure(false && Unrecognized BBU stage.)", v122, v123, v124, v128);
      goto LABEL_232;
    }

    v59 = *(a1 + 56);
    BBUFeedback::handleComment(v59, "entering %s", "StageContext::PersonalizeStageFirst");
    v60 = *(v59 + 144);
    v61 = *(v59 + 152);
    v62 = *(v59 + 144);
    if (v61 == v62)
    {
      v63 = 0;
    }

    else
    {
      v63 = ((v61 - v62) << 7) - 1;
    }

    v64 = *(v59 + 176);
    v65 = v64 + *(v59 + 168);
    if (v63 == v65)
    {
      std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v59 + 136);
      v62 = *(v59 + 144);
      v64 = *(v59 + 176);
      v65 = *(v59 + 168) + v64;
    }

    *(*(v62 + ((v65 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v65 & 0x3FF)) = 2;
    *(v59 + 176) = v64 + 1;
    if (*(*(a1 + 96) + 88) != 3)
    {
      v66 = (*(*FirmwareDataSource + 80))(FirmwareDataSource);
      if (!v66)
      {
        if (capabilities::updater::shouldSkipRestoreForUnfused(v66))
        {
          BBUFeedback::handleComment(*(a1 + 56), "Detecting unfused BB and skip restore");
          v68 = *(a1 + 16);
          v67 = *(a1 + 24);
          v137.__r_.__value_.__r.__words[0] = v68;
          v137.__r_.__value_.__l.__size_ = v67;
          if (v67)
          {
            atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
          }

          __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
          __dst.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
          strcpy(&__dst, "unknown");
          memset(&v138, 170, sizeof(v138));
          (*(*v68 + 24))(&v138, v68);
          v69 = v138.__r_.__value_.__r.__words[0];
          v70 = v138.__r_.__value_.__r.__words[0] + 24 * v68[8];
          if (&__dst != v70)
          {
            v71 = *(v70 + 23);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v71 >= 0)
              {
                v93 = (v138.__r_.__value_.__r.__words[0] + 24 * v68[8]);
              }

              else
              {
                v93 = *v70;
              }

              if (v71 >= 0)
              {
                v94 = *(v70 + 23);
              }

              else
              {
                v94 = *(v70 + 8);
              }

              std::string::__assign_no_alias<false>(&__dst.__r_.__value_.__l.__data_, v93, v94);
            }

            else if ((*(v70 + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(&__dst, *v70, *(v70 + 8));
            }

            else
            {
              v72 = *v70;
              __dst.__r_.__value_.__r.__words[2] = *(v70 + 16);
              *&__dst.__r_.__value_.__l.__data_ = v72;
            }

            v69 = v138.__r_.__value_.__r.__words[0];
          }

          if (v69)
          {
            v95 = v138.__r_.__value_.__l.__size_;
            v96 = v69;
            if (v138.__r_.__value_.__l.__size_ != v69)
            {
              do
              {
                v97 = *(v95 - 1);
                v95 -= 3;
                if (v97 < 0)
                {
                  operator delete(*v95);
                }
              }

              while (v95 != v69);
              v96 = v138.__r_.__value_.__r.__words[0];
            }

            v138.__r_.__value_.__l.__size_ = v69;
            operator delete(v96);
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
            {
              goto LABEL_99;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
            {
              goto LABEL_99;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            boost::core::demangle(&v138, (0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL));
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v101 = &v138;
            }

            else
            {
              LOBYTE(v101) = v138.__r_.__value_.__s.__data_[0];
            }

            v131 = v68[8];
            _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v98, v99, v100, v101);
            if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v138.__r_.__value_.__l.__data_);
            }
          }

LABEL_99:
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventSkipPersonalize>(v137.__r_.__value_.__l.__data_, &cf, 1);
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
            {
LABEL_101:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                boost::core::demangle(&v138, (0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL));
                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v105 = &v138;
                }

                else
                {
                  LOBYTE(v105) = v138.__r_.__value_.__s.__data_[0];
                }

                _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v102, v103, v104, v105);
                if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v138.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
            {
              goto LABEL_101;
            }
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v106 = v137.__r_.__value_.__l.__size_;
          if (v137.__r_.__value_.__l.__size_ && !atomic_fetch_add((v137.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v106->__on_zero_shared)(v106);
            std::__shared_weak_count::__release_weak(v106);
          }

          goto LABEL_69;
        }
      }
    }

    v92 = BBUpdaterController::performFirstStageInternal(a1, 1, &v135, &__p);
    if (!v92)
    {
      goto LABEL_69;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_184;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_184:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __p;
    }

    v140 = v92;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_69;
  }

  if (a2 != 8)
  {
    if (a2 != 32)
    {
      goto LABEL_230;
    }

    v36 = *(a1 + 56);
    BBUFeedback::handleComment(v36, "entering %s", "StageContext::PersonalizeEUICC");
    v40 = *(v36 + 144);
    v41 = *(v36 + 152);
    v42 = *(v36 + 144);
    if (v41 == v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = ((v41 - v42) << 7) - 1;
    }

    v44 = *(v36 + 176);
    v45 = v44 + *(v36 + 168);
    if (v43 == v45)
    {
      std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v36 + 136);
      v42 = *(v36 + 144);
      v44 = *(v36 + 176);
      v45 = *(v36 + 168) + v44;
    }

    *(*(v42 + ((v45 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v45 & 0x3FF)) = 5;
    *(v36 + 176) = v44 + 1;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(19, 1, "BBUpdaterController", "", "perform eUICC update\n", v37, v38, v39, v130);
    }

LABEL_34:
    v46 = *(a1 + 40);
    cf.__r_.__value_.__r.__words[0] = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    v50 = eUICC::Run((a1 + 152), FirmwareDataSource, &cf.__r_.__value_.__l.__data_);
    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRelease(cf.__r_.__value_.__l.__data_);
    }

    if (!v50)
    {
      v51 = *(a1 + 40);
      __dst.__r_.__value_.__r.__words[0] = v51;
      if (v51)
      {
        CFRetain(v51);
      }

      v58 = eUICC::Done(&__dst);
      if (__dst.__r_.__value_.__r.__words[0])
      {
        CFRelease(__dst.__r_.__value_.__l.__data_);
      }

      if (v58)
      {
        BBUpdaterController::getShouldFuseProvision(a1, &v135, v52, v53, v54, v55, v56, v57);
        goto LABEL_69;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_155;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_155;
        }
      }

      if (gBBULogVerbosity > 5)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_156;
        }
      }

LABEL_155:
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_69;
      }

LABEL_156:
      if (gBBULogVerbosity >= 1)
      {
        _BBULog(19, 1, "BBUpdaterController", "", "eUICC is not done yet, waiting\n", v55, v56, v57, v130);
      }

      goto LABEL_69;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_141;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_141:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v137, BBUReturnAsString::BBUReturnStrings[v50]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed performing eUICC: ", &v137, &v138);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v138;
    }

    v140 = v50;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
    goto LABEL_120;
  }

  v73 = *(a1 + 56);
  BBUFeedback::handleComment(v73, "entering %s", "StageContext::PersonalizeBooted");
  v74 = *(v73 + 144);
  v75 = *(v73 + 152);
  v76 = *(v73 + 144);
  if (v75 == v76)
  {
    v77 = 0;
  }

  else
  {
    v77 = ((v75 - v76) << 7) - 1;
  }

  v78 = *(v73 + 176);
  v79 = v78 + *(v73 + 168);
  if (v77 == v79)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v73 + 136);
    v76 = *(v73 + 144);
    v78 = *(v73 + 176);
    v79 = *(v73 + 168) + v78;
  }

  *(*(v76 + ((v79 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v79 & 0x3FF)) = 4;
  *(v73 + 176) = v78 + 1;
  if (!(*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 48), 2, 1))
  {
    v33 = BBUpdaterController::bootupInternal(a1, &v135);
    if (!v33)
    {
      v33 = BBUpdaterController::performPingInternal(a1);
      if (!v33)
      {
        goto LABEL_67;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_174;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_174;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_174:
      std::string::basic_string[abi:ne200100]<0>(&v137, BBUReturnAsString::BBUReturnStrings[v33]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to ping baseband: ", &v137, &v138);
      v35 = capabilities::updater::intermittentFailureRetryCount(v115);
      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        __dst = v138;
        goto LABEL_220;
      }

      goto LABEL_219;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_149;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_149;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_149:
    std::string::basic_string[abi:ne200100]<0>(&v137, BBUReturnAsString::BBUReturnStrings[v33]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to bootup baseband: ", &v137, &v138);
    v35 = capabilities::updater::intermittentFailureRetryCount(v108);
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __dst = v138;
      goto LABEL_220;
    }

LABEL_219:
    v120 = v35;
    std::string::__init_copy_ctor_external(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
    v35 = v120;
    goto LABEL_220;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_69;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_69:
  BBUFeedback::exitStageContext(*(a1 + 56));
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5255C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a30)
  {
    (*(*a30 + 16))(a30);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUpdaterController::performFirstStageInternal(uint64_t a1, int a2, void *a3, std::string *a4)
{
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *a3;
    v10 = (*(**(v8 + 16) + 24))(*(v8 + 16));
    (*(*v9 + 200))(v9, v10);
    v11 = *a3;
    v12 = (*(**(*(a1 + 96) + 24) + 24))(*(*(a1 + 96) + 24));
    (*(*v11 + 208))(v11, v12);
  }

  v13 = (*(**a3 + 32))(*a3, a2 ^ 1u);
  if (!v13)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_26:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::__assign_external(a4, "Firmware data does not contain programmer\n", 0x2AuLL);
    result = 35;
    goto LABEL_21;
  }

  if (!*(a1 + 80))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x893u, "Assertion failure(fLoader && No valid BBULoader!)", v44, v45, v46, v48);
  }

  v17 = v13;
  if (*(*(a1 + 96) + 88) == 3 && ((*(**a3 + 48))() & 1) == 0 && (a2 & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 56), "Attempting to load an unpersonalized image on a fused radio\n");
    v18 = *(a1 + 56);
    v19 = (*(**a3 + 48))();
    BBUFeedback::handleComment(v18, "hasManifestSource() = %d, personalize = %d\n", v19, 0);
    result = 34;
    goto LABEL_21;
  }

  v50 = 0;
  value = 0;
  v21 = *(a1 + 40);
  if (v21 && CFDictionaryGetValueIfPresent(v21, @"EraseEFS", &value) && (v22 = value) != 0 && (v23 = CFGetTypeID(value), v23 == CFBooleanGetTypeID()) && (ctu::cf::assign(&v50, v22, v24), (v50 & 1) != 0) && BBUpdaterController::performFirstStageInternal(BOOL,std::unique_ptr<BBUUpdateSource> &,std::string &)::EFSErased != 1 || *(a1 + 362) == 1)
  {
    v25 = (*(**a3 + 176))();
    if (!v25)
    {
      BBUpdaterController::performFirstStageInternal(BOOL,std::unique_ptr<BBUUpdateSource> &,std::string &)::EFSErased = 1;
      *(a1 + 362) = 0;
      goto LABEL_18;
    }

    v39 = v25;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_42:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    v40 = "failed erasing baseband filesystem\n";
    v41 = a4;
    v42 = 35;
    goto LABEL_45;
  }

LABEL_18:
  result = (*(**(a1 + 80) + 40))(*(a1 + 80), a1 + 152, v17, a2 ^ 1u);
  if (!result)
  {
    v32 = (*(**(a1 + 80) + 48))(*(a1 + 80), a1 + 152, v17);
    if (!v32)
    {
      (*(**(a1 + 64) + 40))(*(a1 + 64), a1 + 152);
      result = 0;
      goto LABEL_21;
    }

    v39 = v32;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_37:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    v40 = "Failed starting loader.";
    v41 = a4;
    v42 = 23;
LABEL_45:
    std::string::__assign_external(v41, v40, v42);
    result = v39;
    goto LABEL_21;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v47 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v47;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_31:
      if (gBBULogVerbosity >= 6)
      {
        v38 = result;
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        result = v38;
      }
    }
  }

  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    a4->__r_.__value_.__l.__size_ = 22;
    a4 = a4->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a4->__r_.__value_.__s + 23) = 22;
  }

  strcpy(a4, "Failed loading loader.");
LABEL_21:
  v36 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v36)
  {
    v37 = result;
    (*(*v36 + 8))(v36);
    return v37;
  }

  return result;
}

uint64_t BBUpdaterController::performSecondStageInternal(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v65 = 0;
  v8 = (*(**a3 + 128))();
  memset(&__p, 0, sizeof(__p));
  v9 = *(*(a1 + 96) + 32);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 100, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x91Au, "Assertion failure(fPersonalizationParameters->getSerialNumber() && Invalid serial number)", v56, v57, v58, v59);
  }

  (*(*v9 + 24))(&value);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = value;
  v10 = (*(**a3 + 40))();
  v11 = *a3;
  v12 = *(*(a1 + 96) + 88);
  v13 = *(a1 + 40);
  if (v13 && (value.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL, CFDictionaryGetValueIfPresent(v13, @"apTicket", &value.__r_.__value_.__l.__data_)) && (v14 = CFGetTypeID(value.__r_.__value_.__l.__data_), v14 == CFDataGetTypeID()))
  {
    v15 = value.__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = 0;
  }

  v16 = (*(*v11 + 168))(v11, &__p, v10, v12 == 3, v15, *(a1 + 363));
  if (!v16)
  {
    v17 = *(a1 + 88);
    v18 = (*(**a3 + 72))();
    v19 = *(a1 + 260);
    LODWORD(v60) = 1;
    HIDWORD(v60) = BBUpdaterController::getNVRestoreSetting(*(a1 + 40), v20, v21, v22, v23, v24, v25, v26);
    v27 = (*(*v17 + 40))(v17, v10, 0, a2, v8, v18, v19, 1, 1, &v65, v60);
    v16 = v27;
    if (a2)
    {
      if (!v27)
      {
        if (v65 != 1)
        {
          goto LABEL_39;
        }

        v31 = *a3;
        (*(**(a1 + 88) + 112))(&value);
        (*(*v31 + 192))(v31, &value);
        v32 = value.__r_.__value_.__r.__words[0];
        if (value.__r_.__value_.__r.__words[0])
        {
          size = value.__r_.__value_.__l.__size_;
          v34 = value.__r_.__value_.__r.__words[0];
          if (value.__r_.__value_.__l.__size_ != value.__r_.__value_.__r.__words[0])
          {
            do
            {
              v35 = *(size - 1);
              size -= 3;
              if (v35 < 0)
              {
                operator delete(*size);
              }
            }

            while (size != v32);
            v34 = value.__r_.__value_.__r.__words[0];
          }

          value.__r_.__value_.__l.__size_ = v32;
          operator delete(v34);
        }

        v16 = (*(**a3 + 136))();
        if (!v16)
        {
LABEL_39:
          v16 = (*(**(a1 + 88) + 24))(*(a1 + 88));
          if (!v16)
          {
            (*(**(a1 + 64) + 40))(*(a1 + 64), a1 + 152);
            v16 = 0;
            goto LABEL_41;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_51:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
              }
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&v62, BBUReturnAsString::BBUReturnStrings[v16]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed disconnecting programmer ", &v62, &value);
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          *a4 = value;
          *(&value.__r_.__value_.__s + 23) = 0;
          value.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          if (*(a4 + 23) >= 0)
          {
            LOBYTE(v50) = a4;
          }

          else
          {
            v50 = *a4;
          }

          goto LABEL_62;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_79;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_79;
          }
        }

        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }

LABEL_79:
        (*(**(a1 + 88) + 24))(*(a1 + 88));
        std::string::basic_string[abi:ne200100]<0>(&v61, BBUReturnAsString::BBUReturnStrings[v16]);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed sending images ", &v61, &v62);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("\n", &v62, &value);
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = value;
        *(&value.__r_.__value_.__s + 23) = 0;
        value.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_83:
            if (gBBULogMaskGet(void)::once == -1)
            {
LABEL_84:
              if (*(a4 + 23) >= 0)
              {
                LOBYTE(v54) = a4;
              }

              else
              {
                v54 = *a4;
              }

              _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s", v51, v52, v53, v54);
LABEL_41:
              v48 = *(a1 + 88);
              *(a1 + 88) = 0;
              if (v48)
              {
                (*(*v48 + 8))(v48);
              }

              goto LABEL_43;
            }

LABEL_90:
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            goto LABEL_84;
          }
        }

        else if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        operator delete(v61.__r_.__value_.__l.__data_);
        if (gBBULogMaskGet(void)::once == -1)
        {
          goto LABEL_84;
        }

        goto LABEL_90;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_67;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_67:
      (*(**(a1 + 88) + 24))(*(a1 + 88));
      std::string::basic_string[abi:ne200100]<0>(&v62, BBUReturnAsString::BBUReturnStrings[v16]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed personalizing in second stage ", &v62, &value);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = value;
      *(&value.__r_.__value_.__s + 23) = 0;
      value.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        goto LABEL_72;
      }

      goto LABEL_92;
    }

    if (!v27)
    {
      goto LABEL_39;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_23:
    (*(**(a1 + 88) + 24))(*(a1 + 88));
    if (v16 == 65)
    {
      v36 = "Wrong firmware, doesn’t match hardware ID ";
    }

    else
    {
      v36 = "Failed sending images ";
    }

    std::string::__assign_external(a4, v36);
    std::string::basic_string[abi:ne200100]<0>(&value, BBUReturnAsString::BBUReturnStrings[v16]);
    if ((value.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_value = &value;
    }

    else
    {
      p_value = value.__r_.__value_.__r.__words[0];
    }

    if ((value.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(value.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = value.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, p_value, v38);
    if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value.__r_.__value_.__l.__data_);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_72;
    }

LABEL_92:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
LABEL_72:
    if (*(a4 + 23) >= 0)
    {
      LOBYTE(v50) = a4;
    }

    else
    {
      v50 = *a4;
    }

LABEL_62:
    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s", v39, v40, v41, v50);
    goto LABEL_41;
  }

LABEL_43:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return v16;
}

void sub_1E52570AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    if (!v35)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v35)
  {
    goto LABEL_7;
  }

  (*(*v35 + 8))(v35);
  _Unwind_Resume(exception_object);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v29 = v4;
  v30 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v4 + 24))(__p, v4);
  v5 = __p[0];
  v6 = (__p[0] + 24 * v4[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v28) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * v4[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v28 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    v25 = v4[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v15, v16, v17);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  v18 = v29;
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventRetry>(v29) && boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>(v18, a2))
  {
    v19 = (_MergedGlobals_1[*(v18 + 32) + 240])(v18, 0);
    if (!((_MergedGlobals_1[*(v18 + 36) + 240])(v18, 1) | v19))
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(v18, v18, *(v18 + 32));
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(v18, v18, *(v18 + 36));
    }

    *(v18 + 100) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v18);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_45;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v20, v21, v22, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_45:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }

  v24 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void sub_1E525758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t BBUpdaterController::bootupInternal(BBULoader **a1, uint64_t *a2)
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  InfoFirstStageInternal = (*(**a2 + 80))();
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_12:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v4, v5, v6, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Miss images for bootupInternal\n");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = __p;
    }

    v16 = InfoFirstStageInternal;
    v17 = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v15);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_7;
  }

  BBUFeedback::handleBeginPhase(a1[7], "bootup");
  InfoFirstStageInternal = BBUpdaterController::queryInfoFirstStageInternal(a1, v8);
  BBUFeedback::handleComment(a1[7], "queryInfoFirstStageInternal ret status is %d", InfoFirstStageInternal);
  if (!InfoFirstStageInternal)
  {
    InfoFirstStageInternal = BBUpdaterController::pushImagesInternal(a1, a2, 0, v18);
    if (v19 >= 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = v18[0];
    }

    BBUFeedback::handleComment(a1[7], "pushImagesInternal ret status is %d: %s\n", InfoFirstStageInternal, v12);
    goto LABEL_7;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_7:
  (*(*a1[7] + 16))(a1[7], InfoFirstStageInternal);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return InfoFirstStageInternal;
}

void sub_1E5257954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUpdaterController::performPingInternal(CFDictionaryRef *this)
{
  value[0] = 0;
  v2 = capabilities::updater::pingDelay(this);
  v3 = *(this + 89);
  if (v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  if (CFDictionaryGetValueIfPresent(this[5], @"waitForReadyDelayMilliseconds", value))
  {
    block = 0;
    v5 = value[0];
    if (value[0])
    {
      v6 = CFGetTypeID(value[0]);
      if (v6 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&block, v5, v7);
        if (block > 0)
        {
          v4 = block;
        }
      }
    }
  }

  v3 = v4;
  if (v4 >= 1)
  {
LABEL_8:
    BBUFeedback::handleComment(this[7], "Waiting %llu milliseconds before first ping", v3);
    v8 = 1000000 * v3;
    if (v3 >= 0x8637BD057A0)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    value[0] = v8;
    std::this_thread::sleep_for (value);
  }

  TransportNoEvents = BBUpdaterController::createTransportNoEvents(this, 0, 8);
  if (TransportNoEvents)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_17:
        if (gBBULogVerbosity >= 6)
        {
          v21 = TransportNoEvents;
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          TransportNoEvents = v21;
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            TransportNoEvents = v21;
          }
        }
      }
    }

    else
    {
      v29 = TransportNoEvents;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      TransportNoEvents = v29;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    v22 = TransportNoEvents;
    std::string::basic_string[abi:ne200100]<0>(value, BBUReturnAsString::BBUReturnStrings[TransportNoEvents]);
    if (v34 >= 0)
    {
      v26 = value;
    }

    else
    {
      LOBYTE(v26) = value[0];
    }

    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "Fail to create transport %s\n", v23, v24, v25, v26);
    if (v34 < 0)
    {
      operator delete(value[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v27 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(value);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, value);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](value);
      v27 = off_1ED944120;
    }

    block = v27;
    v36 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    std::string::basic_string[abi:ne200100]<0>(value, "Fail to create transport\n");
    goto LABEL_40;
  }

  v13 = (*(*this[9] + 24))(this[9], this + 152);
  if (!v13)
  {
    v31 = 0;
    v17 = this[6];
    TelephonyBasebandGetReset();
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v34 = 17;
    *value = *"kBBUReturnSuccess";
    v33 = str_5[16];
    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "BB ping return status: %s\n", v18, v19, v20, value);
    if (v34 < 0)
    {
      operator delete(value[0]);
    }

    return 0;
  }

  v22 = v13;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_32:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_32;
    }
  }

  _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "Timeout on waiting for BB init status\n", v14, v15, v16, v30);
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v27 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(value);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, value);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](value);
    v27 = off_1ED944120;
  }

  block = v27;
  v36 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(value, "Timeout on waiting for BB init status\n");
LABEL_40:
  BBUError::addError(v27, value, v22);
  if (v34 < 0)
  {
    operator delete(value[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
  return v22;
}

void BBUpdaterController::performBootedStageInternal(uint64_t a1, uint64_t *a2)
{
  if (!BBUpdaterController::shouldPerformEUICC(a1))
  {
    goto LABEL_29;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_6;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(19, 1, "BBUpdaterController", "", "Running eUICC\n", v7, v8, v9, v43);
  }

LABEL_6:
  v10 = *a2;
  v11 = *(a1 + 40);
  v51 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v15 = eUICC::Run((a1 + 152), v10, &v51);
  if (v51)
  {
    CFRelease(v51);
  }

  if (v15)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_81;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_81:
    std::string::basic_string[abi:ne200100]<0>(&v47, BBUReturnAsString::BBUReturnStrings[v15]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed running eUICC: ", &v47, &v52);
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v52;
    }

    v49 = v15;
    v50 = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_86:
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_90;
      }
    }

    else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    operator delete(v52.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_90:
    operator delete(v47.__r_.__value_.__l.__data_);
    return;
  }

  v16 = *(a1 + 40);
  cf = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  if (eUICC::Done(&cf))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_29;
  }

  v17 = *(*(a1 + 96) + 88);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17 != 3)
  {
LABEL_29:
    ShouldFuseProvision = BBUpdaterController::getShouldFuseProvision(a1, a2, v4, v5, v6, v7, v8, v9);
    if (!ShouldFuseProvision)
    {
      return;
    }

    v42 = ShouldFuseProvision;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_71:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }
        }
      }
    }

    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "getShouldFuseProv %d\n", v25, v26, v27, v42);
    return;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_23;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(19, 1, "BBUpdaterController", "", "eUICC is not done yet\n", v7, v8, v9, v43);
  }

LABEL_23:
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v47.__r_.__value_.__r.__words[0] = v19;
  v47.__r_.__value_.__l.__size_ = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  __p.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
  strcpy(&__p, "unknown");
  memset(&v52, 170, sizeof(v52));
  (*(*v19 + 24))(&v52, v19);
  v20 = v52.__r_.__value_.__r.__words[0];
  v21 = v52.__r_.__value_.__r.__words[0] + 24 * v19[8];
  if (&__p != v21)
  {
    v22 = *(v21 + 23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v22 >= 0)
      {
        v28 = (v52.__r_.__value_.__r.__words[0] + 24 * v19[8]);
      }

      else
      {
        v28 = *v21;
      }

      if (v22 >= 0)
      {
        v29 = *(v21 + 23);
      }

      else
      {
        v29 = *(v21 + 8);
      }

      std::string::__assign_no_alias<false>(&__p.__r_.__value_.__l.__data_, v28, v29);
    }

    else if ((*(v21 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&__p, *v21, *(v21 + 8));
    }

    else
    {
      v23 = *v21;
      __p.__r_.__value_.__r.__words[2] = *(v21 + 16);
      *&__p.__r_.__value_.__l.__data_ = v23;
    }

    v20 = v52.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    size = v52.__r_.__value_.__l.__size_;
    v31 = v20;
    if (v52.__r_.__value_.__l.__size_ != v20)
    {
      do
      {
        v32 = *(size - 1);
        size -= 3;
        if (v32 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v20);
      v31 = v52.__r_.__value_.__r.__words[0];
    }

    v52.__r_.__value_.__l.__size_ = v20;
    operator delete(v31);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_56;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(&v52, (0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL));
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v52;
    }

    else
    {
      LOBYTE(v36) = v52.__r_.__value_.__s.__data_[0];
    }

    v44 = v19[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v33, v34, v35, v36);
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }
  }

LABEL_56:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventEUICC>(v47.__r_.__value_.__l.__data_, &v45, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
    {
LABEL_58:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        boost::core::demangle(&v52, (0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL));
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v52;
        }

        else
        {
          LOBYTE(v40) = v52.__r_.__value_.__s.__data_[0];
        }

        _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v37, v38, v39, v40);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
    {
      goto LABEL_58;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v41 = v47.__r_.__value_.__l.__size_;
  if (v47.__r_.__value_.__l.__size_ && !atomic_fetch_add((v47.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }
}

void sub_1E52589F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
    if ((a19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUpdaterController::pushImagesInternal(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (capabilities::radio::supportsBasebandStateController(a1))
  {
    v8 = *(a1 + 48);
    TelephonyBasebandSetBasebandState();
  }

  StageInternal = BBUpdaterController::performFirstStageInternal(a1, 0, a2, a4);
  if (StageInternal)
  {
    v32 = StageInternal;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_30;
    }

    goto LABEL_45;
  }

  if (capabilities::updater::supportsMHIBootLogger(StageInternal))
  {
    v13 = *(a1 + 340);
    if (v13)
    {
      BBUBootLogger::create(v13, *(a1 + 56), &__p);
      v14 = *&__p.__r_.__value_.__l.__data_;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v15 = *(a1 + 144);
      *(a1 + 136) = v14;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v17 = *(a1 + 136);
      if (v17)
      {
        BBUBootLogger::openTransport(v17);
      }
    }
  }

  StageInternal = BBUpdaterController::queryInfoSecondStageInternal(a1, 0, a2);
  if (StageInternal)
  {
    v32 = StageInternal;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_30;
    }

LABEL_45:
    StageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    goto LABEL_30;
  }

  if (!*(a1 + 88))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0xAA0u, "Assertion failure(fProgrammer && No valid BBU Programmer!)", v40, v41, v42, v44);
  }

  if (!a3 || !capabilities::updater::shouldSkipRestoreForUnfused(StageInternal))
  {
    goto LABEL_27;
  }

  v18 = *a2;
  (*(**(a1 + 88) + 112))(&__p);
  (*(*v18 + 192))(v18, &__p);
  v19 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v20 = __p.__r_.__value_.__l.__size_;
    v21 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v19;
    operator delete(v21);
  }

  v23 = (*(**a2 + 136))();
  if (!v23)
  {
LABEL_27:
    v27 = *(a1 + 96);
    if (v27)
    {
      v28 = *a2;
      v29 = (*(**(v27 + 16) + 24))(*(v27 + 16));
      (*(*v28 + 200))(v28, v29);
      v30 = *a2;
      v31 = (*(**(*(a1 + 96) + 24) + 24))(*(*(a1 + 96) + 24));
      (*(*v30 + 208))(v30, v31);
    }

    StageInternal = BBUpdaterController::performSecondStageInternal(a1, 0, a2, a4);
    v32 = 0;
    if (!StageInternal)
    {
      goto LABEL_30;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v43 = StageInternal;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      StageInternal = v43;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_66;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      v32 = StageInternal;
      goto LABEL_45;
    }

LABEL_66:
    v32 = StageInternal;
    goto LABEL_30;
  }

  v32 = v23;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_48:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }
    }
  }

  (*(**(a1 + 88) + 24))(*(a1 + 88));
  std::string::basic_string[abi:ne200100]<0>(&v45, BBUReturnAsString::BBUReturnStrings[v32]);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed saving images ", &v45, &__p);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  if (*(a4 + 23) >= 0)
  {
    LOBYTE(v38) = a4;
  }

  else
  {
    v38 = *a4;
  }

  StageInternal = _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s", v35, v36, v37, v38);
LABEL_30:
  if (capabilities::radio::supportsBasebandStateController(StageInternal))
  {
    v33 = *(a1 + 48);
    TelephonyBasebandSetBasebandState();
  }

  return v32;
}

void sub_1E52591E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::bootup(BBUpdaterController *this)
{
  v2 = *(this + 7);
  BBUFeedback::handleComment(v2, "entering %s", "StageContext::Boot");
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = *(v2 + 176);
  v8 = v7 + *(v2 + 168);
  if (v6 == v8)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v2 + 136);
    v5 = *(v2 + 144);
    v7 = *(v2 + 176);
    v8 = *(v2 + 168) + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = 1;
  *(v2 + 176) = v7 + 1;
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  v23 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_18:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to get update source for bootup\n");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&value, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      value = __p;
    }

    v22 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &value);
    if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_13;
  }

  v13 = BBUpdaterController::bootupInternal(this, &v23);
  if (v13)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }
  }

  else
  {
    if (!capabilities::updater::shouldWaitForReadyAfterBoot(v13) || (value.__r_.__value_.__r.__words[0] = 0, !CFDictionaryGetValueIfPresent(*(this + 5), @"waitForReady", &value.__r_.__value_.__l.__data_)) || !CFBooleanGetValue(value.__r_.__value_.__l.__data_) || !BBUpdaterController::performPingInternal(this))
    {
      CFDictionarySetValue(*(this + 4), @"done", *MEMORY[0x1E695E4D0]);
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(this + 2), *(this + 3), &value);
      goto LABEL_13;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }
  }

LABEL_13:
  BBUFeedback::exitStageContext(*(this + 7));
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }
}

void sub_1E52595E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(int *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*a1 + 24))(__p, a1);
  v5 = __p[0];
  v6 = (__p[0] + 24 * a1[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v26) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * a1[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v26 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FA11 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    v23 = a1[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v15, v16, v17);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventContinue>(v27, a3, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FA11 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v21 = __p;
    }

    else
    {
      LOBYTE(v21) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v18, v19, v20, v21);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  v22 = v28;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_1E52599D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::string>::~vector[abi:ne200100](&a12);
  if ((a23 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
  _Unwind_Resume(a1);
}

void BBUpdaterController::checkManifest(BBUpdaterController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUpdaterController", "", "Perform manifest check\n", a6, a7, a8, v64);
  }

LABEL_5:
  v9 = *(this + 7);
  BBUFeedback::handleComment(v9, "entering %s", "StageContext::CheckManifest");
  v10 = *(v9 + 144);
  v11 = *(v9 + 152);
  v12 = *(v9 + 144);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = ((v11 - v12) << 7) - 1;
  }

  v14 = *(v9 + 176);
  v15 = v14 + *(v9 + 168);
  if (v13 == v15)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v9 + 136);
    v12 = *(v9 + 144);
    v14 = *(v9 + 176);
    v15 = *(v9 + 168) + v14;
  }

  *(*(v12 + ((v15 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v15 & 0x3FF)) = 7;
  *(v9 + 176) = v14 + 1;
  *(this + 363) = 1;
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  v66 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_72:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v68, "Fail to get update source for checkManifest\n");
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v71, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
    }

    else
    {
      *v71 = v68;
    }

    *&v71[24] = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, v71);
    if ((v71[23] & 0x80000000) != 0)
    {
      operator delete(*v71);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    goto LABEL_60;
  }

  if (!(*(**(this + 9) + 40))(*(this + 9), *(this + 6), 2, 1))
  {
    *(this + 360) = 1;
    LODWORD(v26) = BBUpdaterController::bootupInternal(this, &v66);
    if (!v26)
    {
      LODWORD(v26) = BBUpdaterController::performPingInternal(this);
      if (!v26)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_19;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(13, 0, "BBUpdaterController", "", "Perform internal manifest check\n", v27, v28, v29, v65);
        }

LABEL_19:
        v78 = 0xAAAAAAAAAAAAAAAALL;
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v77[7] = v30;
        v77[8] = v30;
        v77[5] = v30;
        v77[6] = v30;
        v77[3] = v30;
        v77[4] = v30;
        v77[1] = v30;
        v77[2] = v30;
        v76 = v30;
        v77[0] = v30;
        *__p = v30;
        v75 = v30;
        v72 = v30;
        v73 = v30;
        *v71 = v30;
        *&v71[16] = v30;
        std::ostringstream::basic_ostringstream[abi:ne200100](v71);
        v70 = 0;
        v31 = (*(**(this + 9) + 96))(*(this + 9), this + 152, *(this + 12), &v70, this + 240, 0);
        LODWORD(v26) = v31;
        if (!v31)
        {
          v35 = *(this + 12);
          v37 = v35[8];
          v36 = v35[9];
          v38 = v35[10];
          if (v36)
          {
            v31 = (*(*v36 + 24))(v36);
            v39 = v31;
            if (v37)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v39 = 0xFFFFFFFFLL;
            if (v37)
            {
LABEL_22:
              v31 = (*(*v37 + 24))(v37);
              v40 = v31;
              if (v38)
              {
                goto LABEL_23;
              }

              goto LABEL_27;
            }
          }

          v40 = 0xFFFFFFFFLL;
          if (v38)
          {
LABEL_23:
            v31 = (*(*v38 + 24))(v38);
            v26 = v31;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_28;
          }

LABEL_27:
          v26 = 0xFFFFFFFFLL;
          if (!v37)
          {
            goto LABEL_34;
          }

LABEL_28:
          if (!v36 || v39 || v40)
          {
LABEL_34:
            v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Detected non-zero cal/prov/fac manifests status  [CMStatus=", 59);
            v42 = MEMORY[0x1E69270E0](v41, v39);
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " ,PMStatus=", 11);
            v44 = MEMORY[0x1E69270E0](v43, v40);
            v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", FCMStatus=", 12);
            v46 = MEMORY[0x1E69270E0](v45, v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " ]", 2);
            memset(&__dst, 170, sizeof(__dst));
            if ((BYTE8(v76) & 0x10) != 0)
            {
              v49 = v76;
              if (v76 < *(&v73 + 1))
              {
                *&v76 = *(&v73 + 1);
                v49 = *(&v73 + 1);
              }

              v50 = v73;
              v47 = v49 - v73;
              if ((v49 - v73) >= 0x7FFFFFFFFFFFFFF8)
              {
                goto LABEL_66;
              }
            }

            else
            {
              if ((BYTE8(v76) & 8) == 0)
              {
                v47 = 0;
                *(&__dst.__r_.__value_.__s + 23) = 0;
                p_dst = &__dst;
                goto LABEL_48;
              }

              v50 = *&v71[24];
              v47 = *(&v72 + 1) - *&v71[24];
              if (*(&v72 + 1) - *&v71[24] >= 0x7FFFFFFFFFFFFFF8uLL)
              {
LABEL_66:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v47 >= 0x17)
            {
              if ((v47 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v47 | 7) + 1;
              }

              p_dst = operator new(v51);
              __dst.__r_.__value_.__l.__size_ = v47;
              __dst.__r_.__value_.__r.__words[2] = v51 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v47;
              p_dst = &__dst;
              if (!v47)
              {
LABEL_48:
                p_dst->__r_.__value_.__s.__data_[v47] = 0;
                v52 = &__dst;
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v52 = __dst.__r_.__value_.__r.__words[0];
                }

                BBUFeedback::handleComment(*(this + 7), "%s", v52);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v68, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                }

                else
                {
                  v68 = __dst;
                }

                v69 = 38;
                BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v68);
                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v68.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_55;
                  }
                }

                else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_55:
                  LODWORD(v26) = 38;
                  goto LABEL_56;
                }

                operator delete(__dst.__r_.__value_.__l.__data_);
                goto LABEL_55;
              }
            }

            memmove(p_dst, v50, v47);
            goto LABEL_48;
          }

          if (!v38 || v26)
          {
            if (capabilities::updater::supportsFATPCalibrationManifestStatus(v31))
            {
              goto LABEL_34;
            }

            LODWORD(v26) = 0;
          }

LABEL_56:
          *v71 = *MEMORY[0x1E69E54E8];
          *&v71[*(*v71 - 24)] = *(MEMORY[0x1E69E54E8] + 24);
          *&v71[8] = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v75) < 0)
          {
            operator delete(__p[1]);
          }

          *&v71[8] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v71[16]);
          std::ostream::~ostream();
          MEMORY[0x1E69273B0](v77);
          if (!v26)
          {
            (*(**(this + 8) + 40))(*(this + 8), this + 152);
            CFDictionarySetValue(*(this + 4), @"done", *MEMORY[0x1E695E4D0]);
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(this + 2), *(this + 3), v71);
            goto LABEL_60;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_105;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_105;
            }
          }

          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          }

LABEL_105:
          std::string::basic_string[abi:ne200100]<0>(&__dst, BBUReturnAsString::BBUReturnStrings[v26]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to check manifest in manifest check: ", &__dst, &v68);
          v57 = capabilities::updater::manifestCheckRetryCount(v62);
          if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            *v71 = v68;
            goto LABEL_120;
          }

LABEL_119:
          v63 = v57;
          std::string::__init_copy_ctor_external(v71, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
          v57 = v63;
LABEL_120:
          *&v71[24] = __PAIR64__(v57, v26);
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(this, v71);
          if ((v71[23] & 0x80000000) != 0)
          {
            operator delete(*v71);
            if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_122:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_60;
              }

LABEL_126:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_60;
            }
          }

          else if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_122;
          }

          operator delete(v68.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_126;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_97;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_97:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
            }
          }
        }

        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "getProvisioningStatus returns: ", 31);
        v60 = strlen(BBUReturnAsString::BBUReturnStrings[v26]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, BBUReturnAsString::BBUReturnStrings[v26], v60);
        std::stringbuf::str[abi:ne200100](&__dst, &v71[8]);
        v61 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v68, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v68 = __dst;
        }

        v69 = v26;
        BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v68);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (v61 < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_56;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_91;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_91:
      std::string::basic_string[abi:ne200100]<0>(&__dst, BBUReturnAsString::BBUReturnStrings[v26]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to ping in manifest check: ", &__dst, &v68);
      v57 = capabilities::updater::manifestCheckRetryCount(v58);
      if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *v71 = v68;
        goto LABEL_120;
      }

      goto LABEL_119;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_84;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_84:
    std::string::basic_string[abi:ne200100]<0>(&__dst, BBUReturnAsString::BBUReturnStrings[v26]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to bootup in manifest check: ", &__dst, &v68);
    v57 = capabilities::updater::manifestCheckRetryCount(v56);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *v71 = v68;
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_60;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_60:
  BBUFeedback::exitStageContext(*(this + 7));
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }
}

void sub_1E525A730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  operator delete(v35);
  std::ostringstream::~ostringstream(&a29);
  (*(*v34 + 16))(v34);
  _Unwind_Resume(a1);
}

void BBUpdaterController::finalize(BBUpdaterController *this)
{
  v75 = *MEMORY[0x1E69E9840];
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_115;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_115;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v3, v4, v5, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_115:
    std::string::basic_string[abi:ne200100]<0>(&__dst, "Fail to get update source data for finalize\n");
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      value[0] = __dst;
    }

    value[1].__r_.__value_.__r.__words[0] = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
    if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value[0].__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_104;
  }

  v6 = FirmwareDataSource;
  BBUFeedback::handleBeginPhase(*(this + 7), "Final stage");
  v72 = 0;
  v14 = (*(**(this + 9) + 96))(*(this + 9), this + 152, *(this + 12), &v72, this + 240, 0);
  v15 = *(this + 5);
  if (v15)
  {
    v16 = CFDictionaryGetValue(v15, @"BypassManifestStatusCheck");
    if (v16)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v16))
      {
        if (CFBooleanGetValue(v16))
        {
          BBUFeedback::handleComment(*(this + 7), "Bypass manifest status check has been specified. Returning success");
          goto LABEL_15;
        }
      }
    }
  }

  if (!v14)
  {
    if (v72)
    {
      v18 = *(this + 12);
      v19 = *(v18 + 64);
      if (v19)
      {
        v20 = (*(*v19 + 24))(v19);
        if (*(*(this + 12) + 88) == 3 && v20 != 0)
        {
LABEL_25:
          std::to_string(&__dst, v20);
          v30 = std::string::insert(&__dst, 0, "Detected non-zero prov manifest status: ", 0x28uLL);
          v32 = v30->__r_.__value_.__r.__words[0];
          size = v30->__r_.__value_.__l.__size_;
          LODWORD(cf.__r_.__value_.__l.__data_) = v30->__r_.__value_.__r.__words[2];
          *(cf.__r_.__value_.__r.__words + 3) = *(&v30->__r_.__value_.__r.__words[2] + 3);
          v33 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if (v33 < 0)
          {
            std::string::__init_copy_ctor_external(value, v32, size);
          }

          else
          {
            value[0].__r_.__value_.__r.__words[0] = v32;
            value[0].__r_.__value_.__l.__size_ = size;
            LODWORD(value[0].__r_.__value_.__r.__words[2]) = cf.__r_.__value_.__l.__data_;
            *(&value[0].__r_.__value_.__r.__words[2] + 3) = *(cf.__r_.__value_.__r.__words + 3);
            *(&value[0].__r_.__value_.__s + 23) = v33;
          }

          value[1].__r_.__value_.__r.__words[0] = 27;
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
          if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(value[0].__r_.__value_.__l.__data_);
            if ((v33 & 0x80000000) == 0)
            {
LABEL_43:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_44:
                v14 = 27;
                goto LABEL_45;
              }

LABEL_64:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_44;
            }
          }

          else if ((v33 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          operator delete(v32);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_64;
        }
      }

      else
      {
        v20 = -1;
        if (*(v18 + 88) == 3)
        {
          goto LABEL_25;
        }
      }

LABEL_15:
      v22 = *(this + 9);
      NVRestoreSetting = BBUpdaterController::getNVRestoreSetting(*(this + 5), v7, v8, v9, v10, v11, v12, v13);
      __dst.__r_.__value_.__s.__data_[0] = -1;
      v24 = *(this + 5);
      if (!v24)
      {
        v28 = -1;
        goto LABEL_35;
      }

      value[0].__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      if (CFDictionaryGetValueIfPresent(v24, @"IMEISwVersion", &value[0].__r_.__value_.__l.__data_) && (v25 = value[0].__r_.__value_.__r.__words[0]) != 0 && (v26 = CFGetTypeID(value[0].__r_.__value_.__l.__data_), v26 == CFNumberGetTypeID()))
      {
        if (ctu::cf::assign(&__dst, v25, v27))
        {
          v28 = __dst.__r_.__value_.__s.__data_[0];
        }

        else
        {
          v28 = -1;
        }

        v29 = *(this + 5);
        if (!v29)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v28 = -1;
        v29 = *(this + 5);
        if (!v29)
        {
          goto LABEL_35;
        }
      }

      cf.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      if (CFDictionaryGetValueIfPresent(v29, @"NVSerialNumber", &cf.__r_.__value_.__l.__data_))
      {
        v34 = CFGetTypeID(cf.__r_.__value_.__l.__data_);
        if (v34 == CFStringGetTypeID())
        {
          memset(value, 170, 0x400uLL);
          CFStringGetCString(cf.__r_.__value_.__l.__data_, value, 1024, 0x8000100u);
          v35 = strlen(value);
          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v36 = v35;
          if (v35 >= 0x17)
          {
            if ((v35 | 7) == 0x17)
            {
              v68 = 25;
            }

            else
            {
              v68 = (v35 | 7) + 1;
            }

            p_dst = operator new(v68);
            __dst.__r_.__value_.__l.__size_ = v36;
            __dst.__r_.__value_.__r.__words[2] = v68 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v35;
            p_dst = &__dst;
            if (!v35)
            {
              goto LABEL_110;
            }
          }

          memcpy(p_dst, value, v36);
LABEL_110:
          *(p_dst + v36) = 0;
LABEL_36:
          v14 = (*(*v22 + 48))(v22, this + 152, 8, NVRestoreSetting, v28, &__dst);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (!v14)
          {
            (*(**(this + 8) + 40))(*(this + 8), this + 152);
            v14 = 0;
            goto LABEL_49;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_132;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_132;
            }
          }

          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          }

LABEL_132:
          std::string::basic_string[abi:ne200100]<0>(&cf, BBUReturnAsString::BBUReturnStrings[v14]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed to finalize: ", &cf, &__dst);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            value[0] = __dst;
          }

          value[1].__r_.__value_.__r.__words[0] = v14;
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
          if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(value[0].__r_.__value_.__l.__data_);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_165:
              if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_49;
              }

LABEL_169:
              operator delete(cf.__r_.__value_.__l.__data_);
              goto LABEL_49;
            }
          }

          else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_165;
          }

          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_169;
        }
      }

LABEL_35:
      *(&__dst.__r_.__value_.__s + 23) = 0;
      __dst.__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_36;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_125:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    BBUFeedback::handleComment(*(this + 7), "Key alignment is required");
    v14 = 41;
    goto LABEL_45;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_121;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_121;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_121:
  std::to_string(&cf, v14);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to getProvisioningStatus", &cf, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    value[0] = __dst;
  }

  value[1].__r_.__value_.__r.__words[0] = v14;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
  if ((SHIBYTE(value[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

LABEL_160:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

  operator delete(value[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_160;
  }

LABEL_157:
  if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_161:
  operator delete(cf.__r_.__value_.__l.__data_);
LABEL_45:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_49;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_49:
  (*(**(this + 7) + 16))(*(this + 7), v14);
  if (v14 == 41)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_54;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUpdaterController", "", "re-personalize\n", v44, v45, v46, v69);
    }

LABEL_54:
    v48 = *(this + 2);
    v47 = *(this + 3);
    cf.__r_.__value_.__r.__words[0] = v48;
    cf.__r_.__value_.__l.__size_ = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    value[0].__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    value[0].__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
    strcpy(value, "unknown");
    memset(&__dst, 170, sizeof(__dst));
    (*(*v48 + 24))(&__dst, v48);
    v49 = __dst.__r_.__value_.__r.__words[0];
    v50 = __dst.__r_.__value_.__r.__words[0] + 24 * v48[8];
    if (value != v50)
    {
      v51 = *(v50 + 23);
      if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
      {
        if (v51 >= 0)
        {
          v53 = (__dst.__r_.__value_.__r.__words[0] + 24 * v48[8]);
        }

        else
        {
          v53 = *v50;
        }

        if (v51 >= 0)
        {
          v54 = *(v50 + 23);
        }

        else
        {
          v54 = *(v50 + 8);
        }

        std::string::__assign_no_alias<false>(&value[0].__r_.__value_.__l.__data_, v53, v54);
      }

      else if ((*(v50 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(value, *v50, *(v50 + 8));
      }

      else
      {
        v52 = *v50;
        value[0].__r_.__value_.__r.__words[2] = *(v50 + 16);
        *&value[0].__r_.__value_.__l.__data_ = v52;
      }

      v49 = __dst.__r_.__value_.__r.__words[0];
    }

    if (v49)
    {
      v55 = __dst.__r_.__value_.__l.__size_;
      v56 = v49;
      if (__dst.__r_.__value_.__l.__size_ != v49)
      {
        do
        {
          v57 = *(v55 - 1);
          v55 -= 3;
          if (v57 < 0)
          {
            operator delete(*v55);
          }
        }

        while (v55 != v49);
        v56 = __dst.__r_.__value_.__r.__words[0];
      }

      __dst.__r_.__value_.__l.__size_ = v49;
      operator delete(v56);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
      {
        goto LABEL_90;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      boost::core::demangle(&__dst, (0x80000001E538FB24 & 0x7FFFFFFFFFFFFFFFLL));
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &__dst;
      }

      else
      {
        LOBYTE(v61) = __dst.__r_.__value_.__s.__data_[0];
      }

      v70 = v48[8];
      _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v58, v59, v60, v61);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

LABEL_90:
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRepersonalize>(cf.__r_.__value_.__l.__data_, &v72, 1);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_92:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          boost::core::demangle(&__dst, (0x80000001E538FB24 & 0x7FFFFFFFFFFFFFFFLL));
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = &__dst;
          }

          else
          {
            LOBYTE(v65) = __dst.__r_.__value_.__s.__data_[0];
          }

          _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v62, v63, v64, v65);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_92;
      }
    }

    if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value[0].__r_.__value_.__l.__data_);
    }

    v66 = cf.__r_.__value_.__l.__size_;
    if (cf.__r_.__value_.__l.__size_ && !atomic_fetch_add((cf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66);
      std::__shared_weak_count::__release_weak(v66);
    }

    goto LABEL_103;
  }

  if (v14)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_136:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__dst, "Fail to perform finalization.");
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      value[0] = __dst;
    }

    value[1].__r_.__value_.__r.__words[0] = v14;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
    if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_103;
  }

  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(this + 2), *(this + 3), value);
  CFDictionarySetValue(*(this + 4), @"done", *MEMORY[0x1E695E4D0]);
LABEL_103:
  (*(*v6 + 16))(v6);
LABEL_104:
  v67 = *MEMORY[0x1E69E9840];
}

void sub_1E525B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  (*(*v30 + 16))(v30);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::collectCoredumpInternal(BBUpdaterController *this)
{
  memset(&v87, 0, sizeof(v87));
  v2 = *(this + 7);
  BBUFeedback::handleComment(v2, "entering %s", "StageContext::Coredump");
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = *(v2 + 176);
  v8 = v7 + *(v2 + 168);
  if (v6 == v8)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v2 + 136);
    v5 = *(v2 + 144);
    v7 = *(v2 + 176);
    v8 = *(v2 + 168) + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = 8;
  *(v2 + 176) = v7 + 1;
  memset(&__p, 170, sizeof(__p));
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_8;
    }

LABEL_12:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    BBUpdaterController::getCoreDumpPath(&__p, this);
    goto LABEL_15;
  }

LABEL_13:
  BBUpdaterController::getCoreDumpPath(&v90, this);
  bbufs::createDirectoryWithTimestamp(&v90.__r_.__value_.__l.__data_, &__p);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

LABEL_15:
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(*(this + 7), "collecting coredump at %s", p_p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_98:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v89, "core dump path unavailable or not specified.");
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
    }

    else
    {
      v90 = v89;
    }

    v91 = 2;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    FirmwareDataSource = 0;
    v35 = 0;
    v36 = 2;
    goto LABEL_41;
  }

  eUICC::DumpRecords(&__p.__r_.__value_.__l.__data_);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  if (!v14)
  {
    BBUFeedback::handleComment(*(this + 7), "Invalid path pointer to create coredump directory");
    goto LABEL_34;
  }

  if (!ctu::fs::create_directory())
  {
    BBUFeedback::handleComment(*(this + 7), "Failed creating coredump directory");
    goto LABEL_34;
  }

  v15 = getpwnam("_wireless");
  if (!v15)
  {
    _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v16, v17, v18, v19, v20, v21, v83);
    BBUFeedback::handleComment(*(this + 7), "Failed to get uid and gid information for _wireless:_wireless");
LABEL_34:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_36:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    v32 = operator new(0x20uLL);
    strcpy(v32, "failed to create dump path");
    std::string::__init_copy_ctor_external(&v90, v32, 0x1AuLL);
    v91 = 1;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    operator delete(v32);
    FirmwareDataSource = 0;
    v35 = 0;
    v36 = 1;
    goto LABEL_41;
  }

  pw_uid = v15->pw_uid;
  pw_gid = v15->pw_gid;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p.__r_.__value_.__r.__words[0];
  }

  v25 = chown(v24, pw_uid, pw_gid);
  if (v25)
  {
    v26 = *(this + 7);
    v27 = __error();
    v28 = strerror(*v27);
    BBUFeedback::handleComment(v26, "Failed changing owner of coredump directory:  %s", v28);
    goto LABEL_34;
  }

  if (capabilities::radio::supportsBasebandStateController(v25))
  {
    v44 = *(this + 6);
    TelephonyBasebandSetBasebandState();
  }

  (*(**(this + 9) + 56))(*(this + 9), *(this + 6), 0);
  (*(**(this + 9) + 144))(*(this + 9), 2);
  InfoFirstStageInternal = BBUpdaterController::queryInfoFirstStageInternal(this, v45);
  v36 = InfoFirstStageInternal;
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      FirmwareDataSource = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_184;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      FirmwareDataSource = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_184;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      InfoFirstStageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      FirmwareDataSource = 0;
      goto LABEL_167;
    }

LABEL_184:
    v35 = 0;
    goto LABEL_41;
  }

  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_116:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v89, "Fail to get firmware data source\n");
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
    }

    else
    {
      v90 = v89;
    }

    v91 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v85 = 0;
LABEL_152:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_154;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_154:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v89, "Fail to get update source for collectCoredump\n");
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
    }

    else
    {
      v90 = v89;
    }

    v91 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    FirmwareDataSource = 0;
    v36 = 0;
    goto LABEL_167;
  }

  v52 = *(this + 12);
  if (v52)
  {
    v53 = (*(**(v52 + 16) + 24))(*(v52 + 16));
    (*(*FirmwareDataSource + 200))(FirmwareDataSource, v53);
    v54 = (*(**(*(this + 12) + 24) + 24))(*(*(this + 12) + 24));
    (*(*FirmwareDataSource + 208))(FirmwareDataSource, v54);
  }

  if (!(*(*FirmwareDataSource + 88))(FirmwareDataSource))
  {
    v85 = FirmwareDataSource;
    goto LABEL_81;
  }

  (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  BBUFeedback::handleComment(*(this + 7), "Source doesn’t contain coredump programmer, falling back to folder");
  memset(&v89, 170, sizeof(v89));
  FirmwareFolder = BBUpdaterController::getFirmwareFolder(&v89, *(this + 5));
  v56 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v56 = v89.__r_.__value_.__l.__size_;
  }

  if (!v56)
  {
    capabilities::radio::personalizedFirmwarePath(&v90, FirmwareFolder);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v89 = v90;
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v89.__r_.__value_.__l.__size_)
      {
        v57 = v89.__r_.__value_.__r.__words[0];
        goto LABEL_75;
      }
    }

    else if (*(&v90.__r_.__value_.__s + 23))
    {
      v57 = &v89;
LABEL_75:
      BBUFeedback::handleComment(*(this + 7), "Baseband fw path that is used: %s\n", v57);
      goto LABEL_76;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0xAF6u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v80, v81, v82, v83);
  }

LABEL_76:
  v58 = BBUUpdateSource::createFromFolder(&v89, *(this + 7), 0);
  FirmwareDataSource = v58;
  if (!v58)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_136:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v88, "Fail to get update source from folder\n");
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
    }

    else
    {
      v90 = v88;
    }

    v91 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
    goto LABEL_177;
  }

  v65 = (*(*v58 + 88))(v58);
  if (!v65)
  {
    goto LABEL_78;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_142;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_142:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v88, "Miss image for collecting coredump");
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v88;
  }

  v91 = v65;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
LABEL_177:
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

LABEL_78:
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v85 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    goto LABEL_152;
  }

LABEL_81:
  v36 = BBUpdaterController::performFirstStageInternal(this, 0, &v85, &v87);
  if (v36)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_122:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
    }

    else
    {
      v90 = v87;
    }

    v91 = v36;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    goto LABEL_167;
  }

  InfoFirstStageInternal = BBUpdaterController::queryInfoSecondStageInternal(this, 0, &v85);
  v36 = InfoFirstStageInternal;
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v35 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v35 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_41;
    }

    InfoFirstStageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
LABEL_167:
    v35 = 0;
    goto LABEL_41;
  }

  v35 = (*(*FirmwareDataSource + 72))(FirmwareDataSource);
  InfoFirstStageInternal = BBUProgrammer::addItemsFromList(*(this + 11), v35);
  v36 = InfoFirstStageInternal;
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      InfoFirstStageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }
  }

  else
  {
    v75 = *(this + 11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v84, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v84 = __p;
    }

    InfoFirstStageInternal = (*(*v75 + 88))(v75, 0, &v84);
    v36 = InfoFirstStageInternal;
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (v36)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_92:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          }
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v89, "Fail to run collectCoreDump");
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
      }

      else
      {
        v90 = v89;
      }

      v91 = v36;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v90);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_41:
  if (capabilities::radio::supportsBasebandStateController(InfoFirstStageInternal))
  {
    v37 = *(this + 6);
    TelephonyBasebandSetBasebandState();
  }

  v38 = *(this + 11);
  *(this + 11) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  (*(**(this + 8) + 40))(*(this + 8), this + 152);
  BBUFeedback::exitStageContext(*(this + 7));
  if (v35)
  {
    if (v35[2])
    {
      v39 = v35[1];
      v40 = *(*v35 + 8);
      v41 = *v39;
      *(v41 + 8) = v40;
      *v40 = v41;
      v35[2] = 0;
      if (v39 != v35)
      {
        do
        {
          v42 = v39[1];
          operator delete(v39);
          v39 = v42;
        }

        while (v42 != v35);
      }
    }

    operator delete(v35);
  }

  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v36;
    }

LABEL_56:
    operator delete(v87.__r_.__value_.__l.__data_);
    return v36;
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_56;
  }

  return v36;
}

void sub_1E525CACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::handleError(uint64_t a1, std::string *a2, int a3)
{
  BBUFeedback::handleBeginPhase(*(a1 + 56), "handleError");
  BBUpdaterController::dumpDebugLogBuffer(a1, a3, v6, v7, v8, v9, v10, v11);
  if (*(a1 + 360) == 1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_4:
        if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
    {
LABEL_5:
      if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    if (*(a1 + 120))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "enabling kernel IPC log for coredump\n", v12, v13, v14, v59);
      (*(**(a1 + 120) + 32))(*(a1 + 120));
    }

LABEL_10:
    *(a1 + 360) = 0;
    v15 = BBUpdaterController::collectCoredumpInternal(a1);
    BBUpdaterController::dumpDebugLogBuffer(a1, v15, v16, v17, v18, v19, v20, v21);
    if (!v15)
    {
      std::string::append(a2, " [coredump collected]", 0x15uLL);
      BBUpdaterController::getCoreDumpPath(&__p, a1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v63 = __p;
      }

      v62 = 0;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&block, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
      }

      else
      {
        block = v63;
      }

      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v64, block.__r_.__value_.__l.__data_, block.__r_.__value_.__l.__size_);
      }

      else
      {
        v64 = block;
      }

      v26 = *MEMORY[0x1E695E480];
      if (ctu::cf::convert_copy())
      {
        v27 = CFURLCreateWithString(v26, 0xAAAAAAAAAAAAAAAALL, 0);
        CFRelease(0xAAAAAAAAAAAAAAAALL);
        if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v27 = 0;
        if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_24:
          if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_33;
        }
      }

      operator delete(v64.__r_.__value_.__l.__data_);
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        v61 = v27;
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(block.__r_.__value_.__l.__data_);
      v61 = v27;
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_26:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_35:
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_27:
        memset(&v64, 170, sizeof(v64));
        BBUpdaterController::getCoreDumpPath(&v64, a1);
        size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v64.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          CFDictionarySetValue(*(a1 + 32), @"LogDirectory", v27);
        }

        else
        {
          BBUFeedback::handleComment(*(a1 + 56), "CoreDump path passed in to BBU is empty, skipping setting the coredump path for caller.");
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
          if (!v27)
          {
            goto LABEL_42;
          }
        }

        else if (!v27)
        {
LABEL_42:
          v15 = 0;
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v25 = off_1ED944120;
          if (off_1ED944120)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }

        CFRelease(v27);
        goto LABEL_42;
      }

LABEL_34:
      operator delete(v63.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_106;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_106:
    BBUFeedback::handleComment(*(a1 + 56), "Fail to collect coredump after hitting fatal error: %s", BBUReturnAsString::BBUReturnStrings[v15]);
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v25 = off_1ED944120;
    if (off_1ED944120)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  v15 = 1;
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v25 = off_1ED944120;
  if (off_1ED944120)
  {
    goto LABEL_53;
  }

LABEL_43:
  v29 = operator new(0x38uLL);
  v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v31 = dispatch_queue_create("BBUError", v30);
  *v29 = 0;
  v29[1] = 0;
  v29[2] = v31;
  if (v31)
  {
    v32 = v31;
    dispatch_retain(v31);
    v29[3] = 0;
    dispatch_release(v32);
  }

  else
  {
    v29[3] = 0;
  }

  v29[4] = 0;
  v29[5] = 0;
  v29[6] = 0;
  std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v64, v29);
  v33 = *&v64.__r_.__value_.__l.__data_;
  *&v64.__r_.__value_.__l.__data_ = 0uLL;
  v34 = *(&off_1ED944120 + 1);
  off_1ED944120 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = v64.__r_.__value_.__l.__size_;
  if (v64.__r_.__value_.__l.__size_ && !atomic_fetch_add((v64.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v25 = off_1ED944120;
LABEL_53:
  v36 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v64.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  v64.__r_.__value_.__l.__size_ = 0x40000000;
  v64.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v65 = &__block_descriptor_tmp_8;
  v66 = v25;
  v67 = a2;
  v68 = a3;
  v63.__r_.__value_.__r.__words[0] = &v64;
  block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  block.__r_.__value_.__l.__size_ = 0x40000000;
  block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v70 = &__block_descriptor_tmp_13_0;
  v71 = v25;
  v72 = &v63;
  v37 = *(v25 + 16);
  if (*(v25 + 24))
  {
    dispatch_async_and_wait(v37, &block);
    if (!v36)
    {
      goto LABEL_61;
    }
  }

  else
  {
    dispatch_sync(v37, &block);
    if (!v36)
    {
      goto LABEL_61;
    }
  }

  if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

LABEL_61:
  (*(**(a1 + 56) + 16))(*(a1 + 56), v15);
  v38 = *(a1 + 56);
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v39 = off_1ED944120;
  if (!off_1ED944120)
  {
    v40 = operator new(0x38uLL);
    v41 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v42 = dispatch_queue_create("BBUError", v41);
    *v40 = 0;
    v40[1] = 0;
    v40[2] = v42;
    if (v42)
    {
      v43 = v42;
      dispatch_retain(v42);
      v40[3] = 0;
      dispatch_release(v43);
    }

    else
    {
      v40[3] = 0;
    }

    v40[4] = 0;
    v40[5] = 0;
    v40[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v64, v40);
    v44 = *&v64.__r_.__value_.__l.__data_;
    *&v64.__r_.__value_.__l.__data_ = 0uLL;
    v45 = *(&off_1ED944120 + 1);
    off_1ED944120 = v44;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v46 = v64.__r_.__value_.__l.__size_;
    if (v64.__r_.__value_.__l.__size_ && !atomic_fetch_add((v64.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }

    v39 = off_1ED944120;
  }

  v63.__r_.__value_.__r.__words[0] = v39;
  v63.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v47 = BBUReturnAsString::BBUReturnStrings[BBUError::getErrorCode(v39)];
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v48 = off_1ED944120;
  if (!off_1ED944120)
  {
    v49 = operator new(0x38uLL);
    v50 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v51 = dispatch_queue_create("BBUError", v50);
    *v49 = 0;
    v49[1] = 0;
    v49[2] = v51;
    if (v51)
    {
      v52 = v51;
      dispatch_retain(v51);
      v49[3] = 0;
      dispatch_release(v52);
    }

    else
    {
      v49[3] = 0;
    }

    v49[4] = 0;
    v49[5] = 0;
    v49[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v49);
    v53 = *&block.__r_.__value_.__l.__data_;
    *&block.__r_.__value_.__l.__data_ = 0uLL;
    v54 = *(&off_1ED944120 + 1);
    off_1ED944120 = v53;
    if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v55 = block.__r_.__value_.__l.__size_;
    if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v55->__on_zero_shared)(v55);
      std::__shared_weak_count::__release_weak(v55);
    }

    v48 = off_1ED944120;
  }

  v56 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  BBUError::getErrorString(v48, &v64);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v64;
  }

  else
  {
    v57 = v64.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(v38, "Hit fatal error: %s reason: %s", v47, v57);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  v58 = v63.__r_.__value_.__l.__size_;
  if (v63.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v63.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v58->__on_zero_shared)(v58);
      std::__shared_weak_count::__release_weak(v58);
    }
  }
}