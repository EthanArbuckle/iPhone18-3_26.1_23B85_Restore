void sub_25FCFD5E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_25FCFD678(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_25FCFD6E4()
{
  if (v0)
  {
    JUMPOUT(0x25FCFD6ECLL);
  }

  JUMPOUT(0x25FCFD714);
}

BOOL HGColorConform::GetNodeListFromCache(HGColorConform *this, const ColorSyncProfile *a2, const ColorSyncProfile *a3, HGColorConformNodeListCacheItem **a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = HGColorConform::s_NodeListCacheLock;
  v13 = HGColorConform::s_NodeListCacheLock;
  v14 = 0;
  HGSynchronizable::Lock(HGColorConform::s_NodeListCacheLock);
  if (HGColorConform::s_NodeListCache)
  {
    v8 = 1;
  }

  else
  {
    HGColorConform::s_NodeListCache = CFDictionaryCreateMutable(0, 50, MEMORY[0x277CBF138], 0);
    v8 = HGColorConform::s_NodeListCache != 0;
  }

  HGSynchronizable::Unlock(v7);
  if (!v8)
  {
    return 0;
  }

  MD5 = ColorSyncProfileGetMD5(this);
  v16 = ColorSyncProfileGetMD5(a2);
  fillBufWithAsciiHexMD5(&v13, MD5.digest);
  fillBufWithAsciiHexMD5(v15, v16.digest);
  v9 = CFStringCreateWithBytes(0, &v13, 64, 0x600u, 0);
  Value = CFDictionaryGetValue(HGColorConform::s_NodeListCache, v9);
  *a3 = Value;
  v11 = Value != 0;
  CFRelease(v9);
  return v11;
}

void sub_25FCFD880(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = &v4[-*a1];
  v8 = (v7 + 1);
  if ((v7 + 1) < 0)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

HGObject *HGColorConform::AddNodeListToCache(const ColorSyncProfile *a1, const ColorSyncProfile *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = HGObject::operator new(0x18uLL);
  HGObject::HGObject(v6);
  *v6 = &unk_287222B80;
  *(v6 + 2) = a3;
  v7 = HGColorConform::s_NodeListCacheLock;
  v12 = HGColorConform::s_NodeListCacheLock;
  v13 = 0;
  HGSynchronizable::Lock(HGColorConform::s_NodeListCacheLock);
  if (HGColorConform::s_NodeListCache)
  {
    v8 = 1;
  }

  else
  {
    HGColorConform::s_NodeListCache = CFDictionaryCreateMutable(0, 50, MEMORY[0x277CBF138], 0);
    v8 = HGColorConform::s_NodeListCache != 0;
  }

  HGSynchronizable::Unlock(v7);
  if (v8)
  {
    MD5 = ColorSyncProfileGetMD5(a1);
    v15 = ColorSyncProfileGetMD5(a2);
    fillBufWithAsciiHexMD5(&v12, MD5.digest);
    fillBufWithAsciiHexMD5(v14, v15.digest);
    v9 = CFStringCreateWithBytes(0, &v12, 64, 0x600u, 0);
    if (CFDictionaryGetCount(HGColorConform::s_NodeListCache) == 50)
    {
      Value = CFDictionaryGetValue(HGColorConform::s_NodeListCache, HGColorConform::s_LastAddedCacheKey);
      (*(*Value + 24))(Value);
      CFDictionaryRemoveValue(HGColorConform::s_NodeListCache, HGColorConform::s_LastAddedCacheKey);
    }

    CFDictionaryAddValue(HGColorConform::s_NodeListCache, v9, v6);
    if (HGColorConform::s_LastAddedCacheKey)
    {
      CFRelease(HGColorConform::s_LastAddedCacheKey);
    }

    HGColorConform::s_LastAddedCacheKey = v9;
  }

  return v6;
}

void sub_25FCFDB78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ***HGColorConform::DeleteNodeList(void ***result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *v1;
    if (*v1 != v1[1])
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = v3[v4];
        if (v6)
        {
          v7 = v6[28];
          if (v7)
          {
            v6[29] = v7;
            operator delete(v7);
          }

          v8 = v6[26];
          if (v8)
          {
            (*(*v8 + 24))(v8);
          }

          MEMORY[0x2666E9F00](v6, 0x1030C40C41003B7);
          v1 = *v2;
          v3 = **v2;
        }

        v4 = v5++;
      }

      while (v4 < (v1[1] - v3) >> 3);
    }

    if (v3)
    {
      v1[1] = v3;
      operator delete(v3);
    }

    result = MEMORY[0x2666E9F00](v1, 0x80C40D6874129);
    *v2 = 0;
  }

  return result;
}

_BYTE *fillBufWithAsciiHexMD5(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = v2 & 0xF;
  v4 = (v2 >> 4) + 55;
  if (v2 < 0xA0)
  {
    LOBYTE(v4) = (*a2 >> 4) | 0x30;
  }

  *result = v4;
  v5 = v2 & 0xF | 0x30;
  v6 = v3 + 55;
  if (v3 < 0xA)
  {
    v6 = v5;
  }

  result[1] = v6;
  v7 = a2[1];
  v8 = v7 & 0xF;
  v9 = (v7 >> 4) + 55;
  if (v7 < 0xA0)
  {
    LOBYTE(v9) = (a2[1] >> 4) | 0x30;
  }

  result[2] = v9;
  v10 = v7 & 0xF | 0x30;
  v11 = v8 + 55;
  if (v8 < 0xA)
  {
    v11 = v10;
  }

  result[3] = v11;
  v12 = a2[2];
  v13 = v12 & 0xF;
  v14 = (v12 >> 4) + 55;
  if (v12 < 0xA0)
  {
    LOBYTE(v14) = (a2[2] >> 4) | 0x30;
  }

  result[4] = v14;
  v15 = v12 & 0xF | 0x30;
  v16 = v13 + 55;
  if (v13 < 0xA)
  {
    v16 = v15;
  }

  result[5] = v16;
  v17 = a2[3];
  v18 = v17 & 0xF;
  v19 = (v17 >> 4) + 55;
  if (v17 < 0xA0)
  {
    LOBYTE(v19) = (a2[3] >> 4) | 0x30;
  }

  result[6] = v19;
  v20 = v17 & 0xF | 0x30;
  v21 = v18 + 55;
  if (v18 < 0xA)
  {
    v21 = v20;
  }

  result[7] = v21;
  v22 = a2[4];
  v23 = v22 & 0xF;
  v24 = (v22 >> 4) + 55;
  if (v22 < 0xA0)
  {
    LOBYTE(v24) = (a2[4] >> 4) | 0x30;
  }

  result[8] = v24;
  v25 = v22 & 0xF | 0x30;
  v26 = v23 + 55;
  if (v23 < 0xA)
  {
    v26 = v25;
  }

  result[9] = v26;
  v27 = a2[5];
  v28 = v27 & 0xF;
  v29 = (v27 >> 4) + 55;
  if (v27 < 0xA0)
  {
    LOBYTE(v29) = (a2[5] >> 4) | 0x30;
  }

  result[10] = v29;
  v30 = v27 & 0xF | 0x30;
  v31 = v28 + 55;
  if (v28 < 0xA)
  {
    v31 = v30;
  }

  result[11] = v31;
  v32 = a2[6];
  v33 = v32 & 0xF;
  v34 = (v32 >> 4) + 55;
  if (v32 < 0xA0)
  {
    LOBYTE(v34) = (a2[6] >> 4) | 0x30;
  }

  result[12] = v34;
  v35 = v32 & 0xF | 0x30;
  v36 = v33 + 55;
  if (v33 < 0xA)
  {
    v36 = v35;
  }

  result[13] = v36;
  v37 = a2[7];
  v38 = v37 & 0xF;
  v39 = (v37 >> 4) + 55;
  if (v37 < 0xA0)
  {
    LOBYTE(v39) = (a2[7] >> 4) | 0x30;
  }

  result[14] = v39;
  v40 = v37 & 0xF | 0x30;
  v41 = v38 + 55;
  if (v38 < 0xA)
  {
    v41 = v40;
  }

  result[15] = v41;
  v42 = a2[8];
  v43 = v42 & 0xF;
  v44 = (v42 >> 4) + 55;
  if (v42 < 0xA0)
  {
    LOBYTE(v44) = (a2[8] >> 4) | 0x30;
  }

  result[16] = v44;
  v45 = v42 & 0xF | 0x30;
  v46 = v43 + 55;
  if (v43 < 0xA)
  {
    v46 = v45;
  }

  result[17] = v46;
  v47 = a2[9];
  v48 = v47 & 0xF;
  v49 = (v47 >> 4) + 55;
  if (v47 < 0xA0)
  {
    LOBYTE(v49) = (a2[9] >> 4) | 0x30;
  }

  result[18] = v49;
  v50 = v47 & 0xF | 0x30;
  v51 = v48 + 55;
  if (v48 < 0xA)
  {
    v51 = v50;
  }

  result[19] = v51;
  v52 = a2[10];
  v53 = v52 & 0xF;
  v54 = (v52 >> 4) + 55;
  if (v52 < 0xA0)
  {
    LOBYTE(v54) = (a2[10] >> 4) | 0x30;
  }

  result[20] = v54;
  v55 = v52 & 0xF | 0x30;
  v56 = v53 + 55;
  if (v53 < 0xA)
  {
    v56 = v55;
  }

  result[21] = v56;
  v57 = a2[11];
  v58 = v57 & 0xF;
  v59 = (v57 >> 4) + 55;
  if (v57 < 0xA0)
  {
    LOBYTE(v59) = (a2[11] >> 4) | 0x30;
  }

  result[22] = v59;
  v60 = v57 & 0xF | 0x30;
  v61 = v58 + 55;
  if (v58 < 0xA)
  {
    v61 = v60;
  }

  result[23] = v61;
  v62 = a2[12];
  v63 = v62 & 0xF;
  v64 = (v62 >> 4) + 55;
  if (v62 < 0xA0)
  {
    LOBYTE(v64) = (a2[12] >> 4) | 0x30;
  }

  result[24] = v64;
  v65 = v62 & 0xF | 0x30;
  v66 = v63 + 55;
  if (v63 < 0xA)
  {
    v66 = v65;
  }

  result[25] = v66;
  v67 = a2[13];
  v68 = v67 & 0xF;
  v69 = (v67 >> 4) + 55;
  if (v67 < 0xA0)
  {
    LOBYTE(v69) = (a2[13] >> 4) | 0x30;
  }

  result[26] = v69;
  v70 = v67 & 0xF | 0x30;
  v71 = v68 + 55;
  if (v68 < 0xA)
  {
    v71 = v70;
  }

  result[27] = v71;
  v72 = a2[14];
  v73 = v72 & 0xF;
  v74 = (v72 >> 4) + 55;
  if (v72 < 0xA0)
  {
    LOBYTE(v74) = (a2[14] >> 4) | 0x30;
  }

  result[28] = v74;
  v75 = v72 & 0xF | 0x30;
  v76 = v73 + 55;
  if (v73 < 0xA)
  {
    v76 = v75;
  }

  result[29] = v76;
  v77 = a2[15];
  v78 = v77 & 0xF;
  v79 = (v77 >> 4) + 55;
  if (v77 < 0xA0)
  {
    LOBYTE(v79) = (a2[15] >> 4) | 0x30;
  }

  result[30] = v79;
  v80 = v77 & 0xF | 0x30;
  if (v78 >= 0xA)
  {
    v80 = v78 + 55;
  }

  result[31] = v80;
  result[32] = 0;
  return result;
}

void HGColorConformNodeListCacheItem::~HGColorConformNodeListCacheItem(void ***this)
{
  *this = &unk_287222B80;
  HGColorConform::DeleteNodeList(this + 2);

  HGObject::~HGObject(this);
}

{
  *this = &unk_287222B80;
  HGColorConform::DeleteNodeList(this + 2);
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

void HGColorConformLook3DLUT::SetBuffer(HGColorConformLook3DLUT *this, CFTypeRef cf)
{
  v3 = *(this + 2);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 2) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void HGColorConformLook3DLUT::SetChecksum(HGColorConformLook3DLUT *this, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(this + 8);
  *(this + 9) = v3;
  if (a3)
  {
    v4 = a3;
    do
    {
      v7 = *(this + 10);
      if (v3 < v7)
      {
        *v3++ = *a2;
      }

      else
      {
        v8 = *(this + 8);
        v9 = (v3 - v8);
        v10 = v3 - v8 + 1;
        if (v10 < 0)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          operator new();
        }

        v13 = v3 - v8;
        *v9 = *a2;
        v3 = v9 + 1;
        memcpy(0, v8, v13);
        *(this + 8) = 0;
        *(this + 9) = v9 + 1;
        *(this + 10) = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      *(this + 9) = v3;
      ++a2;
      --v4;
    }

    while (v4);
  }
}

void HGColorConformLook3DLUT::~HGColorConformLook3DLUT(HGColorConformLook3DLUT *this)
{
  *this = &unk_287222BB8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_287222BB8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v4);
}

void HGColorConformLUTData::HGColorConformLUTData(HGObject *a1, uint64_t a2, int a3)
{
  HGObject::HGObject(a1);
  *v5 = &unk_287222BF0;
  *(v5 + 16) = a2;
  *(v5 + 32) = a3;
  operator new[]();
}

void HGColorConformLUTData::~HGColorConformLUTData(HGColorConformLUTData *this)
{
  *this = &unk_287222BF0;
  if (*(this + 3))
  {
    v2 = this;
    MEMORY[0x2666E9ED0](*(this + 3), 0x1000C8077774924);
    this = v2;
    v1 = vars8;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;

  HGObject::~HGObject(this);
}

{
  *this = &unk_287222BF0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

uint64_t HGColorConformLUTInfo::HGColorConformLUTInfo(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, int a5, float a6, float a7)
{
  v9 = HGApplyNDLUTInfo::HGApplyNDLUTInfo(a1, a2, a3, a5, a6, a7);
  *v9 = &unk_287222CA0;
  *(v9 + 40) = 0;
  *(v9 + 56) = 0;
  *(v9 + 48) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  v10 = a4[1] - *a4;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_25FCFE640(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  _Unwind_Resume(exception_object);
}

void HGColorConformLUTInfo::~HGColorConformLUTInfo(HGColorConformLUTInfo *this)
{
  *this = &unk_287222CA0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }
}

{
  *this = &unk_287222CA0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  JUMPOUT(0x2666E9F00);
}

void sub_25FCFE950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  MEMORY[0x2666E9F00](v12, v13);
  _Unwind_Resume(a1);
}

PCICCTransferFunctionLUT *HGColorConformLUTInfo::isEqual(uint64_t a1, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    if (*(a1 + 48))
    {
      return 0;
    }

    else if ((*(result + 48) & 1) == 0 && (v4 = result, LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(a1), v6 = v4, LUTEnd == PCICCTransferFunctionLUT::getLUTEnd(v4)) && (FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1), FactoryForSerialization == OZFactoryBase::getFactoryForSerialization(v6)) && (LUTStorageFormat = HGApplyNDLUTInfo::getLUTStorageFormat(a1), LUTStorageFormat == HGApplyNDLUTInfo::getLUTStorageFormat(v6)) && (v9 = *(a1 + 56), v10 = *(a1 + 64) - v9, v11 = *(v6 + 7), v10 == *(v6 + 8) - v11))
    {
      return (memcmp(v9, v11, v10) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void HGColorConformLUTInfo::colorAtIndex(HGColorConformLUTInfo *this, float a2, float a3, float a4, float *a5, float *a6, float *a7, float *a8)
{
  LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(this);
  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(this);
  if (LUTEnd == 3)
  {
    v22 = *(*(this + 5) + 32);
    v23 = a2 - HGApplyNDLUTInfo::getRangeOffset(this);
    v24 = (FactoryForSerialization - 1);
    v25 = fmaxf(fminf(v23 / PCICCTransferFunctionParametric3::getD(this), 1.0), 0.0) * v24;
    v26 = a3 - HGApplyNDLUTInfo::getRangeOffset(this);
    v27 = fmaxf(fminf(v26 / PCICCTransferFunctionParametric3::getD(this), 1.0), 0.0) * v24;
    v28 = a4 - HGApplyNDLUTInfo::getRangeOffset(this);
    v29 = llroundf(v25);
    v30 = llroundf(v27);
    v31 = llroundf(fmaxf(fminf(v28 / PCICCTransferFunctionParametric3::getD(this), 1.0), 0.0) * v24);
    v32 = HGFormatUtils::bytesPerPixel(v22);
    v34 = FactoryForSerialization * v32;
    v35 = v34 * FactoryForSerialization;
    if (v22 == 25 || v22 == 19)
    {
      v36 = (*(*(this + 5) + 24) + v29 * v32 + v34 * v30 + v35 * v31);
      LOWORD(v33) = *v36;
      *&v37 = v33 / 65535.0;
      *a5 = *&v37;
      LOWORD(v37) = v36[1];
      *&v38 = v37 / 65535.0;
      *a6 = *&v38;
      LOWORD(v38) = v36[2];
      v39 = v38 / 65535.0;
    }

    else
    {
      v42 = (*(*(this + 5) + 24) + v29 * v32 + v34 * v30 + v35 * v31);
      *a5 = *v42;
      *a6 = v42[1];
      v39 = v42[2];
    }

    *a7 = v39;
    *a8 = 1.0;
  }

  else
  {
    if (LUTEnd == 1)
    {
      v18 = a2 - HGApplyNDLUTInfo::getRangeOffset(this);
      v19 = fmaxf(fminf(v18 / PCICCTransferFunctionParametric3::getD(this), 1.0), 0.0) * (FactoryForSerialization - 1);
      v20 = llroundf(v19);
      if (FactoryForSerialization >= v20)
      {
        v40 = *(*(this + 5) + 24);
        v41 = (v40 + 16 * v20);
        *a5 = *v41;
        *a6 = *(v40 + 16 * v20 + 4);
        *a7 = v41[2];
        *a8 = v41[3];
        return;
      }

      v21 = this;
    }

    else
    {
      v21 = this;
      v19 = a2;
    }

    HGApplyNDLUTInfo::colorAtIndex(v21, v19, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t HGColorConformLUTInfo::HGColorConformLUTInfo(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, int a6, float a7, float a8)
{
  *HGApplyNDLUTInfo::HGApplyNDLUTInfo(a1, a3, a4, a6, a7, a8) = &unk_287222CA0;
  v11 = *a2;
  *(a1 + 40) = *a2;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = a5[1] - *a5;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_25FCFEEEC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  _Unwind_Resume(exception_object);
}

void HGWhiteBalanceRAW::~HGWhiteBalanceRAW(HGWhiteBalanceRAW *this)
{
  HgcWhiteBalanceRAW::~HgcWhiteBalanceRAW(this);

  HGObject::operator delete(v1);
}

uint64_t HGWhiteBalanceRAW::GetDOD(HGWhiteBalanceRAW *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HGWhiteBalanceRAW::GetROI(HGWhiteBalanceRAW *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(HGColorConformLUTEntryFactory::~HGColorConformLUTEntryFactory, a2, a3);
}

void HGColorConform::CreateColorConformHeliumGraph()
{
  v0 = __cxa_guard_acquire(&qword_27FE4B5A8);
  if (v0)
  {
    OUTLINED_FUNCTION_0_11(v0, &off_280C5C508, &dword_25F8F0000);
    __cxa_guard_release(&qword_27FE4B5A8);
  }
}

{
  v0 = __cxa_guard_acquire(&_MergedGlobals_103);
  if (v0)
  {
    OUTLINED_FUNCTION_0_11(v0, &_MergedGlobals_0, &dword_25F8F0000);
    __cxa_guard_release(&_MergedGlobals_103);
  }
}

uint64_t HGColorMatrix::SetParameter(HGColorMatrix *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (this + 16 * a2 + 432);
  if (*v7 == a3 && *(this + 4 * a2 + 109) == a4 && *(this + 4 * a2 + 110) == a5 && *(this + 4 * a2 + 111) == a6)
  {
    return 0;
  }

  *v7 = a3;
  *(this + 4 * a2 + 109) = a4;
  *(this + 4 * a2 + 110) = a5;
  *(this + 4 * a2 + 111) = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

HGNode *HGColorMatrix::GetOutput(HGColorMatrix *this, HGRenderer *a2, double a3, double a4, int32x2_t a5)
{
  a5.i32[0] = 925353388;
  if (HGMath::IsEqualWithinTolerance(*(this + 27), xmmword_2603429B0, a5))
  {
    v7.i32[0] = 925353388;
    if (HGMath::IsEqualWithinTolerance(*(this + 28), xmmword_2603429C0, v7))
    {
      v8.i32[0] = 925353388;
      if (HGMath::IsEqualWithinTolerance(*(this + 29), xmmword_2603429D0, v8))
      {
        v9.i32[0] = 925353388;
        if (HGMath::IsEqualWithinTolerance(*(this + 30), xmmword_2603427D0, v9))
        {

          return HGRenderer::GetInput(a2, this, 0);
        }
      }
    }
  }

  if (HGRenderer::IsMergeable(a2, this, 0, 0))
  {
    Input = HGRenderer::GetInput(a2, this, 0);
    if (Input)
    {
      v12 = Input;
      v13 = *(Input + 3);
      if (v13 == -735746938)
      {
LABEL_15:
        v17 = *(this + 27);
        v18 = *(this + 28);
        v19 = *(this + 29);
        v20 = *(this + 30);
        v21 = vaddq_f32(vmulq_laneq_f32(v20, *(v12 + 28), 3), vaddq_f32(vmulq_laneq_f32(v19, *(v12 + 28), 2), vaddq_f32(vmulq_lane_f32(v18, *(v12 + 448), 1), vmulq_n_f32(v17, COERCE_FLOAT(*(v12 + 28))))));
        *(v12 + 27) = vaddq_f32(vmulq_laneq_f32(v20, *(v12 + 27), 3), vaddq_f32(vmulq_laneq_f32(v19, *(v12 + 27), 2), vaddq_f32(vmulq_lane_f32(v18, *(v12 + 432), 1), vmulq_n_f32(v17, COERCE_FLOAT(*(v12 + 27))))));
        *(v12 + 28) = v21;
        v22 = vaddq_f32(vmulq_laneq_f32(v20, *(v12 + 29), 3), vaddq_f32(vmulq_laneq_f32(v19, *(v12 + 29), 2), vaddq_f32(vmulq_lane_f32(v18, *(v12 + 464), 1), vmulq_n_f32(v17, COERCE_FLOAT(*(v12 + 29))))));
        v23 = vaddq_f32(vmulq_laneq_f32(v20, *(v12 + 30), 3), vaddq_f32(vmulq_laneq_f32(v19, *(v12 + 30), 2), vaddq_f32(vmulq_lane_f32(v18, *(v12 + 480), 1), vmulq_n_f32(v17, COERCE_FLOAT(*(v12 + 30))))));
        *(v12 + 29) = v22;
        *(v12 + 30) = v23;
        HGColorMatrix::ParameterizeMatrix(v12, a2);
        return v12;
      }

      if (v13 == -735746939)
      {
        v14 = *(this + 51);
        if (!v14)
        {
          v15 = HGObject::operator new(0x1F0uLL);
          HGColorMatrix::HGColorMatrix(v15);
        }

        *(v14 + 27) = *(Input + 27);
        *(v14 + 28) = *(Input + 28);
        *(v14 + 29) = *(Input + 29);
        *(v14 + 30) = *(Input + 30);
        v16 = HGRenderer::GetInput(a2, Input, 0);
        (*(*v14 + 120))(v14, 0, v16);
        v12 = v14;
        goto LABEL_15;
      }
    }
  }

  v24 = *(this + 51);
  if (v24)
  {
    (*(*v24 + 120))(v24, 0, 0);
  }

  HGColorMatrix::ParameterizeMatrix(this, a2);
  return this;
}

_OWORD *HGColorMatrix::LoadMatrix(_OWORD *result, int32x4_t *a2, char a3)
{
  v3 = *a2;
  if (a3)
  {
    v4 = a2[1];
    v5 = a2[2];
    v6 = vtrn1q_s32(v3, v4);
    v7 = vtrn2q_s32(v3, v4);
    v8 = a2[3];
    v9 = vtrn1q_s32(v5, v8);
    v10 = vtrn2q_s32(v5, v8);
    v11 = vzip2q_s64(v6, v9);
    v6.i64[1] = v9.i64[0];
    v12 = vzip2q_s64(v7, v10);
    v7.i64[1] = v10.i64[0];
    result[27] = v6;
    result[28] = v7;
    result[29] = v11;
  }

  else
  {
    result[27] = v3;
    result[28] = a2[1];
    result[29] = a2[2];
    v12 = a2[3];
  }

  result[30] = v12;
  return result;
}

float32x4_t HGColorMatrix::MultMatrix(float32x4_t *a1, _OWORD *a2, char a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  if (a3)
  {
    v5 = vtrn2q_s32(v3, v4);
    v3 = vtrn1q_s32(v3, v4);
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
    v8 = vtrn1q_s32(v6, v7);
    v9 = vtrn2q_s32(v6, v7);
    v10 = vzip2q_s64(v3, v8);
    v3.i64[1] = v8.i64[0];
    v4.i64[0] = v5.i64[0];
    v4.i64[1] = v9.i64[0];
    v11 = vzip2q_s64(v5, v9);
  }

  else
  {
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
  }

  v12 = vaddq_f32(vmulq_laneq_f32(v11, a1[28], 3), vaddq_f32(vmulq_laneq_f32(v10, a1[28], 2), vaddq_f32(vmulq_lane_f32(v4, *a1[28].f32, 1), vmulq_n_f32(v3, COERCE_FLOAT(*&a1[28])))));
  a1[27] = vaddq_f32(vmulq_laneq_f32(v11, a1[27], 3), vaddq_f32(vmulq_laneq_f32(v10, a1[27], 2), vaddq_f32(vmulq_lane_f32(v4, *a1[27].f32, 1), vmulq_n_f32(v3, COERCE_FLOAT(*&a1[27])))));
  a1[28] = v12;
  v13 = vaddq_f32(vmulq_laneq_f32(v11, a1[29], 3), vaddq_f32(vmulq_laneq_f32(v10, a1[29], 2), vaddq_f32(vmulq_lane_f32(v4, *a1[29].f32, 1), vmulq_n_f32(v3, COERCE_FLOAT(*&a1[29])))));
  result = vaddq_f32(vmulq_laneq_f32(v11, a1[30], 3), vaddq_f32(vmulq_laneq_f32(v10, a1[30], 2), vaddq_f32(vmulq_lane_f32(v4, *a1[30].f32, 1), vmulq_n_f32(v3, COERCE_FLOAT(*&a1[30])))));
  a1[29] = v13;
  a1[30] = result;
  return result;
}

float32x4_t HGColorMatrix::Scale(float32x4_t *this, float a2, float a3, float32_t a4)
{
  __asm { FMOV            V3.4S, #1.0 }

  _Q3.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  _Q3.f32[2] = a4;
  v9 = vmulq_f32(_Q3, this[28]);
  this[27] = vmulq_f32(_Q3, this[27]);
  this[28] = v9;
  result = vmulq_f32(_Q3, this[29]);
  this[29] = result;
  return result;
}

float32x4_t HGColorMatrix::Translate(float32x4_t *this, float a2, float a3, float32_t a4)
{
  __asm { FMOV            V3.4S, #1.0 }

  _Q3.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  _Q3.f32[2] = a4;
  v9 = vaddq_f32(vmulq_laneq_f32(_Q3, this[28], 3), vaddq_f32(vmulq_laneq_f32(xmmword_2603429D0, this[28], 2), vaddq_f32(vmulq_lane_f32(xmmword_2603429C0, *this[28].f32, 1), vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(*&this[28])))));
  this[27] = vaddq_f32(vmulq_laneq_f32(_Q3, this[27], 3), vaddq_f32(vmulq_laneq_f32(xmmword_2603429D0, this[27], 2), vaddq_f32(vmulq_lane_f32(xmmword_2603429C0, *this[27].f32, 1), vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(*&this[27])))));
  this[28] = v9;
  result = vaddq_f32(vmulq_laneq_f32(_Q3, this[30], 3), vaddq_f32(vmulq_laneq_f32(xmmword_2603429D0, this[30], 2), vaddq_f32(vmulq_lane_f32(xmmword_2603429C0, *this[30].f32, 1), vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(*&this[30])))));
  this[29] = vaddq_f32(vmulq_laneq_f32(_Q3, this[29], 3), vaddq_f32(vmulq_laneq_f32(xmmword_2603429D0, this[29], 2), vaddq_f32(vmulq_lane_f32(xmmword_2603429C0, *this[29].f32, 1), vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(*&this[29])))));
  this[30] = result;
  return result;
}

uint64_t HGColorMatrix::info@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2 >= 1)
  {
    return HGLoggerUtils::matrixPrettyString(result + 432, 4, 4, a3, a4);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  return result;
}

uint64_t c1(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[3] - a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = *(a1 + 10) + 16 * a3;
    v8 = *(a1 + 2);
    v9 = *a2;
    v10 = (a1[6] - v6);
    v11 = (a1[22] - v6);
    if (v6 < 4)
    {
      if (v6)
      {
        v21 = v5 - v4;
        v22 = 16 * v10;
        v23 = 16 * v11;
        do
        {
          v24 = v21;
          do
          {
            v25 = *v7;
            v7 += 16;
            *v8++ = vmulq_f32(v9, v25);
            v20 = __CFADD__(v24++, 1);
          }

          while (!v20);
          v8 = (v8 + v22);
          v7 += v23;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      v12 = v5 - v4 + 4;
      do
      {
        v13 = v12;
        for (i = v6; i > 3; i -= 4)
        {
          v15 = v13;
          v16 = *(v7 + 32);
          v17 = *(v7 + 48);
          v18 = vmulq_f32(v9, *(v7 + 16));
          *v8 = vmulq_f32(v9, *v7);
          v8[1] = v18;
          v8[2] = vmulq_f32(v9, v16);
          v8[3] = vmulq_f32(v9, v17);
          v8 += 4;
          v7 += 64;
          v13 += 4;
        }

        if (i)
        {
          v19 = 0;
          do
          {
            v8[v19 / 0x10] = vmulq_f32(v9, *(v7 + v19));
            v19 += 16;
            v20 = __CFADD__(v15++, 1);
          }

          while (!v20);
          v8 = (v8 + v19);
          v7 += v19;
        }

        v8 += v10;
        v7 += 16 * v11;
        --v3;
      }

      while (v3);
    }
  }

  return 1;
}

uint64_t c2x(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 4);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = *(a1 + 8) - *a1;
    v7 = *(a1 + 80);
    v8 = *(a1 + 16);
    v9 = *a2;
    v10 = a2[1];
    v11 = (*(a1 + 24) - v6);
    v12 = (*(a1 + 88) - v6);
    if (v6 < 2)
    {
      if (v6)
      {
        v23 = v4 - v3;
        v24 = (v7 + 16 * a3 + 16);
        do
        {
          *v8 = vaddq_f32(vmulq_f32(v9, v24[-1]), vmulq_f32(v10, *v24));
          v8 += v11 + 1;
          v24 += v12 + 1;
        }

        while (!__CFADD__(v23++, 1));
      }
    }

    else
    {
      v13 = (v7 + 16 * a3);
      v14 = 16 * v11 - 32;
      v15 = 16 * v12 - 32;
      do
      {
        v17 = 0;
        v18 = *v13;
        for (i = v6; i > 1; i -= 2)
        {
          v20 = vmulq_f32(v9, v18);
          v21 = v13[v17 + 1];
          v18 = v13[v17 + 2];
          v22 = &v8[v17];
          *v22 = vaddq_f32(v20, vmulq_f32(v10, v21));
          v22[1] = vaddq_f32(vmulq_f32(v9, v21), vmulq_f32(v10, v18));
          v17 += 2;
        }

        if (i)
        {
          v8[v17] = vaddq_f32(vmulq_f32(v9, v18), vmulq_f32(v10, v13[v17 + 1]));
          v16 = 48;
        }

        else
        {
          v16 = 32;
        }

        v8 = (v8 + v14 + v16 + v17 * 16);
        v13 = (v13 + v15 + v16 + v17 * 16);
        --v5;
      }

      while (v5);
    }
  }

  return 2;
}

uint64_t c3x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[3] - a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (*(a1 + 10) + 16 * a3);
    v8 = *(a1 + 2);
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = (a1[6] - v6);
    v13 = (a1[22] - v6);
    if (v6 < 3)
    {
      if (v6)
      {
        v28 = v5 - v4;
        v29 = 16 * v12;
        v30 = 16 * v13;
        do
        {
          v31 = *v7;
          v32 = v7[1];
          v33 = v28;
          do
          {
            v34 = vmulq_f32(v9, v31);
            v35 = vmulq_f32(v10, v32);
            v31 = v32;
            v32 = v7[2];
            *v8++ = vaddq_f32(v35, vaddq_f32(v34, vmulq_f32(v11, v32)));
            ++v7;
            v27 = __CFADD__(v33++, 1);
          }

          while (!v27);
          v8 = (v8 + v29);
          v7 = (v7 + v30);
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      v14 = v5 - v4 + 3;
      do
      {
        v16 = *v7;
        v15 = v7[1];
        v17 = v14;
        for (i = v6; i > 2; i -= 3)
        {
          v19 = vmulq_f32(v9, v16);
          v20 = v7[3];
          v7 += 3;
          v16 = v20;
          v21 = v17;
          v22 = v7[-1];
          *v8 = vaddq_f32(vmulq_f32(v10, v15), vaddq_f32(v19, vmulq_f32(v11, v22)));
          v23 = vaddq_f32(vmulq_f32(v10, v22), vaddq_f32(vmulq_f32(v9, v15), vmulq_f32(v11, v20)));
          v15 = v7[1];
          v8[1] = v23;
          v8[2] = vaddq_f32(vmulq_f32(v10, v20), vaddq_f32(vmulq_f32(v9, v22), vmulq_f32(v11, v15)));
          v8 += 3;
          v17 += 3;
        }

        if (i)
        {
          v24 = 0;
          do
          {
            v25 = vmulq_f32(v9, v16);
            v26 = vmulq_f32(v10, v15);
            v16 = v15;
            v15 = v7[v24 + 2];
            v8[v24++] = vaddq_f32(v26, vaddq_f32(v25, vmulq_f32(v11, v15)));
            v27 = __CFADD__(v21++, 1);
          }

          while (!v27);
          v8 = (v8 + v24 * 16);
          v7 = (v7 + v24 * 16);
        }

        v8 += v12;
        v7 += v13;
        --v3;
      }

      while (v3);
    }
  }

  return 3;
}

uint64_t c4x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[3] - a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (*(a1 + 10) + 16 * a3);
    v8 = *(a1 + 2);
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = a2[3];
    v13 = (a1[6] - v6);
    v14 = (a1[22] - v6);
    if (v6 < 4)
    {
      if (v6)
      {
        v31 = v5 - v4;
        v32 = 16 * v13;
        v33 = 16 * v14;
        do
        {
          v34 = *v7;
          v35 = v7[1];
          v36 = v31;
          v37 = v7[2];
          do
          {
            v38 = vmulq_f32(v9, v34);
            v39 = vmulq_f32(v10, v35);
            v34 = v35;
            v35 = v37;
            v37 = v7[3];
            *v8++ = vaddq_f32(vaddq_f32(v38, vmulq_f32(v11, v35)), vaddq_f32(v39, vmulq_f32(v12, v37)));
            ++v7;
            v30 = __CFADD__(v36++, 1);
          }

          while (!v30);
          v8 = (v8 + v32);
          v7 = (v7 + v33);
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      v15 = v5 - v4 + 4;
      do
      {
        v17 = *v7;
        v16 = v7[1];
        v18 = v15;
        v19 = v6;
        v20 = v7[2];
        do
        {
          v21 = v18;
          v22 = vmulq_f32(v9, v17);
          v23 = v7[4];
          v7 += 4;
          v17 = v23;
          v24 = v7[-1];
          *v8 = vaddq_f32(vaddq_f32(v22, vmulq_f32(v11, v20)), vaddq_f32(vmulq_f32(v10, v16), vmulq_f32(v12, v24)));
          v25 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v16), vmulq_f32(v11, v24)), vaddq_f32(vmulq_f32(v10, v20), vmulq_f32(v12, v23)));
          v16 = v7[1];
          v8[1] = v25;
          v26 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v20), vmulq_f32(v11, v23)), vaddq_f32(vmulq_f32(v10, v24), vmulq_f32(v12, v16)));
          v20 = v7[2];
          v8[2] = v26;
          v8[3] = vaddq_f32(vaddq_f32(vmulq_f32(v9, v24), vmulq_f32(v11, v16)), vaddq_f32(vmulq_f32(v10, v23), vmulq_f32(v12, v20)));
          v8 += 4;
          v19 -= 4;
          v18 += 4;
        }

        while (v19 > 3);
        if (v19)
        {
          v27 = 0;
          do
          {
            v28 = vmulq_f32(v9, v17);
            v29 = vmulq_f32(v10, v16);
            v17 = v16;
            v16 = v20;
            v20 = v7[v27 + 3];
            v8[v27++] = vaddq_f32(vaddq_f32(v28, vmulq_f32(v11, v16)), vaddq_f32(v29, vmulq_f32(v12, v20)));
            v30 = __CFADD__(v21++, 1);
          }

          while (!v30);
          v8 = (v8 + v27 * 16);
          v7 = (v7 + v27 * 16);
        }

        v8 += v13;
        v7 += v14;
        --v3;
      }

      while (v3);
    }
  }

  return 4;
}

