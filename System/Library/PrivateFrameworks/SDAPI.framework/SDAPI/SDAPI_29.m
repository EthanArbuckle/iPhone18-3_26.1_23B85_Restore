void SDWord_DeleteList(unint64_t a1, uint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v38, "SDWord_DeleteList", 1, 0, 398);
  if (v38[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v13 = a2;
      }

      else
      {
        v13 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, v7, v8, v9, "SDWord_DeleteList", a1, v13, a3);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v7, v8, v9, v10, v11, v12);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v7, v8, v9, v10, v11, v12);
    }

    v14 = ModelMgr::smpModelMgr;
    VocOrThrow = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1, v7, v8, v9, v10, v11, v12);
    v22 = *(VocOrThrow + 48);
    if (!a2 && a3)
    {
      throwBadLengthForNullPointer(a3, "DgnVerifyReadPtr", v15, v16, v17, v18, v19, v20);
    }

    LOBYTE(v36) = 0;
    if ((*(**(VocOrThrow + 72) + 192))(*(VocOrThrow + 72)))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 257, "sdapi/sdword", 2, "%u", v23, v24, a1);
    }

    v35 = v14;
    v36 = 0;
    v37 = 0;
    if (a3)
    {
      v39 = 0;
      v25 = realloc_array(0, &v39, 4 * a3, 0, 0, 1);
      v32 = 0;
      v36 = v39;
      LODWORD(v37) = a3;
      HIDWORD(v37) = v25 >> 2;
      do
      {
        v33 = *(a2 + 8 * v32);
        v34 = v33 - 1;
        if ((v33 - 1) >> 32)
        {
          throwBadSdapiArgument("SDhWord", *(a2 + 8 * v32), v26, v27, v28, v29, v30, v31);
        }

        if (v34 >= 0xFFFFF4)
        {
          throwBadSdapiArgument("SDhWord", v33, v26, v27, v28, v29, v30, v31);
        }

        v36[v32] = v34;
        WordList::verifyVisible(v22, v33 - 1, v26, v27, v28, v29, v30, v31);
        if ((*(*(v22 + 78) + 4 * (v34 >> 5)) >> v34))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 269, "sdapi/sdword", 13, "%u %u", v30, v31, v32);
        }

        ++v32;
      }

      while (a3 != v32);
    }

    else
    {
      LODWORD(v37) = 0;
    }

    ModelMgr::deleteWordFamilyFromWordList(v35, a1, &v36);
    ModelMgr::rebuildAllStalePrefilterers(v35);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
  }

  SdapiInsurance::~SdapiInsurance(v38);
}

void sub_262705020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (a2 == 2)
  {
    v18 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v18, v19);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a17);
      _Unwind_Resume(a1);
    }

    v20 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v20);
  }

  __cxa_end_catch();
  JUMPOUT(0x262704FF8);
}

uint64_t SDWord_GetHandle(unint64_t a1, const char *a2)
{
  v4 = SdapiInsurance::SdapiInsurance(v17, "SDWord_GetHandle", 1, 1, 399);
  if (v17[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v17[151] = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, '%.500s')\n", v5, v6, v7, v8, "SDWord_GetHandle", a1, a2);
    }

    v12 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v6, v7, v8, v9, v10, v11);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v6, v7, v8, v9, v10, v11);
    }

    VocOrThrow = ModelMgr::getVocOrThrow(v12, a1, v6, v7, v8, v9, v10, v11);
    if (a2 && *a2 && (v14 = WordList::lookupWord(*(VocOrThrow + 48), a2), v14 != 0xFFFFFF))
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = -1;
    }
  }

  else
  {
    v15 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v17);
  return v15;
}

uint64_t SDWord_GetName(unint64_t a1, unint64_t a2, char *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v27, "SDWord_GetName", 1, 1, 400);
  if (v27[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v15 = a3;
      }

      else
      {
        v15 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, v9, v10, v11, "SDWord_GetName", a1, a2, v15, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr", v9, v10, v11, v12, v13, v14);
    }

    v16 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    v23 = *(ModelMgr::getVocOrThrow(v16, a1, v9, v10, v11, v12, v13, v14) + 48);
    v24 = a2 - 1;
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2, v17, v18, v19, v20, v21, v22);
    }

    if (v24 >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2, v17, v18, v19, v20, v21, v22);
    }

    WordList::verifyVisible(v23, a2 - 1, v17, v18, v19, v20, v21, v22);
    v25 = sdUtilStrMove(a3, a4, (*(v23 + 28) + *(*(v23 + 25) + 4 * v24)));
  }

  else
  {
    v25 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v27);
  return v25;
}

void SDWord_GetInfo(unint64_t a1, unint64_t a2, uint64_t a3)
{
  SdapiInsurance::SdapiInsurance(v27, "SDWord_GetInfo", 1, 1, 402);
  if (v27[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v13 = a3;
      }

      else
      {
        v13 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx)\n", v6, v7, v8, v9, "SDWord_GetInfo", a1, a2, v13);
    }

    if (!a3)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v7, v8, v9, v10, v11, v12);
    }

    v14 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v7, v8, v9, v10, v11, v12);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v7, v8, v9, v10, v11, v12);
    }

    v21 = *(ModelMgr::getVocOrThrow(v14, a1, v7, v8, v9, v10, v11, v12) + 48);
    v22 = a2 - 1;
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2, v15, v16, v17, v18, v19, v20);
    }

    if (v22 >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2, v15, v16, v17, v18, v19, v20);
    }

    WordList::verifyVisible(v21, a2 - 1, v15, v16, v17, v18, v19, v20);
    *v26 = 0;
    WordList::getNumProns(v21, a2 - 1, &v26[1], v26);
    v23 = v26[0];
    *a3 = v26[1];
    *(a3 + 4) = v23;
    v24 = 1;
    if (((*(*(v21 + 624) + 4 * (v22 >> 5)) >> v22) & 1) == 0)
    {
      v24 = 2;
    }

    *(a3 + 8) = v24;
    *(a3 + 16) = WordList::getIncludingStateRefCount(v21, a2 - 1);
    *(a3 + 20) = WordList::getIncludingRuleRefCount(v21, a2 - 1);
    *(a3 + 24) = WordList::getIncludingLatticeRefCount(v21, a2 - 1);
    *(a3 + 28) = 0;
    *(a3 + 32) = WordList::getIncludingPrefilterResultRefCount(v21, a2 - 1);
    *(a3 + 36) = WordList::getIncludingSausageRefCount(v21, a2 - 1);
    v25 = *(v21 + 516);
    if (v25)
    {
      v25 = *(v21 + 528) > v22 && *(*(v21 + 520) + 4 * v22) != -1;
    }

    *(a3 + 40) = v25;
  }

  SdapiInsurance::~SdapiInsurance(v27);
}

void sub_262705650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 2)
  {
    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v16, v17);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a15);
      _Unwind_Resume(a1);
    }

    v18 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v18);
  }

  __cxa_end_catch();
  JUMPOUT(0x262705634);
}

void SDWord_GetTagBits(unint64_t a1, unint64_t a2, unint64_t a3, void *a4, unsigned int a5)
{
  SdapiInsurance::SdapiInsurance(v30, "SDWord_GetTagBits", 1, 1, 403);
  if (v30[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v17 = a4;
      }

      else
      {
        v17 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v10, v11, v12, v13, "SDWord_GetTagBits", a1, a2, a3, v17, a5);
    }

    if (!a4 && a5)
    {
      throwBadLengthForNullPointer(a5, "DgnVerifyWritePtr", v11, v12, v13, v14, v15, v16);
    }

    if (a3 - 1 >= 2)
    {
      throwBadSdapiArgument("SDVocTagSetType", a3, v11, v12, v13, v14, v15, v16);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v11, v12, v13, v14, v15, v16);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v11, v12, v13, v14, v15, v16);
    }

    v24 = *(ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1, v11, v12, v13, v14, v15, v16) + 48);
    v25 = a2 - 1;
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2, v18, v19, v20, v21, v22, v23);
    }

    if (v25 >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2, v18, v19, v20, v21, v22, v23);
    }

    WordList::verifyVisible(v24, a2 - 1, v18, v19, v20, v21, v22, v23);
    if (a3 == 1)
    {
      if (!*(v24 + 552))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 399, "sdapi/sdword", 12, "%s", v26, v27, &errStr_sdapi_sdword_E_REQUIREDTAGS);
      }

      v28 = 552;
    }

    else
    {
      if (!*(v24 + 516))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 401, "sdapi/sdword", 3, "%s", v26, v27, &errStr_sdapi_sdword_E_OPTIONALTAGS);
      }

      v28 = 516;
    }

    v29 = (*(v24 + v28) + 7) >> 3;
    if (v29 != a5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 403, "sdapi/sdword", 4, "%u %u", v26, v27, v29);
    }

    if (a3 != 1 && (*(v24 + 528) <= v25 || *(*(v24 + 520) + 4 * v25) == -1))
    {
      if (a5)
      {
        bzero(a4, a5);
      }
    }

    else
    {
      WordList::getTagBitsAsBytes(v24, a2 - 1, a3 == 1, a4, a5);
    }
  }

  SdapiInsurance::~SdapiInsurance(v30);
}

void sub_26270596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 2)
  {
    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v16, v17);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a15);
      _Unwind_Resume(a1);
    }

    v18 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v18);
  }

  __cxa_end_catch();
  JUMPOUT(0x262705948);
}

void *WordList::getTagBitsAsBytes(void *this, unsigned int a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  if (a3)
  {
    return BitArray::getBitsFromRangeAsBytes(this + 72, a4, a5, *(this + 138) * a2, *(this + 138) * a2 + *(this + 138));
  }

  if (a5)
  {
    v5 = *(this[65] + 4 * a2);
    v6 = a5;
    do
    {
      *a4++ = *(this[67] + v5++);
      --v6;
    }

    while (v6);
  }

  return this;
}

uint64_t SDWord_WordsHaveCommonPron(unint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v85, "SDWord_WordsHaveCommonPron", 1, 1, 408);
  if (v85[97] != 1)
  {
    hasCommonProns = 0;
    goto LABEL_81;
  }

  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
    if (!gbShowCallPointerArguments)
    {
      v15 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, %llu, Masked:0x%016llx, %llu)\n", v7, v8, v9, v10, "SDWord_WordsHaveCommonPron", v14, a2, v15, a4);
  }

  if (!a1 && a2)
  {
    throwBadLengthForNullPointer(a2, "DgnVerifyReadPtr", v8, v9, v10, v11, v12, v13);
  }

  LOBYTE(v83) = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyReadPtr", v8, v9, v10, v11, v12, v13);
  }

  LOBYTE(v83) = 0;
  if (a2 && a4)
  {
    v83 = 0;
    v84 = 0;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 533, "sdapi/sdword", 8, "%s", v12, v13, &errStr_sdapi_sdword_E_ZERO_WORDS);
    v83 = 0;
    v84 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  v81 = 0;
  HIDWORD(v84) = realloc_array(0, &v81, 4 * a2, 0, 0, 1) >> 2;
  v83 = v81;
LABEL_20:
  LODWORD(v84) = a2;
  v81 = 0;
  v82 = 0;
  if (a4)
  {
    v78 = 0;
    HIDWORD(v82) = realloc_array(0, &v78, 4 * a4, 0, 0, 1) >> 2;
    v81 = v78;
  }

  LODWORD(v82) = a4;
  v80[1] = 0;
  v80[0] = 0;
  v22 = ModelMgr::smpModelMgr;
  v78 = 0;
  v79 = 0;
  v23 = *a1;
  if (HIDWORD(*a1) || (v23 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", *a1, v16, v17, v18, v19, v20, v21);
  }

  if (v23 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", v23, v16, v17, v18, v19, v20, v21);
  }

  v24 = v79;
  if (v79 == HIDWORD(v79))
  {
    DgnPrimArray<short>::reallocElts(&v78, 1, 1);
    v24 = v79;
  }

  v76 = a4;
  v25 = v78;
  *(v78 + v24) = v23;
  LODWORD(v79) = v24 + 1;
  VocOrThrow = ModelMgr::getVocOrThrow(v22, *v25, v16, v17, v18, v19, v20, v21);
  if (a2)
  {
    v33 = 0;
    do
    {
      v34 = &a1[2 * v33];
      v35 = *v34;
      v36 = v34[1];
      v37 = *v34 & 0xFFFF0000;
      if (HIDWORD(v35))
      {
        v38 = 0;
      }

      else
      {
        v38 = v37 == 0;
      }

      if (!v38)
      {
        throwBadSdapiArgument("SDhVoc", v35, v26, v27, v28, v29, v30, v31);
      }

      if (v35 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v35, v26, v27, v28, v29, v30, v31);
      }

      v45 = ModelMgr::getVocOrThrow(v22, v35, v26, v27, v28, v29, v30, v31);
      v46 = v79;
      if (!v79)
      {
        goto LABEL_44;
      }

      v47 = v78;
      v48 = 0xFFFFFFFFLL;
      while (1)
      {
        v49 = *v47++;
        if (v49 == v35)
        {
          break;
        }

        --v48;
        if (!--v46)
        {
          goto LABEL_44;
        }
      }

      if (!v48)
      {
LABEL_44:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v45, 1);
        v50 = v79;
        if (v79 == HIDWORD(v79))
        {
          DgnPrimArray<short>::reallocElts(&v78, 1, 1);
          v50 = v79;
        }

        *(v78 + v50) = v35;
        LODWORD(v79) = v50 + 1;
      }

      v51 = v36 - 1;
      if ((v36 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v36, v39, v40, v41, v42, v43, v44);
      }

      if (v51 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v36, v39, v40, v41, v42, v43, v44);
      }

      v52 = *(v45 + 6);
      WordList::verifyVisible(v52, v51, v39, v40, v41, v42, v43, v44);
      *v80 = 0;
      WordList::getNumProns(v52, v51, &v80[1], v80);
      if (!(v80[1] + v80[0]))
      {
        goto LABEL_78;
      }

      v83[v33++] = v51 & 0xFFFFFF | (v35 << 25);
    }

    while (v33 != a2);
  }

  if (v76)
  {
    v53 = 0;
    while (1)
    {
      v54 = (a3 + 16 * v53);
      v55 = *v54;
      v56 = v54[1];
      v57 = *v54 & 0xFFFF0000;
      if (HIDWORD(v55))
      {
        v58 = 0;
      }

      else
      {
        v58 = v57 == 0;
      }

      if (!v58)
      {
        throwBadSdapiArgument("SDhVoc", v55, v26, v27, v28, v29, v30, v31);
      }

      if (v55 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v55, v26, v27, v28, v29, v30, v31);
      }

      v65 = ModelMgr::getVocOrThrow(v22, v55, v26, v27, v28, v29, v30, v31);
      v66 = v79;
      if (!v79)
      {
        goto LABEL_68;
      }

      v67 = v78;
      v68 = 0xFFFFFFFFLL;
      while (1)
      {
        v69 = *v67++;
        if (v69 == v55)
        {
          break;
        }

        --v68;
        if (!--v66)
        {
          goto LABEL_68;
        }
      }

      if (!v68)
      {
LABEL_68:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v65, 1);
        v70 = v79;
        if (v79 == HIDWORD(v79))
        {
          DgnPrimArray<short>::reallocElts(&v78, 1, 1);
          v70 = v79;
        }

        *(v78 + v70) = v55;
        LODWORD(v79) = v70 + 1;
      }

      v71 = v56 - 1;
      if ((v56 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v56, v59, v60, v61, v62, v63, v64);
      }

      if (v71 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v56, v59, v60, v61, v62, v63, v64);
      }

      v72 = *(v65 + 6);
      WordList::verifyVisible(v72, v71, v59, v60, v61, v62, v63, v64);
      *v80 = 0;
      WordList::getNumProns(v72, v71, &v80[1], v80);
      if (!(v80[1] + v80[0]))
      {
        break;
      }

      *(v81 + v53++) = v71 & 0xFFFFFF | (v55 << 25);
      if (v53 == v76)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    hasCommonProns = 0;
    goto LABEL_79;
  }

LABEL_77:
  v73 = MemChunkAlloc(0xC0uLL, 0);
  PhonemeLattice::PhonemeLattice(v73, &v83);
  hasCommonProns = PhonemeLattice::hasCommonProns(v73, &v81, 0);
  DgnDelete<PhonemeLattice>(v73);
LABEL_79:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v78);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v81);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v83);
LABEL_81:
  SdapiInsurance::~SdapiInsurance(v85);
  return hasCommonProns;
}

uint64_t DgnDelete<PhonemeLattice>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 48))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t SDWord_WordsHavePrefixPron(unint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v85, "SDWord_WordsHavePrefixPron", 1, 1, 409);
  if (v85[97] != 1)
  {
    hasCommonProns = 0;
    goto LABEL_81;
  }

  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
    if (!gbShowCallPointerArguments)
    {
      v15 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, %llu, Masked:0x%016llx, %llu)\n", v7, v8, v9, v10, "SDWord_WordsHavePrefixPron", v14, a2, v15, a4);
  }

  if (!a1 && a2)
  {
    throwBadLengthForNullPointer(a2, "DgnVerifyReadPtr", v8, v9, v10, v11, v12, v13);
  }

  LOBYTE(v83) = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyReadPtr", v8, v9, v10, v11, v12, v13);
  }

  LOBYTE(v83) = 0;
  if (a2 && a4)
  {
    v83 = 0;
    v84 = 0;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 619, "sdapi/sdword", 8, "%s", v12, v13, &errStr_sdapi_sdword_E_ZERO_WORDS);
    v83 = 0;
    v84 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  v81 = 0;
  HIDWORD(v84) = realloc_array(0, &v81, 4 * a2, 0, 0, 1) >> 2;
  v83 = v81;
LABEL_20:
  LODWORD(v84) = a2;
  v81 = 0;
  v82 = 0;
  if (a4)
  {
    v78 = 0;
    HIDWORD(v82) = realloc_array(0, &v78, 4 * a4, 0, 0, 1) >> 2;
    v81 = v78;
  }

  LODWORD(v82) = a4;
  v80[1] = 0;
  v80[0] = 0;
  v22 = ModelMgr::smpModelMgr;
  v78 = 0;
  v79 = 0;
  v23 = *a1;
  if (HIDWORD(*a1) || (v23 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", *a1, v16, v17, v18, v19, v20, v21);
  }

  if (v23 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", v23, v16, v17, v18, v19, v20, v21);
  }

  v24 = v79;
  if (v79 == HIDWORD(v79))
  {
    DgnPrimArray<short>::reallocElts(&v78, 1, 1);
    v24 = v79;
  }

  v76 = a4;
  v25 = v78;
  *(v78 + v24) = v23;
  LODWORD(v79) = v24 + 1;
  VocOrThrow = ModelMgr::getVocOrThrow(v22, *v25, v16, v17, v18, v19, v20, v21);
  if (a2)
  {
    v33 = 0;
    do
    {
      v34 = &a1[2 * v33];
      v35 = *v34;
      v36 = v34[1];
      v37 = *v34 & 0xFFFF0000;
      if (HIDWORD(v35))
      {
        v38 = 0;
      }

      else
      {
        v38 = v37 == 0;
      }

      if (!v38)
      {
        throwBadSdapiArgument("SDhVoc", v35, v26, v27, v28, v29, v30, v31);
      }

      if (v35 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v35, v26, v27, v28, v29, v30, v31);
      }

      v45 = ModelMgr::getVocOrThrow(v22, v35, v26, v27, v28, v29, v30, v31);
      v46 = v79;
      if (!v79)
      {
        goto LABEL_44;
      }

      v47 = v78;
      v48 = 0xFFFFFFFFLL;
      while (1)
      {
        v49 = *v47++;
        if (v49 == v35)
        {
          break;
        }

        --v48;
        if (!--v46)
        {
          goto LABEL_44;
        }
      }

      if (!v48)
      {
LABEL_44:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v45, 1);
        v50 = v79;
        if (v79 == HIDWORD(v79))
        {
          DgnPrimArray<short>::reallocElts(&v78, 1, 1);
          v50 = v79;
        }

        *(v78 + v50) = v35;
        LODWORD(v79) = v50 + 1;
      }

      v51 = v36 - 1;
      if ((v36 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v36, v39, v40, v41, v42, v43, v44);
      }

      if (v51 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v36, v39, v40, v41, v42, v43, v44);
      }

      v52 = *(v45 + 6);
      WordList::verifyVisible(v52, v51, v39, v40, v41, v42, v43, v44);
      *v80 = 0;
      WordList::getNumProns(v52, v51, &v80[1], v80);
      if (!(v80[1] + v80[0]))
      {
        goto LABEL_78;
      }

      v83[v33++] = v51 & 0xFFFFFF | (v35 << 25);
    }

    while (v33 != a2);
  }

  if (v76)
  {
    v53 = 0;
    while (1)
    {
      v54 = (a3 + 16 * v53);
      v55 = *v54;
      v56 = v54[1];
      v57 = *v54 & 0xFFFF0000;
      if (HIDWORD(v55))
      {
        v58 = 0;
      }

      else
      {
        v58 = v57 == 0;
      }

      if (!v58)
      {
        throwBadSdapiArgument("SDhVoc", v55, v26, v27, v28, v29, v30, v31);
      }

      if (v55 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v55, v26, v27, v28, v29, v30, v31);
      }

      v65 = ModelMgr::getVocOrThrow(v22, v55, v26, v27, v28, v29, v30, v31);
      v66 = v79;
      if (!v79)
      {
        goto LABEL_68;
      }

      v67 = v78;
      v68 = 0xFFFFFFFFLL;
      while (1)
      {
        v69 = *v67++;
        if (v69 == v55)
        {
          break;
        }

        --v68;
        if (!--v66)
        {
          goto LABEL_68;
        }
      }

      if (!v68)
      {
LABEL_68:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v65, 1);
        v70 = v79;
        if (v79 == HIDWORD(v79))
        {
          DgnPrimArray<short>::reallocElts(&v78, 1, 1);
          v70 = v79;
        }

        *(v78 + v70) = v55;
        LODWORD(v79) = v70 + 1;
      }

      v71 = v56 - 1;
      if ((v56 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v56, v59, v60, v61, v62, v63, v64);
      }

      if (v71 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v56, v59, v60, v61, v62, v63, v64);
      }

      v72 = *(v65 + 6);
      WordList::verifyVisible(v72, v71, v59, v60, v61, v62, v63, v64);
      *v80 = 0;
      WordList::getNumProns(v72, v71, &v80[1], v80);
      if (!(v80[1] + v80[0]))
      {
        break;
      }

      *(v81 + v53++) = v71 & 0xFFFFFF | (v55 << 25);
      if (v53 == v76)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    hasCommonProns = 0;
    goto LABEL_79;
  }

LABEL_77:
  v73 = MemChunkAlloc(0xC0uLL, 0);
  PhonemeLattice::PhonemeLattice(v73, &v83);
  hasCommonProns = PhonemeLattice::hasCommonProns(v73, &v81, 1);
  DgnDelete<PhonemeLattice>(v73);
