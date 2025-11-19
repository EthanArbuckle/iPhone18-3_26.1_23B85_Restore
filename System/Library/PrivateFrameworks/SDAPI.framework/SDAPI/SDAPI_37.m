BOOL FileSpec::isValid(char **this)
{
  if (*(this + 2))
  {
    v1 = *this;
    if (!*this)
    {
      return 0;
    }
  }

  else
  {
    v1 = &byte_262899963;
  }

  return *v1 != 0;
}

uint64_t DgnStream::DgnStream(uint64_t a1, int a2, const char *a3)
{
  *a1 = &unk_287523308;
  v5 = (a1 + 16);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "unnamed stream";
  }

  FileSpec::FileSpec(v5, v6);
  *(a1 + 32) = 256;
  *(a1 + 8) = a2;
  return a1;
}

void DgnStream::printSize(DgnStream *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 65, &v40);
  if (v41)
  {
    v16 = v40;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v40);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 67, &v40);
  if (v41)
  {
    v25 = v40;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v40);
  *a4 += 4;
  *a5 += 4;
  v26 = FileSpec::sizeObject(this + 16);
  v27 = FileSpec::sizeObject(this + 16);
  v28 = FileSpec::sizeObject(this + 16);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 69, &v40);
  if (v41)
  {
    v33 = v40;
  }

  else
  {
    v33 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v33, v26, v27, v28);
  DgnString::~DgnString(&v40);
  *a4 += v26;
  *a5 += v27;
  *a6 += v28;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 71, &v40);
  if (v41)
  {
    v38 = v40;
  }

  else
  {
    v38 = &byte_262899963;
  }

  v39 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, a3, &byte_262899963, (35 - a3), (35 - a3), v38, *a4, *a5, *a6);
  DgnString::~DgnString(&v40);
}

void sub_26277A3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnStream::getLine(DgnStream *this, DgnString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 2) == 1)
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 77, "dfutil/dstream", 2, "%.500s", a7, a8, v10);
  }

  *(a2 + 2) = 0;
  result = (*(*this + 56))(this);
  if ((result & 1) == 0)
  {
    do
    {
      v14 = 0;
      result = (*(*this + 72))(this, &v14, 1, 0);
      if (!result || v14 == 10)
      {
        break;
      }

      if (v14 == 13)
      {
        result = (*(*this + 64))(this);
        if (result == 10)
        {
          v13 = 0;
          return (*(*this + 72))(this, &v13, 1, 1);
        }

        return result;
      }

      DgnString::appendCharWithGrow(a2, v14);
      result = (*(*this + 56))(this);
    }

    while (!result);
  }

  return result;
}

void DgnStream::streamPrintf(DgnStream *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v21 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v19);
  v16[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v16, 0);
  for (i = __size; ; i = __size)
  {
    v11 = vsnprintf(Buffer, i, v7, va);
    if ((v11 & 0x80000000) == 0 && v11 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v16, 1);
  }

  if (v20)
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
    v13 = v16;
  }

  v14 = strlen(v13);
  (*(*v8 + 80))(v8, v13, v14);
  DgnString::~DgnString(&v19);
  v15 = *MEMORY[0x277D85DE8];
}

void PelScoreCacheData::PelScoreCacheData(PelScoreCacheData *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t *PelScoreCacheData::clone(PelScoreCacheData *this)
{
  v2 = MemChunkAlloc(0x18uLL, 0);
  *v2 = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = *this;
  DgnArray<DgnPrimArray<Uns16AndScore>>::copyArraySlice((v2 + 1), this + 1, 0, *(this + 4));
  return v2;
}

void PelScoreCacheData::printSize(PelScoreCacheData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 258, &v40);
  if (v41)
  {
    v16 = v40;
  }

  else
  {
    v16 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CEAC, a3, &unk_26288CEAC, v16);
  DgnString::~DgnString(&v40);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CEAC);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 259, &v40);
  if (v41)
  {
    v25 = v40;
  }

  else
  {
    v25 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_26288CEAC, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v40);
  *a4 += 4;
  *a5 += 4;
  v26 = sizeObject<DgnPrimArray<Uns16AndScore>>(this + 8, 0);
  v27 = sizeObject<DgnPrimArray<Uns16AndScore>>(this + 8, 1);
  v28 = sizeObject<DgnPrimArray<Uns16AndScore>>(this + 8, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 261, &v40);
  if (v41)
  {
    v33 = v40;
  }

  else
  {
    v33 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26288CEAC, (34 - a3), (34 - a3), v33, v26, v27, v28);
  DgnString::~DgnString(&v40);
  *a4 += v26;
  *a5 += v27;
  *a6 += v28;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 262, &v40);
  if (v41)
  {
    v38 = v40;
  }

  else
  {
    v38 = &unk_26288CEAC;
  }

  v39 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, a3, &unk_26288CEAC, (35 - a3), (35 - a3), v38, *a4, *a5, *a6);
  DgnString::~DgnString(&v40);
}

void sub_26277AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnPrimArray<Uns16AndScore>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sizeObject(v11, 2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  if (a2 == 3)
  {
    v4 = 0;
  }

  else if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 >= 1)
    {
      v7 = v5 + 1;
      v8 = 16 * v5 - 16;
      v6 = v4;
      do
      {
        v6 += sizeObject<Uns16AndScore>(*a1 + v8, a2);
        --v7;
        v8 -= 16;
      }

      while (v7 > 1);
    }

    if (a2)
    {
      v4 = v6;
    }

    else
    {
      v4 = v6 + v4 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v4;
}

void sub_26277AB18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t DgnArray<DgnPrimArray<Uns16AndScore>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(v7 + 8) = 0;
  v10 = *(v7 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v10, 0);
    v11 = *(v7 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*v7 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    result = DgnPrimArray<Uns16AndScore>::copyArraySlice(v15, v14, 0, *(v14 + 8));
    v12 = *(v7 + 8) + 1;
    *(v7 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

unint64_t DgnPrimArray<Uns16AndScore>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    *(result + 8) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, a4 - v8, 0);
    *(v7 + 8) = a4;
  }

  v9 = 0;
  v10 = a4;
  do
  {
    *(*v7 + v9) = *(*a2 + 4 * a3++);
    v9 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t sizeObject<Uns16AndScore>(uint64_t a1, int a2)
{
  v4 = sizeObject(v14, 2);
  v5 = v4;
  if (a2 == 3)
  {
    v6 = *(a1 + 8);
    v7 = v6 > *(a1 + 12);
    v8 = v4 * v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v9 = 12;
    }

    else
    {
      v9 = 16;
    }

    if (a2 != 2)
    {
      v10 = *(a1 + 8);
      if (v10 <= *(a1 + 12))
      {
        if (v10 >= 1)
        {
          v11 = v10 + 1;
          v12 = 4 * v10 - 4;
          do
          {
            v9 += sizeObject(*a1 + v12, a2);
            --v11;
            v12 -= 4;
          }

          while (v11 > 1);
        }

        if (!a2)
        {
          v9 += v5 * (*(a1 + 12) - *(a1 + 8));
        }
      }
    }
  }

  return v9;
}

uint64_t CombineTable::initCombineTable(uint64_t this, double a2)
{
  if (a2 == 0.0)
  {
    return this;
  }

  v3 = this;
  v4 = 1.0 / a2;
  v5 = DgnExp(1.0 / a2 * 0.5);
  v8 = (2.0 - a2 * DgnLog(v5 + -1.0));
  if (v8 < 8001)
  {
    v21 = 0;
    v22 = 0;
    if (!v8)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/cmbtable.cpp", 141, "mrecutil/cmbtable", 1, "%g %d", v6, v7, SLOBYTE(a2));
    v21 = 0;
    v22 = 0;
  }

  v9 = MemChunkAlloc(4 * v8, 0);
  v21 = v9;
  v22 = v8;
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = DgnExp(v4 * v11);
      *(v21 + v10) = (a2 * DgnLog(v12 + 1.0) + 0.5);
      --v11;
      v10 += 4;
    }

    while (4 * v8 != v10);
    v9 = v21;
  }

LABEL_10:
  v13 = v8 & (v8 >> 31);
  v14 = v9 + v8 - 1;
  while (1)
  {
    v15 = __OFSUB__(v8, 1);
    LODWORD(v8) = v8 - 1;
    if (v8 < 0 != v15)
    {
      break;
    }

    if (*v14--)
    {
      v13 = v8 + 1;
      break;
    }
  }

  if (v13 && !*(v3 + 8))
  {
    *v3 = MemChunkAlloc(4 * v13, 0);
    *(v3 + 8) = v13;
  }

  if (v13 >= 1)
  {
    v17 = v21;
    v18 = *v3;
    v19 = v13;
    do
    {
      v20 = *v17;
      v17 = (v17 + 4);
      *v18++ = v20;
      --v19;
    }

    while (v19);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v21);
}

void sub_26277AFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t CombineTable::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 8;
  }

  else
  {
    result = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      result += 4 * v4;
    }
  }

  return result;
}

uint64_t sizeObject<RecogResultToken>(uint64_t a1, int a2)
{
  memset(v11, 0, 24);
  v11[3] = 0xFFFFFFFF00000000;
  v13 = 0;
  v14 = 0;
  v11[4] = 0;
  v11[5] = 0;
  v12 = 0;
  v4 = sizeObject(v11, 2);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 96 * v7 - 64;
        do
        {
          v5 += sizeObject(*a1 + v9, a2) + 50;
          --v8;
          v9 -= 96;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += (v6 + 50) * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  return v5;
}

void RecogResultChoice::fillFromNBestChoice(unint64_t a1, uint64_t *a2, int a3, int a4, int a5, uint64_t a6, double a7, __n128 a8, __n128 a9)
{
  v10 = a2;
  v11 = a1;
  *(a1 + 44) = *(a2 + 8);
  v12 = *(a2 + 36);
  *(a1 + 16) = v12;
  *&v12 = *(a2 + 52);
  *(a1 + 32) = v12;
  *(a1 + 40) = *(a2 + 15);
  *(a1 + 8) = 0;
  if (a6)
  {
    v13 = a2[3];
    if (v13)
    {
      DgnArray<WordConfidenceInfo>::copyArraySlice(a6, v13, 0, *(v13 + 8));
    }
  }

  v14 = v10[2];
  v15 = *(v10 + 2);
  v16 = 112 * v15 - 24;
  v17 = -1;
  do
  {
    if (v16 == -24)
    {
      if (!v15)
      {
        v19 = 0;
        goto LABEL_43;
      }

      v19 = *(*v10 + 88) >> 25 == 126;
      if (*(*v10 + 88) >> 25 != 126)
      {
        goto LABEL_43;
      }

      goto LABEL_11;
    }

    v18 = *(*v10 + v16);
    ++v17;
    v16 -= 112;
  }

  while (v18 >> 25 == 126);
  v19 = v15 - v17;
  if (v19)
  {
LABEL_11:
    v20 = 0;
    v21 = 0;
    v53 = v19;
    v22 = 112 * v19;
    v62 = a3;
    v60 = v22;
    v61 = v10[2];
    v54 = v11;
    while (1)
    {
      v23 = *v10;
      v24 = *v10 + v21;
      v25 = *(v24 + 88);
      if ((v25 & 0xFE000000) != 0xFC000000)
      {
        break;
      }

      if (v14)
      {
        v26 = *(*v14 + v20);
      }

      else
      {
        v26 = -1;
      }

      addSilenceToken(v11, v24, a3, v26, *&v12, a8.n128_u64[0]);
LABEL_40:
      v21 += 112;
      v20 += 4;
      if (v22 == v21)
      {
        v15 = *(v10 + 2);
        v19 = v53;
        goto LABEL_43;
      }
    }

    if ((v25 & 0xFE000000) == 0xFA000000 || a4 == 0)
    {
      v28 = 0;
      if (!v14)
      {
LABEL_23:
        v29 = -1;
        goto LABEL_24;
      }
    }

    else
    {
      v28 = *(v23 + v21 + 96);
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    v29 = *(*v14 + v20);
LABEL_24:
    if (a5)
    {
      v30 = v28;
      Root = VocMgr::getRoot(VocMgr::smpVocMgr, *(v24 + 88));
      v28 = v30;
    }

    else
    {
      Root = *(v24 + 88);
    }

    v32 = v23 + v21;
    v33 = *(v23 + v21 + 108);
    if (a3)
    {
      *&v12 = vorr_s8(*(v32 + 16), vceq_s32(*(v32 + 16), 0xFFFFFFFCFFFFFFC0));
      if (*(v32 + 24) == -4)
      {
        v34 = -1;
      }

      else
      {
        v34 = *(v32 + 24);
      }
    }

    else
    {
      *&v12 = -1;
      *(&v12 + 1) = -1;
      v34 = -1;
    }

    a8 = *(v32 + 28);
    v35 = *(v32 + 44);
    v36 = *(v32 + 52);
    v37 = *(v32 + 8);
    v38 = *(v32 + 68);
    v39 = *(v32 + 64);
    if (v39 == 1879048192)
    {
      v40 = 0;
      v39 = 0;
      a9 = 0uLL;
    }

    else
    {
      a9.n128_u64[0] = *(v23 + v21 + 56);
      v40 = 1;
    }

    v41 = *(v11 + 8);
    if (v41 == *(v11 + 12))
    {
      v58 = Root;
      v42 = v11;
      v43 = v29;
      v44 = v28;
      v59 = v12;
      v45 = *(v23 + v21 + 108);
      v46 = v10;
      v47 = v34;
      v56 = a9;
      v57 = a8;
      v55 = v25;
      v48 = v39;
      DgnArray<RecogResultToken>::reallocElts(v42, 1, 1);
      v39 = v48;
      v25 = v55;
      a9 = v56;
      a8 = v57;
      v34 = v47;
      v10 = v46;
      v11 = v54;
      v33 = v45;
      v12 = v59;
      Root = v58;
      v28 = v44;
      v29 = v43;
      LODWORD(v41) = *(v54 + 8);
    }

    v49 = *v11 + 96 * v41;
    *v49 = 0;
    *(v49 + 4) = v25 >> 25;
    *(v49 + 8) = v28;
    *(v49 + 12) = Root & 0xFFFFFF;
    *(v49 + 16) = v33 & 0xFFFFFF;
    *(v49 + 20) = v12;
    *(v49 + 28) = v34;
    *(v49 + 32) = a8;
    *(v49 + 48) = v35;
    *(v49 + 56) = v36;
    *(v49 + 60) = v29;
    *(v49 + 64) = v37;
    *(v49 + 72) = v38;
    *(v49 + 80) = v40;
    *(v49 + 84) = a9.n128_u64[0];
    *(v49 + 92) = v39;
    ++*(v11 + 8);
    a3 = v62;
    v22 = v60;
    v14 = v61;
    goto LABEL_40;
  }

LABEL_43:
  if (v19 < v15)
  {
    v50 = v19;
    v51 = 112 * v19;
    do
    {
      if (v14)
      {
        v52 = *(*v14 + 4 * v50);
      }

      else
      {
        v52 = -1;
      }

      addSilenceToken(v11, *v10 + v51, a3, v52, *&v12, a8.n128_u64[0]);
      ++v50;
      v51 += 112;
    }

    while (v50 < *(v10 + 2));
  }
}

unint64_t addSilenceToken(unint64_t result, uint64_t a2, int a3, int a4, int32x2_t a5, int8x8_t a6)
{
  v7 = result;
  if (a3)
  {
    a5 = *(a2 + 16);
    a6 = vceq_s32(a5, 0xFFFFFFFCFFFFFFC0);
    v8 = vorr_s8(a5, a6);
    if (*(a2 + 24) == -4)
    {
      v9 = -1;
    }

    else
    {
      v9 = *(a2 + 24);
    }
  }

  else
  {
    v8 = -1;
    v9 = -1;
  }

  v10 = *(a2 + 88);
  v11 = *(a2 + 28);
  v12 = *(a2 + 44);
  v13 = *(a2 + 52);
  v14 = *(a2 + 8);
  v15 = *(a2 + 68);
  v16 = *(a2 + 64);
  a5.i32[0] = 1879048192;
  if (v16 == 1879048192)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a2 + 64);
  }

  a6.i32[0] = *(a2 + 64);
  v18 = vand_s8(*(a2 + 56), vdup_lane_s32(vmvn_s8(vceq_s32(a6, a5)), 0));
  v19 = v16 != 1879048192;
  v20 = *(result + 8);
  if (v20 == *(result + 12))
  {
    v22 = *(a2 + 28);
    v23 = v8;
    result = DgnArray<RecogResultToken>::reallocElts(result, 1, 1);
    v11 = v22;
    v8 = v23;
    v20 = *(v7 + 8);
  }

  v21 = *v7 + 96 * v20;
  *v21 = 1;
  *(v21 + 4) = 127;
  *(v21 + 8) = 0;
  *(v21 + 12) = v10 & 0xFFFFFF;
  *(v21 + 16) = 16777212;
  *(v21 + 20) = v8;
  *(v21 + 28) = v9;
  *(v21 + 32) = v11;
  *(v21 + 48) = v12;
  *(v21 + 56) = v13;
  *(v21 + 60) = a4;
  *(v21 + 64) = v14;
  *(v21 + 72) = v15;
  *(v21 + 80) = v19;
  *(v21 + 84) = v18;
  *(v21 + 92) = v17;
  ++*(v7 + 8);
  return result;
}

unint64_t DgnArray<RecogResultToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 96 * v6, 96 * v5, 96 * v5, 1);
  *(a1 + 12) = result / 0x60;
  *a1 = v8;
  return result;
}

void MrecInitModule_pelsrvsm_pel(void)
{
  if (!gParDiagnosticPelScoringServerUseSeparateKernel)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DiagnosticPelScoringServerUseSeparateKernel", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDiagnosticPelScoringServerUseSeparateKernel = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelScoringServerUseSeparateKernel);
  }

  if (!gParDiagnosticPelScoringUseFreeTime)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticPelScoringUseFreeTime", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticPelScoringUseFreeTime = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelScoringUseFreeTime);
  }

  if (!gParDebugPelScoringServer1)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugPelScoringServer1", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugPelScoringServer1 = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer1);
  }

  if (!gParDebugPelScoringServer2)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugPelScoringServer2", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugPelScoringServer2 = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer2);
  }

  if (!gParDebugPelScoringServer3)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugPelScoringServer3", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugPelScoringServer3 = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer3);
  }

  if (!gParDebugPelScoringServer4)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugPelScoringServer4", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugPelScoringServer4 = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer4);
  }

  if (!gParDebugGPUCheckPelScoreRange)
  {
    v12 = MemChunkAlloc(0x48uLL, 0);
    v16 = xmmword_26288CEE0;
    v13 = DoubleGlobalParamBase::DoubleGlobalParamBase(v12, "DebugGPUCheckPelScoreRange", &byte_262899963, &byte_262899963, &v16, 0, 0.0);
    *v13 = &unk_2875271F0;
    gParDebugGPUCheckPelScoreRange = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugGPUCheckPelScoreRange);
  }

  if (!gParDiagnosticGPUInitializePelScores)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DiagnosticGPUInitializePelScores", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDiagnosticGPUInitializePelScores = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticGPUInitializePelScores);
  }
}

void DoubleGlobalParam::~DoubleGlobalParam(DoubleGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

char *GetSubFileExtensionString(unsigned int a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return off_279B403F0[a1];
  }
}

uint64_t GetIndexForLMSubDirExtensionString(const char *a1)
{
  v1 = a1;
  v6 = 0;
  v5 = 0;
  if (sscanf(a1, ".lm%u%c", &v6, &v5) != 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/subext.cpp", 71, "dfutil/subext", 1, "%.500s", v2, v3, v1);
  }

  return v6;
}

void NonCoartSyncNet::~NonCoartSyncNet(NonCoartSyncNet *this, Sequence *a2)
{
  BaseSyncNet::~BaseSyncNet(this, a2);

  JUMPOUT(0x26672B1B0);
}

uint64_t NonCoartSyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BaseSyncNet::sizeObject(a1, a2);
  return sizeObject(a1 + 288, v2) + v4;
}

uint64_t NonCoartSyncNet::scoreNetInternal(NonCoartSyncNet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (*(this + 282) & 1) != 0 || *(this + 71) != 20000;
  v11 = *(this + 26);
  v24 = *(this + 38);
  v25 = 0;
  if (v11)
  {
    v12 = *(this + 71) <= a3;
  }

  else
  {
    v12 = 0;
  }

  *(this + 282) = v12;
  *(this + 71) = 20000;
  v13 = BaseSyncNet::scoreIntSilNode1<true>(this, v12, *(this + 114), a3, a4, a5, a6, &v25);
  if (*(this + 282))
  {
    v14 = *(this + 25);
    v15 = *(this + 26);
    v16 = *(this + 1);
    v17 = -25064;
LABEL_11:
    ++*(v16 + (v17 | 0x40000u));
    v18 = **(this + 27);
    v19 = (v18 + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v19 + v14);
    }

    v20 = *(this + 29);
    v21 = v14(v19, this + 288, *(this + 148) != 20000, a3, a4, a5);
    *(this + 71) = v21;
    if (v21 != 20000 && v13 >= *(v18 + 24 * (*(v18 + 10) - 1) + 24))
    {
      v13 = *(v18 + 24 * (*(v18 + 10) - 1) + 24);
    }

    goto LABEL_18;
  }

  if (*(this + 112))
  {
    v14 = *(this + 23);
    v15 = *(this + 24);
    v16 = *(this + 1);
    v17 = -25060;
    goto LABEL_11;
  }

  if (v10)
  {
    *(**(this + 27) + 24 * (*(**(this + 27) + 10) - 1) + 24) = 20000;
  }

LABEL_18:
  v22 = *(this + 1);
  ++*(v22 + 302576);
  *(v22 + 302592) += v25;
  *(this + 54) = v13;
  if (v13 < *(v22 + 246))
  {
    *(v22 + 246) = v13;
  }

  *(this + 26) = v24;
  result = (*(*this + 328))(this);
  *(this + 55) = result;
  return result;
}

uint64_t BaseSyncNet::scoreIntSilNode1<true>(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, _DWORD *a8)
{
  *(a1 + 113) = 0;
  v11 = *(a1 + 152);
  if (!a2)
  {
    v12 = 0;
    v13 = -1;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(a1 + 248) = 1310740000;
    return 20000;
  }

  v12 = *(a1 + 264);
  v13 = *(v12 + 4);
  if (v11)
  {
    v14 = 33;
  }

  else
  {
    v14 = 32;
  }

  if (*(v12 + 8) <= a4)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = 1;
LABEL_8:
  v15 = *(a1 + 8);
  if (a3)
  {
    Node::scoreNodeWithPatternNBest(a1 + 240, v12, v13, v14, a5, a6, v15, 0, a7, (a1 + 113), a1);
  }

  else
  {
    Node::scoreNodeWithPattern(a1 + 240, v12, v14, a5, a6, v15, 0, a7, (a1 + 113), a1);
  }

  ++*a8;
  return *(a1 + 248);
}

uint64_t NonCoartSyncNet::thresholdNetInternal(NonCoartSyncNet *this, uint64_t a2, int a3)
{
  result = BaseSyncNet::scoreIntSilNode2(this, a2, a3);
  if (*(this + 55) <= a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *(this + 55) = 20000;
  }

  *(this + 26) = v6;
  return result;
}

uint64_t NonCoartSyncNet::calcNumActiveNodes(NonCoartSyncNet *this, int a2)
{
  v2 = *(this + 38);
  if (*(this + 71) <= a2)
  {
    return Sequence::calcNumActiveNodes(**(this + 27), a2) + v2;
  }

  return v2;
}

uint64_t *NonCoartSyncNet::addNodesSequential(uint64_t a1, Sequence *this, int a3)
{
  if (a3 == 2)
  {
    v5 = Sequence::newSequence(this);
    v6 = *(a1 + 224);
    *(*(a1 + 216) + 8 * v6) = v5;
    *(a1 + 224) = v6 + 1;
    return v5 + 2;
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    result = (a1 + 240);
    *(a1 + 280) = 1;
  }

  return result;
}