uint64_t c5x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a3;
  v4 = a1[3] - a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = (*(a1 + 10) + 16 * a3);
    v9 = *(a1 + 2);
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v13 = (a1[6] - v7);
    v14 = (a1[22] - v7);
    if (v7 < 3)
    {
      if (v7)
      {
        v29 = v6 - v5;
        v30 = 16 * v13;
        v31 = 16 * v14;
        do
        {
          v32 = v9;
          v33 = *v8;
          v34 = v8[1];
          v9 = (v9 + v30);
          v35 = v8 + 2;
          v8 = (v8 + v31);
          v36 = v29;
          do
          {
            v37 = vmulq_f32(v10, v33);
            v38 = vmulq_f32(v11, v34);
            v33 = v34;
            v39 = *v35++;
            v34 = v39;
            *v32++ = vaddq_f32(v38, vaddq_f32(v37, vmulq_f32(v12, v39)));
            ++v9;
            ++v8;
            v28 = __CFADD__(v36++, 1);
          }

          while (!v28);
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      v15 = v6 - v5 + 3;
      do
      {
        v17 = *v8;
        v16 = v8[1];
        v18 = v15;
        for (i = v7; i > 2; i -= 3)
        {
          v20 = vmulq_f32(v10, v17);
          v21 = v8[3];
          v8 += 3;
          v17 = v21;
          v22 = v18;
          v23 = v8[-1];
          *v9 = vaddq_f32(vmulq_f32(v11, v16), vaddq_f32(v20, vmulq_f32(v12, v23)));
          v24 = vaddq_f32(vmulq_f32(v11, v23), vaddq_f32(vmulq_f32(v10, v16), vmulq_f32(v12, v21)));
          v16 = v8[1];
          v9[1] = v24;
          v9[2] = vaddq_f32(vmulq_f32(v11, v21), vaddq_f32(vmulq_f32(v10, v23), vmulq_f32(v12, v16)));
          v9 += 3;
          v18 += 3;
        }

        if (i)
        {
          v25 = 0;
          do
          {
            v26 = vmulq_f32(v10, v17);
            v27 = vmulq_f32(v11, v16);
            v17 = v16;
            v16 = v8[v25 + 2];
            v9[v25++] = vaddq_f32(v27, vaddq_f32(v26, vmulq_f32(v12, v16)));
            v28 = __CFADD__(v22++, 1);
          }

          while (!v28);
          v9 = (v9 + v25 * 16);
          v8 = (v8 + v25 * 16);
        }

        v9 += v13;
        v8 += v14;
        --v4;
      }

      while (v4);
    }
  }

  v40 = a1[3];
  v41 = a1[1];
  v42 = a1[2] - *a1;
  v43 = *(a1 + 10) + 16 * v3;
  v44 = *(a1 + 2);
  v45 = a2[3];
  v46 = a2[4];
  v47 = (a1[6] - v42);
  v48 = (a1[22] - v42);
  if (v42 < 2)
  {
    if (v42)
    {
      v61 = (v43 + 64);
      v62 = v41 - v40;
      do
      {
        *v44 = vaddq_f32(vmulq_f32(v46, *v61), vaddq_f32(vmulq_f32(v45, v61[-1]), *v44));
        v61 += v48 + 1;
        v44 += v47 + 1;
        v28 = __CFADD__(v62++, 1);
      }

      while (!v28);
    }
  }

  else
  {
    v49 = v40 - v41;
    v50 = (v43 + 48);
    v51 = 16 * v47 - 32;
    v52 = 16 * v48 - 32;
    do
    {
      v54 = 0;
      v55 = *v50;
      for (j = v42; j > 1; j -= 2)
      {
        v57 = &v44[v54];
        v58 = vaddq_f32(vmulq_f32(v45, v55), v44[v54]);
        v59 = v50[v54 + 1];
        v55 = v50[v54 + 2];
        v60 = vaddq_f32(vmulq_f32(v46, v55), vaddq_f32(vmulq_f32(v45, v59), v44[v54 + 1]));
        *v57 = vaddq_f32(vmulq_f32(v46, v59), v58);
        v57[1] = v60;
        v54 += 2;
      }

      if (j)
      {
        v44[v54] = vaddq_f32(vmulq_f32(v46, v50[v54 + 1]), vaddq_f32(vmulq_f32(v45, v55), v44[v54]));
        v53 = 48;
      }

      else
      {
        v53 = 32;
      }

      v44 = (v44 + v51 + v53 + v54 * 16);
      v50 = (v50 + v52 + v53 + v54 * 16);
      --v49;
    }

    while (v49);
  }

  return 5;
}

uint64_t c6x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a3;
  v4 = a1[3] - a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = (*(a1 + 10) + 16 * a3);
    v9 = *(a1 + 2);
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v13 = (a1[6] - v7);
    v14 = (a1[22] - v7);
    if (v7 < 3)
    {
      if (v7)
      {
        v29 = v6 - v5;
        v30 = 16 * v13;
        v31 = 16 * v14;
        do
        {
          v32 = v9;
          v33 = *v8;
          v34 = v8[1];
          v9 = (v9 + v30);
          v35 = v8 + 2;
          v8 = (v8 + v31);
          v36 = v29;
          do
          {
            v37 = vmulq_f32(v10, v33);
            v38 = vmulq_f32(v11, v34);
            v33 = v34;
            v39 = *v35++;
            v34 = v39;
            *v32++ = vaddq_f32(v38, vaddq_f32(v37, vmulq_f32(v12, v39)));
            ++v9;
            ++v8;
            v28 = __CFADD__(v36++, 1);
          }

          while (!v28);
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      v15 = v6 - v5 + 3;
      do
      {
        v17 = *v8;
        v16 = v8[1];
        v18 = v15;
        for (i = v7; i > 2; i -= 3)
        {
          v20 = vmulq_f32(v10, v17);
          v21 = v8[3];
          v8 += 3;
          v17 = v21;
          v22 = v18;
          v23 = v8[-1];
          *v9 = vaddq_f32(vmulq_f32(v11, v16), vaddq_f32(v20, vmulq_f32(v12, v23)));
          v24 = vaddq_f32(vmulq_f32(v11, v23), vaddq_f32(vmulq_f32(v10, v16), vmulq_f32(v12, v21)));
          v16 = v8[1];
          v9[1] = v24;
          v9[2] = vaddq_f32(vmulq_f32(v11, v21), vaddq_f32(vmulq_f32(v10, v23), vmulq_f32(v12, v16)));
          v9 += 3;
          v18 += 3;
        }

        if (i)
        {
          v25 = 0;
          do
          {
            v26 = vmulq_f32(v10, v17);
            v27 = vmulq_f32(v11, v16);
            v17 = v16;
            v16 = v8[v25 + 2];
            v9[v25++] = vaddq_f32(v27, vaddq_f32(v26, vmulq_f32(v12, v16)));
            v28 = __CFADD__(v22++, 1);
          }

          while (!v28);
          v9 = (v9 + v25 * 16);
          v8 = (v8 + v25 * 16);
        }

        v9 += v13;
        v8 += v14;
        --v4;
      }

      while (v4);
    }
  }

  v40 = a1[2];
  v41 = *a1;
  v42 = v40 - *a1;
  v43 = a1[3] - a1[1];
  v44 = (*(a1 + 10) + 16 * v3 + 48);
  v45 = *(a1 + 2);
  v46 = a2[3];
  v47 = a2[4];
  v48 = a2[5];
  v49 = (a1[6] - v42);
  v50 = (a1[22] - v42);
  if (v42 < 3)
  {
    if (v42)
    {
      v66 = v41 - v40;
      v67 = 16 * v49;
      v68 = 16 * v50;
      do
      {
        v69 = v45;
        v70 = *v44;
        v71 = v44[1];
        v45 = (v45 + v67);
        v72 = v44 + 2;
        v44 = (v44 + v68);
        v73 = v66;
        do
        {
          v74 = vmulq_f32(v46, v70);
          v75 = vmulq_f32(v47, v71);
          v70 = v71;
          v76 = *v72++;
          v71 = v76;
          *v69 = vaddq_f32(vaddq_f32(v75, *v69), vaddq_f32(v74, vmulq_f32(v48, v76)));
          ++v69;
          ++v45;
          ++v44;
          v28 = __CFADD__(v73++, 1);
        }

        while (!v28);
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    v51 = v41 - v40 + 3;
    do
    {
      v53 = *v44;
      v52 = v44[1];
      v54 = v51;
      for (j = v42; j > 2; j -= 3)
      {
        v56 = vmulq_f32(v46, v53);
        v57 = v44[3];
        v44 += 3;
        v53 = v57;
        v58 = v44[-1];
        v59 = v45[1];
        v60 = v54;
        *v45 = vaddq_f32(vaddq_f32(vmulq_f32(v47, v52), *v45), vaddq_f32(v56, vmulq_f32(v48, v58)));
        v61 = vaddq_f32(vaddq_f32(vmulq_f32(v46, v52), vmulq_f32(v48, v57)), vaddq_f32(vmulq_f32(v47, v58), v59));
        v52 = v44[1];
        v62 = vaddq_f32(vaddq_f32(vmulq_f32(v46, v58), vmulq_f32(v48, v52)), vaddq_f32(vmulq_f32(v47, v57), v45[2]));
        v45[1] = v61;
        v45[2] = v62;
        v45 += 3;
        v54 += 3;
      }

      if (j)
      {
        v63 = 0;
        do
        {
          v64 = vmulq_f32(v46, v53);
          v65 = vmulq_f32(v47, v52);
          v53 = v52;
          v52 = v44[v63 + 2];
          v45[v63] = vaddq_f32(vaddq_f32(v65, v45[v63]), vaddq_f32(v64, vmulq_f32(v48, v52)));
          ++v63;
          v28 = __CFADD__(v60++, 1);
        }

        while (!v28);
        v45 = (v45 + v63 * 16);
        v44 = (v44 + v63 * 16);
      }

      v45 += v49;
      v44 += v50;
      --v43;
    }

    while (v43);
  }

  return 6;
}

uint64_t c7x(uint64_t a1, float32x4_t *a2, int a3)
{
  c4x(a1, a2, a3);
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = *(a1 + 12) - *(a1 + 4);
  v10 = (*(a1 + 80) + 16 * a3 + 64);
  v11 = *(a1 + 16);
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = (*(a1 + 24) - v8);
  v16 = (*(a1 + 88) - v8);
  if (v8 < 3)
  {
    if (v8)
    {
      v33 = v7 - v6;
      v34 = 16 * v15;
      v35 = 16 * v16;
      do
      {
        v36 = v11;
        v37 = *v10;
        v38 = v10[1];
        v11 = (v11 + v34);
        v39 = v10 + 2;
        v10 = (v10 + v35);
        v40 = v33;
        do
        {
          v41 = vmulq_f32(v12, v37);
          v42 = vmulq_f32(v13, v38);
          v37 = v38;
          v43 = *v39++;
          v38 = v43;
          *v36 = vaddq_f32(vaddq_f32(v42, *v36), vaddq_f32(v41, vmulq_f32(v14, v43)));
          ++v36;
          ++v11;
          ++v10;
          v32 = __CFADD__(v40++, 1);
        }

        while (!v32);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v17 = v7 - v6 + 3;
    do
    {
      v19 = *v10;
      v18 = v10[1];
      v20 = v17;
      for (i = v8; i > 2; i -= 3)
      {
        v22 = vmulq_f32(v12, v19);
        v23 = v10[3];
        v10 += 3;
        v19 = v23;
        v24 = v10[-1];
        v25 = v11[1];
        v26 = v20;
        *v11 = vaddq_f32(vaddq_f32(vmulq_f32(v13, v18), *v11), vaddq_f32(v22, vmulq_f32(v14, v24)));
        v27 = vaddq_f32(vaddq_f32(vmulq_f32(v12, v18), vmulq_f32(v14, v23)), vaddq_f32(vmulq_f32(v13, v24), v25));
        v18 = v10[1];
        v28 = vaddq_f32(vaddq_f32(vmulq_f32(v12, v24), vmulq_f32(v14, v18)), vaddq_f32(vmulq_f32(v13, v23), v11[2]));
        v11[1] = v27;
        v11[2] = v28;
        v11 += 3;
        v20 += 3;
      }

      if (i)
      {
        v29 = 0;
        do
        {
          v30 = vmulq_f32(v12, v19);
          v31 = vmulq_f32(v13, v18);
          v19 = v18;
          v18 = v10[v29 + 2];
          v11[v29] = vaddq_f32(vaddq_f32(v31, v11[v29]), vaddq_f32(v30, vmulq_f32(v14, v18)));
          ++v29;
          v32 = __CFADD__(v26++, 1);
        }

        while (!v32);
        v11 = (v11 + v29 * 16);
        v10 = (v10 + v29 * 16);
      }

      v11 += v15;
      v10 += v16;
      --v9;
    }

    while (v9);
  }

  return 7;
}

uint64_t cadd1(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1);
  v5 = *(a1 + 12) - *(a1 + 4);
  v6 = *(a1 + 80) + 16 * a3;
  v7 = *(a1 + 88);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *a2;
  if (v4 < 4)
  {
    if (v3 != *a1)
    {
      do
      {
        v20 = 0;
        do
        {
          *(v8 + 16 * v20) = vaddq_f32(vmulq_f32(v10, *(v6 + 16 * v20)), *(v8 + 16 * v20));
          ++v20;
        }

        while (v4 != v20);
        v6 += 16 * v7;
        v8 += 16 * v9;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v11 = 16 * v9;
    v12 = 16 * v7;
    do
    {
      LODWORD(v13) = 0;
      v14 = 32;
      for (i = v4; i > 3; i -= 4)
      {
        v16 = (v8 + v14);
        v17 = vaddq_f32(vmulq_f32(v10, *(v6 + v14 - 16)), *(v8 + v14 - 16));
        v18 = vaddq_f32(vmulq_f32(v10, *(v6 + v14)), *(v8 + v14));
        v19 = vaddq_f32(vmulq_f32(v10, *(v6 + v14 + 16)), *(v8 + v14 + 16));
        v16[-2] = vaddq_f32(vmulq_f32(v10, *(v6 + v14 - 32)), *(v8 + v14 - 32));
        v16[-1] = v17;
        *v16 = v18;
        v16[1] = v19;
        v13 = (v13 + 4);
        v14 += 64;
      }

      if (v4 > v13)
      {
        do
        {
          *(v8 + 16 * v13) = vaddq_f32(vmulq_f32(v10, *(v6 + 16 * v13)), *(v8 + 16 * v13));
          ++v13;
        }

        while (v13 < v4);
      }

      v8 += v11;
      v6 += v12;
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t cadd2x(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 4);
  v5 = *(a1 + 8) - *a1;
  v6 = *(a1 + 80);
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = a2[1];
  v10 = (*(a1 + 24) - v5);
  v11 = (*(a1 + 88) - v5);
  if (v5 < 2)
  {
    if (v5)
    {
      v24 = (v6 + 16 * a3 + 16);
      v25 = v4 - v3;
      do
      {
        *v7 = vaddq_f32(vmulq_f32(v9, *v24), vaddq_f32(vmulq_f32(v8, v24[-1]), *v7));
        v24 += v11 + 1;
        v7 += v10 + 1;
      }

      while (!__CFADD__(v25++, 1));
    }
  }

  else
  {
    v12 = v3 - v4;
    v13 = (v6 + 16 * a3);
    v14 = 16 * v10 - 32;
    v15 = 16 * v11 - 32;
    do
    {
      v17 = 0;
      v18 = *v13;
      for (i = v5; i > 1; i -= 2)
      {
        v20 = &v7[v17];
        v21 = vaddq_f32(vmulq_f32(v8, v18), v7[v17]);
        v22 = v13[v17 + 1];
        v18 = v13[v17 + 2];
        v23 = vaddq_f32(vmulq_f32(v9, v18), vaddq_f32(vmulq_f32(v8, v22), v7[v17 + 1]));
        *v20 = vaddq_f32(vmulq_f32(v9, v22), v21);
        v20[1] = v23;
        v17 += 2;
      }

      if (i)
      {
        v7[v17] = vaddq_f32(vmulq_f32(v9, v13[v17 + 1]), vaddq_f32(vmulq_f32(v8, v18), v7[v17]));
        v16 = 48;
      }

      else
      {
        v16 = 32;
      }

      v7 = (v7 + v14 + v16 + v17 * 16);
      v13 = (v13 + v15 + v16 + v17 * 16);
      --v12;
    }

    while (v12);
  }

  return 2;
}

uint64_t cadd3x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[2];
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = a1[3] - a1[1];
  v7 = (*(a1 + 10) + 16 * a3);
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = (a1[6] - v5);
  v13 = (a1[22] - v5);
  if (v5 < 3)
  {
    if (v5)
    {
      v30 = v4 - v3;
      v31 = 16 * v12;
      v32 = 16 * v13;
      do
      {
        v33 = *v7;
        v34 = v7[1];
        v35 = v30;
        do
        {
          v36 = vmulq_f32(v9, v33);
          v37 = vmulq_f32(v10, v34);
          v33 = v34;
          v34 = v7[2];
          *v8 = vaddq_f32(vaddq_f32(v37, *v8), vaddq_f32(v36, vmulq_f32(v11, v34)));
          ++v8;
          ++v7;
          v29 = __CFADD__(v35++, 1);
        }

        while (!v29);
        v8 = (v8 + v31);
        v7 = (v7 + v32);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = v4 - v3 + 3;
    do
    {
      v16 = *v7;
      v15 = v7[1];
      v17 = v14;
      for (i = v5; i > 2; i -= 3)
      {
        v19 = vmulq_f32(v9, v16);
        v20 = v7[3];
        v7 += 3;
        v16 = v20;
        v21 = v7[-1];
        v22 = v8[1];
        v23 = v17;
        *v8 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v15), *v8), vaddq_f32(v19, vmulq_f32(v11, v21)));
        v24 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v15), vmulq_f32(v11, v20)), vaddq_f32(vmulq_f32(v10, v21), v22));
        v15 = v7[1];
        v25 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v21), vmulq_f32(v11, v15)), vaddq_f32(vmulq_f32(v10, v20), v8[2]));
        v8[1] = v24;
        v8[2] = v25;
        v8 += 3;
        v17 += 3;
      }

      if (i)
      {
        v26 = 0;
        do
        {
          v27 = vmulq_f32(v9, v16);
          v28 = vmulq_f32(v10, v15);
          v16 = v15;
          v15 = v7[v26 + 2];
          v8[v26] = vaddq_f32(vaddq_f32(v28, v8[v26]), vaddq_f32(v27, vmulq_f32(v11, v15)));
          ++v26;
          v29 = __CFADD__(v23++, 1);
        }

        while (!v29);
        v8 = (v8 + v26 * 16);
        v7 = (v7 + v26 * 16);
      }

      v8 += v12;
      v7 += v13;
      --v6;
    }

    while (v6);
  }

  return 3;
}

uint64_t cadd4x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[2];
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = a1[3] - a1[1];
  v7 = (*(a1 + 10) + 16 * a3);
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = (a1[6] - v5);
  v14 = (a1[22] - v5);
  if (v5 < 4)
  {
    if (v5)
    {
      v33 = v4 - v3;
      v34 = 16 * v13;
      v35 = 16 * v14;
      do
      {
        v36 = *v7;
        v37 = v7[1];
        v38 = v33;
        v39 = v7[2];
        do
        {
          v40 = vmulq_f32(v9, v36);
          v41 = vmulq_f32(v10, v37);
          v36 = v37;
          v37 = v39;
          v39 = v7[3];
          *v8 = vaddq_f32(vaddq_f32(v40, vmulq_f32(v11, v37)), vaddq_f32(vmulq_f32(v12, v39), vaddq_f32(v41, *v8)));
          ++v8;
          ++v7;
          v32 = __CFADD__(v38++, 1);
        }

        while (!v32);
        v8 = (v8 + v34);
        v7 = (v7 + v35);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = v4 - v3 + 4;
    do
    {
      v16 = *v7;
      v17 = v7[1];
      v18 = v15;
      v19 = v5;
      v20 = v7[2];
      do
      {
        v21 = v16;
        v22 = v7[4];
        v7 += 4;
        v16 = v22;
        v23 = v7[-1];
        v24 = v8[1];
        v25 = v18;
        *v8 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v21), vmulq_f32(v11, v20)), vaddq_f32(vmulq_f32(v12, v23), vaddq_f32(vmulq_f32(v10, v17), *v8)));
        v26 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v17), vmulq_f32(v11, v23)), vaddq_f32(vmulq_f32(v12, v22), vaddq_f32(vmulq_f32(v10, v20), v24)));
        v17 = v7[1];
        v8[1] = v26;
        v27 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v20), vmulq_f32(v11, v22)), vaddq_f32(vmulq_f32(v12, v17), vaddq_f32(vmulq_f32(v10, v23), v8[2])));
        v20 = v7[2];
        v28 = vaddq_f32(vaddq_f32(vmulq_f32(v9, v23), vmulq_f32(v11, v17)), vaddq_f32(vmulq_f32(v12, v20), vaddq_f32(vmulq_f32(v10, v22), v8[3])));
        v8[2] = v27;
        v8[3] = v28;
        v8 += 4;
        v19 -= 4;
        v18 += 4;
      }

      while (v19 > 3);
      if (v19)
      {
        v29 = 0;
        do
        {
          v30 = vmulq_f32(v9, v16);
          v31 = vmulq_f32(v10, v17);
          v16 = v17;
          v17 = v20;
          v20 = v7[v29 + 3];
          v8[v29] = vaddq_f32(vaddq_f32(v30, vmulq_f32(v11, v17)), vaddq_f32(vmulq_f32(v12, v20), vaddq_f32(v31, v8[v29])));
          ++v29;
          v32 = __CFADD__(v25++, 1);
        }

        while (!v32);
        v8 = (v8 + v29 * 16);
        v7 = (v7 + v29 * 16);
      }

      v8 += v13;
      v7 += v14;
      --v6;
    }

    while (v6);
  }

  return 4;
}