LABEL_79:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v78);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v81);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v83);
LABEL_81:
  SdapiInsurance::~SdapiInsurance(v85);
  return hasCommonProns;
}

uint64_t SDWord_GetWordsWithCommonPron(unint64_t a1, unint64_t a2, void *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v36, "SDWord_GetWordsWithCommonPron", 1, 1, 410);
  if (v36[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v15 = a3;
      }

      else
      {
        v15 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, v9, v10, v11, "SDWord_GetWordsWithCommonPron", a1, a2, v15, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr", v9, v10, v11, v12, v13, v14);
    }

    v16 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    v23 = *(ModelMgr::getVocOrThrow(v16, a1, v9, v10, v11, v12, v13, v14) + 48);
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2, v17, v18, v19, v20, v21, v22);
    }

    if ((a2 - 1) >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2, v17, v18, v19, v20, v21, v22);
    }

    WordList::verifyVisible(v23, a2 - 1, v17, v18, v19, v20, v21, v22);
    *v35 = 0;
    WordList::getNumProns(v23, a2 - 1, &v35[1], v35);
    if (v35[1] + v35[0])
    {
      v33 = 0;
      v34 = 0;
      WordList::getWordsWithCommonPron(v23, a2 - 1, &v33);
      v31 = 0;
      *v32 = 0;
      if (v34)
      {
        v37 = 0;
        v32[1] = realloc_array(0, &v37, 8 * v34, 0, 0, 1) >> 3;
        v25 = v37;
        v31 = v37;
        v26 = v34;
        if (v34)
        {
          v27 = 0;
          LODWORD(v28) = v32[0];
          do
          {
            v29 = *(v33 + 4 * v27);
            if (v28 == v32[1])
            {
              DgnPrimArray<unsigned long long>::reallocElts(&v31, 1, 1);
              LODWORD(v28) = v32[0];
              v26 = v34;
            }

            v31[v28] = v29 + 1;
            v28 = (v28 + 1);
            v32[0] = v28;
            ++v27;
          }

          while (v27 < v26);
          v25 = v31;
          goto LABEL_30;
        }
      }

      else
      {
        v25 = 0;
      }

      v28 = v32[0];
LABEL_30:
      v24 = sdUtilItemMove(8, v25, v28, a3, a4);
      DgnIArray<Utterance *>::~DgnIArray(&v31);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
      goto LABEL_31;
    }
  }

  v24 = 0;
LABEL_31:
  SdapiInsurance::~SdapiInsurance(v36);
  return v24;
}

void sub_2627069CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  if (a2 == 2)
  {
    v12 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v12, v13);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va1);
      _Unwind_Resume(a1);
    }

    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v14);
  }

  __cxa_end_catch();
  JUMPOUT(0x2627068C0);
}

uint64_t SDWord_GetHumanReadableProns(unint64_t a1, unint64_t a2, void *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v34, "SDWord_GetHumanReadableProns", 1, 1, 416);
  if (v34[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v15 = a3;
      }

      else
      {
        v15 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, v9, v10, v11, "SDWord_GetHumanReadableProns", a1, a2, v15, a4);
    }

    v16 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    v23 = *(ModelMgr::getVocOrThrow(v16, a1, v9, v10, v11, v12, v13, v14) + 48);
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2, v17, v18, v19, v20, v21, v22);
    }

    if ((a2 - 1) >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2, v17, v18, v19, v20, v21, v22);
    }

    WordList::verifyVisible(v23, a2 - 1, v17, v18, v19, v20, v21, v22);
    v32 = 0;
    v33 = 0;
    WordList::lookupAll(v23, a2 - 1, &v32);
    DgnString::DgnString(&v30);
    if (v33)
    {
      v24 = 0;
      do
      {
        DgnString::DgnString(v29);
        WordList::getHumanReadablePron(v23, *(v32 + 4 * v24), v29);
        DgnString::operator+=(&v30, v29);
        DgnString::operator+=(&v30, 0);
        DgnString::~DgnString(v29);
        ++v24;
      }

      while (v24 < v33);
    }

    DgnString::operator+=(&v30, 0);
    if (v31)
    {
      v25 = v30;
    }

    else
    {
      v25 = &unk_26288A403;
    }

    if (v31)
    {
      v26 = (v31 - 1);
    }

    else
    {
      v26 = 0;
    }

    v27 = sdUtilItemMove(1, v25, v26, a3, a4);
    DgnString::~DgnString(&v30);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  }

  else
  {
    v27 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v34);
  return v27;
}

uint64_t loggableFileObject(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v2 = *a1;
  if (*a1)
  {
    v3 = (v2 + 48);
    if (*(v2 + 71) < 0)
    {
      v3 = *v3;
    }
  }

  else
  {
    v3 = "[dynamic object]";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v3, v4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " (", 2);
  v6 = MEMORY[0x26672B080](v5, a1[4]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") : ", 4);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " attribute '", 12);
  v8 = a1[1];
  v9 = __p;
  loggableUnicode(v8, __p);
  if (v14 < 0)
  {
    v9 = __p[0];
  }

  v10 = strlen(v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' : ", 4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x26672B160](&v19);
}

void sub_262706F50(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x26672B160](va);
  _Unwind_Resume(a1);
}

uint64_t TFileObject::verify(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 40))
  {
    loggableFileObject(a1);
    if (v61 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected an object\n", v5, v6, v7, v8, v9);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = 1;
    return v10 & 1;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    a4 = 1;
  }

  if ((a4 & 1) == 0)
  {
    loggableFileObject(a1);
    v19 = v61 >= 0 ? __p : __p[0];
    tknPrintf("Error: %sObject has no attributes\n", v15, v16, v17, v18, v19);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = a4 ^ 1;
  LOBYTE(v58[0]) = 0;
  std::vector<BOOL>::vector(__p, a3);
  if (*a1)
  {
    v20 = *(*a1 + 72);
  }

  else
  {
    v20 = 0;
  }

  v55 = a1;
  if (v13)
  {
    while (1)
    {
      v21 = 0;
      if (a3)
      {
        break;
      }

LABEL_44:
      if (v21 == a3)
      {
LABEL_45:
        loggableFileObject(v13);
        v43 = v58;
        if (v59 < 0)
        {
          v43 = v58[0];
        }

        tknPrintf("Error: %sInvalid attribute\n", v39, v40, v41, v42, v43);
        if (v59 < 0)
        {
          operator delete(v58[0]);
        }

        v10 = 1;
      }

      v13 = v13[2];
      if (!v13)
      {
        goto LABEL_51;
      }
    }

    v22 = v13[1];
    v23 = (a2 + 24);
    while (wcscmp(v22, *(v23 - 3)))
    {
      ++v21;
      v23 += 4;
      if (a3 == v21)
      {
        goto LABEL_45;
      }
    }

    if ((*(__p[0] + (v21 >> 6)) & (1 << v21)) != 0 && (*(v23 - 2) & 1) == 0)
    {
      loggableFileObject(v13);
      v28 = v58;
      if (v59 < 0)
      {
        v28 = v58[0];
      }

      tknPrintf("Error: %sRedefinition\n", v24, v25, v26, v27, v28);
LABEL_40:
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      v10 = 1;
      goto LABEL_43;
    }

    if (v20)
    {
      if (v20 < *(v23 - 1))
      {
        loggableFileObject(v13);
        v33 = v58;
        if (v59 < 0)
        {
          v33 = v58[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version must be at least %lld\n", v29, v30, v31, v32, v33, v20, *(v23 - 1));
        goto LABEL_40;
      }

      if (v20 > *v23)
      {
        loggableFileObject(v13);
        v38 = v58;
        if (v59 < 0)
        {
          v38 = v58[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version may not be greater than %lld\n", v34, v35, v36, v37, v38, v20, *v23);
        goto LABEL_40;
      }
    }

LABEL_43:
    *(__p[0] + (v21 >> 6)) |= 1 << v21;
    goto LABEL_44;
  }

LABEL_51:
  if (a3)
  {
    v44 = 0;
    v45 = (a2 + 16);
    do
    {
      if (((*(__p[0] + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0 && (*(v45 - 1) & 2) == 0 && (!v20 || v20 >= *v45 && v20 <= v45[1]))
      {
        loggableFileObject(v55);
        v46 = v59;
        v47 = v58[0];
        loggableUnicode(*(v45 - 2), v56);
        if (v46 >= 0)
        {
          v52 = v58;
        }

        else
        {
          v52 = v47;
        }

        if (v57 >= 0)
        {
          v53 = v56;
        }

        else
        {
          v53 = v56[0];
        }

        tknPrintf("Error: %sMissing declaration of '%s'\n", v48, v49, v50, v51, v52, v53);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        if (v59 < 0)
        {
          operator delete(v58[0]);
        }

        v10 = 1;
      }

      ++v44;
      v45 += 4;
    }

    while (a3 != v44);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v10 & 1;
}

void sub_262707338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::verify(TFileObject *this, char a2, char a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    if (v3 != 2 || (a2 & 1) != 0)
    {
      v14 = 0;
      if (**(this + 3) || (a3 & 1) != 0)
      {
        return v14;
      }

      loggableFileObject(this);
      if (v22 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      tknPrintf("Error: %sEmpty string not allowed here\n", v15, v16, v17, v18, v19);
    }

    else
    {
      loggableFileObject(this);
      if (v22 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      tknPrintf("Error: %sRegExp not supported here\n", v4, v5, v6, v7, v8);
    }
  }

  else
  {
    loggableFileObject(this);
    if (v22 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected a string\n", v9, v10, v11, v12, v13);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_2627074A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::getAttribute(uint64_t a1, __int32 *a2)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      break;
    }
  }

  return i;
}

void TFileObject::collectAttributes(uint64_t a1, __int32 *a2, uint64_t a3)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      v7 = *(a3 + 8);
      v6 = *(a3 + 16);
      if (v7 >= v6)
      {
        v9 = (v7 - *a3) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v10 = v6 - *a3;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a3, v12);
        }

        *(8 * v9) = i;
        v8 = 8 * v9 + 8;
        v13 = *(a3 + 8) - *a3;
        v14 = (8 * v9 - v13);
        memcpy(v14, *a3, v13);
        v15 = *a3;
        *a3 = v14;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = i;
        v8 = (v7 + 1);
      }

      *(a3 + 8) = v8;
    }
  }
}

void TFileObjectParser::TFileObjectParser(TFileObjectParser *this, const TLocaleInfo **a2)
{
  TAllocator::TAllocator((this + 8), 2048);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = 0;
  if (TInputStream::verifyVersion(a2, "ObjectFormatVersion", 1uLL, 1uLL, 1uLL))
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v20) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v19, *(&v19 + 1));
    }

    else
    {
      *&__p[8] = v19;
      v18 = v20;
    }

    *__p = &unk_287528000;
    if (v18 >= 0)
    {
      v13 = &__p[8];
    }

    else
    {
      v13 = *&__p[8];
    }

    conditionalAssert(v13, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 247, v11, v12);
    *__p = byte_287529580;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v15 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v15, *__p, *&__p[8]);
    }

    else
    {
      v16 = *__p;
      exception[3] = *&__p[16];
      *&v15->__r_.__value_.__l.__data_ = v16;
    }

    *exception = &unk_287528000;
  }

  v4 = TLexerLexicon::TLexerLexicon(&v19, a2[22]);
  initLexicon(v4);
  TLexer::TLexer(__p, a2, 1uLL, &v19, 0);
  if (*(a2 + 39) >= 0)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = a2[2];
  }

  MEMORY[0x26672AEC0](this + 48, v5);
  *(this + 9) = a2[12];
  Objects = TFileObjectParser::loadObjects(this, __p, v6, v7, v8);
  v10 = TAllocator::allocate((this + 8), 48);
  *(v10 + 40) = 0;
  *(v10 + 24) = Objects;
  *(v10 + 32) = 0;
  *v10 = this;
  *(v10 + 8) = &unk_26288A404;
  *(v10 + 16) = 0;
  *this = v10;
  TLexer::~TLexer(__p);
  TLexerLexicon::~TLexerLexicon(&v19);
}

void sub_262707888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (*(v19 + 71) < 0)
      {
        operator delete(*v20);
      }

      TAllocator::clear((v19 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

TRegExpCompiler *initLexicon(const void **a1)
{
  TLexerLexicon::addLiteral(a1, "=", 5);
  TLexerLexicon::addLiteral(a1, "{", 6);
  TLexerLexicon::addLiteral(a1, "}", 7);
  TLexerLexicon::addLiteral(a1, "(", 8);
  TLexerLexicon::addLiteral(a1, ")", 9);
  TLexerLexicon::addString(a1, 39, 3, 2);
  TLexerLexicon::addString(a1, 96, 4, 0);
  TLexerLexicon::addString(a1, 34, 2, 1);
  TLexerLexicon::addRegExp(a1, "[", 1);

  return TLexerLexicon::doneAdding(a1);
}

const TFileObject *TFileObjectParser::loadObjects(TFileObjectParser *this, TLexer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 3) < ((*(a2 + 12) - *(a2 + 11)) >> 3))
  {
    v7 = 0;
    i = 0;
    while (1)
    {
      Object = TFileObjectParser::makeObject(this, a2, &unk_26288A404, a4, a5);
      if (i)
      {
        *(v7 + 2) = Object;
        v10 = Object;
        Object = v7;
        if (v10)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = *(Object + 2);
        for (i = Object; v10; v10 = *(v10 + 2))
        {
LABEL_5:
          Object = v10;
        }
      }

      v7 = Object;
      if (*(a2 + 3) >= ((*(a2 + 12) - *(a2 + 11)) >> 3))
      {
        return i;
      }
    }
  }

  return 0;
}

uint64_t *TFileObjectParser::TFileObjectParser(uint64_t *a1, uint64_t a2, uint64_t a3, const TLocaleInfo *a4)
{
  TAllocator::TAllocator((a1 + 1), 2048);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *a1 = 0;
  v7 = TLexerLexicon::TLexerLexicon(v15, a4);
  initLexicon(v7);
  TLexer::TLexer(v14, a2, 1, v15, 0);
  MEMORY[0x26672AEC0](a1 + 6, "[dynamic text object]");
  a1[9] = 1;
  Objects = TFileObjectParser::loadObjects(a1, v14, v8, v9, v10);
  v12 = TAllocator::allocate((a1 + 1), 48);
  *(v12 + 40) = 0;
  *(v12 + 24) = Objects;
  *(v12 + 32) = 0;
  *v12 = a1;
  *(v12 + 8) = &unk_26288A404;
  *(v12 + 16) = 0;
  *a1 = v12;
  TLexer::~TLexer(v14);
  TLexerLexicon::~TLexerLexicon(v15);
  return a1;
}

void sub_262707BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TLexer::~TLexer(va);
  TLexerLexicon::~TLexerLexicon((v4 - 88));
  if (*(v2 + 71) < 0)
  {
    operator delete(*v3);
  }

  TAllocator::clear((v2 + 8));
  _Unwind_Resume(a1);
}

void TFileObjectParser::~TFileObjectParser(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  TAllocator::clear((this + 1));
}

uint64_t TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2, const TFileObject *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 10);
  if (!v6)
  {
    v23 = *(a2 + 3);
    if (!v23)
    {
      v7 = 0;
LABEL_57:
      result = TAllocator::allocate((this + 8), 48);
      v33 = *(a2 + 4);
      *(result + 40) = 0;
      *(result + 32) = v33;
      goto LABEL_58;
    }

    i = 0;
    v7 = 0;
    v25 = 0;
    while (!wcscmp(*(v23 + 8), "I"))
    {
LABEL_48:
      v23 = *(v23 + 16);
      if (!v23)
      {
        goto LABEL_57;
      }
    }

    v26 = TFileObjectParser::instantiateObject(this, v23, a3);
    if (v7)
    {
      *(i + 16) = v26;
      v28 = v26;
      if (v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v28 = *(v26 + 16);
      v7 = v26;
      for (i = v26; v28; v28 = *(v28 + 16))
      {
LABEL_46:
        i = v28;
      }
    }

    v25 |= v27 & 1;
    goto LABEL_48;
  }

  if (v6 == 3)
  {
    v7 = *(a2 + 3);
    v8 = *(a3 + 3);
    if (v8)
    {
      v9 = 0;
      do
      {
        v53 = __s2;
        v54 = 256;
        v57 = 0;
        v55 = 0;
        TBuffer<wchar_t>::insert(&v53, 0, "$", 2uLL);
        v10 = 0;
        v11 = *(v8 + 8);
          ;
        }

        TBuffer<wchar_t>::insert(&v53, v55, v11, v10 - 1);
        *v49 = 41;
        TBuffer<wchar_t>::insert(&v53, v55, v49, 1uLL);
        if (v55 >= v54)
        {
          if (v57)
          {
            *v49 = 0;
            TBuffer<wchar_t>::insert(&v53, v55--, v49, 1uLL);
          }

          else if (v54)
          {
            v53[v54 - 1] = 0;
          }
        }

        else
        {
          v53[v55] = 0;
        }

        if (!*(v8 + 40) && !wcscmp(__s2, v7))
        {
          v7 = *(v8 + 24);
          if (v7)
          {
            v19 = 0;
            v9 = 0;
            do
            {
              v20 = TAllocator::allocate((this + 8), 48);
              *(v20 + 40) = *(v7 + 40);
              *v20 = *v7;
              *(v20 + 32) = *(v7 + 32);
              *(v20 + 16) = *(v7 + 16);
              v21 = *(v7 + 24);
              *(v20 + 16) = 0;
              *(v20 + 24) = v21;
              if (v9)
              {
                *(v19 + 16) = v20;
                do
                {
                  v22 = v20;
                  v20 = *(v20 + 16);
                }

                while (v20);
                v20 = v22;
              }

              else
              {
                v9 = v20;
              }

              v7 = *(v7 + 16);
              v19 = v20;
            }

            while (v7);
            v17 = 0;
          }

          else
          {
            v17 = 0;
            v9 = 0;
          }
        }

        else
        {
          v13 = wcsstr(v7, __s2);
          if (v13)
          {
            if (!*(v8 + 40))
            {
              loggableFileObject(a2);
              v35 = v49[23];
              v36 = *v49;
              loggableFileObject(v8);
              v41 = v49;
              if (v35 < 0)
              {
                v41 = v36;
              }

              if (v52 >= 0)
              {
                v42 = __p;
              }

              else
              {
                v42 = __p[0];
              }

              tknPrintf("Error: %s%sCannot instantiate\n", v37, v38, v39, v40, v41, v42);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p[0]);
              }

              if ((v49[23] & 0x80000000) != 0)
              {
                operator delete(*v49);
              }

              std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
              *v49 = byte_287529580;
              if (SHIBYTE(v52) < 0)
              {
                std::string::__init_copy_ctor_external(&v49[8], __p[0], __p[1]);
              }

              else
              {
                *&v49[8] = *__p;
                v50 = v52;
              }

              *v49 = &unk_287526298;
              if (v50 >= 0)
              {
                v45 = &v49[8];
              }

              else
              {
                v45 = *&v49[8];
              }

              conditionalAssert(v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 366, v43, v44);
              *v49 = byte_287529580;
              if (SHIBYTE(v50) < 0)
              {
                operator delete(*&v49[8]);
              }

              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p[0]);
              }

              exception = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v49, &byte_262899963);
              *exception = byte_287529580;
              v47 = (exception + 1);
              if ((v49[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v47, *v49, *&v49[8]);
              }

              else
              {
                v48 = *v49;
                exception[3] = *&v49[16];
                *&v47->__r_.__value_.__l.__data_ = v48;
              }

              *exception = &unk_287526298;
            }

            v14 = wcslen(__s2);
            wcscpy(__s2, v7);
            wcscpy((__s2 + v13 - v7), *(v8 + 24));
            wcscat(__s2, &v13[v14]);
            v15 = wcslen(__s2);
            if ((v15 + 1) >> 62)
            {
              v16 = -1;
            }

            else
            {
              v16 = 4 * (v15 + 1);
            }

            v7 = TAllocator::allocate((this + 8), v16);
            wcscpy(v7, __s2);
          }

          v17 = 1;
        }

        if (v57 == 1 && v53 != &v56 && v53 != 0)
        {
          MEMORY[0x26672B1B0]();
        }

        if (!v17)
        {
          break;
        }

        v8 = *(v8 + 16);
      }

      while (v8);
      if (v9)
      {
        result = TAllocator::allocate((this + 8), 48);
        v31 = *(a2 + 4);
        *(result + 40) = 0;
        *(result + 32) = v31;
        *result = *a2;
        *(result + 16) = 0;
        *(result + 24) = v9;
        goto LABEL_59;
      }
    }

    result = TAllocator::allocate((this + 8), 48);
    v32 = *(a2 + 4);
    *(result + 40) = *(a2 + 10);
    *(result + 32) = v32;
LABEL_58:
    *result = *a2;
    *(result + 16) = 0;
    *(result + 24) = v7;
    goto LABEL_59;
  }

  result = TAllocator::allocate((this + 8), 48);
  *(result + 40) = *(a2 + 10);
  *result = *a2;
  *(result + 32) = *(a2 + 4);
  *(result + 16) = *(a2 + 2);
  v30 = *(a2 + 3);
  *(result + 16) = 0;
  *(result + 24) = v30;
LABEL_59:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262708258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (LOBYTE(STACK[0x468]) == 1 && a22 != a11 && a22 != 0)
      {
        MEMORY[0x26672B1B0]();
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  TFileObject::collectAttributes(a2, "I", &v27);
  v4 = v27;
  if (v27 != v28)
  {
    v5 = 0;
    i = 0;
    v7 = 0;
    while (1)
    {
      v8 = TFileObjectParser::instantiateObject(this, a2, v4[v5]);
      if ((v9 & 1) == 0)
      {
        loggableFileObject(a2);
        if (__p[23] >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = *__p;
        }

        tknPrintf("Error: %sNothing to instantiate\n", v12, v13, v14, v15, v16);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v23, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v24) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v23[0], v23[1]);
        }

        else
        {
          *&__p[8] = *v23;
          v26 = v24;
        }

        *__p = &unk_287526298;
        if (v26 >= 0)
        {
          v19 = &__p[8];
        }

        else
        {
          v19 = *&__p[8];
        }

        conditionalAssert(v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 441, v17, v18);
        *__p = byte_287529580;
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v21 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v21, *__p, *&__p[8]);
        }

        else
        {
          v22 = *__p;
          exception[3] = *&__p[16];
          *&v21->__r_.__value_.__l.__data_ = v22;
        }

        *exception = &unk_287526298;
      }

      if (v7)
      {
        *(i + 16) = v8;
        v10 = v8;
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = *(v8 + 16);
        v7 = v8;
        for (i = v8; v10; v10 = *(v10 + 16))
        {
LABEL_6:
          i = v10;
        }
      }

      ++v5;
      v4 = v27;
      if (v5 >= v28 - v27)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = a2;