uint64_t NonCoartSyncNet::attachInPort(NonCoartSyncNet *this, unsigned int a2, Node *a3)
{
  result = PredStruct::addPred(a3 - 16, this + 288);
  *(*(this + 7) + 8 * a2) = this + 288;
  return result;
}

uint64_t PredStruct::addPred(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 == 2)
  {
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v5 = *result;
    result = MemChunkAlloc(0x10uLL, 0);
    *v3 = result;
    *result = v5;
    *(*v3 + 8) = a2;
    LOWORD(v4) = v3[4];
    goto LABEL_13;
  }

  if (*(result + 8))
  {
    if ((v4 & 7) != 0)
    {
LABEL_12:
      v4 = v3[4];
      *(*v3 + 8 * v4) = a2;
      goto LABEL_13;
    }

LABEL_7:
    v6 = 8 * v4;
    if (v4 == 2)
    {
      v7 = 64;
    }

    else
    {
      v7 = 8 * v4 + 64;
    }

    v8 = *v3;
    v9 = MemChunkAlloc(v7, 0);
    *v3 = v9;
    result = memcpy(v9, v8, v6);
    if (v8)
    {
      result = MemChunkFree(v8, 0);
    }

    goto LABEL_12;
  }

  *result = a2;
LABEL_13:
  v3[4] = v4 + 1;
  return result;
}

void SigProc::~SigProc(SigProc *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 104))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 74, "sigproc/sigproc", 1, "%s", a7, a8, &unk_26288CF23);
  }

  if (*(this + 120))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 75, "sigproc/sigproc", 2, "%u", a7, a8, *(this + 110));
  }

  DgnDelete<ChannelStats>(*(this + 49));
  DgnDelete<CTFTMgr>(*(this + 50));
  DgnDelete<EnvMgr>(*(this + 53));
  DgnDelete<UserDelta>(*(this + 54));
  DgnDelete<AdaptStatsHistory>(*(this + 59));
  FileHistory::~FileHistory((this + 448));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 408);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 376);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 360);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 344);

  SigProcDescriptor::~SigProcDescriptor(this);
}

ChannelStats *DgnDelete<ChannelStats>(ChannelStats *result)
{
  if (result)
  {
    ChannelStats::~ChannelStats(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

CTFTMgr *DgnDelete<CTFTMgr>(CTFTMgr *result)
{
  if (result)
  {
    CTFTMgr::~CTFTMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<UserDelta>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 48);
    DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 3));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void SigProc::saveSigProc(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  v24 = 0u;
  v25 = 0u;
  SnapTime::recordTime(&v24, 1, 1, 1, 1);
  LoadSaveTracker::LoadSaveTracker(&v23);
  if (a4)
  {
    v10 = a4 != 2;
  }

  else if (*(a1 + 484) == 1)
  {
    v10 = *(*(a1 + 424) + 264);
  }

  else
  {
    v10 = 0;
  }

  DFileOwner::DFileOwner(v22);
  *a3 = 1;
  v11 = DFile::openDFile(a2, 1, 4, v22);
  *a3 = 2;
  DFileChecksums::DFileChecksums(v21);
  AdaptStatsHistory::saveASB(*(a1 + 472), v11, v21, v10 & 1, a5);
  EnvMgr::saveEnvMgr(*(a1 + 424), v11, v21, v10 & 1, a5);
  SigProcDescriptor::saveSigProcDescriptor(a1, v11, v21, v10 & 1, a5);
  WaveDecoder::saveWaveDecoder((a1 + 344), v11, v21, v10 & 1, a5);
  v15 = *(a1 + 392);
  if (v15)
  {
    ChannelStats::saveChannelStats(v15, v11, v21, v10 & 1, a5);
  }

  CTFTMgr::saveCTFT(*(a1 + 400), v11, v21, v10 & 1, a5, v12, v13, v14);
  if ((v10 & 1) == 0)
  {
    v16 = *(a1 + 432);
    if (*(v16 + 5))
    {
      UserDelta::saveUserDelta(v16, v11, v21, a5);
    }

    v17 = OpenAndWriteMrecHeader(v11, 0x52u, 0, "MRSCH!? ", 19, 2);
    v19.i32[0] = 0;
    writeObject(v17, v21, &v19);
    writeObjectChecksum(v17, v19.i32);
    DgnDelete<DgnStream>(v17);
  }

  v19 = 0u;
  v20 = 0u;
  SnapTime::recordTime(&v19, 1, 1, 1, 1);
  v19 = vsubq_s64(v19, v24);
  v20 = vsubq_s64(v20, v25);
  FileHistory::addEntryWithElapsedTime((a1 + 448), " saveSigProc time: ", &v19);
  FileHistory::saveFileHistory((a1 + 448), v11, v10 & 1);
  DFileOwner::setRemoveFileOnDestruction(v22, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v21);
  DFileOwner::~DFileOwner(v22, v18);
  LoadSaveTracker::~LoadSaveTracker(&v23);
}

void sub_26277C4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DFileChecksums::~DFileChecksums(&a13);
  DFileOwner::~DFileOwner(&a16, v22);
  LoadSaveTracker::~LoadSaveTracker(&a21);
  _Unwind_Resume(a1);
}

void SigProc::decrementAdapterCount(SigProc *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 120);
  if (!v9)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 348, "sigproc/sigproc", 3, "%u", a7, a8, *(this + 110));
    v9 = *(this + 120);
  }

  *(this + 120) = v9 - 1;
}

void SigProc::printSize(SigProc *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 359, &v112);
  if (v113)
  {
    v16 = v112;
  }

  else
  {
    v16 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CF23, a3, &unk_26288CF23, v16);
  DgnString::~DgnString(&v112);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CF23);
  v21 = (a3 + 1);
  v109 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 360, &v112);
  if (v113)
  {
    v27 = v112;
  }

  else
  {
    v27 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &unk_26288CF23, v22, v22, v27, 4, 4, 0);
  DgnString::~DgnString(&v112);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  else
  {
    v28 = 16;
  }

  v29 = *(this + 104);
  v30 = *(this + 105);
  if (v30 >= v29)
  {
    v31 = 0;
    if (v29 > 0)
    {
      v28 += 4 * (v29 - 1) + 4;
    }

    v32 = v28 + 4 * (v30 - v29);
  }

  else
  {
    v31 = 4 * v29;
    v32 = v28;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 362, &v112);
  if (v113)
  {
    v37 = v112;
  }

  else
  {
    v37 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v21, &unk_26288CF23, v22, v22, v37, v32, v28, v31);
  DgnString::~DgnString(&v112);
  *a4 += v32;
  *a5 += v28;
  *a6 += v31;
  v38 = sizeObject(this + 448, 0);
  v39 = sizeObject(this + 448, 1);
  v40 = sizeObject(this + 448, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 363, &v112);
  if (v113)
  {
    v45 = v112;
  }

  else
  {
    v45 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v21, &unk_26288CF23, v22, v22, v45, v38, v39, v40);
  DgnString::~DgnString(&v112);
  *a4 += v38;
  *a5 += v39;
  *a6 += v40;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 4;
  }

  else
  {
    v46 = 8;
  }

  v47 = *(this + 59);
  if (v47)
  {
    v48 = sizeObject(v47, 0) + v46;
    v49 = *(this + 59);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v46 = 4;
    }

    else
    {
      v46 = 8;
    }

    if (v49 && (v46 += sizeObject(v49, 1), (v50 = *(this + 59)) != 0))
    {
      v51 = sizeObject(v50, 3);
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v51 = 0;
    v48 = v46;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 365, &v112);
  if (v113)
  {
    v56 = v112;
  }

  else
  {
    v56 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v21, &unk_26288CF23, v22, v22, v56, v48, v46, v51);
  DgnString::~DgnString(&v112);
  *a4 += v48;
  *a5 += v46;
  *a6 += v51;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  SigProcDescriptor::printSize(this, 0xFFFFFFFFLL, v21, &v112, &v111, &v110);
  *a4 += v112;
  *a5 += v111;
  *a6 += v110;
  v57 = sizeObject(this + 344, 0);
  v58 = sizeObject(this + 344, 1);
  v59 = sizeObject(this + 344, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 368, &v112);
  if (v113)
  {
    v64 = v112;
  }

  else
  {
    v64 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v21, &unk_26288CF23, v22, v22, v64, v57, v58, v59);
  DgnString::~DgnString(&v112);
  *a4 += v57;
  *a5 += v58;
  *a6 += v59;
  v65 = *(this + 50);
  if (v65)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    CTFTMgr::printSize(v65, 0xFFFFFFFFLL, v21, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 369, &v112);
  if (v113)
  {
    v71 = v112;
  }

  else
  {
    v71 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v21, &unk_26288CF23, v22, v22, v71, v66, v66, 0);
  DgnString::~DgnString(&v112);
  *a4 += v66;
  *a5 += v66;
  v72 = *(this + 49);
  if (v72)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    ChannelStats::printSize(v72, 0xFFFFFFFFLL, v21, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 4;
  }

  else
  {
    v73 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 371, &v112);
  if (v113)
  {
    v78 = v112;
  }

  else
  {
    v78 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, v21, &unk_26288CF23, v22, v22, v78, v73, v73, 0);
  DgnString::~DgnString(&v112);
  *a4 += v73;
  *a5 += v73;
  v79 = *(this + 53);
  if (v79)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    EnvMgr::printSize(v79, 0xFFFFFFFFLL, v21, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 4;
  }

  else
  {
    v80 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 372, &v112);
  if (v113)
  {
    v85 = v112;
  }

  else
  {
    v85 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v21, &unk_26288CF23, v22, v22, v85, v80, v80, 0);
  DgnString::~DgnString(&v112);
  *a4 += v80;
  *a5 += v80;
  v86 = *(this + 54);
  if (v86)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    UserDelta::printSize(v86, 0xFFFFFFFFLL, v21, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v87 = 4;
  }

  else
  {
    v87 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 374, &v112);
  if (v113)
  {
    v92 = v112;
  }

  else
  {
    v92 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &unk_26288CF23, v22, v22, v92, v87, v87, 0);
  DgnString::~DgnString(&v112);
  *a4 += v87;
  *a5 += v87;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 375, &v112);
  if (v113)
  {
    v97 = v112;
  }

  else
  {
    v97 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26288CF23, v22, v22, v97, 4, 4, 0);
  DgnString::~DgnString(&v112);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 377, &v112);
  if (v113)
  {
    v102 = v112;
  }

  else
  {
    v102 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v99, v100, v101, v21, &unk_26288CF23, v22, v22, v102, 1, 1, 0);
  DgnString::~DgnString(&v112);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 378, &v112);
  if (v113)
  {
    v107 = v112;
  }

  else
  {
    v107 = &unk_26288CF23;
  }

  v108 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v104, v105, v106, v109, &unk_26288CF23, (35 - v109), (35 - v109), v107, *a4, *a5, *a6);
  DgnString::~DgnString(&v112);
}

void sub_26277CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MrecInitModule_sausage_kernel(void)
{
  if (!gParDebugSausageGenerationShowOperationTimes)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugSausageGenerationShowOperationTimes", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugSausageGenerationShowOperationTimes = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageGenerationShowOperationTimes);
  }

  if (!gParDebugSausageGenerationInitialize)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugSausageGenerationInitialize", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugSausageGenerationInitialize = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageGenerationInitialize);
  }

  if (!gParDebugSausageGenerationMinimize)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugSausageGenerationMinimize", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugSausageGenerationMinimize = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageGenerationMinimize);
  }

  if (!gParDebugSausageCombination)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugSausageCombination", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugSausageCombination = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageCombination);
  }

  if (!gParDiagnosticSausageGenerationCommand)
  {
    v8 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v8, "DiagnosticSausageGenerationCommand", &unk_26288CF24, &unk_26288CF24, &unk_26288CF24, 0, 0);
    *v9 = &unk_287526E40;
    gParDiagnosticSausageGenerationCommand = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticSausageGenerationCommand);
  }

  if (!gParDebugFastSausageGeneration)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugFastSausageGeneration", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugFastSausageGeneration = v11;
    v12 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v12, &gParDebugFastSausageGeneration);
  }
}

void SausageSlot::~SausageSlot(SausageSlot *this)
{
  *(this + 24) = 0;
  *(this + 2) = 0xBFF0000000000000;
  DgnArray<CWIDProbPair>::releaseAll(this);
}

uint64_t sizeObject<CWIDProbPair>(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 37;
  }

  else
  {
    v2 = 41;
  }

  if (a2 == 3)
  {
    v3 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 12;
    }

    else
    {
      v3 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 48 * v6 - 48;
        do
        {
          v3 += sizeObject(*a1 + v8, a2);
          --v7;
          v8 -= 48;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v3 += v2 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnDelete<DgnArray<Germ>>(0);
  return v3;
}

uint64_t Sausage::adjustReferenceCounts(uint64_t this, int a2)
{
  v3 = this;
  v4 = VocMgr::smpVocMgr;
  v5 = *(this + 28);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = *(this + 96);
  v7 = *v6;
  if (*v6)
  {
LABEL_8:
    LODWORD(v8) = 0;
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v6 + 1;
  while (v5 - 1 != v8)
  {
    v7 = v9[v8++];
    if (v7)
    {
LABEL_9:
      while (v8 < v5)
      {
        v10 = *(v7 + 3);
        v11 = *(**v4 + ((v10 >> 22) & 0x3F8));
        v12 = *(v11 + 48);
        if (a2)
        {
          Voc::addVocReferringSausageRef(v11);
          this = WordList::addIncludingSausageRef(v12, v10 & 0xFFFFFF);
        }

        else
        {
          Voc::removeVocReferringSausageRef(v11);
          this = WordList::removeIncludingSausageRef(v12, v10 & 0xFFFFFF);
        }

        v13 = *v7;
        v5 = *(v3 + 28);
        if (!*v7)
        {
          v8 = (v8 + 1);
          if (v8 >= v5)
          {
            v13 = v7;
          }

          else
          {
            v14 = *(v3 + 96);
            v13 = *(v14 + 8 * v8);
            if (!v13)
            {
              v15 = (v14 + 8 * v8 + 8);
              v16 = ~v8 + v5;
              while (v16)
              {
                v17 = *v15++;
                v13 = v17;
                LODWORD(v8) = v8 + 1;
                --v16;
                if (v17)
                {
                  goto LABEL_21;
                }
              }

              return this;
            }
          }
        }

LABEL_21:
        v7 = v13;
      }

      return this;
    }
  }

  return this;
}

void Sausage::~Sausage(Sausage *this)
{
  if (*(this + 120) == 1)
  {
    Sausage::adjustReferenceCounts(this, 0);
    *(this + 120) = 0;
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(this + 16);
  DgnIOwnArray<SausageSlot *>::releaseAll(this);
}

void Sausage::printSize(Sausage *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4231, &v89);
  if (v90)
  {
    v16 = v89;
  }

  else
  {
    v16 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CF24, a3, &unk_26288CF24, v16);
  DgnString::~DgnString(&v89);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CF24);
  v21 = sizeObject<SausageSlot *>(this, 0);
  v22 = sizeObject<SausageSlot *>(this, 1);
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4232, &v89);
  if (v90)
  {
    v28 = v89;
  }

  else
  {
    v28 = &unk_26288CF24;
  }

  v88 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v88, &unk_26288CF24, (34 - a3), (34 - a3), v28, v21, v22, 0);
  DgnString::~DgnString(&v89);
  *a4 += v21;
  *a5 += v22;
  v29 = sizeObject(this + 40);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 8;
  }

  else
  {
    v30 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  v32 = *(this + 26) << v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 4;
  }

  else
  {
    v33 = 8;
  }

  v34 = v29 + v33 + v30 + v32 + 13;
  v35 = sizeObject(this + 40);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 8;
  }

  else
  {
    v36 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 2;
  }

  else
  {
    v37 = 3;
  }

  v38 = *(this + 26) << v37;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  v40 = v35 + v39 + v36 + v38 + 13;
  v41 = sizeObject(this + 40);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4233, &v89);
  if (v90)
  {
    v46 = v89;
  }

  else
  {
    v46 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v88, &unk_26288CF24, v23, v23, v46, v34, v40, v41);
  DgnString::~DgnString(&v89);
  *a4 += v34;
  *a5 += v40;
  *a6 += v41;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4234, &v89);
  if (v90)
  {
    v51 = v89;
  }

  else
  {
    v51 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, v88, &unk_26288CF24, v23, v23, v51, 1, 1, 0);
  DgnString::~DgnString(&v89);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4236, &v89);
  if (v90)
  {
    v56 = v89;
  }

  else
  {
    v56 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v88, &unk_26288CF24, v23, v23, v56, 1, 1, 0);
  DgnString::~DgnString(&v89);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4238, &v89);
  if (v90)
  {
    v61 = v89;
  }

  else
  {
    v61 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v88, &unk_26288CF24, v23, v23, v61, 1, 1, 0);
  DgnString::~DgnString(&v89);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4239, &v89);
  if (v90)
  {
    v66 = v89;
  }

  else
  {
    v66 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v88, &unk_26288CF24, v23, v23, v66, 8, 8, 0);
  DgnString::~DgnString(&v89);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4241, &v89);
  if (v90)
  {
    v71 = v89;
  }

  else
  {
    v71 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v88, &unk_26288CF24, v23, v23, v71, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4243, &v89);
  if (v90)
  {
    v76 = v89;
  }

  else
  {
    v76 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v88, &unk_26288CF24, v23, v23, v76, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4245, &v89);
  if (v90)
  {
    v81 = v89;
  }

  else
  {
    v81 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v88, &unk_26288CF24, v23, v23, v81, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4246, &v89);
  if (v90)
  {
    v86 = v89;
  }

  else
  {
    v86 = &unk_26288CF24;
  }

  v87 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v83, v84, v85, a3, &unk_26288CF24, (35 - a3), (35 - a3), v86, *a4, *a5, *a6);
  DgnString::~DgnString(&v89);
}

void sub_26277DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SausageSlot *>(uint64_t a1, int a2)
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
          v9 += sizeObject<CWIDProbPair>(v10, a2) + 9;
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

void *DgnArray<CWIDProbPair>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 48 * v2 - 48;
    do
    {
      CWIDProbPair::~CWIDProbPair((*a1 + v3));
      v3 -= 48;
    }

    while (v3 != -48);
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

void *DgnIOwnArray<SausageSlot *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<SausageSlot>(*(*a1 + v3));
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

SausageSlot *DgnDelete<SausageSlot>(SausageSlot *result)
{
  if (result)
  {
    SausageSlot::~SausageSlot(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t SDVoc_New(FileSpec *a1, FileSpec *a2, uint64_t a3, unsigned int *a4, FileSpec *a5, unsigned int a6, unsigned int a7, void *a8, uint64_t a9)
{
  v16 = SdapiInsurance::SdapiInsurance(v84, "SDVoc_New", 1, 1, 379);
  if (v84[97] != 1)
  {
    Voc = 0;
    goto LABEL_75;
  }

  if (!a1)
  {
    throwBadStringPointer(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  LOBYTE(v76) = 0;
  if (!a2)
  {
    throwBadStringPointer(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  LOBYTE(v76) = 0;
  if (!a5)
  {
    throwBadStringPointer(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  LOBYTE(v76) = 0;
  if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
  {
    DgnString::DgnString(&v82);
    DgnString::DgnString(&v76);
    FileSpec::getDiagnosticMaskedName(a1, &v76, v24);
    DgnString::preAllocate(&v82, 96);
    if (v77)
    {
      v25 = v76;
    }

    else
    {
      v25 = &unk_26288CF3A;
    }

    DgnString::formatStringInPlace(&v82, v25);
    DgnString::~DgnString(&v76);
    DgnString::DgnString(&v80);
    DgnString::DgnString(&v76);
    FileSpec::getDiagnosticMaskedName(a2, &v76, v26);
    DgnString::preAllocate(&v80, 96);
    if (v77)
    {
      v27 = v76;
    }

    else
    {
      v27 = &unk_26288CF3A;
    }

    DgnString::formatStringInPlace(&v80, v27);
    DgnString::~DgnString(&v76);
    DgnString::DgnString(&v78);
    DgnString::DgnString(&v76);
    FileSpec::getDiagnosticMaskedName(a5, &v76, v28);
    DgnString::preAllocate(&v78, 96);
    if (v77)
    {
      v29 = v76;
    }

    else
    {
      v29 = &unk_26288CF3A;
    }

    DgnString::formatStringInPlace(&v78, v29);
    DgnString::~DgnString(&v76);
    if (v83)
    {
      v34 = v82;
    }

    else
    {
      v34 = &unk_26288CF3A;
    }

    v35 = v80;
    if (!v81)
    {
      v35 = &unk_26288CF3A;
    }

    if (v79)
    {
      v36 = v78;
    }

    else
    {
      v36 = &unk_26288CF3A;
    }

    v37 = "SD_TRUE";
    if (a6)
    {
      v38 = "SD_TRUE";
    }

    else
    {
      v38 = "SD_FALSE";
    }

    if (!a7)
    {
      v37 = "SD_FALSE";
    }

    if (gbShowCallPointerArguments)
    {
      v39 = a4;
    }

    else
    {
      v39 = 0;
    }

    if (gbShowCallPointerArguments)
    {
      v40 = a8;
    }

    else
    {
      v40 = 0;
    }

    v41 = a9;
    if (!gbShowCallPointerArguments)
    {
      v41 = 0;
    }

    xlprintf("Entering sdapi call %.500s(%.500s, %.500s, %lld, Masked:0x%016llx, %.500s, %.500s, %.500s, Masked:0x%016llx, Masked:0x%016llx)\n", v30, v31, v32, v33, "SDVoc_New", v34, v35, a3, v39, v36, v38, v37, v40, v41);
    DgnString::~DgnString(&v78);
    DgnString::~DgnString(&v80);
    DgnString::~DgnString(&v82);
  }

  if (a6 == 1 && a7 == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 260, "sdapi/sdvoc", 23, "%s", v22, v23, &unk_26288CF3A);
  }

  if (a5)
  {
    v42 = *a5 != 0;
    v43 = a4 == 0;
    v44 = a4 != 0 || v42;
    if (a4 && *a5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 266, "sdapi/sdvoc", 19, "%s", v22, v23, &errStr_sdapi_sdvoc_E_SHAREDMEM_HAVECACHEDIR);
      v43 = 0;
      v44 = 1;
    }
  }

  else
  {
    v42 = 0;
    v43 = a4 == 0;
    v44 = a4 != 0;
  }

  if (a6 == 1 && (v44 & 1) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 273, "sdapi/sdvoc", 15, "%s", v22, v23, &errStr_sdapi_sdvoc_E_SHAREDMEM_REABSORB);
  }

  if (a7 == 1 && (v44 & 1) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 277, "sdapi/sdvoc", 16, "%s", v22, v23, &errStr_sdapi_sdvoc_E_SHAREDMEM_LOBOTOMIZE);
  }

  if (v42 && !OsFile::dirExists(a5, v17))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 281, "sdapi/sdvoc", 20, "%.500s", v45, v46, a5);
  }

  FileSpec::FileSpec(&v82, a1);
  FileSpec::FileSpec(&v80);
  if (a2 && *a2)
  {
    if (a3 != -1 && (v44 & 1) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 291, "sdapi/sdvoc", 17, "%s", v47, v48, &errStr_sdapi_sdvoc_E_SHAREDMEM_STATICVOC);
    }

    FileSpec::fillFromName(&v80, a2);
  }

  v78 = a8;
  v79 = a9;
  ProgressCallbackHandler::ProgressCallbackHandler(&v76, ProgressCallbackWrapper, &v78);
  DFileOwner::DFileOwner(v75);
  DFileOwner::DFileOwner(v74);
  v49 = DFile::openDFile(&v82, 0, 2, v75);
  if (!FileSpec::isValid(&v80))
  {
    v56 = 0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_66:
    DgnString::DgnString(v73);
    if (!v43)
    {
      DgnString::makeStringPrintf("{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}", *a4, v58, v59, v60, *a4, *(a4 + 2), *(a4 + 3), *(a4 + 8), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15));
      DgnString::operator=(v73, v72);
      DgnString::~DgnString(v72);
    }

    DgnString::DgnString(v72, a5);
    SetObject = DgnSharedMemMgr::getMaybeCreateSetObjectEx(DgnSharedMemMgr::smpDSMMgr, v72, v73, v61, v62, v63, v64, v65);
    DgnString::~DgnString(v72);
    DgnString::~DgnString(v73);
    goto LABEL_69;
  }

  v56 = DFile::openDFile(&v80, 0, 9, v74);
  if (v44)
  {
    goto LABEL_66;
  }

LABEL_64:
  SetObject = 0;
LABEL_69:
  v66 = ModelMgr::smpModelMgr;
  if (a6 >= 2)
  {
    throwBadSdapiArgument("SDBool", a6, v50, v51, v52, v53, v54, v55);
  }

  if (a7 >= 2)
  {
    throwBadSdapiArgument("SDBool", a7, v50, v51, v52, v53, v54, v55);
  }

  Voc = ModelMgr::loadVoc(v66, v49, v56, SetObject, a3, a6 == 1, a7 == 1, &v76);
  DFileOwner::~DFileOwner(v74, v68);
  DFileOwner::~DFileOwner(v75, v69);
  ProgressCallbackHandler::~ProgressCallbackHandler(&v76);
  FileSpec::~FileSpec(&v80);
  FileSpec::~FileSpec(&v82);
LABEL_75:
  SdapiInsurance::~SdapiInsurance(v84);
  return Voc;
}

uint64_t SDVoc_Save(unint64_t a1, FileSpec *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v10 = SdapiInsurance::SdapiInsurance(v55, "SDVoc_Save", 1, 0, 380);
  if (v55[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    LOBYTE(v49) = 0;
    if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
    {
      DgnString::DgnString(&v53);
      DgnString::DgnString(&v49);
      FileSpec::getDiagnosticMaskedName(a2, &v49, v18);
      DgnString::preAllocate(&v53, 96);
      if (v50)
      {
        v19 = v49;
      }

      else
      {
        v19 = &unk_26288CF3A;
      }

      DgnString::formatStringInPlace(&v53, v19);
      DgnString::~DgnString(&v49);
      if (v54)
      {
        v24 = v53;
      }

      else
      {
        v24 = &unk_26288CF3A;
      }

      v25 = "SD_TRUE";
      if (!a3)
      {
        v25 = "SD_FALSE";
      }

      if (gbShowCallPointerArguments)
      {
        v26 = a4;
      }

      else
      {
        v26 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v27 = a5;
      }

      else
      {
        v27 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, %.500s, %.500s, Masked:0x%016llx, Masked:0x%016llx)\n", v20, v21, v22, v23, "SDVoc_Save", a1, v24, v25, v26, v27);
      DgnString::~DgnString(&v53);
    }

    if (*(ApiState::smpApiState + 1) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 351, "sdapi/sdvoc", 6, "%s", v16, v17, &errStr_sdapi_sdvoc_E_SAVE_AFTER_ERROR);
    }

    FileSpec::FileSpec(&v53, a2);
    FileSpec::FileSpec(v52);
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v28, v29, v30, v31, v32, v33);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v28, v29, v30, v31, v32, v33);
    }

    if (*(ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1, v28, v29, v30, v31, v32, v33) + 136))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 358, "sdapi/sdvoc", 22, "%s", v34, v35, &errStr_sdapi_sdvoc_E_VOC_UNLOADEDLM);
    }

    v51[0] = a4;
    v51[1] = a5;
    ProgressCallbackHandler::ProgressCallbackHandler(&v49, ProgressCallbackWrapper, v51);
    v48 = 0;
    DgnString::DgnString(&v46);
    v42 = ModelMgr::smpModelMgr;
    if (a3 >= 2)
    {
      throwBadSdapiArgument("SDBool", a3, v36, v37, v38, v39, v40, v41);
    }

    ModelMgr::saveVoc(v42, a1, &v53, v52, &v48, 2, (a3 == 1), &v49, 0, 0);
    if (v48 == 2)
    {
      v43 = 3;
    }

    else if (v48)
    {
      v43 = 2;
    }

    else
    {
      v43 = 1;
    }

    if (v47)
    {
      v44 = v46;
    }

    else
    {
      v44 = &unk_26288CF3A;
    }

    ApiState::setLastResultCodeString(ApiState::smpApiState, v44);
    DgnString::~DgnString(&v46);
    ProgressCallbackHandler::~ProgressCallbackHandler(&v49);
    FileSpec::~FileSpec(v52);
    FileSpec::~FileSpec(&v53);
  }

  else
  {
    v43 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v55);
  return v43;
}