uint64_t cadd5x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[2];
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = a1[3] - a1[1];
  v7 = a3;
  v8 = (*(a1 + 10) + 16 * a3);
  v9 = *(a1 + 2);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = (a1[6] - v5);
  v14 = (a1[22] - v5);
  if (v5 < 3)
  {
    if (v5)
    {
      v31 = v4 - v3;
      v32 = 16 * v13;
      v33 = 16 * v14;
      do
      {
        v34 = v9;
        v35 = *v8;
        v36 = v8[1];
        v9 = (v9 + v32);
        v37 = v8 + 2;
        v8 = (v8 + v33);
        v38 = v31;
        do
        {
          v39 = vmulq_f32(v10, v35);
          v40 = vmulq_f32(v11, v36);
          v35 = v36;
          v41 = *v37++;
          v36 = v41;
          *v34 = vaddq_f32(vaddq_f32(v40, *v34), vaddq_f32(v39, vmulq_f32(v12, v41)));
          ++v34;
          ++v9;
          ++v8;
          v30 = __CFADD__(v38++, 1);
        }

        while (!v30);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = v4 - v3 + 3;
    do
    {
      v17 = *v8;
      v16 = v8[1];
      v18 = v15;
      for (i = v5; i > 2; i -= 3)
      {
        v20 = vmulq_f32(v10, v17);
        v21 = v8[3];
        v8 += 3;
        v17 = v21;
        v22 = v8[-1];
        v23 = v9[1];
        v24 = v18;
        *v9 = vaddq_f32(vaddq_f32(vmulq_f32(v11, v16), *v9), vaddq_f32(v20, vmulq_f32(v12, v22)));
        v25 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v16), vmulq_f32(v12, v21)), vaddq_f32(vmulq_f32(v11, v22), v23));
        v16 = v8[1];
        v26 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v22), vmulq_f32(v12, v16)), vaddq_f32(vmulq_f32(v11, v21), v9[2]));
        v9[1] = v25;
        v9[2] = v26;
        v9 += 3;
        v18 += 3;
      }

      if (i)
      {
        v27 = 0;
        do
        {
          v28 = vmulq_f32(v10, v17);
          v29 = vmulq_f32(v11, v16);
          v17 = v16;
          v16 = v8[v27 + 2];
          v9[v27] = vaddq_f32(vaddq_f32(v29, v9[v27]), vaddq_f32(v28, vmulq_f32(v12, v16)));
          ++v27;
          v30 = __CFADD__(v24++, 1);
        }

        while (!v30);
        v9 = (v9 + v27 * 16);
        v8 = (v8 + v27 * 16);
      }

      v9 += v13;
      v8 += v14;
      --v6;
    }

    while (v6);
  }

  v42 = a1[3];
  v43 = a1[1];
  v44 = a1[2] - *a1;
  v45 = *(a1 + 10) + 16 * v7;
  v46 = *(a1 + 2);
  v47 = a2[3];
  v48 = a2[4];
  v49 = (a1[6] - v44);
  v50 = (a1[22] - v44);
  if (v44 < 2)
  {
    if (v44)
    {
      v63 = (v45 + 64);
      v64 = v43 - v42;
      do
      {
        *v46 = vaddq_f32(vmulq_f32(v48, *v63), vaddq_f32(vmulq_f32(v47, v63[-1]), *v46));
        v63 += v50 + 1;
        v46 += v49 + 1;
        v30 = __CFADD__(v64++, 1);
      }

      while (!v30);
    }
  }

  else
  {
    v51 = v42 - v43;
    v52 = (v45 + 48);
    v53 = 16 * v49 - 32;
    v54 = 16 * v50 - 32;
    do
    {
      v56 = 0;
      v57 = *v52;
      for (j = v44; j > 1; j -= 2)
      {
        v59 = &v46[v56];
        v60 = vaddq_f32(vmulq_f32(v47, v57), v46[v56]);
        v61 = v52[v56 + 1];
        v57 = v52[v56 + 2];
        v62 = vaddq_f32(vmulq_f32(v48, v57), vaddq_f32(vmulq_f32(v47, v61), v46[v56 + 1]));
        *v59 = vaddq_f32(vmulq_f32(v48, v61), v60);
        v59[1] = v62;
        v56 += 2;
      }

      if (j)
      {
        v46[v56] = vaddq_f32(vmulq_f32(v48, v52[v56 + 1]), vaddq_f32(vmulq_f32(v47, v57), v46[v56]));
        v55 = 48;
      }

      else
      {
        v55 = 32;
      }

      v46 = (v46 + v53 + v55 + v56 * 16);
      v52 = (v52 + v54 + v55 + v56 * 16);
      --v51;
    }

    while (v51);
  }

  return 5;
}

uint64_t cadd6x(int *a1, float32x4_t *a2, int a3)
{
  v3 = a1[2];
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = a1[3] - a1[1];
  v7 = a3;
  v8 = (*(a1 + 10) + 16 * a3);
  v9 = *(a1 + 2);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = (a1[6] - v5);
  v14 = (a1[22] - v5);
  if (v5 < 3)
  {
    if (v5)
    {
      v31 = v4 - v3;
      v32 = 16 * v13;
      v33 = 16 * v14;
      do
      {
        v34 = v9;
        v35 = *v8;
        v36 = v8[1];
        v9 = (v9 + v32);
        v37 = v8 + 2;
        v8 = (v8 + v33);
        v38 = v31;
        do
        {
          v39 = vmulq_f32(v10, v35);
          v40 = vmulq_f32(v11, v36);
          v35 = v36;
          v41 = *v37++;
          v36 = v41;
          *v34 = vaddq_f32(vaddq_f32(v40, *v34), vaddq_f32(v39, vmulq_f32(v12, v41)));
          ++v34;
          ++v9;
          ++v8;
          v30 = __CFADD__(v38++, 1);
        }

        while (!v30);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v15 = v4 - v3 + 3;
    do
    {
      v17 = *v8;
      v16 = v8[1];
      v18 = v15;
      for (i = v5; i > 2; i -= 3)
      {
        v20 = vmulq_f32(v10, v17);
        v21 = v8[3];
        v8 += 3;
        v17 = v21;
        v22 = v8[-1];
        v23 = v9[1];
        v24 = v18;
        *v9 = vaddq_f32(vaddq_f32(vmulq_f32(v11, v16), *v9), vaddq_f32(v20, vmulq_f32(v12, v22)));
        v25 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v16), vmulq_f32(v12, v21)), vaddq_f32(vmulq_f32(v11, v22), v23));
        v16 = v8[1];
        v26 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v22), vmulq_f32(v12, v16)), vaddq_f32(vmulq_f32(v11, v21), v9[2]));
        v9[1] = v25;
        v9[2] = v26;
        v9 += 3;
        v18 += 3;
      }

      if (i)
      {
        v27 = 0;
        do
        {
          v28 = vmulq_f32(v10, v17);
          v29 = vmulq_f32(v11, v16);
          v17 = v16;
          v16 = v8[v27 + 2];
          v9[v27] = vaddq_f32(vaddq_f32(v29, v9[v27]), vaddq_f32(v28, vmulq_f32(v12, v16)));
          ++v27;
          v30 = __CFADD__(v24++, 1);
        }

        while (!v30);
        v9 = (v9 + v27 * 16);
        v8 = (v8 + v27 * 16);
      }

      v9 += v13;
      v8 += v14;
      --v6;
    }

    while (v6);
  }

  v42 = a1[2];
  v43 = *a1;
  v44 = v42 - *a1;
  v45 = a1[3] - a1[1];
  v46 = (*(a1 + 10) + 16 * v7 + 48);
  v47 = *(a1 + 2);
  v48 = a2[3];
  v49 = a2[4];
  v50 = a2[5];
  v51 = (a1[6] - v44);
  v52 = (a1[22] - v44);
  if (v44 < 3)
  {
    if (v44)
    {
      v68 = v43 - v42;
      v69 = 16 * v51;
      v70 = 16 * v52;
      do
      {
        v71 = v47;
        v72 = *v46;
        v73 = v46[1];
        v47 = (v47 + v69);
        v74 = v46 + 2;
        v46 = (v46 + v70);
        v75 = v68;
        do
        {
          v76 = vmulq_f32(v48, v72);
          v77 = vmulq_f32(v49, v73);
          v72 = v73;
          v78 = *v74++;
          v73 = v78;
          *v71 = vaddq_f32(vaddq_f32(v77, *v71), vaddq_f32(v76, vmulq_f32(v50, v78)));
          ++v71;
          ++v47;
          ++v46;
          v30 = __CFADD__(v75++, 1);
        }

        while (!v30);
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    v53 = v43 - v42 + 3;
    do
    {
      v55 = *v46;
      v54 = v46[1];
      v56 = v53;
      for (j = v44; j > 2; j -= 3)
      {
        v58 = vmulq_f32(v48, v55);
        v59 = v46[3];
        v46 += 3;
        v55 = v59;
        v60 = v46[-1];
        v61 = v47[1];
        v62 = v56;
        *v47 = vaddq_f32(vaddq_f32(vmulq_f32(v49, v54), *v47), vaddq_f32(v58, vmulq_f32(v50, v60)));
        v63 = vaddq_f32(vaddq_f32(vmulq_f32(v48, v54), vmulq_f32(v50, v59)), vaddq_f32(vmulq_f32(v49, v60), v61));
        v54 = v46[1];
        v64 = vaddq_f32(vaddq_f32(vmulq_f32(v48, v60), vmulq_f32(v50, v54)), vaddq_f32(vmulq_f32(v49, v59), v47[2]));
        v47[1] = v63;
        v47[2] = v64;
        v47 += 3;
        v56 += 3;
      }

      if (j)
      {
        v65 = 0;
        do
        {
          v66 = vmulq_f32(v48, v55);
          v67 = vmulq_f32(v49, v54);
          v55 = v54;
          v54 = v46[v65 + 2];
          v47[v65] = vaddq_f32(vaddq_f32(v67, v47[v65]), vaddq_f32(v66, vmulq_f32(v50, v54)));
          ++v65;
          v30 = __CFADD__(v62++, 1);
        }

        while (!v30);
        v47 = (v47 + v65 * 16);
        v46 = (v46 + v65 * 16);
      }

      v47 += v51;
      v46 += v52;
      --v45;
    }

    while (v45);
  }

  return 6;
}

uint64_t cadd7x(uint64_t a1, float32x4_t *a2, int a3)
{
  cadd4x(a1, a2, a3);
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = *(a1 + 12) - *(a1 + 4);
  v10 = (*(a1 + 80) + 16 * a3 + 64);
  v11 = *(a1 + 16);
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = (*(a1 + 24) - v8);
  v16 = (*(a1 + 88) - v8);
  if (v8 < 3)
  {
    if (v8)
    {
      v33 = v7 - v6;
      v34 = 16 * v15;
      v35 = 16 * v16;
      do
      {
        v36 = v11;
        v37 = *v10;
        v38 = v10[1];
        v11 = (v11 + v34);
        v39 = v10 + 2;
        v10 = (v10 + v35);
        v40 = v33;
        do
        {
          v41 = vmulq_f32(v12, v37);
          v42 = vmulq_f32(v13, v38);
          v37 = v38;
          v43 = *v39++;
          v38 = v43;
          *v36 = vaddq_f32(vaddq_f32(v42, *v36), vaddq_f32(v41, vmulq_f32(v14, v43)));
          ++v36;
          ++v11;
          ++v10;
          v32 = __CFADD__(v40++, 1);
        }

        while (!v32);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v17 = v7 - v6 + 3;
    do
    {
      v19 = *v10;
      v18 = v10[1];
      v20 = v17;
      for (i = v8; i > 2; i -= 3)
      {
        v22 = vmulq_f32(v12, v19);
        v23 = v10[3];
        v10 += 3;
        v19 = v23;
        v24 = v10[-1];
        v25 = v11[1];
        v26 = v20;
        *v11 = vaddq_f32(vaddq_f32(vmulq_f32(v13, v18), *v11), vaddq_f32(v22, vmulq_f32(v14, v24)));
        v27 = vaddq_f32(vaddq_f32(vmulq_f32(v12, v18), vmulq_f32(v14, v23)), vaddq_f32(vmulq_f32(v13, v24), v25));
        v18 = v10[1];
        v28 = vaddq_f32(vaddq_f32(vmulq_f32(v12, v24), vmulq_f32(v14, v18)), vaddq_f32(vmulq_f32(v13, v23), v11[2]));
        v11[1] = v27;
        v11[2] = v28;
        v11 += 3;
        v20 += 3;
      }

      if (i)
      {
        v29 = 0;
        do
        {
          v30 = vmulq_f32(v12, v19);
          v31 = vmulq_f32(v13, v18);
          v19 = v18;
          v18 = v10[v29 + 2];
          v11[v29] = vaddq_f32(vaddq_f32(v31, v11[v29]), vaddq_f32(v30, vmulq_f32(v14, v18)));
          ++v29;
          v32 = __CFADD__(v26++, 1);
        }

        while (!v32);
        v11 = (v11 + v29 * 16);
        v10 = (v10 + v29 * 16);
      }

      v11 += v15;
      v10 += v16;
      --v9;
    }

    while (v9);
  }

  return 7;
}

uint64_t c2y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12) - *(a1 + 4);
    v5 = *a2;
    v6 = a2[1];
    v7 = *(a1 + 88);
    if (v4 < 2)
    {
      if (v4)
      {
        v24 = 0;
        v25 = 16 * a3;
        v26 = v25 + 16 * v7;
        do
        {
          *(*(a1 + 16) + 16 * v24++) = vaddq_f32(vmulq_f32(v5, *(*(a1 + 80) + v25)), vmulq_f32(v6, *(*(a1 + 80) + v26)));
          v26 += 16;
          v25 += 16;
        }

        while (v3 != v24);
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a1 + 24);
      v11 = 32 * v10;
      v12 = 16 * v10;
      v13 = 32 * v7;
      do
      {
        v14 = *(a1 + 80);
        v15 = *(v14 + 16 * v9 + 16 * a3);
        v16 = *(a1 + 16);
        v17 = v16 + v12;
        v18 = v14 + 16 * a3;
        v19 = v14 + 16 * a3 + v13;
        v20 = v14 + 16 * a3 + 16 * v7;
        v21 = v4;
        do
        {
          v22 = *(v20 + v8);
          v23 = vaddq_f32(vmulq_f32(v5, v15), vmulq_f32(v6, v22));
          v15 = *(v19 + v8);
          *(v16 + v8) = v23;
          *(v17 + v8) = vaddq_f32(vmulq_f32(v5, v22), vmulq_f32(v6, v15));
          v21 -= 2;
          v16 += v11;
          v17 += v11;
          v18 += v13;
          v19 += v13;
          v20 += v13;
        }

        while (v21 > 1);
        if (v21)
        {
          *(v16 + v8) = vaddq_f32(vmulq_f32(v5, v15), vmulq_f32(v6, *(v18 + v8 + 16 * v7)));
        }

        ++v9;
        v8 += 16;
      }

      while (v9 != v3);
    }
  }

  return 2;
}

uint64_t c3y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a1 + 24);
    v11 = *(a1 + 88);
    v12 = a3;
    v13 = 2 * v11;
    if ((v4 - v5) < 3)
    {
      if (v6)
      {
        v45 = 0;
        v46 = 0;
        v47 = 16 * v10;
        v48 = 16 * a3 + 32 * v11;
        do
        {
          v49 = *(a1 + 80);
          v50 = (v49 + 16 * v46 + 16 * v12);
          v51 = *v50;
          v52 = v50[v11];
          v53 = (*(a1 + 16) + v45);
          v54 = (v49 + v48);
          v55 = v5 - v4;
          do
          {
            v56 = vmulq_f32(v7, v51);
            v57 = vmulq_f32(v8, v52);
            v51 = v52;
            v52 = *v54;
            *v53 = vaddq_f32(v57, vaddq_f32(v56, vmulq_f32(v9, *v54)));
            v53 = (v53 + v47);
            v54 += v11;
            v44 = __CFADD__(v55++, 1);
          }

          while (!v44);
          ++v46;
          v45 += 16;
          v48 += 16;
        }

        while (v46 != v3);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 48 * v10;
      v17 = 32 * v10;
      v18 = 16 * v10;
      v19 = 48 * v11;
      v20 = 16 * a3 + v19;
      v21 = v5 - v4 + 3;
      v22 = v20;
      do
      {
        v23 = *(a1 + 80);
        v24 = (v23 + 16 * v15 + 16 * a3);
        v25 = *(a1 + 16);
        v26 = v24[v11];
        v27 = v25 + v17;
        v28 = v25 + v18;
        v29 = v23 + v20 + 16 * v11;
        v30 = v23 + v20;
        v31 = *v24;
        v32 = v23 + 16 * a3 + 16 * v13;
        v33 = v23 + v22;
        v34 = v21;
        v35 = v6;
        do
        {
          v36 = v33;
          v37 = *(v32 + v14);
          v38 = vaddq_f32(vmulq_f32(v7, v31), vmulq_f32(v9, v37));
          v31 = *(v30 + v14);
          *(v25 + v14) = vaddq_f32(vmulq_f32(v8, v26), v38);
          v39 = vaddq_f32(vmulq_f32(v8, v37), vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v9, v31)));
          v26 = *(v29 + v14);
          *(v28 + v14) = v39;
          v40 = v34;
          *(v27 + v14) = vaddq_f32(vmulq_f32(v8, v31), vaddq_f32(vmulq_f32(v7, v37), vmulq_f32(v9, v26)));
          v35 -= 3;
          v25 += v16;
          v27 += v16;
          v28 += v16;
          v29 += v19;
          v30 += v19;
          v32 += v19;
          v33 += v19;
          v34 += 3;
        }

        while (v35 > 2);
        v41 = v14;
        if (v35)
        {
          do
          {
            v42 = vmulq_f32(v7, v31);
            v43 = vmulq_f32(v8, v26);
            v31 = v26;
            v26 = *(v36 + 16 * v13);
            *(v25 + v41) = vaddq_f32(v43, vaddq_f32(v42, vmulq_f32(v9, v26)));
            v41 += v18;
            v36 += 16 * v11;
            v44 = __CFADD__(v40++, 1);
          }

          while (!v44);
        }

        ++v15;
        v14 += 16;
        v22 += 16;
      }

      while (v15 != v3);
    }
  }

  return 3;
}

uint64_t c4y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = (v4 - v5);
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[3];
    v11 = *(a1 + 24);
    v12 = *(a1 + 88);
    v13 = a3;
    v14 = 2 * v12;
    if (v6 < 4)
    {
      if (v6)
      {
        v51 = 2 * v12;
      }

      else
      {
        v51 = 0;
      }

      if (v6)
      {
        v52 = 0;
        v53 = 0;
        v54 = 16 * v11;
        v55 = 16 * v51 + 16 * a3 + 16 * v12;
        v56 = v5 - v4;
        do
        {
          v57 = *(a1 + 80);
          v58 = (v57 + 16 * v53 + 16 * v13);
          v59 = v58[v12];
          v60 = *v58;
          v61 = v58[v14];
          v62 = (*(a1 + 16) + v52);
          v63 = (v57 + v55);
          v64 = v56;
          do
          {
            v65 = vmulq_f32(v7, v60);
            v66 = vmulq_f32(v8, v59);
            v60 = v59;
            v59 = v61;
            v61 = *v63;
            *v62 = vaddq_f32(vaddq_f32(v65, vmulq_f32(v9, v59)), vaddq_f32(v66, vmulq_f32(v10, *v63)));
            v62 = (v62 + v54);
            v63 += v12;
            v50 = __CFADD__(v64++, 1);
          }

          while (!v50);
          ++v53;
          v52 += 16;
          v55 += 16;
        }

        while (v53 != v3);
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 2 * v11;
      v18 = 64 * v11;
      v19 = 16 * v11;
      v20 = 64 * v12;
      v21 = 16 * v13 + v20;
      v68 = 16 * v17;
      v22 = v5 - v4 + 4;
      do
      {
        v23 = *(a1 + 80);
        v24 = (v23 + 16 * v16 + 16 * v13);
        v25 = *(a1 + 16);
        v26 = v24[v12];
        v27 = v24[v14];
        v28 = v25 + v18 - v19;
        v29 = v25 + v68;
        v30 = v25 + v19;
        v31 = *v24;
        v32 = v23 + 16 * v13;
        v33 = v23 + v21 + 16 * v14;
        v34 = v23 + v21 + 16 * v12;
        v35 = v23 + v21;
        v36 = v23 + v21 - 16 * v12;
        v37 = v25 + v18;
        v38 = v22;
        v39 = v6;
        v40 = v6;
        do
        {
          v41 = v37;
          v42 = v38;
          v43 = *(v36 + v15);
          v44 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v31), vmulq_f32(v9, v27)), vaddq_f32(vmulq_f32(v8, v26), vmulq_f32(v10, v43)));
          v31 = *(v35 + v15);
          *(v25 + v15) = v44;
          v45 = vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v9, v43));
          v26 = *(v34 + v15);
          *(v30 + v15) = vaddq_f32(v45, vaddq_f32(vmulq_f32(v8, v27), vmulq_f32(v10, v31)));
          v46 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v27), vmulq_f32(v9, v31)), vaddq_f32(vmulq_f32(v8, v43), vmulq_f32(v10, v26)));
          v27 = *(v33 + v15);
          *(v29 + v15) = v46;
          *(v28 + v15) = vaddq_f32(vaddq_f32(vmulq_f32(v7, v43), vmulq_f32(v9, v26)), vaddq_f32(vmulq_f32(v8, v31), vmulq_f32(v10, v27)));
          v40 -= 4;
          v25 += v18;
          v28 += v18;
          v29 += v18;
          v30 += v18;
          v32 += v20;
          v33 += v20;
          v34 += v20;
          v35 += v20;
          v36 += v20;
          v37 += v18;
          v38 += 4;
        }

        while (v40 > 3);
        if (v40)
        {
          v47 = (v32 + v15 + 16 * v14);
          do
          {
            v48 = vmulq_f32(v7, v31);
            v49 = vmulq_f32(v8, v26);
            v31 = v26;
            v26 = v27;
            v47 += v12;
            v27 = *v47;
            *(v41 + v15) = vaddq_f32(vaddq_f32(v48, vmulq_f32(v9, v26)), vaddq_f32(v49, vmulq_f32(v10, *v47)));
            v41 += v19;
            v50 = __CFADD__(v42++, 1);
          }

          while (!v50);
        }

        ++v16;
        v15 += 16;
        v6 = v39;
      }

      while (v16 != v3);
    }
  }

  return 4;
}

uint64_t c5y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a1 + 24);
    v11 = *(a1 + 88);
    v12 = 2 * v11;
    if ((v4 - v5) < 3)
    {
      if (v6)
      {
        v44 = 0;
        v45 = 0;
        v46 = 16 * v10;
        v47 = 16 * a3 + 16 * v12;
        do
        {
          v48 = *(a1 + 80);
          v49 = (v48 + 16 * v45 + 16 * a3);
          v50 = *v49;
          v51 = v49[v11];
          v52 = (*(a1 + 16) + v44);
          v53 = (v48 + v47);
          v54 = v5 - v4;
          do
          {
            v55 = vmulq_f32(v7, v50);
            v56 = vmulq_f32(v8, v51);
            v50 = v51;
            v51 = *v53;
            *v52 = vaddq_f32(v56, vaddq_f32(v55, vmulq_f32(v9, *v53)));
            v52 = (v52 + v46);
            v53 += v11;
            v43 = __CFADD__(v54++, 1);
          }

          while (!v43);
          ++v45;
          v44 += 16;
          v47 += 16;
        }

        while (v45 != v3);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 48 * v10;
      v16 = 32 * v10;
      v17 = 16 * v10;
      v18 = 48 * v11;
      v19 = 16 * a3 + v18;
      v20 = v5 - v4 + 3;
      v21 = v19;
      do
      {
        v22 = *(a1 + 80);
        v23 = (v22 + 16 * v14 + 16 * a3);
        v24 = *(a1 + 16);
        v25 = v23[v11];
        v26 = v24 + v16;
        v27 = v24 + v17;
        v28 = v22 + v19 + 16 * v11;
        v29 = v22 + v19;
        v30 = *v23;
        v31 = v22 + 16 * a3 + 16 * v12;
        v32 = v22 + v21;
        v33 = v20;
        v34 = v6;
        do
        {
          v35 = v32;
          v36 = *(v31 + v13);
          v37 = vaddq_f32(vmulq_f32(v7, v30), vmulq_f32(v9, v36));
          v30 = *(v29 + v13);
          *(v24 + v13) = vaddq_f32(vmulq_f32(v8, v25), v37);
          v38 = vaddq_f32(vmulq_f32(v8, v36), vaddq_f32(vmulq_f32(v7, v25), vmulq_f32(v9, v30)));
          v25 = *(v28 + v13);
          *(v27 + v13) = v38;
          v39 = v33;
          *(v26 + v13) = vaddq_f32(vmulq_f32(v8, v30), vaddq_f32(vmulq_f32(v7, v36), vmulq_f32(v9, v25)));
          v34 -= 3;
          v24 += v15;
          v26 += v15;
          v27 += v15;
          v28 += v18;
          v29 += v18;
          v31 += v18;
          v32 += v18;
          v33 += 3;
        }

        while (v34 > 2);
        v40 = v13;
        if (v34)
        {
          do
          {
            v41 = vmulq_f32(v7, v30);
            v42 = vmulq_f32(v8, v25);
            v30 = v25;
            v25 = *(v35 + 16 * v12);
            *(v24 + v40) = vaddq_f32(v42, vaddq_f32(v41, vmulq_f32(v9, v25)));
            v40 += v17;
            v35 += 16 * v11;
            v43 = __CFADD__(v39++, 1);
          }

          while (!v43);
        }

        ++v14;
        v13 += 16;
        v21 += 16;
      }

      while (v14 != v3);
    }
  }

  v57 = (*(a1 + 8) - *a1);
  if (v57)
  {
    v58 = *(a1 + 12) - *(a1 + 4);
    v59 = a2[3];
    v60 = a2[4];
    v61 = *(a1 + 88);
    v62 = 2 * v61 + v61 + a3;
    if (v58 < 2)
    {
      if (v58)
      {
        v79 = 0;
        v80 = 16 * v62;
        v81 = v80 + 16 * v61;
        do
        {
          *(*(a1 + 16) + 16 * v79) = vaddq_f32(vmulq_f32(v60, *(*(a1 + 80) + v81 + 16 * v79)), vaddq_f32(vmulq_f32(v59, *(*(a1 + 80) + v80 + 16 * v79)), *(*(a1 + 16) + 16 * v79)));
          ++v79;
        }

        while (v57 != v79);
      }
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v65 = *(a1 + 24);
      v66 = 32 * v65;
      v67 = 16 * v65;
      v68 = 32 * v61;
      do
      {
        v69 = *(a1 + 80);
        v70 = *(v69 + 16 * v64 + 16 * v62);
        v71 = *(a1 + 16);
        v72 = v71 + v67;
        v73 = v69 + 16 * v62;
        v74 = v69 + v68 + 16 * v62;
        v75 = v69 + 16 * v62 + 16 * v61;
        v76 = v58;
        do
        {
          v77 = *(v75 + v63);
          v78 = vaddq_f32(vmulq_f32(v59, v70), *(v71 + v63));
          v70 = *(v74 + v63);
          *(v71 + v63) = vaddq_f32(vmulq_f32(v60, v77), v78);
          *(v72 + v63) = vaddq_f32(vmulq_f32(v60, v70), vaddq_f32(vmulq_f32(v59, v77), *(v72 + v63)));
          v76 -= 2;
          v71 += v66;
          v72 += v66;
          v73 += v68;
          v74 += v68;
          v75 += v68;
        }

        while (v76 > 1);
        if (v76)
        {
          *(v71 + v63) = vaddq_f32(vmulq_f32(v60, *(v73 + v63 + 16 * v61)), vaddq_f32(vmulq_f32(v59, v70), *(v71 + v63)));
        }

        ++v64;
        v63 += 16;
      }

      while (v64 != v57);
    }
  }

  return 5;
}

uint64_t c6y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a1 + 24);
    v11 = *(a1 + 88);
    v12 = 2 * v11;
    if ((v4 - v5) < 3)
    {
      if (v6)
      {
        v44 = 0;
        v45 = 0;
        v46 = 16 * v10;
        v47 = 16 * a3 + 16 * v12;
        do
        {
          v48 = *(a1 + 80);
          v49 = (v48 + 16 * v45 + 16 * a3);
          v50 = *v49;
          v51 = v49[v11];
          v52 = (*(a1 + 16) + v44);
          v53 = (v48 + v47);
          v54 = v5 - v4;
          do
          {
            v55 = vmulq_f32(v7, v50);
            v56 = vmulq_f32(v8, v51);
            v50 = v51;
            v51 = *v53;
            *v52 = vaddq_f32(v56, vaddq_f32(v55, vmulq_f32(v9, *v53)));
            v52 = (v52 + v46);
            v53 += v11;
            v43 = __CFADD__(v54++, 1);
          }

          while (!v43);
          ++v45;
          v44 += 16;
          v47 += 16;
        }

        while (v45 != v3);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 48 * v10;
      v16 = 32 * v10;
      v17 = 16 * v10;
      v18 = 48 * v11;
      v19 = 16 * a3 + v18;
      v20 = v5 - v4 + 3;
      v21 = v19;
      do
      {
        v22 = *(a1 + 80);
        v23 = (v22 + 16 * v14 + 16 * a3);
        v24 = *(a1 + 16);
        v25 = v23[v11];
        v26 = v24 + v16;
        v27 = v24 + v17;
        v28 = v22 + v19 + 16 * v11;
        v29 = v22 + v19;
        v30 = *v23;
        v31 = v22 + 16 * a3 + 16 * v12;
        v32 = v22 + v21;
        v33 = v20;
        v34 = v6;
        do
        {
          v35 = v32;
          v36 = *(v31 + v13);
          v37 = vaddq_f32(vmulq_f32(v7, v30), vmulq_f32(v9, v36));
          v30 = *(v29 + v13);
          *(v24 + v13) = vaddq_f32(vmulq_f32(v8, v25), v37);
          v38 = vaddq_f32(vmulq_f32(v8, v36), vaddq_f32(vmulq_f32(v7, v25), vmulq_f32(v9, v30)));
          v25 = *(v28 + v13);
          *(v27 + v13) = v38;
          v39 = v33;
          *(v26 + v13) = vaddq_f32(vmulq_f32(v8, v30), vaddq_f32(vmulq_f32(v7, v36), vmulq_f32(v9, v25)));
          v34 -= 3;
          v24 += v15;
          v26 += v15;
          v27 += v15;
          v28 += v18;
          v29 += v18;
          v31 += v18;
          v32 += v18;
          v33 += 3;
        }

        while (v34 > 2);
        v40 = v13;
        if (v34)
        {
          do
          {
            v41 = vmulq_f32(v7, v30);
            v42 = vmulq_f32(v8, v25);
            v30 = v25;
            v25 = *(v35 + 16 * v12);
            *(v24 + v40) = vaddq_f32(v42, vaddq_f32(v41, vmulq_f32(v9, v25)));
            v40 += v17;
            v35 += 16 * v11;
            v43 = __CFADD__(v39++, 1);
          }

          while (!v43);
        }

        ++v14;
        v13 += 16;
        v21 += 16;
      }

      while (v14 != v3);
    }
  }

  v57 = (*(a1 + 8) - *a1);
  if (v57)
  {
    v58 = *(a1 + 12);
    v59 = *(a1 + 4);
    v60 = v58 - v59;
    v61 = a2[3];
    v62 = a2[4];
    v63 = a2[5];
    v64 = *(a1 + 88);
    v65 = *(a1 + 24);
    v66 = 3 * v64 + a3;
    v67 = 2 * v64;
    if ((v58 - v59) < 3)
    {
      if (v60)
      {
        v98 = 0;
        v99 = 0;
        v100 = 16 * v67 + 16 * v66;
        do
        {
          v101 = *(a1 + 80);
          v102 = (v101 + 16 * v99 + 16 * v66);
          v103 = *v102;
          v104 = v102[v64];
          v105 = (*(a1 + 16) + v98);
          v106 = (v101 + v100);
          v107 = v59 - v58;
          do
          {
            v108 = vmulq_f32(v61, v103);
            v109 = vmulq_f32(v62, v104);
            v103 = v104;
            v104 = *v106;
            *v105 = vaddq_f32(vaddq_f32(v109, *v105), vaddq_f32(v108, vmulq_f32(v63, *v106)));
            v105 += v65;
            v106 += v64;
            v43 = __CFADD__(v107++, 1);
          }

          while (!v43);
          ++v99;
          v98 += 16;
          v100 += 16;
        }

        while (v99 != v57);
      }
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = 48 * v65;
      v71 = 48 * v64;
      v72 = v71 + 16 * v66;
      v73 = 32 * v65;
      v74 = 16 * v65;
      v75 = v59 - v58 + 3;
      v76 = v72;
      do
      {
        v77 = *(a1 + 80);
        v78 = (v77 + 16 * v69 + 16 * v66);
        v79 = *(a1 + 16);
        v80 = v78[v64];
        v81 = v79 + v73;
        v82 = v79 + v74;
        v83 = v77 + v72 + 16 * v64;
        v84 = v77 + v72;
        v85 = *v78;
        v86 = v77 + 16 * v66 + 16 * v67;
        v87 = v77 + v76;
        v88 = v75;
        v89 = v60;
        do
        {
          v90 = v87;
          v91 = v88;
          v92 = *(v86 + v68);
          v93 = vaddq_f32(vaddq_f32(vmulq_f32(v62, v80), *(v79 + v68)), vaddq_f32(vmulq_f32(v61, v85), vmulq_f32(v63, v92)));
          v85 = *(v84 + v68);
          *(v79 + v68) = v93;
          v94 = vaddq_f32(vaddq_f32(vmulq_f32(v61, v80), vmulq_f32(v63, v85)), vaddq_f32(vmulq_f32(v62, v92), *(v82 + v68)));
          v80 = *(v83 + v68);
          *(v82 + v68) = v94;
          *(v81 + v68) = vaddq_f32(vaddq_f32(vmulq_f32(v61, v92), vmulq_f32(v63, v80)), vaddq_f32(vmulq_f32(v62, v85), *(v81 + v68)));
          v89 -= 3;
          v79 += v70;
          v81 += v70;
          v82 += v70;
          v83 += v71;
          v84 += v71;
          v86 += v71;
          v87 += v71;
          v88 += 3;
        }

        while (v89 > 2);
        v95 = v68;
        if (v89)
        {
          do
          {
            v96 = vmulq_f32(v61, v85);
            v85 = v80;
            v97 = vmulq_f32(v62, v80);
            v80 = *(v90 + 16 * v67);
            *(v79 + v95) = vaddq_f32(vaddq_f32(v97, *(v79 + v95)), vaddq_f32(v96, vmulq_f32(v63, v80)));
            v95 += v74;
            v90 += 16 * v64;
            v43 = __CFADD__(v91++, 1);
          }

          while (!v43);
        }

        ++v69;
        v68 += 16;
        v76 += 16;
      }

      while (v69 != v57);
    }
  }

  return 6;
}