LABEL_12:
  if (v4)
  {
    v28 = v4;
    operator delete(v4);
  }

  return v7;
}

void sub_2627085D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      if (a27)
      {
        operator delete(a27);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::makeObject(uint64_t a1, TLexer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  Token = nextToken(a2, a2, a3, a4, a5);
  v13 = Token;
  v14 = *Token;
  if (*Token == 1)
  {
    v15 = wcslen(*(Token + 8));
    if ((v15 + 1) >> 62)
    {
      v16 = -1;
    }

    else
    {
      v16 = 4 * (v15 + 1);
    }

    v5 = TAllocator::allocate((a1 + 8), v16);
    wcscpy(v5, *(v13 + 8));
    v21 = nextToken(a2, v17, v18, v19, v20);
    if (*v21 != 5)
    {
      loggableToken(a2, v21);
      if (v111[23] >= 0)
      {
        v79 = v111;
      }

      else
      {
        v79 = *v111;
      }

      tknPrintf("Error: %sSyntax error, missing '='\n", v75, v76, v77, v78, v79);
      if ((v111[23] & 0x80000000) != 0)
      {
        operator delete(*v111);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v111 = byte_287529580;
      if (SHIBYTE(v110) < 0)
      {
        std::string::__init_copy_ctor_external(&v111[8], __p[0], __p[1]);
      }

      else
      {
        *&v111[8] = *__p;
        v112 = v110;
      }

      *v111 = &unk_287527330;
      if (v112 >= 0)
      {
        v97 = &v111[8];
      }

      else
      {
        v97 = *&v111[8];
      }

      conditionalAssert(v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 488, v80, v81);
      *v111 = byte_287529580;
      if (SHIBYTE(v112) < 0)
      {
        operator delete(*&v111[8]);
      }

      if (SHIBYTE(v110) < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v111, &byte_262899963);
      *exception = byte_287529580;
      v99 = (exception + 1);
      if ((v111[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v99, *v111, *&v111[8]);
      }

      else
      {
        v106 = *v111;
        exception[3] = *&v111[16];
        *&v99->__r_.__value_.__l.__data_ = v106;
      }

      *exception = &unk_287527330;
    }

    v13 = nextToken(a2, v22, v23, v24, v25);
    v14 = *v13;
  }

  if (v14 <= 3)
  {
    if (v14 == 2)
    {
      v48 = wcslen(*(v13 + 8));
      if ((v48 + 1) >> 62)
      {
        v49 = -1;
      }

      else
      {
        v49 = 4 * (v48 + 1);
      }

      v31 = TAllocator::allocate((a1 + 8), v49);
      wcscpy(v31, *(v13 + 8));
      v32 = TAllocator::allocate((a1 + 8), 48);
      v33 = v32;
      v34 = *(v13 + 16);
      v35 = 3;
    }

    else
    {
      if (v14 != 3)
      {
LABEL_86:
        loggableToken(a2, v13);
        if (v111[23] >= 0)
        {
          v86 = v111;
        }

        else
        {
          v86 = *v111;
        }

        tknPrintf("Error: %sSyntax error\n", v82, v83, v84, v85, v86);
        if ((v111[23] & 0x80000000) != 0)
        {
          operator delete(*v111);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v111 = byte_287529580;
        if (SHIBYTE(v110) < 0)
        {
          std::string::__init_copy_ctor_external(&v111[8], __p[0], __p[1]);
        }

        else
        {
          *&v111[8] = *__p;
          v112 = v110;
        }

        *v111 = &unk_287527330;
        if (v112 >= 0)
        {
          v100 = &v111[8];
        }

        else
        {
          v100 = *&v111[8];
        }

        conditionalAssert(v100, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 571, v87, v88);
        *v111 = byte_287529580;
        if (SHIBYTE(v112) < 0)
        {
          operator delete(*&v111[8]);
        }

        if (SHIBYTE(v110) < 0)
        {
          operator delete(__p[0]);
        }

        v101 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v111, &byte_262899963);
        *v101 = byte_287529580;
        v102 = (v101 + 1);
        if ((v111[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v102, *v111, *&v111[8]);
        }

        else
        {
          v107 = *v111;
          v101[3] = *&v111[16];
          *&v102->__r_.__value_.__l.__data_ = v107;
        }

        *v101 = &unk_287527330;
      }

      v29 = wcslen(*(v13 + 8));
      if ((v29 + 1) >> 62)
      {
        v30 = -1;
      }

      else
      {
        v30 = 4 * (v29 + 1);
      }

      v31 = TAllocator::allocate((a1 + 8), v30);
      wcscpy(v31, *(v13 + 8));
      v32 = TAllocator::allocate((a1 + 8), 48);
      v33 = v32;
      v34 = *(v13 + 16);
      v35 = 1;
    }

LABEL_38:
    *(v32 + 40) = v35;
    *(v32 + 24) = v31;
    *(v32 + 32) = v34;
    *v32 = a1;
    *(v32 + 8) = v5;
    *(v32 + 16) = 0;
    return v33;
  }

  if (v14 == 4)
  {
    v36 = wcslen(*(v13 + 8));
    if ((v36 + 1) >> 62)
    {
      v37 = -1;
    }

    else
    {
      v37 = 4 * (v36 + 1);
    }

    v31 = TAllocator::allocate((a1 + 8), v37);
    wcscpy(v31, *(v13 + 8));
    v32 = TAllocator::allocate((a1 + 8), 48);
    v33 = v32;
    v34 = *(v13 + 16);
    v35 = 2;
    goto LABEL_38;
  }

  if (v14 == 8)
  {
    v38 = nextToken(a2, v9, v10, v11, v12);
    v33 = 0;
    for (i = 0; ; i = v46)
    {
      if (*v38 == 9)
      {
        if (!v33)
        {
          loggableToken(a2, v38);
          if (v111[23] >= 0)
          {
            v93 = v111;
          }

          else
          {
            v93 = *v111;
          }

          tknPrintf("Error: %sAssignment list is empty\n", v89, v90, v91, v92, v93);
          if ((v111[23] & 0x80000000) != 0)
          {
            operator delete(*v111);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v111 = byte_287529580;
          if (SHIBYTE(v110) < 0)
          {
            std::string::__init_copy_ctor_external(&v111[8], __p[0], __p[1]);
          }

          else
          {
            *&v111[8] = *__p;
            v112 = v110;
          }

          *v111 = &unk_287527330;
          if (v112 >= 0)
          {
            v103 = &v111[8];
          }

          else
          {
            v103 = *&v111[8];
          }

          conditionalAssert(v103, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 536, v94, v95);
          *v111 = byte_287529580;
          if (SHIBYTE(v112) < 0)
          {
            operator delete(*&v111[8]);
          }

          if (SHIBYTE(v110) < 0)
          {
            operator delete(__p[0]);
          }

          v104 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v111, &byte_262899963);
          *v104 = byte_287529580;
          v105 = (v104 + 1);
          if ((v111[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v105, *v111, *&v111[8]);
          }

          else
          {
            v108 = *v111;
            v104[3] = *&v111[16];
            *&v105->__r_.__value_.__l.__data_ = v108;
          }

          *v104 = &unk_287527330;
        }

        if (!*(v33 + 40))
        {
          goto LABEL_54;
        }

        return v33;
      }

      if (*v38 == 1)
      {
        loggableToken(a2, v38);
        v62 = v111[23];
        v63 = *v111;
        loggableUnicode(*(v38 + 8), __p);
        if (v62 >= 0)
        {
          v68 = v111;
        }

        else
        {
          v68 = v63;
        }

        if (v110 >= 0)
        {
          v69 = __p;
        }

        else
        {
          v69 = __p[0];
        }

        tknPrintf("Error: %sUnexpected attribute name '%s' in assignment list\n", v64, v65, v66, v67, v68, v69);
        if (SHIBYTE(v110) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v111[23] & 0x80000000) != 0)
        {
          operator delete(*v111);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v111 = byte_287529580;
        if (SHIBYTE(v110) < 0)
        {
          std::string::__init_copy_ctor_external(&v111[8], __p[0], __p[1]);
        }

        else
        {
          *&v111[8] = *__p;
          v112 = v110;
        }

        *v111 = &unk_287527330;
        if (v112 >= 0)
        {
          v72 = &v111[8];
        }

        else
        {
          v72 = *&v111[8];
        }

        conditionalAssert(v72, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 524, v70, v71);
        *v111 = byte_287529580;
        if (SHIBYTE(v112) < 0)
        {
          operator delete(*&v111[8]);
        }

        if (SHIBYTE(v110) < 0)
        {
          operator delete(__p[0]);
        }

        v73 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v111, &byte_262899963);
        *v73 = byte_287529580;
        v74 = (v73 + 1);
        if ((v111[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v74, *v111, *&v111[8]);
        }

        else
        {
          v96 = *v111;
          v73[3] = *&v111[16];
          *&v74->__r_.__value_.__l.__data_ = v96;
        }

        *v73 = &unk_287527330;
      }

      v40 = *(a2 + 3);
      if (v40)
      {
        *(a2 + 3) = v40 - 1;
      }

      Object = TFileObjectParser::makeObject(a1, a2, v5);
      v46 = Object;
      if (v33)
      {
        *(i + 16) = Object;
        v47 = Object;
        v46 = i;
        if (!Object)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v47 = *(Object + 16);
        v33 = Object;
        if (!v47)
        {
          goto LABEL_31;
        }
      }

      do
      {
        v46 = v47;
        v47 = *(v47 + 16);
      }

      while (v47);
LABEL_31:
      v38 = nextToken(a2, v42, v43, v44, v45);
    }
  }

  if (v14 != 6)
  {
    goto LABEL_86;
  }

  v26 = nextToken(a2, v9, v10, v11, v12);
  if (*v26 == 7)
  {
    v27 = v26;
    v28 = 0;
    goto LABEL_53;
  }

  v51 = 0;
  v28 = 0;
  do
  {
    v52 = *(a2 + 3);
    if (v52)
    {
      *(a2 + 3) = v52 - 1;
    }

    v53 = TFileObjectParser::makeObject(a1, a2, &unk_26288A404);
    v58 = v53;
    if (v28)
    {
      *(v51 + 16) = v53;
      v59 = v53;
      v58 = v51;
      if (!v53)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v59 = *(v53 + 16);
      v28 = v53;
      if (!v59)
      {
        goto LABEL_49;
      }
    }

    do
    {
      v58 = v59;
      v59 = *(v59 + 16);
    }

    while (v59);
LABEL_49:
    v60 = nextToken(a2, v54, v55, v56, v57);
    v51 = v58;
  }

  while (*v60 != 7);
  v27 = v60;
LABEL_53:
  v33 = TAllocator::allocate((a1 + 8), 48);
  v61 = v27[2];
  *(v33 + 40) = 0;
  *(v33 + 24) = v28;
  *(v33 + 32) = v61;
  *v33 = a1;
  *(v33 + 8) = v5;
  *(v33 + 16) = 0;
LABEL_54:

  return TFileObjectParser::instantiateObject(a1, v33);
}

void sub_2627090E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
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

void sub_262709588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
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

void MrecInitModule_gpuscsm_pel(void)
{
  if (!gParDiagnosticGPUMaxFramesInBatch)
  {
    v4[1] = v0;
    v4[2] = v1;
    v2 = MemChunkAlloc(0x38uLL, 0);
    v4[0] = 0x8000000001;
    v3 = IntGlobalParamBase::IntGlobalParamBase(v2, "DiagnosticGPUMaxFramesInBatch", &byte_262899963, &byte_262899963, 32, v4, 0);
    *v3 = &unk_287528130;
    gParDiagnosticGPUMaxFramesInBatch = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticGPUMaxFramesInBatch);
  }
}

void ChannelStats::~ChannelStats(ChannelStats *this)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
}

void ChannelStats::printSize(ChannelStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 162, &v165);
  if (v166)
  {
    v16 = v165;
  }

  else
  {
    v16 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288A4A8, a3, &unk_26288A4A8, v16);
  DgnString::~DgnString(&v165);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288A4A8);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 163, &v165);
  if (v166)
  {
    v28 = v165;
  }

  else
  {
    v28 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v165);
  *a4 += v21;
  *a5 += v21;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v33 = v165;
  }

  else
  {
    v33 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v33, 4, 4, 0);
  DgnString::~DgnString(&v165);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v38 = v165;
  }

  else
  {
    v38 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v165);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v43 = v165;
  }

  else
  {
    v43 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v43, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v48 = v165;
  }

  else
  {
    v48 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v48, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v53 = v165;
  }

  else
  {
    v53 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v50, v51, v52, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v53, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v58 = v165;
  }

  else
  {
    v58 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v58, 4, 4, 0);
  DgnString::~DgnString(&v165);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v63 = v165;
  }

  else
  {
    v63 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v63, 4, 4, 0);
  v164 = a3;
  DgnString::~DgnString(&v165);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 12;
  }

  else
  {
    v64 = 16;
  }

  v65 = *(this + 10);
  v66 = *(this + 11);
  v67 = v66 >= v65;
  v68 = v66 - v65;
  if (v67)
  {
    if (v65 > 0)
    {
      v69 = (v65 - 1) + v64 + 1;
    }

    else
    {
      v69 = v64;
    }

    v64 = v69 + v68;
    v65 = 0;
  }

  else
  {
    v69 = v64;
  }

  v70 = v65;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v75 = v165;
  }

  else
  {
    v75 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v22, &unk_26288A4A8, v23, v23, v75, v64, v69, v70);
  DgnString::~DgnString(&v165);
  *a4 += v64;
  *a5 += v69;
  *a6 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v76 = 12;
  }

  else
  {
    v76 = 16;
  }

  v77 = *(this + 14);
  v78 = *(this + 15);
  v67 = v78 >= v77;
  v79 = v78 - v77;
  if (v67)
  {
    if (v77 > 0)
    {
      v80 = (v77 - 1) + v76 + 1;
    }

    else
    {
      v80 = v76;
    }

    v76 = v80 + v79;
    v77 = 0;
  }

  else
  {
    v80 = v76;
  }

  v81 = v77;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v86 = v165;
  }

  else
  {
    v86 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v83, v84, v85, v22, &unk_26288A4A8, v23, v23, v86, v76, v80, v81);
  DgnString::~DgnString(&v165);
  *a4 += v76;
  *a5 += v80;
  *a6 += v81;
  v87 = sizeObject<DgnPrimArray<unsigned int>>(this + 64, 0);
  v88 = sizeObject<DgnPrimArray<unsigned int>>(this + 64, 1);
  v165 = 0;
  v166 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v165);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v93 = v165;
  }

  else
  {
    v93 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v22, &unk_26288A4A8, v23, v23, v93, v87, v88, 0);
  DgnString::~DgnString(&v165);
  *a4 += v87;
  *a5 += v88;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v98 = v165;
  }

  else
  {
    v98 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v95, v96, v97, v22, &unk_26288A4A8, v23, v23, v98, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v103 = v165;
  }

  else
  {
    v103 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v100, v101, v102, v22, &unk_26288A4A8, v23, v23, v103, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v108 = v165;
  }

  else
  {
    v108 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v105, v106, v107, v22, &unk_26288A4A8, v23, v23, v108, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v109 = 12;
  }

  else
  {
    v109 = 16;
  }

  v110 = *(this + 24);
  v111 = *(this + 25);
  v67 = v111 >= v110;
  v112 = v111 - v110;
  if (v67)
  {
    if (v110 > 0)
    {
      v113 = (v110 - 1) + v109 + 1;
    }

    else
    {
      v113 = v109;
    }

    v109 = v113 + v112;
    v110 = 0;
  }

  else
  {
    v113 = v109;
  }

  v114 = v110;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v119 = v165;
  }

  else
  {
    v119 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v22, &unk_26288A4A8, v23, v23, v119, v109, v113, v114);
  DgnString::~DgnString(&v165);
  *a4 += v109;
  *a5 += v113;
  *a6 += v114;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v120 = 12;
  }

  else
  {
    v120 = 16;
  }

  v121 = *(this + 28);
  v122 = *(this + 29);
  v67 = v122 >= v121;
  v123 = v122 - v121;
  if (v67)
  {
    if (v121 > 0)
    {
      v124 = (v121 - 1) + v120 + 1;
    }

    else
    {
      v124 = v120;
    }

    v120 = v124 + v123;
    v121 = 0;
  }

  else
  {
    v124 = v120;
  }

  v125 = v121;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v130 = v165;
  }

  else
  {
    v130 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v127, v128, v129, v22, &unk_26288A4A8, v23, v23, v130, v120, v124, v125);
  DgnString::~DgnString(&v165);
  *a4 += v120;
  *a5 += v124;
  *a6 += v125;
  v131 = sizeObject<DgnPrimArray<unsigned int>>(this + 120, 0);
  v132 = sizeObject<DgnPrimArray<unsigned int>>(this + 120, 1);
  v165 = 0;
  v166 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v165);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v137 = v165;
  }

  else
  {
    v137 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v134, v135, v136, v22, &unk_26288A4A8, v23, v23, v137, v131, v132, 0);
  DgnString::~DgnString(&v165);
  *a4 += v131;
  *a5 += v132;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v142 = v165;
  }

  else
  {
    v142 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v22, &unk_26288A4A8, v23, v23, v142, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v147 = v165;
  }

  else
  {
    v147 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, v22, &unk_26288A4A8, v23, v23, v147, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v152 = v165;
  }

  else
  {
    v152 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v22, &unk_26288A4A8, v23, v23, v152, 2, 2, 0);
  DgnString::~DgnString(&v165);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165, &v165);
  if (v166)
  {
    v157 = v165;
  }

  else
  {
    v157 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v154, v155, v156, v22, &unk_26288A4A8, v23, v23, v157, 4, 4, 0);
  DgnString::~DgnString(&v165);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 166, &v165);
  if (v166)
  {
    v162 = v165;
  }

  else
  {
    v162 = &unk_26288A4A8;
  }

  v163 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v159, v160, v161, v164, &unk_26288A4A8, (35 - v164), (35 - v164), v162, *a4, *a5, *a6);
  DgnString::~DgnString(&v165);
}

void sub_26270A294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ChannelStats::saveChannelStats(ChannelStats *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    ChannelStats::saveCST(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x10u, a5, "MRCST!?", 19, 4);
    v10 = 0;
    writeObject(v8, this + 2, &v10);
    writeObject(v8, this + 3, &v10);
    writeObject(v8, this + 8, &v10);
    writeObject(v8, this + 9, &v10);
    writeObject(v8, this + 10, &v10);
    writeObject(v8, this + 6, &v10);
    writeObject(v8, this + 7, &v10);
    writeObject<unsigned char>(v8, this + 32, &v10);
    writeObject<unsigned char>(v8, this + 48, &v10);
    writeObject<DgnPrimArray<unsigned int>>(v8, this + 64, &v10);
    writeObject(v8, this + 40, &v10);
    writeObject(v8, this + 41, &v10);
    writeObject(v8, this + 42, &v10);
    writeObject<unsigned char>(v8, this + 88, &v10);
    writeObject<unsigned char>(v8, this + 104, &v10);
    writeObject<DgnPrimArray<unsigned int>>(v8, this + 120, &v10);
    writeObject(v8, this + 68, &v10);
    writeObject(v8, this + 69, &v10);
    writeObject(v8, this + 70, &v10);
    writeObject(v8, this + 36, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x10u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void ChannelStats::saveCST(ChannelStats *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v43);
  DgnTextFileWriter::openDgnTextFileWriter(v43, a2, 0x11u, a3);
  v41 = 0;
  v42 = 0;
  DgnTextFile::legalDgnTextFileVersions(v43, sCST_Versions, &v41, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v43, "ChannelStatisticsText", (v41 + 8 * (v42 - 1)));
  v11 = *(this + 7);
  if (*(this + 24) != v11 && *(this + 28) != v11 && *(this + 68) == -1 && *(this + 32) != v11 && *(this + 69) == -1 && *(this + 70) == -1 && *(this + 36) == -1)
  {
    v13 = 0;
    v12 = 4;
  }

  else
  {
    v12 = 5;
    v13 = 1;
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v14 = realloc_array(0, &v37, 4 * v12, 0, 0, 1);
  v38 = 0;
  v39 = v37;
  LODWORD(v40) = v12;
  HIDWORD(v40) = v14 >> 2;
  v37 = 0;
  v35 = 0;
  HIDWORD(v38) = realloc_array(0, &v35, 16 * v12, 0, 0, 1) >> 4;
  v37 = v35;
  v15 = v38;
  if (v12 >= v38)
  {
    if (v12 > v38)
    {
      v17 = v12 - v38;
      v18 = 16 * v38;
      do
      {
        DgnString::DgnString((v37 + v18));
        v18 += 16;
        --v17;
      }

      while (v17);
    }
  }

  else if (v38 > v12)
  {
    v16 = 16 * v38 - 16;
    do
    {
      --v15;
      DgnString::~DgnString((v37 + v16));
      v16 -= 16;
    }

    while (v15 > v12);
  }

  LODWORD(v38) = v12;
  *v39 = 0;
  DgnString::operator=(v37, "TableName");
  v39[1] = 3;
  DgnString::operator=((v37 + 16), "RowIndex");
  v39[2] = 3;
  DgnString::operator=((v37 + 32), "ColumnIndex");
  v39[3] = 1;
  DgnString::operator=((v37 + 48), "TableEntry");
  if (v13)
  {
    v39[4] = 1;
    DgnString::operator=((v37 + 64), "BackupTableEntry");
  }

  DgnTextFileWriter::setLineFieldFormat(v43, &v39, &v37);
  DgnTextFileWriter::setHeaderFieldUnsigned(v43, "NumberOfSpectralWarpChoices", *(this + 2));
  DgnTextFileWriter::setHeaderFieldUnsigned(v43, "ChannelNormalizationFeatureDim", *(this + 7));
  DgnString::DgnString(&v35);
  if (*(this + 8) == 1)
  {
    v19 = "NoMeansNorm";
  }

  else
  {
    v19 = "ChannelMeansSubtraction";
  }

  DgnString::operator=(&v35, v19);
  if (v36)
  {
    v20 = v35;
  }

  else
  {
    v20 = &unk_26288A4A8;
  }

  DgnTextFileWriter::setHeaderField(v43, "ChannelMeansNormalizationType", v20);
  if (*(this + 9) == 1)
  {
    v21 = "NoVarianceNorm";
  }

  else
  {
    v21 = "ChannelVarianceNorm";
  }

  DgnString::operator=(&v35, v21);
  if (v36)
  {
    v22 = v35;
  }

  else
  {
    v22 = &unk_26288A4A8;
  }

  DgnTextFileWriter::setHeaderField(v43, "ChannelVarianceNormalizationType", v22);
  v23 = *(this + 10);
  v24 = "InterpolatedCDFNorm";
  if (v23 == 2)
  {
    v24 = "SmoothedCDFNorm";
  }

  if (v23 == 1)
  {
    v25 = "NoCDFNorm";
  }

  else
  {
    v25 = v24;
  }

  DgnString::operator=(&v35, v25);
  if (v36)
  {
    v26 = v35;
  }

  else
  {
    v26 = &unk_26288A4A8;
  }

  DgnTextFileWriter::setHeaderField(v43, "CDFNormalizationType", v26);
  if (*(this + 10) != 1)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v43, "CDFNormalizationSum", *(this + 6));
  }

  DgnTextFileWriter::setHeaderFieldBool(v43, "HasBackupChannelStatistics", v13);
  DgnTextFileWriter::setLineFieldValue(v43, 0, "UttDetBackgroundLevel");
  DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, 0);
  DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(v43, 3u, *(this + 41));
  if (v13)
  {
    DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, *(this + 69));
  }

  DgnTextFileWriter::writeNextLine(v43);
  DgnTextFileWriter::setLineFieldValue(v43, 0, "UttDetSpeechLevel");
  DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, 0);
  DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(v43, 3u, *(this + 42));
  if (v13)
  {
    DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, *(this + 70));
  }

  DgnTextFileWriter::writeNextLine(v43);
  if (*(this + 2))
  {
    DgnTextFileWriter::setLineFieldValue(v43, 0, "ChosenSpectralWarpIndex");
    DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, 0);
    DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, 0);
    DgnTextFileWriter::setLineFieldIntegerValue(v43, 3u, *(this + 3));
    if (v13)
    {
      DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, *(this + 36));
    }

    DgnTextFileWriter::writeNextLine(v43);
  }

  DgnTextFileWriter::setLineFieldValue(v43, 0, "ChannelSilenceLevel");
  DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, 0);
  DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(v43, 3u, *(this + 40));
  if (v13)
  {
    if (*(this + 69) == -1)
    {
      v27 = -1;
    }

    else
    {
      v27 = *(this + 68);
    }

    DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, v27);
  }

  DgnTextFileWriter::writeNextLine(v43);
  if (*(this + 8) == 2 && *(this + 7))
  {
    v28 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v43, 0, "ChannelMeans");
      DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, v28);
      DgnTextFileWriter::setLineFieldIntegerValue(v43, 3u, *(*(this + 4) + v28));
      if (v13)
      {
        if (*(this + 24) == *(this + 7))
        {
          v29 = *(*(this + 11) + v28);
        }

        else
        {
          v29 = -1;
        }

        DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, v29);
      }

      DgnTextFileWriter::writeNextLine(v43);
      ++v28;
    }

    while (v28 < *(this + 7));
  }

  if (*(this + 9) == 2 && *(this + 7))
  {
    v30 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v43, 0, "ChannelVariance");
      DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, v30);
      DgnTextFileWriter::setLineFieldIntegerValue(v43, 3u, *(*(this + 6) + v30));
      if (v13)
      {
        if (*(this + 28) == *(this + 7))
        {
          v31 = *(*(this + 13) + v30);
        }

        else
        {
          v31 = -1;
        }

        DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, v31);
      }

      DgnTextFileWriter::writeNextLine(v43);
      ++v30;
    }

    while (v30 < *(this + 7));
  }

  if (*(this + 10) != 1 && *(this + 7))
  {
    v32 = 0;
    do
    {
      for (i = 0; i != 256; ++i)
      {
        DgnTextFileWriter::setLineFieldValue(v43, 0, "CDFNormalizationHistogram");
        DgnTextFileWriter::setLineFieldUnsignedValue(v43, 1u, v32);
        DgnTextFileWriter::setLineFieldUnsignedValue(v43, 2u, i);
        DgnTextFileWriter::setLineFieldUnsignedValue(v43, 3u, *(*(*(this + 8) + 16 * v32) + 4 * i));
        if (v13)
        {
          if (*(this + 32) == *(this + 7))
          {
            v34 = *(*(*(this + 15) + 16 * v32) + 4 * i);
          }

          else
          {
            v34 = -1;
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v43, 4u, v34);
        }

        DgnTextFileWriter::writeNextLine(v43);
      }

      ++v32;
    }

    while (v32 < *(this + 7));
  }

  DgnString::~DgnString(&v35);
  DgnArray<DgnString>::releaseAll(&v37);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
  DgnIArray<Utterance *>::~DgnIArray(&v41);
  DgnTextFileWriter::~DgnTextFileWriter(v43);
}