void SDVoc_Delete(unint64_t a1)
{
  SdapiInsurance::SdapiInsurance(v19, "SDVoc_Delete", 1, 0, 381);
  if (v19[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>)\n", v2, v3, v4, v5, "SDVoc_Delete", a1);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v3, v4, v5, v6, v7, v8);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v3, v4, v5, v6, v7, v8);
    }

    v9 = ModelMgr::smpModelMgr;
    VocOrThrow = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1, v3, v4, v5, v6, v7, v8);
    if (*(VocOrThrow + 136))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 401, "sdapi/sdvoc", 22, "%s", v10, v11, &errStr_sdapi_sdvoc_E_VOC_UNLOADEDLM);
    }

    if (*(VocOrThrow + 248))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 404, "sdapi/sdvoc", 3, "%u", v10, v11, a1);
    }

    if ((*(**(VocOrThrow + 72) + 192))(*(VocOrThrow + 72)))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 407, "sdapi/sdvoc", 4, "%u", v17, v18, a1);
    }

    ModelMgr::freeVoc(v9, a1, v13, v14, v15, v16, v17, v18);
  }

  SdapiInsurance::~SdapiInsurance(v19);
}

void sub_26277EAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 2)
  {
    v12 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v12, v13);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a11);
      _Unwind_Resume(a1);
    }

    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v14);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277EACCLL);
}

void SDVoc_GetInfo(unint64_t a1, uint64_t a2)
{
  SdapiInsurance::SdapiInsurance(v23, "SDVoc_GetInfo", 1, 1, 382);
  if (v23[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v11 = a2;
      }

      else
      {
        v11 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx)\n", v4, v5, v6, v7, "SDVoc_GetInfo", a1, v11);
    }

    if (!a2)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v5, v6, v7, v8, v9, v10);
    }

    v12 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v5, v6, v7, v8, v9, v10);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v5, v6, v7, v8, v9, v10);
    }

    VocOrThrow = ModelMgr::getVocOrThrow(v12, a1, v5, v6, v7, v8, v9, v10);
    v14 = *(VocOrThrow + 48);
    v16 = *(VocOrThrow + 64);
    v15 = *(VocOrThrow + 72);
    *a2 = *(v14 + 96);
    ValidIdCount = WordList::getValidIdCount(v14);
    v18 = *(v16 + 36);
    *(a2 + 4) = ValidIdCount;
    *(a2 + 8) = v18;
    v19 = 1;
    if (**(VocOrThrow + 8))
    {
      v19 = 2;
    }

    *(a2 + 16) = v19;
    *(a2 + 24) = *(*(VocOrThrow + 32) + 4);
    *(a2 + 28) = (*(*v15 + 568))(v15);
    *(a2 + 32) = *(VocOrThrow + 248);
    *(a2 + 40) = Voc::getVocReferringLatticeRefCount(VocOrThrow);
    *(a2 + 44) = Voc::getVocReferringPrefilterResultRefCount(VocOrThrow);
    *(a2 + 48) = Voc::getVocReferringSausageRefCount(VocOrThrow);
    *(a2 + 52) = Voc::getVocReferringReproRefCount(VocOrThrow);
    *(a2 + 56) = (*(*v15 + 608))(v15);
    v20 = *(VocOrThrow + 128) != -1 && *(DgnSharedMemSet::getSetCacheDir(*(VocOrThrow + 120)) + 8) < 2u;
    *(a2 + 64) = v20;
    v21 = Voc::canUnloadCachedLM(VocOrThrow);
    v22 = *(VocOrThrow + 136) == 0;
    *(a2 + 68) = v21;
    *(a2 + 72) = v22;
    *(a2 + 60) = (*(*v15 + 120))(v15);
    *(a2 + 76) = (*(*v15 + 128))(v15);
    *(a2 + 80) = WordList::getRequiredWordTagsVersion(v14);
    *(a2 + 84) = WordList::getOptionalWordTagsVersion(v14);
    *(a2 + 88) = *(v14 + 138);
    *(a2 + 92) = *(v14 + 129);
    *(a2 + 96) = (*(*v15 + 240))(v15);
    *(a2 + 104) = (*(*v15 + 248))(v15);
    *(a2 + 112) = (*(*v15 + 256))(v15);
  }

  SdapiInsurance::~SdapiInsurance(v23);
}

void sub_26277EEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a13);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277EE80);
}

void SDVoc_GetWords(unint64_t a1, unint64_t a2, char *a3, char *a4, void *a5, uint64_t a6, unsigned int *a7, void **a8, unsigned int *a9, void (*a10)(unint64_t, unsigned int, unsigned int, void *, unsigned int, void **, unsigned int *), unint64_t a11, _DWORD *a12)
{
  v20 = SdapiInsurance::SdapiInsurance(v50, "SDVoc_GetWords", 1, 1, 385);
  if (v50[97] == 1)
  {
    if (!a3)
    {
      throwBadStringPointer(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    LOBYTE(v48) = 0;
    if (!a4)
    {
      throwBadStringPointer(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    LOBYTE(v48) = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v28 = a5;
      }

      else
      {
        v28 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v29 = a7;
      }

      else
      {
        v29 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v30 = a8;
      }

      else
      {
        v30 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v31 = a9;
      }

      else
      {
        v31 = 0;
      }

      v32 = a10;
      v33 = a11;
      if (!gbShowCallPointerArguments)
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = a12;
      if (!gbShowCallPointerArguments)
      {
        v34 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, '%.500s', '%.500s', Masked:0x%016llx, %llu, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx)\n", v21, v22, v23, v24, "SDVoc_GetWords", a1, a2, a3, a4, v28, a6, v29, v30, v31, v32, v33, v34);
    }

    if (!a5 && a6)
    {
      throwBadLengthForNullPointer(a6, "DgnVerifyWritePtr", v22, v23, v24, v25, v26, v27);
    }

    if (!a7)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v22, v23, v24, v25, v26, v27);
    }

    if (!a8)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v22, v23, v24, v25, v26, v27);
    }

    if (!a9)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v22, v23, v24, v25, v26, v27);
    }

    if (!a12)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v22, v23, v24, v25, v26, v27);
    }

    if (a2 == -2)
    {
      LOWORD(a2) = -2;
      goto LABEL_48;
    }

    if (a2 != -1)
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhColl", a2, v22, v23, v24, v25, v26, v27);
      }

      if (a2 != 0xFFFF && a2)
      {
LABEL_48:
        v48 = 0;
        *v49 = 0;
        v35 = ModelMgr::smpModelMgr;
        if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1, v22, v23, v24, v25, v26, v27);
        }

        if (a1 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", a1, v22, v23, v24, v25, v26, v27);
        }

        v36 = *(ModelMgr::getVocOrThrow(v35, a1, v22, v23, v24, v25, v26, v27) + 48);
        v47 = 0;
        WordList::getWordsWithPrefix(v36, a2, a3, a4, &v48, &v47, v37, v38);
        v39 = v49[0];
        if (v49[0] <= a6)
        {
          *a8 = a5;
          *a9 = a6;
          if (!v39)
          {
LABEL_62:
            *a7 = v39;
            *a12 = v47;
            DgnPrimArray<unsigned int>::~DgnPrimArray(&v48);
            goto LABEL_63;
          }
        }

        else
        {
          ApiState::callReallocateArrayCallback(ApiState::smpApiState, a10, a11, 8, v49[0], a5, a6, a8, a9);
          if (!*a8 && *a9)
          {
            throwBadLengthForNullPointer(*a9, "DgnVerifyWritePtr", v40, v41, v42, v43, v44, v45);
          }

          v39 = v49[0];
          if (!v49[0])
          {
            goto LABEL_62;
          }
        }

        v46 = 0;
        do
        {
          *(*a8 + v46) = *(v48 + 4 * v46) + 1;
          ++v46;
        }

        while (v39 != v46);
        goto LABEL_62;
      }

      throwBadSdapiArgument("SDhColl", a2, v22, v23, v24, v25, v26, v27);
      if (a2 != 0xFFFF)
      {
        LOWORD(a2) = 0;
        goto LABEL_48;
      }
    }

    if (*a3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 521, "sdapi/sdvoc", 12, "%s", v26, v27, &errStr_sdapi_sdvoc_E_PREFIXNOCOLLATION);
    }

    LOWORD(a2) = -1;
    goto LABEL_48;
  }

LABEL_63:
  SdapiInsurance::~SdapiInsurance(v50);
}

void sub_26277F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  if (a2 == 2)
  {
    v29 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v29, v30);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a28);
      _Unwind_Resume(a1);
    }

    v31 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v31);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277F260);
}

uint64_t SDVoc_GetAllowedWordCollations(unint64_t a1, uint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v21, "SDVoc_GetAllowedWordCollations", 1, 1, 386);
  if (v21[97] == 1)
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

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, v7, v8, v9, "SDVoc_GetAllowedWordCollations", a1, v13, a3);
    }

    if (!a2 && a3)
    {
      throwBadLengthForNullPointer(a3, "DgnVerifyWritePtr", v7, v8, v9, v10, v11, v12);
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

    VocOrThrow = ModelMgr::getVocOrThrow(v14, a1, v7, v8, v9, v10, v11, v12);
    Colls = WordList::getColls(*(VocOrThrow + 48));
    v17 = *(Colls + 8);
    if (a3)
    {
      v18 = 0;
      do
      {
        if (v17 == v18)
        {
          break;
        }

        v19 = *(*Colls + 2 * v18);
        if ((v19 + 1) >= 2u)
        {
          if (v19 == 65534)
          {
            v19 = -2;
          }
        }

        else
        {
          v19 = -1;
        }

        *(a2 + 8 * v18++) = v19;
      }

      while (a3 != v18);
    }
  }

  else
  {
    v17 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v21);
  return v17;
}

void SDVoc_SetAllowedWordCollations(unint64_t a1, uint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v23, "SDVoc_SetAllowedWordCollations", 1, 0, 387);
  if (v23[97] != 1)
  {
    goto LABEL_36;
  }

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

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, v7, v8, v9, "SDVoc_SetAllowedWordCollations", a1, v13, a3);
  }

  if (!a2 && a3)
  {
    throwBadLengthForNullPointer(a3, "DgnVerifyReadPtr", v7, v8, v9, v10, v11, v12);
    v21 = 0;
    v22 = 0;
    goto LABEL_11;
  }

  v21 = 0;
  v22 = 0;
  if (a3)
  {
LABEL_11:
    v24 = 0;
    v14 = realloc_array(0, &v24, 2 * a3, 0, 0, 1);
    v15 = 0;
    v21 = v24;
    LODWORD(v22) = a3;
    HIDWORD(v22) = v14 >> 1;
    do
    {
      v16 = *(a2 + 8 * v15);
      if (v16 == -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 586, "sdapi/sdvoc", 9, "%s", v11, v12, &errStr_sdapi_sdvoc_E_SETCOLL_WITH_NONE);
        v16 = *(a2 + 8 * v15);
      }

      if (v16 == -1)
      {
        LOWORD(v16) = -1;
      }

      else if (v16 == -2)
      {
        LOWORD(v16) = -2;
      }

      else
      {
        if (HIDWORD(v16))
        {
          v17 = 0;
        }

        else
        {
          v17 = (v16 & 0xFFFF0000) == 0;
        }

        if (!v17)
        {
          throwBadSdapiArgument("SDhColl", v16, v7, v8, v9, v10, v11, v12);
        }

        if (v16 == 0xFFFF || v16 == 0)
        {
          throwBadSdapiArgument("SDhColl", v16, v7, v8, v9, v10, v11, v12);
        }
      }

      v21[v15++] = v16;
    }

    while (a3 != v15);
    goto LABEL_30;
  }

  LODWORD(v22) = 0;
LABEL_30:
  v19 = ModelMgr::smpModelMgr;
  if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", a1, v7, v8, v9, v10, v11, v12);
  }

  if (a1 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", a1, v7, v8, v9, v10, v11, v12);
  }

  VocOrThrow = ModelMgr::getVocOrThrow(v19, a1, v7, v8, v9, v10, v11, v12);
  WordList::setColls(*(VocOrThrow + 48), &v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
LABEL_36:
  SdapiInsurance::~SdapiInsurance(v23);
}

void sub_26277F754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
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
  JUMPOUT(0x26277F724);
}

uint64_t SDVoc_GetCollationName(unint64_t a1, unint64_t a2, char *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v27, "SDVoc_GetCollationName", 1, 1, 389);
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

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, v9, v10, v11, "SDVoc_GetCollationName", a1, a2, v15, a4);
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

    v23 = *(ModelMgr::getVocOrThrow(v16, a1, v9, v10, v11, v12, v13, v14) + 16);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else if (a2 == -2)
    {
      LOWORD(a2) = -2;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhColl", a2, v17, v18, v19, v20, v21, v22);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhColl", a2, v17, v18, v19, v20, v21, v22);
      }
    }

    CollationName = CollMgr::getCollationName(v23, a2, v17, v18, v19, v20, v21, v22);
    v25 = sdUtilStrMove(a3, a4, CollationName);
  }

  else
  {
    v25 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v27);
  return v25;
}

uint64_t SDVoc_GetColls(unint64_t a1, void *a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v30, "SDVoc_GetColls", 1, 1, 390);
  if (v30[97] != 1)
  {
    v26 = 0;
    goto LABEL_31;
  }

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

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, v7, v8, v9, "SDVoc_GetColls", a1, v13, a3);
  }

  if (!a2 && a3)
  {
    throwBadLengthForNullPointer(a3, "DgnVerifyWritePtr", v7, v8, v9, v10, v11, v12);
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

  VocOrThrow = ModelMgr::getVocOrThrow(v14, a1, v7, v8, v9, v10, v11, v12);
  ActiveCollations = CollMgr::getActiveCollations(*(VocOrThrow + 16));
  v28 = 0;
  *v29 = 0;
  v17 = *(ActiveCollations + 8);
  if (v17)
  {
    v31 = 0;
    v29[1] = realloc_array(0, &v31, 8 * v17, 0, 0, 1) >> 3;
    v18 = v31;
    v28 = v31;
    v19 = *(ActiveCollations + 8);
    if (v19)
    {
      for (i = 0; i < v19; ++i)
      {
        v21 = *(*ActiveCollations + 2 * i);
        v22 = (v21 + 1);
        if (v21 == 65534)
        {
          v21 = -2;
        }

        if (v22 >= 2)
        {
          v23 = v21;
        }

        else
        {
          v23 = -1;
        }

        v24 = v29[0];
        if (v29[0] == v29[1])
        {
          DgnPrimArray<unsigned long long>::reallocElts(&v28, 1, 1);
          v24 = v29[0];
          v19 = *(ActiveCollations + 8);
        }

        v28[v24] = v23;
        v25 = v24 + 1;
        v29[0] = v24 + 1;
      }

      v18 = v28;
      goto LABEL_29;
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = v29[0];
LABEL_29:
  v26 = sdUtilItemMove(8, v18, v25, a2, a3);
  DgnIArray<Utterance *>::~DgnIArray(&v28);
LABEL_31:
  SdapiInsurance::~SdapiInsurance(v30);
  return v26;
}

void MrecInitModule_wordlm_lm(void)
{
  if (!gParDebugShowClonedLmIdsOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowClonedLmIdsOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowClonedLmIdsOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowClonedLmIdsOnLoad);
  }

  if (!gParDebugShowLMInfoOnLoad)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowLMInfoOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowLMInfoOnLoad = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowLMInfoOnLoad);
  }

  if (!gParDebugShowLMOnLoad)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowLMOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowLMOnLoad = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowLMOnLoad);
  }

  if (!gParDebugShowWordLMDistributionOnLoad)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugShowWordLMDistributionOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugShowWordLMDistributionOnLoad = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowWordLMDistributionOnLoad);
  }

  if (!gParDebugLMScoring)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugLMScoring", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugLMScoring = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLMScoring);
  }

  if (!gParDebugLMAddDelete)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugLMAddDelete", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugLMAddDelete = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLMAddDelete);
  }

  if (!gParDebugCopyLM)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugCopyLM", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugCopyLM = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugCopyLM);
  }

  if (!gParDebugWordLMBuild)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DebugWordLMBuild", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDebugWordLMBuild = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMBuild);
  }

  if (!gParDebugWordLMStaticization)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "DebugWordLMStaticization", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v17 = &unk_287527EA0;
    gParDebugWordLMStaticization = v17;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMStaticization);
  }

  if (!gParDebugWordLMBuildShowContextProbs)
  {
    v18 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v18, "DebugWordLMBuildShowContextProbs", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v19 = &unk_287527EA0;
    gParDebugWordLMBuildShowContextProbs = v19;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMBuildShowContextProbs);
  }

  if (!gParDebugWordLMDynamicLoad)
  {
    v20 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v20, "DebugWordLMDynamicLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v21 = &unk_287527EA0;
    gParDebugWordLMDynamicLoad = v21;
    v22 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v22, &gParDebugWordLMDynamicLoad);
  }
}