uint64_t c7y(uint64_t a1, float32x4_t *a2, int a3)
{
  c4y(a1, a2, a3);
  v6 = (*(a1 + 8) - *a1);
  if (v6)
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 4);
    v9 = v7 - v8;
    v10 = a2[4];
    v11 = a2[5];
    v12 = a2[6];
    v13 = *(a1 + 88);
    v14 = *(a1 + 24);
    v15 = a3 + 4 * v13;
    v16 = 2 * v13;
    if ((v7 - v8) < 3)
    {
      if (v9)
      {
        v48 = 0;
        v49 = 0;
        v50 = 16 * v14;
        v51 = 32 * v13 + 16 * v15;
        do
        {
          v52 = *(a1 + 80);
          v53 = (v52 + 16 * v49 + 16 * v15);
          v54 = *v53;
          v55 = v53[v13];
          v56 = (*(a1 + 16) + v48);
          v57 = (v52 + v51);
          v58 = v8 - v7;
          do
          {
            v59 = vmulq_f32(v10, v54);
            v60 = vmulq_f32(v11, v55);
            v54 = v55;
            v55 = *v57;
            *v56 = vaddq_f32(vaddq_f32(v60, *v56), vaddq_f32(v59, vmulq_f32(v12, *v57)));
            v56 = (v56 + v50);
            v57 += v13;
            v47 = __CFADD__(v58++, 1);
          }

          while (!v47);
          ++v49;
          v48 += 16;
          v51 += 16;
        }

        while (v49 != v6);
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 48 * v14;
      v20 = 32 * v14;
      v21 = 16 * v14;
      v22 = 48 * v13;
      v23 = v22 + 16 * v15;
      v24 = v8 - v7 + 3;
      v25 = v23;
      do
      {
        v26 = *(a1 + 80);
        v27 = (v26 + 16 * v18 + 16 * v15);
        v28 = *(a1 + 16);
        v29 = v27[v13];
        v30 = v28 + v20;
        v31 = v28 + v21;
        v32 = v26 + v23 + 16 * v13;
        v33 = v26 + v23;
        v34 = *v27;
        v35 = v26 + 16 * v15 + 16 * v16;
        v36 = v26 + v25;
        v37 = v24;
        v38 = v9;
        do
        {
          v39 = v36;
          v40 = v37;
          v41 = *(v35 + v17);
          v42 = vaddq_f32(vaddq_f32(vmulq_f32(v11, v29), *(v28 + v17)), vaddq_f32(vmulq_f32(v10, v34), vmulq_f32(v12, v41)));
          v34 = *(v33 + v17);
          *(v28 + v17) = v42;
          v43 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v29), vmulq_f32(v12, v34)), vaddq_f32(vmulq_f32(v11, v41), *(v31 + v17)));
          v29 = *(v32 + v17);
          *(v31 + v17) = v43;
          *(v30 + v17) = vaddq_f32(vaddq_f32(vmulq_f32(v10, v41), vmulq_f32(v12, v29)), vaddq_f32(vmulq_f32(v11, v34), *(v30 + v17)));
          v38 -= 3;
          v28 += v19;
          v30 += v19;
          v31 += v19;
          v32 += v22;
          v33 += v22;
          v35 += v22;
          v36 += v22;
          v37 += 3;
        }

        while (v38 > 2);
        v44 = v17;
        if (v38)
        {
          do
          {
            v45 = vmulq_f32(v10, v34);
            v34 = v29;
            v46 = vmulq_f32(v11, v29);
            v29 = *(v39 + 16 * v16);
            *(v28 + v44) = vaddq_f32(vaddq_f32(v46, *(v28 + v44)), vaddq_f32(v45, vmulq_f32(v12, v29)));
            v44 += v21;
            v39 += 16 * v13;
            v47 = __CFADD__(v40++, 1);
          }

          while (!v47);
        }

        ++v18;
        v17 += 16;
        v25 += 16;
      }

      while (v18 != v6);
    }
  }

  return 7;
}

uint64_t cadd2y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12) - *(a1 + 4);
    v5 = *a2;
    v6 = a2[1];
    v7 = *(a1 + 88);
    if (v4 < 2)
    {
      if (v4)
      {
        v24 = 0;
        v25 = 16 * a3;
        v26 = v25 + 16 * v7;
        do
        {
          *(*(a1 + 16) + 16 * v24) = vaddq_f32(vmulq_f32(v6, *(*(a1 + 80) + v26)), vaddq_f32(vmulq_f32(v5, *(*(a1 + 80) + v25)), *(*(a1 + 16) + 16 * v24)));
          ++v24;
          v26 += 16;
          v25 += 16;
        }

        while (v3 != v24);
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a1 + 24);
      v11 = 32 * v10;
      v12 = 16 * v10;
      v13 = 32 * v7;
      do
      {
        v14 = *(a1 + 80);
        v15 = *(v14 + 16 * v9 + 16 * a3);
        v16 = *(a1 + 16);
        v17 = v16 + v12;
        v18 = v14 + 16 * a3;
        v19 = v14 + 16 * a3 + v13;
        v20 = v14 + 16 * a3 + 16 * v7;
        v21 = v4;
        do
        {
          v22 = *(v20 + v8);
          v23 = vaddq_f32(vmulq_f32(v5, v15), *(v16 + v8));
          v15 = *(v19 + v8);
          *(v16 + v8) = vaddq_f32(vmulq_f32(v6, v22), v23);
          *(v17 + v8) = vaddq_f32(vmulq_f32(v6, v15), vaddq_f32(vmulq_f32(v5, v22), *(v17 + v8)));
          v21 -= 2;
          v16 += v11;
          v17 += v11;
          v18 += v13;
          v19 += v13;
          v20 += v13;
        }

        while (v21 > 1);
        if (v21)
        {
          *(v16 + v8) = vaddq_f32(vmulq_f32(v6, *(v18 + v8 + 16 * v7)), vaddq_f32(vmulq_f32(v5, v15), *(v16 + v8)));
        }

        ++v9;
        v8 += 16;
      }

      while (v9 != v3);
    }
  }

  return 2;
}

uint64_t cadd3y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a1 + 24);
    v11 = *(a1 + 88);
    v12 = a3;
    v13 = 2 * v11;
    if ((v4 - v5) < 3)
    {
      if (v6)
      {
        v45 = 0;
        v46 = 0;
        v47 = 16 * v10;
        v48 = 16 * a3 + 32 * v11;
        do
        {
          v49 = *(a1 + 80);
          v50 = (v49 + 16 * v46 + 16 * v12);
          v51 = *v50;
          v52 = v50[v11];
          v53 = (*(a1 + 16) + v45);
          v54 = (v49 + v48);
          v55 = v5 - v4;
          do
          {
            v56 = vmulq_f32(v7, v51);
            v57 = vmulq_f32(v8, v52);
            v51 = v52;
            v52 = *v54;
            *v53 = vaddq_f32(vaddq_f32(v57, *v53), vaddq_f32(v56, vmulq_f32(v9, *v54)));
            v53 = (v53 + v47);
            v54 += v11;
            v44 = __CFADD__(v55++, 1);
          }

          while (!v44);
          ++v46;
          v45 += 16;
          v48 += 16;
        }

        while (v46 != v3);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 48 * v10;
      v17 = 32 * v10;
      v18 = 16 * v10;
      v19 = 48 * v11;
      v20 = 16 * a3 + v19;
      v21 = v5 - v4 + 3;
      v22 = v20;
      do
      {
        v23 = *(a1 + 80);
        v24 = (v23 + 16 * v15 + 16 * a3);
        v25 = *(a1 + 16);
        v26 = v24[v11];
        v27 = v25 + v17;
        v28 = v25 + v18;
        v29 = v23 + v20 + 16 * v11;
        v30 = v23 + v20;
        v31 = *v24;
        v32 = v23 + 16 * a3 + 16 * v13;
        v33 = v23 + v22;
        v34 = v21;
        v35 = v6;
        do
        {
          v36 = v33;
          v37 = v34;
          v38 = *(v32 + v14);
          v39 = vaddq_f32(vaddq_f32(vmulq_f32(v8, v26), *(v25 + v14)), vaddq_f32(vmulq_f32(v7, v31), vmulq_f32(v9, v38)));
          v31 = *(v30 + v14);
          *(v25 + v14) = v39;
          v40 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v9, v31)), vaddq_f32(vmulq_f32(v8, v38), *(v28 + v14)));
          v26 = *(v29 + v14);
          *(v28 + v14) = v40;
          *(v27 + v14) = vaddq_f32(vaddq_f32(vmulq_f32(v7, v38), vmulq_f32(v9, v26)), vaddq_f32(vmulq_f32(v8, v31), *(v27 + v14)));
          v35 -= 3;
          v25 += v16;
          v27 += v16;
          v28 += v16;
          v29 += v19;
          v30 += v19;
          v32 += v19;
          v33 += v19;
          v34 += 3;
        }

        while (v35 > 2);
        v41 = v14;
        if (v35)
        {
          do
          {
            v42 = vmulq_f32(v7, v31);
            v31 = v26;
            v43 = vmulq_f32(v8, v26);
            v26 = *(v36 + 16 * v13);
            *(v25 + v41) = vaddq_f32(vaddq_f32(v43, *(v25 + v41)), vaddq_f32(v42, vmulq_f32(v9, v26)));
            v41 += v18;
            v36 += 16 * v11;
            v44 = __CFADD__(v37++, 1);
          }

          while (!v44);
        }

        ++v15;
        v14 += 16;
        v22 += 16;
      }

      while (v15 != v3);
    }
  }

  return 3;
}

uint64_t cadd4y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = (v4 - v5);
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[3];
    v11 = *(a1 + 24);
    v12 = *(a1 + 88);
    v13 = a3;
    v14 = 2 * v12;
    if (v6 < 4)
    {
      if (v6)
      {
        v51 = 2 * v12;
      }

      else
      {
        v51 = 0;
      }

      if (v6)
      {
        v52 = 0;
        v53 = 0;
        v54 = 16 * v11;
        v55 = 16 * v51 + 16 * a3 + 16 * v12;
        v56 = v5 - v4;
        do
        {
          v57 = *(a1 + 80);
          v58 = (v57 + 16 * v53 + 16 * v13);
          v59 = v58[v12];
          v60 = *v58;
          v61 = v58[v14];
          v62 = (*(a1 + 16) + v52);
          v63 = (v57 + v55);
          v64 = v56;
          do
          {
            v65 = vmulq_f32(v7, v60);
            v66 = vmulq_f32(v8, v59);
            v60 = v59;
            v59 = v61;
            v61 = *v63;
            *v62 = vaddq_f32(vaddq_f32(v65, vmulq_f32(v9, v59)), vaddq_f32(vmulq_f32(v10, *v63), vaddq_f32(v66, *v62)));
            v62 = (v62 + v54);
            v63 += v12;
            v50 = __CFADD__(v64++, 1);
          }

          while (!v50);
          ++v53;
          v52 += 16;
          v55 += 16;
        }

        while (v53 != v3);
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 2 * v11;
      v18 = 64 * v11;
      v19 = 16 * v11;
      v20 = 64 * v12;
      v21 = 16 * v13 + v20;
      v68 = 16 * v17;
      v22 = v5 - v4 + 4;
      do
      {
        v23 = *(a1 + 80);
        v24 = (v23 + 16 * v16 + 16 * v13);
        v25 = *(a1 + 16);
        v26 = v24[v12];
        v27 = v24[v14];
        v28 = v25 + v18 - v19;
        v29 = v25 + v68;
        v30 = v25 + v19;
        v31 = *v24;
        v32 = v23 + 16 * v13;
        v33 = v23 + v21 + 16 * v14;
        v34 = v23 + v21 + 16 * v12;
        v35 = v23 + v21;
        v36 = v23 + v21 - 16 * v12;
        v37 = v25 + v18;
        v38 = v22;
        v39 = v6;
        v40 = v6;
        do
        {
          v41 = v37;
          v42 = *(v36 + v15);
          v43 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v31), vmulq_f32(v9, v27)), vaddq_f32(vmulq_f32(v10, v42), vaddq_f32(vmulq_f32(v8, v26), *(v25 + v15))));
          v31 = *(v35 + v15);
          *(v25 + v15) = v43;
          v44 = v38;
          v45 = vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v9, v42));
          v26 = *(v34 + v15);
          *(v30 + v15) = vaddq_f32(v45, vaddq_f32(vmulq_f32(v10, v31), vaddq_f32(vmulq_f32(v8, v27), *(v30 + v15))));
          v46 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v27), vmulq_f32(v9, v31)), vaddq_f32(vmulq_f32(v10, v26), vaddq_f32(vmulq_f32(v8, v42), *(v29 + v15))));
          v27 = *(v33 + v15);
          *(v29 + v15) = v46;
          *(v28 + v15) = vaddq_f32(vaddq_f32(vmulq_f32(v7, v42), vmulq_f32(v9, v26)), vaddq_f32(vmulq_f32(v10, v27), vaddq_f32(vmulq_f32(v8, v31), *(v28 + v15))));
          v40 -= 4;
          v25 += v18;
          v28 += v18;
          v29 += v18;
          v30 += v18;
          v32 += v20;
          v33 += v20;
          v34 += v20;
          v35 += v20;
          v36 += v20;
          v37 += v18;
          v38 += 4;
        }

        while (v40 > 3);
        if (v40)
        {
          v47 = (v32 + v15 + 16 * v14);
          do
          {
            v48 = vmulq_f32(v7, v31);
            v49 = vmulq_f32(v8, v26);
            v31 = v26;
            v26 = v27;
            v47 += v12;
            v27 = *v47;
            *(v41 + v15) = vaddq_f32(vaddq_f32(v48, vmulq_f32(v9, v26)), vaddq_f32(vmulq_f32(v10, *v47), vaddq_f32(v49, *(v41 + v15))));
            v41 += v19;
            v50 = __CFADD__(v44++, 1);
          }

          while (!v50);
        }

        ++v16;
        v15 += 16;
        v6 = v39;
      }

      while (v16 != v3);
    }
  }

  return 4;
}

uint64_t cadd5y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a1 + 24);
    v11 = *(a1 + 88);
    v12 = 2 * v11;
    if ((v4 - v5) < 3)
    {
      if (v6)
      {
        v44 = 0;
        v45 = 0;
        v46 = 16 * v10;
        v47 = 16 * a3 + 16 * v12;
        do
        {
          v48 = *(a1 + 80);
          v49 = (v48 + 16 * v45 + 16 * a3);
          v50 = *v49;
          v51 = v49[v11];
          v52 = (*(a1 + 16) + v44);
          v53 = (v48 + v47);
          v54 = v5 - v4;
          do
          {
            v55 = vmulq_f32(v7, v50);
            v56 = vmulq_f32(v8, v51);
            v50 = v51;
            v51 = *v53;
            *v52 = vaddq_f32(vaddq_f32(v56, *v52), vaddq_f32(v55, vmulq_f32(v9, *v53)));
            v52 = (v52 + v46);
            v53 += v11;
            v43 = __CFADD__(v54++, 1);
          }

          while (!v43);
          ++v45;
          v44 += 16;
          v47 += 16;
        }

        while (v45 != v3);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 48 * v10;
      v16 = 32 * v10;
      v17 = 16 * v10;
      v18 = 48 * v11;
      v19 = 16 * a3 + v18;
      v20 = v5 - v4 + 3;
      v21 = v19;
      do
      {
        v22 = *(a1 + 80);
        v23 = (v22 + 16 * v14 + 16 * a3);
        v24 = *(a1 + 16);
        v25 = v23[v11];
        v26 = v24 + v16;
        v27 = v24 + v17;
        v28 = v22 + v19 + 16 * v11;
        v29 = v22 + v19;
        v30 = *v23;
        v31 = v22 + 16 * a3 + 16 * v12;
        v32 = v22 + v21;
        v33 = v20;
        v34 = v6;
        do
        {
          v35 = v32;
          v36 = v33;
          v37 = *(v31 + v13);
          v38 = vaddq_f32(vaddq_f32(vmulq_f32(v8, v25), *(v24 + v13)), vaddq_f32(vmulq_f32(v7, v30), vmulq_f32(v9, v37)));
          v30 = *(v29 + v13);
          *(v24 + v13) = v38;
          v39 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v25), vmulq_f32(v9, v30)), vaddq_f32(vmulq_f32(v8, v37), *(v27 + v13)));
          v25 = *(v28 + v13);
          *(v27 + v13) = v39;
          *(v26 + v13) = vaddq_f32(vaddq_f32(vmulq_f32(v7, v37), vmulq_f32(v9, v25)), vaddq_f32(vmulq_f32(v8, v30), *(v26 + v13)));
          v34 -= 3;
          v24 += v15;
          v26 += v15;
          v27 += v15;
          v28 += v18;
          v29 += v18;
          v31 += v18;
          v32 += v18;
          v33 += 3;
        }

        while (v34 > 2);
        v40 = v13;
        if (v34)
        {
          do
          {
            v41 = vmulq_f32(v7, v30);
            v30 = v25;
            v42 = vmulq_f32(v8, v25);
            v25 = *(v35 + 16 * v12);
            *(v24 + v40) = vaddq_f32(vaddq_f32(v42, *(v24 + v40)), vaddq_f32(v41, vmulq_f32(v9, v25)));
            v40 += v17;
            v35 += 16 * v11;
            v43 = __CFADD__(v36++, 1);
          }

          while (!v43);
        }

        ++v14;
        v13 += 16;
        v21 += 16;
      }

      while (v14 != v3);
    }
  }

  v57 = (*(a1 + 8) - *a1);
  if (v57)
  {
    v58 = *(a1 + 12) - *(a1 + 4);
    v59 = a2[3];
    v60 = a2[4];
    v61 = *(a1 + 88);
    v62 = 2 * v61 + v61 + a3;
    if (v58 < 2)
    {
      if (v58)
      {
        v79 = 0;
        v80 = 16 * v62;
        v81 = v80 + 16 * v61;
        do
        {
          *(*(a1 + 16) + 16 * v79) = vaddq_f32(vmulq_f32(v60, *(*(a1 + 80) + v81 + 16 * v79)), vaddq_f32(vmulq_f32(v59, *(*(a1 + 80) + v80 + 16 * v79)), *(*(a1 + 16) + 16 * v79)));
          ++v79;
        }

        while (v57 != v79);
      }
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v65 = *(a1 + 24);
      v66 = 32 * v65;
      v67 = 16 * v65;
      v68 = 32 * v61;
      do
      {
        v69 = *(a1 + 80);
        v70 = *(v69 + 16 * v64 + 16 * v62);
        v71 = *(a1 + 16);
        v72 = v71 + v67;
        v73 = v69 + 16 * v62;
        v74 = v69 + v68 + 16 * v62;
        v75 = v69 + 16 * v62 + 16 * v61;
        v76 = v58;
        do
        {
          v77 = *(v75 + v63);
          v78 = vaddq_f32(vmulq_f32(v59, v70), *(v71 + v63));
          v70 = *(v74 + v63);
          *(v71 + v63) = vaddq_f32(vmulq_f32(v60, v77), v78);
          *(v72 + v63) = vaddq_f32(vmulq_f32(v60, v70), vaddq_f32(vmulq_f32(v59, v77), *(v72 + v63)));
          v76 -= 2;
          v71 += v66;
          v72 += v66;
          v73 += v68;
          v74 += v68;
          v75 += v68;
        }

        while (v76 > 1);
        if (v76)
        {
          *(v71 + v63) = vaddq_f32(vmulq_f32(v60, *(v73 + v63 + 16 * v61)), vaddq_f32(vmulq_f32(v59, v70), *(v71 + v63)));
        }

        ++v64;
        v63 += 16;
      }

      while (v64 != v57);
    }
  }

  return 5;
}

uint64_t cadd6y(uint64_t a1, float32x4_t *a2, int a3)
{
  v3 = (*(a1 + 8) - *a1);
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 4);
    v6 = v4 - v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *(a1 + 24);
    v11 = *(a1 + 88);
    v12 = 2 * v11;
    if ((v4 - v5) < 3)
    {
      if (v6)
      {
        v44 = 0;
        v45 = 0;
        v46 = 16 * v10;
        v47 = 16 * a3 + 16 * v12;
        do
        {
          v48 = *(a1 + 80);
          v49 = (v48 + 16 * v45 + 16 * a3);
          v50 = *v49;
          v51 = v49[v11];
          v52 = (*(a1 + 16) + v44);
          v53 = (v48 + v47);
          v54 = v5 - v4;
          do
          {
            v55 = vmulq_f32(v7, v50);
            v56 = vmulq_f32(v8, v51);
            v50 = v51;
            v51 = *v53;
            *v52 = vaddq_f32(vaddq_f32(v56, *v52), vaddq_f32(v55, vmulq_f32(v9, *v53)));
            v52 = (v52 + v46);
            v53 += v11;
            v43 = __CFADD__(v54++, 1);
          }

          while (!v43);
          ++v45;
          v44 += 16;
          v47 += 16;
        }

        while (v45 != v3);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 48 * v10;
      v16 = 32 * v10;
      v17 = 16 * v10;
      v18 = 48 * v11;
      v19 = 16 * a3 + v18;
      v20 = v5 - v4 + 3;
      v21 = v19;
      do
      {
        v22 = *(a1 + 80);
        v23 = (v22 + 16 * v14 + 16 * a3);
        v24 = *(a1 + 16);
        v25 = v23[v11];
        v26 = v24 + v16;
        v27 = v24 + v17;
        v28 = v22 + v19 + 16 * v11;
        v29 = v22 + v19;
        v30 = *v23;
        v31 = v22 + 16 * a3 + 16 * v12;
        v32 = v22 + v21;
        v33 = v20;
        v34 = v6;
        do
        {
          v35 = v32;
          v36 = v33;
          v37 = *(v31 + v13);
          v38 = vaddq_f32(vaddq_f32(vmulq_f32(v8, v25), *(v24 + v13)), vaddq_f32(vmulq_f32(v7, v30), vmulq_f32(v9, v37)));
          v30 = *(v29 + v13);
          *(v24 + v13) = v38;
          v39 = vaddq_f32(vaddq_f32(vmulq_f32(v7, v25), vmulq_f32(v9, v30)), vaddq_f32(vmulq_f32(v8, v37), *(v27 + v13)));
          v25 = *(v28 + v13);
          *(v27 + v13) = v39;
          *(v26 + v13) = vaddq_f32(vaddq_f32(vmulq_f32(v7, v37), vmulq_f32(v9, v25)), vaddq_f32(vmulq_f32(v8, v30), *(v26 + v13)));
          v34 -= 3;
          v24 += v15;
          v26 += v15;
          v27 += v15;
          v28 += v18;
          v29 += v18;
          v31 += v18;
          v32 += v18;
          v33 += 3;
        }

        while (v34 > 2);
        v40 = v13;
        if (v34)
        {
          do
          {
            v41 = vmulq_f32(v7, v30);
            v30 = v25;
            v42 = vmulq_f32(v8, v25);
            v25 = *(v35 + 16 * v12);
            *(v24 + v40) = vaddq_f32(vaddq_f32(v42, *(v24 + v40)), vaddq_f32(v41, vmulq_f32(v9, v25)));
            v40 += v17;
            v35 += 16 * v11;
            v43 = __CFADD__(v36++, 1);
          }

          while (!v43);
        }

        ++v14;
        v13 += 16;
        v21 += 16;
      }

      while (v14 != v3);
    }
  }

  v57 = (*(a1 + 8) - *a1);
  if (v57)
  {
    v58 = *(a1 + 12);
    v59 = *(a1 + 4);
    v60 = v58 - v59;
    v61 = a2[3];
    v62 = a2[4];
    v63 = a2[5];
    v64 = *(a1 + 88);
    v65 = *(a1 + 24);
    v66 = 3 * v64 + a3;
    v67 = 2 * v64;
    if ((v58 - v59) < 3)
    {
      if (v60)
      {
        v98 = 0;
        v99 = 0;
        v100 = 16 * v67 + 16 * v66;
        do
        {
          v101 = *(a1 + 80);
          v102 = (v101 + 16 * v99 + 16 * v66);
          v103 = *v102;
          v104 = v102[v64];
          v105 = (*(a1 + 16) + v98);
          v106 = (v101 + v100);
          v107 = v59 - v58;
          do
          {
            v108 = vmulq_f32(v61, v103);
            v109 = vmulq_f32(v62, v104);
            v103 = v104;
            v104 = *v106;
            *v105 = vaddq_f32(vaddq_f32(v109, *v105), vaddq_f32(v108, vmulq_f32(v63, *v106)));
            v105 += v65;
            v106 += v64;
            v43 = __CFADD__(v107++, 1);
          }

          while (!v43);
          ++v99;
          v98 += 16;
          v100 += 16;
        }

        while (v99 != v57);
      }
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = 48 * v65;
      v71 = 48 * v64;
      v72 = v71 + 16 * v66;
      v73 = 32 * v65;
      v74 = 16 * v65;
      v75 = v59 - v58 + 3;
      v76 = v72;
      do
      {
        v77 = *(a1 + 80);
        v78 = (v77 + 16 * v69 + 16 * v66);
        v79 = *(a1 + 16);
        v80 = v78[v64];
        v81 = v79 + v73;
        v82 = v79 + v74;
        v83 = v77 + v72 + 16 * v64;
        v84 = v77 + v72;
        v85 = *v78;
        v86 = v77 + 16 * v66 + 16 * v67;
        v87 = v77 + v76;
        v88 = v75;
        v89 = v60;
        do
        {
          v90 = v87;
          v91 = v88;
          v92 = *(v86 + v68);
          v93 = vaddq_f32(vaddq_f32(vmulq_f32(v62, v80), *(v79 + v68)), vaddq_f32(vmulq_f32(v61, v85), vmulq_f32(v63, v92)));
          v85 = *(v84 + v68);
          *(v79 + v68) = v93;
          v94 = vaddq_f32(vaddq_f32(vmulq_f32(v61, v80), vmulq_f32(v63, v85)), vaddq_f32(vmulq_f32(v62, v92), *(v82 + v68)));
          v80 = *(v83 + v68);
          *(v82 + v68) = v94;
          *(v81 + v68) = vaddq_f32(vaddq_f32(vmulq_f32(v61, v92), vmulq_f32(v63, v80)), vaddq_f32(vmulq_f32(v62, v85), *(v81 + v68)));
          v89 -= 3;
          v79 += v70;
          v81 += v70;
          v82 += v70;
          v83 += v71;
          v84 += v71;
          v86 += v71;
          v87 += v71;
          v88 += 3;
        }

        while (v89 > 2);
        v95 = v68;
        if (v89)
        {
          do
          {
            v96 = vmulq_f32(v61, v85);
            v85 = v80;
            v97 = vmulq_f32(v62, v80);
            v80 = *(v90 + 16 * v67);
            *(v79 + v95) = vaddq_f32(vaddq_f32(v97, *(v79 + v95)), vaddq_f32(v96, vmulq_f32(v63, v80)));
            v95 += v74;
            v90 += 16 * v64;
            v43 = __CFADD__(v91++, 1);
          }

          while (!v43);
        }

        ++v69;
        v68 += 16;
        v76 += 16;
      }

      while (v69 != v57);
    }
  }

  return 6;
}