void sub_26270ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

uint64_t FstHmmNet::scoreNetInternal(FstCore **this, int a2, int a3, uint64_t a4)
{
  FstCore::doFrameEmbedded(this[17], a4, 0);
  *(this + 26) = FstCore::getNActiveStates(this[17]);
  BestExitScore = FstCore::getBestExitScore(this[17]);
  *(this + 54) = BestExitScore;
  if (BestExitScore != 20000)
  {
    v6 = *this[9];
    *(v6 + 8) = BestExitScore;
    *v6 = **this[7];
  }

  result = FstCore::getBestScoreMaybeUpdateFstNode(this[17]);
  if (result != 20000)
  {
    v8 = this[1];
    if (*(v8 + 56) >= result)
    {

      return BestData::newOrTiedBestNode(v8 + 192, result, (this + 156), 0);
    }
  }

  return result;
}

uint64_t FstHmmNet::FstHmmNet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t *a8, unsigned int a9, __int16 a10, PelScorer *a11, unsigned int a12, __int128 *a13, uint64_t a14, unsigned __int16 a15)
{
  HmmNet::HmmNet(a1, a2, a3, a4, a5, a6);
  *v18 = &unk_2875230D8;
  DgnString::DgnString((v18 + 15));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x100000001;
  *(a1 + 152) = 1310740000;
  *(a1 + 156) = 0x100000001;
  *(a1 + 164) = 1310740000;
  *(a1 + 168) = 0;
  *(a1 + 176) = -65536;
  *(a1 + 180) = 0;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0;
  ArcGraphOrThrow = ArcGraphMgr::getArcGraphOrThrow(ArcGraphMgr::smpArcGraphMgr, a15, v19, v20, v21, v22, v23, v24);
  Recognizer = FstCore::makeRecognizer(a13, a10, a14, a7, ArcGraphOrThrow);
  *(a1 + 136) = Recognizer;
  if (!a8)
  {
    RequiredVirtMapSize = FstCore::getRequiredVirtMapSize(Recognizer);
    if (RequiredVirtMapSize)
    {
      a8 = MemChunkAlloc(0x40uLL, 0);
      VirtMap::VirtMap(a8);
      v28 = RequiredVirtMapSize >> 6;
      v29 = *(a8 + 14);
      if (RequiredVirtMapSize >> 6 >= v29)
      {
        v30 = v28 + 1;
        *(a8 + 14) = v30;
        v31 = *(a8 + 3);
        if (v31 <= v28)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a8, v30 - v31, 0);
        }

        v32 = *(a8 + 2);
        if (v32 <= v30)
        {
          if (v32 <= v28)
          {
            v34 = (RequiredVirtMapSize >> 6) - v32 + 1;
            v35 = (*a8 + 16 * v32 + 8);
            do
            {
              *(v35 - 1) = 0;
              *v35 = 0;
              v35 += 4;
              --v34;
            }

            while (v34);
          }
        }

        else if (v32 > v30)
        {
          v33 = 16 * v32 - 16;
          do
          {
            --v32;
            DgnPrimFixArray<double>::~DgnPrimFixArray(*a8 + v33);
            v33 -= 16;
          }

          while (v32 > v30);
        }

        *(a8 + 2) = v30;
        v36 = *(a8 + 14);
        v37 = *(a8 + 7);
        v29 = v36;
        if (v36 > v37)
        {
          DgnPrimArray<unsigned long long>::reallocElts((a8 + 2), v36 - v37, 0);
          v29 = *(a8 + 14);
        }

        *(a8 + 6) = v36;
        *(a8 + 13) = 0;
      }

      bzero(a8[2], 8 * v29);
      *(a8 + 60) = 1;
      *(a1 + 188) = 1;
    }

    else
    {
      a8 = 0;
    }
  }

  FstCore::beginTopRecSyncRecog(*(a1 + 136), a7, a8);
  FstCore::beginTopRecPassSyncRecogEmbedded(*(a1 + 136), a9, 4294967280, a11, a12, v38, v39, v40);
  return a1;
}

{
  return FstHmmNet::FstHmmNet(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void sub_26270B048(_Unwind_Exception *a1)
{
  BitArray::~BitArray(v2);
  HmmNet::~HmmNet(v1);
  _Unwind_Resume(a1);
}

void FstHmmNet::~FstHmmNet(FstCore **this)
{
  *this = &unk_2875230D8;
  FstCore::endTopRecPassSyncRecogEmbedded(this[17]);
  FstCore::endTopRecSyncRecog(this[17]);
  if (*(this + 188) == 1)
  {
    DgnDelete<VirtMap>(v2);
  }

  DgnDelete<FstCore>(this[17]);
  this[17] = 0;
  BitArray::~BitArray((this + 15));

  HmmNet::~HmmNet(this);
}

{
  FstHmmNet::~FstHmmNet(this);

  JUMPOUT(0x26672B1B0);
}

FstCore *DgnDelete<FstCore>(FstCore *result)
{
  if (result)
  {
    FstCore::~FstCore(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t FstHmmNet::unpackFstSequence(uint64_t this, Node **a2, Node **a3)
{
  *(this + 164) = 1310740000;
  *(this + 168) = 0;
  *(this + 176) = -65536;
  *(this + 180) = 1;
  *a3 = (this + 156);
  *a2 = (this + 156);
  return this;
}

uint64_t FstHmmNet::seedInPortFst(uint64_t this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(this + 56) + 8 * a2);
  if (*(v4 + 8) > a3)
  {
    v5 = this;
    v6 = *(this + 114);
    *(v4 + 8) = a3;
    *v4 = a4;
    if ((v6 & 1) == 0)
    {
      *(v4 + 4) = 0;
    }

    *(this + 156) = a4;
    *(this + 160) = *(v4 + 4);
    this = FstCore::seedTheory(*(this + 136), a3, *(this + 184), a4);
    *(v5 + 112) = 1;
  }

  return this;
}

void MrecInitModule_wavepac_sigproc(void)
{
  if (!gParDebugWavePacketLossDetection)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugWavePacketLossDetection", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugWavePacketLossDetection = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugWavePacketLossDetection);
  }
}

void MulTable::~MulTable(MulTable *this)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 88);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 40);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 24);
}

void MulTable::printSize(MulTable *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 135, &v93);
  if (v94)
  {
    v16 = v93;
  }

  else
  {
    v16 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288A4D0, a3, &unk_26288A4D0, v16);
  DgnString::~DgnString(&v93);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288A4D0);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137, &v93);
  if (v94)
  {
    v25 = v93;
  }

  else
  {
    v25 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v93);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137, &v93);
  if (v94)
  {
    v30 = v93;
  }

  else
  {
    v30 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v30, 8, 8, 0);
  DgnString::~DgnString(&v93);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137, &v93);
  if (v94)
  {
    v35 = v93;
  }

  else
  {
    v35 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v35, 4, 4, 0);
  DgnString::~DgnString(&v93);
  *a4 += 4;
  *a5 += 4;
  v36 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 8;
  }

  v37 = *(this + 8);
  if (v37 <= 0)
  {
    v38 = 0;
  }

  else
  {
    v38 = (2 * v37);
  }

  v39 = v36 + v38;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137, &v93);
  if (v94)
  {
    v44 = v93;
  }

  else
  {
    v44 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v44, v39, v39, 0);
  DgnString::~DgnString(&v93);
  *a4 += v39;
  *a5 += v39;
  v45 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 8;
  }

  v46 = *(this + 20);
  if (v46 > 0)
  {
    v47 = (v46 - 1) + v45 + 1;
  }

  else
  {
    v47 = v45;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137, &v93);
  if (v94)
  {
    v52 = v93;
  }

  else
  {
    v52 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v52, v47, v47, 0);
  DgnString::~DgnString(&v93);
  *a4 += v47;
  *a5 += v47;
  v53 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 8;
  }

  v54 = *(this + 24);
  if (v54 <= 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = (2 * v54);
  }

  v56 = v53 + v55;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137, &v93);
  if (v94)
  {
    v61 = v93;
  }

  else
  {
    v61 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v61, v56, v56, 0);
  DgnString::~DgnString(&v93);
  *a4 += v56;
  *a5 += v56;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v62 = 4;
  }

  else
  {
    v62 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 138, &v93);
  if (v94)
  {
    v67 = v93;
  }

  else
  {
    v67 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v67, v62, v62, 0);
  DgnString::~DgnString(&v93);
  *a4 += v62;
  *a5 += v62;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 140, &v93);
  if (v94)
  {
    v72 = v93;
  }

  else
  {
    v72 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v72, 4, 4, 0);
  DgnString::~DgnString(&v93);
  *a4 += 4;
  *a5 += 4;
  v73 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 8;
  }

  v74 = *(this + 12);
  if (v74 <= 0)
  {
    v75 = 0;
  }

  else
  {
    v75 = (2 * v74);
  }

  v76 = v73 + v75;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 142, &v93);
  if (v94)
  {
    v81 = v93;
  }

  else
  {
    v81 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v81, v76, v76, 0);
  DgnString::~DgnString(&v93);
  *a4 += v76;
  *a5 += v76;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 144, &v93);
  if (v94)
  {
    v86 = v93;
  }

  else
  {
    v86 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v83, v84, v85, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v86, 1, 1, 0);
  DgnString::~DgnString(&v93);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 145, &v93);
  if (v94)
  {
    v91 = v93;
  }

  else
  {
    v91 = &unk_26288A4D0;
  }

  v92 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, a3, &unk_26288A4D0, (35 - a3), (35 - a3), v91, *a4, *a5, *a6);
  DgnString::~DgnString(&v93);
}

void sub_26270B964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MulTable::saveMulTable(MulTable *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    MulTable::saveMulTableText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x2Du, a5, "MRMULT!?", 14, 1);
    v15 = 0;
    writeObject(v8, this, &v15);
    writeObject(v8, this + 13, &v15, v9, v10, v11, v12, v13);
    writeObject(v8, this + 1, &v15);
    writeObject<short>(v8, this + 24, &v15);
    writeObject<unsigned char>(v8, this + 72, &v15);
    writeObject<unsigned short>(v8, this + 88, &v15);
    writeObjectChecksum(v8, &v15);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x2Du, v15);
    DgnDelete<DgnStream>(v8);
  }
}

void MulTable::saveMulTableText(MulTable *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v30);
  DgnTextFileWriter::openDgnTextFileWriter(v30, a2, 0x2Eu, a3);
  v28 = 0;
  v29 = 0;
  DgnTextFile::legalDgnTextFileVersions(v30, sMTT_Versions, &v28, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v30, "MulTableText", (v28 + 8 * (v29 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "NumberOfMulTables", *this);
  DgnTextFileWriter::setHeaderFieldReal(v30, "MulScale", *(this + 13));
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "MaxScaledDev", *(this + 1));
  v27 = 0;
  v23 = 0;
  HIDWORD(v27) = realloc_array(0, &v23, 0x40uLL, 0, 0, 1) >> 4;
  *v26 = v23;
  v11 = v27;
  if (v27 <= 4)
  {
    if (v27 != 4)
    {
      v13 = v27 + 1;
      v14 = 16 * v27;
      do
      {
        DgnString::DgnString((*v26 + v14));
        v14 += 16;
      }

      while (v13++ != 4);
    }
  }

  else if (v27 >= 5)
  {
    v12 = 16 * v27 - 16;
    do
    {
      --v11;
      DgnString::~DgnString((*v26 + v12));
      v12 -= 16;
    }

    while (v11 > 4);
  }

  LODWORD(v27) = 4;
  v31 = 0;
  v16 = realloc_array(0, &v31, 0x10uLL, 0, 0, 1);
  v23 = v31;
  v24 = 4;
  v25 = v16 >> 2;
  DgnString::operator=(*v26, "Type");
  *v23 = 0;
  DgnString::operator=((*v26 + 16), "UnsVal1");
  v23[1] = 3;
  DgnString::operator=((*v26 + 32), "IntVal1");
  v23[2] = 1;
  DgnString::operator=((*v26 + 48), "IntVal2");
  v23[3] = 1;
  DgnTextFileWriter::setLineFieldFormat(v30, &v23, v26);
  if (*this)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = 2 * v18 + 2;
      v18 += 512;
      for (i = 255; i != -256; --i)
      {
        DgnTextFileWriter::setLineFieldValue(v30, 0, "MulTable");
        DgnTextFileWriter::setLineFieldUnsignedValue(v30, 1u, v17);
        DgnTextFileWriter::setLineFieldIntegerValue(v30, 2u, i);
        DgnTextFileWriter::setLineFieldIntegerValue(v30, 3u, *(*(this + 3) + v19));
        DgnTextFileWriter::writeNextLine(v30);
        v19 += 2;
      }

      ++v17;
    }

    while (v17 < *this);
  }

  if (*(this + 1))
  {
    v21 = 1;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v30, 0, "ScaledDevToMulTableMap");
      DgnTextFileWriter::setLineFieldUnsignedValue(v30, 1u, v21);
      v22 = *(*(this + 9) + v21 - 1) - 1;
      DgnTextFileWriter::setLineFieldIntegerValue(v30, 2u, v22);
      DgnTextFileWriter::setLineFieldIntegerValue(v30, 3u, *(*(this + 11) + 2 * v22));
      DgnTextFileWriter::writeNextLine(v30);
      ++v21;
    }

    while (v21 <= *(this + 1));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
  DgnArray<DgnString>::releaseAll(v26);
  DgnIArray<Utterance *>::~DgnIArray(&v28);
  DgnTextFileWriter::~DgnTextFileWriter(v30);
}

void sub_26270BEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

uint64_t *DgnPrimFixArray<unsigned char>::copyArraySlice(uint64_t *result, void *a2, int a3, unsigned int a4)
{
  v7 = result;
  if (!a4 || *(result + 2))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = MemChunkAlloc(a4, 0);
    *v7 = result;
    *(v7 + 2) = a4;
  }

  v8 = 0;
  do
  {
    *(*v7 + v8) = *(*a2 + (a3 + v8));
    ++v8;
  }

  while (a4 != v8);
  return result;
}

uint64_t tknLogString(uint64_t result)
{
  if (s_logCallBack)
  {
    return s_logCallBack(result);
  }

  return result;
}

uint64_t makeDataManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    verifyStringArgument(*(a1 + 8), 0, 0, "Bad data spec file-or-dir pointer", a5);
    if (*a1 != 3)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t handleException(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    tknPrintf("Error: %s\n", a2, a3, a4, a5, a1);
  }

  tknPrintf("Error: Caught exception in %s, TPError = %llu\n", a2, a3, a4, a5, a2, a3);
  return a3;
}

void partial apply()
{
  TReentrancyHandler::TReentrancyHandler(&v8, "TPApi_Initialize");
  TLocaleHandler::TLocaleHandler(&v7);
  MrecInitModule_sdpres_sdapi();
  if (g_bInitialized != 1)
  {
    SDApi_CheckVersion(0x18u, 0x197u, sSDInitCheckSizesInternal);
    operator new();
  }

  conditionalAssert("Already initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpmisc.cpp", 130, v0, v1);
  exception = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(&v5, "Already initialized");
  *exception = byte_287529580;
  v3 = (exception + 1);
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v5, *(&v5 + 1));
  }

  else
  {
    v4 = v5;
    exception[3] = v6;
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *exception = &unk_2875282E0;
  exception[4] = 5;
}

void sub_26270C2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  MEMORY[0x26672B1B0](v21, 0x1070C40ADD13FEBLL);
  MEMORY[0x26672B1B0](v20, 0x10F3C403D9D550DLL);
  MrecInitModule_sdpres_sdapi();
  TLocaleHandler::~TLocaleHandler(&a20);
  TReentrancyHandler::ms_bIn = 0;
  switch(a2)
  {
    case 7:
      v26 = __cxa_begin_catch(a1);
      v27 = v26 + 8;
      if (v26[31] < 0)
      {
        v27 = *v27;
      }

      handleException(v27, "TPApi_Initialize", *(v26 + 4), v24, v25);
      __cxa_end_catch();
      goto LABEL_27;
    case 6:
      v30 = __cxa_begin_catch(a1);
      v31 = v30 + 8;
      if (v30[31] < 0)
      {
        v31 = *v31;
      }

      handleException(v31, "TPApi_Initialize", 6, v28, v29);
      __cxa_end_catch();
      goto LABEL_27;
    case 5:
      v34 = __cxa_begin_catch(a1);
      v35 = v34 + 8;
      if (v34[31] < 0)
      {
        v35 = *v35;
      }

      break;
    case 4:
      v38 = __cxa_begin_catch(a1);
      v39 = v38 + 8;
      if (v38[31] < 0)
      {
        v39 = *v39;
      }

      handleException(v39, "TPApi_Initialize", 11, v36, v37);
      __cxa_end_catch();
LABEL_27:
      JUMPOUT(0x26270C1C4);
    case 3:
      v40 = __cxa_begin_catch(a1);
      v35 = v40 + 8;
      if (v40[31] < 0)
      {
        v35 = *v35;
      }

      break;
    case 2:
      v41 = __cxa_begin_catch(a1);
      v42 = (*(*v41 + 16))(v41);
      handleException(v42, "TPApi_Initialize", 1, v43, v44);
      __cxa_end_catch();
      goto LABEL_27;
    default:
      if (a2 != 1)
      {
        _Unwind_Resume(a1);
      }

      v45 = __cxa_begin_catch(a1);
      v46 = (*(*v45 + 16))(v45);
      handleException(v46, "TPApi_Initialize", 2, v47, v48);
LABEL_13:
      __cxa_end_catch();
      goto LABEL_27;
  }

  handleException(v35, "TPApi_Initialize", 2, v32, v33);
  goto LABEL_13;
}

void MrecInitModule_ngram2fsm_lm(void)
{
  if (!gParDebugWordLMToTransducerGrammar)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugWordLMToTransducerGrammar", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugWordLMToTransducerGrammar = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMToTransducerGrammar);
  }

  if (!gParDebugWordLMToTransducerGrammarDetails)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugWordLMToTransducerGrammarDetails", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugWordLMToTransducerGrammarDetails = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugWordLMToTransducerGrammarDetails);
  }
}