uint64_t DiskNgramContextBiTriIsolatedCmp::compareElements(DiskNgramContextBiTriIsolatedCmp *this, void *a2, void *a3, const void *a4)
{
  v4 = a2[1];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = *a2 / v4;
  }

  v7 = a3[1];
  if (v7)
  {
    v5 = *a3 / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = *a2 / v4;
  }

  if (v7)
  {
    v9 = *a3 / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 34);
  if (v11 == 3)
  {
    result = 1;
    if (*(a3 + 34) == 2)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 2 && *(a3 + 34) == 3)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(result) = 0;
  }

  v12 = *(a2 + 6);
  v13 = *(a3 + 6);
  if (v12 < v13)
  {
    return 0xFFFFFFFFLL;
  }

  if (v12 > v13)
  {
    return 1;
  }

  if (result)
  {
    v14 = *(a2 + 7);
    v15 = *(a3 + 7);
    if (v14 >= v15)
    {
      return v14 > v15;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DiskNgramContextBiTriGroupTrigramsCmp::compareElements(DiskNgramContextBiTriGroupTrigramsCmp *this, float *a2, float *a3, const void *a4)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a2[1] / v4;
  }

  v7 = *(a3 + 2);
  if (v7)
  {
    v5 = a3[1] / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = a2[1] / v4;
  }

  if (v7)
  {
    v9 = a3[1] / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 34);
  if (v11 == 3)
  {
    result = 1;
    if (*(a3 + 34) == 2)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 2 && *(a3 + 34) == 3)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(result) = 0;
  }

  v12 = *(a2 + 1);
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v14 = *a2 / v12;
  }

  v15 = *(a3 + 1);
  if (v15)
  {
    v13 = *a3 / v15;
  }

  if (v14 > v13)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 0.0;
  v17 = 0.0;
  if (v12)
  {
    v17 = *a2 / v12;
  }

  if (v15)
  {
    v16 = *a3 / v15;
  }

  if (v17 < v16)
  {
    return 1;
  }

  v18 = *(a2 + 6);
  v19 = *(a3 + 6);
  if (v18 < v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (v18 > v19)
  {
    return 1;
  }

  if (result)
  {
    v20 = *(a2 + 7);
    v21 = *(a3 + 7);
    if (v20 >= v21)
    {
      return v20 > v21;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(DiskNgramContextBiTriGroupTrigramsWithBigramsCmp *this, float *a2, float *a3, const void *a4)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a2[1] / v4;
  }

  v7 = *(a3 + 2);
  if (v7)
  {
    v5 = a3[1] / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = a2[1] / v4;
  }

  if (v7)
  {
    v9 = a3[1] / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 6);
  v12 = *(a3 + 6);
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  v13 = *(a2 + 34);
  if (v13 == 3)
  {
    result = 1;
    if (*(a3 + 34) == 2)
    {
      return result;
    }
  }

  else
  {
    if (v13 == 2 && *(a3 + 34) == 3)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(result) = 0;
  }

  v14 = *(a2 + 1);
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v16 = *a2 / v14;
  }

  v17 = *(a3 + 1);
  if (v17)
  {
    v15 = *a3 / v17;
  }

  if (v16 > v15)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0.0;
  v19 = 0.0;
  if (v14)
  {
    v19 = *a2 / v14;
  }

  if (v17)
  {
    v18 = *a3 / v17;
  }

  if (v19 < v18)
  {
    return 1;
  }

  if (result)
  {
    v20 = *(a2 + 7);
    v21 = *(a3 + 7);
    if (v20 >= v21)
    {
      return v20 > v21;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DiskNgramContextQuadIsolatedCmp::compareElements(DiskNgramContextQuadIsolatedCmp *this, void *a2, void *a3, const void *a4)
{
  v4 = a2[1];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = *a2 / v4;
  }

  v7 = a3[1];
  if (v7)
  {
    v5 = *a3 / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = *a2 / v4;
  }

  if (v7)
  {
    v9 = *a3 / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 6);
  v12 = *(a3 + 6);
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  v13 = *(a2 + 7);
  v14 = *(a3 + 7);
  v15 = v13 >= v14;
  v16 = v13 > v14;
  if (v15)
  {
    return v16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DiskNgramContextQuadGroupCmp::compareElements(DiskNgramContextQuadGroupCmp *this, float *a2, float *a3, const void *a4)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a2[1] / v4;
  }

  v7 = *(a3 + 2);
  if (v7)
  {
    v5 = a3[1] / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = a2[1] / v4;
  }

  if (v7)
  {
    v9 = a3[1] / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 6);
  v12 = *(a3 + 6);
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  v13 = *(a2 + 1);
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = *a2 / v13;
  }

  v16 = *(a3 + 1);
  if (v16)
  {
    v14 = *a3 / v16;
  }

  if (v15 > v14)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = 0.0;
  v18 = 0.0;
  if (v13)
  {
    v18 = *a2 / v13;
  }

  if (v16)
  {
    v17 = *a3 / v16;
  }

  if (v18 < v17)
  {
    return 1;
  }

  v19 = *(a2 + 7);
  v20 = *(a3 + 7);
  if (v19 < v20)
  {
    return 0xFFFFFFFFLL;
  }

  return v19 > v20;
}

uint64_t WordIdAndCountCmp::compareElements(WordIdAndCountCmp *this, unsigned int *a2, unsigned int *a3, const void *a4)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 == v6)
  {
    WordIdWordName = WordLanguageModel::getWordIdWordName(this, *a2);
    v10 = WordLanguageModel::getWordIdWordName(this, *a3);

    return strcmp(WordIdWordName, v10);
  }

  else if (v5 > v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

const char *WordLanguageModel::getWordIdWordName(WordLanguageModel *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (*(v2 + 388) > a2 && *(*(v2 + 104) + a2))
  {
    return (*(v2 + 224) + *(*(v2 + 200) + 4 * a2));
  }

  if (a2 - 16777212 > 3)
  {
    return "UNKNOWN";
  }

  return off_279B407A8[a2 - 16777212];
}

void BigramData::BigramData(BigramData *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  DgnString::DgnString((this + 24));
  DgnString::DgnString((this + 40));
  DgnString::DgnString((this + 56));
  DgnString::DgnString((this + 72));
  *this = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 47) = 0;
  *(this + 88) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
}

void sub_2627808C8(_Unwind_Exception *a1)
{
  BitArray::~BitArray((v1 + 56));
  BitArray::~BitArray((v1 + 40));
  BitArray::~BitArray((v2 + 16));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void BigramData::~BigramData(BigramData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 368);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 336);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 320);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 176);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(this + 88);
  BitArray::~BitArray((this + 72));
  BitArray::~BitArray((this + 56));
  BitArray::~BitArray((this + 40));
  BitArray::~BitArray((this + 24));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

void *BigramData::compact(BigramData *this)
{
  BitArray::compact((this + 24));
  BitArray::compact((this + 40));
  BitArray::compact((this + 72));
  BitArray::compact((this + 56));
  DgnPrimArray<unsigned int>::compact(this + 176);
  DgnPrimArray<unsigned short>::compact(this + 192);
  DgnPrimArray<unsigned short>::compact(this + 208);
  DgnPrimArray<unsigned char>::compact(this + 28);
  DgnPrimArray<unsigned short>::compact(this + 240);
  DgnPrimArray<unsigned short>::compact(this + 256);
  DgnPrimArray<unsigned char>::compact(this + 34);
  DgnPrimArray<unsigned int>::compact(this + 288);
  DgnPrimArray<unsigned int>::compact(this + 304);
  DgnPrimArray<unsigned int>::compact(this + 320);
  DgnPrimArray<unsigned short>::compact(this + 336);
  DgnPrimArray<unsigned short>::compact(this + 352);

  return DgnPrimArray<unsigned char>::compact(this + 46);
}

uint64_t BigramData::bi1SetEmpty(uint64_t this, unsigned int a2)
{
  v2 = a2 >> 5;
  *(*(this + 24) + 4 * (a2 >> 5)) &= ~(1 << a2);
  if (*this)
  {
    v3 = ~(1 << a2);
    *(*(this + 40) + 4 * v2) &= v3;
    *(*(this + 56) + 4 * v2) &= v3;
    if (*(this + 96))
    {
      *(*(this + 72) + 4 * v2) &= v3;
    }
  }

  *(*(this + 176) + 4 * a2) = -1;
  *(*(this + 192) + 2 * a2) = 0;
  return this;
}

void BigramData::printSize(BigramData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 840, &v224);
  if (v225)
  {
    v16 = v224;
  }

  else
  {
    v16 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v16);
  DgnString::~DgnString(&v224);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CFB0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v27 = v224;
  }

  else
  {
    v27 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v224);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v32 = v224;
  }

  else
  {
    v32 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  v223 = a3;
  DgnString::~DgnString(&v224);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  else
  {
    v33 = 16;
  }

  v34 = *(this + 4);
  v35 = *(this + 5);
  if (v35 >= v34)
  {
    v36 = 0;
    if (v34 > 0)
    {
      v33 += 2 * (v34 - 1) + 2;
    }

    v37 = v33 + 2 * (v35 - v34);
  }

  else
  {
    v36 = 2 * v34;
    v37 = v33;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v42 = v224;
  }

  else
  {
    v42 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, v21, &unk_26288CFB0, v22, v22, v42, v37, v33, v36);
  DgnString::~DgnString(&v224);
  *a4 += v37;
  *a5 += v33;
  *a6 += v36;
  v43 = BitArray::sizeObject(this + 24, 0);
  v44 = BitArray::sizeObject(this + 24, 1);
  v45 = BitArray::sizeObject(this + 24, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v50 = v224;
  }

  else
  {
    v50 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v21, &unk_26288CFB0, v22, v22, v50, v43, v44, v45);
  DgnString::~DgnString(&v224);
  *a4 += v43;
  *a5 += v44;
  *a6 += v45;
  v51 = BitArray::sizeObject(this + 40, 0);
  v52 = BitArray::sizeObject(this + 40, 1);
  v53 = BitArray::sizeObject(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v58 = v224;
  }

  else
  {
    v58 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, v21, &unk_26288CFB0, v22, v22, v58, v51, v52, v53);
  DgnString::~DgnString(&v224);
  *a4 += v51;
  *a5 += v52;
  *a6 += v53;
  v59 = BitArray::sizeObject(this + 56, 0);
  v60 = BitArray::sizeObject(this + 56, 1);
  v61 = BitArray::sizeObject(this + 56, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v66 = v224;
  }

  else
  {
    v66 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_26288CFB0, v22, v22, v66, v59, v60, v61);
  DgnString::~DgnString(&v224);
  *a4 += v59;
  *a5 += v60;
  *a6 += v61;
  v67 = BitArray::sizeObject(this + 72, 0);
  v68 = BitArray::sizeObject(this + 72, 1);
  v69 = BitArray::sizeObject(this + 72, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v74 = v224;
  }

  else
  {
    v74 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v21, &unk_26288CFB0, v22, v22, v74, v67, v68, v69);
  DgnString::~DgnString(&v224);
  *a4 += v67;
  *a5 += v68;
  *a6 += v69;
  v75 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 88, 0);
  v76 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 88, 1);
  v77 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 88, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v82 = v224;
  }

  else
  {
    v82 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v21, &unk_26288CFB0, v22, v22, v82, v75, v76, v77);
  DgnString::~DgnString(&v224);
  *a4 += v75;
  *a5 += v76;
  *a6 += v77;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 12;
  }

  else
  {
    v83 = 16;
  }

  v84 = *(this + 46);
  v85 = *(this + 47);
  if (v85 >= v84)
  {
    v86 = 0;
    if (v84 > 0)
    {
      v83 += 4 * (v84 - 1) + 4;
    }

    v87 = v83 + 4 * (v85 - v84);
  }

  else
  {
    v86 = 4 * v84;
    v87 = v83;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v92 = v224;
  }

  else
  {
    v92 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &unk_26288CFB0, v22, v22, v92, v87, v83, v86);
  DgnString::~DgnString(&v224);
  *a4 += v87;
  *a5 += v83;
  *a6 += v86;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v93 = 12;
  }

  else
  {
    v93 = 16;
  }

  v94 = *(this + 50);
  v95 = *(this + 51);
  if (v95 >= v94)
  {
    v96 = 0;
    if (v94 > 0)
    {
      v93 += 2 * (v94 - 1) + 2;
    }

    v97 = v93 + 2 * (v95 - v94);
  }

  else
  {
    v96 = 2 * v94;
    v97 = v93;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v102 = v224;
  }

  else
  {
    v102 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v99, v100, v101, v21, &unk_26288CFB0, v22, v22, v102, v97, v93, v96);
  DgnString::~DgnString(&v224);
  *a4 += v97;
  *a5 += v93;
  *a6 += v96;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v103 = 12;
  }

  else
  {
    v103 = 16;
  }

  v104 = *(this + 54);
  v105 = *(this + 55);
  if (v105 >= v104)
  {
    v106 = 0;
    if (v104 > 0)
    {
      v103 += 2 * (v104 - 1) + 2;
    }

    v107 = v103 + 2 * (v105 - v104);
  }

  else
  {
    v106 = 2 * v104;
    v107 = v103;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v112 = v224;
  }

  else
  {
    v112 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v109, v110, v111, v21, &unk_26288CFB0, v22, v22, v112, v107, v103, v106);
  DgnString::~DgnString(&v224);
  *a4 += v107;
  *a5 += v103;
  *a6 += v106;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = *(this + 58);
  v115 = *(this + 59);
  v116 = v115 >= v114;
  v117 = v115 - v114;
  if (v116)
  {
    if (v114 > 0)
    {
      v118 = (v114 - 1) + v113 + 1;
    }

    else
    {
      v118 = v113;
    }

    v113 = v118 + v117;
    v114 = 0;
  }

  else
  {
    v118 = v113;
  }

  v119 = v114;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v124 = v224;
  }

  else
  {
    v124 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v121, v122, v123, v21, &unk_26288CFB0, v22, v22, v124, v113, v118, v119);
  DgnString::~DgnString(&v224);
  *a4 += v113;
  *a5 += v118;
  *a6 += v119;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v125 = 12;
  }

  else
  {
    v125 = 16;
  }

  v126 = *(this + 62);
  v127 = *(this + 63);
  if (v127 >= v126)
  {
    v128 = 0;
    if (v126 > 0)
    {
      v125 += 2 * (v126 - 1) + 2;
    }

    v129 = v125 + 2 * (v127 - v126);
  }

  else
  {
    v128 = 2 * v126;
    v129 = v125;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v134 = v224;
  }

  else
  {
    v134 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v131, v132, v133, v21, &unk_26288CFB0, v22, v22, v134, v129, v125, v128);
  DgnString::~DgnString(&v224);
  *a4 += v129;
  *a5 += v125;
  *a6 += v128;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v135 = 12;
  }

  else
  {
    v135 = 16;
  }

  v136 = *(this + 66);
  v137 = *(this + 67);
  if (v137 >= v136)
  {
    v138 = 0;
    if (v136 > 0)
    {
      v135 += 2 * (v136 - 1) + 2;
    }

    v139 = v135 + 2 * (v137 - v136);
  }

  else
  {
    v138 = 2 * v136;
    v139 = v135;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v144 = v224;
  }

  else
  {
    v144 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v141, v142, v143, v21, &unk_26288CFB0, v22, v22, v144, v139, v135, v138);
  DgnString::~DgnString(&v224);
  *a4 += v139;
  *a5 += v135;
  *a6 += v138;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v145 = 12;
  }

  else
  {
    v145 = 16;
  }

  v146 = *(this + 70);
  v147 = *(this + 71);
  v116 = v147 >= v146;
  v148 = v147 - v146;
  if (v116)
  {
    if (v146 > 0)
    {
      v149 = (v146 - 1) + v145 + 1;
    }

    else
    {
      v149 = v145;
    }

    v145 = v149 + v148;
    v146 = 0;
  }

  else
  {
    v149 = v145;
  }

  v150 = v146;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v155 = v224;
  }

  else
  {
    v155 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v151, v152, v153, v154, v21, &unk_26288CFB0, v22, v22, v155, v145, v149, v150);
  DgnString::~DgnString(&v224);
  *a4 += v145;
  *a5 += v149;
  *a6 += v150;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v156 = 12;
  }

  else
  {
    v156 = 16;
  }

  v157 = *(this + 74);
  v158 = *(this + 75);
  if (v158 >= v157)
  {
    v159 = 0;
    if (v157 > 0)
    {
      v156 += 4 * (v157 - 1) + 4;
    }

    v160 = v156 + 4 * (v158 - v157);
  }

  else
  {
    v159 = 4 * v157;
    v160 = v156;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v165 = v224;
  }

  else
  {
    v165 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v161, v162, v163, v164, v21, &unk_26288CFB0, v22, v22, v165, v160, v156, v159);
  DgnString::~DgnString(&v224);
  *a4 += v160;
  *a5 += v156;
  *a6 += v159;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v166 = 12;
  }

  else
  {
    v166 = 16;
  }

  v167 = *(this + 78);
  v168 = *(this + 79);
  if (v168 >= v167)
  {
    v169 = 0;
    if (v167 > 0)
    {
      v166 += 4 * (v167 - 1) + 4;
    }

    v170 = v166 + 4 * (v168 - v167);
  }

  else
  {
    v169 = 4 * v167;
    v170 = v166;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v175 = v224;
  }

  else
  {
    v175 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v172, v173, v174, v21, &unk_26288CFB0, v22, v22, v175, v170, v166, v169);
  DgnString::~DgnString(&v224);
  *a4 += v170;
  *a5 += v166;
  *a6 += v169;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v176 = 12;
  }

  else
  {
    v176 = 16;
  }

  v177 = *(this + 82);
  v178 = *(this + 83);
  if (v178 >= v177)
  {
    v179 = 0;
    if (v177 > 0)
    {
      v176 += 4 * (v177 - 1) + 4;
    }

    v180 = v176 + 4 * (v178 - v177);
  }

  else
  {
    v179 = 4 * v177;
    v180 = v176;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v185 = v224;
  }

  else
  {
    v185 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v182, v183, v184, v21, &unk_26288CFB0, v22, v22, v185, v180, v176, v179);
  DgnString::~DgnString(&v224);
  *a4 += v180;
  *a5 += v176;
  *a6 += v179;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v186 = 12;
  }

  else
  {
    v186 = 16;
  }

  v187 = *(this + 86);
  v188 = *(this + 87);
  if (v188 >= v187)
  {
    v189 = 0;
    if (v187 > 0)
    {
      v186 += 2 * (v187 - 1) + 2;
    }

    v190 = v186 + 2 * (v188 - v187);
  }

  else
  {
    v189 = 2 * v187;
    v190 = v186;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v195 = v224;
  }

  else
  {
    v195 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v192, v193, v194, v21, &unk_26288CFB0, v22, v22, v195, v190, v186, v189);
  DgnString::~DgnString(&v224);
  *a4 += v190;
  *a5 += v186;
  *a6 += v189;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v196 = 12;
  }

  else
  {
    v196 = 16;
  }

  v197 = *(this + 90);
  v198 = *(this + 91);
  if (v198 >= v197)
  {
    v199 = 0;
    if (v197 > 0)
    {
      v196 += 2 * (v197 - 1) + 2;
    }

    v200 = v196 + 2 * (v198 - v197);
  }

  else
  {
    v199 = 2 * v197;
    v200 = v196;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v205 = v224;
  }

  else
  {
    v205 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v202, v203, v204, v21, &unk_26288CFB0, v22, v22, v205, v200, v196, v199);
  DgnString::~DgnString(&v224);
  *a4 += v200;
  *a5 += v196;
  *a6 += v199;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v206 = 12;
  }

  else
  {
    v206 = 16;
  }

  v207 = *(this + 94);
  v208 = *(this + 95);
  v116 = v208 >= v207;
  v209 = v208 - v207;
  if (v116)
  {
    if (v207 > 0)
    {
      v210 = (v207 - 1) + v206 + 1;
    }

    else
    {
      v210 = v206;
    }

    v206 = v210 + v209;
    v207 = 0;
  }

  else
  {
    v210 = v206;
  }

  v211 = v207;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843, &v224);
  if (v225)
  {
    v216 = v224;
  }

  else
  {
    v216 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v212, v213, v214, v215, v21, &unk_26288CFB0, v22, v22, v216, v206, v210, v211);
  DgnString::~DgnString(&v224);
  *a4 += v206;
  *a5 += v210;
  *a6 += v211;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 845, &v224);
  if (v225)
  {
    v221 = v224;
  }

  else
  {
    v221 = &unk_26288CFB0;
  }

  v222 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v217, v218, v219, v220, v223, &unk_26288CFB0, (35 - v223), (35 - v223), v221, *a4, *a5, *a6);
  DgnString::~DgnString(&v224);
}

void sub_262781AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *BigramData::copyBigramData(int **this, const BigramData *a2)
{
  *this = *a2;
  v4 = (this + 30);
  DgnPrimArray<unsigned short>::copyArraySlice((this + 1), a2 + 1, 0, *(a2 + 4));
  BitArray::operator=(this + 3, a2 + 24);
  BitArray::operator=(this + 5, a2 + 40);
  BitArray::operator=(this + 7, a2 + 56);
  BitArray::operator=(this + 9, a2 + 72);
  HuffmanDecoder<unsigned short,unsigned int>::operator=((this + 11), a2 + 88);
  DgnPrimArray<int>::copyArraySlice((this + 22), a2 + 22, 0, *(a2 + 46));
  DgnPrimArray<unsigned short>::copyArraySlice((this + 24), a2 + 24, 0, *(a2 + 50));
  DgnPrimArray<unsigned short>::copyArraySlice((this + 26), a2 + 26, 0, *(a2 + 54));
  DgnPrimArray<unsigned char>::copyArraySlice((this + 28), a2 + 28, 0, *(a2 + 58));
  DgnPrimArray<unsigned short>::copyArraySlice(v4, a2 + 30, 0, *(a2 + 62));
  DgnPrimArray<unsigned short>::copyArraySlice((this + 32), a2 + 32, 0, *(a2 + 66));
  DgnPrimArray<unsigned char>::copyArraySlice((this + 34), a2 + 34, 0, *(a2 + 70));
  DgnPrimArray<int>::copyArraySlice((this + 36), a2 + 36, 0, *(a2 + 74));
  DgnPrimArray<int>::copyArraySlice((this + 38), a2 + 38, 0, *(a2 + 78));
  DgnPrimArray<int>::copyArraySlice((this + 40), a2 + 40, 0, *(a2 + 82));
  DgnPrimArray<unsigned short>::copyArraySlice((this + 42), a2 + 42, 0, *(a2 + 86));
  DgnPrimArray<unsigned short>::copyArraySlice((this + 44), a2 + 44, 0, *(a2 + 90));
  DgnPrimArray<unsigned char>::copyArraySlice((this + 46), a2 + 46, 0, *(a2 + 94));

  return BigramData::compact(this);
}

unint64_t HuffmanDecoder<unsigned short,unsigned int>::operator=(unint64_t a1, uint64_t a2)
{
  DgnPrimArray<int>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  DgnPrimArray<unsigned char>::copyArraySlice(a1 + 16, (a2 + 16), 0, *(a2 + 24));
  DgnPrimArray<int>::copyArraySlice(a1 + 32, (a2 + 32), 0, *(a2 + 40));
  DgnPrimArray<unsigned short>::copyArraySlice(a1 + 48, (a2 + 48), 0, *(a2 + 56));
  *(a1 + 64) = *(a2 + 64);
  DgnPrimArray<int>::copyArraySlice(a1 + 72, (a2 + 72), 0, *(a2 + 80));
  return a1;
}

uint64_t BigramData::saveBinary(BigramData *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject<unsigned short>(a2, this + 8, a3);
  writeObject(a2, this + 24, a3);
  writeObject(a2, this + 40, a3);
  writeObject(a2, this + 56, a3);
  writeObject(a2, this + 72, a3);
  HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 88, a2, a3);
  writeObject<unsigned int>(a2, this + 176, a3);
  writeObject<unsigned short>(a2, this + 192, a3);
  writeObject<unsigned short>(a2, this + 208, a3);
  writeObject<unsigned char>(a2, this + 224, a3);
  writeObject<unsigned short>(a2, this + 240, a3);
  writeObject<unsigned short>(a2, this + 256, a3);
  writeObject<unsigned char>(a2, this + 272, a3);
  writeObject<unsigned int>(a2, this + 288, a3);
  writeObject<unsigned int>(a2, this + 304, a3);
  writeObject<unsigned int>(a2, this + 320, a3);
  writeObject<unsigned short>(a2, this + 336, a3);
  writeObject<unsigned short>(a2, this + 352, a3);

  return writeObject<unsigned char>(a2, this + 368, a3);
}

void BigramData::loadBinary(BigramData *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this, a3);
  readObject(a2, this + 1, a3);
  readObject<unsigned short>(a2, this + 8, a3);
  readObject(a2, (this + 24), a3);
  readObject(a2, (this + 40), a3);
  readObject(a2, (this + 56), a3);
  readObject(a2, (this + 72), a3);
  HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 88, a2, a3);
  readObject<unsigned int>(a2, this + 176, a3);
  readObject<unsigned short>(a2, this + 192, a3);
  readObject<unsigned short>(a2, this + 208, a3);
  readObject<unsigned char>(a2, this + 224, a3);
  readObject<unsigned short>(a2, this + 240, a3);
  readObject<unsigned short>(a2, this + 256, a3);
  readObject<unsigned char>(a2, this + 272, a3);
  readObject<unsigned int>(a2, this + 288, a3);
  readObject<unsigned int>(a2, this + 304, a3);
  readObject<unsigned int>(a2, this + 320, a3);
  readObject<unsigned short>(a2, this + 336, a3);
  readObject<unsigned short>(a2, this + 352, a3);

  readObject<unsigned char>(a2, this + 368, a3);
}