uint64_t cadd7y(uint64_t a1, float32x4_t *a2, int a3)
{
  cadd4y(a1, a2, a3);
  v6 = (*(a1 + 8) - *a1);
  if (v6)
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 4);
    v9 = v7 - v8;
    v10 = a2[4];
    v11 = a2[5];
    v12 = a2[6];
    v13 = *(a1 + 88);
    v14 = *(a1 + 24);
    v15 = a3 + 4 * v13;
    v16 = 2 * v13;
    if ((v7 - v8) < 3)
    {
      if (v9)
      {
        v48 = 0;
        v49 = 0;
        v50 = 16 * v14;
        v51 = 32 * v13 + 16 * v15;
        do
        {
          v52 = *(a1 + 80);
          v53 = (v52 + 16 * v49 + 16 * v15);
          v54 = *v53;
          v55 = v53[v13];
          v56 = (*(a1 + 16) + v48);
          v57 = (v52 + v51);
          v58 = v8 - v7;
          do
          {
            v59 = vmulq_f32(v10, v54);
            v60 = vmulq_f32(v11, v55);
            v54 = v55;
            v55 = *v57;
            *v56 = vaddq_f32(vaddq_f32(v60, *v56), vaddq_f32(v59, vmulq_f32(v12, *v57)));
            v56 = (v56 + v50);
            v57 += v13;
            v47 = __CFADD__(v58++, 1);
          }

          while (!v47);
          ++v49;
          v48 += 16;
          v51 += 16;
        }

        while (v49 != v6);
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 48 * v14;
      v20 = 32 * v14;
      v21 = 16 * v14;
      v22 = 48 * v13;
      v23 = v22 + 16 * v15;
      v24 = v8 - v7 + 3;
      v25 = v23;
      do
      {
        v26 = *(a1 + 80);
        v27 = (v26 + 16 * v18 + 16 * v15);
        v28 = *(a1 + 16);
        v29 = v27[v13];
        v30 = v28 + v20;
        v31 = v28 + v21;
        v32 = v26 + v23 + 16 * v13;
        v33 = v26 + v23;
        v34 = *v27;
        v35 = v26 + 16 * v15 + 16 * v16;
        v36 = v26 + v25;
        v37 = v24;
        v38 = v9;
        do
        {
          v39 = v36;
          v40 = v37;
          v41 = *(v35 + v17);
          v42 = vaddq_f32(vaddq_f32(vmulq_f32(v11, v29), *(v28 + v17)), vaddq_f32(vmulq_f32(v10, v34), vmulq_f32(v12, v41)));
          v34 = *(v33 + v17);
          *(v28 + v17) = v42;
          v43 = vaddq_f32(vaddq_f32(vmulq_f32(v10, v29), vmulq_f32(v12, v34)), vaddq_f32(vmulq_f32(v11, v41), *(v31 + v17)));
          v29 = *(v32 + v17);
          *(v31 + v17) = v43;
          *(v30 + v17) = vaddq_f32(vaddq_f32(vmulq_f32(v10, v41), vmulq_f32(v12, v29)), vaddq_f32(vmulq_f32(v11, v34), *(v30 + v17)));
          v38 -= 3;
          v28 += v19;
          v30 += v19;
          v31 += v19;
          v32 += v22;
          v33 += v22;
          v35 += v22;
          v36 += v22;
          v37 += 3;
        }

        while (v38 > 2);
        v44 = v17;
        if (v38)
        {
          do
          {
            v45 = vmulq_f32(v10, v34);
            v34 = v29;
            v46 = vmulq_f32(v11, v29);
            v29 = *(v39 + 16 * v16);
            *(v28 + v44) = vaddq_f32(vaddq_f32(v46, *(v28 + v44)), vaddq_f32(v45, vmulq_f32(v12, v29)));
            v44 += v21;
            v39 += 16 * v13;
            v47 = __CFADD__(v40++, 1);
          }

          while (!v47);
        }

        ++v18;
        v17 += 16;
        v25 += 16;
      }

      while (v18 != v6);
    }
  }

  return 7;
}

void HGConvolutionShader::~HGConvolutionShader(HGConvolutionShader *this)
{
  *this = &unk_287223058;
  if (*(this + 54))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 54), 0x1080C4057E67DB5);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HGConvolutionShader::~HGConvolutionShader(HGNode *this)
{
  *this = &unk_287223058;
  v2 = *(this + 54);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1080C4057E67DB5);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGConvolutionShader::addRound(HGConvolutionShader *this, const HGLinearFilter2D *a2, int a3, int a4, int a5, char a6)
{
  v9 = *(this + 110);
  v10 = *(this + 54);
  if (!v10)
  {
    operator new[]();
  }

  if (a6)
  {
    LODWORD(v11) = *(this + 110);
    v12 = v11;
    v13 = (v10 + 16 * v11);
    *v13 = a3;
    v13[1] = a4;
    v14 = a5;
    v15 = &cx[v14];
    v16 = &caddx[v14];
    if (!v9)
    {
      v16 = v15;
    }

    goto LABEL_62;
  }

  v17 = *(a2 + 1);
  if (SHIDWORD(v17) < a4)
  {
    v18 = v17 + *(a2 + 4);
    v19 = v18 - 1;
    v20 = v18 - 6;
    LODWORD(v11) = *(this + 110);
    if (v17 < v20)
    {
      v21 = v17 + 4;
      v22 = v17 + 8;
      if (v20 > v17 + 8)
      {
        v22 = v20;
      }

      v23 = v22 - v17 - 5;
      v24 = (v23 >> 2) + 1;
      v25 = v24 & 0x7FFFFFFE;
      v26 = 4 * (v24 & 0x7FFFFFFE);
      v27 = v21 + v26;
      v28 = v17 + v26;
      v29 = c4x;
      v30 = HIDWORD(v17);
      while (1)
      {
        v35 = v11;
        v36 = v10 + 16 * v11;
        *v36 = v17;
        *(v36 + 4) = v30;
        *(v36 + 8) = v29;
        v34 = v11 + 1;
        if (v21 >= v20)
        {
          v41 = v17;
          v37 = v17 + 4;
          v42 = v19 - v21;
          if (v19 - v21 <= 3)
          {
            goto LABEL_27;
          }

          goto LABEL_12;
        }

        v37 = v17 + 4;
        if (v23 > 3)
        {
          v34 += v25;
          v38 = v17 + 4;
          v39 = v24 & 0x7FFFFFFE;
          v40 = (v10 + 40 + 16 * v35);
          do
          {
            *(v40 - 6) = v38;
            *(v40 - 5) = v30;
            *(v40 - 2) = v38 + 4;
            *(v40 - 1) = v30;
            *(v40 - 2) = cadd4x;
            *v40 = cadd4x;
            v40 += 4;
            v38 += 8;
            v39 -= 2;
          }

          while (v39);
          if (v25 == v24)
          {
            LODWORD(v11) = v25 + v35;
            v41 = v28;
            v37 = v27;
            goto LABEL_26;
          }

          v37 = v27;
        }

        v43 = v10 + 4 + 16 * v34;
        do
        {
          *(v43 - 4) = v37;
          *v43 = v30;
          *(v43 + 4) = cadd4x;
          LODWORD(v34) = v34 + 1;
          v37 += 4;
          v43 += 16;
        }

        while (v37 < v20);
        LODWORD(v11) = v34 - 1;
        v41 = v37 - 4;
LABEL_26:
        v42 = v19 - v37;
        if (v19 - v37 <= 3)
        {
LABEL_27:
          v31 = v34;
          v44 = (v10 + 16 * v34);
          *v44 = v37;
          v44[1] = v30;
          v32 = v42 + 1;
          goto LABEL_13;
        }

LABEL_12:
        v34 = v10 + 16 * v34;
        *v34 = v37;
        *(v34 + 4) = v30;
        *(v34 + 8) = cadd3x;
        v31 = v11 + 2;
        v32 = (v42 - 2);
        v33 = (v10 + 16 * v31);
        *v33 = v41 + 7;
        v33[1] = v30;
        LODWORD(v34) = v31;
LABEL_13:
        *(v10 + 16 * v31 + 8) = caddx[v32];
        LODWORD(v11) = v34 + 1;
        ++v30;
        v29 = cadd4x;
        if (v30 == a4)
        {
          goto LABEL_49;
        }
      }
    }

    v52 = v19 - v17;
    if (v52 >= 4)
    {
      v53 = caddx[v52 - 2];
      v54 = v17 + 3;
      v55 = v10 + 16 * v11;
      *v55 = v17;
      *(v55 + 8) = c3x;
      *(v55 + 16) = v17 + 3;
      *(v55 + 20) = HIDWORD(v17);
      *(v55 + 24) = v53;
      v56 = v11 + 2;
      v57 = HIDWORD(v17) + 1;
      if (HIDWORD(v17) + 1 != a4)
      {
        if (a4 - 2 == HIDWORD(v17))
        {
          goto LABEL_38;
        }

        v58 = (a4 - 2 - HIDWORD(v17)) + 1;
        v56 += 2 * (v58 & 0x1FFFFFFFELL);
        v57 += v58 & 0xFFFFFFFE;
        v59 = v55 + 48;
        v60 = HIDWORD(v17) + 2;
        v61 = v58 & 0x1FFFFFFFELL;
        do
        {
          *(v59 - 16) = v17;
          *(v59 - 12) = v60 - 1;
          *(v59 + 16) = v17;
          *(v59 + 20) = v60;
          *(v59 - 8) = cadd3x;
          *(v59 + 24) = cadd3x;
          *v59 = v54;
          *(v59 + 4) = v60 - 1;
          *(v59 + 32) = v54;
          *(v59 + 36) = v60;
          *(v59 + 8) = v53;
          *(v59 + 40) = v53;
          v59 += 64;
          v60 += 2;
          v61 -= 2;
        }

        while (v61);
        if (v58 != (v58 & 0x1FFFFFFFELL))
        {
LABEL_38:
          v62 = v10 + 16 * v56 + 16;
          do
          {
            *(v62 - 16) = v17;
            *(v62 - 12) = v57;
            *(v62 - 8) = cadd3x;
            *v62 = v54;
            *(v62 + 4) = v57;
            *(v62 + 8) = v53;
            LODWORD(v56) = v56 + 2;
            ++v57;
            v62 += 32;
          }

          while (a4 != v57);
        }
      }

      LODWORD(v11) = v56;
LABEL_49:
      v45 = a4;
      v46 = v17;
      v12 = v11;
      v47 = a3 - v17;
      if (a3 > v17)
      {
        goto LABEL_50;
      }

LABEL_29:
      v48 = (v10 + 16 * v12);
      *v48 = a3;
      v48[1] = a4;
      v49 = a5;
      v50 = &cx[v49];
      v51 = &caddx[v49];
      if (SHIDWORD(v17) >= a4)
      {
        v16 = v50;
      }

      else
      {
        v16 = v51;
      }

      goto LABEL_62;
    }

    v63 = v52 + 1;
    v64 = (v10 + 16 * v11);
    *v64 = v17;
    v64[1] = cx[v63];
    v11 = v11 + 1;
    v65 = HIDWORD(v17) + 1;
    if (HIDWORD(v17) + 1 == a4)
    {
      goto LABEL_49;
    }

    v66 = caddx[v63];
    v67 = (a4 - 2 - HIDWORD(v17));
    if (a4 - 2 == HIDWORD(v17))
    {
      v68 = HIDWORD(v17) + 1;
    }

    else
    {
      v69 = v67 + 1;
      v70 = (v67 + 1) & 0x1FFFFFFFELL;
      v11 += v70;
      v68 = v65 + v70;
      v71 = (v64 + 5);
      v72 = v70;
      do
      {
        *(v71 - 6) = v17;
        *(v71 - 5) = v65;
        *(v71 - 2) = v17;
        *(v71 - 1) = v65 + 1;
        v65 += 2;
        *(v71 - 2) = v66;
        *v71 = v66;
        v71 += 4;
        v72 -= 2;
      }

      while (v72);
      if (v69 == v70)
      {
        goto LABEL_49;
      }
    }

    v73 = v10 + 16 * v11 + 4;
    do
    {
      *(v73 - 4) = v17;
      *v73 = v68;
      *(v73 + 4) = v66;
      LODWORD(v11) = v11 + 1;
      ++v68;
      v73 += 16;
    }

    while (a4 != v68);
    goto LABEL_49;
  }

  LODWORD(v11) = *(this + 110);
  v45 = HIDWORD(*(a2 + 1));
  v46 = *(a2 + 1);
  v12 = v11;
  v47 = a3 - v17;
  if (a3 <= v17)
  {
    goto LABEL_29;
  }

LABEL_50:
  if (v47 >= 4)
  {
    v74 = 4;
  }

  else
  {
    v74 = v47;
  }

  v75 = v10 + 16 * v12;
  *v75 = v46;
  *(v75 + 4) = v45;
  if (SHIDWORD(v17) >= a4)
  {
    v76 = cx;
  }

  else
  {
    v76 = caddx;
  }

  *(v75 + 8) = v76[v74];
  LODWORD(v11) = v12 + 1;
  v77 = v74 + v46;
  if (v74 + v46 < a3)
  {
    v78 = (v75 + 24);
    do
    {
      v79 = a3 - v77;
      if (a3 - v77 >= 4)
      {
        v79 = 4;
      }

      v80 = caddx[v79];
      *(v78 - 2) = v77;
      *(v78 - 1) = v45;
      *v78 = v80;
      v78 += 2;
      LODWORD(v11) = v11 + 1;
      v77 += v79;
    }

    while (v77 < a3);
  }

  v12 = v11;
  v81 = (v10 + 16 * v11);
  *v81 = a3;
  v81[1] = a4;
  v16 = &caddx[a5];
LABEL_62:
  *(v10 + 16 * v12 + 8) = *v16;
  *(this + 110) = v11 + 1;
  return 1;
}

uint64_t HGConvolutionShader::GetDOD(HGConvolutionShader *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (HGRectIsNull(*&a4.var0, *&a4.var2))
  {
    return 0;
  }

  v8 = HGRectMake4i(*(this + 104), *(this + 105), *(this + 104) + *(this + 102) - 1, *(this + 105) + *(this + 103) - 1);
  return HGRectGrow(v5, v4, v8);
}

uint64_t HGConvolutionShader::GetROI(HGConvolutionShader *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    return HGRectMake4i(0, 0, *(this + 103) * *(this + 102), 1u);
  }

  if (a3)
  {
    return 0;
  }

  v4 = *&a4.var0;
  v5 = *&a4.var2;
  v6 = HGRectMake4i(*(this + 104), *(this + 105), *(this + 104) + *(this + 102) - 1, *(this + 105) + *(this + 103) - 1);
  return HGRectGrow(v4, v5, v6);
}