void (***WordLanguageModel::getWordIdToTrGrmLmIdArray(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6))(void)
{
  v10 = *(a1 + 104);
  v11 = *(a3 + 12);
  v90 = a3;
  if (v10 > v11)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a3, v10 - v11, 0);
    a3 = v90;
  }

  v87 = a6;
  v12 = *(a3 + 8);
  if (v12 <= v10)
  {
    if (v12 < v10)
    {
      v15 = v10 - v12;
      v16 = 16 * v12;
      do
      {
        v17 = (*a3 + v16);
        *v17 = 0;
        v17[1] = 0;
        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  else if (v12 > v10)
  {
    v13 = v12;
    v14 = 16 * v12 - 16;
    do
    {
      --v13;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a3 + v14);
      a3 = v90;
      v14 -= 16;
    }

    while (v13 > v10);
  }

  *(a3 + 8) = v10;
  v18 = *(a4 + 12);
  if (v10 > v18)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a4, v10 - v18, 0);
  }

  v19 = *(a4 + 8);
  if (v19 <= v10)
  {
    if (v19 < v10)
    {
      v22 = v10 - v19;
      v23 = 16 * v19;
      do
      {
        v24 = (*a4 + v23);
        *v24 = 0;
        v24[1] = 0;
        v23 += 16;
        --v22;
      }

      while (v22);
    }
  }

  else if (v19 > v10)
  {
    v20 = v19;
    v21 = 16 * v19 - 16;
    do
    {
      --v20;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a4 + v21);
      v21 -= 16;
    }

    while (v20 > v10);
  }

  *(a4 + 8) = v10;
  *a5 = 0;
  v25 = a2[3];
  if (v25 <= 4)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, 5 - v25, 0);
  }

  v26 = a2[2];
  v27 = a6;
  if (v26 <= 5)
  {
    if (v26 != 5)
    {
      v29 = 16 * v26;
      do
      {
        v30 = (*a2 + v29);
        *v30 = 0;
        v30[1] = 0;
        v29 += 16;
      }

      while (v29 != 80);
    }
  }

  else if (v26 >= 6)
  {
    v28 = 16 * v26 - 16;
    do
    {
      --v26;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v28);
      v28 -= 16;
    }

    while (v26 > 5);
  }

  a2[2] = 5;
  v31 = *a2;
  v32 = *(*a2 + 24);
  v33 = *a2;
  if (v32 == *(*a2 + 28))
  {
    DgnPrimArray<unsigned int>::reallocElts(v31 + 16, 1, 1);
    v32 = *(v31 + 24);
    v33 = *a2;
  }

  *(*(v31 + 16) + 4 * v32) = 16777214;
  ++*(v31 + 24);
  v34 = *(v33 + 40);
  v35 = v33;
  if (v34 == *(v33 + 44))
  {
    DgnPrimArray<unsigned int>::reallocElts(v33 + 32, 1, 1);
    v34 = *(v33 + 40);
    v35 = *a2;
  }

  *(*(v33 + 32) + 4 * v34) = 16777213;
  ++*(v33 + 40);
  v36 = *(v35 + 56);
  v37 = v35;
  if (v36 == *(v35 + 60))
  {
    DgnPrimArray<unsigned int>::reallocElts(v35 + 48, 1, 1);
    v36 = *(v35 + 56);
    v37 = *a2;
  }

  *(*(v35 + 48) + 4 * v36) = 16777210;
  ++*(v35 + 56);
  v38 = *(v37 + 72);
  if (v38 == *(v37 + 76))
  {
    DgnPrimArray<unsigned int>::reallocElts(v37 + 64, 1, 1);
    v38 = *(v37 + 72);
  }

  *(*(v37 + 64) + 4 * v38) = 16777212;
  ++*(v37 + 72);
  *a5 = 5;
  v89 = MemChunkAlloc(0x70uLL, 0);
  Hash<Int32Pair,Int32Pair,Int32PairScope,int>::Hash(v89, 0, 16);
  v39 = *(a1 + 128);
  if (v39 || (v39 = *(a1 + 144)) != 0 || (v39 = *(a1 + 160)) != 0)
  {
    v40 = 0;
    v41 = v39;
    while (1)
    {
      v42 = *(a1 + 16);
      v43 = *(*(v42 + 256) + 4 * v40);
      if (v40 == v43)
      {
        break;
      }

      if (v40 < *(v42 + 388))
      {
        if (*(*(v42 + 104) + v40))
        {
          LmId = WordLanguageModel::getLmId(a1, v43);
          v52 = WordLanguageModel::getLmId(a1, v40);
          v42 = *(a1 + 16);
          if (LmId != v52)
          {
            WordLanguageModel::getLmId(a1, *(*(v42 + 256) + 4 * v40));
            WordLanguageModel::getLmId(a1, v40);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/ngram2fsm.cpp", 403, "lm/ngram2fsm", 2, "%u %u %u %u", v53, v54, v40);
            v42 = *(a1 + 16);
          }
        }
      }

      if (v40 < *(v42 + 388))
      {
        if (*(*(v42 + 104) + v40))
        {
          MaybeContextLmId = WordLanguageModel::getMaybeContextLmId(a1, *(*(v42 + 256) + 4 * v40));
          if (MaybeContextLmId != WordLanguageModel::getMaybeContextLmId(a1, v40))
          {
            WordLanguageModel::getMaybeContextLmId(a1, *(*(*(a1 + 16) + 256) + 4 * v40));
            WordLanguageModel::getMaybeContextLmId(a1, v40);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/ngram2fsm.cpp", 411, "lm/ngram2fsm", 2, "%u %u %u %u", v56, v57, v40);
          }
        }
      }

LABEL_105:
      if (++v40 == v41)
      {
        return DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v89);
      }
    }

    if (!*(*(v42 + 32) + 2 * v40))
    {
      v58 = *(v27 + 8);
      if (!v58)
      {
        goto LABEL_105;
      }

      v59 = *v27;
      v60 = 0xFFFFFFFFLL;
      while (1)
      {
        v61 = *v59++;
        if (v40 == v61)
        {
          break;
        }

        --v60;
        if (!--v58)
        {
          goto LABEL_105;
        }
      }

      if (!v60)
      {
        goto LABEL_105;
      }
    }

    v44 = a4;
    v45 = WordLanguageModel::getLmId(a1, v40);
    v46 = WordLanguageModel::getMaybeContextLmId(a1, v40);
    v48 = *(a1 + 112);
    v47 = *(a1 + 116);
    v92[0] = v45;
    v92[1] = v46;
    v49 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v89, v92);
    if (v49)
    {
      v50 = v49 + 5;
      a4 = v44;
      goto LABEL_69;
    }

    if (v48 == v45)
    {
      a4 = v44;
      if (WordLanguageModel::getWordId(a1, v45, 0) == 16777214)
      {
        v62 = 1;
LABEL_66:
        v91 = v62;
LABEL_68:
        v50 = &v91;
        Hash<Int32Pair,Int32Pair,Int32PairScope,int>::add(v89, v92, &v91);
LABEL_69:
        v63 = *v50;
        v64 = *v90 + 16 * v45;
        v65 = *(v64 + 8);
        if (!v65)
        {
          goto LABEL_75;
        }

        v66 = *v64;
        v67 = *(v64 + 8);
        v68 = 0xFFFFFFFFLL;
        while (1)
        {
          v69 = *v66++;
          if (v69 == v63)
          {
            break;
          }

          --v68;
          if (!--v67)
          {
            goto LABEL_75;
          }
        }

        if (!v68)
        {
LABEL_75:
          if (v65 == *(v64 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v64, 1, 1);
            v65 = *(v64 + 8);
          }

          *(*v64 + 4 * v65) = v63;
          ++*(v64 + 8);
        }

        v70 = *a4 + 16 * v46;
        v71 = *(v70 + 8);
        if (!v71)
        {
          goto LABEL_84;
        }

        v72 = *v70;
        v73 = *(v70 + 8);
        v74 = 0xFFFFFFFFLL;
        while (1)
        {
          v75 = *v72++;
          if (v75 == v63)
          {
            break;
          }

          --v74;
          if (!--v73)
          {
            goto LABEL_84;
          }
        }

        if (!v74)
        {
LABEL_84:
          if (v71 == *(v70 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*a4 + 16 * v46, 1, 1);
            v71 = *(v70 + 8);
          }

          *(*v70 + 4 * v71) = v63;
          ++*(v70 + 8);
        }

        if ((v63 - 3) <= 0xFFFFFFFD)
        {
          v76 = a2[2];
          if (v76 <= v63)
          {
            v77 = (v63 + 1);
            v78 = a2[3];
            if (v77 > v78)
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a2, v77 - v78, 0);
              v76 = a2[2];
            }

            if (v76 <= v77)
            {
              if (v76 < v77)
              {
                v81 = 16 * v76;
                v82 = v77 - v76;
                do
                {
                  v83 = (*a2 + v81);
                  *v83 = 0;
                  v83[1] = 0;
                  v81 += 16;
                  --v82;
                }

                while (v82);
              }
            }

            else if (v76 > v77)
            {
              v79 = v76;
              v80 = 16 * v76 - 16;
              do
              {
                --v79;
                DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v80);
                v80 -= 16;
              }

              while (v79 > v77);
            }

            a2[2] = v77;
            v27 = v87;
            a4 = v44;
          }

          v84 = *a2 + 16 * v63;
          v85 = *(v84 + 8);
          if (v85 == *(v84 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*a2 + 16 * v63, 1, 1);
            v85 = *(v84 + 8);
          }

          *(*v84 + 4 * v85) = v40;
          ++*(v84 + 8);
        }

        goto LABEL_105;
      }
    }

    else
    {
      a4 = v44;
      if (v47 == v45 && WordLanguageModel::getWordId(a1, v45, 0) == 16777213)
      {
        v62 = 2;
        goto LABEL_66;
      }
    }

    v91 = *a5;
    *a5 = v91 + 1;
    goto LABEL_68;
  }

  return DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v89);
}