char *BigramData::saveBinaryShared(BigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    writeObject(a2, this, a4);
    writeObject(a2, this + 1, a4);
    writeSharedObject<short>(a2, this + 8, a4);
    writeSharedObject(a2, (this + 24), a4);
    writeSharedObject(a2, (this + 40), a4);
    writeSharedObject(a2, (this + 56), a4);
    writeSharedObject(a2, (this + 72), a4);
    HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 88, a2, a4);
  }

  else
  {
    writeSharedObject<short>(a2, this + 8, a4);
    writeSharedObject(a2, (this + 24), a4);
    writeSharedObject(a2, (this + 40), a4);
    writeSharedObject(a2, (this + 56), a4);
    writeSharedObject(a2, (this + 72), a4);
  }

  writeSharedObject<unsigned int>(a2, this + 176, a4);
  writeSharedObject<short>(a2, this + 192, a4);
  writeSharedObject<short>(a2, this + 208, a4);
  writeSharedObject<unsigned char>(a2, this + 224, a4);
  writeSharedObject<short>(a2, this + 240, a4);
  writeSharedObject<short>(a2, this + 256, a4);
  writeSharedObject<unsigned char>(a2, this + 272, a4);
  writeSharedObject<unsigned int>(a2, this + 288, a4);
  writeSharedObject<unsigned int>(a2, this + 304, a4);
  writeSharedObject<unsigned int>(a2, this + 320, a4);
  writeSharedObject<short>(a2, this + 336, a4);
  writeSharedObject<short>(a2, this + 352, a4);

  return writeSharedObject<unsigned char>(a2, this + 368, a4);
}

int *BigramData::loadBinaryShared(BigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    readObject(a2, this, a4);
    readObject(a2, this + 1, a4);
    readSharedObject<short>(a2, this + 8, a4);
    readSharedObject(a2, (this + 24), a4);
    readSharedObject(a2, (this + 40), a4);
    readSharedObject(a2, (this + 56), a4);
    readSharedObject(a2, (this + 72), a4);
    HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 88, a2, a4);
  }

  else
  {
    readSharedObject<short>(a2, this + 8, a4);
    readSharedObject(a2, (this + 24), a4);
    readSharedObject(a2, (this + 40), a4);
    readSharedObject(a2, (this + 56), a4);
    readSharedObject(a2, (this + 72), a4);
  }

  readSharedObject<unsigned int>(a2, this + 176, a4);
  readSharedObject<short>(a2, this + 192, a4);
  readSharedObject<short>(a2, this + 208, a4);
  readSharedObject<unsigned char>(a2, this + 224, a4);
  readSharedObject<short>(a2, this + 240, a4);
  readSharedObject<short>(a2, this + 256, a4);
  readSharedObject<unsigned char>(a2, this + 272, a4);
  readSharedObject<unsigned int>(a2, this + 288, a4);
  readSharedObject<unsigned int>(a2, this + 304, a4);
  readSharedObject<unsigned int>(a2, this + 320, a4);
  readSharedObject<short>(a2, this + 336, a4);
  readSharedObject<short>(a2, this + 352, a4);

  return readSharedObject<unsigned char>(a2, this + 368, a4);
}

uint64_t BigramData::computeLocalPreloadableBytes(BigramData *this)
{
  v1 = *(this + 50);
  if (v1 >= 2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = *(*(this + 24) + 2 * v4);
      if ((*(*(this + 3) + 4 * (v4 >> 5)) >> v4))
      {
        v6 = *(this + 4);
        if (*(*(this + 24) + 2 * v4))
        {
          v7 = 0;
          v8 = *(*(this + 22) + 4 * v4);
          v9 = v5 << (v6 == 0);
          if ((v5 + 1) <= 2u)
          {
            v10 = 2;
          }

          else
          {
            v10 = (v5 + 1);
          }

          v11 = v10 - 1;
          do
          {
            if (v6)
            {
              v12 = (*(this + 1) + 2 * *(*(this + 28) + v8));
            }

            else
            {
              v12 = (*(this + 26) + 2 * v8);
            }

            if (*v12 != 20000)
            {
              ++v7;
            }

            ++v8;
            --v11;
          }

          while (v11);
LABEL_24:
          if (v7 <= 1)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9;
          }

          goto LABEL_28;
        }
      }

      else if (*(*(this + 24) + 2 * v4))
      {
        v13 = 0;
        v7 = 0;
        v9 = 0;
        do
        {
          if (BigramData::getSearchScoreForIndex(this, v4, v13) != 20000)
          {
            if (*(this + 4))
            {
              v14 = 3;
            }

            else
            {
              v14 = 4;
            }

            v9 += v14;
            ++v7;
          }

          ++v13;
        }

        while (v5 != v13);
        goto LABEL_24;
      }

      v15 = 0;
LABEL_28:
      v3 += v15;
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t BigramData::getSearchScoreForIndex(BigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 22) + 4 * a2);
  if (*(*(this + 24) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 5) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 40) + 4 * v3) + a3;
      if (*(this + 4))
      {
        v4 = *(this + 46);
LABEL_10:
        v3 = *(v4 + v3);
        goto LABEL_11;
      }

      v5 = *(this + 44);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      if (*(this + 4))
      {
        v4 = *(this + 34);
        goto LABEL_10;
      }

      v5 = *(this + 32);
    }

    LOWORD(v3) = *(v5 + 2 * v3);
    return v3;
  }

  if (*(this + 4))
  {
    v3 = *(*(this + 22) + 4 * a2);
LABEL_11:
    LOWORD(v3) = *(*(this + 1) + 2 * v3);
  }

  return v3;
}

uint64_t BigramData::initNewBigramData(uint64_t a1, BigramData *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 200);
  BigramData::configureBigramData(a2, 1, *(a1 + 16), *(a1 + 8));
  BigramData::preAllocateStaticBigramData(a2, v9);
  v10 = 232;
  if (!*(a1 + 4))
  {
    v10 = 216;
  }

  BigramData::preAllocateDynamicBigramData(a2, *(a1 + 248), *(a1 + v10));
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  *v45 = a4;
  v11 = *(a4 + 12);
  if (v9 > v11)
  {
    DgnArray<DiskNgramContext>::reallocElts(a4, v9 - v11, 0);
  }

  v12 = *(a5 + 12);
  v46 = a5;
  v48 = a2;
  if (v9 <= v12)
  {
    *(a5 + 8) = v9;
    if (!v9)
    {
      goto LABEL_55;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a5, v9 - v12, 0);
    *(a5 + 8) = v9;
  }

  v13 = 0;
  do
  {
    *(*a5 + 8 * v13++) = 0;
  }

  while (v9 != v13);
  if (v9 >= 2)
  {
    for (i = 1; i != v9; ++i)
    {
      LODWORD(v56) = 0;
      LODWORD(v54) = 0;
      LODWORD(v52) = 0;
      v15 = i >> 5;
      v16 = 1 << i;
      v17 = *(*(a1 + 192) + 2 * i);
      if ((*(*(a1 + 24) + 4 * v15) & (1 << i)) != 0)
      {
        v18 = v17 << (*(a1 + 16) == 0);
        if (*(*(a1 + 192) + 2 * i))
        {
          v19 = 1;
          do
          {
            v20 = *(a1 + 16);
            v21 = v19 - 1;
            v22 = (*(*(a1 + 176) + 4 * i) + v21);
            if (v20)
            {
              v22 = *(*(a1 + 224) + v22);
              v23 = *(a1 + 8);
            }

            else
            {
              v23 = *(a1 + 208);
            }

            v24 = *(v23 + 2 * v22);
            if (v24 != 20000)
            {
              v25 = v56;
              if (v56 == HIDWORD(v56))
              {
                DgnPrimArray<short>::reallocElts(&v55, 1, 1);
                v25 = v56;
                v20 = *(a1 + 16);
              }

              *(v55 + 2 * v25) = v19;
              LODWORD(v56) = v25 + 1;
              if (v20)
              {
                v26 = *(*(a1 + 224) + (*(*(a1 + 176) + 4 * i) + v21));
                v27 = v52;
                if (v52 == HIDWORD(v52))
                {
                  DgnPrimArray<char>::reallocElts(&v51, 1, 1);
                  v27 = v52;
                }

                *(v51 + v27) = v26;
                v28 = v52;
                v29 = &v52;
              }

              else
              {
                v28 = v54;
                if (v54 == HIDWORD(v54))
                {
                  DgnPrimArray<short>::reallocElts(&v53, 1, 1);
                  v28 = v54;
                }

                v53[v28] = v24;
                v29 = &v54;
              }

              *v29 = v28 + 1;
            }

            ++v19;
          }

          while (v17 >= v19);
        }

        v30 = 0;
      }

      else if (*(*(a1 + 192) + 2 * i))
      {
        v31 = 0;
        v18 = 0;
        v30 = 0;
        do
        {
          SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(a1, i, v31);
          SearchScoreForIndex = BigramData::getSearchScoreForIndex(a1, i, v31);
          v34 = SearchScoreForIndex;
          if (SearchScoreForIndex != 20000)
          {
            v35 = *(a1 + 16);
            if (v35)
            {
              v36 = 3;
            }

            else
            {
              v36 = 4;
            }

            v37 = v56;
            if (v56 == HIDWORD(v56))
            {
              DgnPrimArray<short>::reallocElts(&v55, 1, 1);
              v37 = v56;
              v35 = *(a1 + 16);
            }

            *(v55 + 2 * v37) = SearchSuccIdForIndex;
            LODWORD(v56) = v37 + 1;
            if (v35)
            {
              SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex(a1, i, v31);
              v39 = v52;
              if (v52 == HIDWORD(v52))
              {
                DgnPrimArray<char>::reallocElts(&v51, 1, 1);
                v39 = v52;
              }

              *(v51 + v39) = SearchQuantizedScoreForIndex;
              v40 = v52;
              v41 = &v52;
            }

            else
            {
              v40 = v54;
              if (v54 == HIDWORD(v54))
              {
                DgnPrimArray<short>::reallocElts(&v53, 1, 1);
                v40 = v54;
              }

              v53[v40] = v34;
              v41 = &v54;
            }

            ++v30;
            v18 += v36;
            *v41 = v40 + 1;
          }

          ++v31;
        }

        while (v17 != v31);
        LODWORD(v17) = 0;
        v15 = i >> 5;
        v16 = 1 << i;
      }

      else
      {
        v30 = 0;
        v18 = 0;
      }

      if (v56)
      {
        if (v56 == 1)
        {
          BigramData::fillBigramRecord(v48, i, &v55, &v53, &v51);
        }

        else
        {
          BigramData::allocBi1(v48, i);
          *(*(v48 + 5) + 4 * v15) |= v16;
          *(*(v48 + 24) + 2 * i) = v56;
          HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(a3, &v55);
          v42 = **v45 + 56 * *(*v45 + 8);
          *v42 = 0;
          *(v42 + 8) = 0;
          *(v42 + 16) = 0;
          *(v42 + 24) = -1;
          strcpy((v42 + 32), " N");
          LODWORD(v42) = *(*v45 + 8);
          *(*v45 + 8) = v42 + 1;
          v43 = **v45 + 56 * v42;
          *(v43 + 34) = 2;
          *(v43 + 24) = i;
          *(v43 + 36) = i;
          *(v43 + 40) = v30;
          *(v43 + 44) = v17;
          *(v43 + 8) = v18;
          *(v43 + 16) = v18;
          *(*v46 + 8 * i) = **v45 + 56 * (*(*v45 + 8) - 1);
        }
      }
    }
  }

LABEL_55:
  if (!*(a3 + 128))
  {
    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, 0);
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(a3, v49);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(v48 + 88, v49);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v49);
  BigramData::compact(v48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
}

void sub_262782B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11 - 104);
  _Unwind_Resume(a1);
}

_DWORD *BigramData::configureBigramData(_DWORD *this, int a2, unsigned int a3, const unsigned __int16 *a4)
{
  v6 = this;
  *this = a2;
  this[1] = a3 != 0;
  v7 = this[5];
  if (a3 <= v7)
  {
    this[4] = a3;
    if (!a3)
    {
      return this;
    }
  }

  else
  {
    this = DgnPrimArray<short>::reallocElts((this + 2), a3 - v7, 0);
    v6[4] = a3;
  }

  v8 = *(v6 + 1);
  v9 = a3;
  do
  {
    v10 = *a4++;
    *v8++ = v10;
    --v9;
  }

  while (v9);
  return this;
}

void BigramData::preAllocateStaticBigramData(BigramData *this, unsigned int a2)
{
  BitArray::preAllocate((this + 24), a2);
  if (*this)
  {
    BitArray::preAllocate((this + 40), a2);
    BitArray::preAllocate((this + 56), a2);
    BitArray::preAllocate((this + 72), a2);
  }

  v4 = *(this + 47);
  if (a2 > v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 176, a2 - v4, 0);
  }

  v5 = *(this + 51);
  if (a2 > v5)
  {

    DgnPrimArray<short>::reallocElts(this + 192, a2 - v5, 0);
  }
}

uint64_t BigramData::preAllocateDynamicBigramData(uint64_t this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 252);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    this = DgnPrimArray<short>::reallocElts(this + 240, v8, 0);
  }

  if (*(v5 + 4))
  {
    if (*(v5 + 284) < a2)
    {
      v11 = 0;
      this = realloc_array(*(v5 + 272), &v11, a2, *(v5 + 280), *(v5 + 280), 1);
      *(v5 + 284) = this;
      *(v5 + 272) = v11;
    }

    if (*(v5 + 236) < a3)
    {
      v11 = 0;
      this = realloc_array(*(v5 + 224), &v11, a3, *(v5 + 232), *(v5 + 232), 1);
      *(v5 + 236) = this;
      *(v5 + 224) = v11;
    }
  }

  else
  {
    v9 = *(v5 + 268);
    if (a2 > v9)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 256, a2 - v9, 0);
    }

    v10 = *(v5 + 220);
    if (a3 > v10)
    {

      return DgnPrimArray<short>::reallocElts(v5 + 208, a3 - v10, 0);
    }
  }

  return this;
}

unint64_t DgnPrimArray<unsigned short>::add(unint64_t result, __int16 a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 == *(result + 12))
  {
    result = DgnPrimArray<short>::reallocElts(result, 1, 1);
    v4 = *(v3 + 8);
  }

  *(*v3 + 2 * v4) = a2;
  *(v3 + 8) = v4 + 1;
  return result;
}

unint64_t DgnPrimArray<unsigned char>::add(unint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 == *(result + 12))
  {
    result = DgnPrimArray<char>::reallocElts(result, 1, 1);
    v4 = *(v3 + 8);
  }

  *(*v3 + v4) = a2;
  ++*(v3 + 8);
  return result;
}

uint64_t BigramData::getSearchSuccIdForIndex(BigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 22) + 4 * a2);
  if (*(*(this + 24) + 2 * a2) == 1)
  {
    return WORD1(v3);
  }

  if (*this && ((*(*(this + 5) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 40) + 4 * v3) + a3;
    v6 = *(this + 42);
  }

  else
  {
    v5 = v3 + a3;
    v6 = *(this + 30);
  }

  return *(v6 + 2 * v5);
}

uint64_t BigramData::getSearchQuantizedScoreForIndex(BigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 22) + 4 * a2);
  if (*(*(this + 24) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 5) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 40) + 4 * v3) + a3;
      v4 = *(this + 46);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      v4 = *(this + 34);
    }

    LOBYTE(v3) = *(v4 + v3);
  }

  return v3;
}

void BigramData::fillBigramRecord(BigramData *a1, unsigned int a2, uint64_t a3, _WORD **a4, void *a5)
{
  v10 = *(a3 + 8);
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v11 = 3;
  if (!*(a1 + 4))
  {
    v11 = 4;
  }

  if (v11 * v10 < (*(*a3 + 2 * (v10 - 1)) << (*(a1 + 4) == 0)))
  {
LABEL_5:
    BigramData::allocSearch(a1, a2, *(a3 + 8));
    v12 = *(a3 + 8);
    if (*(a1 + 4))
    {
      if (v12)
      {
        v13 = 0;
        do
        {
          BigramData::setSearchSuccIdForIndex(a1, a2, v13, *(*a3 + 2 * v13));
          BigramData::setSearchQuantizedScoreForIndex(a1, a2, v13, *(*a5 + v13));
          ++v13;
        }

        while (v13 < *(a3 + 8));
      }
    }

    else if (v12)
    {
      v14 = 0;
      do
      {
        BigramData::setSearchSuccIdForIndex(a1, a2, v14, *(*a3 + 2 * v14));
        BigramData::setSearchScoreForIndex(a1, a2, v14, (*a4)[v14]);
        ++v14;
      }

      while (v14 < *(a3 + 8));
    }
  }

  else
  {

    BigramData::fillBigramRecordLookup(a1, a2, a3, a4, a5);
  }
}

void BigramData::allocBi1(BigramData *this, unsigned int a2)
{
  while (*(this + 50) <= a2)
  {
    v4 = *(this + 46);
    if (v4 == *(this + 47))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 176, 1, 1);
      v4 = *(this + 46);
    }

    *(*(this + 22) + 4 * v4) = -1;
    ++*(this + 46);
    v5 = *(this + 50);
    if (v5 == *(this + 51))
    {
      DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
      v5 = *(this + 50);
    }

    *(*(this + 24) + 2 * v5) = 0;
    *(this + 50) = v5 + 1;
    BitArray::add((this + 24), 0);
    if (*this)
    {
      BitArray::add((this + 40), 0);
      BitArray::add((this + 56), 0);
      BitArray::add((this + 72), 0);
    }
  }
}

uint64_t **HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = **a2;
  result = HuffmanEncoder<unsigned short,unsigned int>::addValue(a1, v5);
  if (v4 >= 2)
  {
    v7 = 2 * v4;
    v8 = 2;
    do
    {
      v9 = *(*a2 + v8);
      result = HuffmanEncoder<unsigned short,unsigned int>::addValue(a1, v9 - v5);
      v8 += 2;
      v5 = v9;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t **HuffmanEncoder<unsigned short,unsigned int>::addValue(uint64_t a1, unsigned __int16 a2)
{
  v9 = a2;
  ++*a1;
  v3 = a1 + 8;
  result = Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::findBucket(a1 + 8, &v9);
  if (*result)
  {
    ++*((*result)[2] + 4);
  }

  else
  {
    v5 = MemChunkAlloc(0xCuLL, 0);
    v6 = v9;
    *v5 = 0x100000000;
    *(v5 + 4) = v6;
    v8 = v5;
    v7 = *(a1 + 128);
    if (v7 == *(a1 + 132))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 120, 1, 1);
      v7 = *(a1 + 128);
    }

    *(*(a1 + 120) + 8 * v7) = v5;
    *(a1 + 128) = v7 + 1;
    return Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::add(v3, &v9, &v8);
  }

  return result;
}

uint64_t HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(uint64_t a1, unint64_t a2)
{
  v53[0] = 0;
  v53[1] = 0;
  v4 = *(a1 + 128);
  if (v4 == 2)
  {
    HuffmanDecoder<unsigned short,unsigned int>::initializeTable(a2, 1, 2u);
    HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, 0, 1, 0);
    v6 = *(a1 + 120);
    v7 = *v6;
    *v7 = 0x100000001;
    v8 = v6[1];
    v9 = *(a2 + 48);
    *v9 = *(v8 + 8);
    *v8 = 0x100000000;
    v9[1] = *(v7 + 8);
  }

  else if (v4 == 1)
  {
    HuffmanDecoder<unsigned short,unsigned int>::initializeTable(a2, 1, 1u);
    HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, 0, 1, 0);
    v5 = **(a1 + 120);
    *v5 = 0x100000000;
    **(a2 + 48) = *(v5 + 8);
  }

  else
  {
    v10 = HuffmanEncoder<unsigned short,unsigned int>::countsToLengths(a1, v53);
    v18 = v10;
    v19 = *(v53[0] + 4 * v10);
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    if (v10 >= 0x20)
    {
      throwTableCodeLimitExceeded(v10, v11, v12, v13, v14, v15, v16, v17);
      v21 = HIDWORD(v50);
      v20 = v49;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    if (v21 < v18 + 1)
    {
      v47 = 0;
      HIDWORD(v50) = realloc_array(v20, &v47, 4 * (v18 + 1), 4 * v50, 4 * v50, 1) >> 2;
      v20 = v47;
      v49 = v47;
    }

    v22 = v4 - v19;
    LODWORD(v50) = v18 + 1;
    *v20 = 0;
    *(v20 + v18) = v22;
    v23 = v51;
    if (HIDWORD(v52) < v18 + 1)
    {
      v47 = 0;
      HIDWORD(v52) = realloc_array(v51, &v47, 4 * (v18 + 1), 4 * v52, 4 * v52, 1) >> 2;
      v23 = v47;
      v51 = v47;
    }

    LODWORD(v52) = v18 + 1;
    *v23 = 0;
    HuffmanDecoder<unsigned short,unsigned int>::initializeTable(a2, v18, v4);
    v24 = HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, 0, v18, v22);
    if (v18)
    {
      v32 = 1;
      v33 = v18;
      do
      {
        v34 = (v53[0] + 4 * --v33);
        v35 = v34[1] + *(v51 + v32 - 1);
        *(v51 + v32) = v35 >> 1;
        if (*v34)
        {
          v22 -= *v34;
          v24 = HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, v35 << ~v33, v33, v22);
        }

        *(v49 + v33) = v22;
        if (v35)
        {
          throwTableGenerationFailed(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        ++v32;
      }

      while (v32 <= v18);
    }

    v47 = 0;
    v48 = 0;
    v54 = 0;
    v36 = realloc_array(0, &v54, 4 * (v18 + 1), 0, 0, 1);
    v37 = v54;
    v47 = v54;
    LODWORD(v48) = v18 + 1;
    HIDWORD(v48) = v36 >> 2;
    bzero(v54, 4 * (v18 + 1));
    if (v4)
    {
      v38 = *(a1 + 120);
      v39 = v49;
      v40 = *(a2 + 48);
      v41 = v51;
      do
      {
        v42 = *v38++;
        v43 = *(v42 + 4);
        v44 = v37[v43];
        v45 = v39[v43] + v44;
        v37[v43] = v44 + 1;
        *(v40 + 2 * v45) = *(v42 + 8);
        *v42 = v41[v18 - v43] + v44;
        --v4;
      }

      while (v4);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  }

  *(a1 + 4) = 1;
  HuffmanDecoder<unsigned short,unsigned int>::configureIndexHelper(a2);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v53);
}