uint64_t HGConvolutionShader::compile(HGConvolutionShader *this, const HGLinearFilter2D *a2, char *a3, int a4, char a5)
{
  v5 = a3;
  v8 = *a2;
  *(this + 53) = *a2;
  v9 = *(a2 + 8);
  *(this + 408) = vextq_s8(v9, v9, 8uLL);
  v10 = v9.i32[2];
  v11 = v9.i32[1];
  v12 = v9.i32[0];
  v55 = a4;
  if (v9.i32[1] >= a4)
  {
    v14 = v9.i32[0];
    v55 = v9.i32[1];
    if (v9.i32[2] < 1)
    {
      goto LABEL_50;
    }

    goto LABEL_6;
  }

  v54 = a3;
  v13 = v9.i32[2] + v9.i32[0] - 1;
  if (v9.i32[0] > v13)
  {
    v8 = (v8 + (16 * (~v9.i32[1] + a4) + 16) * v9.i32[2]);
    if (v9.i32[2] > 0)
    {
      v14 = v9.i32[0];
      v5 = a3;
      goto LABEL_6;
    }

    v17 = 0;
    v14 = v9.i32[0];
    v5 = a3;
    if (v9.i32[0] < a3)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

  v26 = 8 - v9.i32[0];
  v14 = v9.i32[0];
  while (2)
  {
    if (v10 < 1)
    {
      v29 = 0;
    }

    else
    {
      if ((v10 - 1) >= 7)
      {
        v27 = 7;
      }

      else
      {
        v27 = v10 - 1;
      }

      v28 = vceqzq_f32(*v8);
      *v28.i8 = vpmax_s32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
      v29 = vpmax_s32(*v28.i8, *v28.i8).u32[0] == 0;
      if (v10 != 1)
      {
        v30 = vceqzq_f32(v8[1]);
        *v30.i8 = vpmax_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v29 |= 2 * (vpmax_s32(*v30.i8, *v30.i8).u32[0] == 0);
        if (v27 != 1)
        {
          v31 = vceqzq_f32(v8[2]);
          *v31.i8 = vpmax_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
          v29 |= 4 * (vpmax_s32(*v31.i8, *v31.i8).u32[0] == 0);
          if (v27 != 2)
          {
            v32 = vceqzq_f32(v8[3]);
            *v32.i8 = vpmax_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
            v29 |= 8 * (vpmax_s32(*v32.i8, *v32.i8).u32[0] == 0);
            if (v27 != 3)
            {
              v33 = vceqzq_f32(v8[4]);
              *v33.i8 = vpmax_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
              v29 |= 16 * (vpmax_s32(*v33.i8, *v33.i8).u32[0] == 0);
              if (v27 != 4)
              {
                v34 = vceqzq_f32(v8[5]);
                *v34.i8 = vpmax_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
                v29 |= 32 * (vpmax_s32(*v34.i8, *v34.i8).u32[0] == 0);
                if (v27 != 5)
                {
                  v35 = vceqzq_f32(v8[6]);
                  *v35.i8 = vpmax_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
                  v29 |= (vpmax_s32(*v35.i8, *v35.i8).u32[0] == 0) << 6;
                  if (v27 != 6)
                  {
                    v36 = vceqzq_f32(v8[7]);
                    *v36.i8 = vpmax_s32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
                    v29 |= (vpmax_s32(*v36.i8, *v36.i8).u32[0] == 0) << 7;
                  }
                }
              }
            }
          }
        }
      }
    }

    v37 = v12;
    do
    {
      if ((v29 & 1) == 0)
      {
        v39 = 1;
        if ((a5 & 1) == 0)
        {
          HGConvolutionShader::compile(this, a2, v37, v11, 1);
        }

        goto LABEL_44;
      }

      v39 = lut[v29 >> 1];
      if (a5)
      {
        goto LABEL_43;
      }

      v40 = v14 + v10 + ~v37;
      if (v40 >= 3)
      {
        v40 = 3;
      }

      if (v39 <= v40)
      {
LABEL_43:
        HGConvolutionShader::addRound(this, a2, v37, v11, v39, a5 & 1);
LABEL_44:
        a5 = 1;
        goto LABEL_45;
      }

      a5 = 0;
LABEL_45:
      v14 = *(a2 + 2);
      v10 = *(a2 + 4);
      v41 = v39 - 1;
      v42 = v37 + v39;
      v43 = v26 + v37;
      v44 = v37 - (v14 + v10);
      do
      {
        v29 >>= 1;
        if (v44 <= -9)
        {
          v45 = vceqzq_f32(v8[v43]);
          *v45.i8 = vpmax_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
          v29 |= (vpmax_s32(*v45.i8, *v45.i8).u32[0] == 0) << 7;
        }

        ++v43;
        ++v44;
        --v39;
      }

      while (v39);
      v38 = v37 + v41;
      v37 = v42;
    }

    while (v38 < v13);
    v8 += v10;
    if (++v11 != v55)
    {
      continue;
    }

    break;
  }

  v5 = v54;
  if (v10 < 1)
  {
LABEL_50:
    v17 = 0;
    goto LABEL_51;
  }

LABEL_6:
  if ((v10 - 1) >= 7)
  {
    v15 = 7;
  }

  else
  {
    v15 = v10 - 1;
  }

  v16 = vceqzq_f32(*v8);
  *v16.i8 = vpmax_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v17 = vpmax_s32(*v16.i8, *v16.i8).u32[0] == 0;
  if (v10 != 1)
  {
    v18 = v15 + 1;
    v19 = vceqzq_f32(v8[1]);
    *v19.i8 = vpmax_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v17 |= 2 * (vpmax_s32(*v19.i8, *v19.i8).u32[0] == 0);
    if (v18 != 2)
    {
      v20 = vceqzq_f32(v8[2]);
      *v20.i8 = vpmax_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v17 |= 4 * (vpmax_s32(*v20.i8, *v20.i8).u32[0] == 0);
      if (v18 != 3)
      {
        v21 = vceqzq_f32(v8[3]);
        *v21.i8 = vpmax_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v17 |= 8 * (vpmax_s32(*v21.i8, *v21.i8).u32[0] == 0);
        if (v18 != 4)
        {
          v22 = vceqzq_f32(v8[4]);
          *v22.i8 = vpmax_s32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
          v17 |= 16 * (vpmax_s32(*v22.i8, *v22.i8).u32[0] == 0);
          if (v18 != 5)
          {
            v23 = vceqzq_f32(v8[5]);
            *v23.i8 = vpmax_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
            v17 |= 32 * (vpmax_s32(*v23.i8, *v23.i8).u32[0] == 0);
            if (v18 != 6)
            {
              v24 = vceqzq_f32(v8[6]);
              *v24.i8 = vpmax_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
              v17 |= (vpmax_s32(*v24.i8, *v24.i8).u32[0] == 0) << 6;
              if (v18 != 7)
              {
                v25 = vceqzq_f32(v8[7]);
                *v25.i8 = vpmax_s32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
                v17 |= (vpmax_s32(*v25.i8, *v25.i8).u32[0] == 0) << 7;
                if (v12 >= v5)
                {
                  goto LABEL_69;
                }

LABEL_52:
                v46 = 8 - v12;
                while (2)
                {
                  if (v17)
                  {
                    v47 = lut[v17 >> 1];
                    if (a5)
                    {
                      goto LABEL_62;
                    }

                    v48 = v14 + v10 + ~v12;
                    if (v48 >= 3)
                    {
                      v48 = 3;
                    }

                    if (v47 <= v48)
                    {
LABEL_62:
                      HGConvolutionShader::addRound(this, a2, v12, v55, v47, a5 & 1);
                      goto LABEL_63;
                    }

                    a5 = 0;
                  }

                  else
                  {
                    v47 = 1;
                    if ((a5 & 1) == 0)
                    {
                      HGConvolutionShader::compile(this, a2, v12, v55, 1);
                    }

LABEL_63:
                    a5 = 1;
                  }

                  v14 = *(a2 + 2);
                  v10 = *(a2 + 4);
                  v49 = v46 + v12;
                  v50 = v12 - (v14 + v10);
                  v51 = v47;
                  do
                  {
                    v17 >>= 1;
                    if (v50 <= -9)
                    {
                      v52 = vceqzq_f32(v8[v49]);
                      *v52.i8 = vpmax_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
                      v17 |= (vpmax_s32(*v52.i8, *v52.i8).u32[0] == 0) << 7;
                    }

                    ++v49;
                    ++v50;
                    --v51;
                  }

                  while (v51);
                  v12 += v47;
                  if (v12 >= v5)
                  {
                    goto LABEL_69;
                  }

                  continue;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_51:
  if (v12 < v5)
  {
    goto LABEL_52;
  }

LABEL_69:
  HGNode::ClearBits(this, a2, a3);
  return 1;
}

const char *HGConvolutionShader::GetProgram(HGConvolutionShader *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) < 0x60B10)
  {
    return 0;
  }

  if ((*(*a2 + 128))(a2, 19) == 27)
  {
    return "//Metal1.0     \n//LEN=00000007cf\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >       hg_Texture0 [[ texture(0) ]], // base image\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]],\n                                  texture2d< float >      hg_Texture1 [[ texture(1) ]], // coefficents, flattened to 1D in x\n                                  sampler                 hg_Sampler1 [[ sampler(1) ]])\n{\n    const int16_t width {static_cast<int16_t>(hg_Params[0].x)};\n    const int16_t height {static_cast<int16_t>(hg_Params[0].y)};\n    \n    // Accumulator\n    float4 R0 {0.0, 0.0, 0.0, 0.0};\n    \n    // Coordinate Offsets\n    const float xOff {static_cast<float>(hg_Params[0].z)};\n    const float yOff {static_cast<float>(hg_Params[0].w)};\n    \n    for (int16_t j {0}; j < height; ++j)\n    {\n        for (int16_t k {0}; k < width; ++k)\n        {\n            // Coefficient index\n            const int16_t cIndex {static_cast<int16_t>(k + (j * width))};\n            \n            // Coefficient (sample the centers of the coefficient texels)\n            const float4 C0 {hg_Texture1.sample(hg_Sampler1, float2(cIndex + 0.5, 0.5))};\n            \n            // Determine sample texture coordinates centered about the current fragment\n            const float u = {frag._texCoord0.x + xOff + static_cast<float>(k)};\n            const float v = {frag._texCoord0.y + yOff + static_cast<float>(j)};\n            \n            // Retrieve sample\n            const half4 S0 {hg_Texture0.sample(hg_Sampler0, float2(u,v))};\n\n            // Accumulate\n            R0 += {C0 * static_cast<float4>(S0)};\n        }\n    }\n    \n    FragmentOut ret {R0};\n    return ret;\n}\n//MD5=8c980f69:cd21baa0:e0ab4b40:4b70610a\n//SIG=00000000:00000000:00000000:00000001:0008:0001:0000:0000:0000:0000:0002:0000:0001:02:0:0:0\n";
  }

  return "//Metal1.0     \n//LEN=00000007d0\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >      hg_Texture0 [[ texture(0) ]], // base image\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]],\n                                  texture2d< float >      hg_Texture1 [[ texture(1) ]], // coefficents, flattened to 1D in x\n                                  sampler                 hg_Sampler1 [[ sampler(1) ]])\n{\n    const int16_t width {static_cast<int16_t>(hg_Params[0].x)};\n    const int16_t height {static_cast<int16_t>(hg_Params[0].y)};\n    \n    // Accumulator\n    float4 R0 {0.0, 0.0, 0.0, 0.0};\n    \n    // Coordinate Offsets\n    const float xOff {static_cast<float>(hg_Params[0].z)};\n    const float yOff {static_cast<float>(hg_Params[0].w)};\n    \n    for (int16_t j {0}; j < height; ++j)\n    {\n        for (int16_t k {0}; k < width; ++k)\n        {\n            // Coefficient index\n            const int16_t cIndex {static_cast<int16_t>(k + (j * width))};\n            \n            // Coefficient (sample the centers of the coefficient texels)\n            const float4 C0 {hg_Texture1.sample(hg_Sampler1, float2(cIndex + 0.5, 0.5))};\n            \n            // Determine sample texture coordinates centered about the current fragment\n            const float u = {frag._texCoord0.x + xOff + static_cast<float>(k)};\n            const float v = {frag._texCoord0.y + yOff + static_cast<float>(j)};\n            \n            // Retrieve sample\n            const float4 S0 {hg_Texture0.sample(hg_Sampler0, float2(u,v))};\n\n            // Accumulate\n            R0 += {C0 * static_cast<float4>(S0)};\n        }\n    }\n    \n    FragmentOut ret {R0};\n    return ret;\n}\n//MD5=038605c0:7066b788:55c1d230:a6da0cc5\n//SIG=00000000:00000000:00000000:00000000:0008:0001:0000:0000:0000:0000:0002:0000:0001:02:0:0:0\n";
}

void sub_25FD04C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v48 - 128));
  std::vector<HGBinding>::~vector[abi:ne200100]((v48 - 96));
  if (*(v48 - 41) < 0)
  {
    operator delete(*(v48 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t HGConvolutionShader::RenderTile(HGConvolutionShader *this, HGTile *a2)
{
  v4 = *(a2 + 22);
  v5 = *(this + 53);
  if (*(this + 110))
  {
    v6 = *(this + 54);
    v7 = v6[1];
    v8 = &v5[(v7 - *(this + 105)) * *(this + 102) - *(this + 104)];
    v9 = v7 * v4;
    (*(v6 + 1))(a2, v8 + 16 * *v6, (*v6 + v7 * v4));
    if (*(this + 110) >= 2)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(this + 54) + v10;
        v13 = *(v12 + 20);
        if (v13 != *(v12 + 4))
        {
          v8 = *(this + 53) + 16 * ((v13 - *(this + 105)) * *(this + 102) - *(this + 104));
          v9 = v13 * v4;
        }

        (*(v12 + 24))(a2, v8 + 16 * *(v12 + 16), (*(v12 + 16) + v9));
        ++v11;
        v10 += 16;
      }

      while (v11 < *(this + 110));
    }

    return 1;
  }

  v14 = *(this + 104);
  v15 = *(this + 105);
  LODWORD(v16) = v14 + v15 * v4;
  v17 = *(this + 102);
  v18 = *(this + 103);
  if (v17 < 2)
  {
    if (v18 < 7)
    {
      (cy[v18])(a2, v5, (v14 + v15 * v4));
    }

    else
    {
      c4y(a2, v5, v14 + v15 * v4);
      if (v18 < 0xB)
      {
        v23 = v18 - 4;
        v24 = 4;
      }

      else
      {
        v22 = v14 + v4 * (v15 + 4);
        v23 = v18 - 4;
        v24 = 4;
        do
        {
          cadd4y(a2, &v5[v24], v22);
          v24 += 4;
          v22 += 4 * v4;
          v23 -= 4;
        }

        while (v23 > 6);
      }

      (caddy[v23])(a2, &v5[v24], (v24 * v4 + v16));
    }

    return 1;
  }

  if (v17 < 7)
  {
    (cx[v17])(a2, v5, (v14 + v15 * v4));
    v21 = v18 - 1;
    if (v18 == 1)
    {
      return 1;
    }

    goto LABEL_19;
  }

  c4x(a2, v5, v14 + v15 * v4);
  v19 = v17 - 4;
  v20 = 4;
  if (v17 >= 0xB)
  {
    do
    {
      cadd4x(a2, &v5[v20], v16 + v20);
      v20 += 4;
      v19 -= 4;
    }

    while (v19 > 6);
  }

  (caddx[v19])(a2, &v5[v20], (v20 + v16));
  v21 = v18 - 1;
  if (v18 != 1)
  {
LABEL_19:
    if (v17 < 7)
    {
      v69 = caddx[v17];
      v70 = v17;
      v71 = &v5[v70];
      v72 = (v14 + v4 + v4 * v15);
      do
      {
        (v69)(a2, v71, v72);
        v71 = (v71 + v70 * 16);
        v72 = (v72 + v4);
        --v21;
      }

      while (v21);
    }

    else
    {
      v16 = v16;
      do
      {
        v25 = 0;
        v16 += v4;
        v5 += v17;
        do
        {
          v26 = &v5[v25];
          v27 = *(a2 + 2);
          v28 = *a2;
          v29 = v27 - *a2;
          v30 = *(a2 + 3) - *(a2 + 1);
          v31 = (*(a2 + 10) + 16 * v25 + 16 * v16);
          v32 = *(a2 + 2);
          v33 = *v26;
          v34 = v26[1];
          v35 = v26[2];
          v36 = v26[3];
          v37 = (*(a2 + 6) - v29);
          v38 = (*(a2 + 22) - v29);
          if (v29 < 4)
          {
            if (v29)
            {
              v57 = v28 - v27;
              v58 = 16 * v37;
              v59 = 16 * v38;
              do
              {
                v60 = v32;
                v61 = *v31;
                v62 = v31[1];
                v63 = v31[2];
                v32 = (v32 + v58);
                v64 = v31 + 3;
                v31 = (v31 + v59);
                v65 = v57;
                do
                {
                  v66 = vmulq_f32(v33, v61);
                  v67 = vmulq_f32(v34, v62);
                  v61 = v62;
                  v62 = v63;
                  v68 = *v64++;
                  v63 = v68;
                  *v60 = vaddq_f32(vaddq_f32(vmulq_f32(v35, v62), v66), vaddq_f32(vmulq_f32(v36, v68), vaddq_f32(v67, *v60)));
                  ++v60;
                  ++v32;
                  ++v31;
                  v56 = __CFADD__(v65++, 1);
                }

                while (!v56);
                --v30;
              }

              while (v30);
            }
          }

          else
          {
            v39 = v28 - v27 + 4;
            do
            {
              v40 = *v31;
              v41 = v31[1];
              v42 = v39;
              v43 = v29;
              v44 = v31[2];
              do
              {
                v45 = v40;
                v46 = v31[4];
                v31 += 4;
                v40 = v46;
                v47 = v31[-1];
                v48 = v32[1];
                v49 = v42;
                *v32 = vaddq_f32(vaddq_f32(vmulq_f32(v35, v44), vmulq_f32(v33, v45)), vaddq_f32(vmulq_f32(v36, v47), vaddq_f32(vmulq_f32(v34, v41), *v32)));
                v50 = vaddq_f32(vaddq_f32(vmulq_f32(v33, v41), vmulq_f32(v35, v47)), vaddq_f32(vmulq_f32(v36, v46), vaddq_f32(vmulq_f32(v34, v44), v48)));
                v41 = v31[1];
                v32[1] = v50;
                v51 = vaddq_f32(vaddq_f32(vmulq_f32(v33, v44), vmulq_f32(v35, v46)), vaddq_f32(vmulq_f32(v36, v41), vaddq_f32(vmulq_f32(v34, v47), v32[2])));
                v44 = v31[2];
                v52 = vaddq_f32(vaddq_f32(vmulq_f32(v33, v47), vmulq_f32(v35, v41)), vaddq_f32(vmulq_f32(v36, v44), vaddq_f32(vmulq_f32(v34, v46), v32[3])));
                v32[2] = v51;
                v32[3] = v52;
                v32 += 4;
                v43 -= 4;
                v42 += 4;
              }

              while (v43 > 3);
              if (v43)
              {
                v53 = 0;
                do
                {
                  v54 = vmulq_f32(v33, v40);
                  v55 = vmulq_f32(v34, v41);
                  v40 = v41;
                  v41 = v44;
                  v44 = v31[v53 + 3];
                  v32[v53] = vaddq_f32(vaddq_f32(vmulq_f32(v35, v41), v54), vaddq_f32(vmulq_f32(v36, v44), vaddq_f32(v55, v32[v53])));
                  ++v53;
                  v56 = __CFADD__(v49++, 1);
                }

                while (!v56);
                v32 = (v32 + v53 * 16);
                v31 = (v31 + v53 * 16);
              }

              v32 += v37;
              v31 += v38;
              --v30;
            }

            while (v30);
          }

          v25 += 4;
        }

        while (v17 - v25 > 6);
        (caddx[v17 - v25])(a2, &v5[v25], (v25 + v16));
        --v21;
      }

      while (v21);
    }
  }

  return 1;
}

void HGConvolution::HGConvolution(HGConvolution *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2872232A8;
  HGLinearFilter2D::HGLinearFilter2D((v2 + 51));
  HGLinearFilter2D::HGLinearFilter2D((this + 440));
  *(this + 520) = 0u;
  HGLinearFilter2D::setType((this + 408), 0, 4);
  HGLinearFilter2D::setType((this + 440), 0, 4);
  *(this + 118) = -1;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
}

void sub_25FD05434(_Unwind_Exception *a1)
{
  HGLinearFilter2D::~HGLinearFilter2D((v1 + 408));
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void sub_25FD05464(_Unwind_Exception *a1)
{
  v4 = *(v1 + 528);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  if (*v2)
  {
    (*(**v2 + 24))(*v2);
  }

  HGLinearFilter2D::~HGLinearFilter2D((v1 + 440));
  HGLinearFilter2D::~HGLinearFilter2D((v1 + 408));
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGConvolution::~HGConvolution(HGConvolution *this)
{
  *this = &unk_2872232A8;
  v2 = *(this + 63);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 62);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 61);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 60);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 66);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 65);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  HGLinearFilter2D::~HGLinearFilter2D((this + 440));
  HGLinearFilter2D::~HGLinearFilter2D((this + 408));

  HGNode::~HGNode(this);
}

{
  HGConvolution::~HGConvolution(this);

  HGObject::operator delete(v1);
}

uint64_t HGConvolution::SetSize(HGConvolution *this, int a2, int a3)
{
  if (a2 < 1 || a3 < 1)
  {
    if (!*(this + 51))
    {
LABEL_11:
      result = 0;
      *(this + 128) = 1;
      return result;
    }

    HGLinearFilter2D::reset(this + 408, 0, 0);
  }

  else
  {
    v4 = *(this + 104);
    if (*(this + 128) < 2)
    {
      v5 = *(this + 105);
      if (*(this + 106) == a2 && *(this + 107) == a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 += *(this + 112);
      v5 = *(this + 113) + *(this + 105);
      if (*(this + 106) + *(this + 114) - 1 == a2 && *(this + 107) + *(this + 115) - 1 == a3)
      {
        goto LABEL_11;
      }
    }

    HGLinearFilter2D::resize((this + 408), v4, v5, a2 + v4 - 1, a3 + v5 - 1, 0);
  }

  *(this + 118) = -1;
  HGNode::ClearBits(this, v6, v7);
  result = 1;
  *(this + 128) = 1;
  return result;
}

uint64_t HGConvolution::SetParameter(HGConvolution *this, uint64_t a2, float32x4_t a3, float32_t a4, float a5, float a6, char *a7)
{
  if (!a2)
  {
    v36 = a4;
    v38 = a3.f32[0];
    v13 = HGConvolution::SetSize(this, vcvtps_s32_f32(a5), vcvtps_s32_f32(a6));
    v14 = rintf(v38);
    v15 = rintf(v36);
    v16 = *(this + 104);
    if (*(this + 128) < 2)
    {
      v17 = v14 - v16;
      v18 = v15 - *(this + 105);
      v19 = v18 | (v14 - v16);
      if (!v19)
      {
        return v19 | v13;
      }
    }

    else
    {
      v17 = v14 - (*(this + 112) + v16);
      v18 = v15 - (*(this + 113) + *(this + 105));
      v19 = v18 | v17;
      if (!(v18 | v17))
      {
        return v19 | v13;
      }
    }

    HGLinearFilter2D::translate(this + 102, v17, v18);
    *(this + 118) = -1;
    HGNode::ClearBits(this, v21, v22);
    v19 = 1;
    return v19 | v13;
  }

  v8 = *(this + 128);
  v9 = *(this + 106);
  if (v8 >= 2)
  {
    v10 = v9 + *(this + 114) - 1;
    v11 = *(this + 107) + *(this + 115) - 1;
    if ((v11 * v10) < a2)
    {
      return 0xFFFFFFFFLL;
    }

    v23 = (a2 - 1) % v10;
    v24 = (a2 - 1) / v11;
    v37 = a4;
    v39 = a3.i32[0];
    v34 = a5;
    v35 = a6;
    HGLinearFilter2D::convolve((this + 408), (this + 440));
    a5 = v34;
    a6 = v35;
    a4 = v37;
    a3.i32[0] = v39;
    *(this + 118) |= 0x15u;
    *(this + 128) = 1;
    v25 = *(this + 104);
    v26 = v23 - v25;
    if (v23 >= v25)
    {
      goto LABEL_14;
    }

    return 0xFFFFFFFFLL;
  }

  v20 = *(this + 107);
  if ((v20 * v9) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = (a2 - 1) % v9;
  v24 = (a2 - 1) / v20;
  v25 = *(this + 104);
  v26 = v23 - v25;
  if (v23 < v25)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_14:
  v27 = *(this + 106);
  if (v25 + v27 - 1 < v23)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = *(this + 105);
  v29 = v24 - v28;
  if (v24 < v28)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 + *(this + 107) - 1 < v24)
  {
    return 0xFFFFFFFFLL;
  }

  v30 = *(this + 51);
  a3.f32[1] = a4;
  a3.i64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v31 = v26 + v29 * v27;
  v32 = veorq_s8(vceqzq_f32(a3), vceqzq_f32(*(v30 + 16 * v31)));
  v33 = vpmin_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  if (vpmin_s32(v33, v33).u32[0])
  {
    *(this + 118) |= 0x11u;
    *(v30 + 16 * v31) = a3;
LABEL_25:
    HGNode::ClearBits(this, a2, a7);
    return 1;
  }

  if (v8 >= 2)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t HGConvolution::SeparableFilter2D(HGConvolution *this, const HGLinearFilter2D *a2, const HGLinearFilter2D *a3)
{
  v6 = this + 408;
  if (*(a2 + 5) >= *(a3 + 5))
  {
    if (HGLinearFilter2D::operator==(v6, a3))
    {
      result = HGLinearFilter2D::operator==(this + 440, a2);
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      HGLinearFilter2D::operator=(this + 51, a3);
      *(this + 118) |= 0x15u;
      result = HGLinearFilter2D::operator==(this + 440, a2);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v8 = (this + 440);
    v9 = a2;
  }

  else
  {
    if (HGLinearFilter2D::operator==(v6, a2))
    {
      result = HGLinearFilter2D::operator==(this + 440, a3);
      if (result)
      {
LABEL_4:
        *(this + 128) = 2;
        return result;
      }
    }

    else
    {
      HGLinearFilter2D::operator=(this + 51, a2);
      *(this + 118) |= 0x15u;
      result = HGLinearFilter2D::operator==(this + 440, a3);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v8 = (this + 440);
    v9 = a3;
  }

  result = HGLinearFilter2D::operator=(v8, v9);
  *(this + 118) |= 0x2Au;
  *(this + 128) = 2;
  return result;
}

HGBitmapLoader *HGConvolution::PopulateCoeffInputForKernel(HGConvolution *this, HGGPURenderer *a2, int a3)
{
  v4 = a3;
  v5 = this + 32 * a3;
  v6 = HGRectMake4i(0, 0, *(v5 + 107) * *(v5 + 106), 1u);
  v8 = v7;
  v9 = *(v5 + 51);
  v10 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v10, v6, v8, 28, v9);
  v11 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v11, v10);
  v12 = this + 520;
  result = *&v12[8 * v4];
  if (result == v11)
  {
    if (v11)
    {
      result = (*(*v11 + 24))(v11);
    }
  }

  else
  {
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *&v12[8 * v4] = v11;
  }

  if (v10)
  {
    return (*(*v10 + 24))(v10);
  }

  return result;
}

void sub_25FD05CC4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

HGNode *HGConvolution::GetOutput(HGNode *this, HGRenderer *a2)
{
  result = HGRenderer::GetInput(a2, this, 0);
  *(this + 118) &= 0xFFFFFFCF;
  v6 = *(this + 51);
  if (v6)
  {
    v7 = *(this + 128);
    if (v7 < 2 || *(this + 55))
    {
      if (*(this + 52) || *(this + 106) != 1 || *(this + 107) != 1 || (v5.n128_u32[0] = *v6, *v6 != 0.0) || (v5.n128_u32[0] = v6[1], v5.n128_f32[0] != 0.0) || (v5.n128_u32[0] = v6[2], v5.n128_f32[0] != 0.0) || (v5.n128_u32[0] = v6[3], v5.n128_f32[0] != 0.0) || v7 >= 2 && (*(this + 56) || *(this + 114) != 1 || *(this + 115) != 1 || (v21 = *(this + 55), v5.n128_u32[0] = *v21, *v21 != 0.0) || (v5.n128_u32[0] = v21[1], v5.n128_f32[0] != 0.0) || (v5.n128_u32[0] = v21[2], v5.n128_f32[0] != 0.0) || (v5.n128_u32[0] = v21[3], v5.n128_f32[0] != 0.0)))
      {
        v8 = result;
        if ((*(*a2 + 304))(a2, v5))
        {
          v9 = *(this + 60);
          if (v9)
          {
            v10 = *v9;
          }

          else
          {
            v17 = HGObject::operator new(0x1C0uLL);
            HGNode::HGNode(v17);
            v10 = &unk_287223058;
            *v17 = &unk_287223058;
            *(v17 + 110) = 0;
            *(v17 + 408) = 0u;
            *(v17 + 424) = 0u;
            *(v17 + 4) = *(v17 + 4) & 0xFFFFF9FF | 0x400;
            *(this + 60) = v17;
          }

          v10[15]();
          if (*(this + 472))
          {
            HGConvolutionShader::compile(*(this + 60), (this + 408), (*(this + 106) + *(this + 104)), *(this + 105) + *(this + 107) - 1, 0);
            *(this + 118) &= ~1u;
          }

          if (*(this + 128) < 2)
          {
            return *(this + 60);
          }

          else
          {
            v18 = *(this + 61);
            if (v18)
            {
              v19 = *v18;
            }

            else
            {
              v20 = HGObject::operator new(0x1C0uLL);
              HGNode::HGNode(v20);
              v19 = &unk_287223058;
              *v20 = &unk_287223058;
              *(v20 + 110) = 0;
              *(v20 + 408) = 0u;
              *(v20 + 424) = 0u;
              *(v20 + 4) = *(v20 + 4) & 0xFFFFF9FF | 0x400;
              *(this + 61) = v20;
            }

            v19[15]();
            if ((*(this + 472) & 2) != 0)
            {
              HGConvolutionShader::compile(*(this + 61), (this + 440), (*(this + 114) + *(this + 112)), *(this + 113) + *(this + 115) - 1, 0);
              *(this + 118) &= ~2u;
            }

            return *(this + 61);
          }
        }

        else
        {
          v11 = *(this + 62);
          if (!v11)
          {
            v12 = HGObject::operator new(0x1C0uLL);
            HGNode::HGNode(v12);
            v11 = v12;
            *v12 = &unk_287223058;
            *(v12 + 110) = 0;
            *(v12 + 408) = 0u;
            *(v12 + 424) = 0u;
            *(v12 + 4) = *(v12 + 4) & 0xFFFFF9FF | 0x400;
            *(this + 62) = v12;
          }

          if ((*(this + 472) & 4) != 0)
          {
            HGConvolutionShader::compile(v11, (this + 408), (*(this + 106) + *(this + 104)), *(this + 105) + *(this + 107) - 1, 0);
            HGConvolution::PopulateCoeffInputForKernel(this, v13, 0);
            *(this + 118) &= ~4u;
            v11 = *(this + 62);
          }

          (*(*v11 + 120))(v11, 0, v8);
          (*(**(this + 62) + 120))(*(this + 62), 1, *(this + 65));
          if (*(this + 128) < 2)
          {
            return *(this + 62);
          }

          else
          {
            v14 = *(this + 63);
            if (!v14)
            {
              v15 = HGObject::operator new(0x1C0uLL);
              HGNode::HGNode(v15);
              v14 = v15;
              *v15 = &unk_287223058;
              *(v15 + 110) = 0;
              *(v15 + 408) = 0u;
              *(v15 + 424) = 0u;
              *(v15 + 4) = *(v15 + 4) & 0xFFFFF9FF | 0x400;
              *(this + 63) = v15;
            }

            if ((*(this + 472) & 8) != 0)
            {
              HGConvolutionShader::compile(v14, (this + 440), (*(this + 114) + *(this + 112)), *(this + 113) + *(this + 115) - 1, 0);
              HGConvolution::PopulateCoeffInputForKernel(this, v16, 1);
              *(this + 118) &= ~8u;
              v14 = *(this + 63);
            }

            (*(*v14 + 120))(v14, 0, *(this + 62));
            (*(**(this + 63) + 120))(*(this + 63), 1, *(this + 66));
            return *(this + 63);
          }
        }
      }
    }
  }

  return result;
}

void HGFlipAndOffset::HGFlipAndOffset(HGFlipAndOffset *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287223528;
  *(v2 + 420) = 0;
  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  HGNode::SetFlags(v2, 0, 32);
  *(this + 4) |= 0x600u;
}

void HGFlipAndOffset::~HGFlipAndOffset(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGFlipAndOffset::info(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  if (a2 >= 1)
  {
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "    [ [", 7);
    if (*(a1 + 416))
    {
      v13 = 0xFFFFFFFFLL;
    }

    else
    {
      v13 = 1;
    }

    v14 = MEMORY[0x2666E9B50](v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " 0 0 ", 5);
    v16 = MEMORY[0x2666E9B50](v15, *(a1 + 408));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "]\n", 2);
    v18 = *(a4 + 23);
    if (v18 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    if (v18 >= 0)
    {
      v20 = *(a4 + 23);
    }

    else
    {
      v20 = *(a4 + 8);
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "      [0 ", 9);
    if (*(a1 + 417))
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = 1;
    }

    v24 = MEMORY[0x2666E9B50](v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " 0 ", 3);
    v26 = MEMORY[0x2666E9B50](v25, *(a1 + 412));
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "]\n", 2);
    v28 = *(a4 + 23);
    if (v28 >= 0)
    {
      v29 = a4;
    }

    else
    {
      v29 = *a4;
    }

    if (v28 >= 0)
    {
      v30 = *(a4 + 23);
    }

    else
    {
      v30 = *(a4 + 8);
    }

    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "      [0 0 1 0]\n", 16);
    v33 = *(a4 + 23);
    if (v33 >= 0)
    {
      v34 = a4;
    }

    else
    {
      v34 = *a4;
    }

    if (v33 >= 0)
    {
      v35 = *(a4 + 23);
    }

    else
    {
      v35 = *(a4 + 8);
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "      [0 0 0 1] ]", 17);
  }

  std::stringbuf::str();
  v38 = *MEMORY[0x277D82828];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v42);
}

void sub_25FD0669C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](va1);
  _Unwind_Resume(a1);
}

uint64_t HGFlipAndOffset::SetParameter(HGFlipAndOffset *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    if (*(this + 105) != a3)
    {
      *(this + 105) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 == 1)
  {
    v9 = a3 != 0.0;
    v10 = a4 != 0.0;
    if (*(this + 416) != v9 || *(this + 417) != v10)
    {
      *(this + 416) = v9;
      *(this + 417) = v10;
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

  if (vabds_f32(a3, roundf(a3)) > 0.001)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = llroundf(a4);
  if (vabds_f32(a4, v7) > 0.001)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = llroundf(a3);
  if (*(this + 102) == v11 && *(this + 103) == v7)
  {
    return 0;
  }

  *(this + 102) = v11;
  *(this + 103) = v7;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HGFlipAndOffset::GetParameter(int32x2_t *this, int a2, float32x2_t *a3, float a4, float a5)
{
  switch(a2)
  {
    case 2:
      a3->f32[0] = this[52].u32[1];
      break;
    case 1:
      LOBYTE(a4) = this[52].i8[0];
      LOBYTE(a5) = this[52].i8[1];
      a3->f32[0] = LODWORD(a4);
      a3->f32[1] = LODWORD(a5);
      return 0;
    case 0:
      *a3 = vcvt_f32_s32(this[51]);
      return 0;
  }

  return 0;
}

HGFlipAndOffset *HGFlipAndOffset::GetOutput(HGFlipAndOffset *this, HGRenderer *a2)
{
  if ((*(this + 416) & 1) != 0 || *(this + 417) == 1)
  {
    (*(*this + 136))(this, 0, 1);
    *(this + 4) |= 1u;
  }

  return this;
}

uint64_t HGFlipAndOffset::GetDOD(HGFlipAndOffset *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return HGRectNull;
  }

  v7 = HGRectFloat(a4.var0);
  if (*(this + 416))
  {
    v11 = -1.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = HGRectScale(v7, v8, v9, v10, v11);
  v16 = HGRectTranslate(v12, v13, v14, v15, *(this + 102));
  *&v25 = HGRectIntegral(v17, v16, v18, v19, v20);
  *(&v25 + 1) = v21;
  if (!(*(*this + 312))(this, a2))
  {
    return v25;
  }

  v22 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v24 = v23;
  *&v26.var0 = v22;
  *&v26.var2 = v24;
  HGRect::Grow(&v25, v26);
  return v25;
}

uint64_t HGFlipAndOffset::GetROI(HGFlipAndOffset *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v6 = HGRectFloat(a4.var0);
  v10 = HGRectTranslate(v6, v7, v8, v9, -*(this + 102));
  if (*(this + 416))
  {
    v14 = -1.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = HGRectScale(v10, v11, v12, v13, v14);
  return HGRectIntegral(v16, v15, v17, v18, v19);
}

uint64_t HGFlipAndOffset::BindTexture(HGFlipAndOffset *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v7.n128_u64[0] = 1.0;
  if (*(this + 416))
  {
    v6.n128_f64[0] = -1.0;
  }

  else
  {
    v6.n128_f64[0] = 1.0;
  }

  if (*(this + 417))
  {
    v7.n128_f64[0] = -1.0;
  }

  (*(*a2 + 104))(a2, v6, v7, 1.0);
  (*(*a2 + 96))(a2, -*(this + 102), -*(this + 103), 0.0);
  v8 = (*(*this + 288))(this);
  (*(*a2 + 136))(a2, 0, v8, *&v8, *&v8, *&v8);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    return 0;
  }

  (*(*a2 + 168))(a2);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 21))
  {
    return 0;
  }

  (*(*a2 + 136))(a2, 1, 0.0, 0.0, 1.0, 1.0);
  v9 = *(a2 + 57) - *(a2 + 55);
  v10 = *(a2 + 58) - *(a2 + 56);
  (*(*a2 + 136))(a2, 2, vcvts_n_f32_u32(v9 + 1, 1uLL), vcvts_n_f32_u32(v10 + 1, 1uLL), v9, v10);
  return 0;
}

uint64_t HGFlipAndOffset::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 420);
  if (v2 <= a2)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t HGFlipAndOffset::RenderTile(HGFlipAndOffset *this, HGTile *a2)
{
  if (*(this + 416) == 1)
  {
    v3 = *a2;
    v2 = *(a2 + 1);
    v4 = (*(a2 + 2) - *a2);
    v5 = *(a2 + 3) - v2;
    if (*(this + 417))
    {
      if (v5 >= 1 && v4 >= 1)
      {
        v6 = 0;
        v7 = *(a2 + 22);
        v8 = *(a2 + 52) - v3 + (*(a2 + 53) - v2) * v7;
        v9 = *(a2 + 2);
        v10 = 16 * (*(a2 + 2) - *a2);
        v11 = 16 * *(a2 + 6);
        v12 = 16 * v7 * (v5 - 1) + 16 * v8 + *(a2 + 10) - 16;
        v13 = -16 * v7;
        do
        {
          v14 = 0;
          v15 = v12;
          do
          {
            *(v9 + v14) = *(v15 + v10);
            v14 += 16;
            v15 -= 16;
          }

          while (v10 != v14);
          ++v6;
          v9 += v11;
          v12 += v13;
        }

        while (v6 != v5);
      }
    }

    else if (v5 >= 1 && v4 >= 1)
    {
      v24 = 0;
      v25 = *(a2 + 22);
      v26 = *(a2 + 10) + 16 * (*(a2 + 52) - v3 + (*(a2 + 53) - v2) * v25);
      v27 = *(a2 + 2);
      v28 = v4 - 1;
      v29 = 16 * *(a2 + 6);
      v30 = 16 * v25;
      do
      {
        v31 = v27;
        v32 = v28;
        do
        {
          *v31++ = *(v26 + 16 * v32--);
        }

        while (v32 != -1);
        ++v24;
        v27 = (v27 + v29);
        v26 += v30;
      }

      while (v24 != v5);
    }
  }

  else if (*(this + 417))
  {
    v16 = *(a2 + 1);
    v17 = *(a2 + 3) - v16;
    if (v17 >= 1)
    {
      v18 = *(a2 + 2);
      v19 = *(a2 + 22);
      v20 = 16 * (*(a2 + 2) - *a2);
      v21 = (*(a2 + 10) + 16 * v19 * (v17 - 1) + 16 * (*(a2 + 52) - *a2 + (*(a2 + 53) - v16) * v19));
      v22 = -16 * v19;
      v23 = 16 * *(a2 + 6);
      do
      {
        memcpy(v18, v21, v20);
        v21 += v22;
        v18 += v23;
        --v17;
      }

      while (v17);
    }
  }

  return 0;
}

uint64_t HGPool::BasePool::BasePool(uint64_t this)
{
  *this = &unk_287223790;
  *(this + 8) = 0;
  *(this + 10) = atomic_fetch_add(HGPool::BasePool::BasePool(void)::poolCounter, 1u) + 1;
  return this;
}

void HGPool::registerPool(HGPool *this, HGPool::BasePool *a2)
{
  v4 = this;
  if (atomic_load_explicit(&_MergedGlobals_23, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&_MergedGlobals_23, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<HGPool::registerPool(HGPool::BasePool *)::$_0 &&>>);
  }

  v2 = qword_280C5E4A0;
  std::mutex::lock((qword_280C5E4A0 + 24));
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](qword_280C5E4A0, &v4);
  std::mutex::unlock((v2 + 24));
}

void sub_25FD06FD4(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 24));
  _Unwind_Resume(a1);
}

void HGPool::unregisterPool(HGPool *this, HGPool::BasePool *a2)
{
  v3 = qword_280C5E4A0;
  std::mutex::lock((qword_280C5E4A0 + 24));
  v4 = qword_280C5E4A0;
  v6 = *qword_280C5E4A0;
  v5 = *(qword_280C5E4A0 + 8);
  if (*qword_280C5E4A0 != v5)
  {
    v7 = *qword_280C5E4A0;
    while (*v7 != this)
    {
      ++v7;
      v6 += 8;
      if (v7 == v5)
      {
        v6 = *(qword_280C5E4A0 + 8);
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v8 = v5 - v6 - 8;
    if (v5 != (v6 + 8))
    {
      memmove(v6, (v6 + 8), v5 - v6 - 8);
    }

    *(v4 + 8) = &v8[v6];
  }

  std::mutex::unlock((v3 + 24));
}

void sub_25FD071D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 24));
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