uint64_t WordLanguageModel::getLmId(WordLanguageModel *this, unsigned int a2)
{
  if (a2 == 16777214)
  {
    return *(this + 28);
  }

  if (a2 == 16777213)
  {
    return *(this + 29);
  }

  v3 = *(this + 32);
  if (v3)
  {
    if (v3 > a2)
    {
      return *(*(this + 15) + 4 * a2);
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 36);
  if (v4)
  {
    if (v4 > a2)
    {
      v5 = *(*(this + 17) + 2 * a2);
      v6 = v5 == 0xFFFF;
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(this + 40) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(this + 19) + a2);
  v6 = v5 == 255;
LABEL_13:
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t WordLanguageModel::getMaybeContextLmId(WordLanguageModel *this, unsigned int a2)
{
  if (a2 == 16777212)
  {
    return 4294967294;
  }

  if (a2 == 16777214)
  {
    return *(this + 28);
  }

  v3 = *(this + 32);
  v4 = v3;
  if (!v3)
  {
    v4 = *(this + 36);
    if (!v4)
    {
      v4 = *(this + 40);
    }
  }

  if (v4 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 276) == 1)
  {
    if (*(this + 72))
    {
      v5 = *(this + 35);
      return *(v5 + 4 * a2);
    }

    if (*(this + 76))
    {
      v6 = *(this + 37);
LABEL_20:
      v7 = *(v6 + 2 * a2);
      v8 = v7 == 0xFFFF;
      goto LABEL_24;
    }

    v9 = *(this + 39);
  }

  else
  {
    if (v3)
    {
      v5 = *(this + 15);
      return *(v5 + 4 * a2);
    }

    if (*(this + 36))
    {
      v6 = *(this + 17);
      goto LABEL_20;
    }

    v9 = *(this + 19);
  }

  v7 = *(v9 + a2);
  v8 = v7 == 255;
LABEL_24:
  if (v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void *WordLanguageModel::getWordTransducer(const WordLanguageModel *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/ngram2fsm.cpp", 459, "lm/ngram2fsm", 1, "%u", a7, a8, **a2);
  }

  v334 = 2;
  v333[0] = 0;
  v333[1] = 0;
  v332[0] = 0;
  v332[1] = 0;
  WordLanguageModel::getWordIdToTrGrmLmIdArray(a1, a4, v333, v332, &v334 + 1, a7);
  v12 = v334;
  LODWORD(v334) = v334 + 1;
  v331 = v12;
  v13 = *(a1 + 28);
  if (v13 != -1)
  {
    v14 = v333[0] + 16 * v13;
    v15 = *(v14 + 8);
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = *v14;
    v17 = 0xFFFFFFFFLL;
    v18 = *(v14 + 8);
    while (1)
    {
      v19 = *v16++;
      if (v19 == 1)
      {
        break;
      }

      --v17;
      if (!--v18)
      {
        goto LABEL_10;
      }
    }

    if (!v17)
    {
LABEL_10:
      if (v15 == *(v14 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v14, 1, 1);
        v15 = *(v14 + 8);
      }

      *(*v14 + 4 * v15) = 1;
      ++*(v14 + 8);
      v13 = *(a1 + 28);
    }

    v20 = v332[0] + 16 * v13;
    v21 = *(v20 + 8);
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = *v20;
    v23 = 0xFFFFFFFFLL;
    v24 = *(v20 + 8);
    while (1)
    {
      v25 = *v22++;
      if (v25 == 1)
      {
        break;
      }

      --v23;
      if (!--v24)
      {
        goto LABEL_19;
      }
    }

    if (!v23)
    {
LABEL_19:
      if (v21 == *(v20 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v20, 1, 1);
        v21 = *(v20 + 8);
      }

      *(*v20 + 4 * v21) = 1;
      ++*(v20 + 8);
    }
  }

  v26 = *(a1 + 29);
  if (v26 != -1)
  {
    v27 = v333[0] + 16 * v26;
    v28 = *(v27 + 8);
    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = *v27;
    v30 = 0xFFFFFFFFLL;
    v31 = *(v27 + 8);
    while (1)
    {
      v32 = *v29++;
      if (v32 == 2)
      {
        break;
      }

      --v30;
      if (!--v31)
      {
        goto LABEL_29;
      }
    }

    if (!v30)
    {
LABEL_29:
      if (v28 == *(v27 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v27, 1, 1);
        v28 = *(v27 + 8);
      }

      *(*v27 + 4 * v28) = 2;
      ++*(v27 + 8);
      v26 = *(a1 + 29);
    }

    v33 = v332[0] + 16 * v26;
    v34 = *(v33 + 8);
    if (v34)
    {
      v35 = 0;
      v36 = *v33;
      while (*(v36 + v35) != 2)
      {
        v35 += 4;
        if (4 * v34 == v35)
        {
          goto LABEL_41;
        }
      }

      if (v35 != 0x3FFFFFFFCLL)
      {
        if (v34 == *(v33 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(v33, 1, 1);
          v34 = *(v33 + 8);
          v36 = *v33;
        }

        *(v36 + 4 * v34) = 2;
        ++*(v33 + 8);
      }
    }
  }

LABEL_41:
  v37 = HIDWORD(v334);
  v329 = 0;
  v330 = 0;
  if (HIDWORD(v334))
  {
    __b = 0;
    v38 = realloc_array(0, &__b, 4 * HIDWORD(v334), 0, 0, 1);
    v39 = __b;
    v329 = __b;
    LODWORD(v330) = v37;
    HIDWORD(v330) = v38 >> 2;
    v40 = (v37 + 3) & 0x1FFFFFFFCLL;
    v41 = vdupq_n_s64(v37 - 1);
    v42 = xmmword_26286BF80;
    v43 = xmmword_26286B680;
    v44 = __b + 8;
    v45 = vdupq_n_s64(4uLL);
    do
    {
      v46 = vmovn_s64(vcgeq_u64(v41, v43));
      if (vuzp1_s16(v46, *v41.i8).u8[0])
      {
        *(v44 - 2) = v12;
      }

      if (vuzp1_s16(v46, *&v41).i8[2])
      {
        *(v44 - 1) = v12;
      }

      if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, *&v42))).i32[1])
      {
        *v44 = v12;
        v44[1] = v12;
      }

      v42 = vaddq_s64(v42, v45);
      v43 = vaddq_s64(v43, v45);
      v44 += 4;
      v40 -= 4;
    }

    while (v40);
  }

  else
  {
    v39 = 0;
    LODWORD(v330) = 0;
  }

  v316 = a4;
  v47 = v12;
  if (*(a1 + 28) != -1)
  {
    v47 = v12;
    if (*(a1 + 16) != 1)
    {
      v47 = v334;
      LODWORD(v334) = v334 + 1;
    }
  }

  v39[1] = v47;
  v48 = *(a3 + 8);
  if (v48 == *(a3 + 12))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
    v48 = *(a3 + 8);
  }

  v49 = *a3 + 16 * v48;
  *v49 = 0;
  *(v49 + 4) = v47;
  *(v49 + 8) = 1;
  v50 = *(a3 + 8) + 1;
  *(a3 + 8) = v50;
  v51 = a1;
  if (*(a1 + 29) == -1)
  {
    if (v50 == *(a3 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
      v50 = *(a3 + 8);
    }

    v52 = *a3 + 16 * v50;
    *v52 = v12;
    *(v52 + 4) = 0x200000001;
    *(v52 + 12) = 0;
    ++*(a3 + 8);
    v51 = a1;
  }

  v329[2] = 1;
  if (a5 == 0xFFFFFF)
  {
    v53 = -1;
  }

  else if (*(v51 + 32))
  {
    v53 = *(*(v51 + 15) + 4 * a5);
  }

  else
  {
    if (*(v51 + 36))
    {
      v54 = *(*(v51 + 17) + 2 * a5);
      v55 = v54 == 0xFFFF;
    }

    else
    {
      v54 = *(*(v51 + 19) + a5);
      v55 = v54 == 255;
    }

    if (v55)
    {
      v53 = -1;
    }

    else
    {
      v53 = v54;
    }
  }

  v56 = *(v51 + 16);
  if (v56 >= 2)
  {
    NGramIterator::NGramIterator(&__b, a1, 2, 1);
    while (NGramIterator::next(&__b, v57, v58, v59, v60, v61, v62, v63))
    {
      v64 = v332[0] + 16 * *v326[0];
      v65 = *(v64 + 8);
      if (v65)
      {
        for (i = 0; i < v65; ++i)
        {
          v67 = *(*v64 + 4 * i);
          if (v67 != 2)
          {
            v68 = v329[v67];
            if (v68 == v12)
            {
              v68 = v334;
              LODWORD(v334) = v334 + 1;
              v329[v67] = v68;
            }

            v69 = v328;
            v70 = *(a3 + 8);
            if (v70 == *(a3 + 12))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
              v70 = *(a3 + 8);
            }

            v71 = *a3 + 16 * v70;
            *v71 = v68;
            *(v71 + 4) = v12;
            *(v71 + 8) = 3;
            *(v71 + 12) = v69;
            *(v71 + 14) = 0;
            ++*(a3 + 8);
            v65 = *(v64 + 8);
            a4 = v316;
          }
        }
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
    v56 = *(a1 + 16);
  }

  if (v56)
  {
    v322 = 0;
    v323 = 0;
    if (v37)
    {
      __b = 0;
      v72 = realloc_array(0, &__b, 2 * v37, 0, 0, 1);
      v322 = __b;
      LODWORD(v323) = v37;
      HIDWORD(v323) = v72 >> 1;
      memset_pattern16(__b, &unk_262888330, 2 * v37);
    }

    else
    {
      LODWORD(v323) = 0;
    }

    NGramIterator::NGramIterator(&__b, a1, 1, 0);
    v73 = 0;
    while ((NGramIterator::next(&__b, v74, v75, v76, v77, v78, v79, v80) & 1) != 0)
    {
      v81 = *v326[0];
      v82 = v333[0] + 16 * v81;
      v83 = *(v82 + 8);
      if (v83)
      {
        v84 = *v82;
        v85 = *a4;
        v86 = v322;
        do
        {
          v88 = *v84++;
          v87 = v88;
          if (*(v85 + 16 * v88 + 8))
          {
            if (v81 == v53)
            {
              v86[v87] = a6;
              v73 = 1;
            }

            else
            {
              if (*(a1 + 16) == 1)
              {
                v89 = v327;
              }

              else
              {
                v89 = v328;
              }

              v86[v87] = v89;
            }
          }

          --v83;
        }

        while (v83);
      }
    }

    if (v37)
    {
      for (j = 0; j != v37; ++j)
      {
        if (j != 1)
        {
          v91 = *(v322 + j);
          if (v91 != 20000)
          {
            v92 = v329[j];
            v93 = *(a3 + 8);
            if (v93 == *(a3 + 12))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
              v93 = *(a3 + 8);
            }

            v94 = *a3 + 16 * v93;
            *v94 = v12;
            *(v94 + 4) = v92;
            *(v94 + 8) = j;
            *(v94 + 12) = v91;
            *(v94 + 14) = 0;
            ++*(a3 + 8);
            a4 = v316;
          }
        }
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v322);
  }

  else
  {
    v73 = 0;
  }

  if (v53 != -1 && (v73 & 1) == 0)
  {
    v95 = **(v333[0] + 16 * v53);
    v96 = *(a3 + 8);
    if (v96 == *(a3 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
      v96 = *(a3 + 8);
    }

    v97 = *a3 + 16 * v96;
    *v97 = v12;
    *(v97 + 4) = v12;
    *(v97 + 8) = v95;
    *(v97 + 12) = a6;
    *(v97 + 14) = 0;
    ++*(a3 + 8);
    a4 = v316;
  }

  v98 = MemChunkAlloc(0x70uLL, 0);
  Hash<Int32Pair,Int32Pair,Int32PairScope,int>::Hash(v98, 0, 16);
  v99 = *(a1 + 16);
  v317 = v98;
  if (v99 >= 3)
  {
    NGramIterator::NGramIterator(&__b, a1, 3, 1);
    while (NGramIterator::next(&__b, v100, v101, v102, v103, v104, v105, v106))
    {
      v107 = v332[0] + 16 * *v326[0];
      v108 = *(v107 + 8);
      if (v108)
      {
        v109 = 0;
        v110 = v332[0] + 16 * *(v326[0] + 4);
        *v314 = v332[0] + 16 * *v326[0];
        do
        {
          v111 = *(*v107 + 4 * v109);
          if (v111 != 2 && *(*a4 + 16 * v111 + 8) != 0)
          {
            v113 = *(v110 + 8);
            if (v113)
            {
              for (k = 0; k < v113; ++k)
              {
                v115 = *(*v110 + 4 * k);
                if (v115 - 1 >= 2 && *(*a4 + 16 * v115 + 8) != 0)
                {
                  v318 = __PAIR64__(v115, v111);
                  v322 = 0;
                  v320 = &v334;
                  if (Hash<Int32Pair,Int32Pair,Int32PairScope,int>::insert(v317, &v318, &v322, &v320))
                  {
                    LODWORD(v334) = v334 + 1;
                  }

                  v117 = *v320;
                  v118 = v329[v115];
                  v119 = v328;
                  v120 = *(a3 + 8);
                  if (v120 == *(a3 + 12))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                    v120 = *(a3 + 8);
                  }

                  v121 = *a3 + 16 * v120;
                  *v121 = v117;
                  *(v121 + 4) = v118;
                  *(v121 + 8) = 3;
                  *(v121 + 12) = v119;
                  *(v121 + 14) = 0;
                  ++*(a3 + 8);
                  v113 = *(v110 + 8);
                  a4 = v316;
                }
              }

              v107 = *v314;
              v108 = *(*v314 + 8);
            }
          }

          ++v109;
        }

        while (v109 < v108);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
    v99 = *(a1 + 16);
    v98 = v317;
  }

  if (v99 >= 2)
  {
    NGramIterator::NGramIterator(&__b, a1, 2, 0);
    while (NGramIterator::next(&__b, v122, v123, v124, v125, v126, v127, v128))
    {
      v129 = v332[0] + 16 * *v326[0];
      v130 = *(v129 + 8);
      if (v130)
      {
        v131 = 0;
        v132 = v333[0] + 16 * *(v326[0] + 4);
        do
        {
          v133 = *(*v129 + 4 * v131);
          if (v133 != 2 && *(*a4 + 16 * v133 + 8) != 0)
          {
            v135 = *(v132 + 8);
            if (v135)
            {
              for (m = 0; m < v135; ++m)
              {
                v137 = *(*v132 + 4 * m);
                if (v137 != 1 && *(*a4 + 16 * v137 + 8) != 0)
                {
                  v322 = __PAIR64__(v137, v133);
                  Bucket = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v98, &v322);
                  if (*Bucket)
                  {
                    v140 = *Bucket + 5;
                  }

                  else
                  {
                    v140 = &v329[v137];
                  }

                  v141 = *v140;
                  v142 = v329[v133];
                  v143 = v327;
                  v144 = *(a3 + 8);
                  if (v144 == *(a3 + 12))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                    v144 = *(a3 + 8);
                  }

                  v145 = *a3 + 16 * v144;
                  *v145 = v142;
                  *(v145 + 4) = v141;
                  *(v145 + 8) = v137;
                  *(v145 + 12) = v143;
                  *(v145 + 14) = 0;
                  ++*(a3 + 8);
                  v135 = *(v132 + 8);
                  a4 = v316;
                  v98 = v317;
                }
              }

              v130 = *(v129 + 8);
            }
          }

          ++v131;
        }

        while (v131 < v130);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
  }

  v146 = a3;
  v147 = MemChunkAlloc(0x70uLL, 0);
  Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::Hash(v147, 0, 16);
  v148 = *(a1 + 16);
  v315 = v147;
  if (v148 >= 4)
  {
    NGramIterator::NGramIterator(&__b, a1, 4, 1);
    while (NGramIterator::next(&__b, v149, v150, v151, v152, v153, v154, v155))
    {
      v156 = v332[0] + 16 * *v326[0];
      v157 = *(v156 + 8);
      if (v157)
      {
        v158 = 0;
        v159 = v332[0] + 16 * *(v326[0] + 4);
        v160 = v332[0] + 16 * *(v326[0] + 8);
        v302 = v332[0] + 16 * *v326[0];
        v310 = v159;
        do
        {
          v161 = *(*v156 + 4 * v158);
          if (v161 != 2 && *(*a4 + 16 * v161 + 8) != 0)
          {
            v163 = *(v159 + 8);
            if (v163)
            {
              v307 = v158;
              for (n = 0; n < v163; ++n)
              {
                v165 = *(*v159 + 4 * n);
                if ((v165 - 1) >= 2 && *(*a4 + 16 * v165 + 8) != 0)
                {
                  v167 = *(v160 + 8);
                  if (v167)
                  {
                    for (ii = 0; ii < v167; ++ii)
                    {
                      v169 = *(*v160 + 4 * ii);
                      if (v169 != 1 && *(*a4 + 16 * v169 + 8) != 0)
                      {
                        v322 = __PAIR64__(v165, v161);
                        LODWORD(v323) = v169;
                        v320 = 0;
                        v318 = &v334;
                        if (Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::insert(v315, &v322, &v320, &v318))
                        {
                          LODWORD(v334) = v334 + 1;
                        }

                        v171 = *v318;
                        v320 = __PAIR64__(v169, v165);
                        v172 = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v317, &v320);
                        if (*v172)
                        {
                          v173 = *v172 + 5;
                        }

                        else
                        {
                          v173 = &v329[v169];
                        }

                        v174 = *v173;
                        v175 = v328;
                        v176 = *(a3 + 8);
                        if (v176 == *(a3 + 12))
                        {
                          DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                          v176 = *(a3 + 8);
                        }

                        v177 = *a3 + 16 * v176;
                        *v177 = v171;
                        *(v177 + 4) = v174;
                        *(v177 + 8) = 3;
                        *(v177 + 12) = v175;
                        *(v177 + 14) = 0;
                        ++*(a3 + 8);
                        v167 = *(v160 + 8);
                        a4 = v316;
                      }
                    }

                    v159 = v310;
                    v163 = *(v310 + 8);
                  }
                }
              }

              v156 = v302;
              v157 = *(v302 + 8);
              v158 = v307;
            }
          }

          ++v158;
        }

        while (v158 < v157);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
    v148 = *(a1 + 16);
    v98 = v317;
    v147 = v315;
  }

  if (v148 >= 3)
  {
    NGramIterator::NGramIterator(&__b, a1, 3, 0);
LABEL_206:
    while (NGramIterator::next(&__b, v178, v179, v180, v181, v182, v183, v184))
    {
      v185 = v332[0] + 16 * *v326[0];
      v186 = *(v185 + 8);
      if (v186)
      {
        v187 = 0;
        v188 = v332[0] + 16 * *(v326[0] + 4);
        v189 = v333[0] + 16 * *(v326[0] + 8);
        v303 = v332[0] + 16 * *v326[0];
        v311 = v188;
        while (1)
        {
          v190 = *(*v185 + 4 * v187);
          if (v190 != 2 && *(*a4 + 16 * v190 + 8) != 0)
          {
            v192 = *(v188 + 8);
            if (v192)
            {
              break;
            }
          }

LABEL_242:
          if (++v187 >= v186)
          {
            goto LABEL_206;
          }
        }

        v308 = v187;
        v193 = 0;
        while (1)
        {
          v194 = *(*v188 + 4 * v193);
          if ((v194 - 1) >= 2 && *(*a4 + 16 * v194 + 8) != 0)
          {
            v196 = *(v189 + 8);
            if (v196)
            {
              break;
            }
          }

LABEL_240:
          if (++v193 >= v192)
          {
            v185 = v303;
            v186 = *(v303 + 8);
            v147 = v315;
            v187 = v308;
            goto LABEL_242;
          }
        }

        v197 = 0;
        while (2)
        {
          v198 = *(*v189 + 4 * v197);
          if (v198 != 1 && *(*a4 + 16 * v198 + 8) != 0)
          {
            v320 = __PAIR64__(v194, v190);
            v200 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v98, &v320);
            if (v200)
            {
              v201 = v200 + 5;
              goto LABEL_229;
            }

            if (v190 == 1)
            {
              v201 = &v329[v194];
LABEL_229:
              v322 = __PAIR64__(v194, v190);
              LODWORD(v323) = v198;
              v202 = *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(v315, &v322);
              if (v202)
              {
                v203 = (v202 + 24);
              }

              else
              {
                v318 = __PAIR64__(v198, v194);
                v204 = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v98, &v318);
                if (*v204)
                {
                  v203 = *v204 + 5;
                }

                else
                {
                  v203 = &v329[v198];
                }
              }

              v205 = *v201;
              v206 = *v203;
              v207 = v327;
              v146 = a3;
              v208 = *(a3 + 8);
              if (v208 == *(a3 + 12))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                v208 = *(a3 + 8);
              }

              v209 = *a3 + 16 * v208;
              *v209 = v205;
              *(v209 + 4) = v206;
              *(v209 + 8) = v198;
              *(v209 + 12) = v207;
              *(v209 + 14) = 0;
              ++*(a3 + 8);
              a4 = v316;
              v98 = v317;
            }

            v196 = *(v189 + 8);
          }

          if (++v197 >= v196)
          {
            v188 = v311;
            v192 = *(v311 + 8);
            goto LABEL_240;
          }

          continue;
        }
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
    if (*(a1 + 16) >= 4u)
    {
      NGramIterator::NGramIterator(&__b, a1, 4, 0);
LABEL_246:
      while (NGramIterator::next(&__b, v210, v211, v212, v213, v214, v215, v216))
      {
        v300 = v332[0] + 16 * *v326[0];
        v217 = *(v300 + 8);
        if (v217)
        {
          v218 = 0;
          v219 = v332[0] + 16 * *(v326[0] + 4);
          v220 = v332[0] + 16 * *(v326[0] + 8);
          v221 = v333[0] + 16 * *(v326[0] + 12);
          v304 = v219;
          v309 = v220;
          while (1)
          {
            v301 = v218;
            v222 = *(*v300 + 4 * v218);
            if (*(*a4 + 16 * v222 + 8))
            {
              v223 = *(v219 + 8);
              if (v223)
              {
                break;
              }
            }

LABEL_290:
            v218 = v301 + 1;
            if (v301 + 1 >= v217)
            {
              goto LABEL_246;
            }
          }

          v224 = 0;
          while (1)
          {
            v225 = *(*v219 + 4 * v224);
            if ((v225 - 1) >= 2 && *(*a4 + 16 * v225 + 8) != 0)
            {
              v227 = *(v220 + 8);
              if (v227)
              {
                break;
              }
            }

LABEL_288:
            v224 = (v224 + 1);
            if (v224 >= v223)
            {
              v217 = *(v300 + 8);
              v98 = v317;
              goto LABEL_290;
            }
          }

          v306 = v224;
          v228 = 0;
          while (1)
          {
            v229 = *(*v220 + 4 * v228);
            if ((v229 - 1) >= 2 && *(*a4 + 16 * v229 + 8) != 0)
            {
              v231 = *(v221 + 8);
              if (v231)
              {
                break;
              }
            }

LABEL_286:
            if (++v228 >= v227)
            {
              v219 = v304;
              v224 = v306;
              v223 = *(v304 + 8);
              goto LABEL_288;
            }
          }

          v312 = v228;
          v232 = 0;
          while (2)
          {
            v233 = *(*v221 + 4 * v232);
            if (v233 != 1 && *(*a4 + 16 * v233 + 8) != 0)
            {
              v322 = __PAIR64__(v225, v222);
              LODWORD(v323) = v229;
              v235 = *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(v147, &v322);
              if (v222 != 1 || v235)
              {
                if (v235)
                {
                  v237 = (v235 + 24);
LABEL_274:
                  v320 = __PAIR64__(v229, v225);
                  LODWORD(v321) = v233;
                  v238 = *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(v147, &v320);
                  if (v238)
                  {
                    v239 = (v238 + 24);
                  }

                  else
                  {
                    v318 = __PAIR64__(v233, v229);
                    v240 = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v317, &v318);
                    if (*v240)
                    {
                      v239 = *v240 + 5;
                    }

                    else
                    {
                      v239 = &v329[v233];
                      if (*v239 == -1)
                      {
                        v239 = &v331;
                      }
                    }
                  }

                  v241 = *v237;
                  v242 = *v239;
                  v243 = v327;
                  v146 = a3;
                  v244 = *(a3 + 8);
                  if (v244 == *(a3 + 12))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                    v244 = *(a3 + 8);
                  }

                  v245 = *a3 + 16 * v244;
                  *v245 = v241;
                  *(v245 + 4) = v242;
                  *(v245 + 8) = v233;
                  *(v245 + 12) = v243;
                  *(v245 + 14) = 0;
                  ++*(a3 + 8);
                  v147 = v315;
                  a4 = v316;
                }
              }

              else
              {
                v320 = __PAIR64__(v229, v225);
                v236 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v317, &v320);
                if (v236)
                {
                  v237 = v236 + 5;
                  goto LABEL_274;
                }
              }

              v231 = *(v221 + 8);
            }

            if (++v232 >= v231)
            {
              v220 = v309;
              v228 = v312;
              v227 = *(v309 + 8);
              goto LABEL_286;
            }

            continue;
          }
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(v326);
    }
  }

  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v147);
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v98);
  v246 = v334;
  v247 = v334 - 1;
  v248 = *(v146 + 8);
  if (!v248)
  {
    goto LABEL_303;
  }

  v249 = (*v146 + 4);
  do
  {
    v250 = v246 - 1;
    if (*v249 != 1)
    {
      if (*v249 != v247)
      {
        goto LABEL_299;
      }

      v250 = 1;
    }

    *v249 = v250;
LABEL_299:
    if (*(v249 - 1) == v247)
    {
      *(v249 - 1) = 1;
    }

    v249 += 4;
    --v248;
  }

  while (v248);
  v246 = v334;
LABEL_303:
  __b = 0;
  v325 = 0;
  if (!v246)
  {
    v322 = 0;
    v323 = 0;
    goto LABEL_311;
  }

  v322 = 0;
  v251 = realloc_array(0, &v322, 4 * v246, 0, 0, 1);
  v323 = 0;
  __b = v322;
  v252 = v334;
  LODWORD(v325) = v246;
  HIDWORD(v325) = v251 >> 2;
  v322 = 0;
  if (!v334)
  {
LABEL_311:
    LODWORD(v323) = 0;
    v320 = 0;
    v321 = 0;
    goto LABEL_312;
  }

  v320 = 0;
  v253 = realloc_array(0, &v320, 4 * v334, 0, 0, 1);
  v321 = 0;
  v322 = v320;
  v254 = v334;
  LODWORD(v323) = v252;
  HIDWORD(v323) = v253 >> 2;
  v320 = 0;
  if (!v334)
  {
LABEL_312:
    v257 = 0;
    LODWORD(v321) = 0;
    v258 = __b;
    goto LABEL_313;
  }

  v318 = 0;
  v255 = realloc_array(0, &v318, 4 * v334, 0, 0, 1);
  v256 = v318;
  v320 = v318;
  v257 = v334;
  LODWORD(v321) = v254;
  HIDWORD(v321) = v255 >> 2;
  v258 = __b;
  if (v334 >= 1)
  {
    v259 = 0;
    do
    {
      v258[v259] = 0;
      v256[v259++] = 0;
      v257 = v334;
    }

    while (v259 < v334);
  }

LABEL_313:
  v260 = *(v146 + 8);
  if (v260)
  {
    v261 = 0;
    v262 = *v146;
    v263 = v320;
    do
    {
      if (v262[2] == 3)
      {
        v264 = *v262;
        if (!v263[v264])
        {
          v263[v264] = v261;
          v258[*v262] = 1;
          v260 = *(v146 + 8);
        }
      }

      ++v261;
      v262 += 4;
    }

    while (v261 < v260);
    v257 = v334;
  }

  v265 = v322;
  if (v257 >= 1)
  {
    v266 = 0;
    do
    {
      v258[v266] = 0;
      v265[v266++] = 0;
    }

    while (v266 < v334);
  }

  *v258 = 1;
  v265[v247] = 1;
  v267 = *v146;
  v268 = *(v146 + 8);
  if (v268)
  {
    v269 = 0;
    v270 = 0;
    while (1)
    {
      v271 = (v267 + 16 * v269);
      if (v258[*v271] == 1)
      {
        v272 = v271[1];
        if (!v258[v272])
        {
          v270 = 1;
          v258[v272] = 1;
          v268 = *(v146 + 8);
        }
      }

      if (++v269 >= v268)
      {
        v269 = 0;
        v273 = v270 & (v268 != 0);
        v270 = 0;
        if ((v273 & 1) == 0)
        {
          break;
        }
      }
    }

    v267 = *v146;
  }

  v274 = v267 + 4;
  do
  {
    v275 = *(v146 + 8);
    v276 = (v275 - 1);
    if (v275 - 1 < 0)
    {
      break;
    }

    v277 = 0;
    v278 = v276 + 1;
    v279 = (v274 + 16 * v276);
    do
    {
      if (v265[*v279] == 1)
      {
        v280 = *(v279 - 1);
        if (!v265[v280])
        {
          v277 = 1;
          v265[v280] = 1;
        }
      }

      v279 -= 4;
    }

    while (v278-- > 1);
  }

  while ((v277 & 1) != 0);
  v282 = v334;
  v318 = 0;
  v319 = 0;
  if (v334)
  {
    v335 = 0;
    v283 = realloc_array(0, &v335, 4 * v334, 0, 0, 1);
    v284 = v335;
    v318 = v335;
    v285 = v334;
    LODWORD(v319) = v282;
    HIDWORD(v319) = v283 >> 2;
    if (v334 >= 1)
    {
      v286 = 0;
      v287 = 0;
      v288 = __b;
      v289 = v322;
      do
      {
        if (v288[v286] == 1 && v289[v286] == 1)
        {
          v284[v286] = v287++;
          v285 = v334;
        }

        ++v286;
      }

      while (v286 < v285);
    }
  }

  else
  {
    v284 = 0;
    LODWORD(v319) = 0;
  }

  v290 = *(v146 + 8);
  if (v290)
  {
    v291 = 0;
    v292 = 0;
    v293 = 0;
    do
    {
      v294 = *v146;
      v295 = (*v146 + v291);
      v296 = *v295;
      if (*(__b + v296))
      {
        v297 = v295[1];
        if (*(v322 + v297))
        {
          *v295 = v284[v296];
          v295[1] = v284[v297];
          if (v292 != v293)
          {
            *(v294 + 16 * v293) = *v295;
            v290 = *(v146 + 8);
          }

          ++v293;
        }
      }

      ++v292;
      v291 += 16;
    }

    while (v292 < v290);
    v298 = *(v146 + 12);
    if (v293 > v298)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v146, v293 - v298, 0);
    }
  }

  else
  {
    v293 = 0;
  }

  *(v146 + 8) = v293;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v318);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v320);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v322);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v329);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v332);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v333);
}

void sub_26270E568(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 160);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 - 136);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::add(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  HIDWORD(v7) = *a2;
  LODWORD(v7) = *a2;
  v8 = (v7 >> 19) + a2[1];
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = (-1640531527 * v8) >> -v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v5 + 80);
  v12 = *(v5 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((v5 + 24));
    v12 = *(v5 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(v5 + 32) = *v12;
  *(v12 + 8) = 0;
  *(v12 + 12) = *a2;
  *(v12 + 20) = *a3;
  *(v12 + 8) = v8;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v12 = *v13;
  }

  else
  {
    *v12 = 0;
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v14;
        v14 = *v14;
      }

      while (v14);
    }
  }

  *v13 = v12;
  return result;
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524018;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 20;
  }

  else
  {
    v7 = 24;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26270E860(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<Int32Pair,Int32Pair,Int32PairScope,int>::~Hash(uint64_t a1)
{
  Hash<Int32Pair,Int32Pair,Int32PairScope,int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524018;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::insert(uint64_t a1, _DWORD *a2, void *a3, _DWORD **a4)
{
  v8 = *(a1 + 12);
  if (*(a1 + 8) >= v8 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v8);
  }

  v9 = a2[1];
  HIDWORD(v10) = *a2;
  LODWORD(v10) = *a2;
  v11 = (v10 >> 19) + v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (-1640531527 * v11) >> -v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 80);
  v15 = *(v14 + 8 * v13);
  if (!v15)
  {
LABEL_13:
    v17 = *(a1 + 32);
    if (!v17)
    {
      DgnPool::addChunk((a1 + 24));
      v17 = *(a1 + 32);
    }

    *(a1 + 32) = *v17;
    v18 = *a4;
    *(v17 + 8) = 0;
    *(v17 + 12) = *a2;
    *(v17 + 20) = *v18;
    *a4 = (v17 + 20);
    *a3 = v17 + 12;
    *(v17 + 8) = v11;
    ++*(a1 + 8);
    if (*(a1 + 20))
    {
      *v17 = *(v14 + 8 * v13);
    }

    else
    {
      *v17 = 0;
      v19 = *(v14 + 8 * v13);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
        *v20 = v17;
        return 1;
      }
    }

    *(v14 + 8 * v13) = v17;
    return 1;
  }

  while (*(v15 + 2) != v11 || *(v15 + 3) != *a2 || *(v15 + 4) != v9)
  {
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  result = 0;
  *a3 = v15 + 12;
  *a4 = v15 + 5;
  return result;
}

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875241D0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 24;
  }

  else
  {
    v7 = 28;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26270EB50(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::~Hash(uint64_t a1)
{
  Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::~Hash(uint64_t a1)
{
  *a1 = &unk_2875241D0;
  if (*(a1 + 8))
  {
    Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 3);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::insert(uint64_t a1, _DWORD *a2, void *a3, _DWORD **a4)
{
  v8 = *(a1 + 12);
  if (*(a1 + 8) >= v8 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v8);
  }

  v9 = a2[1];
  HIDWORD(v10) = *a2;
  LODWORD(v10) = *a2;
  HIDWORD(v10) = (v10 >> 19) + v9;
  LODWORD(v10) = HIDWORD(v10);
  v11 = a2[2];
  v12 = (v10 >> 19) + v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (-1640531527 * v12) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  v16 = *(v15 + 8 * v14);
  if (!v16)
  {
LABEL_12:
    v17 = *(a1 + 32);
    if (!v17)
    {
      DgnPool::addChunk((a1 + 24));
      v17 = *(a1 + 32);
    }

    *(a1 + 32) = *v17;
    v18 = *a4;
    *(v17 + 8) = 0;
    v19 = a2[2];
    *(v17 + 12) = *a2;
    *(v17 + 20) = v19;
    *(v17 + 24) = *v18;
    *a4 = (v17 + 24);
    *a3 = v17 + 12;
    *(v17 + 8) = v12;
    ++*(a1 + 8);
    if (*(a1 + 20))
    {
      *v17 = *(v15 + 8 * v14);
    }

    else
    {
      *v17 = 0;
      v20 = *(v15 + 8 * v14);
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
        *v21 = v17;
        return 1;
      }
    }

    *(v15 + 8 * v14) = v17;
    return 1;
  }

  while (*(v16 + 2) != v12 || *(v16 + 3) != *a2 || *(v16 + 4) != v9 || *(v16 + 5) != v11)
  {
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  result = 0;
  *a3 = v16 + 12;
  *a4 = v16 + 3;
  return result;
}

void *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(uint64_t a1, _DWORD *a2)
{
  v2 = a2[1];
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  HIDWORD(v3) = (v3 >> 19) + v2;
  LODWORD(v3) = HIDWORD(v3);
  v4 = a2[2];
  v5 = (v3 >> 19) + v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (-1640531527 * v5) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(a1 + 80) + 8 * v7);
  v9 = *v8;
  if (!*v8)
  {
    return v8;
  }

  do
  {
    result = v8;
    v8 = v9;
    if (*(v9 + 2) == v5 && *(v9 + 3) == *a2 && *(v9 + 4) == v2 && *(v9 + 5) == v4)
    {
      break;
    }

    v9 = *v9;
    result = v8;
  }

  while (*v8);
  return result;
}

void MrecInitModule_dcuda_mrecutil(void)
{
  if (!gParDebugCUDAHelpers1)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugCUDAHelpers1", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugCUDAHelpers1 = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugCUDAHelpers1);
  }
}

void EnvHolder::EnvHolder(EnvHolder *this, int a2)
{
  FileHistory::FileHistory((this + 16), 0x64u, 0x64u);
  *(this + 2) = a2;
  v4 = MemChunkAlloc(0x110uLL, 0);
  *this = EnvMgr::EnvMgr(v4, 6u);
  *(this + 1) = 0xFFFFFFFFLL;
}

void verifySubFileExistsAtMostOneOfDouble(uint64_t a1, unsigned int a2, unsigned int a3, char a4)
{
  v8 = DFile::subFileExists(a1, a2);
  if (DFile::subFileExists(a1, a3) && v8)
  {
    if (*(a1 + 24))
    {
      v9 = *(a1 + 16);
    }

    GetSubFileExtensionString(a2);
    GetSubFileExtensionString(a3);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 94, "fileutil/envhold", 6, "%.500s %.500s %.500s %.500s", v10, v11, a4);
  }
}