void sub_2627835F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t BigramData::savePersistentAndFillInNewBigramData(BigramData *this, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v34 = a6 >> 5;
  v10 = *(*(this + 24) + 2 * a6);
  v33 = 1 << a6;
  if ((*(*(this + 3) + 4 * (a6 >> 5)) & (1 << a6)) != 0)
  {
    if (*(*(this + 24) + 2 * a6))
    {
      v11 = 1;
      do
      {
        v12 = *(this + 4);
        v13 = v11 - 1;
        v14 = (*(*(this + 22) + 4 * a6) + v13);
        if (v12)
        {
          v14 = *(*(this + 28) + v14);
          v15 = *(this + 1);
        }

        else
        {
          v15 = *(this + 26);
        }

        v16 = *(v15 + 2 * v14);
        if (v16 != 20000)
        {
          v17 = v45;
          if (v45 == HIDWORD(v45))
          {
            DgnPrimArray<short>::reallocElts(&v44, 1, 1);
            v17 = v45;
            v12 = *(this + 4);
          }

          v44[v17] = v11;
          LODWORD(v45) = v17 + 1;
          if (v12)
          {
            v18 = *(*(this + 28) + (*(*(this + 22) + 4 * a6) + v13));
            v19 = v41;
            if (v41 == HIDWORD(v41))
            {
              DgnPrimArray<char>::reallocElts(&v40, 1, 1);
              v19 = v41;
            }

            v40[v19] = v18;
            v20 = v41;
            v21 = &v41;
          }

          else
          {
            v20 = v43;
            if (v43 == HIDWORD(v43))
            {
              DgnPrimArray<short>::reallocElts(&v42, 1, 1);
              v20 = v43;
            }

            v42[v20] = v16;
            v21 = &v43;
          }

          *v21 = v20 + 1;
        }

        ++v11;
      }

      while (*(*(this + 24) + 2 * a6) >= v11);
    }
  }

  else if (*(*(this + 24) + 2 * a6))
  {
    v22 = 0;
    do
    {
      SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(this, a6, v22);
      SearchScoreForIndex = BigramData::getSearchScoreForIndex(this, a6, v22);
      v25 = SearchScoreForIndex;
      if (SearchScoreForIndex != 20000)
      {
        v26 = v45;
        if (v45 == HIDWORD(v45))
        {
          DgnPrimArray<short>::reallocElts(&v44, 1, 1);
          v26 = v45;
        }

        v44[v26] = SearchSuccIdForIndex;
        LODWORD(v45) = v26 + 1;
        if (*(this + 4))
        {
          SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex(this, a6, v22);
          v28 = v41;
          if (v41 == HIDWORD(v41))
          {
            DgnPrimArray<char>::reallocElts(&v40, 1, 1);
            v28 = v41;
          }

          v40[v28] = SearchQuantizedScoreForIndex;
          v29 = v41;
          v30 = &v41;
        }

        else
        {
          v29 = v43;
          if (v43 == HIDWORD(v43))
          {
            DgnPrimArray<short>::reallocElts(&v42, 1, 1);
            v29 = v43;
          }

          v42[v29] = v25;
          v30 = &v43;
        }

        *v30 = v29 + 1;
      }

      ++v22;
    }

    while (v22 < *(*(this + 24) + 2 * a6));
  }

  *(*(a4 + 176) + 4 * a6) = (*(*a2 + 48))(a2);
  v38 = 0;
  v39 = 0;
  HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(a5, &v44, &v38);
  if (((4 * (v39 + 1)) | 2uLL) >= 2 * (v45 + 1))
  {
    v31 = a3;
    writeObjectArray(a2, v44, v45, a3);
  }

  else
  {
    *(*(a4 + 72) + 4 * v34) |= v33;
    v37 = v39;
    v31 = a3;
    writeObject(a2, &v37, a3);
    writeObjectArray(a2, v38, v39, a3);
  }

  if (*(this + 4))
  {
    writeObjectArray(a2, v40, v41, v31);
  }

  else
  {
    writeObjectArray(a2, v42, v43, v31);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
}

void sub_262783A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  if (v5)
  {
    v17 = 0;
    v7 = 2 * v5;
    v8 = 0;
    v9 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * v5, 0, 0, 1) >> 1;
    v10 = v17;
    v15 = v17;
    v11 = *a2;
    v12 = v16;
    do
    {
      v13 = *(v11 + v8);
      if (v12 == HIDWORD(v16))
      {
        DgnPrimArray<short>::reallocElts(&v15, 1, 1);
        v12 = v16;
        v10 = v15;
        v11 = *a2;
      }

      v10[v12] = v13 - v9;
      v9 = *(v11 + v8);
      LODWORD(v16) = ++v12;
      v8 += 2;
    }

    while (v7 != v8);
  }

  HuffmanEncoder<unsigned short,unsigned int>::encodeValues(a1, &v15, a3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

void sub_262783B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t BigramData::fillInFullyLoadedBigramData(BigramData *this, BigramData *a2)
{
  v4 = *(this + 50);
  BigramData::configureBigramData(a2, 0, *(this + 4), *(this + 1));
  BigramData::preAllocateStaticBigramData(a2, v4);
  v5 = 232;
  if (!*(this + 1))
  {
    v5 = 216;
  }

  BigramData::preAllocateDynamicBigramData(a2, *(this + 62), *(this + v5));
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  if (v4 >= 2)
  {
    for (i = 1; i != v4; ++i)
    {
      LODWORD(v34) = 0;
      LODWORD(v32) = 0;
      LODWORD(v30) = 0;
      v7 = *(*(this + 24) + 2 * i);
      if ((*(*(this + 3) + 4 * (i >> 5)) >> i))
      {
        if (*(*(this + 24) + 2 * i))
        {
          v8 = 1;
          do
          {
            v9 = *(this + 4);
            v10 = v8 - 1;
            v11 = (*(*(this + 22) + 4 * i) + v10);
            if (v9)
            {
              v11 = *(*(this + 28) + v11);
              v12 = *(this + 1);
            }

            else
            {
              v12 = *(this + 26);
            }

            v13 = *(v12 + 2 * v11);
            if (v13 != 20000)
            {
              v14 = v34;
              if (v34 == HIDWORD(v34))
              {
                DgnPrimArray<short>::reallocElts(&v33, 1, 1);
                v14 = v34;
                v9 = *(this + 4);
              }

              *(v33 + 2 * v14) = v8;
              LODWORD(v34) = v14 + 1;
              if (v9)
              {
                v15 = *(*(this + 28) + (*(*(this + 22) + 4 * i) + v10));
                v16 = v30;
                if (v30 == HIDWORD(v30))
                {
                  DgnPrimArray<char>::reallocElts(&v29, 1, 1);
                  v16 = v30;
                }

                *(v29 + v16) = v15;
                v17 = v30;
                v18 = &v30;
              }

              else
              {
                v17 = v32;
                if (v32 == HIDWORD(v32))
                {
                  DgnPrimArray<short>::reallocElts(&v31, 1, 1);
                  v17 = v32;
                }

                v31[v17] = v13;
                v18 = &v32;
              }

              *v18 = v17 + 1;
            }

            ++v8;
          }

          while (*(*(this + 24) + 2 * i) >= v8);
        }
      }

      else if (*(*(this + 24) + 2 * i))
      {
        v19 = 0;
        do
        {
          SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(this, i, v19);
          SearchScoreForIndex = BigramData::getSearchScoreForIndex(this, i, v19);
          v22 = SearchScoreForIndex;
          if (SearchScoreForIndex != 20000)
          {
            v23 = v34;
            if (v34 == HIDWORD(v34))
            {
              DgnPrimArray<short>::reallocElts(&v33, 1, 1);
              v23 = v34;
            }

            *(v33 + 2 * v23) = SearchSuccIdForIndex;
            LODWORD(v34) = v23 + 1;
            if (*(this + 4))
            {
              SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex(this, i, v19);
              v25 = v30;
              if (v30 == HIDWORD(v30))
              {
                DgnPrimArray<char>::reallocElts(&v29, 1, 1);
                v25 = v30;
              }

              *(v29 + v25) = SearchQuantizedScoreForIndex;
              v26 = v30;
              v27 = &v30;
            }

            else
            {
              v26 = v32;
              if (v32 == HIDWORD(v32))
              {
                DgnPrimArray<short>::reallocElts(&v31, 1, 1);
                v26 = v32;
              }

              v31[v26] = v22;
              v27 = &v32;
            }

            *v27 = v26 + 1;
          }

          ++v19;
        }

        while (v19 < *(*(this + 24) + 2 * i));
      }

      if (v34)
      {
        BigramData::fillBigramRecord(a2, i, &v33, &v31, &v29);
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v31);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
}

void sub_262783ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  _Unwind_Resume(a1);
}

void BigramData::fillBigramRecordLookup(uint64_t a1, unsigned int a2, unsigned __int16 **a3, _WORD **a4, void *a5)
{
  v10 = (*a3)[*(a3 + 2) - 1];
  BigramData::allocLookup(a1, a2, v10);
  if (*(a1 + 16))
  {
    if (v10)
    {
      v11 = 0;
      v12 = (v10 + 1);
      if (v12 <= 2)
      {
        v12 = 2;
      }

      v13 = v12 - 1;
      do
      {
        *(*(a1 + 224) + (v11 + *(*(a1 + 176) + 4 * a2))) = 0;
        ++v11;
      }

      while (v13 != v11);
    }

    if (*(a3 + 2))
    {
      v14 = 0;
      do
      {
        *(*(a1 + 224) + (*a3)[v14] + *(*(a1 + 176) + 4 * a2) - 1) = *(*a5 + v14);
        ++v14;
      }

      while (v14 < *(a3 + 2));
    }
  }

  else
  {
    if (v10)
    {
      v15 = *(*(a1 + 176) + 4 * a2);
      v16 = *(a1 + 208);
      if ((v10 + 1) <= 2u)
      {
        v17 = 2;
      }

      else
      {
        v17 = (v10 + 1);
      }

      v18 = v17 - 1;
      do
      {
        *(v16 + 2 * v15++) = 20000;
        --v18;
      }

      while (v18);
    }

    v19 = *(a3 + 2);
    if (v19)
    {
      v20 = *a3;
      v21 = *a4;
      v22 = *(*(a1 + 176) + 4 * a2);
      v23 = *(a1 + 208);
      do
      {
        v25 = *v20++;
        v24 = v25;
        LOWORD(v25) = *v21++;
        *(v23 + 2 * (v24 + v22 - 1)) = v25;
        --v19;
      }

      while (v19);
    }
  }
}

void BigramData::allocSearch(BigramData *this, unsigned int a2, int a3)
{
  BigramData::allocBi1(this, a2);
  *(*(this + 24) + 2 * a2) = a3;
  if (a3 == 1)
  {
    *(*(this + 22) + 4 * a2) = -65536;
  }

  else
  {
    v6 = *(this + 62);
    *(*(this + 22) + 4 * a2) = v6;
    v7 = v6 + a3;
    v8 = *(this + 63);
    if (v7 > v8)
    {
      DgnPrimArray<short>::reallocElts(this + 240, v7 - v8, 1);
      v7 = *(this + 62) + a3;
    }

    *(this + 62) = v7;
    if (*(this + 1))
    {
      v9 = *(this + 70) + a3;
      v10 = *(this + 71);
      if (v9 > v10)
      {
        DgnPrimArray<char>::reallocElts(this + 272, v9 - v10, 1);
        v9 = *(this + 70) + a3;
      }

      *(this + 70) = v9;
    }

    else
    {
      v11 = *(this + 66) + a3;
      v12 = *(this + 67);
      if (v11 > v12)
      {
        DgnPrimArray<short>::reallocElts(this + 256, v11 - v12, 1);
        v11 = *(this + 66) + a3;
      }

      *(this + 66) = v11;
    }
  }
}

uint64_t BigramData::setSearchSuccIdForIndex(uint64_t this, unsigned int a2, int a3, unsigned __int16 a4)
{
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 192) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = *(v4 + 4 * a2) | (a4 << 16);
  }

  else
  {
    if (*this && ((*(*(this + 40) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 320) + 4 * v5) + a3;
      v7 = *(this + 336);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 240);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

uint64_t BigramData::setSearchQuantizedScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 192) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 40) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 320) + 4 * v5) + a3;
      v7 = *(this + 368);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 272);
    }

    *(v7 + v6) = a4;
  }

  return this;
}

uint64_t BigramData::setSearchScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 192) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 40) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 320) + 4 * v5) + a3;
      v7 = *(this + 352);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 256);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

void BigramData::allocLookup(BigramData *this, unsigned int a2, int a3)
{
  BigramData::allocBi1(this, a2);
  v6 = *(this + 22);
  if (*(this + 1))
  {
    v7 = *(this + 58);
    *(v6 + 4 * a2) = v7;
    v8 = v7 + a3;
    v9 = *(this + 59);
    if (v8 > v9)
    {
      DgnPrimArray<char>::reallocElts(this + 224, v8 - v9, 1);
      v8 = *(this + 58) + a3;
    }

    *(this + 58) = v8;
  }

  else
  {
    v10 = *(this + 54);
    *(v6 + 4 * a2) = v10;
    v11 = v10 + a3;
    v12 = *(this + 55);
    if (v11 > v12)
    {
      DgnPrimArray<short>::reallocElts(this + 208, v11 - v12, 1);
      v11 = *(this + 54) + a3;
    }

    *(this + 54) = v11;
  }

  *(*(this + 24) + 2 * a2) = a3;
  *(*(this + 3) + 4 * (a2 >> 5)) |= 1 << a2;
}

void BigramData::fillBigramRecordPreload(BigramData *this, unsigned int a2, uint64_t a3, __int16 **a4, void *a5)
{
  v10 = 3;
  if (!*(this + 4))
  {
    v10 = 4;
  }

  if (v10 * *(a3 + 8) >= *(*a3 + 2 * (*(a3 + 8) - 1)) << (*(this + 4) == 0))
  {

    BigramData::fillBigramRecordLookup(this, a2, a3, a4, a5);
  }

  else
  {
    BigramData::allocSearch(this, a2, *(a3 + 8));
    v11 = *(a3 + 8);
    if (*(this + 4))
    {
      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = v12 + *(*(this + 22) + 4 * a2);
          *(*(this + 30) + 2 * v13) = *(*a3 + 2 * v12);
          *(*(this + 34) + v13) = *(*a5 + v12++);
        }

        while (v12 < *(a3 + 8));
      }
    }

    else if (v11)
    {
      v14 = *a3;
      v15 = *(*(this + 22) + 4 * a2);
      v16 = *(this + 30);
      v17 = *a4;
      v18 = *(this + 32);
      do
      {
        v19 = *v14++;
        *(v16 + 2 * v15) = v19;
        v20 = *v17++;
        *(v18 + 2 * v15++) = v20;
        --v11;
      }

      while (v11);
    }
  }
}

_DWORD *BigramData::addBigramScoreQuantization(_DWORD *this, unsigned __int8 a2, __int16 a3)
{
  v4 = this;
  this[1] = 1;
  v5 = this[4];
  if (!v5)
  {
    if (this[5])
    {
      v6 = 0;
    }

    else
    {
      this = DgnPrimArray<short>::reallocElts((this + 2), 1, 1);
      v6 = v4[4];
    }

    *(*(v4 + 1) + 2 * v6) = 20000;
    v5 = v6 + 1;
    v4[4] = v5;
  }

  if (v5 == v4[5])
  {
    this = DgnPrimArray<short>::reallocElts((v4 + 2), 1, 1);
    v5 = v4[4];
  }

  *(*(v4 + 1) + 2 * v5) = a3;
  v4[4] = v5 + 1;
  return this;
}

unint64_t BigramData::allocLoaded(unint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  v6 = *(this + 312);
  *(v4 + 4 * a2) = v6;
  if (v6 == *(this + 316))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this + 304, 1, 1);
    v6 = *(v3 + 312);
  }

  *(*(v3 + 304) + 4 * v6) = v5;
  ++*(v3 + 312);
  v7 = *(v3 + 344);
  v8 = *(v3 + 328);
  if (v8 == *(v3 + 332))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 320, 1, 1);
    v8 = *(v3 + 328);
  }

  *(*(v3 + 320) + 4 * v8) = v7;
  ++*(v3 + 328);
  v9 = *(*(v3 + 192) + 2 * a2);
  v10 = *(v3 + 344) + v9;
  v11 = *(v3 + 348);
  if (v10 > v11)
  {
    this = DgnPrimArray<short>::reallocElts(v3 + 336, v10 - v11, 1);
    v10 = *(v3 + 344) + v9;
  }

  *(v3 + 344) = v10;
  if (*(v3 + 4))
  {
    v12 = *(v3 + 376) + v9;
    v13 = *(v3 + 380);
    if (v12 > v13)
    {
      this = DgnPrimArray<char>::reallocElts(v3 + 368, v12 - v13, 1);
      v12 = *(v3 + 376) + v9;
    }

    *(v3 + 376) = v12;
  }

  else
  {
    v14 = *(v3 + 360) + v9;
    v15 = *(v3 + 364);
    if (v14 > v15)
    {
      this = DgnPrimArray<short>::reallocElts(v3 + 352, v14 - v15, 1);
      v14 = *(v3 + 360) + v9;
    }

    *(v3 + 360) = v14;
  }

  *(*(v3 + 56) + 4 * (a2 >> 5)) |= 1 << a2;
  v16 = *(v3 + 296);
  if (v16 == *(v3 + 300))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 288, 1, 1);
    v16 = *(v3 + 296);
  }

  *(*(v3 + 288) + 4 * v16) = a2;
  ++*(v3 + 296);
  return this;
}

void TrigramData::TrigramData(TrigramData *this)
{
  *(this + 1) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  DgnString::DgnString((this + 128));
  DgnString::DgnString((this + 144));
  DgnString::DgnString((this + 160));
  DgnString::DgnString((this + 176));
  *(this + 12) = 0u;
  *this = 0;
  *(this + 2) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  TrigramData::allocTri1(this, 0, 0);
}

void sub_26278476C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 280);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v3);
  BitArray::~BitArray((v2 + 176));
  BitArray::~BitArray((v2 + 160));
  BitArray::~BitArray((v2 + 144));
  BitArray::~BitArray((v1 + 112));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void TrigramData::allocTri1(TrigramData *this, unsigned int a2, int a3)
{
  v6 = *(this + 14);
  if (v6 <= a2)
  {
    do
    {
      if (v6 == *(this + 15))
      {
        DgnPrimArray<short>::reallocElts(this + 48, 1, 1);
        v6 = *(this + 14);
      }

      *(*(this + 6) + 2 * v6) = 0;
      *(this + 14) = v6 + 1;
      v8 = *(this + 18);
      if (v8 == *(this + 19))
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 64, 1, 1);
        v8 = *(this + 18);
      }

      v7 = *(this + 8);
      *(v7 + 4 * v8) = -1;
      ++*(this + 18);
      v6 = *(this + 14);
    }

    while (v6 <= a2);
  }

  else
  {
    v7 = *(this + 8);
  }

  *(*(this + 6) + 2 * a2) = a3;
  v9 = *(this + 22);
  *(v7 + 4 * a2) = v9;
  v10 = v9 + a3;
  v11 = *(this + 23);
  if (v10 > v11)
  {
    DgnPrimArray<short>::reallocElts(this + 80, v10 - v11, 1);
    v10 = *(this + 22) + a3;
  }

  *(this + 22) = v10;
  if (*(this + 1))
  {
    v12 = *(this + 31);
    v13 = *(this + 30) + a3;
    if (v13 > v12)
    {
      DgnPrimArray<char>::reallocElts(this + 112, v13 - v12, 1);
      v13 = *(this + 30) + a3;
    }

    *(this + 30) = v13;
  }

  else
  {
    v14 = *(this + 27);
    v15 = *(this + 26) + a3;
    if (v15 > v14)
    {
      DgnPrimArray<short>::reallocElts(this + 96, v15 - v14, 1);
      v15 = *(this + 26) + a3;
    }

    *(this + 26) = v15;
  }

  BitArray::addSize((this + 128), a3);
  if (*this)
  {
    BitArray::addSize((this + 144), a3);
    BitArray::addSize((this + 160), a3);
    BitArray::addSize((this + 176), a3);
  }

  v16 = *(this + 72) + a3;
  v17 = *(this + 73);
  if (v16 > v17)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 280, v16 - v17, 1);
    v16 = *(this + 72) + a3;
  }

  *(this + 72) = v16;
  v18 = *(this + 76) + a3;
  v19 = *(this + 77);
  if (v18 > v19)
  {
    DgnPrimArray<short>::reallocElts(this + 296, v18 - v19, 1);
    v18 = *(this + 76) + a3;
  }

  *(this + 76) = v18;
}