unint64_t HGPool::TotalUsageServicingPolicy::maxObjectsCount(HGPool::TotalUsageServicingPolicy *this, const HGPool::BasePool *a2)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 56))(this, a2);
  v6 = (*(*a2 + 16))(a2);
  v7 = v5 - v6;
  if (v5 < v6)
  {
    v7 = 0;
  }

  if (v4 >= v7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

unint64_t HGPool::TotalUsageServicingPolicy::maxBytesUsage(HGPool::TotalUsageServicingPolicy *this, const HGPool::BasePool *a2)
{
  v4 = (*(*this + 48))(this);
  v5 = (*(*this + 64))(this, a2);
  v6 = (*(*a2 + 24))(a2);
  v7 = v5 - v6;
  if (v5 < v6)
  {
    v7 = 0;
  }

  if (v4 >= v7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

unint64_t HGPool::GroupServicingPolicy::_maxValue<(HGPool::GroupServicingPolicy::PolicyType)0>(uint64_t a1, unint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v7 = (*(*a2 + 32))(a2);
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = (a1 + 16);
  do
  {
    v11 = v8[4];
    v30 = v11 >= a2;
    v12 = v11 < a2;
    if (v30)
    {
      v10 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v10 == v9 || v10[4] > a2)
  {
LABEL_9:
    v10 = (a1 + 16);
  }

  v13 = v10[5];
  if (!v13 || (result = (*(*v13 + 16))(v13, a2), v7 <= result))
  {
    v31 = v4;
    v32 = a1;
    v15 = *(a1 + 8);
    if (v15 != v9)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *(v15 + 2);
        v19 = v15[6];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = v18;
        if (v18 != a2)
        {
          v21 = (*(*v18 + 32))(v18);
          v22 = (*(*v20 + 16))(v20);
          v16 += v21;
          v17 += v22 + (*(*v20 + 32))(v20);
        }

        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
          v23 = v15[1];
          if (!v23)
          {
            do
            {
LABEL_25:
              v24 = v15[2];
              v25 = *v24 == v15;
              v15 = v24;
            }

            while (!v25);
            goto LABEL_14;
          }
        }

        else
        {
          v23 = v15[1];
          if (!v23)
          {
            goto LABEL_25;
          }
        }

        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
LABEL_14:
        v15 = v24;
        if (v24 == v9)
        {
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
    v16 = 0;
LABEL_29:
    v26 = atomic_load(HGLogger::_enabled);
    if (v26)
    {
      HGLogger::log("sp", 1, "total other objects : free=%zu, total=%zu\n", v5, v6, v16, v17);
    }

    v27 = v17 + v31;
    v28 = (*(*v32 + 56))(v32, a2);
    v29 = (*(*v32 + 40))(v32, a2);
    v30 = v29 >= v16 && v28 >= v27;
    if (v30)
    {
      if (v29 - v16 >= v28 - v27)
      {
        return v28 - v27;
      }

      else
      {
        return v29 - v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_25FD076D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<HGPool::BasePool const* const,std::shared_ptr<HGPool::ServicingPolicy>>::~pair(va);
  _Unwind_Resume(a1);
}

unint64_t HGPool::GroupServicingPolicy::_maxValue<(HGPool::GroupServicingPolicy::PolicyType)1>(uint64_t a1, unint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  v7 = (*(*a2 + 40))(a2);
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = (a1 + 16);
  do
  {
    v11 = v8[4];
    v30 = v11 >= a2;
    v12 = v11 < a2;
    if (v30)
    {
      v10 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v10 == v9 || v10[4] > a2)
  {
LABEL_9:
    v10 = (a1 + 16);
  }

  v13 = v10[5];
  if (!v13 || (result = (*(*v13 + 24))(v13, a2), v7 <= result))
  {
    v31 = v4;
    v32 = a1;
    v15 = *(a1 + 8);
    if (v15 != v9)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *(v15 + 2);
        v19 = v15[6];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = v18;
        if (v18 != a2)
        {
          v21 = (*(*v18 + 40))(v18);
          v22 = (*(*v20 + 24))(v20);
          v16 += v21;
          v17 += v22 + (*(*v20 + 40))(v20);
        }

        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
          v23 = v15[1];
          if (!v23)
          {
            do
            {
LABEL_25:
              v24 = v15[2];
              v25 = *v24 == v15;
              v15 = v24;
            }

            while (!v25);
            goto LABEL_14;
          }
        }

        else
        {
          v23 = v15[1];
          if (!v23)
          {
            goto LABEL_25;
          }
        }

        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
LABEL_14:
        v15 = v24;
        if (v24 == v9)
        {
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
    v16 = 0;
LABEL_29:
    v26 = atomic_load(HGLogger::_enabled);
    if (v26)
    {
      HGLogger::log("sp", 1, "total other objects : free=%zu, total=%zu\n", v5, v6, v16, v17);
    }

    v27 = v17 + v31;
    v28 = (*(*v32 + 64))(v32, a2);
    v29 = (*(*v32 + 48))(v32, a2);
    v30 = v29 >= v16 && v28 >= v27;
    if (v30)
    {
      if (v29 - v16 >= v28 - v27)
      {
        return v28 - v27;
      }

      else
      {
        return v29 - v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_25FD07A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<HGPool::BasePool const* const,std::shared_ptr<HGPool::ServicingPolicy>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t HGPool::GroupServicingPolicy::maxObjectAgeNS(HGPool::GroupServicingPolicy *this, const HGPool::BasePool *a2)
{
  v4 = *(this + 2);
  v2 = this + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 4) > a2)
  {
LABEL_9:
    v5 = v2;
  }

  v9 = *(v5 + 5);
  if (v9)
  {
    return (*(*v9 + 32))(v9, a2);
  }

  else
  {
    return -1;
  }
}

void HGPool::GroupServicingPolicy::addPool(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v4[6];
  v4[5] = v7;
  v4[6] = v6;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void HGPool::GroupServicingPolicy::~GroupServicingPolicy(HGPool::GroupServicingPolicy *this)
{
  *this = &unk_287223818;
  std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_287223818;
  std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x2666E9F00);
}

uint64_t std::pair<HGPool::BasePool const* const,std::shared_ptr<HGPool::ServicingPolicy>>::~pair(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void anonymous namespace::poolsObserverThreadFunction(_anonymous_namespace_ *this)
{
  v1 = pthread_setname_np("com.apple.helium-pools");
  while (1)
  {
    if (qword_280C5E4A0)
    {
      HGTraceGuard::HGTraceGuard(&__ns, "hgpool", 2, "HGPool::logAllPools");
      v2 = qword_280C5E4A0;
      std::mutex::lock((qword_280C5E4A0 + 24));
      v3 = *qword_280C5E4A0;
      v4 = *(qword_280C5E4A0 + 8);
      while (v3 != v4)
      {
        v5 = *v3;
        if ((*(**v3 + 88))(*v3))
        {
          (*(*v5 + 64))(v5);
        }

        ++v3;
      }

      std::mutex::unlock((v2 + 24));
      HGTraceGuard::~HGTraceGuard(&__ns);
    }

    HGPool::traceAllPools(v1);
    if (qword_280C5E4A0)
    {
      HGTraceGuard::HGTraceGuard(&__ns, "hgpool", 1, "HGPool::serviceAllPools");
      v6 = qword_280C5E4A0;
      std::mutex::lock((qword_280C5E4A0 + 24));
      v8 = *qword_280C5E4A0;
      v7 = *(qword_280C5E4A0 + 8);
      while (v8 != v7)
      {
        v9 = *v8;
        if ((*(**v8 + 72))(*v8))
        {
          v12 = atomic_load(HGLogger::_enabled);
          if (v12)
          {
            HGLogger::log("hgpool", 1, "service pool (%p)\n", v10, v11, v9);
          }

          (*(*v9 + 48))(v9);
        }

        ++v8;
      }

      std::mutex::unlock((v6 + 24));
      HGTraceGuard::~HGTraceGuard(&__ns);
    }

    if (v13)
    {
      __ns.__rep_ = 1000000000 * v13;
      std::this_thread::sleep_for (&__ns);
    }
  }
}

void sub_25FD07FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FD07FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FD08000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 24));
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FD080D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FD08100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  v4 = pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(v4);
  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    v6 = MEMORY[0x2666E9C00]();
    MEMORY[0x2666E9F00](v6, 0x20C4093837F09);
  }

  MEMORY[0x2666E9F00](a1, 0xA0C40AFF93C70);
  return 0;
}

void sub_25FD081A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void)>>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x2666E9C00]();
      MEMORY[0x2666E9F00](v4, 0x20C4093837F09);
    }

    MEMORY[0x2666E9F00](v1, 0xA0C40AFF93C70);
    return v2;
  }

  return result;
}

void *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x2666E9C00]();
    MEMORY[0x2666E9F00](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

BOOL HGMath::IsEqualWithinTolerance(float32x4_t a1, float32x4_t a2, int32x2_t a3)
{
  v3 = vmvnq_s8(vcgtq_f32(vdupq_lane_s32(a3, 0), vabdq_f32(a1, a2)));
  *v3.i8 = vpmin_s32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  return vpmin_s32(*v3.i8, *v3.i8).u32[0] == 0;
}

_DWORD *HGGLBlendingInfo::HGGLBlendingInfo(_DWORD *result, unsigned int *a2)
{
  v2 = a2[2];
  if (v2 > 0xC)
  {
    *result = 1;
    v3 = a2[3];
    if (v3 > 0xC)
    {
LABEL_3:
      result[1] = 1;
      v4 = a2[4];
      if (v4 > 0xC)
      {
        goto LABEL_4;
      }

LABEL_8:
      result[2] = dword_260817570[v4];
      v5 = a2[5];
      if (v5 > 0xC)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *result = dword_260817570[v2];
    v3 = a2[3];
    if (v3 > 0xC)
    {
      goto LABEL_3;
    }
  }

  result[1] = dword_260817570[v3];
  v4 = a2[4];
  if (v4 <= 0xC)
  {
    goto LABEL_8;
  }

LABEL_4:
  result[2] = 1;
  v5 = a2[5];
  if (v5 > 0xC)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v6 = dword_260817570[v5];
LABEL_10:
  result[3] = v6;
  v7 = a2[6] - 1;
  if (v7 > 3)
  {
    result[4] = 32774;
    v8 = a2[7] - 1;
    if (v8 > 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result[4] = dword_2608175B0[v7];
    v8 = a2[7] - 1;
    if (v8 > 3)
    {
LABEL_12:
      result[5] = 32774;
      return result;
    }
  }

  result[5] = dword_2608175B0[v8];
  return result;
}

void HGOverwrite::HGOverwrite(HGOverwrite *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287223888;
  HGNode::SetFlags(v2, 0xFFFFFFFFLL, 1);
  *(this + 4) |= 0x600u;
}

void HGOverwrite::~HGOverwrite(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

char *HGOverwrite::RenderPage(HGOverwrite *this, HGPage *a2)
{
  v4 = *a2;
  v5 = (*(*this + 112))(this);
  Buffer = *(a2 + 1);
  if (Buffer)
  {
    (*(*Buffer + 16))(*(a2 + 1));
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(v4, *(a2 + 1), *(a2 + 8), 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
    *(a2 + 1) = Buffer;
  }

  (*(*v4 + 144))(v4, Buffer);
  v23 = a2;
  HGGPURenderer::Clear(v4, *(a2 + 1), v7, v8);
  if (v5 >= 1)
  {
    v9 = 0;
    v10 = v5;
    v11 = (a2 + 44);
    do
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      Input = HGRenderer::GetInput(v4, this, v9);
      if (HGRectIsNull(v13, v14) || Input == 0)
      {
        goto LABEL_7;
      }

      *&v26.var0 = v13;
      *&v26.var2 = v14;
      NodeBitmap = HGGPURenderer::GetNodeBitmap(v4, Input, v26, Buffer, 1u);
      v18 = NodeBitmap;
      if (NodeBitmap)
      {
        v19 = NodeBitmap == Buffer;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        (*(*v4 + 144))(v4, Buffer);
        if (!v18)
        {
          HGGPURenderer::Clear(v4, v23[1], v20, v21);
          goto LABEL_7;
        }
      }

      else
      {
        *&v24.var0 = v13;
        *&v24.var2 = v14;
        v12 = HGGPURenderer::ConvertToGLTexture(v4, v24, NodeBitmap);
        (*(*v4 + 144))(v4, Buffer);
        (*(*v4 + 152))(v4, 0, v12, 0, 0);
        *&v25.var0 = v13;
        *&v25.var2 = v14;
        HGGPURenderer::Rect(v4, v25);
        (*(*v12 + 24))(v12);
      }

      (*(*v18 + 24))(v18);
LABEL_7:
      v11 += 2;
      ++v9;
    }

    while (v10 != v9);
  }

  (*(*v4 + 152))(v4, 0, 0, 0, 0);
  return Buffer;
}

char *HGOverwrite::RenderPageMetal(HGOverwrite *this, HGPage *a2)
{
  v4 = *a2;
  v5 = (*(*this + 112))(this);
  (*(*v4 + 144))(v4, 0);
  Buffer = *(a2 + 1);
  if (Buffer)
  {
    (*(*Buffer + 16))(*(a2 + 1));
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(v4, *(a2 + 1), *(a2 + 8), 1, (*(this + 4) >> 12) & 1, *(a2 + 248));
    *(a2 + 1) = Buffer;
  }

  v21 = a2;
  HGGPURenderer::ClearMetal(v4, Buffer, *(a2 + 1), v7);
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = v5;
    v10 = (a2 + 44);
    do
    {
      v13 = *(v10 - 1);
      v14 = *v10;
      Input = HGRenderer::GetInput(v4, this, v8);
      if (!HGRectIsNull(v13, v14) && Input != 0)
      {
        *&v24.var0 = v13;
        *&v24.var2 = v14;
        NodeBitmap = HGGPURenderer::GetNodeBitmap(v4, Input, v24, Buffer, 1u);
        if (NodeBitmap)
        {
          v19 = NodeBitmap == Buffer;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          if (NodeBitmap)
          {
            (*(*NodeBitmap + 24))(NodeBitmap);
          }

          else
          {
            HGGPURenderer::ClearMetal(v4, Buffer, v21[1], v18);
          }
        }

        else
        {
          v11 = NodeBitmap;
          *&v22.var0 = v13;
          *&v22.var2 = v14;
          v12 = HGGPURenderer::ConvertToMetalTexture(v4, v22, NodeBitmap);
          *&v23.var0 = v13;
          *&v23.var2 = v14;
          HGGPURenderer::CopyMetal(v4, Buffer, v23, v12);
          (*(*v12 + 24))(v12);
          (*(*v11 + 24))(v11);
        }
      }

      v10 += 2;
      ++v8;
    }

    while (v9 != v8);
  }

  return Buffer;
}

uint64_t HGOverwrite::RenderTile(HGNode *this, HGTile *a2)
{
  v3 = *(*(a2 + 42) + 152);
  v4 = *a2;
  v5 = *(a2 + 1);
  v35 = HIDWORD(*a2);
  v6 = (*(*this + 112))(this);
  v7 = v6;
  v8 = v6;
  if (v6 < 1)
  {
    goto LABEL_8;
  }

  v37 = v6;
  v9 = 0;
  v10 = 0;
  v11 = (a2 + 216);
  v39 = 1;
  do
  {
    if (HGRenderer::GetInput(v3, this, v9))
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = HGRectIntersection(v12, *v11, v4, v5);
      if (!HGRectIsNull(v14, v15))
      {
        v39 = 0;
        v10 |= HGRectIsEqual(v12, v13, v4, v5);
      }
    }

    ++v9;
    v11 += 2;
  }

  while (v8 != v9);
  v16 = v39 | ~v10;
  v7 = v37;
  if (v16)
  {
LABEL_8:
    bzero(*(a2 + 2), 16 * *(a2 + 6) * (HIDWORD(v5) - v35));
  }

  v38 = v5;
  v40 = v4;
  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      if (HGRenderer::GetInput(v3, this, v17))
      {
        v18 = HGRectIntersection(*(a2 + 2 * v17 + 26), *(a2 + 2 * v17 + 27), v40, v38);
        v20 = v19;
        if (!HGRectIsNull(v18, v19))
        {
          v21 = HIDWORD(v20) - HIDWORD(v18);
          if (HIDWORD(v20) - HIDWORD(v18) >= 1)
          {
            v22 = v18 - v40;
            v23 = a2 + 16 * v17 + 80;
            v24 = *v23;
            v25 = *(v23 + 2);
            v26 = HIDWORD(v18) - v35;
            v27 = *(a2 + 6);
            v28 = 16 * (v20 - v18);
            v29 = 16 * v22;
            v30 = (v24 + v29 + 16 * v25 * v26);
            v31 = 16 * v25;
            v32 = (*(a2 + 2) + v29 + 16 * v27 * v26);
            v33 = 16 * v27;
            do
            {
              memcpy(v32, v30, v28);
              v30 += v31;
              v32 += v33;
              --v21;
            }

            while (v21);
          }
        }
      }

      ++v17;
    }

    while (v17 != v8);
  }

  return 0;
}

uint64_t HGOverwrite::GetDOD(HGOverwrite *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 8)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HGOverwrite::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v12 = HGRectIntersection(DOD, v11, v5, v4);
  v14 = v13;
  v15 = (*(*this + 112))(this);
  v16 = a3 + 1;
  if (v16 < v15)
  {
    v17 = v15;
    do
    {
      if (HGRectIsNull(v12, v14))
      {
        break;
      }

      v18 = HGRenderer::GetInput(a2, this, v16);
      if (v18)
      {
        v19 = HGRenderer::GetDOD(a2, v18);
        if (HGRectContainsRect(v19, v20, v12, v14))
        {
          v12 = 0;
          v14 = 0;
        }
      }

      ++v16;
    }

    while (v17 != v16);
  }

  return v12;
}

void HGPremultiply::HGPremultiply(HGPremultiply *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287223AF0;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcPremultiply::HgcPremultiply(v2);
}

void sub_25FD08D90(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPremultiply::~HGPremultiply(HGPremultiply *this)
{
  *this = &unk_287223AF0;
  (*(**(this + 51) + 24))(*(this + 51));

  HGNode::~HGNode(this);
}

{
  *this = &unk_287223AF0;
  (*(**(this + 51) + 24))(*(this + 51));
  HGNode::~HGNode(this);

  HGObject::operator delete(v2);
}

uint64_t HGPremultiply::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(**(this + 51) + 120))(*(this + 51), 0, Input);
  return *(this + 51);
}

void HGUnpremultiply::HGUnpremultiply(HGUnpremultiply *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287223D40;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcUnpremultiply::HgcUnpremultiply(v2);
}

void sub_25FD08F80(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGUnpremultiply::~HGUnpremultiply(HGUnpremultiply *this)
{
  *this = &unk_287223D40;
  (*(**(this + 51) + 24))(*(this + 51));

  HGNode::~HGNode(this);
}

{
  *this = &unk_287223D40;
  (*(**(this + 51) + 24))(*(this + 51));
  HGNode::~HGNode(this);

  HGObject::operator delete(v2);
}

uint64_t HGUnpremultiply::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(**(this + 51) + 120))(*(this + 51), 0, Input);
  return *(this + 51);
}

void HGPremultiplyWhiteToBlack::HGPremultiplyWhiteToBlack(HGPremultiplyWhiteToBlack *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287223F90;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcPremultiplyWhiteToBlack::HgcPremultiplyWhiteToBlack(v2);
}

void sub_25FD09170(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPremultiplyWhiteToBlack::~HGPremultiplyWhiteToBlack(HGPremultiplyWhiteToBlack *this)
{
  *this = &unk_287223F90;
  (*(**(this + 51) + 24))(*(this + 51));

  HGNode::~HGNode(this);
}

{
  *this = &unk_287223F90;
  (*(**(this + 51) + 24))(*(this + 51));
  HGNode::~HGNode(this);

  HGObject::operator delete(v2);
}

uint64_t HGPremultiplyWhiteToBlack::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(**(this + 51) + 120))(*(this + 51), 0, Input);
  return *(this + 51);
}

HGBitmap *HGTW::_setupSamplerWrappedBuffer(uint64_t a1, HGBitmapLoader *this, HGRect *a3, int a4, int a5, const HGEdgePolicy *a6)
{
  if (*(this + 3) == 1112363084 && (v11 = a5, IsBitmapPadded = HGBitmapLoader::IsBitmapPadded(this, this), a5 = v11, !IsBitmapPadded))
  {
    Buffer = 0;
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(*a1, *a3, *(a1 + 32), a5, a4, 0);
  }

  NodeBitmap = HGGPURenderer::GetNodeBitmap(*a1, this, *a3, Buffer, 0);
  if (Buffer)
  {
    (*(*Buffer + 24))(Buffer);
  }

  v15 = *(NodeBitmap + 3);
  if ((v15 & 0x10) == 0)
  {
    v16 = HGObject::operator new(0x80uLL);
    HGBuffer::HGBuffer(v16, *(NodeBitmap + 20), NodeBitmap);
LABEL_14:
    (*(*NodeBitmap + 24))(NodeBitmap);
    NodeBitmap = v16;
    goto LABEL_15;
  }

  if ((v15 & 0x200) != 0)
  {
    v16 = HGObject::operator new(0xC8uLL);
    HGGLTexture::HGGLTexture(v16, *(NodeBitmap + 20), *(NodeBitmap + 28), *(NodeBitmap + 4), *a1, *(NodeBitmap + 40), *(NodeBitmap + 21), 1);
    goto LABEL_13;
  }

  if ((v15 & 0x100) != 0)
  {
    v16 = HGObject::operator new(0xB8uLL);
    HGGLBuffer::HGGLBuffer(v16, *(NodeBitmap + 20), *(NodeBitmap + 28), *(NodeBitmap + 4), *a1, *(NodeBitmap + 38), *(NodeBitmap + 39), 1);
LABEL_13:
    HGBitmap::SetStorage(v16, NodeBitmap);
    goto LABEL_14;
  }

LABEL_15:
  HGBitmap::SetEdgePolicy(NodeBitmap, a6);
  return NodeBitmap;
}

void HGTW::HGTextureWrapClampToEdge::~HGTextureWrapClampToEdge(HGTW::HGTextureWrapClampToEdge *this)
{
  HgcTextureWrapClampToEdge::~HgcTextureWrapClampToEdge(this);

  HGObject::operator delete(v1);
}

uint64_t HGTW::HGTextureWrapClampToEdge::SetParameter@<X0>(HGTW::HGTextureWrapClampToEdge *this@<X0>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, int a6@<W1>, uint64_t a7@<X8>)
{
  if (a6 == 1)
  {
    result = 0;
    *(this + 432) = vcvtms_s32_f32(a2) != 0;
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    v8 = HGRectMake4f(a7, a2, a3, a4, a5);
    v10 = v9;
    if (HGRectIsEqual(v8, v9, *(this + 52), *(this + 53)))
    {
      return 0;
    }

    else
    {
      *(this + 52) = v8;
      *(this + 53) = v10;
      return 1;
    }
  }

  return result;
}

uint64_t HGTW::HGTextureWrapClampToEdge::GetDOD(HGTW::HGTextureWrapClampToEdge *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectNull;
  if (a3)
  {
    return 0;
  }

  *(this + 436) = a4;
  if (!HGRectIsNull(*&a4.var0, *&a4.var2))
  {
    v4 = (this + 416);
  }

  return *v4;
}

uint64_t HGTW::HGTextureWrapClampToEdge::GetROI(HGTW::HGTextureWrapClampToEdge *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v10 = HGRectNull;
    return HGRectNull;
  }

  else
  {
    v5 = vmax_s32(vadd_s32(*(this + 436), 0x200000002), *&a4.var2);
    v6 = *(this + 444);
    *&v10 = vmin_s32(*&a4.var0, vadd_s32(v6, 0x100000001));
    *(&v10 + 1) = v5;
    *&v11.var0 = *(this + 436);
    *&v11.var2 = v6;
    HGRect::Intersection(&v10, v11);
    v7 = HGRectMake4i(0xFFFFFFFE, 0xFFFFFFFE, 2u, 2u);
    v9 = v8;
    *&v12.var0 = v7;
    *&v12.var2 = v9;
    HGRect::Grow(&v10, v12);
    return v10;
  }
}