uint64_t EnvHolder::errorIfFileObviouslyIsNotOfTypeUser(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 0x15u, 0x16u, "User");
  verifySubFileExistsOneOfDouble(this, 0x3Eu, 0x3Du, "User");
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
  v3 = v15;
  v5 = v16;
  v4 = HIDWORD(v16);
  *(v15 + 4 * v16) = 38;
  v6 = v5 + 1;
  LODWORD(v16) = v6;
  if (v6 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
    v3 = v15;
    v6 = v16;
    v4 = HIDWORD(v16);
  }

  *(v3 + 4 * v6) = 39;
  v7 = v6 + 1;
  LODWORD(v16) = v7;
  if (v7 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
    v7 = v16;
    v3 = v15;
  }

  *(v3 + 4 * v7) = 43;
  v8 = v7 + 1;
  LODWORD(v16) = v7 + 1;
  v9 = v14;
  if (v14 == HIDWORD(v14))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v13, 1, 1);
    v9 = v14;
    v8 = v16;
  }

  *(v13 + 4 * v9) = 42;
  LODWORD(v14) = v9 + 1;
  v12[0] = 0;
  v12[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v12, &v15, 0, v8);
  v11[0] = 0;
  v11[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v11, &v13, 0, v14);
  verifySubFileSetExistsOneOfDouble(this, v12, v11, "User");
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
  verifySubFileExistsOneOfDouble(this, 0x47u, 0x46u, "User");
  verifySubFileExistsOneOfDouble(this, 0x57u, 0x56u, "User");
  verifySubFileExistsAtMostOneOfDouble(this, 0x20u, 0x1Fu, "User");
  verifySubFileExistsAtMostOneOfDouble(this, 0x53u, 0x50u, "User");
  verifySubFileExistsAtMostOneOfDouble(this, 0x55u, 0x50u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x53u, 0x55u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x55u, 0x53u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x2Du, 0x63u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x2Au, 0x63u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x3Du, 0x63u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x1Fu, 0x63u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x50u, 0x63u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x17u, 0x63u, "User");
  verifySubFile1ImpliesSubFile2(this, 0x3Fu, 0x63u, "User");
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

void sub_26270F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v13 - 32);
  _Unwind_Resume(a1);
}

void verifySubFileExistsOneOfDouble(uint64_t a1, unsigned int a2, unsigned int a3, char a4)
{
  v8 = DFile::subFileExists(a1, a2);
  v9 = DFile::subFileExists(a1, a3);
  if (v8)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (!v9)
  {
    v10 = v8;
  }

  if (v10 != 1)
  {
    if (v10)
    {
      if (*(a1 + 24))
      {
        v12 = *(a1 + 16);
      }

      GetSubFileExtensionString(a2);
      GetSubFileExtensionString(a3);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 121, "fileutil/envhold", 6, "%.500s %.500s %.500s %.500s", v15, v16, a4);
    }

    else
    {
      if (*(a1 + 24))
      {
        v11 = *(a1 + 16);
      }

      GetSubFileExtensionString(a2);
      GetSubFileExtensionString(a3);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 116, "fileutil/envhold", 5, "%.500s %.500s %.500s %.500s", v13, v14, a4);
    }
  }
}

void verifySubFileSetExistsOneOfDouble(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  if (*(a2 + 8))
  {
    v8 = 0;
    while (!DFile::subFileExists(a1, *(*v6 + 4 * v8)))
    {
      if (++v8 >= *(v6 + 8))
      {
        goto LABEL_5;
      }
    }

    v9 = v6;
    v6 = a3;
  }

  else
  {
LABEL_5:
    v9 = a3;
  }

  if (*(v9 + 8))
  {
    v10 = 0;
    do
    {
      verifySubFileExists(a1, *(*v9 + 4 * v10++), a4);
    }

    while (v10 < *(v9 + 8));
  }

  if (*(v6 + 8))
  {
    v11 = 0;
    do
    {
      v12 = *(*v6 + 4 * v11);
      if (DFile::subFileExists(a1, v12))
      {
        if (*(a1 + 24))
        {
          v13 = *(a1 + 16);
        }

        GetSubFileExtensionString(v12);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 62, "fileutil/envhold", 4, "%.500s %.500s %.500s", v14, v15, a4);
      }

      ++v11;
    }

    while (v11 < *(v6 + 8));
  }
}

void verifySubFile1ImpliesSubFile2(uint64_t a1, unsigned int a2, unsigned int a3, char a4)
{
  if (DFile::subFileExists(a1, a2) && (DFile::subFileExists(a1, a3) & 1) == 0)
  {
    if (*(a1 + 24))
    {
      v8 = *(a1 + 16);
    }

    GetSubFileExtensionString(a2);
    GetSubFileExtensionString(a3);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 163, "fileutil/envhold", 2, "%.500s %.500s %.500s %.500s", v9, v10, a4);
  }
}

void EnvHolder::errorIfFileObviouslyIsNotOfTypeSigProc(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 0x15u, 0x16u, "SigProc");
  verifySubFileExistsOneOfDouble(this, 0x57u, 0x56u, "SigProc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x6Eu, 0x6Cu, "SigProc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x11u, 0x10u, "SigProc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x24u, 0x23u, "SigProc");
  verifySubFile1ImpliesSubFile2(this, 0x56u, 0x52u, "SigProc");
  verifySubFile1ImpliesSubFile2(this, 0x10u, 0x52u, "SigProc");

  verifySubFile1ImpliesSubFile2(this, 0x23u, 0x52u, "SigProc");
}

void EnvHolder::errorIfFileObviouslyIsNotOfTypeVoc(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 0x15u, 0x16u, "Voc");
  verifySubFileExistsOneOfDouble(this, 0x3Eu, 0x3Du, "Voc");
  verifySubFileExistsOneOfDouble(this, 0x62u, 0x2Fu, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x61u, 0x59u, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x61u, 0x4Eu, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x5Bu, 0xEu, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x5Au, 0xAu, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 0x3Au, 0x38u, "Voc");
  verifySubFile1ImpliesSubFile2(this, 0x2Fu, 0x69u, "Voc");
  verifySubFile1ImpliesSubFile2(this, 0x4Eu, 0x69u, "Voc");
  verifySubFile1ImpliesSubFile2(this, 0x59u, 0x69u, "Voc");
  verifySubFile1ImpliesSubFile2(this, 0x16u, 0x69u, "Voc");
  verifySubFile1ImpliesSubFile2(this, 0xAu, 0x69u, "Voc");
  verifySubFile1ImpliesSubFile2(this, 0xEu, 0x69u, "Voc");

  verifySubFile1ImpliesSubFile2(this, 0x38u, 0x69u, "Voc");
}

void verifySubFileExists(uint64_t a1, unsigned int a2, char a3)
{
  if ((DFile::subFileExists(a1, a2) & 1) == 0)
  {
    if (*(a1 + 24))
    {
      v6 = *(a1 + 16);
    }

    GetSubFileExtensionString(a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 73, "fileutil/envhold", 3, "%.500s %.500s %.500s", v7, v8, a3);
  }
}

uint64_t EnvHolder::errorIfFileObviouslyIsNotOfTypeParamSetHolder(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 0x15u, 0x16u, "ParamSetHolder");
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
  v3 = v23;
  v5 = v24;
  v4 = HIDWORD(v24);
  *(v23 + 4 * v24) = 0;
  v6 = v5 + 1;
  LODWORD(v24) = v6;
  if (v6 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v6 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v6) = 11;
  v7 = v6 + 1;
  LODWORD(v24) = v7;
  if (v7 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v7 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v7) = 15;
  v8 = v7 + 1;
  LODWORD(v24) = v8;
  if (v8 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v8 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v8) = 33;
  v9 = v8 + 1;
  LODWORD(v24) = v9;
  if (v9 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v9 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v9) = 34;
  v10 = v9 + 1;
  LODWORD(v24) = v10;
  if (v10 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v10 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v10) = 55;
  v11 = v10 + 1;
  LODWORD(v24) = v11;
  if (v11 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v11 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v11) = 69;
  v12 = v11 + 1;
  LODWORD(v24) = v12;
  if (v12 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v12 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v12) = 60;
  v13 = v12 + 1;
  LODWORD(v24) = v13;
  if (v13 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v13 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v13) = 79;
  v14 = v13 + 1;
  LODWORD(v24) = v14;
  if (v14 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v14 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v14) = 88;
  v15 = v14 + 1;
  LODWORD(v24) = v15;
  if (v15 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v15 = v24;
    v3 = v23;
  }

  *(v3 + 4 * v15) = 84;
  v16 = v15 + 1;
  LODWORD(v24) = v15 + 1;
  v17 = v22;
  if (v22 == HIDWORD(v22))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
    v17 = v22;
    v16 = v24;
  }

  *(v21 + 4 * v17) = 68;
  LODWORD(v22) = v17 + 1;
  v20[0] = 0;
  v20[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v20, &v23, 0, v16);
  v19[0] = 0;
  v19[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v19, &v21, 0, v22);
  verifySubFileSetExistsOneOfDouble(this, v20, v19, "ParamSetHolder");
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  verifySubFile1ImpliesSubFile2(this, 0x44u, 0x39u, "ParamSetHolder");
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_26270FCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v13 - 32);
  _Unwind_Resume(a1);
}

void EnvHolder::loadEnvHolder(uint64_t a1, EnvHolder *a2, int a3)
{
  v15 = 0u;
  v16 = 0u;
  SnapTime::recordTime(&v15, 1, 1, 1, 1);
  v7 = 0;
  *(a1 + 12) = a3;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        EnvHolder::errorIfFileObviouslyIsNotOfTypeUser(a2, v6);
        v7 = 3;
      }
    }

    else
    {
      verifySubFileExistsAtMostOneOfDouble(a2, 0x15u, 0x16u, "EnvHolder");
      v7 = 6;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        EnvHolder::errorIfFileObviouslyIsNotOfTypeSigProc(a2, v6);
        v7 = 4;
        break;
      case 3:
        EnvHolder::errorIfFileObviouslyIsNotOfTypeVoc(a2, v6);
        v7 = 2;
        break;
      case 4:
        EnvHolder::errorIfFileObviouslyIsNotOfTypeParamSetHolder(a2, v6);
        v7 = 13;
        break;
    }
  }

  DFileChecksums::DFileChecksums(v14);
  DgnDelete<EnvMgr>(*a1);
  v8 = MemChunkAlloc(0x110uLL, 0);
  v9 = EnvMgr::EnvMgr(v8, v7);
  *a1 = v9;
  EnvMgr::loadEnvMgr(v9, a2, v14);
  EnvMgr::setSemanticType(*a1, 6);
  v11 = *a1;
  v10 = (a1 + 16);
  FileHistory::loadFileHistory(v10, a2, *(v11 + 264));
  v12 = 0u;
  v13 = 0u;
  SnapTime::recordTime(&v12, 1, 1, 1, 1);
  v12 = vsubq_s64(v12, v15);
  v13 = vsubq_s64(v13, v16);
  FileHistory::addEntryWithElapsedTime(v10, " loadEnvHolder time: ", &v12);
  if (!a3)
  {
    (*(*a2 + 80))(a2, "EnvHolder");
  }

  DFileChecksums::~DFileChecksums(v14);
}

void sub_26270FECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DFileChecksums::~DFileChecksums(va);
  _Unwind_Resume(a1);
}

void EnvHolder::saveEnvHolder(EnvMgr **a1, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  v17 = 0u;
  v18 = 0u;
  SnapTime::recordTime(&v17, 1, 1, 1, 1);
  if (a4)
  {
    v10 = a4 != 2;
  }

  else
  {
    v10 = *(*a1 + 264);
  }

  DFileOwner::DFileOwner(v16);
  *a3 = 1;
  v11 = DFile::openDFile(a2, 1, 6, v16);
  *a3 = 2;
  DFileChecksums::DFileChecksums(v15);
  EnvMgr::saveEnvMgr(*a1, v11, v15, v10 & 1, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 1, 1, 1);
  v13 = vsubq_s64(v13, v17);
  v14 = vsubq_s64(v14, v18);
  FileHistory::addEntryWithElapsedTime((a1 + 2), " saveEnvHolder time: ", &v13);
  FileHistory::saveFileHistory((a1 + 2), v11, v10 & 1);
  DFileOwner::setRemoveFileOnDestruction(v16, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v15);
  DFileOwner::~DFileOwner(v16, v12);
}

void sub_262710030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  DFileChecksums::~DFileChecksums(va);
  DFileOwner::~DFileOwner(va1, v7);
  _Unwind_Resume(a1);
}

void EnvHolder::printSize(EnvMgr **this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 451, &v45);
  if (v46)
  {
    v16 = v45;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v45);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = *this;
  if (*this)
  {
    v44 = 0;
    v45 = 0;
    v22 = (a3 + 1);
    v43 = 0;
    EnvMgr::printSize(v21, 0xFFFFFFFFLL, v22, &v45, &v44, &v43);
    *a4 += v45;
    *a5 += v44;
    *a6 += v43;
  }

  else
  {
    v22 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 452, &v45);
  if (v46)
  {
    v28 = v45;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v22, &byte_262899963, (34 - a3), (34 - a3), v28, v23, v23, 0);
  DgnString::~DgnString(&v45);
  *a4 += v23;
  *a5 += v23;
  v29 = sizeObject((this + 2), 0);
  v30 = sizeObject((this + 2), 1);
  v31 = sizeObject((this + 2), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 453, &v45);
  if (v46)
  {
    v36 = v45;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v22, &byte_262899963, (34 - a3), (34 - a3), v36, v29, v30, v31);
  DgnString::~DgnString(&v45);
  *a4 += v29;
  *a5 += v30;
  *a6 += v31;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 454, &v45);
  if (v46)
  {
    v41 = v45;
  }

  else
  {
    v41 = &byte_262899963;
  }

  v42 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, a3, &byte_262899963, (35 - a3), (35 - a3), v41, *a4, *a5, *a6);
  DgnString::~DgnString(&v45);
}

void sub_26271031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double EnvHolderMgr::startupEnvHolderMgr(EnvHolderMgr *this)
{
  v1 = MemChunkAlloc(0x40uLL, 0);
  *v1 = 0u;
  *&result = 0x10000001DLL;
  v1[2] = 0x10000001DLL;
  *(v1 + 6) = 1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v1 + 14) = 0;
  EnvHolderMgr::smpEnvHolderMgr = v1;
  return result;
}

uint64_t EnvHolderMgr::getEnvHolder(EnvHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 2) <= a2 || (result = *(*this + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 500, "fileutil/envhold", 1, "%u", a7, a8, a2);
    return *(*this + 8 * v10);
  }

  return result;
}

uint64_t EnvHolderMgr::newEnvHolder(EnvHolderMgr *this)
{
  NextId = IdMgr<unsigned int>::getNextId(this + 4);
  for (i = *(this + 2); i <= NextId; *(this + 2) = i)
  {
    if (i == *(this + 3))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this, 1, 1);
      i = *(this + 2);
    }

    *(*this + 8 * i++) = 0;
  }

  v4 = MemChunkAlloc(0x28uLL, 0);
  EnvHolder::EnvHolder(v4, NextId);
  *(*this + 8 * NextId) = v5;
  return NextId;
}

void EnvHolderMgr::deleteEnvHolder(EnvHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EnvHolder = EnvHolderMgr::getEnvHolder(this, a2, a3, a4, a5, a6, a7, a8);
  DgnDelete<EnvHolder>(EnvHolder);
  *(*this + 8 * a2) = 0;

  IdMgr<unsigned int>::recycleId(this + 4, a2);
}

EnvMgr **DgnDelete<EnvHolder>(EnvMgr **result)
{
  if (result)
  {
    EnvHolder::~EnvHolder(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t EnvHolderMgr::loadEnvHolder(uint64_t a1, EnvHolder *a2, int a3)
{
  NextId = IdMgr<unsigned int>::getNextId((a1 + 16));
  for (i = *(a1 + 8); i <= NextId; *(a1 + 8) = i)
  {
    if (i == *(a1 + 12))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
      i = *(a1 + 8);
    }

    *(*a1 + 8 * i++) = 0;
  }

  v8 = MemChunkAlloc(0x28uLL, 0);
  EnvHolder::EnvHolder(v8, NextId);
  EnvHolder::loadEnvHolder(v9, a2, a3);
  *(*a1 + 8 * NextId) = v8;
  return NextId;
}

void EnvHolderMgr::saveEnvHolder(EnvHolderMgr *a1, unsigned int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  EnvHolder = EnvHolderMgr::getEnvHolder(a1, a2, a3, a4, a5, a6, a7, a8);

  EnvHolder::saveEnvHolder(EnvHolder, a3, a4, v9, v8);
}

void EnvHolderMgr::printSize(EnvHolderMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 557, &v71);
  if (v72)
  {
    v16 = v71;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 558, &v71);
  if (v72)
  {
    v25 = v71;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (a3 + 1), &byte_262899963, v25);
  v68 = a6;
  DgnString::~DgnString(&v71);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v26, v27, v28, v29, (a3 + 1), &byte_262899963);
  v30 = *(this + 2);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*this + 8 * v31);
      if (v35)
      {
        v70 = 0;
        v71 = 0;
        v69 = 0;
        EnvHolder::printSize(v35, v31, (a3 + 2), &v71, &v70, &v69);
        v32 += v71;
        v34 += v70;
        v33 += v69;
        v30 = *(this + 2);
      }

      ++v31;
    }

    while (v31 < v30);
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v30 = 0;
  }

  v36 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 12;
  }

  v37 = v36 + v32;
  v38 = v36 + v34;
  v39 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v39 = 3;
  }

  v40 = v37 + (*(this + 3) << v39);
  v41 = v38 + (v30 << v39);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 558, &v71);
  if (v72)
  {
    v46 = v71;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, v40, v41, v33);
  DgnString::~DgnString(&v71);
  *a4 += v40;
  *a5 += v41;
  *v68 += v33;
  v47 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 12;
  }

  v48 = *(this + 10);
  v49 = *(this + 11);
  v50 = v47 + 4 * (v48 - 1) + 4;
  if (v48 <= 0)
  {
    v50 = v47;
  }

  v51 = v49 >= v48;
  v52 = v50 + 4 * (v49 - v48);
  if (v51)
  {
    v47 = v52;
  }

  v53 = v47 + 24;
  v54 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 8, 1u) + 12;
  v55 = *(this + 10);
  if (v55 <= *(this + 11))
  {
    v56 = 0;
  }

  else
  {
    v56 = 4 * v55;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 560, &v71);
  if (v72)
  {
    v61 = v71;
  }

  else
  {
    v61 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v61, v53, v54, v56);
  DgnString::~DgnString(&v71);
  *a4 += v53;
  *a5 += v54;
  *v68 += v56;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 561, &v71);
  if (v72)
  {
    v66 = v71;
  }

  else
  {
    v66 = &byte_262899963;
  }

  v67 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, a3, &byte_262899963, (35 - a3), (35 - a3), v66, *a4, *a5, *v68);
  DgnString::~DgnString(&v71);
}

void sub_2627109C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void TGrammarManager2::TGrammarManager2(TGrammarManager2 *this, TInputStream *a2, const TTagManager *a3, TLexicon *a4, TItnParamManager *a5)
{
  *this = &unk_287523E50;
  *(this + 2) = &unk_287523E50;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 8) = -1;
  *(this + 7) = a5;
  *(this + 4) = a4;
  operator new();
}