void TrigramData::~TrigramData(TrigramData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(this + 192);
  BitArray::~BitArray((this + 176));
  BitArray::~BitArray((this + 160));
  BitArray::~BitArray((this + 144));
  BitArray::~BitArray((this + 128));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void *TrigramData::compact(TrigramData *this)
{
  DgnPrimArray<unsigned short>::compact(this + 48);
  DgnPrimArray<unsigned int>::compact(this + 64);
  DgnPrimArray<unsigned short>::compact(this + 80);
  DgnPrimArray<unsigned short>::compact(this + 96);
  DgnPrimArray<unsigned char>::compact(this + 14);
  BitArray::compact((this + 128));
  BitArray::compact((this + 144));
  BitArray::compact((this + 160));
  BitArray::compact((this + 176));
  DgnPrimArray<unsigned int>::compact(this + 280);
  DgnPrimArray<unsigned short>::compact(this + 296);
  DgnPrimArray<unsigned short>::compact(this + 312);
  DgnPrimArray<unsigned char>::compact(this + 41);
  DgnPrimArray<unsigned short>::compact(this + 344);
  DgnPrimArray<unsigned short>::compact(this + 360);
  DgnPrimArray<unsigned char>::compact(this + 47);
  DgnPrimArray<unsigned int>::compact(this + 392);
  DgnPrimArray<unsigned int>::compact(this + 408);
  DgnPrimArray<unsigned int>::compact(this + 424);
  DgnPrimArray<unsigned short>::compact(this + 440);
  DgnPrimArray<unsigned short>::compact(this + 456);

  return DgnPrimArray<unsigned char>::compact(this + 59);
}

void TrigramData::printSize(TrigramData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1739, &v290);
  if (v291)
  {
    v16 = v290;
  }

  else
  {
    v16 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v16);
  DgnString::~DgnString(&v290);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CFB0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v27 = v290;
  }

  else
  {
    v27 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v290);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v32 = v290;
  }

  else
  {
    v32 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v290);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v37 = v290;
  }

  else
  {
    v37 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v289 = a3;
  DgnString::~DgnString(&v290);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 12;
  }

  else
  {
    v38 = 16;
  }

  v39 = *(this + 6);
  v40 = *(this + 7);
  if (v40 >= v39)
  {
    v41 = 0;
    if (v39 > 0)
    {
      v38 += 2 * (v39 - 1) + 2;
    }

    v42 = v38 + 2 * (v40 - v39);
  }

  else
  {
    v41 = 2 * v39;
    v42 = v38;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v47 = v290;
  }

  else
  {
    v47 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, v21, &unk_26288CFB0, v22, v22, v47, v42, v38, v41);
  DgnString::~DgnString(&v290);
  *a4 += v42;
  *a5 += v38;
  *a6 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(this + 10);
  v50 = *(this + 11);
  if (v50 >= v49)
  {
    v51 = 0;
    if (v49 > 0)
    {
      v48 += 2 * (v49 - 1) + 2;
    }

    v52 = v48 + 2 * (v50 - v49);
  }

  else
  {
    v51 = 2 * v49;
    v52 = v48;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v57 = v290;
  }

  else
  {
    v57 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v21, &unk_26288CFB0, v22, v22, v57, v52, v48, v51);
  DgnString::~DgnString(&v290);
  *a4 += v52;
  *a5 += v48;
  *a6 += v51;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 14);
  v60 = *(this + 15);
  if (v60 >= v59)
  {
    v61 = 0;
    if (v59 > 0)
    {
      v58 += 2 * (v59 - 1) + 2;
    }

    v62 = v58 + 2 * (v60 - v59);
  }

  else
  {
    v61 = 2 * v59;
    v62 = v58;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v67 = v290;
  }

  else
  {
    v67 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v21, &unk_26288CFB0, v22, v22, v67, v62, v58, v61);
  DgnString::~DgnString(&v290);
  *a4 += v62;
  *a5 += v58;
  *a6 += v61;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v68 = 12;
  }

  else
  {
    v68 = 16;
  }

  v69 = *(this + 18);
  v70 = *(this + 19);
  if (v70 >= v69)
  {
    v71 = 0;
    if (v69 > 0)
    {
      v68 += 4 * (v69 - 1) + 4;
    }

    v72 = v68 + 4 * (v70 - v69);
  }

  else
  {
    v71 = 4 * v69;
    v72 = v68;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v77 = v290;
  }

  else
  {
    v77 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v74, v75, v76, v21, &unk_26288CFB0, v22, v22, v77, v72, v68, v71);
  DgnString::~DgnString(&v290);
  *a4 += v72;
  *a5 += v68;
  *a6 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v78 = 12;
  }

  else
  {
    v78 = 16;
  }

  v79 = *(this + 22);
  v80 = *(this + 23);
  if (v80 >= v79)
  {
    v81 = 0;
    if (v79 > 0)
    {
      v78 += 2 * (v79 - 1) + 2;
    }

    v82 = v78 + 2 * (v80 - v79);
  }

  else
  {
    v81 = 2 * v79;
    v82 = v78;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v87 = v290;
  }

  else
  {
    v87 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26288CFB0, v22, v22, v87, v82, v78, v81);
  DgnString::~DgnString(&v290);
  *a4 += v82;
  *a5 += v78;
  *a6 += v81;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v88 = 12;
  }

  else
  {
    v88 = 16;
  }

  v89 = *(this + 26);
  v90 = *(this + 27);
  if (v90 >= v89)
  {
    v91 = 0;
    if (v89 > 0)
    {
      v88 += 2 * (v89 - 1) + 2;
    }

    v92 = v88 + 2 * (v90 - v89);
  }

  else
  {
    v91 = 2 * v89;
    v92 = v88;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v97 = v290;
  }

  else
  {
    v97 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26288CFB0, v22, v22, v97, v92, v88, v91);
  DgnString::~DgnString(&v290);
  *a4 += v92;
  *a5 += v88;
  *a6 += v91;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 12;
  }

  else
  {
    v98 = 16;
  }

  v99 = *(this + 30);
  v100 = *(this + 31);
  v101 = v100 >= v99;
  v102 = v100 - v99;
  if (v101)
  {
    if (v99 > 0)
    {
      v103 = (v99 - 1) + v98 + 1;
    }

    else
    {
      v103 = v98;
    }

    v98 = v103 + v102;
    v99 = 0;
  }

  else
  {
    v103 = v98;
  }

  v104 = v99;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v109 = v290;
  }

  else
  {
    v109 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v106, v107, v108, v21, &unk_26288CFB0, v22, v22, v109, v98, v103, v104);
  DgnString::~DgnString(&v290);
  *a4 += v98;
  *a5 += v103;
  *a6 += v104;
  v110 = BitArray::sizeObject(this + 128, 0);
  v111 = BitArray::sizeObject(this + 128, 1);
  v112 = BitArray::sizeObject(this + 128, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v117 = v290;
  }

  else
  {
    v117 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v114, v115, v116, v21, &unk_26288CFB0, v22, v22, v117, v110, v111, v112);
  DgnString::~DgnString(&v290);
  *a4 += v110;
  *a5 += v111;
  *a6 += v112;
  v118 = BitArray::sizeObject(this + 144, 0);
  v119 = BitArray::sizeObject(this + 144, 1);
  v120 = BitArray::sizeObject(this + 144, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v125 = v290;
  }

  else
  {
    v125 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v122, v123, v124, v21, &unk_26288CFB0, v22, v22, v125, v118, v119, v120);
  DgnString::~DgnString(&v290);
  *a4 += v118;
  *a5 += v119;
  *a6 += v120;
  v126 = BitArray::sizeObject(this + 160, 0);
  v127 = BitArray::sizeObject(this + 160, 1);
  v128 = BitArray::sizeObject(this + 160, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v133 = v290;
  }

  else
  {
    v133 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v130, v131, v132, v21, &unk_26288CFB0, v22, v22, v133, v126, v127, v128);
  DgnString::~DgnString(&v290);
  *a4 += v126;
  *a5 += v127;
  *a6 += v128;
  v134 = BitArray::sizeObject(this + 176, 0);
  v135 = BitArray::sizeObject(this + 176, 1);
  v136 = BitArray::sizeObject(this + 176, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v141 = v290;
  }

  else
  {
    v141 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v21, &unk_26288CFB0, v22, v22, v141, v134, v135, v136);
  DgnString::~DgnString(&v290);
  *a4 += v134;
  *a5 += v135;
  *a6 += v136;
  v142 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 192, 0);
  v143 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 192, 1);
  v144 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 192, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v149 = v290;
  }

  else
  {
    v149 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26288CFB0, v22, v22, v149, v142, v143, v144);
  DgnString::~DgnString(&v290);
  *a4 += v142;
  *a5 += v143;
  *a6 += v144;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v150 = 12;
  }

  else
  {
    v150 = 16;
  }

  v151 = *(this + 72);
  v152 = *(this + 73);
  if (v152 >= v151)
  {
    v153 = 0;
    if (v151 > 0)
    {
      v150 += 4 * (v151 - 1) + 4;
    }

    v154 = v150 + 4 * (v152 - v151);
  }

  else
  {
    v153 = 4 * v151;
    v154 = v150;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v159 = v290;
  }

  else
  {
    v159 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v156, v157, v158, v21, &unk_26288CFB0, v22, v22, v159, v154, v150, v153);
  DgnString::~DgnString(&v290);
  *a4 += v154;
  *a5 += v150;
  *a6 += v153;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v160 = 12;
  }

  else
  {
    v160 = 16;
  }

  v161 = *(this + 76);
  v162 = *(this + 77);
  if (v162 >= v161)
  {
    v163 = 0;
    if (v161 > 0)
    {
      v160 += 2 * (v161 - 1) + 2;
    }

    v164 = v160 + 2 * (v162 - v161);
  }

  else
  {
    v163 = 2 * v161;
    v164 = v160;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v169 = v290;
  }

  else
  {
    v169 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v166, v167, v168, v21, &unk_26288CFB0, v22, v22, v169, v164, v160, v163);
  DgnString::~DgnString(&v290);
  *a4 += v164;
  *a5 += v160;
  *a6 += v163;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v170 = 12;
  }

  else
  {
    v170 = 16;
  }

  v171 = *(this + 80);
  v172 = *(this + 81);
  if (v172 >= v171)
  {
    v173 = 0;
    if (v171 > 0)
    {
      v170 += 2 * (v171 - 1) + 2;
    }

    v174 = v170 + 2 * (v172 - v171);
  }

  else
  {
    v173 = 2 * v171;
    v174 = v170;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v179 = v290;
  }

  else
  {
    v179 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v175, v176, v177, v178, v21, &unk_26288CFB0, v22, v22, v179, v174, v170, v173);
  DgnString::~DgnString(&v290);
  *a4 += v174;
  *a5 += v170;
  *a6 += v173;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v180 = 12;
  }

  else
  {
    v180 = 16;
  }

  v181 = *(this + 84);
  v182 = *(this + 85);
  v101 = v182 >= v181;
  v183 = v182 - v181;
  if (v101)
  {
    if (v181 > 0)
    {
      v184 = (v181 - 1) + v180 + 1;
    }

    else
    {
      v184 = v180;
    }

    v180 = v184 + v183;
    v181 = 0;
  }

  else
  {
    v184 = v180;
  }

  v185 = v181;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v190 = v290;
  }

  else
  {
    v190 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v187, v188, v189, v21, &unk_26288CFB0, v22, v22, v190, v180, v184, v185);
  DgnString::~DgnString(&v290);
  *a4 += v180;
  *a5 += v184;
  *a6 += v185;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v191 = 12;
  }

  else
  {
    v191 = 16;
  }

  v192 = *(this + 88);
  v193 = *(this + 89);
  if (v193 >= v192)
  {
    v194 = 0;
    if (v192 > 0)
    {
      v191 += 2 * (v192 - 1) + 2;
    }

    v195 = v191 + 2 * (v193 - v192);
  }

  else
  {
    v194 = 2 * v192;
    v195 = v191;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v200 = v290;
  }

  else
  {
    v200 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v196, v197, v198, v199, v21, &unk_26288CFB0, v22, v22, v200, v195, v191, v194);
  DgnString::~DgnString(&v290);
  *a4 += v195;
  *a5 += v191;
  *a6 += v194;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v201 = 12;
  }

  else
  {
    v201 = 16;
  }

  v202 = *(this + 92);
  v203 = *(this + 93);
  if (v203 >= v202)
  {
    v204 = 0;
    if (v202 > 0)
    {
      v201 += 2 * (v202 - 1) + 2;
    }

    v205 = v201 + 2 * (v203 - v202);
  }

  else
  {
    v204 = 2 * v202;
    v205 = v201;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v210 = v290;
  }

  else
  {
    v210 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v207, v208, v209, v21, &unk_26288CFB0, v22, v22, v210, v205, v201, v204);
  DgnString::~DgnString(&v290);
  *a4 += v205;
  *a5 += v201;
  *a6 += v204;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v211 = 12;
  }

  else
  {
    v211 = 16;
  }

  v212 = *(this + 96);
  v213 = *(this + 97);
  v101 = v213 >= v212;
  v214 = v213 - v212;
  if (v101)
  {
    if (v212 > 0)
    {
      v215 = (v212 - 1) + v211 + 1;
    }

    else
    {
      v215 = v211;
    }

    v211 = v215 + v214;
    v212 = 0;
  }

  else
  {
    v215 = v211;
  }

  v216 = v212;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v221 = v290;
  }

  else
  {
    v221 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v217, v218, v219, v220, v21, &unk_26288CFB0, v22, v22, v221, v211, v215, v216);
  DgnString::~DgnString(&v290);
  *a4 += v211;
  *a5 += v215;
  *a6 += v216;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v222 = 12;
  }

  else
  {
    v222 = 16;
  }

  v223 = *(this + 100);
  v224 = *(this + 101);
  if (v224 >= v223)
  {
    v225 = 0;
    if (v223 > 0)
    {
      v222 += 4 * (v223 - 1) + 4;
    }

    v226 = v222 + 4 * (v224 - v223);
  }

  else
  {
    v225 = 4 * v223;
    v226 = v222;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v231 = v290;
  }

  else
  {
    v231 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v227, v228, v229, v230, v21, &unk_26288CFB0, v22, v22, v231, v226, v222, v225);
  DgnString::~DgnString(&v290);
  *a4 += v226;
  *a5 += v222;
  *a6 += v225;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v232 = 12;
  }

  else
  {
    v232 = 16;
  }

  v233 = *(this + 104);
  v234 = *(this + 105);
  if (v234 >= v233)
  {
    v235 = 0;
    if (v233 > 0)
    {
      v232 += 4 * (v233 - 1) + 4;
    }

    v236 = v232 + 4 * (v234 - v233);
  }

  else
  {
    v235 = 4 * v233;
    v236 = v232;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v241 = v290;
  }

  else
  {
    v241 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v237, v238, v239, v240, v21, &unk_26288CFB0, v22, v22, v241, v236, v232, v235);
  DgnString::~DgnString(&v290);
  *a4 += v236;
  *a5 += v232;
  *a6 += v235;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v242 = 12;
  }

  else
  {
    v242 = 16;
  }

  v243 = *(this + 108);
  v244 = *(this + 109);
  if (v244 >= v243)
  {
    v245 = 0;
    if (v243 > 0)
    {
      v242 += 4 * (v243 - 1) + 4;
    }

    v246 = v242 + 4 * (v244 - v243);
  }

  else
  {
    v245 = 4 * v243;
    v246 = v242;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v251 = v290;
  }

  else
  {
    v251 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v247, v248, v249, v250, v21, &unk_26288CFB0, v22, v22, v251, v246, v242, v245);
  DgnString::~DgnString(&v290);
  *a4 += v246;
  *a5 += v242;
  *a6 += v245;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v252 = 12;
  }

  else
  {
    v252 = 16;
  }

  v253 = *(this + 112);
  v254 = *(this + 113);
  if (v254 >= v253)
  {
    v255 = 0;
    if (v253 > 0)
    {
      v252 += 2 * (v253 - 1) + 2;
    }

    v256 = v252 + 2 * (v254 - v253);
  }

  else
  {
    v255 = 2 * v253;
    v256 = v252;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v261 = v290;
  }

  else
  {
    v261 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v257, v258, v259, v260, v21, &unk_26288CFB0, v22, v22, v261, v256, v252, v255);
  DgnString::~DgnString(&v290);
  *a4 += v256;
  *a5 += v252;
  *a6 += v255;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v262 = 12;
  }

  else
  {
    v262 = 16;
  }

  v263 = *(this + 116);
  v264 = *(this + 117);
  if (v264 >= v263)
  {
    v265 = 0;
    if (v263 > 0)
    {
      v262 += 2 * (v263 - 1) + 2;
    }

    v266 = v262 + 2 * (v264 - v263);
  }

  else
  {
    v265 = 2 * v263;
    v266 = v262;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v271 = v290;
  }

  else
  {
    v271 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v267, v268, v269, v270, v21, &unk_26288CFB0, v22, v22, v271, v266, v262, v265);
  DgnString::~DgnString(&v290);
  *a4 += v266;
  *a5 += v262;
  *a6 += v265;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v272 = 12;
  }

  else
  {
    v272 = 16;
  }

  v273 = *(this + 120);
  v274 = *(this + 121);
  v101 = v274 >= v273;
  v275 = v274 - v273;
  if (v101)
  {
    if (v273 > 0)
    {
      v276 = (v273 - 1) + v272 + 1;
    }

    else
    {
      v276 = v272;
    }

    v272 = v276 + v275;
    v273 = 0;
  }

  else
  {
    v276 = v272;
  }

  v277 = v273;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743, &v290);
  if (v291)
  {
    v282 = v290;
  }

  else
  {
    v282 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v278, v279, v280, v281, v21, &unk_26288CFB0, v22, v22, v282, v272, v276, v277);
  DgnString::~DgnString(&v290);
  *a4 += v272;
  *a5 += v276;
  *a6 += v277;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1744, &v290);
  if (v291)
  {
    v287 = v290;
  }

  else
  {
    v287 = &unk_26288CFB0;
  }

  v288 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v283, v284, v285, v286, v289, &unk_26288CFB0, (35 - v289), (35 - v289), v287, *a4, *a5, *a6);
  DgnString::~DgnString(&v290);
}

void sub_2627860A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *TrigramData::copyTrigramData(TrigramData *this, const TrigramData *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  DgnPrimArray<unsigned short>::copyArraySlice(this + 16, a2 + 2, 0, *(a2 + 6));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 32, a2 + 4, 0, *(a2 + 10));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 48, a2 + 6, 0, *(a2 + 14));
  DgnPrimArray<int>::copyArraySlice(this + 64, a2 + 8, 0, *(a2 + 18));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 80, a2 + 10, 0, *(a2 + 22));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 96, a2 + 12, 0, *(a2 + 26));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 112, a2 + 14, 0, *(a2 + 30));
  BitArray::operator=(this + 16, a2 + 128);
  BitArray::operator=(this + 18, a2 + 144);
  BitArray::operator=(this + 20, a2 + 160);
  BitArray::operator=(this + 22, a2 + 176);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(this + 192, a2 + 192);
  DgnPrimArray<int>::copyArraySlice(this + 280, a2 + 35, 0, *(a2 + 72));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 296, a2 + 37, 0, *(a2 + 76));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 312, a2 + 39, 0, *(a2 + 80));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 328, a2 + 41, 0, *(a2 + 84));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 344, a2 + 43, 0, *(a2 + 88));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 360, a2 + 45, 0, *(a2 + 92));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 376, a2 + 47, 0, *(a2 + 96));
  DgnPrimArray<int>::copyArraySlice(this + 392, a2 + 49, 0, *(a2 + 100));
  DgnPrimArray<int>::copyArraySlice(this + 408, a2 + 51, 0, *(a2 + 104));
  DgnPrimArray<int>::copyArraySlice(this + 424, a2 + 53, 0, *(a2 + 108));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 440, a2 + 55, 0, *(a2 + 112));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 456, a2 + 57, 0, *(a2 + 116));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 472, a2 + 59, 0, *(a2 + 120));

  return TrigramData::compact(this);
}

uint64_t TrigramData::saveBinary(TrigramData *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 2, a3);
  writeObject<short>(a2, this + 16, a3);
  writeObject<unsigned short>(a2, this + 32, a3);
  writeObject<unsigned short>(a2, this + 48, a3);
  writeObject<unsigned int>(a2, this + 64, a3);
  writeObject<unsigned short>(a2, this + 80, a3);
  writeObject<short>(a2, this + 96, a3);
  writeObject<unsigned char>(a2, this + 112, a3);
  writeObject(a2, this + 128, a3);
  writeObject(a2, this + 144, a3);
  writeObject(a2, this + 160, a3);
  writeObject(a2, this + 176, a3);
  HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 192, a2, a3);
  writeObject<unsigned int>(a2, this + 280, a3);
  writeObject<unsigned short>(a2, this + 296, a3);
  writeObject<unsigned short>(a2, this + 312, a3);
  writeObject<unsigned char>(a2, this + 328, a3);
  writeObject<unsigned short>(a2, this + 344, a3);
  writeObject<unsigned short>(a2, this + 360, a3);
  writeObject<unsigned char>(a2, this + 376, a3);
  writeObject<unsigned int>(a2, this + 392, a3);
  writeObject<unsigned int>(a2, this + 408, a3);
  writeObject<unsigned int>(a2, this + 424, a3);
  writeObject<unsigned short>(a2, this + 440, a3);
  writeObject<unsigned short>(a2, this + 456, a3);

  return writeObject<unsigned char>(a2, this + 472, a3);
}

void TrigramData::loadBinary(TrigramData *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this, a3);
  readObject(a2, this + 1, a3);
  readObject(a2, this + 2, a3);
  readObject<short>(a2, this + 16, a3);
  readObject<unsigned short>(a2, this + 32, a3);
  readObject<unsigned short>(a2, this + 48, a3);
  readObject<unsigned int>(a2, this + 64, a3);
  readObject<unsigned short>(a2, this + 80, a3);
  readObject<short>(a2, this + 96, a3);
  readObject<unsigned char>(a2, this + 112, a3);
  readObject(a2, (this + 128), a3);
  readObject(a2, (this + 144), a3);
  readObject(a2, (this + 160), a3);
  readObject(a2, (this + 176), a3);
  HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 192, a2, a3);
  readObject<unsigned int>(a2, this + 280, a3);
  readObject<unsigned short>(a2, this + 296, a3);
  readObject<unsigned short>(a2, this + 312, a3);
  readObject<unsigned char>(a2, this + 328, a3);
  readObject<unsigned short>(a2, this + 344, a3);
  readObject<unsigned short>(a2, this + 360, a3);
  readObject<unsigned char>(a2, this + 376, a3);
  readObject<unsigned int>(a2, this + 392, a3);
  readObject<unsigned int>(a2, this + 408, a3);
  readObject<unsigned int>(a2, this + 424, a3);
  readObject<unsigned short>(a2, this + 440, a3);
  readObject<unsigned short>(a2, this + 456, a3);

  readObject<unsigned char>(a2, this + 472, a3);
}

char *TrigramData::saveBinaryShared(TrigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    writeObject(a2, this, a4);
    writeObject(a2, this + 1, a4);
    writeObject(a2, this + 2, a4);
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject<short>(a2, this + 96, a4);
    writeSharedObject<unsigned char>(a2, this + 112, a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
    writeSharedObject(a2, (this + 160), a4);
    writeSharedObject(a2, (this + 176), a4);
    HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 192, a2, a4);
  }

  else
  {
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject<short>(a2, this + 96, a4);
    writeSharedObject<unsigned char>(a2, this + 112, a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
    writeSharedObject(a2, (this + 160), a4);
    writeSharedObject(a2, (this + 176), a4);
  }

  writeSharedObject<unsigned int>(a2, this + 280, a4);
  writeSharedObject<short>(a2, this + 296, a4);
  writeSharedObject<short>(a2, this + 312, a4);
  writeSharedObject<unsigned char>(a2, this + 328, a4);
  writeSharedObject<short>(a2, this + 344, a4);
  writeSharedObject<short>(a2, this + 360, a4);
  writeSharedObject<unsigned char>(a2, this + 376, a4);
  writeSharedObject<unsigned int>(a2, this + 392, a4);
  writeSharedObject<unsigned int>(a2, this + 408, a4);
  writeSharedObject<unsigned int>(a2, this + 424, a4);
  writeSharedObject<short>(a2, this + 440, a4);
  writeSharedObject<short>(a2, this + 456, a4);

  return writeSharedObject<unsigned char>(a2, this + 472, a4);
}

int *TrigramData::loadBinaryShared(TrigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    readObject(a2, this, a4);
    readObject(a2, this + 1, a4);
    readObject(a2, this + 2, a4);
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject<short>(a2, this + 96, a4);
    readSharedObject<unsigned char>(a2, this + 112, a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
    readSharedObject(a2, (this + 160), a4);
    readSharedObject(a2, (this + 176), a4);
    HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 192, a2, a4);
  }

  else
  {
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject<short>(a2, this + 96, a4);
    readSharedObject<unsigned char>(a2, this + 112, a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
    readSharedObject(a2, (this + 160), a4);
    readSharedObject(a2, (this + 176), a4);
  }

  readSharedObject<unsigned int>(a2, this + 280, a4);
  readSharedObject<short>(a2, this + 296, a4);
  readSharedObject<short>(a2, this + 312, a4);
  readSharedObject<unsigned char>(a2, this + 328, a4);
  readSharedObject<short>(a2, this + 344, a4);
  readSharedObject<short>(a2, this + 360, a4);
  readSharedObject<unsigned char>(a2, this + 376, a4);
  readSharedObject<unsigned int>(a2, this + 392, a4);
  readSharedObject<unsigned int>(a2, this + 408, a4);
  readSharedObject<unsigned int>(a2, this + 424, a4);
  readSharedObject<short>(a2, this + 440, a4);
  readSharedObject<short>(a2, this + 456, a4);

  return readSharedObject<unsigned char>(a2, this + 472, a4);
}

uint64_t TrigramData::computeLocalPreloadableBytes(TrigramData *this)
{
  v18 = *(this + 14);
  if (v18 >= 2)
  {
    v2 = 0;
    v3 = 1;
    while (1)
    {
      if (v3 < *(this + 14))
      {
        v20 = *(*(this + 6) + 2 * v3);
        if (*(*(this + 6) + 2 * v3))
        {
          break;
        }
      }

LABEL_33:
      if (++v3 == v18)
      {
        return v2;
      }
    }

    v4 = 0;
    v19 = v3;
    while (1)
    {
      v5 = (*(*(this + 8) + 4 * v3) + v4);
      v6 = *(*(this + 37) + 2 * v5);
      if ((*(*(this + 16) + 4 * (v5 >> 5)) >> v5))
      {
        v7 = *(this + 10);
        if (*(*(this + 37) + 2 * v5))
        {
          v8 = 0;
          v9 = *(*(this + 35) + 4 * v5);
          v10 = v6 << (v7 == 0);
          if ((v6 + 1) <= 2u)
          {
            v11 = 2;
          }

          else
          {
            v11 = (v6 + 1);
          }

          v12 = v11 - 1;
          do
          {
            if (v7)
            {
              v13 = (*(this + 4) + 2 * *(*(this + 41) + v9));
            }

            else
            {
              v13 = (*(this + 39) + 2 * v9);
            }

            if (*v13 != 20000)
            {
              ++v8;
            }

            ++v9;
            --v12;
          }

          while (v12);
LABEL_27:
          if (v8 <= 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = v10;
          }

          v3 = v19;
          goto LABEL_32;
        }
      }

      else if (*(*(this + 37) + 2 * v5))
      {
        v14 = 0;
        v8 = 0;
        v10 = 0;
        do
        {
          if (TrigramData::getSearchScoreForIndex(this, v5, v14) != 20000)
          {
            if (*(this + 10))
            {
              v15 = 3;
            }

            else
            {
              v15 = 4;
            }

            v10 += v15;
            ++v8;
          }

          ++v14;
        }

        while (v6 != v14);
        goto LABEL_27;
      }

      v16 = 0;
LABEL_32:
      v2 += v16;
      if (++v4 == v20)
      {
        goto LABEL_33;
      }
    }
  }

  return 0;
}

uint64_t TrigramData::getSearchScoreForIndex(TrigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 35) + 4 * a2);
  if (*(*(this + 37) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 18) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 53) + 4 * v3) + a3;
      if (*(this + 10))
      {
        v4 = *(this + 59);
LABEL_10:
        v3 = *(v4 + v3);
        goto LABEL_11;
      }

      v5 = *(this + 57);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      if (*(this + 10))
      {
        v4 = *(this + 47);
        goto LABEL_10;
      }

      v5 = *(this + 45);
    }

    LOWORD(v3) = *(v5 + 2 * v3);
    return v3;
  }

  if (*(this + 10))
  {
    v3 = *(*(this + 35) + 4 * a2);
LABEL_11:
    LOWORD(v3) = *(*(this + 4) + 2 * v3);
  }

  return v3;
}