HGBitmap *HGTW::HGTextureWrapClampToEdge::_renderPage(HGNode *a1, uint64_t a2, int a3)
{
  Input = HGRenderer::GetInput(*a2, a1, 0);
  DOD = HGRenderer::GetDOD(*a2, Input);
  *&v16.var0 = HGRectIntersection(DOD, v8, *(a2 + 16), *(a2 + 24));
  *&v16.var2 = v9;
  IsNull = HGRectIsNull(*&v16.var0, v9);
  IsInfinite = HGRectIsInfinite(*(a1 + 52), *(a1 + 53));
  v12 = 0;
  if (IsInfinite)
  {
    if (IsNull)
    {
LABEL_9:
      if (a3)
      {

        return HGNode::RenderPageMetal(a1, a2);
      }

      else
      {

        return HGNode::RenderPage(a1, a2);
      }
    }
  }

  else
  {
    v12 = *(a1 + 432) ^ 1;
    if (IsNull)
    {
      goto LABEL_9;
    }
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = 1;
  HGEdgePolicy::HGEdgePolicy(v15, 1);
  if ((*(Input + 17) & 0x10) == 0)
  {
    v13 = (*(a1 + 17) >> 4) & 1;
  }

  return HGTW::_setupSamplerWrappedBuffer(a2, Input, &v16, v13, a3, v15);
}

uint64_t HGTW::HGTextureWrapClampToEdge::RenderTile(HGNode *this, HGTile *a2)
{
  v4 = *(*(a2 + 42) + 152);
  Input = HGRenderer::GetInput(v4, this, 0);
  DOD = HGRenderer::GetDOD(v4, Input);
  if (HGRectContainsRect(DOD, v7, *a2, *(a2 + 1)))
  {
    v8 = *(a2 + 3) - *(a2 + 1);
    if (v8 >= 1 && *(a2 + 2) - *a2 >= 1)
    {
      v9 = 0;
      v10 = *(a2 + 10);
      v11 = 16 * *(a2 + 22);
      v12 = *(a2 + 2);
      v13 = 16 * *(a2 + 6);
      v14 = 16 * (*(a2 + 2) - *a2);
      do
      {
        v15 = 0;
        do
        {
          *(v12 + v15) = *(v10 + v15);
          v15 += 16;
        }

        while (v14 != v15);
        ++v9;
        v10 += v11;
        v12 += v13;
      }

      while (v9 != v8);
    }

    return 0;
  }

  else
  {

    return HgcTextureWrapClampToEdge::RenderTile(this, a2);
  }
}

void HGTW::HGTextureWrapClampToColor::~HGTextureWrapClampToColor(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGTW::HGTextureWrapClampToColor::SetParameter(HGTW::HGTextureWrapClampToColor *this, int a2, float a3, float a4, float a5, float a6, char *a7)
{
  HGNode::SetParameter(this, a2, a3, a4, a5, a6, a7);
  if (a2 == 2)
  {
    result = 0;
    *&v14 = __PAIR64__(LODWORD(a4), LODWORD(a3));
    *(&v14 + 1) = __PAIR64__(LODWORD(a6), LODWORD(a5));
    *(this + 27) = v14;
  }

  else if (a2 == 1)
  {
    result = 0;
    *(this + 448) = vcvtms_s32_f32(a3) != 0;
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v10 = HGRectMake4f(v9, a3, a4, a5, a6);
    v12 = v11;
    if (HGRectIsEqual(v10, v11, *(this + 51), *(this + 52)))
    {
      return 0;
    }

    else
    {
      *(this + 51) = v10;
      *(this + 52) = v12;
      return 1;
    }
  }

  return result;
}

uint64_t HGTW::HGTextureWrapClampToColor::GetDOD(HGTW::HGTextureWrapClampToColor *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectNull;
  if (a3)
  {
    return 0;
  }

  if (!HGRectIsNull(*&a4.var0, *&a4.var2))
  {
    v4 = (this + 408);
  }

  return *v4;
}

uint64_t HGTW::HGTextureWrapClampToColor::GetROI(HGTW::HGTextureWrapClampToColor *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

HGBitmap *HGTW::HGTextureWrapClampToColor::_renderPage(HGNode *a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 108) == 0.0 && *(a1 + 109) == 0.0 && *(a1 + 110) == 0.0 && *(a1 + 111) == 0.0;
  v7 = *a2;
  Input = HGRenderer::GetInput(*a2, a1, 0);
  DOD = HGRenderer::GetDOD(v7, Input);
  v11 = v10;
  *&v32.var0 = HGRectIntersection(DOD, v10, *(a2 + 16), *(a2 + 24));
  *&v32.var2 = v12;
  IsNull = HGRectIsNull(*&v32.var0, v12);
  v14 = 0;
  if (HGRectIsInfinite(*(a1 + 51), *(a1 + 52)))
  {
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *(a1 + 448) ^ 1;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  MetalContext = HGGPURenderer::GetMetalContext(v7);
  if (MetalContext && !(IsNull | ((*(PCICCTransferFunctionLUT::getLUTEnd(MetalContext) + 56) & v6 & 1) == 0) | v14 & 1))
  {
    HGEdgePolicy::HGEdgePolicy(__str, 0);
    v34 = *(*(a1 + 6) + 32);
    if ((*(Input + 17) & 0x10) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = (*(a1 + 17) >> 4) & 1;
    }

    return HGTW::_setupSamplerWrappedBuffer(a2, Input, &v32, v21, a3, __str);
  }

LABEL_12:
  if (!HGRectContainsRect(DOD, v11, *(a2 + 16), *(a2 + 24)))
  {
    v19 = (*(*a1 + 48))(a1);
    snprintf(__str, 0x100uLL, "%s::_renderPage( [%d %d %d %d])", v19, *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 28));
    HGTraceGuard::HGTraceGuard(v31, "gpu", 1, __str);
    Buffer = *(a2 + 8);
    if (Buffer)
    {
      (*(*Buffer + 16))(*(a2 + 8));
    }

    else
    {
      Buffer = HGGPURenderer::CreateBuffer(v7, *(a2 + 16), *(a2 + 32), a3, (*(a1 + 4) >> 12) & 1, *(a2 + 248));
    }

    v22 = HGRectIntersection(*(a2 + 16), *(a2 + 24), *(a2 + 36), *(a2 + 44));
    if (HGRectIsNull(v22, v23))
    {
      if (a3)
      {
        HGGPURenderer::ClearMetal(v7, Buffer, *(a2 + 16), a1 + 108);
      }

      else
      {
        (*(*v7 + 144))(v7, Buffer);
        HGGPURenderer::Clear(v7, *(a2 + 16), a1 + 108, v24);
      }

LABEL_37:
      HGTraceGuard::~HGTraceGuard(v31);
      return Buffer;
    }

    if (*(a2 + 168))
    {
      if (!a3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v25 = *(a2 + 36);
      if (!a3)
      {
        *(a2 + 168) = HGGPURenderer::GetNodeTexture(v7, Input, v25, 0, 1u);
LABEL_34:
        (*(*v7 + 144))(v7, Buffer);
        HGGPURenderer::Clear(v7, *(a2 + 16), a1 + 108, v28);
        (*(*v7 + 152))(v7, 0, *(a2 + 168), 0, 0);
        HGGPURenderer::Copy(v7, *(*(a2 + 168) + 20), 0, v29);
LABEL_35:
        v30 = *(a2 + 168);
        if (v30)
        {
          (*(*v30 + 24))(v30);
        }

        goto LABEL_37;
      }

      NodeBitmap = HGGPURenderer::GetNodeBitmap(v7, Input, v25, 0, 1u);
      v27 = HGObject::operator new(0x80uLL);
      *&v37.var0 = *(NodeBitmap + 20);
      *&v37.var2 = *(NodeBitmap + 28);
      HGTexture::HGTexture(v27, v37, NodeBitmap);
      *(a2 + 168) = v27;
      (*(*NodeBitmap + 24))(NodeBitmap);
    }

    HGGPURenderer::ClearMetal(v7, Buffer, *(a2 + 16), a1 + 108);
    HGGPURenderer::CopyMetal(v7, Buffer, *(*(a2 + 168) + 20), *(a2 + 168));
    goto LABEL_35;
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 8);

  return HGGPURenderer::GetNodeBitmap(v7, Input, v16, v17, 1u);
}

void sub_25FD0A000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  HGObject::operator delete(v15);
  HGTraceGuard::~HGTraceGuard(&a15);
  _Unwind_Resume(a1);
}

void sub_25FD0A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FD0A030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FD0A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGTW::HGTextureWrapClampToColor::RenderTile(HGNode *this, HGTile *a2)
{
  if (*(this + 108) != 0.0 || *(this + 109) != 0.0 || *(this + 110) != 0.0 || *(this + 111) != 0.0)
  {
    v4 = *(*(a2 + 42) + 152);
    Input = HGRenderer::GetInput(v4, this, 0);
    DOD = HGRenderer::GetDOD(v4, Input);
    v8 = v7;
    if (!HGRectContainsRect(DOD, v7, *a2, *(a2 + 1)))
    {
      v10 = HGRectIntersection(DOD, v8, *a2, *(a2 + 1));
      if (HGRectIsNull(v10, v11))
      {
        v12 = *(a2 + 3) - *(a2 + 1);
        if (v12 >= 1 && *(a2 + 2) - *a2 >= 1)
        {
          v13 = 0;
          v14 = *(this + 27);
          v15 = *(a2 + 2);
          v16 = 16 * (*(a2 + 2) - *a2);
          v17 = 16 * *(a2 + 6);
          do
          {
            v18 = 0;
            do
            {
              *(v15 + v18) = v14;
              v18 += 16;
            }

            while (v16 != v18);
            ++v13;
            v15 += v17;
          }

          while (v13 != v12);
        }
      }

      else
      {
        v19 = HIDWORD(DOD);
        v20 = *a2;
        v21 = *(a2 + 1);
        if (v21 < SHIDWORD(DOD))
        {
          if (*(a2 + 3) < SHIDWORD(DOD))
          {
            LODWORD(v19) = *(a2 + 3);
          }

          v22 = v19 - v21;
          if (v22 >= 1)
          {
            v23 = *(a2 + 2) - v20;
            if (v23 >= 1)
            {
              v24 = 0;
              v25 = *(a2 + 2);
              v26 = *(this + 27);
              v27 = 16 * v23;
              v28 = 16 * *(a2 + 6);
              do
              {
                v29 = 0;
                do
                {
                  *(v25 + v29) = v26;
                  v29 += 16;
                }

                while (v27 != v29);
                ++v24;
                v25 += v28;
              }

              while (v24 != v22);
              v20 = *a2;
            }
          }
        }

        if (v20 < DOD)
        {
          v30 = *(a2 + 2);
          if (v30 >= DOD)
          {
            v30 = DOD;
          }

          v31 = *(a2 + 3) - *(a2 + 1);
          if (v31 >= 1)
          {
            v32 = v30 - v20;
            if (v30 - v20 >= 1)
            {
              v33 = 0;
              v34 = *(a2 + 2);
              v35 = *(this + 27);
              v36 = 16 * v32;
              v37 = 16 * *(a2 + 6);
              do
              {
                v38 = 0;
                do
                {
                  *(v34 + v38) = v35;
                  v38 += 16;
                }

                while (v36 != v38);
                ++v33;
                v34 += v37;
              }

              while (v33 != v31);
            }
          }
        }

        v39 = *(a2 + 2);
        if (v39 > v8)
        {
          v40 = *a2 <= v8 ? v8 : *a2;
          v41 = *(a2 + 3) - *(a2 + 1);
          if (v41 >= 1)
          {
            v42 = v39 - v40;
            if (v39 - v40 >= 1)
            {
              v43 = 0;
              v44 = *(a2 + 2) + 16 * (v40 - *a2);
              v45 = *(this + 27);
              v46 = 16 * v42;
              v47 = 16 * *(a2 + 6);
              do
              {
                v48 = 0;
                do
                {
                  *(v44 + v48) = v45;
                  v48 += 16;
                }

                while (v46 != v48);
                ++v43;
                v44 += v47;
              }

              while (v43 != v41);
            }
          }
        }

        v49 = *(a2 + 3);
        if (v49 > SHIDWORD(v8))
        {
          v50 = *(a2 + 1);
          v51 = v50 <= SHIDWORD(v8) ? HIDWORD(v8) : *(a2 + 1);
          v52 = v49 - v51;
          if (v52 >= 1 && *(a2 + 2) - *a2 >= 1)
          {
            v54 = 0;
            v55 = *(a2 + 6);
            v56 = *(a2 + 2) + 16 * v55 * (v51 - v50);
            v57 = *(this + 27);
            v58 = 16 * (*(a2 + 2) - *a2);
            do
            {
              v59 = 0;
              do
              {
                *(v56 + v59) = v57;
                v59 += 16;
              }

              while (v58 != v59);
              ++v54;
              v56 += 16 * v55;
            }

            while (v54 != v52);
          }
        }
      }
    }
  }

  return 0;
}

void HGTW::HGTextureWrapRepeat::~HGTextureWrapRepeat(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGTW::HGTextureWrapRepeat::SetParameter(HGTW::HGTextureWrapRepeat *this, int a2, float a3, float a4, float a5, float a6, char *a7)
{
  HGNode::SetParameter(this, a2, a3, a4, a5, a6, a7);
  if (a2)
  {
    return 0;
  }

  v14 = HGRectMake4f(v13, a3, a4, a5, a6);
  v16 = v15;
  if (HGRectIsEqual(v14, v15, *(this + 51), *(this + 52)))
  {
    return 0;
  }

  *(this + 51) = v14;
  *(this + 52) = v16;
  return 1;
}

uint64_t HGTW::HGTextureWrapRepeat::GetDOD(HGTW::HGTextureWrapRepeat *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectNull;
  if (a3)
  {
    return 0;
  }

  if (!HGRectIsNull(*&a4.var0, *&a4.var2))
  {
    v4 = (this + 408);
  }

  return *v4;
}

uint64_t HGTW::HGTextureWrapRepeat::GetROI(HGTW::HGTextureWrapRepeat *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  if (*(this + 10) == 1)
  {
    return 0;
  }

  v6 = *&a4.var2;
  v7 = *&a4.var0;
  if (HGRectIsNull(*&a4.var0, *&a4.var2))
  {
    return 0;
  }

  v9 = v6;
  v10 = v7;
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v14 = v13;
  HGTW::HGTextureWrapRepeat::_computeRoiSegments(this, DOD, v13, v10, v9, &v24);
  HGTW::HGTextureWrapRepeat::_computeRoiSegments(this, DOD >> 32, v14 >> 32, v10 >> 32, v9 >> 32, &v22);
  v17 = v24;
  v18 = v24;
  v19 = v25;
  v16 = v22;
  v20 = v22;
  v21 = v23;
  HGTW::HGTextureWrapRepeat::_buildRoiList(this, &v18, 0, &v24);
  v15 = *v24;
  operator delete(v24);
  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
  }

  return v15;
}

void sub_25FD0A5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::vector<HGTW::HGTextureWrapRepeat::Segment>,std::vector<HGTW::HGTextureWrapRepeat::Segment>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_25FD0A5F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 80);
  if (v3)
  {
    *(v1 - 72) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HGTW::HGTextureWrapRepeat::_buildRoiList(uint64_t a1@<X0>, int32x2_t **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  HGTW::HGTextureWrapRepeat::_buildRoiSegments(a1, a2, a3, &v26);
  HGTW::HGTextureWrapRepeat::_buildRoiSegments(a1, a2 + 3, a3, &__p);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v8 = v26;
  v9 = __p;
  v10 = v25;
  if (v26 != v27 && __p != v25)
  {
    v12 = 0;
    v22 = v27;
    do
    {
      v13 = __p;
      if (__p != v10)
      {
        v23 = v8;
        do
        {
          while (1)
          {
            v14 = HGRectMake4i(*v8, *v13, v8[1], v13[1]);
            v16 = a4[2];
            if (v12 >= v16)
            {
              break;
            }

            *v12 = v14;
            *(v12 + 8) = v15;
            v12 += 16;
            a4[1] = v12;
            v13 += 2;
            if (v13 == v10)
            {
              goto LABEL_6;
            }
          }

          v17 = v12;
          v18 = v12 >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            *a4 = 0;
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (v16 >> 3 > v19)
          {
            v19 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            if (!(v20 >> 60))
            {
              operator new();
            }

            *a4 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = (16 * v18);
          *v21 = v14;
          v21[1] = v15;
          v12 = 16 * v18 + 16;
          memcpy(0, 0, v17);
          a4[1] = v12;
          a4[2] = 0;
          v8 = v23;
          a4[1] = v12;
          v13 += 2;
        }

        while (v13 != v10);
      }

LABEL_6:
      *a4 = 0;
      v8 += 2;
    }

    while (v8 != v22);
    v9 = __p;
  }

  if (v9)
  {
    v25 = v9;
    operator delete(v9);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_25FD0A810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::vector<HGTW::HGTextureWrapRepeat::Segment>,std::vector<HGTW::HGTextureWrapRepeat::Segment>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

string_t HGTW::HGTextureWrapRepeat::GetProgram(HGTW::HGTextureWrapRepeat *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) <= 0x60B0F)
  {
    if (*(this + 448) != 1)
    {
      return 0;
    }

    if ((*(*a2 + 128))(a2, 46))
    {
      HGString::sampleRect(0x60310, 0, v14);
    }

    else
    {
      v9 = HGString::sample2d(0x60620, 0, 0, v14);
    }

    v8 = HGString::c_str(v14, v9, v10, v11);
  }

  else
  {
    v4 = (*(*a2 + 128))(a2, 20) == 27;
    v5 = HGString::sample2d(0x60B10, 0, v4, v14);
    v8 = HGString::c_str(v14, v5, v6, v7);
  }

  v13 = v8;
  HGString::~HGString(v14);
  return v13;
}

void sub_25FD0B080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v49 - 128));
  std::vector<HGBinding>::~vector[abi:ne200100]((v49 - 96));
  if (*(v49 - 41) < 0)
  {
    operator delete(*(v49 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t HGTW::HGTextureWrapRepeat::BindTexture(HGTW::HGTextureWrapRepeat *this, HGHandler *a2, int a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  (*(*a2 + 96))(a2, *(this + 110), *(this + 111), 0.0);
  (*(*a2 + 104))(a2, *(this + 108), *(this + 109), 1.0);
  (*(*a2 + 96))(a2, *(this + 106), *(this + 107), 0.0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

HGBitmap *HGTW::HGTextureWrapRepeat::_renderPage(HGNode *a1, uint64_t a2, int a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  Input = HGRenderer::GetInput(*a2, a1, 0);
  DOD = HGRenderer::GetDOD(v6, Input);
  v9 = v8;
  if (HGRectContainsRect(DOD, v8, *(a2 + 16), *(a2 + 24)))
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 8);

    return HGGPURenderer::GetNodeBitmap(v6, Input, v10, v11, 1u);
  }

  v13 = (*(*a1 + 48))(a1);
  snprintf(__str, 0x100uLL, "%s::_renderPage( [%d %d %d %d])", v13, *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 28));
  HGTraceGuard::HGTraceGuard(v42, "gpu", 1, __str);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  HGTW::HGTextureWrapRepeat::_computeRoiSegments(a1, DOD, v9, v14, v15, &v45);
  HGTW::HGTextureWrapRepeat::_computeRoiSegments(a1, DOD >> 32, v9 >> 32, v14 >> 32, v15 >> 32, &v43);
  v34 = v45;
  v38 = v45;
  v39 = v46;
  v33 = v43;
  v40 = v43;
  v41 = v44;
  HGTW::HGTextureWrapRepeat::_buildRoiList(a1, &v38, 1, &v45);
  if (a3 == 1)
  {
    (*(*v6 + 144))(v6, 0);
  }

  v16 = *(a2 + 8);
  v31 = a1;
  if (v16)
  {
    (*(*v16 + 16))(v16);
    Buffer = v16;
    v35 = a3;
    v17 = v45;
    v18 = *(&v45 + 1) - v45;
    if (*(&v45 + 1) == v45)
    {
      goto LABEL_20;
    }

LABEL_11:
    v19 = v18 >> 4;
    v20 = a2 + 168;
    v36 = a2 + 36;
    if (v35)
    {
      v21 = 0;
      v22 = 1;
      do
      {
        if (!*(v20 + 8 * v21))
        {
          v23 = &v17[16 * v21];
          *(v36 + 16 * v21) = *v23;
          NodeBitmap = HGGPURenderer::GetNodeBitmap(v6, Input, *v23, 0, 1u);
          v25 = HGGPURenderer::ConvertToNonGLTexture(v6, NodeBitmap);
          v26 = HGObject::operator new(0x80uLL);
          *&v50.var0 = *(v25 + 20);
          *&v50.var2 = *(v25 + 28);
          HGTexture::HGTexture(v26, v50, v25);
          *(v20 + 8 * v21) = v26;
          (*(*v25 + 24))(v25);
          (*(*NodeBitmap + 24))(NodeBitmap);
        }

        v21 = v22++;
      }

      while (v19 > v21);
    }

    else
    {
      v27 = 0;
      v28 = 1;
      do
      {
        if (!*(v20 + 8 * v27))
        {
          v29 = &v17[16 * v27];
          *(v36 + 16 * v27) = *v29;
          *(v20 + 8 * v27) = HGGPURenderer::GetNodeTexture(v6, Input, *v29, 0, 1u);
        }

        v27 = v28++;
      }

      while (v19 > v27);
    }

    goto LABEL_20;
  }

  Buffer = HGGPURenderer::CreateBuffer(v6, *(a2 + 16), *(a2 + 32), a3, (*(a1 + 4) >> 12) & 1, *(a2 + 248));
  v35 = a3;
  v17 = v45;
  v18 = *(&v45 + 1) - v45;
  if (*(&v45 + 1) != v45)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (v35 == 1)
  {
    v30 = Buffer;
    HGTW::HGTextureWrapRepeat::_renderPageCore_Metal(v31, a2, &v38, &v45, Buffer);
  }

  else
  {
    v30 = Buffer;
    if (!v35)
    {
      HGTW::HGTextureWrapRepeat::_renderPageCore_GL(v31, a2, &v38, &v45, Buffer);
    }
  }

  HGPage::ReleaseTextures(a2);
  if (!v35)
  {
    glFlush();
  }

  if (v17)
  {
    operator delete(v17);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (v34)
  {
    operator delete(v34);
  }

  HGTraceGuard::~HGTraceGuard(v42);
  return v30;
}

void sub_25FD0B808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::pair<std::vector<HGTW::HGTextureWrapRepeat::Segment>,std::vector<HGTW::HGTextureWrapRepeat::Segment>>::~pair(&a25);
  HGTraceGuard::~HGTraceGuard(&a31);
  _Unwind_Resume(a1);
}

uint64_t HGTW::HGTextureWrapRepeat::_renderPageCore_GL(uint64_t a1, HGGPURenderer **a2, void *a3, uint64_t **a4, uint64_t a5)
{
  v8 = *a2;
  result = (*(**a2 + 144))(*a2, a5);
  v10 = *a3;
  v27 = a3[1];
  v28 = a3;
  if (*a3 != v27)
  {
    v31 = a3[4];
    if (a3[3] != v31)
    {
      __asm { FMOV            V8.2S, #1.0 }

      v30 = a4;
      while (1)
      {
        v16 = v28[3];
        if (v16 != v31)
        {
          break;
        }

LABEL_4:
        v10 += 20;
        if (v10 == v27)
        {
          return result;
        }
      }

      v17 = v16 + 16;
      while (1)
      {
        v19 = v17 - 16;
        v20 = HGRectMake4i(*v10, *(v17 - 4), *(v10 + 4), *(v17 - 3));
        v22 = v21;
        v23 = HGRectMake4i(*(v10 + 8), *(v17 - 2), *(v10 + 12), *(v17 - 1));
        v25 = v24;
        result = HGRectContainsRect(**a4, (*a4)[1], v23, v24);
        if (result)
        {
          v26 = 0;
          if (*(a1 + 448) == 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          result = HGRectContainsRect((*a4)[2], (*a4)[3], v23, v25);
          if (result)
          {
            v26 = 1;
            if (*(a1 + 448) == 1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            result = HGRectContainsRect((*a4)[4], (*a4)[5], v23, v25);
            if (result)
            {
              v26 = 2;
              if (*(a1 + 448) == 1)
              {
                goto LABEL_22;
              }
            }

            else
            {
              result = HGRectContainsRect((*a4)[6], (*a4)[7], v23, v25);
              if (result)
              {
                v26 = 3;
              }

              else
              {
                v26 = 0;
              }

              if (*(a1 + 448) == 1)
              {
LABEL_22:
                *(a1 + 432) = _D8;
                *(a1 + 424) = -v20;
                *(a1 + 428) = -HIDWORD(v20);
                *(a1 + 440) = v23;
                *(a1 + 444) = SHIDWORD(v23);
                if ((*(v10 + 16) & 1) == 0)
                {
                  *(a1 + 432) = -1082130432;
                  *(a1 + 440) = v23 + (v25 - v23);
                }

                if ((*v17 & 1) == 0)
                {
                  *(a1 + 436) = -1082130432;
                  *(a1 + 444) = SHIDWORD(v23) + (HIDWORD(v25) - HIDWORD(v23));
                }

                (*(*v8 + 152))(v8, 0, a2[v26 + 21], 0, 0);
                v18 = (*(*v8 + 368))(v8, *(a1 + 64), a1);
                (*(*a1 + 488))(a1, a2, v26, v18);
                *&v32.var0 = v20;
                *&v32.var2 = v22;
                HGGPURenderer::Rect(v8, v18, v32, 1);
                (*(*a1 + 496))(a1, a2, v26, v18);
                result = (*(*v8 + 152))(v8, 0, 0, 0, 0);
              }
            }
          }
        }

        v17 += 20;
        a4 = v30;
        if (v19 + 20 == v31)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return result;
}

void HGTW::HGTextureWrapRepeat::_renderPageCore_Metal(void *a1, void *a2, uint64_t *a3, uint64_t **a4, HGBitmap *a5)
{
  v161 = *MEMORY[0x277D85DE8];
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v156 = 0u;
  v155 = 0u;
  *__p = 0u;
  v154 = 0u;
  v151 = 0u;
  *v152 = 0u;
  *v149 = 0u;
  *v150 = 0u;
  v5 = *a3;
  v127 = a3[1];
  if (*a3 != v127)
  {
    v132 = a3[4];
    if (a3[3] != v132)
    {
      while (1)
      {
        v19 = a3[3];
        if (v19 != v132)
        {
          break;
        }

LABEL_17:
        v5 += 20;
        if (v5 == v127)
        {
          goto LABEL_3;
        }
      }

      v131 = v5;
      while (1)
      {
        v21 = HGRectMake4i(*v5, *v19, *(v5 + 4), *(v19 + 4));
        v23 = v22;
        v24 = HGRectMake4i(*(v5 + 8), *(v19 + 8), *(v5 + 12), *(v19 + 12));
        v26 = v25;
        if (HGRectContainsRect(**a4, (*a4)[1], v24, v25))
        {
          v29 = 0;
        }

        else if (HGRectContainsRect((*a4)[2], (*a4)[3], v24, v26))
        {
          v29 = 1;
        }

        else if (HGRectContainsRect((*a4)[4], (*a4)[5], v24, v26))
        {
          v29 = 2;
        }

        else
        {
          v29 = HGRectContainsRect((*a4)[6], (*a4)[7], v24, v26) ? 3 : 0;
        }

        v30 = v26 & 0xFFFFFFFF00000000 | v24;
        if (*(v5 + 16))
        {
          v30 = v26;
          v31 = v24;
        }

        else
        {
          v31 = v26;
        }

        v137 = v31;
        v32 = *(v19 + 16) ? v30 : v30 | v24 & 0xFFFFFFFF00000000;
        v33 = *(v19 + 16) ? HIDWORD(v24) : HIDWORD(v30);
        v135 = v32;
        v136 = v33;
        v138 = v29;
        v34 = &v155 + 24 * v29;
        *&v27 = v21;
        v35 = SHIDWORD(v21);
        DWORD2(v27) = 0;
        HIDWORD(v27) = 1.0;
        v36 = v27;
        *(&v36 + 1) = SHIDWORD(v21);
        v37 = *(v34 + 1);
        v38 = *(v34 + 2);
        v144 = v27;
        if (v37 >= v38)
        {
          v40 = *v34;
          v41 = v37 - *v34;
          v42 = (v41 >> 4) + 1;
          if (v42 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v38 - v40) >> 3 > v42)
          {
            v42 = (v38 - v40) >> 3;
          }

          if (v38 - v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v43 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          v141 = v35;
          if (v43)
          {
            if (!(v43 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v44 = (16 * (v41 >> 4));
          v38 = 0;
          *v44 = v36;
          v39 = v44 + 1;
          memcpy(0, v40, v41);
          *v34 = 0;
          *(v34 + 1) = v39;
          *(v34 + 2) = 0;
          if (v40)
          {
            operator delete(v40);
          }

          v35 = v141;
          v27 = v144;
        }

        else
        {
          *v37 = v36;
          v39 = v37 + 1;
        }

        *&v28 = v23;
        DWORD2(v28) = 0;
        HIDWORD(v28) = 1.0;
        v139 = v28;
        *(&v28 + 1) = v35;
        v142 = v28;
        if (v39 >= v38)
        {
          v47 = *v34;
          v48 = v39 - *v34;
          v49 = (v48 >> 4) + 1;
          if (v49 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v38 - v47) >> 3 > v49)
          {
            v49 = (v38 - v47) >> 3;
          }

          if (v38 - v47 >= 0x7FFFFFFFFFFFFFF0)
          {
            v50 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v49;
          }

          if (v50)
          {
            if (!(v50 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v51 = (16 * (v48 >> 4));
          v38 = 0;
          *v51 = v28;
          v46 = v51 + 1;
          memcpy(0, v47, v48);
          *v34 = 0;
          *(v34 + 1) = v46;
          *(v34 + 2) = 0;
          if (v47)
          {
            operator delete(v47);
          }

          v28 = v142;
          v27 = v144;
        }

        else
        {
          *v39 = v28;
          v46 = v39 + 1;
        }

        *&v36 = SHIDWORD(v23);
        v134 = v36;
        *(&v27 + 1) = SHIDWORD(v23);
        v145 = v27;
        if (v46 >= v38)
        {
          break;
        }

        *v46 = v27;
        v52 = v46 + 1;
        v53 = *(v34 + 2);
        if (v52 >= v53)
        {
          goto LABEL_84;
        }

        *v52 = v28;
        v54 = v52 + 1;
        v55 = *(v34 + 2);
        if (v54 < v55)
        {
          *v54 = v27;
          v56 = v54 + 1;
          v57 = *(v34 + 2);
          goto LABEL_107;
        }

LABEL_96:
        v68 = *v34;
        v69 = v54 - *v34;
        v70 = (v69 >> 4) + 1;
        if (v70 >> 60)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        if ((v55 - v68) >> 3 > v70)
        {
          v70 = (v55 - v68) >> 3;
        }

        if (v55 - v68 >= 0x7FFFFFFFFFFFFFF0)
        {
          v71 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v70;
        }

        if (v71)
        {
          if (!(v71 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v72 = (16 * (v69 >> 4));
        v57 = 0;
        *v72 = v27;
        v56 = v72 + 1;
        memcpy(0, v68, v69);
        *v34 = 0;
        *(v34 + 1) = v56;
        *(v34 + 2) = 0;
        if (v68)
        {
          operator delete(v68);
        }

LABEL_107:
        v74 = v139;
        DWORD1(v73) = HIDWORD(v134);
        DWORD1(v74) = v134;
        if (v56 >= v57)
        {
          v76 = *v34;
          v77 = v56 - *v34;
          v78 = (v77 >> 4) + 1;
          if (v78 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v57 - v76) >> 3 > v78)
          {
            v78 = (v57 - v76) >> 3;
          }

          if (v57 - v76 >= 0x7FFFFFFFFFFFFFF0)
          {
            v79 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v79 = v78;
          }

          if (v79)
          {
            if (!(v79 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v80 = (16 * (v77 >> 4));
          *v80 = v74;
          v75 = v80 + 1;
          memcpy(0, v76, v77);
          *v34 = 0;
          *(v34 + 2) = 0;
          if (v76)
          {
            operator delete(v76);
          }
        }

        else
        {
          *v56 = v74;
          v75 = v56 + 1;
        }

        *(v34 + 1) = v75;
        v81 = &v149[3 * v138];
        *&v73 = v137;
        v82 = v136;
        DWORD2(v73) = 0;
        HIDWORD(v73) = 1.0;
        v83 = v73;
        *(&v83 + 1) = v136;
        v84 = v81[1];
        v85 = v81[2];
        v146 = v73;
        if (v84 >= v85)
        {
          v87 = *v81;
          v88 = v84 - *v81;
          v89 = (v88 >> 4) + 1;
          if (v89 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v85 - v87) >> 3 > v89)
          {
            v89 = (v85 - v87) >> 3;
          }

          if ((v85 - v87) >= 0x7FFFFFFFFFFFFFF0)
          {
            v90 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v89;
          }

          if (v90)
          {
            if (!(v90 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v91 = (16 * (v88 >> 4));
          v85 = 0;
          *v91 = v83;
          v86 = (v91 + 1);
          memcpy(0, v87, v88);
          *v81 = 0;
          v81[1] = v86;
          v81[2] = 0;
          if (v87)
          {
            operator delete(v87);
          }

          v82 = v136;
          v73 = v146;
        }

        else
        {
          *v84 = v83;
          v86 = v84 + 16;
        }

        *&v28 = v135;
        DWORD2(v28) = 0;
        HIDWORD(v28) = 1.0;
        v140 = v28;
        *(&v28 + 1) = v82;
        v143 = v28;
        if (v86 >= v85)
        {
          v94 = *v81;
          v95 = v86 - *v81;
          v96 = (v95 >> 4) + 1;
          if (v96 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v85 - v94) >> 3 > v96)
          {
            v96 = (v85 - v94) >> 3;
          }

          if ((v85 - v94) >= 0x7FFFFFFFFFFFFFF0)
          {
            v97 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v96;
          }

          if (v97)
          {
            if (!(v97 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v98 = (16 * (v95 >> 4));
          v85 = 0;
          *v98 = v28;
          v93 = (v98 + 1);
          memcpy(0, v94, v95);
          *v81 = 0;
          v81[1] = v93;
          v81[2] = 0;
          if (v94)
          {
            operator delete(v94);
          }

          v28 = v143;
          v73 = v146;
        }

        else
        {
          *v86 = v28;
          v93 = v86 + 16;
        }

        *(&v73 + 1) = SHIDWORD(v135);
        v147 = v73;
        if (v93 >= v85)
        {
          v105 = *v81;
          v106 = v93 - *v81;
          v107 = (v106 >> 4) + 1;
          if (v107 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v85 - v105) >> 3 > v107)
          {
            v107 = (v85 - v105) >> 3;
          }

          if ((v85 - v105) >= 0x7FFFFFFFFFFFFFF0)
          {
            v108 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v108 = v107;
          }

          if (v108)
          {
            if (!(v108 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v109 = (16 * (v106 >> 4));
          v100 = 0;
          *v109 = v73;
          v99 = v109 + 1;
          memcpy(0, v105, v106);
          *v81 = 0;
          v81[2] = 0;
          if (v105)
          {
            operator delete(v105);
          }

          v28 = v143;
LABEL_164:
          v110 = *v81;
          v111 = v99 - *v81;
          v112 = (v111 >> 4) + 1;
          if (v112 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v100 - v110) >> 3 > v112)
          {
            v112 = (v100 - v110) >> 3;
          }

          if ((v100 - v110) >= 0x7FFFFFFFFFFFFFF0)
          {
            v113 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v113 = v112;
          }

          if (v113)
          {
            if (!(v113 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v114 = (16 * (v111 >> 4));
          v102 = 0;
          *v114 = v28;
          v101 = v114 + 1;
          memcpy(0, v110, v111);
          *v81 = 0;
          v81[1] = v101;
          v81[2] = 0;
          if (v110)
          {
            operator delete(v110);
          }

          v73 = v147;
LABEL_176:
          v115 = *v81;
          v116 = v101 - *v81;
          v117 = (v116 >> 4) + 1;
          if (v117 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v102 - v115) >> 3 > v117)
          {
            v117 = (v102 - v115) >> 3;
          }

          if ((v102 - v115) >= 0x7FFFFFFFFFFFFFF0)
          {
            v118 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v118 = v117;
          }

          if (v118)
          {
            if (!(v118 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v119 = (16 * (v116 >> 4));
          v104 = 0;
          *v119 = v73;
          v103 = v119 + 1;
          memcpy(0, v115, v116);
          *v81 = 0;
          v81[1] = v103;
          v81[2] = 0;
          if (v115)
          {
            operator delete(v115);
          }

          goto LABEL_187;
        }

        *v93 = v73;
        v99 = v93 + 16;
        v100 = v81[2];
        if (v99 >= v100)
        {
          goto LABEL_164;
        }

        *v99 = v28;
        v101 = v99 + 1;
        v102 = v81[2];
        if (v101 >= v102)
        {
          goto LABEL_176;
        }

        *v101 = v73;
        v103 = v101 + 1;
        v104 = v81[2];
LABEL_187:
        v120 = v140;
        *(&v120 + 1) = SHIDWORD(v135);
        if (v103 < v104)
        {
          *v103 = v120;
          v20 = v103 + 1;
        }

        else
        {
          v121 = *v81;
          v122 = v103 - *v81;
          v123 = (v122 >> 4) + 1;
          if (v123 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if ((v104 - v121) >> 3 > v123)
          {
            v123 = (v104 - v121) >> 3;
          }

          if ((v104 - v121) >= 0x7FFFFFFFFFFFFFF0)
          {
            v124 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v124 = v123;
          }

          if (v124)
          {
            if (!(v124 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v125 = (16 * (v122 >> 4));
          *v125 = v120;
          v20 = v125 + 1;
          memcpy(0, v121, v122);
          *v81 = 0;
          v81[2] = 0;
          if (v121)
          {
            operator delete(v121);
          }
        }

        v81[1] = v20;
        v19 += 20;
        v5 = v131;
        if (v19 == v132)
        {
          goto LABEL_17;
        }
      }

      v58 = *v34;
      v59 = v46 - *v34;
      v60 = (v59 >> 4) + 1;
      if (v60 >> 60)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if ((v38 - v58) >> 3 > v60)
      {
        v60 = (v38 - v58) >> 3;
      }

      if (v38 - v58 >= 0x7FFFFFFFFFFFFFF0)
      {
        v61 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v60;
      }

      if (v61)
      {
        if (!(v61 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v62 = (16 * (v59 >> 4));
      v53 = 0;
      *v62 = v27;
      v52 = v62 + 1;
      memcpy(0, v58, v59);
      *v34 = 0;
      *(v34 + 2) = 0;
      if (v58)
      {
        operator delete(v58);
      }

      v28 = v142;
LABEL_84:
      v63 = *v34;
      v64 = v52 - *v34;
      v65 = (v64 >> 4) + 1;
      if (v65 >> 60)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if ((v53 - v63) >> 3 > v65)
      {
        v65 = (v53 - v63) >> 3;
      }

      if (v53 - v63 >= 0x7FFFFFFFFFFFFFF0)
      {
        v66 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v65;
      }

      if (v66)
      {
        if (!(v66 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v67 = (16 * (v64 >> 4));
      v55 = 0;
      *v67 = v28;
      v54 = v67 + 1;
      memcpy(0, v63, v64);
      *v34 = 0;
      *(v34 + 1) = v54;
      *(v34 + 2) = 0;
      if (v63)
      {
        operator delete(v63);
      }

      v27 = v145;
      goto LABEL_96;
    }
  }

LABEL_3:
  v6 = 0;
  for (i = 0; i != 4; ++i)
  {
    if (*(&v155 + v6) == *(&v155 + v6 + 8))
    {
      break;
    }

    v8 = (*(**a2 + 368))(*a2, a1[8]);
    if (v8)
    {
      if (v9)
      {
        v10 = v9;
        v11 = (*(*a1 + 48))(a1);
        v12 = strlen(v11);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&__dst, v11, v12);
        }

        __dst.__r_.__value_.__s.__data_[v13] = 0;
        HGMetalHandler::SetDebugLabel(v10, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        HGMetalHandler::BindBuffer(v10, a5);
        v14 = &a2[i];
        HGMetalHandler::BindTexture(v10, 0, v14[21]);
        v15 = HGMetalHandler::BindTexture(v10, i, v14[21]);
        v16 = *(&v155 + v6);
        v17 = v149[v6 / 8];
        v18 = *(&v155 + v6 + 8);
        (*(*a1 + 488))(a1, a2, i, v10, v15);
        HGMetalHandler::PrimitivesDraw(v10, 3u, v16, (v18 - v16) >> 4, v17);
        (*(*a1 + 496))(a1, a2, i, v10);
      }
    }

    v6 += 24;
  }

  if (__p[1])
  {
    operator delete(__p[1]);
  }

  if (v152[0])
  {
    operator delete(v152[0]);
  }

  if (v150[1])
  {
    operator delete(v150[1]);
  }

  if (v149[0])
  {
    operator delete(v149[0]);
  }

  if (*(&v159 + 1))
  {
    operator delete(*(&v159 + 1));
  }

  if (v158)
  {
    operator delete(v158);
  }

  if (*(&v156 + 1))
  {
    operator delete(*(&v156 + 1));
  }

  if (v155)
  {
    operator delete(v155);
  }
}