uint64_t callBackThousandSeparator(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 - 5 < 0xFFFFFFFFFFFFFFFELL || *a1 > 1uLL || *(a1 + 16) > 1uLL || *(a1 + 32) > 1uLL || a2 == 4 && *(a1 + 48) > 1uLL)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v12 = wcslen(v9);
  v50 = 0;
  {
    operator new();
  }

  v13 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v50);
  if (v50)
  {
    return 0;
  }

  v16 = v13;
  v46 = v48;
  v47 = xmmword_26286B6F0;
  v49 = 1;
  if (a2 < 4)
  {
    GrammarValue = TStringParam::getGrammarValue((*(a3 + 336) + 15664), 1, &v46);
  }

  else
  {
    GrammarValue = TBuffer<wchar_t>::assign(&v46, *(a1 + 56));
  }

  if (*(&v47 + 1) != 1)
  {
    v29 = TBuffer<wchar_t>::c_str(&v46);
    loggableUnicode(v29, __p);
    if (v45 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    goto LABEL_45;
  }

  v18 = *v46;
  GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(GrammarValue);
  if (v18 >= 48)
  {
    if (v18 < 0x3A || v18 >= 0x660 && (GlobalLocaleInfo = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v18), GlobalLocaleInfo != -1))
    {
      v20 = *v46;
      v21 = TLocaleInfo::getGlobalLocaleInfo(GlobalLocaleInfo);
      DigitExtended = v20 - 48;
      if (v20 >= 48)
      {
        if (v20 <= 0x39)
        {
LABEL_23:
          if (DigitExtended <= 1)
          {
            v23 = TBuffer<wchar_t>::c_str(&v46);
            loggableUnicode(v23, __p);
            if (v45 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

LABEL_45:
            tknPrintf("Error: <%s> : The digitGrouping argument passed to $AddThousandSeparator() must be a single digit greater than 1 or the letter 'I'.\n", v24, v25, v26, v27, v28);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            v14 = 0;
            goto LABEL_48;
          }

          v32 = DigitExtended;
LABEL_56:
          v14 = 1;
          if (*v10 && v12 > v16)
          {
            v30 = 0;
            v34 = v12 / v32;
            if (v12 % v32)
            {
              v31 = v12 % v32;
            }

            else
            {
              v31 = v32;
            }

LABEL_61:
            v38 = v12 + wcslen(v10) * v34 + 1;
            if (v38 >> 62)
            {
              v39 = -1;
            }

            else
            {
              v39 = 4 * v38;
            }

            v40 = TAllocator::allocate(a5, v39);
            v41 = v40;
            if (*v9)
            {
              v42 = 0;
              v41 = v40;
              do
              {
                if (v31 == (v42 * 4) >> 2)
                {
                  wcscpy(v41, v10);
                  v41 += wcslen(v41);
                  if (v30)
                  {
                    if ((v12 - v31) % v32 == 3)
                    {
                      v31 += 3;
                    }

                    else
                    {
                      v31 += 2;
                    }
                  }

                  else
                  {
                    v31 += v32;
                  }
                }

                *v41++ = v9[v42];
              }

              while (v9[++v42]);
            }

            *v41 = 0;
            v14 = 1;
            goto LABEL_48;
          }

          goto LABEL_48;
        }

        if (v20 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(v21, v20);
          goto LABEL_23;
        }
      }

      v32 = -1;
      goto LABEL_56;
    }
  }

  if (*v46 != 73)
  {
    v36 = TBuffer<wchar_t>::c_str(&v46);
    loggableUnicode(v36, __p);
    if (v45 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    goto LABEL_45;
  }

  v14 = 1;
  if (*v10 && v12 > v16)
  {
    v30 = 1;
    v31 = 2;
    v32 = 7;
    v33 = v12 % 7;
    v34 = 3 * (v12 / 7) + v12 % 7 / 3;
    if (v12 % 7)
    {
      if (((v12 % 7) & 5) == 4)
      {
        v35 = 1;
      }

      else
      {
        v35 = v12 % 7;
      }

      if (v33 != 5)
      {
        v32 = 7;
      }

      v30 = 1;
      if (v33 != 5)
      {
        v31 = v35;
      }
    }

    goto LABEL_61;
  }

LABEL_48:
  if (v49 == 1 && v46 != v48 && v46 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v14;
}

{
  if (a2 - 5 < 0xFFFFFFFFFFFFFFFELL || *a1 > 1uLL || *(a1 + 16) > 1uLL || *(a1 + 32) > 1uLL || a2 == 4 && *(a1 + 48) > 1uLL)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v12 = wcslen(v9);
  v50 = 0;
  {
    operator new();
  }

  v13 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v50);
  if (v50)
  {
    return 0;
  }

  v16 = v13;
  v46 = v48;
  v47 = xmmword_26286B6F0;
  v49 = 1;
  if (a2 < 4)
  {
    GrammarValue = TStringParam::getGrammarValue((*(a3 + 336) + 15664), 1, &v46);
  }

  else
  {
    GrammarValue = TBuffer<wchar_t>::assign(&v46, *(a1 + 56));
  }

  if (*(&v47 + 1) != 1)
  {
    v29 = TBuffer<wchar_t>::c_str(&v46);
    loggableUnicode(v29, __p);
    if (v45 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    goto LABEL_45;
  }

  v18 = *v46;
  GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(GrammarValue);
  if (v18 >= 48)
  {
    if (v18 < 0x3A || v18 >= 0x660 && (GlobalLocaleInfo = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v18), GlobalLocaleInfo != -1))
    {
      v20 = *v46;
      v21 = TLocaleInfo::getGlobalLocaleInfo(GlobalLocaleInfo);
      DigitExtended = v20 - 48;
      if (v20 >= 48)
      {
        if (v20 <= 0x39)
        {
LABEL_23:
          if (DigitExtended <= 1)
          {
            v23 = TBuffer<wchar_t>::c_str(&v46);
            loggableUnicode(v23, __p);
            if (v45 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

LABEL_45:
            tknPrintf("Error: <%s> : The digitGrouping argument passed to $AddThousandSeparator() must be a single digit greater than 1 or the letter 'I'.\n", v24, v25, v26, v27, v28);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            v14 = 0;
            goto LABEL_48;
          }

          v32 = DigitExtended;
LABEL_56:
          v14 = 1;
          if (*v10 && v12 > v16)
          {
            v30 = 0;
            v34 = v12 / v32;
            if (v12 % v32)
            {
              v31 = v12 % v32;
            }

            else
            {
              v31 = v32;
            }

LABEL_61:
            v38 = v12 + wcslen(v10) * v34 + 1;
            if (v38 >> 62)
            {
              v39 = -1;
            }

            else
            {
              v39 = 4 * v38;
            }

            v40 = TAllocator::allocate(a5, v39);
            v41 = v40;
            if (*v9)
            {
              v42 = 0;
              v41 = v40;
              do
              {
                if (v31 == (v42 * 4) >> 2)
                {
                  wcscpy(v41, v10);
                  v41 += wcslen(v41);
                  if (v30)
                  {
                    if ((v12 - v31) % v32 == 3)
                    {
                      v31 += 3;
                    }

                    else
                    {
                      v31 += 2;
                    }
                  }

                  else
                  {
                    v31 += v32;
                  }
                }

                *v41++ = v9[v42];
              }

              while (v9[++v42]);
            }

            *v41 = 0;
            v14 = 1;
            goto LABEL_48;
          }

          goto LABEL_48;
        }

        if (v20 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(v21, v20);
          goto LABEL_23;
        }
      }

      v32 = -1;
      goto LABEL_56;
    }
  }

  if (*v46 != 73)
  {
    v36 = TBuffer<wchar_t>::c_str(&v46);
    loggableUnicode(v36, __p);
    if (v45 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    goto LABEL_45;
  }

  v14 = 1;
  if (*v10 && v12 > v16)
  {
    v30 = 1;
    v31 = 2;
    v32 = 7;
    v33 = v12 % 7;
    v34 = 3 * (v12 / 7) + v12 % 7 / 3;
    if (v12 % 7)
    {
      if (((v12 % 7) & 5) == 4)
      {
        v35 = 1;
      }

      else
      {
        v35 = v12 % 7;
      }

      if (v33 != 5)
      {
        v32 = 7;
      }

      v30 = 1;
      if (v33 != 5)
      {
        v31 = v35;
      }
    }

    goto LABEL_61;
  }

LABEL_48:
  if (v49 == 1 && v46 != v48 && v46 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v14;
}

void sub_262711BA0(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t callBackToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = wcslen(v9);
  if (v10)
  {
    v11 = v10;
    if (TLexicon::checkName(a3, v9, 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableUnicode(*(a1 + 8), &__p);
      if (v23 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      tknPrintf("Warning: $Token('%s') : The formatter adaptation grammar constructed an invalid token.\n", v12, v13, v14, v15, p_p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      return 0;
    }

    if ((v11 + 9) >> 62)
    {
      v17 = -1;
    }

    else
    {
      v17 = 4 * (v11 + 9);
    }

    __p = TAllocator::allocate(a5, v17);
    v22 = v11 + 9;
    v23 = 0;
    v25 = 0;
    TBuffer<wchar_t>::assign(&__p, dword_26288A86C);
    v18 = 0;
    v19 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&__p, v23, v19, v18 - 1);
    TBuffer<wchar_t>::insert(&__p, v23, &unk_26288A88C, 1uLL);
    if (v23 >= v22)
    {
      if (v25)
      {
        v26 = 0;
        TBuffer<wchar_t>::insert(&__p, v23--, &v26, 1uLL);
      }

      else if (v22)
      {
        *(__p + v22 - 1) = 0;
      }
    }

    else
    {
      *(__p + v23) = 0;
    }

    if (v25 == 1 && __p != &v24 && __p)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_262711E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t callBackAlt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (!a2 || *a1 > 1uLL)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v8 = a1[1];
  }

  else
  {
    v20 = v22;
    v21 = xmmword_26286B6F0;
    v23 = 1;
    TBuffer<wchar_t>::assign(&v20, dword_26288A944);
    v10 = 0;
    v11 = a1[1];
      ;
    }

    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), v11, v10 - 1);
    v13 = 1;
    do
    {
      TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), dword_26288A95C, 5uLL);
      v14 = 0;
      v15 = a1[2 * v13 + 1];
        ;
      }

      TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), v15, v14 - 1);
      ++v13;
    }

    while (v13 != a2);
    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), dword_26288A974, 6uLL);
    if ((*(&v21 + 1) + 1) >> 62)
    {
      v17 = -1;
    }

    else
    {
      v17 = 4 * (*(&v21 + 1) + 1);
    }

    v18 = TAllocator::allocate(a5, v17);
    if (*(&v21 + 1) >= v21)
    {
      if (v23)
      {
        v24 = 0;
        TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), &v24, 1uLL);
        v19 = v20;
        --*(&v21 + 1);
      }

      else
      {
        v19 = v20;
        if (v21)
        {
          v20[v21 - 1] = 0;
        }
      }
    }

    else
    {
      v19 = v20;
      v20[*(&v21 + 1)] = 0;
    }

    wcscpy(v18, v19);
    if (v23 == 1 && v20 != v22)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

void sub_262712050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t callBackTag(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v9 = wcslen(*(a1 + 8));
  if (v9)
  {
    v10 = v9;
    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = v10 + wcslen(v11) + 4;
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v19 = TAllocator::allocate(a5, v13);
    v20 = v12;
    v21 = 0;
    v23 = 0;
    TBuffer<wchar_t>::assign(&v19, &unk_26288A990);
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v14 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, a3, v14 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288A998, 1uLL);
    v16 = 0;
    v17 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, v17, v16 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288A88C, 1uLL);
    if (v21 >= v20)
    {
      if (v23)
      {
        v24 = 0;
        TBuffer<wchar_t>::insert(&v19, v21--, &v24, 1uLL);
      }

      else if (v20)
      {
        *(v19 + v20 - 1) = 0;
      }
    }

    else
    {
      *(v19 + v21) = 0;
    }

    if (v23 == 1 && v19 != &v22)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v9 = wcslen(*(a1 + 8));
  if (v9)
  {
    v10 = v9;
    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = v10 + wcslen(v11) + 4;
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v19 = TAllocator::allocate(a5, v13);
    v20 = v12;
    v21 = 0;
    v23 = 0;
    TBuffer<wchar_t>::assign(&v19, &unk_26288FE60);
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v14 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, a3, v14 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288FE68, 1uLL);
    v16 = 0;
    v17 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, v17, v16 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288FDA8, 1uLL);
    if (v21 >= v20)
    {
      if (v23)
      {
        v24 = 0;
        TBuffer<wchar_t>::insert(&v19, v21--, &v24, 1uLL);
      }

      else if (v20)
      {
        *(v19 + v20 - 1) = 0;
      }
    }

    else
    {
      *(v19 + v21) = 0;
    }

    if (v23 == 1 && v19 != &v22)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

void sub_262712278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    callBackSync(va);
  }

  _Unwind_Resume(a1);
}

uint64_t callBackParam2(uint64_t a1, unint64_t a2, char **lpsrc, uint64_t *a4, TAllocator *a5)
{
  v7 = a1;
  if (!a2)
  {
    return callBackParam(a1, 0, lpsrc, a4, a5);
  }

  v8 = a2;
  v9 = *(lpsrc + 2);
  if (v9)
  {
    if (v9 == 4)
    {
      v10 = **lpsrc;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v11[164] - v11[163]) >> 3);
      if (v8)
      {
        goto LABEL_67;
      }

      goto LABEL_8;
    }

    v12 = 0;
    v11 = 0;
    if (v8)
    {
LABEL_67:
      v49 = (lpsrc + 2);
      if (*(lpsrc + 39) < 0)
      {
        v49 = *v49;
      }

      loggableUnicode(v49, &v83);
      if (v84 >= 0)
      {
        v54 = &v83;
      }

      else
      {
        v54 = v83;
      }

      tknPrintf("Error: $Param%s() must have an even number of arguments.\n", v50, v51, v52, v53, v54);
      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83);
      }

      return 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 2;
    if (v8)
    {
      goto LABEL_67;
    }
  }

LABEL_8:
  v75 = a5;
  std::vector<BOOL>::vector(&v87, v12);
  v83 = v85;
  v84 = xmmword_26286B6F0;
  v86 = 1;
  TBuffer<wchar_t>::assign(&v83, dword_26288A944);
  v14 = 0;
  if (v11)
  {
    v15 = 83;
  }

  else
  {
    v15 = 66;
  }

  v16 = (lpsrc + 2);
  v77 = v11;
  v76 = v15;
  do
  {
    v17 = (v7 + 16 * v14);
    if (*v17 > 1uLL)
    {
      goto LABEL_57;
    }

    v18 = v17 + 2;
    if (v17[2] > 1uLL)
    {
      goto LABEL_57;
    }

    if (v14)
    {
      TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), dword_26288A95C, 5uLL);
    }

    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), dword_26288A9A0, 7uLL);
    LODWORD(v81[0]) = v15;
    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), v81, 1uLL);
    v19 = v16;
    if (*(lpsrc + 39) < 0)
    {
      v19 = *v16;
    }

    v20 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), v19, v20 - 1);
    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), &unk_26288A998, 1uLL);
    v22 = v17[1];
    if (v11)
    {
      v23 = v14;
      v24 = v8;
      v25 = v7;
      v26 = v16;
      v27 = v11[163];
      v28 = v11[164] - v27;
      if (!v28)
      {
LABEL_45:
        if (*(lpsrc + 39) < 0)
        {
          v26 = *v26;
        }

        loggableUnicode(v26, v81);
        v40 = v82;
        v41 = v81[0];
        loggableUnicode(v22, __p);
        v46 = v81;
        if (v40 < 0)
        {
          v46 = v41;
        }

        if (v80 >= 0)
        {
          v47 = __p;
        }

        else
        {
          v47 = __p[0];
        }

        tknPrintf("Error: $Param%s(): Value is invalid, was '%s', expected an allowable string.\n", v42, v43, v44, v45, v46, v47);
LABEL_53:
        if (v80 < 0)
        {
          operator delete(__p[0]);
        }

        if (v82 < 0)
        {
          operator delete(v81[0]);
        }

LABEL_57:
        v13 = 0;
        goto LABEL_58;
      }

      v29 = 0;
      v30 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      while (1)
      {
        v32 = v27;
        if (*(v27 + 23) < 0)
        {
          v32 = *v27;
        }

        if (!wcscmp(v22, v32))
        {
          break;
        }

        ++v29;
        v27 += 24;
        if (v31 == v29)
        {
          goto LABEL_45;
        }
      }

      v16 = v26;
      v7 = v25;
      v8 = v24;
      v14 = v23;
      v15 = v76;
    }

    else
    {
      v78 = 0;
      {
        operator new();
      }

      v33 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v22, &v78);
      if (v78)
      {
        if (*(lpsrc + 39) < 0)
        {
          v16 = *v16;
        }

        loggableUnicode(v16, v81);
        v67 = v82;
        v68 = v81[0];
        loggableUnicode(v22, __p);
        v73 = v81;
        if (v67 < 0)
        {
          v73 = v68;
        }

        if (v80 >= 0)
        {
          v74 = __p;
        }

        else
        {
          v74 = __p[0];
        }

        tknPrintf("Error: $Param%s(): Value is invalid, was '%s', expected a BOOLean.\n", v69, v70, v71, v72, v73, v74);
        goto LABEL_53;
      }

      v29 = v33;
      if (v33)
      {
        v22 = &unk_26288A9C0;
      }

      else
      {
        v22 = &unk_26288A9C8;
      }
    }

    v34 = v87[v29 >> 6];
    if ((v34 & (1 << v29)) != 0)
    {
      if (*(lpsrc + 39) < 0)
      {
        v16 = *v16;
      }

      loggableUnicode(v16, v81);
      v56 = v82;
      v57 = v81[0];
      loggableUnicode(v22, __p);
      v62 = v81;
      if (v56 < 0)
      {
        v62 = v57;
      }

      if (v80 >= 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      tknPrintf("Error: $Param%s(): Value '%s' has already been specified.\n", v58, v59, v60, v61, v62, v63);
      goto LABEL_53;
    }

    v35 = 0;
    v87[v29 >> 6] = v34 | (1 << v29);
      ;
    }

    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), v22, v35 - 1);
    v11 = v77;
    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), &unk_26288A88C, 1uLL);
    v37 = 0;
    v38 = v18[1];
      ;
    }

    TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), v38, v37 - 1);
    v14 += 2;
  }

  while (v14 < v8);
  TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), dword_26288A974, 6uLL);
  if ((*(&v84 + 1) + 1) >> 62)
  {
    v64 = -1;
  }

  else
  {
    v64 = 4 * (*(&v84 + 1) + 1);
  }

  v65 = TAllocator::allocate(v75, v64);
  if (*(&v84 + 1) >= v84)
  {
    if (v86)
    {
      LODWORD(v81[0]) = 0;
      TBuffer<wchar_t>::insert(&v83, *(&v84 + 1), v81, 1uLL);
      v66 = v83;
      --*(&v84 + 1);
    }

    else
    {
      v66 = v83;
      if (v84)
      {
        *(v83 + v84 - 1) = 0;
      }
    }
  }

  else
  {
    v66 = v83;
    *(v83 + *(&v84 + 1)) = 0;
  }

  wcscpy(v65, v66);
  v13 = 1;
LABEL_58:
  if (v86 == 1 && v83 != v85 && v83 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v87)
  {
    operator delete(v87);
  }

  return v13;
}

void sub_262712914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  MEMORY[0x26672B1B0](a11, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x488]) == 1 && a23 != a13 && a23)
  {
    MEMORY[0x26672B1B0]();
  }

  if (*v23)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

uint64_t TGrammarManager2::freeMemory(TGrammarManager2 *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    TParser::~TParser(v2);
    MEMORY[0x26672B1B0]();
  }

  result = *(this + 5);
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

TAllocator *TGrammarManager2::clearResult(TGrammarManager2 *this)
{
  v1 = *(this + 6);
  v3 = *(v1 + 48);
  result = (v1 + 48);
  if (v3 >= 0x801)
  {
    return TAllocator::clear(result);
  }

  return result;
}

void TWideChartSeeder2::makeTerminals(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t a5, TAllocator *a6)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16) + a2;
  if (v6 < *(a1 + 24))
  {
    v8 = **(a1 + 8);
    if (v6 < 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v8) >> 4) && (!a2 || (*(v8 + 112 * v6 + 32) & 1) == 0))
    {
      v53 = v55;
      v54 = xmmword_26286B6F0;
      v56 = 1;
      TWord::getTokenName(*(v8 + 112 * v6 + 16), &v53);
      v15 = *a3;
      v14 = a3[1];
      v16 = *(a1 + 32);
      if (*(&v54 + 1) >= v54)
      {
        if (v56)
        {
          LODWORD(v49) = 0;
          TBuffer<wchar_t>::insert(&v53, *(&v54 + 1), &v49, 1uLL);
          v17 = v53;
          --*(&v54 + 1);
        }

        else
        {
          v17 = v53;
          if (v54)
          {
            v53[v54 - 1] = 0;
          }
        }
      }

      else
      {
        v17 = v53;
        v53[*(&v54 + 1)] = 0;
      }

      TGrammar::getTerminals(v16, v17, a3);
      v18 = v14 - v15;
      if (a3[1] - *a3 != v18)
      {
        if ((*(&v54 + 1) + 1) >> 62)
        {
          v19 = -1;
        }

        else
        {
          v19 = 4 * (*(&v54 + 1) + 1);
        }

        v20 = TAllocator::allocate(a6, v19);
        if (*(&v54 + 1) >= v54)
        {
          if (v56)
          {
            LODWORD(v49) = 0;
            TBuffer<wchar_t>::insert(&v53, *(&v54 + 1), &v49, 1uLL);
            v21 = v53;
            --*(&v54 + 1);
          }

          else
          {
            v21 = v53;
            if (v54)
            {
              v53[v54 - 1] = 0;
            }
          }
        }

        else
        {
          v21 = v53;
          v53[*(&v54 + 1)] = 0;
        }

        wcscpy(v20, v21);
        v49 = v51;
        v50 = xmmword_26286B6F0;
        v52 = 1;
        TWord::getOptionalTagBits(*(**(a1 + 8) + 112 * *(a1 + 16) + 112 * a2 + 16), &v49);
        if ((*(&v50 + 1) + 1) >> 62)
        {
          v22 = -1;
        }

        else
        {
          v22 = 4 * (*(&v50 + 1) + 1);
        }

        v23 = TAllocator::allocate(a6, v22);
        if (*(&v50 + 1) >= v50)
        {
          if (v52)
          {
            LODWORD(v58) = 0;
            TBuffer<wchar_t>::insert(&v49, *(&v50 + 1), &v58, 1uLL);
            v24 = v49;
            --*(&v50 + 1);
          }

          else
          {
            v24 = v49;
            if (v50)
            {
              v49[v50 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v49;
          v49[*(&v50 + 1)] = 0;
        }

        wcscpy(v23, v24);
        *&v58 = 1;
        *(&v58 + 1) = v20;
        v59 = 1;
        v60 = v23;
        v57 = xmmword_279B3E8E8;
        if (v18 < (a3[1] - *a3))
        {
          v25 = v18 >> 3;
          do
          {
            ClientData = TGrammarCompiler::makeClientData(&v57, &v58, 2, a6);
            v28 = *(a5 + 8);
            v27 = *(a5 + 16);
            if (v28 >= v27)
            {
              v30 = (v28 - *a5) >> 3;
              if ((v30 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v31 = v27 - *a5;
              v32 = v31 >> 2;
              if (v31 >> 2 <= (v30 + 1))
              {
                v32 = v30 + 1;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a5, v33);
              }

              v34 = (8 * v30);
              *v34 = ClientData;
              v29 = 8 * v30 + 8;
              v35 = *(a5 + 8) - *a5;
              v36 = v34 - v35;
              memcpy(v34 - v35, *a5, v35);
              v37 = *a5;
              *a5 = v36;
              *(a5 + 8) = v29;
              *(a5 + 16) = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v28 = ClientData;
              v29 = (v28 + 1);
            }

            *(a5 + 8) = v29;
            v39 = a4[1];
            v38 = a4[2];
            if (v39 >= v38)
            {
              v41 = *a4;
              v42 = v39 - *a4;
              v43 = v42 >> 3;
              v44 = (v42 >> 3) + 1;
              if (v44 >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v45 = v38 - v41;
              if (v45 >> 2 > v44)
              {
                v44 = v45 >> 2;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF8)
              {
                v46 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v46);
              }

              *(8 * v43) = 1;
              v40 = 8 * v43 + 8;
              memcpy(0, v41, v42);
              v47 = *a4;
              *a4 = 0;
              a4[1] = v40;
              a4[2] = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v39 = 1;
              v40 = (v39 + 8);
            }

            a4[1] = v40;
            ++v25;
          }

          while (v25 < (a3[1] - *a3) >> 3);
        }

        if (v52 == 1 && v49 != v51 && v49)
        {
          MEMORY[0x26672B1B0]();
        }
      }

      if (v56 == 1 && v53 != v55 && v53)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_262712FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (LOBYTE(STACK[0x448]) == 1 && a15 != a10 && a15 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x868]) == 1)
  {
    v17 = STACK[0x450];
    if (STACK[0x450] != a14)
    {
      if (v17)
      {
        MEMORY[0x26672B1B0](v17, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}