uint64_t TrigramData::initNewTrigramData(uint64_t a1, TrigramData *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v9 = a2;
  v11 = *(a1 + 56);
  TrigramData::configureTrigramData(a2, 1, *(a1 + 24), *(a1 + 16), *(a1 + 40), *(a1 + 32));
  TrigramData::preAllocateStaticTrigramData(v9, v11, *(a1 + 88));
  v12 = 336;
  if (!*(a1 + 8))
  {
    v12 = 320;
  }

  TrigramData::preAllocateDynamicTrigramData(v9, *(a1 + 352), *(a1 + v12));
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  if (v11 >= 2)
  {
    v13 = 1;
    v67 = v9;
    v56 = a5;
    v62 = a4;
    v58 = v11;
    do
    {
      if (v13 < *(a1 + 56))
      {
        v14 = *(a1 + 48);
        if (*(v14 + 2 * v13))
        {
          v66 = v13;
          v64 = *(v14 + 2 * v13);
          TrigramData::allocTri1(v9, v13, v64);
          v63 = 0;
          v15 = 0;
          v60 = *(a4 + 8);
          do
          {
            v16 = *(*(a1 + 64) + 4 * v66) + v15;
            v65 = *(*(a1 + 80) + 2 * v16);
            LODWORD(v75) = 0;
            LODWORD(v73) = 0;
            LODWORD(v71) = 0;
            v17 = *(a1 + 296);
            v18 = *(v17 + 2 * v16);
            if ((*(*(a1 + 128) + 4 * (v16 >> 5)) >> v16))
            {
              v19 = v18 << (*(a1 + 40) == 0);
              if (*(v17 + 2 * v16))
              {
                v20 = 1;
                do
                {
                  v21 = *(a1 + 40);
                  v22 = v20 - 1;
                  v23 = (*(*(a1 + 280) + 4 * v16) + v22);
                  if (v21)
                  {
                    v23 = *(*(a1 + 328) + v23);
                    v24 = *(a1 + 32);
                  }

                  else
                  {
                    v24 = *(a1 + 312);
                  }

                  v25 = *(v24 + 2 * v23);
                  if (v25 != 20000)
                  {
                    v26 = v75;
                    if (v75 == HIDWORD(v75))
                    {
                      DgnPrimArray<short>::reallocElts(&v74, 1, 1);
                      v26 = v75;
                      v21 = *(a1 + 40);
                    }

                    *(v74 + 2 * v26) = v20;
                    LODWORD(v75) = v26 + 1;
                    if (v21)
                    {
                      v27 = *(*(a1 + 328) + (*(*(a1 + 280) + 4 * v16) + v22));
                      v28 = v71;
                      if (v71 == HIDWORD(v71))
                      {
                        DgnPrimArray<char>::reallocElts(&v70, 1, 1);
                        v28 = v71;
                      }

                      *(v70 + v28) = v27;
                      v29 = v71;
                      v30 = &v71;
                    }

                    else
                    {
                      v29 = v73;
                      if (v73 == HIDWORD(v73))
                      {
                        DgnPrimArray<short>::reallocElts(&v72, 1, 1);
                        v29 = v73;
                      }

                      v72[v29] = v25;
                      v30 = &v73;
                    }

                    *v30 = v29 + 1;
                  }

                  ++v20;
                }

                while (v18 >= v20);
              }

              v31 = 0;
            }

            else if (*(v17 + 2 * v16))
            {
              v32 = 0;
              v19 = 0;
              v31 = 0;
              do
              {
                SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex(a1, v16, v32);
                SearchScoreForIndex = TrigramData::getSearchScoreForIndex(a1, v16, v32);
                v35 = SearchScoreForIndex;
                if (SearchScoreForIndex != 20000)
                {
                  v36 = *(a1 + 40);
                  if (v36)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = 4;
                  }

                  v38 = v75;
                  if (v75 == HIDWORD(v75))
                  {
                    DgnPrimArray<short>::reallocElts(&v74, 1, 1);
                    v38 = v75;
                    v36 = *(a1 + 40);
                  }

                  *(v74 + 2 * v38) = SearchSuccIdForIndex;
                  LODWORD(v75) = v38 + 1;
                  if (v36)
                  {
                    SearchQuantizedScoreForIndex = TrigramData::getSearchQuantizedScoreForIndex(a1, v16, v32);
                    v40 = v71;
                    if (v71 == HIDWORD(v71))
                    {
                      DgnPrimArray<char>::reallocElts(&v70, 1, 1);
                      v40 = v71;
                    }

                    *(v70 + v40) = SearchQuantizedScoreForIndex;
                    v41 = v71;
                    v42 = &v71;
                  }

                  else
                  {
                    v41 = v73;
                    if (v73 == HIDWORD(v73))
                    {
                      DgnPrimArray<short>::reallocElts(&v72, 1, 1);
                      v41 = v73;
                    }

                    v72[v41] = v35;
                    v42 = &v73;
                  }

                  ++v31;
                  v19 += v37;
                  *v42 = v41 + 1;
                }

                ++v32;
              }

              while (v18 != v32);
              LODWORD(v18) = 0;
            }

            else
            {
              v31 = 0;
              v19 = 0;
            }

            v43 = *(*(v67 + 64) + 4 * v66) + v15;
            *(*(v67 + 80) + 2 * v43) = 0;
            if (*(v67 + 4))
            {
              *(*(v67 + 112) + v43) = 0;
            }

            else
            {
              *(*(v67 + 96) + 2 * v43) = 20000;
            }

            TrigramData::tri2SetUnallocated(v67, v43);
            *(*(v67 + 80) + 2 * v43) = v65;
            if (*(a1 + 24))
            {
              *(*(v67 + 112) + v43) = *(*(a1 + 112) + v16);
            }

            else
            {
              *(*(v67 + 96) + 2 * v43) = *(*(a1 + 96) + 2 * v16);
            }

            if (v75)
            {
              if (v75 == 1)
              {
                TrigramData::fillTrigramRecord(v67, v43, &v74, &v72, &v70);
              }

              else
              {
                *(*(v67 + 144) + 4 * (v43 >> 5)) |= 1 << v43;
                *(*(v67 + 296) + 2 * v43) = v75;
                HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(a3, &v74);
                v44 = v62;
                v45 = *(v62 + 8);
                if (v45 == *(v62 + 12))
                {
                  DgnArray<DiskNgramContext>::reallocElts(v62, 1, 1);
                  v44 = v62;
                  LODWORD(v45) = *(v62 + 8);
                }

                v46 = *v44 + 56 * v45;
                *v46 = 0;
                *(v46 + 8) = 0;
                *(v46 + 16) = 0;
                *(v46 + 24) = -1;
                strcpy((v46 + 32), " N");
                LODWORD(v46) = *(v44 + 8);
                *(v44 + 8) = v46 + 1;
                v47 = *v44 + 56 * v46;
                *(v47 + 34) = 3;
                *(v47 + 24) = v66;
                *(v47 + 28) = v65;
                *(v47 + 36) = v16;
                *(v47 + 40) = v43;
                *(v47 + 44) = v31;
                *(v47 + 48) = v18;
                *(v47 + 8) = v19;
                *(v47 + 16) = 0;
                v63 += v19;
              }
            }

            ++v15;
          }

          while (v15 != v64);
          if (a7)
          {
            v13 = v66;
            v11 = v58;
            v48 = v63;
            v49 = v60;
            if (v66 >= *(v56 + 8))
            {
              v9 = v67;
              a4 = v62;
            }

            else
            {
              v50 = *(*v56 + 8 * v66);
              v9 = v67;
              a4 = v62;
              if (v50)
              {
                v48 = *(v50 + 8) + v63;
                *(v50 + 16) = v48;
              }
            }
          }

          else
          {
            v13 = v66;
            v9 = v67;
            a4 = v62;
            v48 = v63;
            v11 = v58;
            v49 = v60;
          }

          v51 = *(a4 + 8);
          if (v49 < v51)
          {
            v52 = *(*a6 + 8 * v13);
            v53 = (*a4 + 56 * v49 + 16);
            v54 = v51 - v49;
            do
            {
              *(v53 - 3) = v52;
              *v53 = v48;
              v53 += 14;
              --v54;
            }

            while (v54);
          }
        }
      }

      ++v13;
    }

    while (v13 != v11);
  }

  if (!*(a3 + 128))
  {
    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, 0);
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(a3, v68);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(v9 + 192, v68);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v68);
  TrigramData::compact(v9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v70);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v72);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
}

void sub_26278753C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 104);
  _Unwind_Resume(a1);
}

_DWORD *TrigramData::configureTrigramData(_DWORD *this, int a2, unsigned int a3, __int16 *a4, unsigned int a5, const unsigned __int16 *a6)
{
  v10 = this;
  *this = a2;
  this[1] = a3 != 0;
  this[2] = a5 != 0;
  v11 = this[7];
  if (a3 <= v11)
  {
    this[6] = a3;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    this = DgnPrimArray<short>::reallocElts((this + 4), a3 - v11, 0);
    v10[6] = a3;
  }

  v12 = *(v10 + 2);
  v13 = a3;
  do
  {
    v14 = *a4++;
    *v12++ = v14;
    --v13;
  }

  while (v13);
LABEL_6:
  v15 = v10[11];
  if (a5 <= v15)
  {
    v10[10] = a5;
    if (!a5)
    {
      return this;
    }
  }

  else
  {
    this = DgnPrimArray<short>::reallocElts((v10 + 8), a5 - v15, 0);
    v10[10] = a5;
  }

  v16 = *(v10 + 4);
  v17 = a5;
  do
  {
    v18 = *a6++;
    *v16++ = v18;
    --v17;
  }

  while (v17);
  return this;
}

void TrigramData::preAllocateStaticTrigramData(TrigramData *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 15);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    DgnPrimArray<short>::reallocElts(this + 48, v8, 0);
  }

  v9 = *(this + 19);
  if (a2 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 64, a2 - v9, 0);
  }

  v10 = *(this + 23);
  if (a3 > v10)
  {
    DgnPrimArray<short>::reallocElts(this + 80, a3 - v10, 0);
  }

  if (*(this + 1))
  {
    if (*(this + 31) < a3)
    {
      v14 = 0;
      *(this + 31) = realloc_array(*(this + 14), &v14, a3, *(this + 30), *(this + 30), 1);
      *(this + 14) = v14;
    }
  }

  else
  {
    v11 = *(this + 27);
    if (a3 > v11)
    {
      DgnPrimArray<short>::reallocElts(this + 96, a3 - v11, 0);
    }
  }

  BitArray::preAllocate((this + 128), a3);
  if (*this)
  {
    BitArray::preAllocate((this + 144), a3);
    BitArray::preAllocate((this + 160), a3);
    BitArray::preAllocate((this + 176), a3);
  }

  v12 = *(this + 73);
  if (a3 > v12)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 280, a3 - v12, 0);
  }

  v13 = *(this + 77);
  if (a3 > v13)
  {
    DgnPrimArray<short>::reallocElts(this + 296, a3 - v13, 0);
  }
}

uint64_t TrigramData::preAllocateDynamicTrigramData(uint64_t this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 356);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    this = DgnPrimArray<short>::reallocElts(this + 344, v8, 0);
  }

  if (*(v5 + 8))
  {
    if (*(v5 + 388) < a2)
    {
      v11 = 0;
      this = realloc_array(*(v5 + 376), &v11, a2, *(v5 + 384), *(v5 + 384), 1);
      *(v5 + 388) = this;
      *(v5 + 376) = v11;
    }

    if (*(v5 + 340) < a3)
    {
      v11 = 0;
      this = realloc_array(*(v5 + 328), &v11, a3, *(v5 + 336), *(v5 + 336), 1);
      *(v5 + 340) = this;
      *(v5 + 328) = v11;
    }
  }

  else
  {
    v9 = *(v5 + 372);
    if (a2 > v9)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 360, a2 - v9, 0);
    }

    v10 = *(v5 + 324);
    if (a3 > v10)
    {

      return DgnPrimArray<short>::reallocElts(v5 + 312, a3 - v10, 0);
    }
  }

  return this;
}

uint64_t TrigramData::getSearchSuccIdForIndex(TrigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 35) + 4 * a2);
  if (*(*(this + 37) + 2 * a2) == 1)
  {
    return WORD1(v3);
  }

  if (*this && ((*(*(this + 18) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 53) + 4 * v3) + a3;
    v6 = *(this + 55);
  }

  else
  {
    v5 = v3 + a3;
    v6 = *(this + 43);
  }

  return *(v6 + 2 * v5);
}

uint64_t TrigramData::getSearchQuantizedScoreForIndex(TrigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 35) + 4 * a2);
  if (*(*(this + 37) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 18) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 53) + 4 * v3) + a3;
      v4 = *(this + 59);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      v4 = *(this + 47);
    }

    LOBYTE(v3) = *(v4 + v3);
  }

  return v3;
}

unint64_t TrigramData::fillTrigramRecord(unint64_t a1, unsigned int a2, uint64_t a3, _WORD **a4, void *a5)
{
  v10 = *(a3 + 8);
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v11 = 3;
  if (!*(a1 + 40))
  {
    v11 = 4;
  }

  if (v11 * v10 < (*(*a3 + 2 * (v10 - 1)) << (*(a1 + 40) == 0)))
  {
LABEL_5:
    result = TrigramData::allocSearch(a1, a2, *(a3 + 8));
    v13 = *(a3 + 8);
    if (*(a1 + 40))
    {
      if (v13)
      {
        v14 = 0;
        do
        {
          TrigramData::setSearchSuccIdForIndex(a1, a2, v14, *(*a3 + 2 * v14));
          result = TrigramData::setSearchQuantizedScoreForIndex(a1, a2, v14, *(*a5 + v14));
          ++v14;
        }

        while (v14 < *(a3 + 8));
      }
    }

    else if (v13)
    {
      v15 = 0;
      do
      {
        TrigramData::setSearchSuccIdForIndex(a1, a2, v15, *(*a3 + 2 * v15));
        result = TrigramData::setSearchScoreForIndex(a1, a2, v15, (*a4)[v15]);
        ++v15;
      }

      while (v15 < *(a3 + 8));
    }
  }

  else
  {

    return TrigramData::fillTrigramRecordLookup(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t TrigramData::savePersistentAndFillInNewTrigramData(TrigramData *this, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v11 = *(*(this + 37) + 2 * a6);
  if ((*(*(this + 16) + 4 * (a6 >> 5)) >> a6))
  {
    if (*(*(this + 37) + 2 * a6))
    {
      v12 = 1;
      do
      {
        v13 = *(this + 10);
        v14 = v12 - 1;
        v15 = (*(*(this + 35) + 4 * a6) + v14);
        if (v13)
        {
          v15 = *(*(this + 41) + v15);
          v16 = *(this + 4);
        }

        else
        {
          v16 = *(this + 39);
        }

        v17 = *(v16 + 2 * v15);
        if (v17 != 20000)
        {
          v18 = v45;
          if (v45 == HIDWORD(v45))
          {
            DgnPrimArray<short>::reallocElts(&v44, 1, 1);
            v18 = v45;
            v13 = *(this + 10);
          }

          v44[v18] = v12;
          LODWORD(v45) = v18 + 1;
          if (v13)
          {
            v19 = *(*(this + 41) + (*(*(this + 35) + 4 * a6) + v14));
            v20 = v41;
            if (v41 == HIDWORD(v41))
            {
              DgnPrimArray<char>::reallocElts(&v40, 1, 1);
              v20 = v41;
            }

            v40[v20] = v19;
            v21 = v41;
            v22 = &v41;
          }

          else
          {
            v21 = v43;
            if (v43 == HIDWORD(v43))
            {
              DgnPrimArray<short>::reallocElts(&v42, 1, 1);
              v21 = v43;
            }

            v42[v21] = v17;
            v22 = &v43;
          }

          *v22 = v21 + 1;
        }

        ++v12;
      }

      while (*(*(this + 37) + 2 * a6) >= v12);
    }
  }

  else if (*(*(this + 37) + 2 * a6))
  {
    v23 = 0;
    do
    {
      SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex(this, a6, v23);
      SearchScoreForIndex = TrigramData::getSearchScoreForIndex(this, a6, v23);
      v26 = SearchScoreForIndex;
      if (SearchScoreForIndex != 20000)
      {
        v27 = v45;
        if (v45 == HIDWORD(v45))
        {
          DgnPrimArray<short>::reallocElts(&v44, 1, 1);
          v27 = v45;
        }

        v44[v27] = SearchSuccIdForIndex;
        LODWORD(v45) = v27 + 1;
        if (*(this + 10))
        {
          SearchQuantizedScoreForIndex = TrigramData::getSearchQuantizedScoreForIndex(this, a6, v23);
          v29 = v41;
          if (v41 == HIDWORD(v41))
          {
            DgnPrimArray<char>::reallocElts(&v40, 1, 1);
            v29 = v41;
          }

          v40[v29] = SearchQuantizedScoreForIndex;
          v30 = v41;
          v31 = &v41;
        }

        else
        {
          v30 = v43;
          if (v43 == HIDWORD(v43))
          {
            DgnPrimArray<short>::reallocElts(&v42, 1, 1);
            v30 = v43;
          }

          v42[v30] = v26;
          v31 = &v43;
        }

        *v31 = v30 + 1;
      }

      ++v23;
    }

    while (v23 < *(*(this + 37) + 2 * a6));
  }

  *(*(a4 + 280) + 4 * a7) = (*(*a2 + 48))(a2);
  v38 = 0;
  v39 = 0;
  HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(a5, &v44, &v38);
  if (((4 * (v39 + 1)) | 2uLL) >= 2 * (v45 + 1))
  {
    v32 = a3;
    writeObjectArray(a2, v44, v45, a3);
  }

  else
  {
    *(*(a4 + 176) + 4 * (a7 >> 5)) |= 1 << a7;
    v37 = v39;
    v32 = a3;
    writeObject(a2, &v37, a3);
    writeObjectArray(a2, v38, v39, a3);
  }

  if (*(this + 10))
  {
    writeObjectArray(a2, v40, v41, v32);
  }

  else
  {
    writeObjectArray(a2, v42, v43, v32);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
}

void sub_262787EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t TrigramData::fillInFullyLoadedTrigramData(TrigramData *this, TrigramData *a2)
{
  v4 = *(this + 14);
  TrigramData::configureTrigramData(a2, 0, *(this + 6), *(this + 2), *(this + 10), *(this + 4));
  TrigramData::preAllocateStaticTrigramData(a2, v4, *(this + 22));
  v5 = 336;
  if (!*(this + 2))
  {
    v5 = 320;
  }

  TrigramData::preAllocateDynamicTrigramData(a2, *(this + 88), *(this + v5));
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  if (v4 >= 2)
  {
    v6 = 1;
    do
    {
      *v34 = v6;
      if (v6 < *(this + 14))
      {
        v32 = *(*(this + 6) + 2 * v6);
        if (*(*(this + 6) + 2 * v6))
        {
          TrigramData::allocTri1(a2, v6, v32);
          v7 = 0;
          do
          {
            v8 = (*(*(this + 8) + 4 * *v34) + v7);
            v33 = *(*(this + 10) + 2 * v8);
            LODWORD(v40) = 0;
            LODWORD(v38) = 0;
            LODWORD(v36) = 0;
            v9 = *(*(this + 37) + 2 * v8);
            if ((*(*(this + 16) + 4 * (v8 >> 5)) >> v8))
            {
              if (*(*(this + 37) + 2 * v8))
              {
                v10 = 1;
                do
                {
                  v11 = *(this + 10);
                  v12 = v10 - 1;
                  v13 = (*(*(this + 35) + 4 * v8) + v12);
                  if (v11)
                  {
                    v13 = *(*(this + 41) + v13);
                    v14 = *(this + 4);
                  }

                  else
                  {
                    v14 = *(this + 39);
                  }

                  v15 = *(v14 + 2 * v13);
                  if (v15 != 20000)
                  {
                    v16 = v40;
                    if (v40 == HIDWORD(v40))
                    {
                      DgnPrimArray<short>::reallocElts(&v39, 1, 1);
                      v16 = v40;
                      v11 = *(this + 10);
                    }

                    *(v39 + 2 * v16) = v10;
                    LODWORD(v40) = v16 + 1;
                    if (v11)
                    {
                      v17 = *(*(this + 41) + (*(*(this + 35) + 4 * v8) + v12));
                      v18 = v36;
                      if (v36 == HIDWORD(v36))
                      {
                        DgnPrimArray<char>::reallocElts(&v35, 1, 1);
                        v18 = v36;
                      }

                      *(v35 + v18) = v17;
                      v19 = v36;
                      v20 = &v36;
                    }

                    else
                    {
                      v19 = v38;
                      if (v38 == HIDWORD(v38))
                      {
                        DgnPrimArray<short>::reallocElts(&v37, 1, 1);
                        v19 = v38;
                      }

                      v37[v19] = v15;
                      v20 = &v38;
                    }

                    *v20 = v19 + 1;
                  }

                  ++v10;
                }

                while (*(*(this + 37) + 2 * v8) >= v10);
              }
            }

            else if (*(*(this + 37) + 2 * v8))
            {
              v21 = 0;
              do
              {
                SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex(this, v8, v21);
                SearchScoreForIndex = TrigramData::getSearchScoreForIndex(this, v8, v21);
                v24 = SearchScoreForIndex;
                if (SearchScoreForIndex != 20000)
                {
                  v25 = v40;
                  if (v40 == HIDWORD(v40))
                  {
                    DgnPrimArray<short>::reallocElts(&v39, 1, 1);
                    v25 = v40;
                  }

                  *(v39 + 2 * v25) = SearchSuccIdForIndex;
                  LODWORD(v40) = v25 + 1;
                  if (*(this + 10))
                  {
                    SearchQuantizedScoreForIndex = TrigramData::getSearchQuantizedScoreForIndex(this, v8, v21);
                    v27 = v36;
                    if (v36 == HIDWORD(v36))
                    {
                      DgnPrimArray<char>::reallocElts(&v35, 1, 1);
                      v27 = v36;
                    }

                    *(v35 + v27) = SearchQuantizedScoreForIndex;
                    v28 = v36;
                    v29 = &v36;
                  }

                  else
                  {
                    v28 = v38;
                    if (v38 == HIDWORD(v38))
                    {
                      DgnPrimArray<short>::reallocElts(&v37, 1, 1);
                      v28 = v38;
                    }

                    v37[v28] = v24;
                    v29 = &v38;
                  }

                  *v29 = v28 + 1;
                }

                ++v21;
              }

              while (v21 < *(*(this + 37) + 2 * v8));
            }

            v30 = (*(*(a2 + 8) + 4 * *v34) + v7);
            *(*(a2 + 10) + 2 * v30) = 0;
            if (*(a2 + 1))
            {
              *(*(a2 + 14) + v30) = 0;
            }

            else
            {
              *(*(a2 + 12) + 2 * v30) = 20000;
            }

            TrigramData::tri2SetUnallocated(a2, v30);
            *(*(a2 + 10) + 2 * v30) = v33;
            if (*(this + 6))
            {
              *(*(a2 + 14) + v30) = *(*(this + 14) + v8);
            }

            else
            {
              *(*(a2 + 12) + 2 * v30) = *(*(this + 12) + 2 * v8);
            }

            if (v40)
            {
              TrigramData::fillTrigramRecord(a2, v30, &v39, &v37, &v35);
            }

            ++v7;
          }

          while (v7 != v32);
        }
      }

      v6 = *v34 + 1;
    }

    while (*v34 + 1 != v4);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v35);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
}