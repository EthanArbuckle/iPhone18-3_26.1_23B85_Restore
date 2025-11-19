void RealDFileSubFileStream::~RealDFileSubFileStream(RealDFileSubFileStream *this, uint64_t a2, const char *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  *this = &unk_287525538;
  v4 = *(this + 5);
  if (v4)
  {
    if (*(this + 92) == 1 && *(this + 16) == 5)
    {
      strm.next_in = 0;
      strm.avail_in = 0;
      strm.next_out = 0;
      strm.avail_out = 0;
      strm.zalloc = mrecZlibAlloc;
      strm.zfree = mrecZlibFree;
      strm.opaque = 0;
      v5 = crc32(0, 0, 0);
      deflateInit2_(&strm, 1, 8, -15, 9, 0, "1.2.12", 112);
      *__str = 0;
      v6 = realloc_array(0, __str, 0x4000uLL, 0, 0, 1);
      v7 = *__str;
      v47 = 0x4000;
      v48 = v6;
      strm.next_out = *__str;
      strm.avail_out = 0x4000;
      v46 = *__str;
      snprintf(__str, 0xBuLL, "%c%c%c%c%c%c%c%c%c%c", 31, 139, 8, 0, 0, 0, 0, 0, 4, 3);
      RealDFileSubFileStream::basicWrite(this, __str, 10, v8, v9, v10, v11, v12);
      if (*(this + 26))
      {
        v18 = 0;
        do
        {
          v19 = *(this + 12) + 16 * v18;
          strm.next_in = *v19;
          strm.avail_in = *(v19 + 8);
          v5 = crc32(v5, strm.next_in, strm.avail_in);
          while (strm.avail_in)
          {
            if (!strm.avail_out)
            {
              RealDFileSubFileStream::basicWrite(this, v7, 0x4000, v13, v14, v15, v16, v17);
              strm.next_out = v7;
              strm.avail_out = 0x4000;
            }

            if (deflate(&strm, 0))
            {
              v20 = *(this + 5);
              if (*(v20 + 24))
              {
                v21 = *(v20 + 16);
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 971, "dfutil/realdf", 35, "%.500s %.500s %d", v16, v17, *(v20 + 152) + (*(this + 34) << 7));
            }
          }

          ++v18;
        }

        while (v18 < *(this + 26));
      }

      v22 = 0;
      while (1)
      {
        avail_out = strm.avail_out;
        if (strm.avail_out != 0x4000)
        {
          RealDFileSubFileStream::basicWrite(this, v7, 0x4000 - strm.avail_out, v13, v14, v15, v16, v17);
          strm.next_out = v7;
          strm.avail_out = 0x4000;
        }

        if (v22)
        {
          break;
        }

        v24 = deflate(&strm, 4);
        if (v24 == -5 && avail_out == 0x4000)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24;
        }

        v22 = v26 == 1 || strm.avail_out != 0;
        if (v26 >= 2)
        {
          v28 = *(this + 5);
          if (*(v28 + 24))
          {
            v29 = *(v28 + 16);
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1009, "dfutil/realdf", 35, "%.500s %.500s %d", v16, v17, *(v28 + 152) + (*(this + 34) << 7));
        }
      }

      v30 = 4;
      v31 = v5;
      do
      {
        __str[0] = v31;
        RealDFileSubFileStream::basicWrite(this, __str, 1, v13, v14, v15, v16, v17);
        v31 >>= 8;
        --v30;
      }

      while (v30);
      total_in = strm.total_in;
      v33 = 4;
      do
      {
        __str[0] = total_in;
        RealDFileSubFileStream::basicWrite(this, __str, 1, v13, v14, v15, v16, v17);
        total_in >>= 8;
        --v33;
      }

      while (v33);
      v34 = *(this + 5);
      v35 = strm.total_in;
      v36 = *(v34 + 152) + (*(this + 34) << 7);
      *(v36 + 124) = 257;
      *(v36 + 112) = v35;
      *(v36 + 120) = v5;
      *(v34 + 296) = 1;
      if (deflateEnd(&strm) >= 2)
      {
        v39 = *(this + 5);
        v40 = *(v39 + 152) + (*(this + 34) << 7);
        if (*(v39 + 24))
        {
          v41 = *(v39 + 16);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1023, "dfutil/realdf", 35, "%.500s %.500s %d", v37, v38, v40);
      }

      v42 = *(this + 26);
      if (v42 >= 1)
      {
        v43 = 16 * v42 - 16;
        do
        {
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 12) + v43);
          v43 -= 16;
        }

        while (v43 != -16);
      }

      *(this + 26) = 0;
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
      v4 = *(this + 5);
    }

    if (*(this + 14))
    {
      v44 = *(this + 6);
    }

    else
    {
      v44 = &unk_26288F516;
    }

    DFile::reportProgress(v4, v44, a3);
    *(this + 5) = 0;
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 96);
  DgnString::~DgnString((this + 48));
  DgnStream::~DgnStream(this);
  v45 = *MEMORY[0x277D85DE8];
}

{
  RealDFileSubFileStream::~RealDFileSubFileStream(this, a2, a3);

  JUMPOUT(0x26672B1B0);
}

void sub_2627F52D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void RealDFileSubFileStream::basicWrite(RealDFileSubFileStream *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return;
  }

  v8 = a3;
  v11 = *(this + 22);
  v12 = *(this + 10);
  v13 = *(this + 5);
  v14 = *(v13 + 152) + (*(this + 34) << 7);
  if (4096 - (v12 & 0xFFF) >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = 4096 - (v12 & 0xFFF);
  }

  v16 = *(this + 10) & 0xFFFLL | ((*(v13 + 216) + v11) << 12);
  v17 = a3;
  while (1)
  {
    if (v17 <= v15)
    {
      v20 = 0;
    }

    else
    {
      v18 = *(this + 5);
      v19 = *(this + 34);
      if (v11 == *(v14 + 104))
      {
        v20 = RealDFile::addBlock(v18, v19, a3, a4, a5, a6, a7, a8);
        *(v14 + 108) = 0;
      }

      else
      {
        v20 = v11 + 1;
        v22 = *(v18 + 144);
        if (v22 > v11 + 1)
        {
          v23 = (*(v18 + 136) + 2 * v20);
          while (1)
          {
            v24 = *v23++;
            if (v24 == v19)
            {
              break;
            }

            if (v22 == ++v20)
            {
              v20 = *(v18 + 144);
              break;
            }
          }
        }
      }
    }

    v21 = v11 + 1;
    if (v17 == v15 || v20 != v21)
    {
      break;
    }

LABEL_14:
    if (v17 - v15 >= 0x1000)
    {
      v15 += 4096;
    }

    else
    {
      v15 = v17;
    }

    LODWORD(v11) = v20;
  }

  RealDFile::doWriteToCache(*(this + 5), v16, a2, v15);
  v17 -= v15;
  if (v17)
  {
    a2 += v15;
    v16 = (*(*(this + 5) + 216) + v20) << 12;
    v15 = 0;
    goto LABEL_14;
  }

  v25 = *(this + 10) + v8;
  *(this + 10) = v25;
  v26 = *(v14 + 104);
  v27 = v25 & 0xFFF;
  if ((v25 & 0xFFF) == 0)
  {
    v28 = *(this + 5);
    v29 = *(this + 34);
    if (v11 == v26)
    {
      LODWORD(v11) = RealDFile::addBlock(v28, v29, a3, a4, a5, a6, a7, a8);
      *(v14 + 108) = 0;
      v26 = *(v14 + 104);
    }

    else
    {
      v30 = *(v28 + 144);
      if (v30 <= v21)
      {
        LODWORD(v11) = v11 + 1;
      }

      else
      {
        LODWORD(v11) = v11 + 1;
        v31 = (*(v28 + 136) + 2 * v21);
        while (1)
        {
          v32 = *v31++;
          if (v32 == v29)
          {
            break;
          }

          LODWORD(v11) = v11 + 1;
          if (v30 == v11)
          {
            LODWORD(v11) = *(v28 + 144);
            break;
          }
        }
      }
    }
  }

  if (v11 == v26 && *(v14 + 108) < v27)
  {
    *(v14 + 108) = v27;
    *(*(this + 5) + 296) = 1;
  }

  *(this + 22) = v11;
}

void RealDFileSubFileStream::printSize(RealDFileSubFileStream *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1044, &v98);
  if (v99)
  {
    v16 = v98;
  }

  else
  {
    v16 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288F516, a3, &unk_26288F516, v16);
  DgnString::~DgnString(&v98);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288F516);
  v97 = 0;
  v98 = 0;
  v21 = (a3 + 1);
  v96 = 0;
  DgnStream::printSize(this, 0xFFFFFFFFLL, v21, &v98, &v97, &v96);
  *a4 += v98;
  *a5 += v97;
  *a6 += v96;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  v95 = a3;
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1046, &v98);
  if (v99)
  {
    v28 = v98;
  }

  else
  {
    v28 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v21, &unk_26288F516, v23, v23, v28, v22, v22, 0);
  DgnString::~DgnString(&v98);
  *a4 += v22;
  *a5 += v22;
  v29 = sizeObject(this + 48);
  v30 = sizeObject(this + 48);
  v31 = sizeObject(this + 48);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1048, &v98);
  if (v99)
  {
    v36 = v98;
  }

  else
  {
    v36 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v21, &unk_26288F516, v23, v23, v36, v29, v30, v31);
  DgnString::~DgnString(&v98);
  *a4 += v29;
  *a5 += v30;
  *a6 += v31;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1050, &v98);
  if (v99)
  {
    v41 = v98;
  }

  else
  {
    v41 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, v21, &unk_26288F516, v23, v23, v41, 2, 2, 0);
  DgnString::~DgnString(&v98);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1051, &v98);
  if (v99)
  {
    v46 = v98;
  }

  else
  {
    v46 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v21, &unk_26288F516, v23, v23, v46, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1052, &v98);
  if (v99)
  {
    v51 = v98;
  }

  else
  {
    v51 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, v21, &unk_26288F516, v23, v23, v51, 1, 1, 0);
  DgnString::~DgnString(&v98);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1054, &v98);
  if (v99)
  {
    v56 = v98;
  }

  else
  {
    v56 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v21, &unk_26288F516, v23, v23, v56, 8, 8, 0);
  DgnString::~DgnString(&v98);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1056, &v98);
  if (v99)
  {
    v61 = v98;
  }

  else
  {
    v61 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v21, &unk_26288F516, v23, v23, v61, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1057, &v98);
  if (v99)
  {
    v66 = v98;
  }

  else
  {
    v66 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_26288F516, v23, v23, v66, 1, 1, 0);
  DgnString::~DgnString(&v98);
  ++*a4;
  ++*a5;
  v67 = sizeObject<DgnPrimArray<unsigned char>>(this + 96, 0);
  v68 = sizeObject<DgnPrimArray<unsigned char>>(this + 96, 1);
  v98 = 0;
  v99 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v98);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1059, &v98);
  if (v99)
  {
    v73 = v98;
  }

  else
  {
    v73 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, v21, &unk_26288F516, v23, v23, v73, v67, v68, 0);
  DgnString::~DgnString(&v98);
  *a4 += v67;
  *a5 += v68;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1061, &v98);
  if (v99)
  {
    v78 = v98;
  }

  else
  {
    v78 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, v21, &unk_26288F516, v23, v23, v78, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1063, &v98);
  if (v99)
  {
    v83 = v98;
  }

  else
  {
    v83 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, v21, &unk_26288F516, v23, v23, v83, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1065, &v98);
  if (v99)
  {
    v88 = v98;
  }

  else
  {
    v88 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, v21, &unk_26288F516, v23, v23, v88, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1067, &v98);
  if (v99)
  {
    v93 = v98;
  }

  else
  {
    v93 = &unk_26288F516;
  }

  v94 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v95, &unk_26288F516, (35 - v95), (35 - v95), v93, *a4, *a5, *a6);
  DgnString::~DgnString(&v98);
}

void sub_2627F5C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RealDFileSubFileStream::seekFromBeg(RealDFileSubFileStream *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 92) == 1)
  {
    if (*(this + 28) < a2)
    {
      v10 = *(this + 5);
      v11 = *(v10 + 152) + (*(this + 34) << 7);
      if (*(v10 + 24))
      {
        v12 = *(v10 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1082, "dfutil/realdf", 34, "%.500s %.500s", a7, a8, v11);
    }

    *(this + 29) = a2;
  }

  else
  {
    v13 = *(this + 5);
    v14 = *(v13 + 152) + (*(this + 34) << 7);
    if (*(v14 + 108) + ((*(v14 + 96) - 1) << 12) < a2)
    {
      if (*(v13 + 24))
      {
        v15 = *(v13 + 16);
      }

      v26 = *(v14 + 108) + ((*(v14 + 96) - 1) << 12);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1095, "dfutil/realdf", 50, "%.500s %.500s %llu %llu", a7, a8, v14);
    }

    v16 = *(this + 22);
    v17 = (a2 >> 12) - (*(this + 10) >> 12);
    if (v17 < 1)
    {
      if (v17 < 0)
      {
        v23 = *(this + 5);
        v24 = *(v23 + 144);
        do
        {
          if (v24 <= --v16)
          {
            v16 = v24 - 1;
          }

          for (; v16 != -1; --v16)
          {
            if (*(*(v23 + 136) + 2 * v16) == *(this + 34))
            {
              break;
            }
          }
        }

        while (!__CFADD__(v17++, 1));
      }
    }

    else
    {
      v18 = *(this + 5);
      v19 = *(v18 + 144);
      do
      {
        if (v19 > ++v16)
        {
          v20 = (*(v18 + 136) + 2 * v16);
          while (1)
          {
            v21 = *v20++;
            if (v21 == *(this + 34))
            {
              break;
            }

            if (v19 == ++v16)
            {
              v16 = *(v18 + 144);
              break;
            }
          }
        }
      }

      while (v17-- > 1);
    }

    *(this + 22) = v16;
    *(this + 10) = a2;
  }

  *(this + 76) = 0;
}

uint64_t RealDFileSubFileStream::seekToEnd(uint64_t this)
{
  if (*(this + 92) == 1)
  {
    *(this + 116) = *(this + 112);
    *(this + 76) = 0;
  }

  else
  {
    v1 = *(*(this + 40) + 152) + (*(this + 68) << 7);
    return (*(*this + 24))(this, *(v1 + 108) + ((*(v1 + 96) - 1) << 12));
  }

  return this;
}

uint64_t RealDFileSubFileStream::tell(RealDFileSubFileStream *this)
{
  if (*(this + 92) == 1)
  {
    return *(this + 29);
  }

  else
  {
    return *(this + 10);
  }
}

unint64_t RealDFileSubFileStream::tell32(RealDFileSubFileStream *this)
{
  v3 = (*(*this + 40))(this);
  if (HIDWORD(v3))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1154, "dfutil/realdf", 59, "%s", v1, v2, &unk_26288F516);
  }

  return v3;
}

uint64_t RealDFileSubFileStream::peekForChar(RealDFileSubFileStream *this)
{
  v2 = *(this + 76);
  v3 = (*(*this + 40))(this);
  v6 = 0;
  if ((*(*this + 72))(this, &v6, 1, 0))
  {
    v4 = v6;
    (*(*this + 24))(this, v3);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  *(this + 76) = v2;
  return v4;
}

uint64_t RealDFileSubFileStream::basicCompressedRead(RealDFileSubFileStream *this, char *__dst, unsigned int a3)
{
  v3 = *(this + 29);
  v4 = *(this + 28) - v3;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    v8 = v3 / 0x500000uLL;
    v9 = *(this + 12) + 16 * v8;
    v10 = v3 % 0x500000;
    v11 = *(v9 + 8) - v10;
    v12 = v5 >= v11 ? v11 : v5;
    memcpy(__dst, (*v9 + v10), v12);
    *(this + 29) += v12;
    v13 = v5 - v12;
    if (v5 != v12)
    {
      v14 = v12 + v10;
      v15 = v11 - v12;
      do
      {
        if (!v15 || v14 >= *(v9 + 8))
        {
          v14 = 0;
          LODWORD(v8) = v8 + 1;
          v9 = *(this + 12) + 16 * v8;
          v15 = *(v9 + 8);
        }

        if (v13 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v13;
        }

        memcpy(&__dst[v12], (*v9 + v14), v16);
        LODWORD(v12) = v16 + v12;
        *(this + 29) += v16;
        v15 -= v16;
        v14 += v16;
        v13 -= v16;
      }

      while (v13);
    }
  }

  return v5;
}

size_t RealDFileSubFileStream::readWithMode(RealDFileSubFileStream *this, char *a2, unsigned int a3, int a4)
{
  if (*(this + 92))
  {
    v7 = RealDFileSubFileStream::basicCompressedRead(this, a2, a3);
  }

  else
  {
    v7 = RealDFileSubFileStream::basicRead(this, a2, a3);
  }

  v10 = v7;
  if (v7 < a3)
  {
    *(this + 76) = 1;
    if (a4 == 1)
    {
      v11 = *(this + 5);
      v12 = *(v11 + 152) + (*(this + 34) << 7);
      if (*(v11 + 24))
      {
        v13 = *(v11 + 16);
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1276, "dfutil/realdf", 19, "%.500s %.500s %u %u", v8, v9, v12);
    }
  }

  return v10;
}

void RealDFileSubFileStream::throwUnexpectedEof(RealDFileSubFileStream *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  v9 = *(v8 + 152);
  if (*(v8 + 24))
  {
    v10 = *(v8 + 16);
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1288, "dfutil/realdf", 19, "%.500s %.500s %u %u", a7, a8, v9 + (*(this + 34) << 7));
}

void RealDFileSubFileStream::writeBytes(RealDFileSubFileStream *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return;
  }

  if (!*(this + 18))
  {
    v11 = (*(*this + 40))(this);
    (*(*this + 24))(this, v11);
    *(this + 18) = 1;
  }

  if (*(this + 92))
  {
    v12 = *(this + 29);
    if ((v12 + a3) >> 32)
    {
      v13 = *(this + 5);
      v14 = *(v13 + 152) + (*(this + 34) << 7);
      if (*(v13 + 24))
      {
        v15 = *(v13 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1317, "dfutil/realdf", 51, "%.500s %.500s", a7, a8, v14);
      LODWORD(v12) = *(this + 29);
    }

    v16 = v12 + a3;
    v17 = *(this + 28);
    v18 = v12 + a3 - v17;
    if (v12 + a3 <= v17)
    {
      goto LABEL_45;
    }

    v19 = 5242880 * (v17 / 0x500000) - v17 + 5242880;
    v20 = *(this + 26);
    v21 = v18 - v19;
    if (v18 >= v19)
    {
      v23 = *(this + 12) + 16 * (v20 - 1);
      v24 = *(v23 + 12);
      v25 = *(v23 + 8) + v19;
      if (v25 > v24)
      {
        DgnPrimArray<char>::reallocElts(*(this + 12) + 16 * (v20 - 1), v25 - v24, 1);
        v25 = *(v23 + 8) + v19;
        v20 = *(this + 26);
      }

      *(v23 + 8) = v25;
      v26 = v21 / 0x500000;
      v27 = v21 / 0x500000 + 1;
      v28 = v20 + v27;
      v29 = *(this + 27);
      v30 = v20;
      if (v20 + v27 > v29)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 96, v20 + v27 - v29, 1);
        v30 = *(this + 26);
        v28 = v30 + v27;
      }

      v56 = v21;
      if (v30 <= v28)
      {
        if (v30 < v28)
        {
          v33 = v28 - v30;
          v34 = 16 * v30;
          do
          {
            v35 = (*(this + 12) + v34);
            *v35 = 0;
            v35[1] = 0;
            v34 += 16;
            --v33;
          }

          while (v33);
        }
      }

      else if (v30 > v28)
      {
        v31 = v30;
        v32 = 16 * v30 - 16;
        do
        {
          --v31;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 12) + v32);
          v32 -= 16;
        }

        while (v31 > v28);
      }

      v36 = v56 - 5242880 * v26;
      *(this + 26) = v28;
      v37 = v20 + v26;
      if (v20 < v20 + v26)
      {
        v38 = 16 * v20;
        do
        {
          v39 = *(this + 12) + v38;
          if (*(v39 + 12) >> 20 <= 4u)
          {
            v57 = 0;
            *(v39 + 12) = realloc_array(*v39, &v57, 0x500000uLL, *(v39 + 8), *(v39 + 8), 1);
            *v39 = v57;
          }

          *(v39 + 8) = 5242880;
          v38 += 16;
          --v26;
        }

        while (v26);
      }

      v40 = *(this + 12) + 16 * v37;
      if (*(v40 + 12) < v36)
      {
        v57 = 0;
        *(v40 + 12) = realloc_array(*v40, &v57, v36, *(v40 + 8), *(v40 + 8), 1);
        *v40 = v57;
      }

      *(v40 + 8) = v36;
      goto LABEL_44;
    }

    if (v20)
    {
LABEL_41:
      v44 = *(this + 12) + 16 * (v20 - 1);
      v45 = *(v44 + 12);
      v46 = *(v44 + 8) + v18;
      if (v46 > v45)
      {
        DgnPrimArray<char>::reallocElts(*(this + 12) + 16 * (v20 - 1), v46 - v45, 1);
        v46 = *(v44 + 8) + v18;
      }

      *(v44 + 8) = v46;
LABEL_44:
      *(this + 28) = v16;
      LODWORD(v12) = *(this + 29);
LABEL_45:
      v47 = v12 / 0x500000uLL;
      v48 = v12 % 0x500000;
      v49 = *(this + 12) + 16 * v47;
      v50 = *(v49 + 8) - v48;
      if (a3 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = a3;
      }

      memcpy((*v49 + v48), a2, v51);
      *(this + 29) += v51;
      v52 = a3 - v51;
      if (a3 != v51)
      {
        v53 = v51 + v48;
        v54 = v50 - v51;
        do
        {
          if (!v54 || v53 >= *(v49 + 8))
          {
            v53 = 0;
            LODWORD(v47) = v47 + 1;
            v49 = *(this + 12) + 16 * v47;
            v54 = *(v49 + 8);
          }

          if (v52 >= v54)
          {
            v55 = v54;
          }

          else
          {
            v55 = v52;
          }

          memcpy((*v49 + v53), &a2[v51], v55);
          LODWORD(v51) = v55 + v51;
          *(this + 29) += v55;
          v54 -= v55;
          v53 += v55;
          v52 -= v55;
        }

        while (v52);
      }

      return;
    }

    if (*(this + 27))
    {
      v22 = 0;
      v20 = 1;
    }

    else
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 96, 1, 1);
      v22 = *(this + 26);
      v20 = v22 + 1;
      if (v22 == -1)
      {
LABEL_40:
        *(this + 26) = v20;
        goto LABEL_41;
      }
    }

    v41 = v20 - v22;
    v42 = 16 * v22;
    do
    {
      v43 = (*(this + 12) + v42);
      *v43 = 0;
      v43[1] = 0;
      v42 += 16;
      --v41;
    }

    while (v41);
    goto LABEL_40;
  }

  RealDFileSubFileStream::basicWrite(this, a2, a3, a4, a5, a6, a7, a8);
}

void RealDFile::flushDFile(RealDFile *this)
{
  if (*(this + 108))
  {
    OsFile::seekFromBegGrowWithZeros(*(this + 10), *(this + 53));
    if (*(this + 46))
    {
      EncryptBuffer(*(this + 51), *(this + 108), *(this + 46), v2, v3, v4, v5, v6);
    }

    OsFile::writeBytes(*(this + 10), *(this + 51), *(this + 108));
    *(this + 108) = 0;
  }
}

uint64_t RealDFileSubFileStream::beginCachedReadGroup(RealDFileSubFileStream *this, int a2, int a3, char a4)
{
  result = (*(*this + 40))(this);
  if ((a4 & 1) != 0 || (result & 0xFFF) == 0)
  {
    *(this + 30) = *(this + 22);
    v9 = *(this + 5);
  }

  else
  {
    v9 = *(this + 5);
    v10 = *(this + 22) + 1;
    v11 = *(v9 + 144);
    if (v11 > v10)
    {
      v12 = (*(v9 + 136) + 2 * v10);
      while (1)
      {
        v13 = *v12++;
        if (v13 == *(this + 34))
        {
          break;
        }

        if (v11 == ++v10)
        {
          v10 = *(v9 + 144);
          break;
        }
      }
    }

    *(this + 30) = v10;
  }

  *(v9 + 376) = a2;
  *(v9 + 380) = a3;
  *(v9 + 384) = a4;
  return result;
}

double RealDFile::endCachedReadGroup(RealDFile *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a3 < a4)
  {
    v8 = a3;
    v10 = *(this + 54);
    do
    {
      v11 = v8 + v10;
      if (v8 + v10 >= *(this + 86))
      {
        break;
      }

      v12 = *(*(this + 42) + 8 * v11);
      if (v12)
      {
        v13 = *(this + 90);
        if (v13 == *(this + 91))
        {
          DgnPrimArray<unsigned long long>::reallocElts(this + 352, 1, 1);
          v13 = *(this + 90);
        }

        *(*(this + 44) + 8 * v13) = v12;
        *(this + 90) = v13 + 1;
        *(*(this + 42) + 8 * v11) = 0;
        v14 = *(this + 93) - 1;
        *(this + 93) = v14;
        if (!v14)
        {
          *(this + 92) = 0;
          if (a5)
          {
            goto LABEL_17;
          }

          goto LABEL_25;
        }

        if (*(this + 92) == v11)
        {
          *(this + 92) = v11 + 1;
        }
      }

      ++v8;
      v15 = *(this + 36);
      if (v15 > v8)
      {
        v16 = (*(this + 17) + 2 * v8);
        while (1)
        {
          v17 = *v16++;
          if (v17 == a2)
          {
            break;
          }

          if (v15 == ++v8)
          {
            v8 = *(this + 36);
            break;
          }
        }
      }
    }

    while (v8 < a4);
  }

  if (a5)
  {
LABEL_17:
    if (*(this + 93) >= a5)
    {
      v18 = *(this + 86);
      if (v18 >= 1)
      {
        v19 = 8 * v18 - 8;
        do
        {
          DgnDelete<DgnPrimFixArray<char>>(*(*(this + 42) + v19));
          *(*(this + 42) + v19) = 0;
          v19 -= 8;
        }

        while (v19 != -8);
      }

      *(this + 86) = 0;
      v20 = *(this + 90);
      if (v20 >= 1)
      {
        v21 = 8 * v20 - 8;
        do
        {
          DgnDelete<DgnPrimFixArray<char>>(*(*(this + 44) + v21));
          *(*(this + 44) + v21) = 0;
          v21 -= 8;
        }

        while (v21 != -8);
      }

      *(this + 90) = 0;
      *(this + 46) = 0;
    }
  }

LABEL_25:
  *&result = 0x1800000003;
  *(this + 47) = 0x1800000003;
  *(this + 384) = 1;
  return result;
}

uint64_t RealDFile::addBlock(RealDFile *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = (*(this + 19) + (a2 << 7));
  v11 = (v10[26] + 1);
  v12 = *(this + 36);
  if (v12 > v11)
  {
    v13 = (*(this + 17) + 2 * v11);
    while (*v13++)
    {
      v11 = (v11 + 1);
      if (v12 == v11)
      {
        v11 = *(this + 36);
        break;
      }
    }
  }

  if (*(gParDiagnosticDFileSimulateAddBlockFailure + 41) == 1)
  {
    if (*(this + 6))
    {
      v15 = *(this + 2);
    }

    else
    {
      v15 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4464, "dfutil/realdf", 5, "%.500s", a7, a8, v15);
    v12 = *(this + 36);
  }

  if (v11 == v12)
  {
    v11 = RealDFile::addBlockSpace(this, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(this + 24) <= v11)
  {
    *(this + 24) = v11 + 1;
  }

  *(*(this + 17) + 2 * v11) = v8;
  v10[26] = v11;
  if (v10[25] == -1)
  {
    v10[25] = v11;
  }

  ++v10[24];
  *(this + 296) = 1;
  return v11;
}

void RealDFile::doWriteToCache(RealDFile *this, unint64_t a2, const char *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = a2;
    if (*(this + 332) == 1)
    {
      (*(*this + 64))(this, *(this + 385));
    }

    else
    {
      v8 = *(this + 82);
      if (v8)
      {
        v9 = *(this + 40);
        if (v9 <= a2)
        {
          v10 = a2;
        }

        else
        {
          v10 = *(this + 40);
        }

        v11 = v9 + v8;
        if (v11 >= a2 + a4)
        {
          v11 = a2 + a4;
        }

        if (v11 > v10)
        {
          *(this + 82) = 0;
        }
      }
    }

    v12 = *(this + 108);
    if (v12 && ((v13 = *(this + 53), v13 <= v6) && v13 + v12 >= v6 || (RealDFile::flushDFile(this), LODWORD(v12) = *(this + 108), v12)))
    {
      v14 = *(this + 53);
    }

    else
    {
      LODWORD(v12) = 0;
      *(this + 53) = v6;
      v14 = v6;
    }

    v15 = v6 - v14;
    v16 = *(this + 104);
    if (v16 - v15 >= v4)
    {
      v17 = v4;
    }

    else
    {
      v17 = v16 - v15;
    }

    v18 = v16 - v15;
    if (v18)
    {
      if (v17 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v17;
      }

      v20 = a3;
      v21 = v15;
      do
      {
        v22 = *v20++;
        *(*(this + 51) + v21++) = v22;
        --v19;
      }

      while (v19);
      LODWORD(v12) = *(this + 108);
    }

    v23 = v17 + v15;
    if (v12 < v23)
    {
      *(this + 108) = v23;
    }

    if (v18 < v4)
    {
      do
      {
        RealDFile::flushDFile(this);
        a3 += v17;
        v4 -= v17;
        v24 = *(this + 104);
        if (v4 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v4;
        }

        if (v25)
        {
          for (i = 0; i != v25; ++i)
          {
            *(*(this + 51) + i) = a3[i];
          }
        }

        v6 += v17;
        *(this + 53) = v6;
        *(this + 108) = v25;
        v17 = v25;
      }

      while (v24 < v4);
    }
  }
}

ssize_t RealDFile::doReadFromCache(RealDFile *this, unint64_t a2, char *a3, ssize_t a4, int a5)
{
  v6 = a4;
  v10 = *(this + 108);
  v11 = a2 + a4;
  if (v10)
  {
    v12 = *(this + 53);
    if (v12 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = *(this + 53);
    }

    v14 = v12 + v10;
    if (v14 >= v11)
    {
      v14 = a2 + a4;
    }

    if (v14 > v13)
    {
      RealDFile::flushDFile(this);
    }
  }

  if (*(this + 78) >= v6)
  {
    v25 = *(this + 40);
    if (v25 <= a2)
    {
      v26 = a2;
    }

    else
    {
      v26 = *(this + 40);
    }

    v27 = v25 + *(this + 82);
    if (v27 >= v11)
    {
      v27 = v11;
    }

    if (v27 <= v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = (v27 - v26);
    }

    if (v11 > v26 + v28 && v25 > a2)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      memcpy(&a3[(v26 - a2)], (*(this + 38) + (v26 - v25)), v30);
    }

    v31 = v6 - v30;
    if (v6 != v30)
    {
      if (v25 <= a2)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      OsFile::seekFromBeg(*(this + 10), v32 + a2);
      v38 = *(this + 10);
      if (a5)
      {
        Bytes = OsFile::readBytes(v38, *(this + 38), *(this + 78), v33, v34, v35, v36, v37);
        *(this + 82) = Bytes;
        if (Bytes >= v31)
        {
          v45 = v31;
        }

        else
        {
          v45 = Bytes;
        }

        DecryptBuffer(*(this + 38), Bytes, *(this + 46), v40, v41, v42, v43, v44);
        *(this + 40) = v32 + a2;
        memcpy(&a3[v32], *(this + 38), v45);
      }

      else
      {
        LODWORD(v45) = OsFile::readBytes(v38, &a3[v32], v6 - v30, v33, v34, v35, v36, v37);
        DecryptBuffer(&a3[v32], v45, *(this + 46), v46, v47, v48, v49, v50);
      }

      return (v45 + v30);
    }
  }

  else
  {
    OsFile::seekFromBeg(*(this + 10), a2);
    v6 = OsFile::readBytes(*(this + 10), a3, v6, v15, v16, v17, v18, v19);
    DecryptBuffer(a3, v6, *(this + 46), v20, v21, v22, v23, v24);
  }

  return v6;
}

void RealDFile::RealDFile(RealDFile *this, const FileSpec *a2)
{
  DFile::DFile(this, a2);
  *v3 = &unk_287522E78;
  *(v3 + 104) = 0u;
  *(v3 + 152) = 0u;
  v4 = v3 + 152;
  *(v3 + 200) = 0u;
  v5 = v3 + 200;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  MrecTime::MrecTime((v3 + 220));
  MrecTime::MrecTime((this + 244));
  DgnString::DgnString((this + 272));
  *(this + 38) = 0;
  *(this + 78) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 104) = 0;
  *(this + 54) = 9;
  *(this + 36) = 0x100000001;
  *(this + 296) = 0;
  *(this + 10) = 0;
  MrecTime::MrecTime((this + 220));
  MrecTime::MrecTime((this + 244));
  v6 = *(this + 40);
  if (v6 == *(this + 41))
  {
    DgnArray<RealDFileDirEntry>::reallocElts(v4, 1, 1);
    v6 = *(this + 40);
  }

  v7 = *(this + 19) + (v6 << 7);
  *(v7 + 110) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  *(v7 + 126) = -8454;
  ++*(this + 40);
  v8 = *(this + 52);
  if (v8 == *(this + 53))
  {
    DgnPrimArray<char>::reallocElts(v5, 1, 1);
    v8 = *(this + 52);
  }

  *(*(this + 25) + v8) = 0;
  *(this + 52) = v8 + 1;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 332) = 0;
  *(this + 23) = xmmword_26288F490;
  *(this + 192) = 257;
  *(this + 53) = 0;
  *(this + 108) = 0;
  *(this + 297) = 0;
}

void sub_2627F7034(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 392);
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(v1 + 352);
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(v1 + 336);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 + 304);
  DgnString::~DgnString((v1 + 272));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 168);
  DgnIArray<Utterance *>::~DgnIArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DFile::~DFile(v1);
  _Unwind_Resume(a1);
}

uint64_t *RealDFile::createReadOnlyClone(RealDFile *this)
{
  v2 = MemChunkAlloc(0x1B8uLL, 0);
  RealDFile::RealDFile(v2, (this + 16));
  DFile::copyDFileState(v3, this);
  if (*(gParDiagnosticDFileSimulateOpenFailure + 41) == 1)
  {
    if (*(this + 6))
    {
      v6 = *(this + 2);
    }

    else
    {
      v6 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1792, "dfutil/realdf", 17, "%.500s", v4, v5, v6);
  }

  OsFile::openOsFile((this + 16), 0);
  v2[10] = v9;
  if (!*(this + 10))
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1794, "dfutil/realdf", 17, "%.500s", v7, v8, v10);
  }

  *(v2 + 332) = 1;
  *(v2 + 44) = *(this + 44);
  *(v2 + 90) = *(this + 90);
  *(v2 + 24) = *(this + 24);
  DgnPrimArray<int>::copyArraySlice((v2 + 13), this + 13, 0, *(this + 28));
  DgnPrimArray<int>::copyArraySlice((v2 + 15), this + 15, 0, *(this + 32));
  DgnPrimArray<unsigned short>::copyArraySlice((v2 + 17), this + 17, 0, *(this + 36));
  DgnArray<RealDFileDirEntry>::copyArraySlice((v2 + 19), this + 19, 0, *(this + 40));
  DgnPrimArray<int>::copyArraySlice((v2 + 21), this + 21, 0, *(this + 44));
  DgnPrimArray<int>::copyArraySlice((v2 + 23), this + 23, 0, *(this + 48));
  DgnPrimArray<BOOL>::copyArraySlice((v2 + 25), this + 25, 0, *(this + 52));
  *(v2 + 54) = *(this + 54);
  MrecTime::operator=(v2 + 220, this + 220);
  MrecTime::operator=(v2 + 244, this + 244);
  DgnString::operator=((v2 + 34), (this + 272));
  v2[36] = *(this + 36);
  *(v2 + 148) = *(this + 148);
  return v2;
}

void RealDFile::~RealDFile(OsFile **this)
{
  *this = &unk_287522E78;
  if (this[10])
  {
    if ((this[6] & 1) == 0)
    {
      RealDFile::flushDFile(this);
      RealDFile::addRemainingDirEntryBlocks(this, v2, v3, v4, v5, v6, v7, v8);
      RealDFile::addRemainingBlockUsageBlocks(this, v9, v10, v11, v12, v13, v14, v15);
      RealDFile::shrinkInternalUsage(this);
    }

    if (*(this + 296) == 1)
    {
      RealDFile::writeHeader(this);
    }

    *(this + 82) = 0;
    if (this[6])
    {
      goto LABEL_44;
    }

    v40 = 0;
    v16 = realloc_array(0, &v40, 0x1000uLL, 0, 0, 1);
    v17 = v40;
    v37 = v40;
    v38 = 4096;
    v39 = v16;
    bzero(v40, 0x1000uLL);
    v18 = *(this + 40);
    if (v18 < 2)
    {
      v20 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      for (i = 1; i < v18; ++i)
      {
        v22 = (this[19] + 128 * i);
        if (v22[24])
        {
          v23 = v22[25] == -1;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v24 = v22[26];
          v25 = v22[27];
          OsFile::seekFromBeg(this[10], v25 + ((*(this + 54) + v24) << 12));
          OsFile::writeBytes(this[10], v17, (4096 - v22[27]));
          if (v24 >= v19)
          {
            v20 = v25;
          }

          if (v24 > v19)
          {
            v19 = v24;
          }

          v18 = *(this + 40);
        }
      }
    }

    v26 = *(this + 32);
    if (v26)
    {
      v27 = 0;
      while (*(this[15] + v27) != -1)
      {
        if (v26 == ++v27)
        {
          LODWORD(v27) = *(this + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    v28 = *(this + 28);
    if (v28)
    {
      v29 = 0;
      while (*(this[13] + v29) != -1)
      {
        if (v28 == ++v29)
        {
          LODWORD(v29) = *(this + 28);
          break;
        }
      }

      if (!v27)
      {
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v29) = 0;
      if (!v27)
      {
LABEL_35:
        if (v29 && *(this[13] + (v29 - 1)) > v19)
        {
          v20 = 4096;
        }

        v31 = *(this + 54);
        v32 = *(this + 24);
        if (v32)
        {
          v33 = ((v32 - 1) << 12) + v20;
        }

        else
        {
          v33 = 0;
        }

        OsFile::seekToEnd(this[10]);
        v34 = OsFile::tell(this[10]);
        v35 = v34;
        v36 = v33 + (v31 << 12);
        if (v34 != v36)
        {
          OsFile::seekFromBeg(this[10], v36);
          OsFile::writeBytes(this[10], v17, (v35 - v36));
        }

        OsFile::seekFromBeg(this[10], 32);
        LODWORD(v40) = -307429618;
        OsFile::writeBytes(this[10], &v40, 4uLL);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
LABEL_44:
        DgnDelete<OsFile>(this[10]);
        this[10] = 0;
        goto LABEL_45;
      }
    }

    v30 = *(this[15] + (v27 - 1));
    if (v30 > v19)
    {
      v20 = 4096;
      v19 = v30;
    }

    goto LABEL_35;
  }

LABEL_45:
  *(this + 297) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 51));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 49));
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll((this + 44));
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll((this + 42));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 38));
  DgnString::~DgnString((this + 34));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 25));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 23));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 21));
  DgnIArray<Utterance *>::~DgnIArray((this + 19));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 17));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 15));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 13));
  DFile::~DFile(this);
}

{
  RealDFile::~RealDFile(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t RealDFile::addRemainingDirEntryBlocks(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (*(this + 176))
  {
    v9 = 0;
    this = 0;
    do
    {
      v10 = *(v8 + 144);
      v11 = v10 - this;
      if (v10 > this)
      {
        this = this;
        while (*(*(v8 + 136) + 2 * this))
        {
          ++this;
          if (!--v11)
          {
            goto LABEL_9;
          }
        }
      }

      if (this == v10)
      {
LABEL_9:
        this = RealDFile::addBlockSpace(v8, a2, a3, a4, a5, a6, a7, a8);
      }

      *(*(v8 + 104) + 4 * *(*(v8 + 168) + 4 * v9)) = this;
      *(*(v8 + 136) + 2 * this) = -2;
      if (*(v8 + 96) < (this + 1))
      {
        *(v8 + 96) = this + 1;
      }

      ++v9;
    }

    while (v9 < *(v8 + 176));
  }

  *(v8 + 176) = 0;
  return this;
}

uint64_t RealDFile::addRemainingBlockUsageBlocks(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (*(this + 192))
  {
    v9 = 0;
    this = 0;
    do
    {
      v10 = *(v8 + 144);
      v11 = v10 - this;
      if (v10 > this)
      {
        this = this;
        while (*(*(v8 + 136) + 2 * this))
        {
          ++this;
          if (!--v11)
          {
            goto LABEL_9;
          }
        }
      }

      if (this == v10)
      {
LABEL_9:
        this = RealDFile::addBlockSpace(v8, a2, a3, a4, a5, a6, a7, a8);
      }

      *(*(v8 + 120) + 4 * *(*(v8 + 184) + 4 * v9)) = this;
      *(*(v8 + 136) + 2 * this) = -1;
      if (*(v8 + 96) < (this + 1))
      {
        *(v8 + 96) = this + 1;
      }

      ++v9;
    }

    while (v9 < *(v8 + 192));
  }

  *(v8 + 192) = 0;
  return this;
}

void RealDFile::shrinkInternalUsage(RealDFile *this)
{
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = *(this + 36);
    if (v4)
    {
      v5 = 0;
      v6 = *(this + 17);
      v7 = (v6 + 2 * v4 - 2);
      while (v4 != v5)
      {
        v8 = *v7--;
        ++v5;
        if (v8)
        {
          v9 = (v4 - v5 + 2046) / 0x7FEu;
          goto LABEL_8;
        }
      }

      v9 = 0;
LABEL_8:
      v10 = 2046 * v9;
      if (2046 * v9 < v4)
      {
        v11 = *(this + 32);
        if (v11 > v9)
        {
          v12 = *(this + 15) - 4;
          do
          {
            v13 = *(v12 + 4 * v11);
            if (v13 != -1)
            {
              *(v6 + 2 * v13) = 0;
              *(v12 + 4 * v11) = -1;
            }

            --v11;
          }

          while (v11 > v9);
        }

        v14 = *(this + 37);
        if (v10 > v14)
        {
          DgnPrimArray<short>::reallocElts(this + 136, v10 - v14, 0);
        }

        *(this + 36) = v10;
        *(this + 296) = 1;
      }
    }

    v15 = *(this + 32);
    if (v15)
    {
      LODWORD(v16) = 0;
      v17 = 0;
      v18 = *(this + 15);
      do
      {
        v19 = *(v18 + 4 * v17);
        if (v19 == -1)
        {
          break;
        }

        v20 = *(this + 36);
        v21 = v20 - v16;
        if (v20 <= v16)
        {
          break;
        }

        v22 = *(this + 17);
        v16 = v16;
        while (*(v22 + 2 * v16))
        {
          ++v16;
          if (!--v21)
          {
            goto LABEL_28;
          }
        }

        if (v19 > v16)
        {
          *(v22 + 2 * v16) = *(v22 + 2 * v19);
          *(v22 + 2 * v19) = 0;
          *(v18 + 4 * v17) = v16;
          *(this + 296) = 1;
          v15 = *(this + 32);
        }

        ++v17;
      }

      while (v17 < v15);
    }

LABEL_28:
    v23 = *(this + 28);
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = *(this + 13);
      do
      {
        v27 = *(v26 + 4 * v25);
        if (v27 == -1)
        {
          break;
        }

        v28 = *(this + 36);
        if (v24 < v28)
        {
          while (*(*(this + 17) + 2 * v24))
          {
            if (v28 == ++v24)
            {
              v24 = *(this + 36);
              goto LABEL_36;
            }
          }

          v24 = v24;
        }

LABEL_36:
        if (v24 >= *(this + 40))
        {
          break;
        }

        if (v24 < v27)
        {
          v29 = *(this + 17);
          *(v29 + 2 * v24) = *(v29 + 2 * v27);
          *(v29 + 2 * v27) = 0;
          *(v26 + 4 * v25) = v24;
          *(this + 296) = 1;
          v23 = *(this + 28);
        }

        ++v25;
      }

      while (v25 < v23);
    }

    v2 = 0;
  }

  while ((v3 & 1) != 0);
  v30 = *(this + 36);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      if (*(*(this + 17) + 2 * v31))
      {
        v32 = v31;
      }

      ++v31;
    }

    while (v30 != v31);
    v33 = v32 + 1;
  }

  else
  {
    v33 = 1;
  }

  if (v33 < *(this + 24))
  {
    *(this + 24) = v33;
    OsFile::shrinkSize(*(this + 10), (*(this + 54) + v33) << 12);
    *(this + 296) = 1;
  }
}

void RealDFile::writeHeader(RealDFile *this)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v2 = *(this + 46);
  *(this + 46) = 0;
  OsFile::seekFromBeg(*(this + 10), 0);
  v49 = this;
  v50 = 0;
  v51 = 1;
  v53[0] = 0;
  v48 = realloc_array(0, v53, 0x600uLL, 0, 0, 1);
  v46 = v53[0];
  v47 = 1536;
  bzero(v53[0], 0x600uLL);
  snprintf(v53, 0x10uLL, "DFILE v%u", *(this + 44));
  v3 = strlen(v53);
  if (v3 <= 0xFuLL)
  {
    bzero(v53 + v3, 16 - v3);
  }

  RealDFile::doWriteToCache(this, 0, v53, 0x10u);
  LOWORD(v44) = *(this + 44);
  RealDFile::doWriteToCache(this, 0x10uLL, &v44, 2u);
  LOWORD(v44) = *(this + 45);
  RealDFile::doWriteToCache(this, 0x12uLL, &v44, 2u);
  LOWORD(v44) = v2;
  RealDFile::doWriteToCache(this, 0x14uLL, &v44, 2u);
  v50 = 22;
  LOWORD(v44) = -2;
  RealDFile::doWriteToCache(this, 0x16uLL, &v44, 2u);
  LODWORD(v44) = 4096;
  RealDFile::doWriteToCache(this, 0x18uLL, &v44, 4u);
  LODWORD(v44) = *(this + 24);
  RealDFile::doWriteToCache(this, 0x1CuLL, &v44, 4u);
  LODWORD(v44) = -758187298;
  RealDFile::doWriteToCache(this, 0x20uLL, &v44, 4u);
  v50 = 36;
  LODWORD(v44) = *(this + 72);
  RealDFile::doWriteToCache(this, 0x24uLL, &v44, 4u);
  MrecTime::setToCurrentLocalTime((this + 244));
  v44 = 0;
  v45 = 0;
  v52 = 0;
  v4 = realloc_array(0, &v52, 0x18uLL, 0, 0, 1);
  v44 = v52;
  LODWORD(v45) = 6;
  HIDWORD(v45) = v4 >> 2;
  MrecTime::packLittleEndMrecTime(this + 55, v52);
  if (v45)
  {
    v5 = (4 * v45);
    RealDFile::doWriteToCache(this, 0x28uLL, v44, 4 * v45);
    v6 = v5 + 40;
    v50 = v6;
  }

  else
  {
    v6 = 40;
  }

  MrecTime::packLittleEndMrecTime(this + 61, v44);
  if (v45)
  {
    v7 = 4 * v45;
    RealDFile::doWriteToCache(this, v6, v44, 4 * v45);
    v6 += v7;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
  if (v6 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v8, v9, v6);
  }

  RealDFile::doWriteToCache(this, v6, v46, 0xA8u);
  v50 = v6 + 168;
  if (v6 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v10, v11, v6 - 88);
  }

  DgnString::DgnString(&v44);
  DgnString::preAllocate(&v44, 256);
  GetFullMrecDescription(&v44);
  v12 = v45;
  Buffer = DgnString::getBuffer(&v44, 0x100u);
  v14 = Buffer;
  LODWORD(v15) = v12 - 1;
  if (!v12)
  {
    LODWORD(v15) = 0;
  }

  if (v15 >= 0xFF)
  {
    v15 = 255;
  }

  else
  {
    v15 = v15;
  }

  bzero((Buffer + v15), (256 - v15));
  EncryptBuffer(v14, 0x100u, v2, v16, v17, v18, v19, v20);
  RealDFile::doWriteToCache(this, v6 + 168, v14, 0x100u);
  DgnString::~DgnString(&v44);
  if (v6 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v21, v22, v6 - 88);
  }

  RealDFile::doWriteToCache(this, v6 + 424, v46, 0x600u);
  v25 = v6 + 1960;
  v50 = v25;
  if (v25 != 2048)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v23, v24, v25);
  }

  v52 = 0;
  v26 = realloc_array(0, &v52, 0x83F8uLL, 0, 0, 1);
  v44 = v52;
  LODWORD(v45) = 8446;
  HIDWORD(v45) = v26 >> 2;
  v27 = xmmword_26286BF80;
  v28 = xmmword_26286B680;
  v29 = v52 + 2;
  v30 = 8448;
  v31 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x20FEuLL), v28)), *v27.i8).u8[0])
    {
      *(v29 - 2) = -1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x20FEuLL), *&v28)), *&v27).i8[2])
    {
      *(v29 - 1) = -1;
    }

    if (vuzp1_s16(*&v27, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x20FEuLL), *&v27))).i32[1])
    {
      *v29 = -1;
      v29[1] = -1;
    }

    v27 = vaddq_s64(v27, v31);
    v28 = vaddq_s64(v28, v31);
    v29 += 4;
    v30 -= 4;
  }

  while (v30);
  v32 = *(this + 28);
  if (!v32 || (v33 = 4 * v32, RealDFile::doWriteToCache(this, v25, *(this + 13), 4 * v32), v25 += v33, v32 = *(this + 28), v32 != 256))
  {
    v36 = 1024 - 4 * v32;
    RealDFile::doWriteToCache(this, v25, v44, v36);
    v25 += v36;
    v50 = v25;
  }

  if (v25 != 3072)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v34, v35, v25);
  }

  LODWORD(v52) = -307429602;
  RealDFile::doWriteToCache(this, v25, &v52, 4u);
  v37 = v25 + 4;
  v38 = *(this + 32);
  if (!v38 || (v39 = 4 * v38, RealDFile::doWriteToCache(this, v37, *(this + 15), 4 * v38), v37 += v39, v38 = *(this + 32), v38 != 8446))
  {
    v40 = 33784 - 4 * v38;
    RealDFile::doWriteToCache(this, v37, v44, v40);
    v37 += v40;
  }

  LODWORD(v52) = -307429602;
  RealDFile::doWriteToCache(this, v37, &v52, 4u);
  v50 = v37 + 4;
  if (v37 != 36860)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v41, v42, v37 + 4);
  }

  RealDFile::writeDirEntries(this, &v49);
  RealDFile::writeBlockUsage(this, &v49);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
  RealDFile::flushDFile(this);
  *(this + 46) = v2;
  *(this + 296) = 0;
  v43 = *MEMORY[0x277D85DE8];
}

void sub_2627F80A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void RealDFile::printSize(RealDFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2048, &v274);
  if (v275)
  {
    v16 = v274;
  }

  else
  {
    v16 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288F516, a3, &unk_26288F516, v16);
  DgnString::~DgnString(&v274);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288F516);
  v273 = 0;
  v274 = 0;
  v21 = (a3 + 1);
  v272 = 0;
  DFile::printSize(this, 0xFFFFFFFFLL, v21, &v274, &v273, &v272);
  *a4 += v274;
  *a5 += v273;
  *a6 += v272;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  v23 = *(this + 10);
  if (v23)
  {
    v24 = OsFile::sizeObject(v23, 0) + v22;
    v25 = *(this + 10);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v22 = 4;
    }

    else
    {
      v22 = 8;
    }

    if (v25 && (v22 += OsFile::sizeObject(v25, 1), (v26 = *(this + 10)) != 0))
    {
      v27 = OsFile::sizeObject(v26, 3);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = v22;
  }

  v271 = a3;
  v28 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2050, &v274);
  if (v275)
  {
    v33 = v274;
  }

  else
  {
    v33 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, v21, &unk_26288F516, v28, v28, v33, v24, v22, v27);
  DgnString::~DgnString(&v274);
  *a4 += v24;
  *a5 += v22;
  *a6 += v27;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v38 = v274;
  }

  else
  {
    v38 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v21, &unk_26288F516, v28, v28, v38, 2, 2, 0);
  DgnString::~DgnString(&v274);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v43 = v274;
  }

  else
  {
    v43 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v21, &unk_26288F516, v28, v28, v43, 2, 2, 0);
  DgnString::~DgnString(&v274);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v48 = v274;
  }

  else
  {
    v48 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, v21, &unk_26288F516, v28, v28, v48, 2, 2, 0);
  DgnString::~DgnString(&v274);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v53 = v274;
  }

  else
  {
    v53 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v50, v51, v52, v21, &unk_26288F516, v28, v28, v53, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v54 = 12;
  }

  else
  {
    v54 = 16;
  }

  v55 = *(this + 28);
  v56 = *(this + 29);
  if (v56 >= v55)
  {
    v57 = 0;
    if (v55 > 0)
    {
      v54 += 4 * (v55 - 1) + 4;
    }

    v58 = v54 + 4 * (v56 - v55);
  }

  else
  {
    v57 = 4 * v55;
    v58 = v54;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v63 = v274;
  }

  else
  {
    v63 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, v21, &unk_26288F516, v28, v28, v63, v58, v54, v57);
  DgnString::~DgnString(&v274);
  *a4 += v58;
  *a5 += v54;
  *a6 += v57;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 12;
  }

  else
  {
    v64 = 16;
  }

  v65 = *(this + 32);
  v66 = *(this + 33);
  if (v66 >= v65)
  {
    v67 = 0;
    if (v65 > 0)
    {
      v64 += 4 * (v65 - 1) + 4;
    }

    v68 = v64 + 4 * (v66 - v65);
  }

  else
  {
    v67 = 4 * v65;
    v68 = v64;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v73 = v274;
  }

  else
  {
    v73 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, v21, &unk_26288F516, v28, v28, v73, v68, v64, v67);
  DgnString::~DgnString(&v274);
  *a4 += v68;
  *a5 += v64;
  *a6 += v67;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 12;
  }

  else
  {
    v74 = 16;
  }

  v75 = *(this + 36);
  v76 = *(this + 37);
  if (v76 >= v75)
  {
    v77 = 0;
    if (v75 > 0)
    {
      v74 += 2 * (v75 - 1) + 2;
    }

    v78 = v74 + 2 * (v76 - v75);
  }

  else
  {
    v77 = 2 * v75;
    v78 = v74;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v83 = v274;
  }

  else
  {
    v83 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, v21, &unk_26288F516, v28, v28, v83, v78, v74, v77);
  DgnString::~DgnString(&v274);
  *a4 += v78;
  *a5 += v74;
  *a6 += v77;
  v84 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 12;
  }

  v85 = *(this + 40);
  v86 = v85 << 7;
  if (v85 <= 0)
  {
    v86 = 0;
  }

  v87 = v86 | v84;
  v88 = (v86 | v84) + ((*(this + 41) - v85) << 7);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v93 = v274;
  }

  else
  {
    v93 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v21, &unk_26288F516, v28, v28, v93, v88, v87, 0);
  DgnString::~DgnString(&v274);
  *a4 += v88;
  *a5 += v87;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v94 = 12;
  }

  else
  {
    v94 = 16;
  }

  v95 = *(this + 44);
  v96 = *(this + 45);
  if (v96 >= v95)
  {
    v97 = 0;
    if (v95 > 0)
    {
      v94 += 4 * (v95 - 1) + 4;
    }

    v98 = v94 + 4 * (v96 - v95);
  }

  else
  {
    v97 = 4 * v95;
    v98 = v94;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v103 = v274;
  }

  else
  {
    v103 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v100, v101, v102, v21, &unk_26288F516, v28, v28, v103, v98, v94, v97);
  DgnString::~DgnString(&v274);
  *a4 += v98;
  *a5 += v94;
  *a6 += v97;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v104 = 12;
  }

  else
  {
    v104 = 16;
  }

  v105 = *(this + 48);
  v106 = *(this + 49);
  if (v106 >= v105)
  {
    v107 = 0;
    if (v105 > 0)
    {
      v104 += 4 * (v105 - 1) + 4;
    }

    v108 = v104 + 4 * (v106 - v105);
  }

  else
  {
    v107 = 4 * v105;
    v108 = v104;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v113 = v274;
  }

  else
  {
    v113 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v110, v111, v112, v21, &unk_26288F516, v28, v28, v113, v108, v104, v107);
  DgnString::~DgnString(&v274);
  *a4 += v108;
  *a5 += v104;
  *a6 += v107;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v114 = 12;
  }

  else
  {
    v114 = 16;
  }

  v115 = *(this + 52);
  v116 = *(this + 53);
  v117 = v116 >= v115;
  v118 = v116 - v115;
  if (v117)
  {
    if (v115 > 0)
    {
      v119 = (v115 - 1) + v114 + 1;
    }

    else
    {
      v119 = v114;
    }

    v114 = v119 + v118;
    v115 = 0;
  }

  else
  {
    v119 = v114;
  }

  v120 = v115;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v125 = v274;
  }

  else
  {
    v125 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v122, v123, v124, v21, &unk_26288F516, v28, v28, v125, v114, v119, v120);
  DgnString::~DgnString(&v274);
  *a4 += v114;
  *a5 += v119;
  *a6 += v120;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v130 = v274;
  }

  else
  {
    v130 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v127, v128, v129, v21, &unk_26288F516, v28, v28, v130, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v135 = v274;
  }

  else
  {
    v135 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v132, v133, v134, v21, &unk_26288F516, v28, v28, v135, 24, 24, 0);
  DgnString::~DgnString(&v274);
  *a4 += 24;
  *a5 += 24;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v140 = v274;
  }

  else
  {
    v140 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v136, v137, v138, v139, v21, &unk_26288F516, v28, v28, v140, 24, 24, 0);
  DgnString::~DgnString(&v274);
  *a4 += 24;
  *a5 += 24;
  v141 = sizeObject(this + 272);
  v142 = sizeObject(this + 272);
  v143 = sizeObject(this + 272);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v148 = v274;
  }

  else
  {
    v148 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v144, v145, v146, v147, v21, &unk_26288F516, v28, v28, v148, v141, v142, v143);
  DgnString::~DgnString(&v274);
  *a4 += v141;
  *a5 += v142;
  *a6 += v143;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v153 = v274;
  }

  else
  {
    v153 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v150, v151, v152, v21, &unk_26288F516, v28, v28, v153, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v158 = v274;
  }

  else
  {
    v158 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v154, v155, v156, v157, v21, &unk_26288F516, v28, v28, v158, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v163 = v274;
  }

  else
  {
    v163 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v160, v161, v162, v21, &unk_26288F516, v28, v28, v163, 1, 1, 0);
  DgnString::~DgnString(&v274);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v168 = v274;
  }

  else
  {
    v168 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v165, v166, v167, v21, &unk_26288F516, v28, v28, v168, 1, 1, 0);
  DgnString::~DgnString(&v274);
  ++*a4;
  ++*a5;
  v169 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v169 = 8;
  }

  v170 = *(this + 78);
  if (v170 > 0)
  {
    v171 = (v170 - 1) + v169 + 1;
  }

  else
  {
    v171 = v169;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v176 = v274;
  }

  else
  {
    v176 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v172, v173, v174, v175, v21, &unk_26288F516, v28, v28, v176, v171, v171, 0);
  DgnString::~DgnString(&v274);
  *a4 += v171;
  *a5 += v171;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v181 = v274;
  }

  else
  {
    v181 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v178, v179, v180, v21, &unk_26288F516, v28, v28, v181, 8, 8, 0);
  DgnString::~DgnString(&v274);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v186 = v274;
  }

  else
  {
    v186 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v182, v183, v184, v185, v21, &unk_26288F516, v28, v28, v186, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v191 = v274;
  }

  else
  {
    v191 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v187, v188, v189, v190, v21, &unk_26288F516, v28, v28, v191, 1, 1, 0);
  DgnString::~DgnString(&v274);
  ++*a4;
  ++*a5;
  fixed = sizeObject<DgnPrimFixArray<char> *>(this + 336, 0);
  v193 = sizeObject<DgnPrimFixArray<char> *>(this + 336, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v198 = v274;
  }

  else
  {
    v198 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v195, v196, v197, v21, &unk_26288F516, v28, v28, v198, fixed, v193, 0);
  DgnString::~DgnString(&v274);
  *a4 += fixed;
  *a5 += v193;
  v199 = sizeObject<DgnPrimFixArray<char> *>(this + 352, 0);
  v200 = sizeObject<DgnPrimFixArray<char> *>(this + 352, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v205 = v274;
  }

  else
  {
    v205 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v202, v203, v204, v21, &unk_26288F516, v28, v28, v205, v199, v200, 0);
  DgnString::~DgnString(&v274);
  *a4 += v199;
  *a5 += v200;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v210 = v274;
  }

  else
  {
    v210 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v207, v208, v209, v21, &unk_26288F516, v28, v28, v210, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v215 = v274;
  }

  else
  {
    v215 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v211, v212, v213, v214, v21, &unk_26288F516, v28, v28, v215, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v220 = v274;
  }

  else
  {
    v220 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v216, v217, v218, v219, v21, &unk_26288F516, v28, v28, v220, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v225 = v274;
  }

  else
  {
    v225 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v221, v222, v223, v224, v21, &unk_26288F516, v28, v28, v225, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v230 = v274;
  }

  else
  {
    v230 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v226, v227, v228, v229, v21, &unk_26288F516, v28, v28, v230, 1, 1, 0);
  DgnString::~DgnString(&v274);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v235 = v274;
  }

  else
  {
    v235 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v231, v232, v233, v234, v21, &unk_26288F516, v28, v28, v235, 1, 1, 0);
  DgnString::~DgnString(&v274);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v236 = 12;
  }

  else
  {
    v236 = 16;
  }

  v237 = *(this + 100);
  v238 = *(this + 101);
  v117 = v238 >= v237;
  v239 = v238 - v237;
  if (v117)
  {
    if (v237 > 0)
    {
      v240 = (v237 - 1) + v236 + 1;
    }

    else
    {
      v240 = v236;
    }

    v236 = v240 + v239;
    v237 = 0;
  }

  else
  {
    v240 = v236;
  }

  v241 = v237;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v246 = v274;
  }

  else
  {
    v246 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v242, v243, v244, v245, v21, &unk_26288F516, v28, v28, v246, v236, v240, v241);
  DgnString::~DgnString(&v274);
  *a4 += v236;
  *a5 += v240;
  *a6 += v241;
  v247 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v247 = 8;
  }

  v248 = *(this + 104);
  if (v248 > 0)
  {
    v249 = (v248 - 1) + v247 + 1;
  }

  else
  {
    v249 = v247;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v254 = v274;
  }

  else
  {
    v254 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v251, v252, v253, v21, &unk_26288F516, v28, v28, v254, v249, v249, 0);
  DgnString::~DgnString(&v274);
  *a4 += v249;
  *a5 += v249;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v259 = v274;
  }

  else
  {
    v259 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v255, v256, v257, v258, v21, &unk_26288F516, v28, v28, v259, 8, 8, 0);
  DgnString::~DgnString(&v274);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052, &v274);
  if (v275)
  {
    v264 = v274;
  }

  else
  {
    v264 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v261, v262, v263, v21, &unk_26288F516, v28, v28, v264, 4, 4, 0);
  DgnString::~DgnString(&v274);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2060, &v274);
  if (v275)
  {
    v269 = v274;
  }

  else
  {
    v269 = &unk_26288F516;
  }

  v270 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v265, v266, v267, v268, v271, &unk_26288F516, (35 - v271), (35 - v271), v269, *a4, *a5, *a6);
  DgnString::~DgnString(&v274);
}

void sub_2627F94D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnPrimFixArray<char> *>(uint64_t a1, int a2)
{
  v2 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 4;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    if (v5 >= 1)
    {
      v6 = 12;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v6 = 8;
      }

      v7 = v5 + 1;
      v8 = *a1 + 8 * v5 - 8;
      do
      {
        v9 = v2;
        if (*v8)
        {
          v10 = *(*v8 + 8);
          if (v10 <= 0)
          {
            v11 = v6;
          }

          else
          {
            v11 = (v6 | 1) + (v10 - 1);
          }

          v9 = v11 + v2;
        }

        result += v9;
        --v7;
        v8 -= 8;
      }

      while (v7 > 1);
    }

    if (!a2)
    {
      v12 = (*(a1 + 12) - v5);
      v13 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v13 = 3;
      }

      result += v12 << v13;
    }
  }

  return result;
}

void *RealDFile::startUp(uint64_t a1, const FileSpec *a2, int a3, int a4, _DWORD *a5, DgnString *a6)
{
  v10 = a2;
  if (!OsFile::fileExists((a1 + 16), a2))
  {
    if (*(a1 + 312))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 304) = MemChunkAlloc(0x9000uLL, 0);
    *(a1 + 312) = 36864;
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_31:
    v23 = 0;
    *(a1 + 48) = 1;
    v21 = (a1 + 48);
    *(a1 + 288) = a3;
    v22 = (a1 + 297);
    *(a1 + 297) = 0;
    goto LABEL_40;
  }

  v15 = (a1 + 16);
  if (v10 == 1)
  {
    OsFile::openOsFile(v15, 1);
    v19 = v18;
    if (!v18)
    {
      if (*(a1 + 24))
      {
        v20 = *(a1 + 16);
      }

      else
      {
        v20 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2078, "dfutil/realdf", 13, "%.500s", v16, v17, v20);
    }

    DgnDelete<OsFile>(v19);
    if (!*(a1 + 312))
    {
      *(a1 + 304) = MemChunkAlloc(0x9000uLL, 0);
      *(a1 + 312) = 36864;
    }

    if (!*(a1 + 416))
    {
      *(a1 + 408) = MemChunkAlloc(0x9000uLL, 0);
      *(a1 + 416) = 36864;
    }

    *(a1 + 48) = 0;
    v21 = (a1 + 48);
    *(a1 + 288) = a3;
    v22 = (a1 + 297);
    *(a1 + 297) = 0;
LABEL_39:
    v23 = 2;
    goto LABEL_40;
  }

  DFileVersion = RealDFile::getDFileVersion(v15, v12);
  if ((DFileVersion - 1) > 4)
  {
    if ((DFileVersion - 9) > 0xFFFFFFFC)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*(a1 + 24))
    {
      v25 = *(a1 + 16);
    }

    else
    {
      v25 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2094, "dfutil/realdf", 14, "%.500s %d %d", v13, v14, v25);
  }

  if (*(a1 + 24))
  {
    v26 = *(a1 + 16);
  }

  else
  {
    v26 = &unk_26288F516;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2097, "dfutil/realdf", 18, "%.500s", v13, v14, v26);
LABEL_27:
  if (!*(a1 + 312))
  {
    goto LABEL_30;
  }

  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_8:
  if (!*(a1 + 416))
  {
    *(a1 + 408) = MemChunkAlloc(0x9000uLL, 0);
    *(a1 + 416) = 36864;
  }

  *(a1 + 48) = 0;
  v21 = (a1 + 48);
  *(a1 + 288) = a3;
  v22 = (a1 + 297);
  *(a1 + 297) = 0;
  switch(v10)
  {
    case 1:
      goto LABEL_39;
    case 3:
      v23 = 4;
      break;
    case 2:
      v23 = 3;
      break;
    default:
      v23 = 0;
      break;
  }

LABEL_40:
  if (*(gParDiagnosticDFileSimulateOpenFailure + 41) == 1)
  {
    if (*(a1 + 24))
    {
      v27 = *(a1 + 16);
    }

    else
    {
      v27 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2148, "dfutil/realdf", 17, "%.500s", v13, v14, v27);
  }

  OsFile::openOsFile((a1 + 16), v23);
  *(a1 + 80) = v28;
  if (!v28)
  {
    if (*(a1 + 24))
    {
      v31 = *(a1 + 16);
    }

    else
    {
      v31 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2150, "dfutil/realdf", 17, "%.500s", v29, v30, v31);
    v28 = *(a1 + 80);
  }

  FileSize = OsFile::getFileSize(v28);
  if (FileSize)
  {
    v35 = FileSize;
    RealDFile::readHeader(a1, a4, a5, a6);
    v38 = *(a1 + 96);
    if (v38)
    {
      v39 = *(*(a1 + 136) + 2 * (v38 - 1));
      if ((v39 - 1) <= 0xFFFC && (v35 & 0xFFF) != 0 && ((v35 - *(*(a1 + 152) + (v39 << 7) + 108)) & 0xFFF) != 0)
      {
        if (*(a1 + 24))
        {
          v40 = *(a1 + 16);
        }

        *(a1 + 216);
        errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2207, "dfutil/realdf", 12, "%llu %.500s %u %llu", v36, v37, v35);
      }
    }
  }

  else
  {
    if (*v21 == 1)
    {
      if (*(a1 + 24))
      {
        v41 = *(a1 + 16);
      }

      else
      {
        v41 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2158, "dfutil/realdf", 11, "%.500s", v33, v34, v41);
    }

    *(a1 + 88) = 8;
    *(a1 + 92) = 2;
    MrecTime::setToCurrentLocalTime((a1 + 220));
    RealDFile::writeHeader(a1);
  }

  *(a1 + 328) = 0;
  v42 = *(a1 + 304);
  if (v42)
  {
    MemChunkFree(v42, 0);
    *(a1 + 304) = 0;
  }

  *(a1 + 312) = 0;
  *(a1 + 332) = 1;
  *(a1 + 432) = 0;
  result = *(a1 + 408);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(a1 + 408) = 0;
  }

  *(a1 + 416) = 0;
  if ((*(a1 + 48) & 1) == 0)
  {
    result = MemChunkAlloc(0x7000uLL, 0);
    *(a1 + 408) = result;
    *(a1 + 416) = 28672;
  }

  *v22 = 1;
  return result;
}

uint64_t RealDFile::getDFileVersion(RealDFile *this, const FileSpec *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  OsFile::openOsFile(this, 0);
  if (!v2)
  {
    goto LABEL_13;
  }

  v8 = v2;
  if (OsFile::readBytes(v2, v30, 0x82u, v3, v4, v5, v6, v7) != 130)
  {
    OsFile::~OsFile(v8);
    MemChunkFree(v25, 0);
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  OsFile::seekFromBeg(v8, 0);
  *v28 = 0;
  v29 = 0;
  OsFile::readBytes(v8, v28, 0x10u, v9, v10, v11, v12, v13);
  HIBYTE(v29) = 0;
  OsFile::readBytes(v8, v27, 2u, v14, v15, v16, v17, v18);
  v19 = (v27[1] << 8);
  v20 = v27[0];
  OsFile::~OsFile(v8);
  MemChunkFree(v21, 0);
  if (v19 >= 0 && *&v28[3] == 1981826380 && *v28 == 1279870532)
  {
    result = v19 | v20;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_14:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RealDFile::readHeader(uint64_t a1, int a2, _DWORD *a3, DgnString *a4)
{
  v186 = *MEMORY[0x277D85DE8];
  v180 = a1;
  v182 = 0;
  RealDFile::doReadFromCache(a1, 0, v183, 16, 1);
  v185 = 0;
  LOWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x10uLL, &v178, 2, 1);
  v181 = 18;
  v10 = v178;
  *(a1 + 88) = v178;
  v11 = v10;
  if ((v10 - 6) >= 3)
  {
    if (*(a1 + 24))
    {
      v12 = *(a1 + 16);
    }

    else
    {
      v12 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2999, "dfutil/realdf", 22, "%.500s %u", v8, v9, v12);
    v11 = *(a1 + 88);
  }

  switch(v11)
  {
    case 8:
      v13 = *v183;
      v14 = 0x387620454C494644;
LABEL_12:
      if (!(v13 ^ v14 | v184))
      {
        goto LABEL_17;
      }

      break;
    case 7:
      v13 = *v183;
      v14 = 0x377620454C494644;
      goto LABEL_12;
    case 6:
      v13 = *v183;
      v14 = 0x367620454C494644;
      goto LABEL_12;
  }

  if (*(a1 + 24))
  {
    v15 = *(a1 + 16);
  }

  else
  {
    v15 = &unk_26288F516;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3009, "dfutil/realdf", 23, "%.500s %u %.500s", v8, v9, v15);
LABEL_17:
  LOWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x12uLL, &v178, 2, 1);
  v18 = v178;
  *(a1 + 90) = v178;
  v19 = *(a1 + 88);
  if (v19 == 6 && v18 || (v19 == 8 || v19 == 7) && v18)
  {
    if (*(a1 + 24))
    {
      v20 = *(a1 + 16);
    }

    else
    {
      v20 = &unk_26288F516;
    }

    v165 = *(a1 + 88);
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3016, "dfutil/realdf", 21, "%.500s %u %u", v16, v17, v20);
  }

  LOWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x14uLL, &v178, 2, 1);
  v21 = v178;
  LOWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x16uLL, &v178, 2, 1);
  v181 = 24;
  v24 = v178;
  if (v178 != 65534)
  {
    if (v178 == 65279)
    {
      if (*(a1 + 24))
      {
        v25 = *(a1 + 16);
      }

      else
      {
        v25 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3022, "dfutil/realdf", 49, "%.500s", v22, v23, v25);
    }

    if (*(a1 + 24))
    {
      v26 = *(a1 + 16);
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3024, "dfutil/realdf", 6, "0x%04x %.500s", v22, v23, v24);
  }

  LODWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x18uLL, &v178, 4, 1);
  v27 = v178;
  LODWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x1CuLL, &v178, 4, 1);
  *(a1 + 96) = v178;
  *(a1 + 216) = 9;
  if (v27 != 4096)
  {
    if (*(a1 + 24))
    {
      v30 = *(a1 + 16);
    }

    else
    {
      v30 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3030, "dfutil/realdf", 24, "%.500s %u", v28, v29, v30);
  }

  LODWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x20uLL, &v178, 4, 1);
  v181 = 36;
  if (v178 != -307429618)
  {
    if (v178 == -758187298)
    {
      if (*(a1 + 24))
      {
        v33 = *(a1 + 16);
      }

      else
      {
        v33 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3039, "dfutil/realdf", 1, "%.500s", v31, v32, v33);
    }

    if (*(a1 + 24))
    {
      v34 = *(a1 + 16);
    }

    else
    {
      v34 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3044, "dfutil/realdf", 2, "%.500s 0x%x 0x%x", v31, v32, v34);
  }

  if (a3)
  {
    *a3 = 0;
  }

  LODWORD(v178) = 0;
  RealDFile::doReadFromCache(a1, 0x24uLL, &v178, 4, 1);
  MrecVersionNumberString = 0;
  v36 = 0;
  v37 = v178;
  *(a1 + 292) = v178;
  v38 = *(a1 + 288);
  if (v38 >= 2 && v37 >= 2)
  {
    if (v38 == v37)
    {
      if (a3)
      {
        *a3 = 1;
      }

      MrecVersionNumberString = 0;
      v36 = 0;
      switch(v37)
      {
        case 2:
        case 3:
        case 4:
          v36 = 0;
          MrecVersionNumberString = "1.19.000.13381";
          break;
        case 5:
        case 6:
          v36 = 0;
          MrecVersionNumberString = "1.18.000.12608";
          break;
        case 8:
        case 11:
          MrecVersionNumberString = GetMrecVersionNumberString();
          v36 = 1;
          break;
        case 9:
        case 10:
          v36 = 0;
          MrecVersionNumberString = "1.19.000.13553";
          break;
        case 13:
          v36 = 0;
          MrecVersionNumberString = "1.22.000.14058";
          break;
        case 14:
          v36 = 0;
          MrecVersionNumberString = "1.22.100.14536";
          break;
        case 15:
          v36 = 0;
          MrecVersionNumberString = "1.23.000.14829";
          break;
        case 16:
          v36 = 0;
          MrecVersionNumberString = "1.24.000.15247";
          break;
        case 17:
          v36 = 0;
          MrecVersionNumberString = "1.24.000.15347";
          break;
        default:
          break;
      }
    }

    else
    {
      if (a2)
      {
        if (*(a1 + 24))
        {
          v39 = *(a1 + 16);
        }

        else
        {
          v39 = &unk_26288F516;
        }

        DFile::getNameForSemanticType(v37);
        DFile::getNameForSemanticType(*(a1 + 288));
        errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3069, "dfutil/realdf", 52, "%.500s %u %.500s %u %.500s", v40, v41, v39);
      }

      v36 = 0;
      MrecVersionNumberString = 0;
      if (a3)
      {
        *a3 = 4;
      }
    }
  }

  v178 = 0;
  *v179 = 0;
  v176 = 0;
  v42 = realloc_array(0, &v176, 0x18uLL, 0, 0, 1);
  v178 = v176;
  v179[0] = 6;
  v179[1] = v42 >> 2;
  RealDFile::doReadFromCache(a1, 0x28uLL, v176, 24, 1);
  MrecTime::unpackLittleEndMrecTime((a1 + 220), v178);
  if (v179[0])
  {
    v43 = 4 * v179[0];
    RealDFile::doReadFromCache(a1, 0x40uLL, v178, v43, 1);
    v44 = v43 + 64;
    v181 = v44;
  }

  else
  {
    v44 = 64;
  }

  MrecTime::unpackLittleEndMrecTime((a1 + 244), v178);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
  if (v44 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v45, v46, v44);
  }

  v178 = 0;
  *v179 = 0;
  v176 = 0;
  v179[1] = realloc_array(0, &v176, 0x800uLL, 0, 0, 1);
  v178 = v176;
  v179[0] = 2048;
  RealDFile::doReadFromCache(a1, v44, v176, 168, 1);
  Buffer = DgnString::getBuffer((a1 + 272), 0x100u);
  RealDFile::doReadFromCache(a1, v44 + 168, Buffer, 256, 1);
  v48 = DgnString::getBuffer((a1 + 272), 0x100u);
  DecryptBuffer(v48, 0x100u, v21, v49, v50, v51, v52, v53);
  RealDFile::doReadFromCache(a1, v44 + 424, v178, 1536, 1);
  v57 = v44 + 1960;
  v181 = v57;
  if (MrecVersionNumberString)
  {
    v58 = *(a1 + 88);
    if (v58 == 6)
    {
      v59 = "MREC Version ";
    }

    else
    {
      v59 = "MREC v";
    }

    if (*(a1 + 280))
    {
      v60 = *(a1 + 272);
    }

    else
    {
      v60 = &unk_26288F516;
    }

    if (!DgnString::isPrefixNoCase(v59, v60, v54))
    {
      if (*(a1 + 24))
      {
        v63 = *(a1 + 16);
      }

      else
      {
        v63 = &unk_26288F516;
      }

      if (*(a1 + 280))
      {
        v64 = *(a1 + 272);
      }

      v166 = *(a1 + 292);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3222, "dfutil/realdf", 53, "%.500s %u %.500s", v61, v62, v63);
    }

    if (*(a1 + 280))
    {
      v65 = *(a1 + 272);
    }

    else
    {
      v65 = &unk_26288F516;
    }

    v66 = 6;
    if (v58 == 6)
    {
      v66 = 13;
    }

    v67 = &v65[v66];
    v68 = v65[v66];
    if (v68)
    {
      v69 = 0;
      do
      {
        if ((v68 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v68 + 60) & 0x4000) != 0)
        {
          break;
        }

        v68 = v67[++v69];
      }

      while (v67[v69]);
    }

    else
    {
      v69 = 0;
    }

    DgnString::DgnString(&v176, v67, v69);
    if (a4)
    {
      DgnString::operator=(a4, &v176);
    }

    if (v177)
    {
      v76 = v176;
    }

    else
    {
      v76 = &unk_26288F516;
    }

    if ((InternalCompareMrecVersions(v76, "1.19.110.00000", v70, v71, v72, v73, v74, v75) & 0x80000000) == 0)
    {
      v83 = v177 ? v176 : &unk_26288F516;
      if (InternalCompareMrecVersions(v83, "1.19.110.99999", v77, v78, v79, v80, v81, v82) <= 0 && (InternalCompareMrecVersions(MrecVersionNumberString, "1.19.000.13299", v77, v78, v79, v80, v81, v82) & 0x80000000) == 0 && InternalCompareMrecVersions(MrecVersionNumberString, "1.19.000.99999", v77, v78, v79, v80, v81, v82) <= 0)
      {
        if (a2)
        {
          if (*(a1 + 24))
          {
            v86 = *(a1 + 16);
          }

          else
          {
            v86 = &unk_26288F516;
          }

          DFile::getNameForSemanticType(*(a1 + 292));
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3261, "dfutil/realdf", 61, "%.500s %u %.500s %.500s %.500s", v163, v164, v86);
        }

        if (a3)
        {
          *a3 = 2;
        }
      }
    }

    if (v177)
    {
      v84 = v176;
    }

    else
    {
      v84 = &unk_26288F516;
    }

    if ((InternalCompareMrecVersions(v84, MrecVersionNumberString, v77, v78, v79, v80, v81, v82) & 0x80000000) != 0)
    {
      if (a2)
      {
        if (*(a1 + 24))
        {
          v85 = *(a1 + 16);
        }

        else
        {
          v85 = &unk_26288F516;
        }

        DFile::getNameForSemanticType(*(a1 + 292));
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3277, "dfutil/realdf", 54, "%.500s %u %.500s %.500s %.500s", v87, v88, v85);
      }

      if (a3)
      {
        *a3 = 2;
      }
    }

    v95 = GetMrecVersionNumberString();
    if (v36)
    {
      v96 = v177 ? v176 : &unk_26288F516;
      if (InternalCompareMrecVersions(v96, v95, v89, v90, v91, v92, v93, v94) >= 1)
      {
        if (a2)
        {
          if (*(a1 + 24))
          {
            v97 = *(a1 + 16);
          }

          else
          {
            v97 = &unk_26288F516;
          }

          DFile::getNameForSemanticType(*(a1 + 292));
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3294, "dfutil/realdf", 55, "%.500s %u %.500s %.500s %.500s", v98, v99, v97);
        }

        if (a3)
        {
          *a3 = 3;
        }
      }
    }

    if (v177)
    {
      v100 = v176;
    }

    else
    {
      v100 = &unk_26288F516;
    }

    if (InternalCompareMrecForkVersions(v100, v95, v89, v90, v91, v92, v93, v94) >= 1)
    {
      if (a2)
      {
        if (*(a1 + 24))
        {
          v101 = *(a1 + 16);
        }

        else
        {
          v101 = &unk_26288F516;
        }

        DFile::getNameForSemanticType(*(a1 + 292));
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3309, "dfutil/realdf", 55, "%.500s %u %.500s %.500s %.500s", v102, v103, v101);
      }

      if (a3)
      {
        *a3 = 3;
      }
    }

    DgnString::~DgnString(&v176);
    v57 = v181;
  }

  if (v57 != 2048)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v55, v56, v57);
  }

  v104 = *(a1 + 116);
  if (v104 <= 0xFF)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 104, 256 - v104, 0);
  }

  *(a1 + 112) = 256;
  v105 = v180;
  RealDFile::doReadFromCache(v180, v57, *(a1 + 104), 1024, 1);
  v181 = v57 + 1024;
  if (v57 != 2048)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v106, v107, v57);
  }

  v108 = *(a1 + 132);
  if (v108 <= 0x20FD)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 120, 8446 - v108, 0);
  }

  *(a1 + 128) = 8446;
  LODWORD(v176) = 0;
  RealDFile::doReadFromCache(v105, v57 + 1024, &v176, 4, 1);
  if (v176 != -307429602)
  {
    if (*(a1 + 24))
    {
      v111 = *(a1 + 16);
    }

    else
    {
      v111 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3357, "dfutil/realdf", 3, "%.500s 0x%x 0x%x", v109, v110, v111);
  }

  v112 = v57 + 1028;
  v113 = *(a1 + 128);
  if (v113)
  {
    v114 = 4 * v113;
    RealDFile::doReadFromCache(v105, v57 + 1028, *(a1 + 120), (4 * v113), 1);
    v112 += v114;
  }

  LODWORD(v176) = 0;
  RealDFile::doReadFromCache(v105, v112, &v176, 4, 1);
  v181 = v112 + 4;
  if (v176 != -307429602)
  {
    if (*(a1 + 24))
    {
      v117 = *(a1 + 16);
    }

    else
    {
      v117 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3371, "dfutil/realdf", 3, "%.500s 0x%x 0x%x", v115, v116, v117);
  }

  if (v112 != 36860)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v115, v116, v112 + 4);
  }

  v118 = *(a1 + 112);
  if (v118)
  {
    v119 = 0;
    while (*(*(a1 + 104) + 4 * v119) != -1)
    {
      if (v118 == ++v119)
      {
        goto LABEL_175;
      }
    }

    LODWORD(v118) = v119;
LABEL_175:
    v120 = *(a1 + 116);
    if (v118 > v120)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 104, v118 - v120, 0);
    }
  }

  *(a1 + 112) = v118;
  DgnPrimArray<unsigned int>::compact(a1 + 104);
  v121 = *(a1 + 128);
  if (v121)
  {
    v122 = 0;
    while (*(*(a1 + 120) + 4 * v122) != -1)
    {
      if (v121 == ++v122)
      {
        goto LABEL_183;
      }
    }

    LODWORD(v121) = v122;
LABEL_183:
    v123 = *(a1 + 132);
    if (v121 > v123)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 120, v121 - v123, 0);
    }
  }

  *(a1 + 128) = v121;
  DgnPrimArray<unsigned int>::compact(a1 + 120);
  if (v118)
  {
    v126 = *(a1 + 104);
    v127 = *(a1 + 96);
    if (*v126 < v127)
    {
      v128 = 0;
      v129 = v126 + 1;
      do
      {
        if (v118 - 1 == v128)
        {
          LODWORD(v118) = 0;
          goto LABEL_195;
        }

        v130 = v129[v128++];
      }

      while (v130 < v127);
      LODWORD(v118) = v128 < v118;
      if (v121)
      {
        goto LABEL_196;
      }

      goto LABEL_199;
    }

    LODWORD(v128) = 0;
    LODWORD(v118) = 1;
    if (!v121)
    {
LABEL_199:
      v132 = -1;
      goto LABEL_201;
    }
  }

  else
  {
LABEL_195:
    LODWORD(v128) = -1;
    if (!v121)
    {
      goto LABEL_199;
    }
  }

LABEL_196:
  v131 = 0;
  while (*(*(a1 + 120) + 4 * v131) < *(a1 + 96))
  {
    if (v121 == ++v131)
    {
      goto LABEL_199;
    }
  }

  LODWORD(v118) = 1;
  v132 = v131;
LABEL_201:
  if (v128 != -1 && v118)
  {
    if (*(a1 + 24))
    {
      v133 = *(a1 + 16);
    }

    else
    {
      v133 = &unk_26288F516;
    }

    v167 = *(*(a1 + 104) + 4 * v128);
    v174 = *(a1 + 96);
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3428, "dfutil/realdf", 7, "%.500s %.500s %u %u %u", v124, v125, v133);
  }

  v134 = v118 ^ 1;
  if (v132 == -1)
  {
    v134 = 1;
  }

  if ((v134 & 1) == 0)
  {
    if (*(a1 + 24))
    {
      v135 = *(a1 + 16);
    }

    else
    {
      v135 = &unk_26288F516;
    }

    v168 = *(*(a1 + 120) + 4 * v132);
    v175 = *(a1 + 96);
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3435, "dfutil/realdf", 7, "%.500s %.500s %u %u %u", v124, v125, v135);
  }

  RealDFile::readDirEntries(a1, &v180);
  RealDFile::readBlockUsage(a1, &v180, v136, v137, v138, v139, v140, v141);
  *(a1 + 92) = v21;
  if (*(a1 + 160) >= 2u)
  {
    v144 = 1;
    do
    {
      v145 = v144;
      v146 = *(a1 + 152) + (v144 << 7);
      if (*(v146 + 96))
      {
        v147 = *(v146 + 100);
        if (v147 >= *(a1 + 96))
        {
          if (*(a1 + 24))
          {
            v148 = *(a1 + 16);
          }

          else
          {
            v148 = &unk_26288F516;
          }

          v169 = *(v146 + 100);
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3463, "dfutil/realdf", 27, "%.500s %d %.500s %u %u", v142, v143, v148);
        }

        if (*(*(a1 + 136) + 2 * v147) != v145)
        {
          if (*(a1 + 24))
          {
            v149 = *(a1 + 16);
          }

          else
          {
            v149 = &unk_26288F516;
          }

          v170 = *(*(a1 + 152) + (v145 << 7) + 100);
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3472, "dfutil/realdf", 31, "%.500s %d %.500s %u %u", v142, v143, v149);
        }

        v150 = *(a1 + 152) + (v145 << 7);
        if (*(v150 + 104) > *(a1 + 96))
        {
          if (*(a1 + 24))
          {
            v151 = *(a1 + 16);
          }

          else
          {
            v151 = &unk_26288F516;
          }

          v171 = *(v150 + 104);
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3479, "dfutil/realdf", 28, "%.500s %d %.500s %u %u", v142, v143, v151);
        }

        if (v147 == -1)
        {
          v147 = -1;
          i = 1;
        }

        else
        {
          v152 = *(a1 + 144);
          for (i = 1; ; ++i)
          {
            v154 = v147 + 1;
            if (v152 > v154)
            {
              v155 = v152 - 1 - v147;
              while (*(*(a1 + 136) + 2 * v154) != v145)
              {
                ++v154;
                if (!--v155)
                {
                  goto LABEL_242;
                }
              }
            }

            if (v154 >= v152)
            {
              break;
            }

            v147 = v154;
          }
        }

LABEL_242:
        v156 = *(a1 + 152);
        v157 = v156 + (v145 << 7);
        if (i != *(v157 + 96))
        {
          if (*(a1 + 24))
          {
            v158 = *(a1 + 16);
          }

          else
          {
            v158 = &unk_26288F516;
          }

          v172 = *(v157 + 96);
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3497, "dfutil/realdf", 29, "%.500s %d %.500s %u %u", v142, v143, v158);
          v156 = *(a1 + 152);
        }

        v159 = v156 + (v145 << 7);
        if (v147 != *(v159 + 104))
        {
          if (*(a1 + 24))
          {
            v160 = *(a1 + 16);
          }

          else
          {
            v160 = &unk_26288F516;
          }

          v173 = *(v159 + 104);
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3503, "dfutil/realdf", 30, "%.500s %d %.500s %u %u", v142, v143, v160);
        }
      }

      v144 = v145 + 1;
    }

    while (*(a1 + 160) > (v145 + 1));
  }

  result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
  v162 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2627FAF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t RealDFile::subFileExistsByExplicitExtension(RealDFile *this, char *a2)
{
  DgnString::DgnString(&v7);
  DFile::makeSubFileName(this + 56, a2, &v7);
  if (v8)
  {
    v4 = v7;
  }

  else
  {
    v4 = &unk_26288F516;
  }

  SubFile = RealDFile::findSubFile(this, v4, 0);
  DgnString::~DgnString(&v7);
  return SubFile;
}

uint64_t RealDFile::findSubFile(RealDFile *this, const char *a2, char *a3)
{
  if (*(this + 40) < 2u)
  {
    return 0;
  }

  v6 = 1;
  while (DgnString::compareNoCase((*(this + 19) + (v6 << 7)), a2, a3))
  {
    if (*(this + 40) <= ++v6)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  return 1;
}

uint64_t *RealDFile::openSubFileByExplicitExtension(uint64_t a1, char *a2, int a3)
{
  DgnString::DgnString(&v73);
  DFile::makeSubFileName(a1 + 56, a2, &v73);
  if (v74 <= 1)
  {
    if (*(a1 + 24))
    {
      v12 = *(a1 + 16);
    }

    else
    {
      v12 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2262, "dfutil/realdf", 15, "%.500s", v10, v11, v12);
  }

  if ((a3 > 6 || ((1 << a3) & 0x59) == 0) && *(a1 + 48) == 1)
  {
    if (*(a1 + 24))
    {
      v31 = *(a1 + 16);
    }

    else
    {
      v31 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2269, "dfutil/realdf", 11, "%.500s", v10, v11, v31);
  }

  v13 = v74;
  if ((a3 & 0xFFFFFFFB) == 1)
  {
    if (v74)
    {
      v14 = v73;
    }

    else
    {
      v14 = &unk_26288F516;
    }

    RealDFile::deleteSubFile(a1, v14, v6, v7, v8, v9, v10, v11);
    v13 = v74;
  }

  v72 = 0;
  if (v13)
  {
    v15 = v73;
  }

  else
  {
    v15 = &unk_26288F516;
  }

  if (RealDFile::findSubFile(a1, v15, &v72))
  {
    v23 = v72;
    v24 = *(a1 + 152);
    v25 = v24 + (v72 << 7);
    v26 = *(v25 + 100);
    v27 = *(v25 + 124);
    if (v27 >= 2)
    {
      if (*(a1 + 24))
      {
        v28 = *(a1 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2358, "dfutil/realdf", 44, "%u %.500s %.500s", v21, v22, v27);
      v23 = v72;
      v24 = *(a1 + 152);
    }

    v33 = *(v24 + (v23 << 7) + 125);
    if (v33 >= 2)
    {
      if (*(a1 + 24))
      {
        v34 = *(a1 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2366, "dfutil/realdf", 45, "%u %.500s %.500s", v21, v22, v33);
      LODWORD(v23) = v72;
      v24 = *(a1 + 152);
    }

    v35 = v24 + (v23 << 7);
    v36 = *(v35 + 124);
    v37 = *(v35 + 124) != 0;
    v38 = *(v35 + 125);
    if (v36)
    {
      if (v38 != 1)
      {
        v39 = 2374;
        if (!*(a1 + 24))
        {
LABEL_48:
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", v39, "dfutil/realdf", 45, "%u %.500s %.500s", v21, v22, v38);
          goto LABEL_49;
        }

LABEL_45:
        v40 = *(a1 + 16);
        goto LABEL_48;
      }
    }

    else if (v38)
    {
      v39 = 2384;
      if (!*(a1 + 24))
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

LABEL_49:
    v41 = *(*(a1 + 152) + (v72 << 7) + 112);
    goto LABEL_73;
  }

  if (a3 <= 6 && ((1 << a3) & 0x59) != 0)
  {
    if (v74)
    {
      LOBYTE(v29) = v73;
    }

    else
    {
      v29 = &unk_26288F516;
    }

    if (*(a1 + 24))
    {
      v30 = *(a1 + 16);
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2289, "dfutil/realdf", 16, "%.500s %.500s", v21, v22, v29);
  }

  if (*(a1 + 88) < 8u)
  {
    if (v74 < 0x21)
    {
      goto LABEL_51;
    }
  }

  else if (v74 <= 0x60)
  {
    goto LABEL_51;
  }

  if (*(a1 + 24))
  {
    v32 = *(a1 + 16);
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2296, "dfutil/realdf", 10, "%.500s %.500s", v21, v22, v73);
LABEL_51:
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 24))
    {
      v42 = *(a1 + 16);
    }

    else
    {
      v42 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2300, "dfutil/realdf", 11, "%.500s", v21, v22, v42);
  }

  v43 = *(a1 + 160);
  v44 = 1;
  v72 = 1;
  if (v43 >= 2)
  {
    v45 = *(a1 + 152);
    if (*(v45 + 128))
    {
      v44 = 1;
      do
      {
        v72 = ++v44;
        v46 = v44;
      }

      while (v43 > v44 && *(v45 + (v44 << 7)));
      goto LABEL_64;
    }

    v44 = 1;
  }

  v46 = 1;
LABEL_64:
  if (v43 == v46)
  {
    RealDFile::addDirEntrySpace(a1, v16, v17, v18, v19, v20, v21, v22);
    v44 = v72;
  }

  if (v74)
  {
    v47 = v73;
  }

  else
  {
    v47 = &unk_26288F516;
  }

  strcpy((*(a1 + 152) + (v44 << 7)), v47);
  v48 = v72;
  v49 = *(a1 + 152);
  v56 = strlen((v49 + (v72 << 7)));
  if (v56 <= 0x5F)
  {
    do
    {
      *(*(a1 + 152) + (v72 << 7) + v56++) = 0;
    }

    while (v56 != 96);
    v48 = v72;
    v49 = *(a1 + 152);
  }

  v57 = v49 + (v48 << 7);
  *(v57 + 104) = -1;
  *(v57 + 96) = 0xFFFFFFFF00000000;
  *(v57 + 116) = 0;
  *(v57 + 108) = 0;
  *(v57 + 124) = -554041344;
  *(a1 + 296) = 1;
  v26 = RealDFile::addBlock(a1, v72, v50, v51, v52, v53, v54, v55);
  v37 = 0;
  v41 = 0;
LABEL_73:
  v58 = v72;
  v59 = *(a1 + 200);
  if (a3 == 3)
  {
    if (*(v59 + v72) == 1)
    {
      if (v74)
      {
        LOBYTE(v60) = v73;
      }

      else
      {
        v60 = &unk_26288F516;
      }

      if (*(a1 + 24))
      {
        v61 = *(a1 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2391, "dfutil/realdf", 48, "%.500s %.500s", v21, v22, v60);
      v58 = v72;
      v59 = *(a1 + 200);
    }

    *(v59 + v58) = 1;
  }

  else
  {
    v62 = 0;
    v63 = 1;
    *(v59 + v72) = 1;
    if (a3 <= 3)
    {
      if (!a3 || a3 == 2)
      {
        if (v37)
        {
          if (*(a1 + 24))
          {
            v64 = *(a1 + 16);
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2401, "dfutil/realdf", 43, "%u %.500s %.500s", v21, v22, a3);
        }

        v62 = 0;
      }

      goto LABEL_96;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        goto LABEL_100;
      }

      goto LABEL_96;
    }
  }

  v62 = v37;
LABEL_96:
  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v65 = 2;
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_102;
  }

  v63 = v62;
LABEL_100:
  v65 = 1;
  v62 = v63;
LABEL_102:
  if (v74)
  {
    v66 = v73;
  }

  else
  {
    v66 = &unk_26288F516;
  }

  FileSpec::FileSpec(v71, v66);
  v67 = MemChunkAlloc(0x80uLL, 0);
  v68 = v67;
  if (v74)
  {
    v69 = v73;
  }

  else
  {
    v69 = &unk_26288F516;
  }

  RealDFileSubFileStream::RealDFileSubFileStream(v67, v65, v71, a1, v69, a3, v72, 0, v26, v62, v41);
  FileSpec::~FileSpec(v71);
  DgnString::~DgnString(&v73);
  return v68;
}

void sub_2627FB7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t RealDFile::deleteSubFile(RealDFile *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a2)
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4424, "dfutil/realdf", 15, "%.500s", a7, a8, v10);
  }

  if (*(this + 48) == 1)
  {
    if (*(this + 6))
    {
      v11 = *(this + 2);
    }

    else
    {
      v11 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4425, "dfutil/realdf", 11, "%.500s", a7, a8, v11);
  }

  v13 = 0;
  result = RealDFile::findSubFile(this, a2, &v13);
  if (result)
  {
    do
    {
      result = RealDFile::freeBlock(this, v13);
    }

    while (result != -1);
    *(*(this + 19) + (v13 << 7)) = 0;
    *(this + 296) = 1;
  }

  return result;
}

void RealDFile::addDirEntrySpace(RealDFile *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 36);
  if (v9)
  {
    v10 = 0;
    while (*(*(this + 17) + 2 * v10))
    {
      if (v9 == ++v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 == v9)
  {
LABEL_8:
    RealDFile::addBlockSpace(this, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(this + 28);
  if (v11)
  {
    v12 = 0;
    while (*(*(this + 13) + 4 * v12) != -1)
    {
      if (v11 == ++v12)
      {
        LODWORD(v12) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 <= 0xFF && v12 == v11)
  {
    if (v11 == *(this + 29))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 104, 1, 1);
      LODWORD(v11) = *(this + 28);
    }

    *(*(this + 13) + 4 * v11) = -1;
    LODWORD(v11) = *(this + 28) + 1;
    *(this + 28) = v11;
  }

  if (v12 == v11)
  {
    if (*(this + 6))
    {
      v13 = *(this + 2);
    }

    else
    {
      v13 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4334, "dfutil/realdf", 4, "%.500s", a7, a8, v13);
  }

  v14 = *(this + 40);
  v15 = *(this + 41);
  if (*(this + 44) < 8u)
  {
    v22 = v14 + 64;
    if (v22 > v15)
    {
      DgnArray<RealDFileDirEntry>::reallocElts(this + 152, v22 - v15, 0);
      v14 = *(this + 40);
    }

    if (v14 < v22)
    {
      v23 = v22 - v14;
      v24 = v14 << 7;
      do
      {
        v25 = *(this + 19) + v24;
        *(v25 + 110) = 0uLL;
        *(v25 + 80) = 0uLL;
        *(v25 + 96) = 0uLL;
        *(v25 + 48) = 0uLL;
        *(v25 + 64) = 0uLL;
        *(v25 + 16) = 0uLL;
        *(v25 + 32) = 0uLL;
        *v25 = 0uLL;
        *(v25 + 126) = -8454;
        v24 += 128;
        --v23;
      }

      while (v23);
    }

    *(this + 40) = v22;
    v26 = *(this + 52);
    v27 = 64;
    do
    {
      if (v26 == *(this + 53))
      {
        DgnPrimArray<char>::reallocElts(this + 200, 1, 1);
        v26 = *(this + 52);
      }

      *(*(this + 25) + v26++) = 0;
      *(this + 52) = v26;
      --v27;
    }

    while (v27);
  }

  else
  {
    v16 = v14 + 32;
    if (v16 > v15)
    {
      DgnArray<RealDFileDirEntry>::reallocElts(this + 152, v16 - v15, 0);
      v14 = *(this + 40);
    }

    if (v14 < v16)
    {
      v17 = v14 << 7;
      v18 = v16 - v14;
      do
      {
        v19 = *(this + 19) + v17;
        *(v19 + 110) = 0uLL;
        *(v19 + 80) = 0uLL;
        *(v19 + 96) = 0uLL;
        *(v19 + 48) = 0uLL;
        *(v19 + 64) = 0uLL;
        *(v19 + 16) = 0uLL;
        *(v19 + 32) = 0uLL;
        *v19 = 0uLL;
        *(v19 + 126) = -8454;
        v17 += 128;
        --v18;
      }

      while (v18);
    }

    *(this + 40) = v16;
    v20 = *(this + 52);
    v21 = 32;
    do
    {
      if (v20 == *(this + 53))
      {
        DgnPrimArray<char>::reallocElts(this + 200, 1, 1);
        v20 = *(this + 52);
      }

      *(*(this + 25) + v20++) = 0;
      *(this + 52) = v20;
      --v21;
    }

    while (v21);
  }

  v28 = *(this + 44);
  if (v28 == *(this + 45))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 168, 1, 1);
    v28 = *(this + 44);
  }

  *(*(this + 21) + 4 * v28) = v12;
  ++*(this + 44);
  *(*(this + 13) + 4 * v12) = -2;
}

void RealDFile::removeSubFileByExplicitExtension(RealDFile *this, char *a2)
{
  DgnString::DgnString(&v11);
  DFile::makeSubFileName(this + 56, a2, &v11);
  if (v12)
  {
    v10 = v11;
  }

  else
  {
    v10 = &unk_26288F516;
  }

  RealDFile::deleteSubFile(this, v10, v4, v5, v6, v7, v8, v9);
  DgnString::~DgnString(&v11);
}

void RealDFile::renameSubFileByExplicitExtension(RealDFile *this, char *a2, char *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a2)
  {
    if (*(this + 6))
    {
      v12 = *(this + 2);
    }

    else
    {
      v12 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2487, "dfutil/realdf", 15, "%.500s", a7, a8, v12);
  }

  if (*(this + 48) == 1)
  {
    if (*(this + 6))
    {
      v13 = *(this + 2);
    }

    else
    {
      v13 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2489, "dfutil/realdf", 11, "%.500s", a7, a8, v13);
  }

  if (!*a3)
  {
    if (*(this + 6))
    {
      v14 = *(this + 2);
    }

    else
    {
      v14 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2491, "dfutil/realdf", 15, "%.500s", a7, a8, v14);
  }

  DgnString::DgnString(&v33);
  DgnString::DgnString(&v31);
  DFile::makeSubFileName(this + 56, a2, &v33);
  DFile::makeSubFileName(this + 56, a3, &v31);
  v30 = 0;
  if (v34)
  {
    v15 = v33;
  }

  else
  {
    v15 = &unk_26288F516;
  }

  if ((RealDFile::findSubFile(this, v15, &v30) & 1) == 0)
  {
    if (v34)
    {
      LOBYTE(v18) = v33;
    }

    else
    {
      v18 = &unk_26288F516;
    }

    if (*(this + 6))
    {
      v19 = *(this + 2);
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2504, "dfutil/realdf", 16, "%.500s %.500s", v16, v17, v18);
  }

  if (v32)
  {
    v20 = v31;
  }

  else
  {
    v20 = &unk_26288F516;
  }

  if ((*(*this + 24))(this, v20))
  {
    if ((a4 & 1) == 0)
    {
      if (v32)
      {
        LOBYTE(v23) = v31;
      }

      else
      {
        v23 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2509, "dfutil/realdf", 56, "%.500s", v21, v22, v23);
    }

    if (v32)
    {
      v24 = v31;
    }

    else
    {
      v24 = &unk_26288F516;
    }

    (*(*this + 40))(this, v24);
  }

  v25 = v30;
  v26 = (*(this + 19) + (v30 << 7));
  if (v32)
  {
    v27 = v31;
  }

  else
  {
    v27 = &unk_26288F516;
  }

  if (*(this + 44) < 8u)
  {
    strncpy(v26, v27, 0x1FuLL);
    v28 = (*(this + 19) + (v25 << 7) + 31);
  }

  else
  {
    strncpy(v26, v27, 0x5FuLL);
    v28 = (*(this + 19) + (v25 << 7) + 95);
  }

  *v28 = 0;
  v29 = strlen((*(this + 19) + (v30 << 7)));
  if (v29 <= 0x5F)
  {
    do
    {
      *(*(this + 19) + (v30 << 7) + v29++) = 0;
    }

    while (v29 != 96);
  }

  *(this + 296) = 1;
  DgnString::~DgnString(&v31);
  DgnString::~DgnString(&v33);
}

void sub_2627FBF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t RealDFile::getSubFileSizeByExplicitExtension(RealDFile *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a2)
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2545, "dfutil/realdf", 15, "%.500s", a7, a8, v10);
  }

  DgnString::DgnString(&v20);
  DFile::makeSubFileName(this + 56, a2, &v20);
  v19 = 0;
  if (v21)
  {
    v11 = v20;
  }

  else
  {
    v11 = &unk_26288F516;
  }

  if ((RealDFile::findSubFile(this, v11, &v19) & 1) == 0)
  {
    if (v21)
    {
      LOBYTE(v14) = v20;
    }

    else
    {
      v14 = &unk_26288F516;
    }

    if (*(this + 6))
    {
      v15 = *(this + 2);
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2553, "dfutil/realdf", 16, "%.500s %.500s", v12, v13, v14);
  }

  v16 = *(this + 19) + (v19 << 7);
  v17 = *(v16 + 108) + ((*(v16 + 96) - 1) << 12);
  DgnString::~DgnString(&v20);
  return v17;
}

void sub_2627FC0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

OsFile *RealDFile::deleteFileAndCleanUp(RealDFile *this, std::error_code *a2)
{
  result = *(this + 10);
  if (result)
  {
    OsFile::deleteFileAndCleanUp(result, a2);
    result = DgnDelete<OsFile>(*(this + 10));
    *(this + 10) = 0;
  }

  *(this + 148) = 0;
  *(this + 108) = 0;
  *(this + 82) = 0;
  return result;
}

void *RealDFile::clearBigReadCache(RealDFile *this, char a2)
{
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(this + 336);
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(this + 352);
  *(this + 46) = 0;
  result = *(this + 49);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 49) = 0;
  }

  *(this + 50) = 0;
  *(this + 385) = a2;
  return result;
}

void *DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnPrimFixArray<char>>(*(*a1 + v3));
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

void RealDFile::verifyHaveOpenedAllSubFiles(RealDFile *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 40);
  if (v8 >= 2)
  {
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = (*(this + 19) + (v10 << 7));
      if (*v12 && (*(*(this + 25) + v11) & 1) == 0)
      {
        if (*(this + 6))
        {
          v13 = *(this + 2);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2617, "dfutil/realdf", 46, "%.500s %.500s %.500s", a7, a8, v12);
        v8 = *(this + 40);
      }

      v10 = v11 + 1;
    }

    while (v8 > (v11 + 1));
  }
}

void RealDFile::verifyHaveOpenedAllSubFiles(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 160);
  if (v8 >= 2)
  {
    v11 = 1;
    do
    {
      v12 = v11;
      if (*(*a3 + v11) == 1)
      {
        v13 = (*(a1 + 152) + (v11 << 7));
        if (*v13)
        {
          if ((*(*(a1 + 200) + v12) & 1) == 0)
          {
            if (*(a1 + 24))
            {
              v14 = *(a1 + 16);
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2636, "dfutil/realdf", 46, "%.500s %.500s %.500s", a7, a8, v13);
            v8 = *(a1 + 160);
          }
        }
      }

      v11 = v12 + 1;
    }

    while (v8 > (v12 + 1));
  }
}

uint64_t RealDFile::addBlockSpace(RealDFile *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 32);
  if (v9)
  {
    v10 = 0;
    while (*(*(this + 15) + 4 * v10) != -1)
    {
      if (v9 == ++v10)
      {
        LODWORD(v10) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  v12 = *(this + 36);
  v11 = *(this + 37);
  if (v12 + 2046 > v11)
  {
    DgnPrimArray<short>::reallocElts(this + 136, v12 + 2046 - v11, 0);
  }

  *(this + 36) = v12 + 2046;
  if (v12 <= 0xFFFFF801)
  {
    bzero((*(this + 17) + 2 * v12), 0xFFCuLL);
  }

  if (v10 == *(this + 32))
  {
    v13 = v10;
    if (v10 >= 0x20FE)
    {
      if (*(this + 6))
      {
        v14 = *(this + 2);
      }

      else
      {
        v14 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4385, "dfutil/realdf", 5, "%.500s", a7, a8, v14);
      v13 = *(this + 32);
    }

    if (v13 == *(this + 33))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 120, 1, 1);
      v13 = *(this + 32);
    }

    *(*(this + 15) + 4 * v13) = -1;
    ++*(this + 32);
  }

  v15 = *(this + 48);
  if (v15 == *(this + 49))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 184, 1, 1);
    v15 = *(this + 48);
  }

  *(*(this + 23) + 4 * v15) = v10;
  ++*(this + 48);
  *(*(this + 15) + 4 * v10) = -2;
  return v12;
}

void RealDFile::readDirEntries(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  v5 = v4 > 7;
  if (v4 <= 7)
  {
    v6 = 64;
  }

  else
  {
    v6 = 32;
  }

  v46 = v6;
  v7 = *(a1 + 112);
  if (v5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  v9 = v7 << v8;
  v10 = *(a1 + 164);
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v11)
  {
    DgnArray<RealDFileDirEntry>::reallocElts(a1 + 152, v12 + 1, 0);
    v7 = *(a1 + 112);
  }

  if (v7)
  {
    v13 = 0;
    v14 = 0uLL;
    do
    {
      *(a2 + 8) = (*(a1 + 216) + *(*(a1 + 104) + 4 * v13)) << 12;
      v15 = v46;
      do
      {
        *&v54[14] = v14;
        v53 = v14;
        *v54 = v14;
        v51 = v14;
        v52 = v14;
        v49 = v14;
        v50 = v14;
        *v48 = v14;
        v55 = -8454;
        v16 = *a2;
        v17 = *(a2 + 8);
        if (*(a1 + 88) < 8u)
        {
          RealDFile::doReadFromCache(v16, v17, v48, 32, 1);
          v18 = *(a2 + 8) + 32;
          *(a2 + 8) = v18;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
        }

        else
        {
          RealDFile::doReadFromCache(v16, v17, v48, 96, 1);
          v18 = *(a2 + 8) + 96;
          *(a2 + 8) = v18;
        }

        *v47 = 0;
        RealDFile::doReadFromCache(*a2, v18, v47, 4, 1);
        v19 = *a2;
        v20 = *(a2 + 8) + 4;
        *(a2 + 8) = v20;
        *v54 = *v47;
        *v47 = 0;
        RealDFile::doReadFromCache(v19, v20, v47, 4, 1);
        v21 = *a2;
        v22 = *(a2 + 8) + 4;
        *(a2 + 8) = v22;
        *&v54[4] = *v47;
        *v47 = 0;
        RealDFile::doReadFromCache(v21, v22, v47, 4, 1);
        v23 = *a2;
        v24 = *(a2 + 8) + 4;
        *(a2 + 8) = v24;
        *&v54[8] = *v47;
        *v47 = 0;
        RealDFile::doReadFromCache(v23, v24, v47, 4, 1);
        v25 = *a2;
        v26 = *(a2 + 8) + 4;
        *(a2 + 8) = v26;
        *&v54[12] = *v47;
        *v47 = 0;
        RealDFile::doReadFromCache(v25, v26, v47, 8, 1);
        v27 = *a2;
        v28 = *(a2 + 8) + 8;
        *(a2 + 8) = v28;
        *&v54[16] = *v47;
        *v47 = 0;
        RealDFile::doReadFromCache(v27, v28, v47, 4, 1);
        v29 = *a2;
        v30 = *(a2 + 8) + 4;
        *(a2 + 8) = v30;
        *&v54[24] = *v47;
        v47[0] = 0;
        RealDFile::doReadFromCache(v29, v30, v47, 1, 1);
        v31 = *a2;
        v32 = *(a2 + 8) + 1;
        *(a2 + 8) = v32;
        v54[28] = v47[0];
        v47[0] = 0;
        RealDFile::doReadFromCache(v31, v32, v47, 1, 1);
        v33 = *a2;
        v34 = *(a2 + 8) + 1;
        *(a2 + 8) = v34;
        v54[29] = v47[0];
        *v47 = 0;
        RealDFile::doReadFromCache(v33, v34, v47, 2, 1);
        *(a2 + 8) += 2;
        v55 = *v47;
        if (*v47 != 57082)
        {
          if (*(a1 + 24))
          {
            v37 = *(a1 + 16);
          }

          else
          {
            v37 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3565, "dfutil/realdf", 57, "%.500s 0x%x 0x%x", v35, v36, v37);
        }

        v38 = *(a1 + 160);
        if (v38 == *(a1 + 164))
        {
          DgnArray<RealDFileDirEntry>::reallocElts(a1 + 152, 1, 1);
          v38 = *(a1 + 160);
        }

        v39 = *(a1 + 152) + (v38 << 7);
        v40 = v50;
        v41 = v51;
        v42 = v52;
        *(v39 + 80) = v53;
        v43 = v49;
        *v39 = *v48;
        *(v39 + 16) = v43;
        *(v39 + 48) = v41;
        *(v39 + 64) = v42;
        *(v39 + 32) = v40;
        *(v39 + 95) = 0;
        *(v39 + 96) = *v54;
        *(v39 + 112) = *&v54[16];
        *(v39 + 120) = *&v54[24];
        *(v39 + 124) = v54[28];
        *(v39 + 125) = v54[29];
        *(v39 + 126) = v55;
        ++*(a1 + 160);
        v44 = *(a1 + 208);
        if (v44 == *(a1 + 212))
        {
          DgnPrimArray<char>::reallocElts(a1 + 200, 1, 1);
          v44 = *(a1 + 208);
        }

        *(*(a1 + 200) + v44) = 0;
        *(a1 + 208) = v44 + 1;
        --v15;
        v14 = 0uLL;
      }

      while (v15);
      ++v13;
    }

    while (v13 < *(a1 + 112));
  }

  v45 = *MEMORY[0x277D85DE8];
}

void RealDFile::readBlockUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 128);
  v11 = 2046 * v10;
  v12 = *(a1 + 148);
  if (2046 * v10 > v12)
  {
    DgnPrimArray<short>::reallocElts(a1 + 136, v11 - v12, 0);
    v10 = *(a1 + 128);
  }

  *(a1 + 144) = v11;
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (*(a1 + 216) + *(*(a1 + 120) + 4 * v14)) << 12;
      *(a2 + 8) = v15;
      RealDFile::doReadFromCache(*a2, v15, (*(a1 + 136) + 2 * (v13 & 0xFFFFFFFE)), 4092, 1);
      v16 = *a2;
      v17 = *(a2 + 8) + 4092;
      *(a2 + 8) = v17;
      *v21 = 0;
      RealDFile::doReadFromCache(v16, v17, v21, 4, 1);
      *(a2 + 8) += 4;
      if (*v21 != -307429586)
      {
        if (*(a1 + 24))
        {
          v18 = *(a1 + 16);
        }

        else
        {
          v18 = &unk_26288F516;
        }

        errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3611, "dfutil/realdf", 58, "%.500s 0x%x 0x%x", a7, a8, v18);
      }

      ++v14;
      v13 += 2046;
    }

    while (v14 < *(a1 + 128));
    v11 = *(a1 + 144);
  }

  if (*(a1 + 96) > v11)
  {
    if (*(a1 + 24))
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = &unk_26288F516;
    }

    v20 = *(a1 + 96);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3616, "dfutil/realdf", 47, "%.500s %u %u", a7, a8, v19);
  }
}

void RealDFile::writeDirEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2 > 7)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  v41 = v3;
  v40 = (*(a1 + 160) - 1) >> v3;
  if (v40)
  {
    v6 = 0;
    v7 = v2 > 7;
    v8 = 64;
    if (v7)
    {
      v8 = 32;
    }

    v39 = v8;
    do
    {
      v9 = (*(a1 + 216) + *(*(a1 + 104) + 4 * v6)) << 12;
      *(a2 + 8) = v9;
      v42 = v6;
      v10 = (v6 << v41) + 1;
      v11 = 1;
      v12 = v39;
      do
      {
        v13 = *(a1 + 152) + (v10 << 7);
        v14 = *(a1 + 88);
        if (v14 <= 7)
        {
          v15 = 32;
        }

        else
        {
          v15 = 96;
        }

        if (v14 <= 7)
        {
          v16 = 32;
        }

        else
        {
          v16 = 96;
        }

        RealDFile::doWriteToCache(*a2, *(a2 + 8), (*(a1 + 152) + (v10 << 7)), v15);
        v17 = *a2;
        v18 = *(a2 + 8) + v16;
        *(a2 + 8) = v18;
        *v43 = *(v13 + 96);
        RealDFile::doWriteToCache(v17, v18, v43, 4u);
        v19 = *a2;
        v20 = *(a2 + 8) + 4;
        *(a2 + 8) = v20;
        *v43 = *(v13 + 100);
        RealDFile::doWriteToCache(v19, v20, v43, 4u);
        v21 = *a2;
        v22 = *(a2 + 8) + 4;
        *(a2 + 8) = v22;
        *v43 = *(v13 + 104);
        RealDFile::doWriteToCache(v21, v22, v43, 4u);
        v23 = *a2;
        v24 = *(a2 + 8) + 4;
        *(a2 + 8) = v24;
        *v43 = *(v13 + 108);
        RealDFile::doWriteToCache(v23, v24, v43, 4u);
        v25 = *a2;
        v26 = *(a2 + 8) + 4;
        *(a2 + 8) = v26;
        *v43 = *(v13 + 112);
        RealDFile::doWriteToCache(v25, v26, v43, 8u);
        v27 = *a2;
        v28 = *(a2 + 8) + 8;
        *(a2 + 8) = v28;
        *v43 = *(v13 + 120);
        RealDFile::doWriteToCache(v27, v28, v43, 4u);
        v29 = *a2;
        v30 = *(a2 + 8) + 4;
        *(a2 + 8) = v30;
        v43[0] = *(v13 + 124);
        RealDFile::doWriteToCache(v29, v30, v43, 1u);
        v31 = *a2;
        v32 = *(a2 + 8) + 1;
        *(a2 + 8) = v32;
        v43[0] = *(v13 + 125);
        RealDFile::doWriteToCache(v31, v32, v43, 1u);
        v33 = *a2;
        v34 = *(a2 + 8) + 1;
        *(a2 + 8) = v34;
        *v43 = *(v13 + 126);
        RealDFile::doWriteToCache(v33, v34, v43, 2u);
        v37 = *(a2 + 8) + 2;
        *(a2 + 8) = v37;
        v38 = 6;
        if (*(a1 + 88) > 7u)
        {
          v38 = 7;
        }

        if (v37 != (v11 << v38) + v9)
        {
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v35, v36, v37);
        }

        ++v10;
        ++v11;
        --v12;
      }

      while (v12);
      v6 = v42 + 1;
    }

    while (v42 + 1 != v40);
  }
}

void RealDFile::writeBlockUsage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v5 = 0;
    while (*(*(a1 + 120) + 4 * v5) != -1)
    {
      if (v2 == ++v5)
      {
        LODWORD(v5) = *(a1 + 128);
        break;
      }
    }

    if (v5)
    {
      v6 = 0;
      v7 = v5;
      do
      {
        v8 = (*(a1 + 216) + *(*(a1 + 120) + 4 * v6)) << 12;
        *(a2 + 8) = v8;
        RealDFile::doWriteToCache(*a2, v8, (*(a1 + 136) + 2 * (2046 * v6)), 0xFFCu);
        v9 = *a2;
        v10 = *(a2 + 8) + 4092;
        *(a2 + 8) = v10;
        *v11 = -307429586;
        RealDFile::doWriteToCache(v9, v10, v11, 4u);
        *(a2 + 8) += 4;
        ++v6;
      }

      while (v6 != v7);
    }
  }
}

unint64_t RealDFile::clearPreviousBigReadCache(unint64_t this, unsigned int a2)
{
  v2 = *(this + 368);
  if (v2 < a2)
  {
    v4 = this;
    while (v2 < *(v4 + 344))
    {
      v5 = *(*(v4 + 336) + 8 * v2);
      if (v5)
      {
        v6 = *(v4 + 360);
        if (v6 == *(v4 + 364))
        {
          this = DgnPrimArray<unsigned long long>::reallocElts(v4 + 352, 1, 1);
          v6 = *(v4 + 360);
          v7 = *(v4 + 368);
          v2 = *(v4 + 368);
        }

        else
        {
          v7 = v2;
        }

        *(*(v4 + 352) + 8 * v6) = v5;
        *(v4 + 360) = v6 + 1;
        *(*(v4 + 336) + 8 * v7) = 0;
        v8 = *(v4 + 372) - 1;
        *(v4 + 372) = v8;
        if (!v8)
        {
          *(v4 + 368) = 0;
          return this;
        }
      }

      *(v4 + 368) = ++v2;
      if (v2 >= a2)
      {
        return this;
      }
    }
  }

  return this;
}

void RealDFile::fillBigCache(RealDFile *this, unsigned int a2)
{
  v2 = a2;
  v4 = *(this + 95) * *(this + 94);
  if (*(this + 385) == 1)
  {
    RealDFile::clearPreviousBigReadCache(this, a2);
  }

  if (*(this + 384))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >> 1;
  }

  v6 = v4 + ~v5;
  if (v5)
  {
    v7 = v2 < 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v2;
  if (!v7)
  {
    v9 = v2;
    v10 = (v4 >> 1) - 1;
    while (v9 > *(this + 86) || !*(*(this + 42) + 8 * v9 - 8))
    {
      v8 = v9 - 1;
      if (v10-- != 0)
      {
        v7 = v9-- <= 1;
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v8 = v9;
  }

LABEL_19:
  v12 = *(this + 95);
  if (v8 % v12)
  {
    v13 = v6 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v8;
    v15 = v6;
LABEL_32:
    v6 = v15;
    if (!v15)
    {
LABEL_33:
      v17 = v2;
      goto LABEL_43;
    }
  }

  else
  {
    while (1)
    {
      v14 = v8 - 1;
      if (v8 <= *(this + 86))
      {
        if (*(*(this + 42) + 8 * v14))
        {
          break;
        }
      }

      v15 = v6 - 1;
      if (v14 % v12)
      {
        v16 = v6 == 1;
      }

      else
      {
        v16 = 1;
      }

      --v6;
      --v8;
      if (v16)
      {
        goto LABEL_32;
      }
    }

    v14 = v8;
  }

  v18 = v6 + v2;
  if (v2 <= *(this + 54) + *(this + 24) - 1)
  {
    v17 = *(this + 54) + *(this + 24) - 1;
  }

  else
  {
    v17 = v2;
  }

  while (v17 != v2)
  {
    if (v2 + 1 < *(this + 86) && *(*(this + 42) + 8 * (v2 + 1)))
    {
      goto LABEL_33;
    }

    ++v2;
    if (!--v6)
    {
      v17 = v18;
      break;
    }
  }

LABEL_43:
  if (*(this + 101) < v4 << 12)
  {
    v41 = 0;
    *(this + 101) = realloc_array(*(this + 49), &v41, v4 << 12, *(this + 100), *(this + 100), 1);
    *(this + 49) = v41;
  }

  *(this + 100) = v4 << 12;
  OsFile::seekFromBeg(*(this + 10), v14 << 12);
  v19 = (v17 + 1);
  if (OsFile::readBytes(*(this + 10), *(this + 49), (v19 - v14) << 12, v20, v21, v22, v23, v24) != (v19 - v14) << 12)
  {
    v30 = *(this + 10);
    if (*(v30 + 8))
    {
      v31 = *v30;
    }

    else
    {
      v31 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4176, "dfutil/realdf", 60, "%.500s %llu %llu", v28, v29, v31);
  }

  DecryptBuffer(*(this + 49), (v19 - v14) << 12, *(this + 46), v25, v26, v27, v28, v29);
  LODWORD(v32) = *(this + 86);
  if (v32 <= v17)
  {
    v33 = *(this + 87);
    if (v19 > v33)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 336, v19 - v33, 1);
      LODWORD(v32) = *(this + 86);
    }

    if (v32 <= v19)
    {
      if (v32 < v19)
      {
        v32 = v32;
        do
        {
          *(*(this + 42) + 8 * v32++) = 0;
        }

        while (v19 != v32);
      }
    }

    else
    {
      DgnIOwnArray<DgnPrimFixArray<char> *>::destructAt(this + 336, v17 + 1, v32 - v19);
    }

    *(this + 86) = v19;
  }

  if (!*(this + 93) || *(this + 92) > v14)
  {
    *(this + 92) = v14;
  }

  if (v14 <= v17)
  {
    v34 = 0;
    v35 = v17 + 1;
    do
    {
      v36 = *(this + 90);
      if (v36)
      {
        v37 = v36 - 1;
        v38 = v14;
        *(*(this + 42) + 8 * v14) = *(*(this + 44) + 8 * (v36 - 1));
        *(*(this + 44) + 8 * (v36 - 1)) = 0;
        DgnIOwnArray<DgnPrimFixArray<char> *>::destructAt(this + 352, v36 - 1, 1);
        *(this + 90) = v37;
      }

      else
      {
        v39 = MemChunkAlloc(0x10uLL, 0);
        *(v39 + 2) = 0;
        *v39 = 0;
        *v39 = MemChunkAlloc(0x1000uLL, 0);
        *(v39 + 2) = 4096;
        v38 = v14;
        *(*(this + 42) + 8 * v14) = v39;
      }

      ++*(this + 93);
      v40 = *(*(this + 42) + 8 * v38);
      memcpy(*v40, (*(this + 49) + v34), *(v40 + 8));
      v34 += 4096;
      ++v14;
    }

    while (v35 != v14);
  }
}

uint64_t RealDFile::freeBlock(RealDFile *this, unsigned int a2)
{
  v2 = *(this + 19) + (a2 << 7);
  v3 = *(v2 + 104);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 17);
  *(v6 + 2 * v3) = 0;
  if (*(this + 24) == v3 + 1)
  {
    for (; v3; --v3)
    {
      if (*(v6 + 2 * v3))
      {
        break;
      }
    }

    v7 = v3 + 1;
    OsFile::shrinkSize(*(this + 10), (*(this + 54) + v7) << 12);
    if (*(this + 24) > v7)
    {
      *(this + 24) = v7;
    }
  }

  v8 = *(this + 36);
  if (v8 <= v3)
  {
    result = v8 - 1;
  }

  else
  {
    result = v3;
  }

  if (result == -1)
  {
LABEL_14:
    *(v2 + 100) = -1;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    while (*(*(this + 17) + 2 * result) != a2)
    {
      result = (result - 1);
      if (result == -1)
      {
        goto LABEL_14;
      }
    }

    *(v2 + 104) = result;
  }

  --*(v2 + 96);
  *(this + 296) = 1;
  return result;
}

void RealDFile::fillSubFileSizeInfo(RealDFile *this)
{
  v1 = *(this + 40);
  if (v1 >= 2)
  {
    for (i = 1; i < v1; ++i)
    {
      v4 = (*(this + 19) + (i << 7));
      if (*v4)
      {
        DgnString::DgnString(&v7, v4);
        if (v8)
        {
          v5 = v7;
        }

        else
        {
          v5 = &unk_26288F516;
        }

        v6 = (*(*this + 48))(this, v5);
        DFileProgressInfo::add(*(this + 1), &v7, v6);
        DgnString::~DgnString(&v7);
        v1 = *(this + 40);
      }
    }
  }
}

void RealDFile::fillSubFileSizeInfo(uint64_t a1, void *a2)
{
  v2 = *(a1 + 160);
  if (v2 >= 2)
  {
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(*a2 + v5) == 1)
      {
        DgnString::DgnString(&v9, (*(a1 + 152) + (v5 << 7)));
        if (v10)
        {
          v7 = v9;
        }

        else
        {
          v7 = &unk_26288F516;
        }

        v8 = (*(*a1 + 48))(a1, v7);
        DFileProgressInfo::add(*(a1 + 8), &v9, v8);
        DgnString::~DgnString(&v9);
        v2 = *(a1 + 160);
      }

      v5 = v6 + 1;
    }

    while (v2 > (v6 + 1));
  }
}

unint64_t DgnArray<RealDFileDirEntry>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, v6 << 7, v5 << 7, v5 << 7, 1);
  *(a1 + 12) = result >> 7;
  *a1 = v8;
  return result;
}

unint64_t DgnArray<RealDFileDirEntry>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 8) = 0;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnArray<RealDFileDirEntry>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 8);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    v12 = *a2 + (a3 << 7);
    v13 = *v7 + (v10 << 7);
    v15 = *(v12 + 32);
    v14 = *(v12 + 48);
    v16 = *(v12 + 64);
    *(v13 + 80) = *(v12 + 80);
    v17 = *(v12 + 16);
    *v13 = *v12;
    *(v13 + 16) = v17;
    *(v13 + 48) = v14;
    *(v13 + 64) = v16;
    *(v13 + 32) = v15;
    *(v13 + 95) = 0;
    *(v13 + 96) = *(v12 + 96);
    *(v13 + 112) = *(v12 + 112);
    *(v13 + 120) = *(v12 + 120);
    *(v13 + 124) = *(v12 + 124);
    *(v13 + 125) = *(v12 + 125);
    *(v13 + 126) = *(v12 + 126);
    v10 = *(v7 + 8) + 1;
    *(v7 + 8) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v18 = a4 - v10;
    v19 = v10 << 7;
    do
    {
      v20 = *v7 + v19;
      *(v20 + 110) = 0uLL;
      *(v20 + 80) = 0uLL;
      *(v20 + 96) = 0uLL;
      *(v20 + 48) = 0uLL;
      *(v20 + 64) = 0uLL;
      *(v20 + 16) = 0uLL;
      *(v20 + 32) = 0uLL;
      *v20 = 0uLL;
      *(v20 + 126) = -8454;
      v19 += 128;
      --v18;
    }

    while (v18);
  }

  *(v7 + 8) = a4;
  return result;
}

uint64_t DgnIOwnArray<DgnPrimFixArray<char> *>::destructAt(uint64_t result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnPrimFixArray<char>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t DgnDelete<DgnPrimFixArray<char>>(uint64_t result)
{
  if (result)
  {
    fixed = DgnPrimFixArray<double>::~DgnPrimFixArray(result);

    return MemChunkFree(fixed, 0);
  }

  return result;
}

uint64_t BaseSyncNet::BaseSyncNet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v11 = AcousticNet::AcousticNet(a1, a2, a3, a4, a5, a6, a7, a9);
  *v11 = &unk_287529110;
  *(v11 + 216) = 0;
  *(v11 + 224) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  NodeNetNode::NodeNetNode((v11 + 232), 0);
  *(a1 + 114) = a8;
  *(a1 + 282) = 0;
  *(a1 + 280) = 0;
  *(a1 + 284) = 20000;
  v12 = *(a1 + 48);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = a8 == 0;
      v17 = Sequence::scoreOneSkip;
      if (a8)
      {
        v17 = Sequence::scoreOneSkipNBest;
      }

      *(a1 + 200) = v17;
      *(a1 + 208) = 0;
      v15 = Sequence::scoreOneSkipDeadSeq;
      v16 = Sequence::scoreOneSkipDeadSeqNBest;
    }

    else
    {
      if (v12 != 2)
      {
        *(a1 + 200) = 0u;
        *(a1 + 184) = 0u;
        return a1;
      }

      v13 = a8 == 0;
      v14 = Sequence::scoreMultiSkip;
      if (a8)
      {
        v14 = Sequence::scoreMultiSkipNBest;
      }

      *(a1 + 200) = v14;
      *(a1 + 208) = 0;
      v15 = Sequence::scoreMultiSkipDeadSeq;
      v16 = Sequence::scoreMultiSkipDeadSeqNBest;
    }
  }

  else
  {
    v13 = a8 == 0;
    v18 = Sequence::scoreNoSkip;
    if (a8)
    {
      v18 = Sequence::scoreNoSkipNBest;
    }

    *(a1 + 200) = v18;
    *(a1 + 208) = 0;
    v15 = Sequence::scoreNoSkipDeadSeq;
    v16 = Sequence::scoreNoSkipDeadSeqNBest;
  }

  if (!v13)
  {
    v15 = v16;
  }

  *(a1 + 184) = v15;
  *(a1 + 192) = 0;
  return a1;
}

void sub_2627FD9AC(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v2);
  AcousticNet::~AcousticNet(v1);
  _Unwind_Resume(a1);
}

void BaseSyncNet::~BaseSyncNet(BaseSyncNet *this, Sequence *a2)
{
  *this = &unk_287529110;
  if (*(this + 56))
  {
    v3 = 0;
    do
    {
      Sequence::deleteSequence(*(*(this + 27) + 8 * v3++), a2);
    }

    while (v3 < *(this + 56));
  }

  NodeNetNode::~NodeNetNode((this + 232));
  DgnIArray<Utterance *>::~DgnIArray(this + 216);

  AcousticNet::~AcousticNet(this);
}

void Sequence::deleteSequence(Sequence *this, Sequence *a2)
{
  PredStruct::~PredStruct(this);
  if (v2)
  {

    MemChunkFree(v2, 0);
  }
}

uint64_t BaseSyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v5 = 0;
  }

  v6 = 12;
  if (a2 == 3)
  {
    v6 = 0;
  }

  v7 = v6 + v4 + v5;
  if (a2 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v7 += 8;
    }

    else
    {
      v7 += 32;
    }
  }

  active = sizeObject<ActiveWord *>(a1 + 216, a2);
  return ((a2 != 3) | (2 * (a2 != 3)) | v8) + active + (*(*(a1 + 232) + 16))(a1 + 232, a2) + v7;
}

uint64_t BaseSyncNet::getBestScore(uint64_t a1, void *a2)
{
  v4 = *(a1 + 224);
  if (v4 < 1)
  {
    v6 = 20000;
  }

  else
  {
    v5 = v4 - 1;
    v6 = 20000;
    do
    {
      v11 = 0;
      BestScore = Sequence::getBestScore(*(*(a1 + 216) + 8 * v5), &v11);
      if (BestScore < v6)
      {
        *a2 = v11;
        v6 = BestScore;
      }

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  if (*(a1 + 280))
  {
    v9 = *(a1 + 250);
    if (v6 > v9)
    {
      *a2 = a1 + 240;
      return v9;
    }
  }

  return v6;
}

uint64_t BaseSyncNet::updateBestNodeScore(BaseSyncNet *this)
{
  result = *(this + 71);
  if (*(this + 280) == 1)
  {
    v3 = *(this + 125);
    if (result >= v3)
    {
      return v3;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t BaseSyncNet::addArc(BaseSyncNet *this, const Node *a2, Node *a3)
{
  if ((this + 240) == a3)
  {
    v3 = this + 264;
  }

  else
  {
    v3 = a3 - 16;
  }

  return PredStruct::addPred(v3, a2);
}

uint64_t BaseSyncNet::unpackSequence(void *a1, unsigned __int16 *a2, int a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v7 = a2;
  v9 = a1[1];
  v10 = *(v9 + 16);
  v11 = a3;
  v13 = 0;
  if (a3 >= 1)
  {
    v14 = a2 + 2;
    v15 = a3;
    do
    {
      v16 = *v14;
      v14 += 6;
      v13 = v13 + *(*(v10 + 16) + v16);
      --v15;
    }

    while (v15);
  }

  v17 = *(v9 + 4);
  result = (*(*a1 + 336))(a1, v13, a6);
  v19 = result;
  v20 = a1[1];
  v21 = v20 + 299008;
  v22 = *(v20 + 302836);
  if (v13 <= v22)
  {
    *(v20 + 302832) = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(v20 + 302824, v13 - v22, 0);
    *(v21 + 3824) = v13;
  }

  v23 = 0;
  v24 = v13 - 1;
  if (v17 == 1)
  {
    v24 = 0;
  }

  do
  {
    *(*(a1[1] + 302824) + 8 * v23++) = v19 + 24 * v24 + 12;
    v24 += v17;
  }

  while (v13 != v23);
LABEL_10:
  v31 = 0;
  v25 = a1[1];
  if (a3 < 1)
  {
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v26 = *(v25 + 302824);
    do
    {
      result = PicMgr::getNodeDataPtrs(v10, v26, *(a1[1] + 32), v7, &v31 + 1, &v31);
      v26 += *(*(v10 + 16) + v7[2]);
      v7 += 6;
      --v11;
    }

    while (v11);
    v25 = a1[1];
    v27 = v31;
    v28 = HIDWORD(v31);
  }

  v29 = v25 + 299008;
  *(v29 + 3656) += a3;
  *(v29 + 3660) += v28;
  *(v29 + 3664) += v27;
  *a4 = v19;
  *a5 = v19 + 24 * v13 - 24;
  return result;
}

uint64_t BaseSyncNet::unpackEndSilence(uint64_t **this)
{
  v2 = ((*this)[42])(this, 1, 0);
  v3 = v2;
  *(v2 + 12) = 0;
  *(v2 + 20) = 0;
  v4 = this[9];
  if (*(this + 13))
  {
    *v4 = v2;
  }

  else
  {
    PredStruct::addPred(*v4 + 16, v2);
  }

  this[18] = v3;
  return v3;
}

uint64_t BaseSyncNet::unpackOneFromPicNodes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v9 = a3;
  v12 = a1[1];
  v13 = *(v12 + 16);
  v14 = *(v12 + 4);
  v15 = (*(*a1 + 336))(a1, a3, a7);
  v16 = a1[1];
  v17 = v16 + 299008;
  v18 = *(v16 + 302836);
  if (v9 <= v18)
  {
    *(v16 + 302832) = v9;
    if (!v9)
    {
      v21 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(v16 + 302824, v9 - v18, 0);
    *(v17 + 3824) = v9;
  }

  v19 = 0;
  v20 = v9 - 1;
  if (v14 == 1)
  {
    v20 = 0;
  }

  v21 = v9;
  do
  {
    *(*(a1[1] + 302824) + 8 * v19++) = v15 + 24 * v20 + 12;
    v20 += v14;
  }

  while (v9 != v19);
LABEL_8:
  result = PicMgr::getNodeDataPtrsFromPicNodes(v13, *(a1[1] + 302824), *(a1[1] + 32), a2, v9);
  *a5 = v15;
  *a6 = v15 + 24 * v21 - 24;
  return result;
}

uint64_t BaseSyncNet::scoreIntSilNode2(uint64_t this, uint64_t a2, int a3)
{
  if (*(this + 280) == 1)
  {
    *(this + 152) = *(this + 250) <= a3;
    return (*(*this + 320))(this, *(this + 113), a2);
  }

  else
  {
    *(this + 152) = 0;
  }

  return this;
}

void SyncNet::~SyncNet(SyncNet *this)
{
  *this = &unk_2875236A8;
  v2 = *(this + 40);
  if (v2)
  {
    PredStruct::~PredStruct(v2);
    MemChunkFree(v3, 0);
  }

  v4 = *(this + 36);
  if (v4)
  {
    MemChunkFree(v4, 0);
  }

  DgnIArray<Utterance *>::~DgnIArray(this + 304);

  BaseSyncNet::~BaseSyncNet(this, v5);
}

{
  SyncNet::~SyncNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t SyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BaseSyncNet::sizeObject(a1, a2);
  v5 = gShadowDiagnosticShowIdealizedObjectSizes;
  active = sizeObject<ActiveWord *>(a1 + 304, v2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (v2 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 2)
  {
    v9 = *(a1 + 320);
    if (v9)
    {
      v8 += sizeObject(v9, v2);
    }
  }

  if (v5)
  {
    v10 = 8;
  }

  else
  {
    v10 = 16;
  }

  v11 = sizeObject(a1 + 328, v2);
  if (v2 == 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v4 + 2 * (v2 != 3) + active + v12 + v8 + v11 + ((2 * (v2 != 3)) | (8 * (v2 != 3)));
}

uint64_t SyncNet::getBestScore(uint64_t a1, void *a2)
{
  BestScore = BaseSyncNet::getBestScore(a1, a2);
  if (*(a1 + 312))
  {
    v5 = 0;
    do
    {
      v10 = 0;
      v6 = Sequence::getBestScore(*(*(a1 + 304) + 8 * v5), &v10);
      if (v6 < BestScore)
      {
        *a2 = v10;
        BestScore = v6;
      }

      ++v5;
    }

    while (v5 < *(a1 + 312));
  }

  v7 = *(a1 + 320);
  if (v7)
  {
    v10 = 0;
    v8 = Sequence::getBestScore(v7, &v10);
    if (v8 < BestScore)
    {
      *a2 = v10;
      return v8;
    }
  }

  return BestScore;
}

uint64_t SyncNet::updateBestNodeScore(SyncNet *this)
{
  v1 = *(this + 71);
  if (*(this + 280) == 1 && v1 >= *(this + 125))
  {
    v1 = *(this + 125);
  }

  if (*(this + 88) < v1)
  {
    v1 = *(this + 88);
  }

  v2 = *(this + 89);
  if (v2 >= v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SyncNet::scoreNetInternal(int32x2_t *this, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = a3;
  v8 = this[13].i32[0];
  v71 = this[19].i32[0];
  v72 = 0;
  if (v8)
  {
    v66 = this + 44;
    v9 = this[44].i32[0] <= a3;
    v10 = &this[45] + 2;
    this[45].i8[2] = v9;
    v11 = &this[45] + 3;
    this[45].i8[3] = this[44].i32[1] <= a3;
    this[44] = vdup_n_s32(0x4E20u);
    v12 = this[35].i32[1] <= a3;
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v10 = &this[45] + 2;
    this[45].i16[1] = 0;
    v66 = this + 44;
    this[44] = 85899345940000;
    v11 = &this[45] + 3;
  }

  this[35].i8[2] = v12;
  v13 = 20000;
  this[35].i32[1] = 20000;
  v68 = a3;
  if (this[39].i32[0])
  {
    v13 = BaseSyncNet::scoreIntSilNode1<true>(this, v9, this[14].u8[2], a3, a4, a5, a6, &v72);
    v14 = this[38];
    v15 = **v14;
    if (v8)
    {
      v16 = *(v15 + 8) <= v6;
    }

    else
    {
      v16 = 0;
    }

    v17 = this[39].u32[0];
    if ((*v10 & 1) != 0 || v16)
    {
      v22 = *&this[1] + 299008;
      if (*v10)
      {
        v23 = this[26];
        v65 = this[25];
        *(*&this[1] + 302648) += v17;
      }

      else
      {
        v23 = this[24];
        v65 = this[23];
        *(*&this[1] + 302652) += v17;
      }

      v63 = v11;
      if (v17)
      {
        v24 = v23 >> 1;
        do
        {
          v25 = *v14;
          if (v23)
          {
            v26 = (*(*&v25[v24] + v65))(&v25[v24], v15, v16, v68, a4, a5, *&this[1], this[14].u32[1], 0, &v72, &v71);
          }

          else
          {
            v26 = v65(&v25[v24], v15, v16, v68, a4, a5, *&this[1], this[14].u32[1], 0, &v72, &v71);
          }

          if (v26 < this[44].i32[0])
          {
            v66->i32[0] = v26;
          }

          if (v13 >= *&v25[24 * *(v25 + 5)])
          {
            v13 = *&v25[24 * *(v25 + 5)];
          }

          ++v14;
          --v17;
        }

        while (v17);
      }

      this[35].i8[1] = 1;
      v6 = v68;
      v11 = v63;
    }

    else if (this[35].i8[1] == 1)
    {
      this[35].i8[1] = 0;
      v18 = this[10].u32[0];
      if (v18 >= 2)
      {
        v19 = v18 + 1;
        v20 = (*&this[9] + 8 * v18 - 8);
        do
        {
          v21 = *v20--;
          *(v21 + 8) = 20000;
          --v19;
        }

        while (v19 > 2);
      }
    }
  }

  this[13].i16[2] = v13;
  v27 = this[1];
  if (v13 < *(*&v27 + 246))
  {
    *(*&v27 + 246) = v13;
  }

  v28 = this[40];
  v29 = this[35].i8[2];
  if (v28)
  {
    v9 = **&v28;
    v30 = (this[35].i8[2] & 1) != 0 && *(v9 + 8) <= v6;
    if ((*v11 & 1) != 0 || v30)
    {
      if (*v11)
      {
        v35 = this[25];
        v36 = this[26];
        ++*(*&v27 + 302640);
      }

      else
      {
        v35 = this[23];
        v36 = this[24];
        ++*(*&v27 + 302644);
      }

      v37 = (*&v28 + (v36 >> 1));
      if (v36)
      {
        v35 = *(*v37 + v35);
      }

      v38 = this[14].u32[1];
      this[44].i32[1] = v35(v37, v9, v30, v6, a4, a5);
      v31 = this[28].u32[0];
      v32 = this[27];
      if (this[35].i8[2])
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }

    *(*&v28 + 24 * (*(*&v28 + 10) - 1) + 24) = 20000;
  }

  v31 = this[28].u32[0];
  v32 = this[27];
  if (v29)
  {
LABEL_39:
    v64 = this[25];
    v67 = this[26];
    v33 = this[1];
    v34 = -25048;
    goto LABEL_48;
  }

LABEL_46:
  v33 = this[1];
  if ((this[14].i8[0] & 1) == 0)
  {
    goto LABEL_67;
  }

  v64 = this[23];
  v67 = this[24];
  v34 = -25044;
LABEL_48:
  *(*&v33 + (v34 | 0x40000u)) += v31;
  if (v31)
  {
    v39 = 0;
    v40 = v67 >> 1;
    v41 = 0xFFFFFFFFLL;
    v42 = 20000;
    v43 = v31;
    while (1)
    {
      v44 = *v32;
      if (v67)
      {
        v45 = *(*(v44 + v40) + v64);
      }

      else
      {
        v45 = v64;
      }

      v46 = *(*v44 + 8) != 20000;
      v47 = this[1];
      v48 = this[14].u32[1];
      v49 = v45(v44 + v40);
      if (v49 < this[35].i32[1])
      {
        this[35].i32[1] = v49;
      }

      v50 = &v44[12 * v44[5] - 12];
      v51 = v50 + 8;
      v52 = *(v50 + 5);
      v53 = v50[12];
      LOBYTE(v50) = this[14].i8[2];
      v54 = v53 - v42;
      if (v53 - v42 < 0)
      {
        if ((this[14].i8[2] & 1) == 0)
        {
          v39 = v51;
          v42 = v53;
          goto LABEL_64;
        }

        v54 = v42 - v53;
        v42 = v53;
        v55 = v52;
        v56 = v51;
        v51 = v39;
        LODWORD(v52) = v41;
      }

      else
      {
        v55 = v41;
        v56 = v39;
        if ((this[14].i8[2] & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      if (v54 + v42 > a4)
      {
LABEL_62:
        v39 = v56;
        v41 = v55;
        goto LABEL_63;
      }

      v57 = this[1];
      v58 = *v51;
      v73 = 0;
      v41 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(*&v57 + 302936, &v73);
      v59 = v73;
      *(v73 + 4) = v55;
      *(v59 + 8) = v52;
      *v59 = v58;
      *(v59 + 12) = v54;
      v39 = v56;
LABEL_63:
      v40 = v67 >> 1;
LABEL_64:
      ++v32;
      if (!--v43)
      {
        v33 = this[1];
        goto LABEL_68;
      }
    }
  }

LABEL_67:
  v39 = 0;
  LODWORD(v41) = -1;
  v42 = 20000;
LABEL_68:
  ++*(*&v33 + 302584);
  *(*&v33 + 302608) += v72;
  if (v42 <= a4)
  {
    this[42].i16[0] = v42 + (this[42].i32[1] >> 8);
    v60 = *v39;
    if (this[14].i8[2] == 1)
    {
      this[41].i32[0] = v60;
      this[41].i32[1] = v41;
    }

    else
    {
      v61 = v39[1];
      this[41].i32[0] = v60;
      this[41].i32[1] = v61 + this[43].i16[1];
    }
  }

  else
  {
    this[42].i32[0] = 1310740000;
  }

  this[13].i32[0] = v71;
  result = (*(*this + 328))(this, v9);
  this[13].i16[3] = result;
  return result;
}

uint64_t SyncNet::thresholdNetInternal(SyncNet *this, uint64_t a2, int a3)
{
  if (*(this + 280) == 1)
  {
    *(this + 38) = *(this + 125) <= a3;
    (*(*this + 320))(this, *(this + 113), a2);
  }

  else
  {
    *(this + 38) = 0;
  }

  if (*(this + 55) <= a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(this + 55) = 20000;
  }

  *(this + 26) = v5;

  return SyncNet::maybeDoCallback(this, a3);
}

uint64_t SyncNet::maybeDoCallback(uint64_t this, int a2)
{
  v2 = *(this + 176);
  if (v2 == 3)
  {
    v3 = *(this + 336);
  }

  else
  {
    if (v2 != 2)
    {
      return this;
    }

    v3 = *(*(this + 320) + 24 * (*(*(this + 320) + 10) - 1) + 24);
  }

  if (v3 <= a2)
  {
    return (*(this + 160))(*(this + 168));
  }

  return this;
}

uint64_t SyncNet::calcNumActiveNodes(SyncNet *this, int a2)
{
  v4 = *(this + 38);
  if (*(this + 88) <= a2)
  {
    v5 = *(this + 78);
    if (v5)
    {
      v6 = *(this + 38);
      do
      {
        v7 = *v6++;
        v4 = Sequence::calcNumActiveNodes(v7, a2) + v4;
        --v5;
      }

      while (v5);
    }
  }

  if (*(this + 89) <= a2)
  {
    v4 = Sequence::calcNumActiveNodes(*(this + 40), a2) + v4;
  }

  if (*(this + 71) <= a2)
  {
    v8 = *(this + 56);
    if (v8)
    {
      v9 = *(this + 27);
      do
      {
        v10 = *v9++;
        v4 = Sequence::calcNumActiveNodes(v10, a2) + v4;
        --v8;
      }

      while (v8);
    }
  }

  return v4;
}

uint64_t SyncNet::addEpsilonNode(SyncNet *this)
{
  if (*(this + 360))
  {
    *(this + 361) = 1;
    return *(this + 1) + 302796;
  }

  else
  {
    *(this + 360) = 1;
    return this + 328;
  }
}

void *SyncNet::addArc(void *this, const Node *a2, Node *a3)
{
  if (this + 41 != a3)
  {
    v3 = (this[1] + 302796);
    if (v3 != a3)
    {
      if (v3 == a2)
      {
        v4 = this[40];
        if (v4)
        {
          a2 = (v4 + 24 * (*(v4 + 10) - 1) + 16);
        }

        else
        {
          a2 = (this + 41);
        }
      }

      if (this + 30 == a3)
      {
        v5 = (this + 33);
      }

      else
      {
        v5 = a3 - 16;
      }

      return PredStruct::addPred(v5, a2);
    }
  }

  return this;
}

uint64_t *SyncNet::addNodesSequential(uint64_t a1, Sequence *this, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *(a1 + 296);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 10) = this;
      if (this)
      {
        v6 = v5 + 24;
        v7 = this;
        do
        {
          *(v6 - 8) = 0x100000001;
          *v6 = 1310740000;
          *(v6 + 4) = 0;
          *(v6 + 12) = -65536;
          v6 += 24;
          --v7;
        }

        while (v7);
        v8 = 24 * this;
      }

      else
      {
        v8 = 0;
      }

      v12 = *(a1 + 304);
      *(a1 + 296) += v8 + 16;
      v13 = *(a1 + 312);
      *(v12 + 8 * v13) = v5;
      *(a1 + 312) = v13 + 1;
      return (v5 + 16);
    }

    else
    {
      v10 = Sequence::newSequence(this);
      v11 = v10;
      v9 = v10 + 2;
      if (a3 == 3)
      {
        v14 = *(a1 + 224);
        if (v14 == *(a1 + 228))
        {
          DgnPrimArray<unsigned long long>::reallocElts(a1 + 216, 1, 1);
          v14 = *(a1 + 224);
        }

        *(*(a1 + 216) + 8 * v14) = v11;
        *(a1 + 224) = v14 + 1;
      }

      else if (a3 == 2)
      {
        *(a1 + 320) = v10;
      }
    }
  }

  else
  {
    v9 = (a1 + 240);
    *(a1 + 280) = 1;
  }

  return v9;
}

uint64_t *SyncNet::preallocEndSequences(SyncNet *this, unsigned int a2, unsigned int a3)
{
  result = MemChunkAlloc((24 * *(*(*(*(this + 1) + 16) + 16) + a2) + 16) * a3, 0);
  *(this + 36) = result;
  *(this + 37) = result;
  v6 = *(this + 79);
  if (a3 > v6)
  {

    return DgnPrimArray<unsigned long long>::reallocElts(this + 304, a3 - v6, 0);
  }

  return result;
}

uint64_t SyncNet::estimateActivePelsThisFrame(SyncNet *this, BitArray *a2)
{
  result = BaseSyncNet::estimateActivePelsThisFrame(this, a2);
  if (*(this + 360) == 1)
  {
    v5 = *(this + 175);
    if (v5 != 0xFFFF)
    {
      *(*a2 + ((v5 >> 3) & 0x1FFC)) |= 1 << v5;
    }
  }

  v6 = *(this + 78);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 38);
    do
    {
      v9 = *(v8 + 8 * v7);
      if (*(v9 + 10))
      {
        v10 = 0;
        v11 = *a2;
        v12 = (v9 + 38);
        do
        {
          v13 = *v12;
          v12 += 12;
          v14 = (v13 >> 3) & 0x1FFC;
          result = *(v11 + v14);
          *(v11 + v14) = (1 << v13) | result;
          ++v10;
        }

        while (v10 < *(v9 + 10));
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v15 = *(this + 40);
  if (v15 && *(v15 + 10))
  {
    v16 = 0;
    v17 = *a2;
    v18 = (v15 + 38);
    do
    {
      v19 = *v18;
      v18 += 12;
      *(v17 + ((v19 >> 3) & 0x1FFC)) |= 1 << v19;
      ++v16;
    }

    while (v16 < *(v15 + 10));
  }

  return result;
}

uint64_t BaseSyncNet::estimateActivePelsThisFrame(BaseSyncNet *this, BitArray *a2)
{
  result = AcousticNet::estimateActivePelsThisFrame(this, a2);
  if (*(this + 280) == 1)
  {
    *(*a2 + ((*(this + 131) >> 3) & 0x1FFC)) |= 1 << *(this + 131);
  }

  v5 = *(this + 56);
  if (v5)
  {
    v6 = 0;
    v7 = *(this + 27);
    do
    {
      v8 = *(v7 + 8 * v6);
      if (*(v8 + 10))
      {
        v9 = 0;
        v10 = *a2;
        v11 = (v8 + 38);
        do
        {
          v12 = *v11;
          v11 += 12;
          v13 = (v12 >> 3) & 0x1FFC;
          result = *(v10 + v13);
          *(v10 + v13) = (1 << v12) | result;
          ++v9;
        }

        while (v9 < *(v8 + 10));
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void Lookahead::~Lookahead(Lookahead *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 104);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 88);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 16);
  DgnArray<DgnArray<PositionClu>>::releaseAll(this);
}

void Lookahead::printSize(Lookahead *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 149, &v122);
  if (v123)
  {
    v16 = v122;
  }

  else
  {
    v16 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, byte_26288F85C, a3, byte_26288F85C, v16);
  DgnString::~DgnString(&v122);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, byte_26288F85C);
  v21 = sizeObject<DgnArray<PositionClu>>(this, 0);
  v22 = sizeObject<DgnArray<PositionClu>>(this, 1);
  v23 = sizeObject<DgnArray<PositionClu>>(this, 3);
  v24 = (a3 + 1);
  v121 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 150, &v122);
  if (v123)
  {
    v30 = v122;
  }

  else
  {
    v30 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, byte_26288F85C, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v122);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v31 = sizeObject<DgnPrimArray<unsigned char>>(this + 16, 0);
  v32 = sizeObject<DgnPrimArray<unsigned char>>(this + 16, 1);
  v122 = 0;
  v123 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v122);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 151, &v122);
  if (v123)
  {
    v37 = v122;
  }

  else
  {
    v37 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v24, byte_26288F85C, v25, v25, v37, v31, v32, 0);
  DgnString::~DgnString(&v122);
  *a4 += v31;
  *a5 += v32;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 153, &v122);
  if (v123)
  {
    v42 = v122;
  }

  else
  {
    v42 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, v24, byte_26288F85C, v25, v25, v42, 8, 8, 0);
  DgnString::~DgnString(&v122);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 154, &v122);
  if (v123)
  {
    v47 = v122;
  }

  else
  {
    v47 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, v24, byte_26288F85C, v25, v25, v47, 4, 4, 0);
  DgnString::~DgnString(&v122);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 155, &v122);
  if (v123)
  {
    v52 = v122;
  }

  else
  {
    v52 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v24, byte_26288F85C, v25, v25, v52, 4, 4, 0);
  DgnString::~DgnString(&v122);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 156, &v122);
  if (v123)
  {
    v57 = v122;
  }

  else
  {
    v57 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v24, byte_26288F85C, v25, v25, v57, 4, 4, 0);
  DgnString::~DgnString(&v122);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 4;
  }

  else
  {
    v58 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 157, &v122);
  if (v123)
  {
    v63 = v122;
  }

  else
  {
    v63 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, v24, byte_26288F85C, v25, v25, v63, v58, v58, 0);
  DgnString::~DgnString(&v122);
  *a4 += v58;
  *a5 += v58;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 4;
  }

  else
  {
    v64 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 158, &v122);
  if (v123)
  {
    v69 = v122;
  }

  else
  {
    v69 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v24, byte_26288F85C, v25, v25, v69, v64, v64, 0);
  DgnString::~DgnString(&v122);
  *a4 += v64;
  *a5 += v64;
  v70 = CombineTable::sizeObject(this + 72, 0);
  v71 = CombineTable::sizeObject(this + 72, 1);
  v72 = CombineTable::sizeObject(this + 72, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 160, &v122);
  if (v123)
  {
    v77 = v122;
  }

  else
  {
    v77 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v74, v75, v76, v24, byte_26288F85C, v25, v25, v77, v70, v71, v72);
  DgnString::~DgnString(&v122);
  *a4 += v70;
  *a5 += v71;
  *a6 += v72;
  v78 = sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(this + 88, 0);
  v79 = sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(this + 88, 1);
  v80 = sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(this + 88, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 162, &v122);
  if (v123)
  {
    v85 = v122;
  }

  else
  {
    v85 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v24, byte_26288F85C, v25, v25, v85, v78, v79, v80);
  DgnString::~DgnString(&v122);
  *a4 += v78;
  *a5 += v79;
  *a6 += v80;
  v86 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v86 = 8;
  }

  v87 = *(this + 28);
  if (v87 <= 0)
  {
    v88 = 0;
  }

  else
  {
    v88 = 4 * v87;
  }

  v89 = v88 + v86;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 164, &v122);
  if (v123)
  {
    v94 = v122;
  }

  else
  {
    v94 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, v24, byte_26288F85C, v25, v25, v94, v89, v89, 0);
  DgnString::~DgnString(&v122);
  *a4 += v89;
  *a5 += v89;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v95 = 12;
  }

  else
  {
    v95 = 16;
  }

  v96 = *(this + 32);
  v97 = *(this + 33);
  if (v97 >= v96)
  {
    v98 = 0;
    if (v96 > 0)
    {
      v95 += 4 * (v96 - 1) + 4;
    }

    v99 = v95 + 4 * (v97 - v96);
  }

  else
  {
    v98 = 4 * v96;
    v99 = v95;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 165, &v122);
  if (v123)
  {
    v104 = v122;
  }

  else
  {
    v104 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v101, v102, v103, v24, byte_26288F85C, v25, v25, v104, v99, v95, v98);
  DgnString::~DgnString(&v122);
  *a4 += v99;
  *a5 += v95;
  *a6 += v98;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v105 = 12;
  }

  else
  {
    v105 = 16;
  }

  v106 = *(this + 36);
  v107 = *(this + 37);
  if (v107 >= v106)
  {
    v108 = 0;
    if (v106 > 0)
    {
      v105 += 4 * (v106 - 1) + 4;
    }

    v109 = v105 + 4 * (v107 - v106);
  }

  else
  {
    v108 = 4 * v106;
    v109 = v105;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 166, &v122);
  if (v123)
  {
    v114 = v122;
  }

  else
  {
    v114 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v24, byte_26288F85C, v25, v25, v114, v109, v105, v108);
  DgnString::~DgnString(&v122);
  *a4 += v109;
  *a5 += v105;
  *a6 += v108;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 167, &v122);
  if (v123)
  {
    v119 = v122;
  }

  else
  {
    v119 = byte_26288F85C;
  }

  v120 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v121, byte_26288F85C, (35 - v121), (35 - v121), v119, *a4, *a5, *a6);
  DgnString::~DgnString(&v122);
}

void sub_2627FF780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<PositionClu>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<ScoreFixArray>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnVector>::releaseAll(v10);
  return v5;
}

uint64_t sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimArray<unsigned char>>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  return v5;
}

void (***Lookahead::saveLookaheadBinary(Lookahead *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x3Fu, a4, "MRPLB!? ", 24, 5);
  v15 = 0;
  writeObject(v7, this + 10, &v15);
  writeObject(v7, this + 11, &v15);
  writeObject(v7, this + 12, &v15);
  writeObject<unsigned int>(v7, this + 120, &v15);
  writeObject(v7, this + 4, &v15, v8, v9, v10, v11, v12);
  writeObject<DgnPrimArray<unsigned char>>(v7, this + 16, &v15);
  writeObject<DgnArray<DgnPrimArray<unsigned char>>>(v7, this + 88, &v15);
  writeObject<unsigned int>(v7, this + 104, &v15);
  writeObjectChecksum(v7, &v15);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x3Fu, v15);
  return DgnDelete<DgnStream>(v7);
}

uint64_t writeObject<DgnArray<DgnPrimArray<unsigned char>>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<DgnPrimArray<unsigned char>>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void Lookahead::saveLookaheadText(Lookahead *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v46);
  DgnTextFileWriter::openDgnTextFileWriter(v46, a2, 0x41u, a3);
  v44 = 0;
  v45 = 0;
  DgnTextFile::legalDgnTextFileVersions(v46, sPLT_Versions, &v44, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v46, "PrefiltererLookaheadText", (v44 + 8 * (v45 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v46, "SmoothWindowFrames", *(this + 32));
  DgnTextFileWriter::setHeaderFieldUnsigned(v46, "ModelDimension", *(this + 10));
  DgnTextFileWriter::setHeaderFieldUnsigned(v46, "NumberOfPhonemes", *(this + 11));
  DgnTextFileWriter::setHeaderFieldUnsigned(v46, "NumberOfMixtureComponents", *(this + 12));
  *v42 = 0;
  v43 = 0;
  v39 = 0;
  HIDWORD(v43) = realloc_array(0, &v39, 0x60uLL, 0, 0, 1) >> 4;
  *v42 = v39;
  v11 = v43;
  if (v43 <= 6)
  {
    if (v43 != 6)
    {
      v13 = v43 + 1;
      v14 = 16 * v43;
      do
      {
        DgnString::DgnString((*v42 + v14));
        v14 += 16;
      }

      while (v13++ != 6);
    }
  }

  else if (v43 >= 7)
  {
    v12 = 16 * v43 - 16;
    do
    {
      --v11;
      DgnString::~DgnString((*v42 + v12));
      v12 -= 16;
    }

    while (v11 > 6);
  }

  LODWORD(v43) = 6;
  v47 = 0;
  v16 = realloc_array(0, &v47, 0x18uLL, 0, 0, 1);
  v39 = v47;
  v40 = 6;
  v41 = v16 >> 2;
  DgnString::operator=(*v42, "TableName");
  *v39 = 0;
  DgnString::operator=((*v42 + 16), "Phoneme");
  *(v39 + 1) = 0;
  DgnString::operator=((*v42 + 32), "UnsVal1");
  *(v39 + 2) = 3;
  DgnString::operator=((*v42 + 48), "UnsVal2");
  *(v39 + 3) = 3;
  DgnString::operator=((*v42 + 64), "UnsVal3");
  *(v39 + 4) = 3;
  DgnString::operator=((*v42 + 80), "UnsVal4");
  *(v39 + 5) = 3;
  DgnTextFileWriter::setLineFieldFormat(v46, &v39, v42);
  if (*(this + 32))
  {
    v17 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v46, 0, "FrameWeight");
      DgnTextFileWriter::setLineFieldValue(v46, 1u, byte_26288F85C);
      DgnTextFileWriter::setLineFieldUnsignedValue(v46, 2u, v17);
      DgnTextFileWriter::setLineFieldUnsignedValue(v46, 3u, *(*(this + 15) + 4 * v17));
      DgnTextFileWriter::setLineFieldUnsignedValue(v46, 4u, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v46, 5u, 0);
      DgnTextFileWriter::writeNextLine(v46);
      ++v17;
    }

    while (v17 < *(this + 32));
  }

  v18 = *(this + 28);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(this + 13) + 4 * v19);
      if (v21 != -1)
      {
        v22 = *(*(this + 11) + 16 * v21 + 8);
        if (v22)
        {
          v38 = v19;
          v23 = 0;
          LODWORD(v24) = *(this + 10);
          do
          {
            if (v24)
            {
              v25 = 0;
              for (i = 0; i < v24; ++i)
              {
                DgnTextFileWriter::setLineFieldValue(v46, 0, "PDF");
                DgnTextFileWriter::setLineFieldValue(v46, 1u, byte_26288F85C);
                DgnTextFileWriter::setLineFieldUnsignedValue(v46, 2u, v20);
                DgnTextFileWriter::setLineFieldUnsignedValue(v46, 3u, i);
                v27 = *(*(*(this + 11) + 16 * v21) + 16 * v23);
                v28 = *(v27 + v25 + 1);
                DgnTextFileWriter::setLineFieldUnsignedValue(v46, 4u, *(v27 + v25));
                DgnTextFileWriter::setLineFieldUnsignedValue(v46, 5u, v28);
                DgnTextFileWriter::writeNextLine(v46);
                v24 = *(this + 10);
                v25 += 2;
              }
            }

            ++v20;
            ++v23;
          }

          while (v23 != v22);
          v18 = *(this + 28);
          v19 = v38;
        }
      }

      ++v19;
    }

    while (v19 < v18);
    if (v18)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(*(this + 13) + 4 * v29);
        if (v32 != -1)
        {
          v33 = *(*(this + 11) + 16 * v32 + 8);
          if (v33)
          {
            v34 = 0;
            v35 = 16 * v32;
            do
            {
              DgnTextFileWriter::setLineFieldValue(v46, 0, "Pel");
              v36 = *(*(this + 8) + 8) + 16 * v29;
              if (*(v36 + 8))
              {
                v37 = *v36;
              }

              else
              {
                v37 = byte_26288F85C;
              }

              DgnTextFileWriter::setLineFieldValue(v46, 1u, v37);
              DgnTextFileWriter::setLineFieldUnsignedValue(v46, 2u, v30);
              DgnTextFileWriter::setLineFieldUnsignedValue(v46, 3u, v31 + v34);
              DgnTextFileWriter::setLineFieldUnsignedValue(v46, 4u, *(*(*(this + 2) + v35) + v34));
              DgnTextFileWriter::setLineFieldUnsignedValue(v46, 5u, 0);
              DgnTextFileWriter::writeNextLine(v46);
              ++v34;
            }

            while (v33 != v34);
            v18 = *(this + 28);
            v31 += v34;
          }

          ++v30;
        }

        ++v29;
      }

      while (v29 < v18);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
  DgnArray<DgnString>::releaseAll(v42);
  DgnIArray<Utterance *>::~DgnIArray(&v44);
  DgnTextFileWriter::~DgnTextFileWriter(v46);
}

void sub_2628000C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

void Lookahead::saveLookahead(Lookahead *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {
    Lookahead::saveLookaheadText(this, a2, a5);
  }

  else
  {
    Lookahead::saveLookaheadBinary(this, a2, a3, a5);
  }
}

uint64_t Lookahead::scoreOneForLookahead(uint64_t a1, unsigned __int8 **a2, unsigned int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *a1 + 16 * a3;
  v4 = (*(a1 + 16) + 16 * a3);
  v5 = *(v3 + 8);
  v6 = *(*(a1 + 56) + 56);
  memset(v28, 0, sizeof(v28));
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *a2;
    v9 = v28;
    v10 = *(a1 + 40);
    do
    {
      v11 = *v8++;
      *v9++ = v6 + 2 * v11;
      --v10;
    }

    while (v10);
    v12 = *v4;
    v13 = **v4;
    v14 = *v3;
    v15 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v7 = 0;
      v16 = 0;
    }

    else
    {
      v16 = 0;
      for (i = (v7 - 1); i != -1; --i)
      {
        v16 += *(*(v28 + i) + 2 * *(*v14 + 2 * i));
      }

      v7 = 1;
    }
  }

  else
  {
    v16 = 0;
    v12 = *v4;
    v13 = **v4;
    v14 = *v3;
    v15 = -1;
  }

  v18 = (v16 + v13);
  if (v5 >= 2)
  {
    for (j = 1; j != v5; ++j)
    {
      v20 = 0;
      if (v7)
      {
        for (k = v15; k != -1; --k)
        {
          v20 += *(*(v28 + k) + 2 * *(v14[2 * j] + 2 * k));
        }
      }

      v22 = v20 + *(v12 + j);
      v24 = v22 - v18;
      v23 = v22 - v18 < 0;
      if (v22 >= v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = v22;
      }

      if (v23)
      {
        v25 = -v24;
      }

      else
      {
        v25 = v24;
      }

      if (v25 < *(a1 + 80))
      {
        v18 = (v18 - *(*(a1 + 72) + 4 * v25));
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

void *DgnArray<DgnArray<PositionClu>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    v4 = 16 * v2 - 16;
    do
    {
      DgnArray<DgnVector>::releaseAll(*a1 + v4);
      --v3;
      v4 -= 16;
    }

    while (v3 > 1);
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

void TCondition::TCondition(TCondition *this, signed int **a2, unint64_t a3, TLexicon *a4)
{
  TCondition::setEnum(this, a2, a3);
  *(this + 4) = a4;
  *this = 0;
  if (*(this + 3) != 7)
  {
    buildRegExp(a2, a4);
  }

  if (TFileObject::verify(a2, 0, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v14, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v14[0], v14[1]);
    }

    else
    {
      *&__p[8] = *v14;
      v17 = v15;
    }

    *__p = &unk_287528000;
    if (v17 >= 0)
    {
      v10 = &__p[8];
    }

    else
    {
      v10 = *&__p[8];
    }

    conditionalAssert(v10, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 120, v8, v9);
    *__p = byte_287529580;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v12 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v12, *__p, *&__p[8]);
    }

    else
    {
      v13 = *__p;
      exception[3] = *&__p[16];
      *&v12->__r_.__value_.__l.__data_ = v13;
    }

    *exception = &unk_287528000;
  }

  __p[0] = 0;
  v7 = a2[3];
  {
    operator new();
  }

  *this = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, __p);
}

void sub_2628005A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x26672B1B0](v25, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TCondition::setEnum(TCondition *this, const TFileObject *a2, unint64_t a3)
{
  v6 = 0;
  v7 = *(a2 + 1);
  if (a3 > 1)
  {
    v8 = 8;
  }

  else
  {
    v8 = 9;
  }

  *(this + 1) = 0x900000004;
  while (1)
  {
    v9 = *(&TCondition::setEnum(TFileObject const*,unsigned long)::ppszSource + v6);
    v10 = wcslen(v9);
    if (!wcsncmp(v7, v9, v10))
    {
      break;
    }

    if (v8 == ++v6)
    {
      goto LABEL_7;
    }
  }

  *(this + 3) = v6;
  if (a3 <= 1 && v6 == 8)
  {
    tknPrintf("Warning: Pron conditions are no longer supported in munge-map rules!\n", v11, v12, v13, v14);
    LODWORD(v6) = *(this + 3);
  }

  v22 = &v7[wcslen(v9)];
  if (v6 >= 2 && v6 != 7)
  {
    if (v6 == 9)
    {
LABEL_7:
      loggableFileObject(a2);
      if (__p[23] >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      tknPrintf("Error: %sInvalid attribute\n", v15, v16, v17, v18, v19);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v43, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v44) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v43[0], v43[1]);
      }

      else
      {
        *&__p[8] = *v43;
        v46 = v44;
      }

      *__p = &unk_287528000;
      if (v46 >= 0)
      {
        v28 = &__p[8];
      }

      else
      {
        v28 = *&__p[8];
      }

      conditionalAssert(v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 177, v20, v21);
      *__p = byte_287529580;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v30 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v30, *__p, *&__p[8]);
      }

      else
      {
        v31 = *__p;
        exception[3] = *&__p[16];
        *&v30->__r_.__value_.__l.__data_ = v31;
      }

      *exception = &unk_287528000;
    }

    v23 = 0;
    v22 += 2 * (wcsncmp(v22, dword_26288F9A0, 2uLL) == 0);
    while (1)
    {
      v24 = *(&TCondition::setEnum(TFileObject const*,unsigned long)::ppszTokenPos + v23);
      v25 = wcslen(v24);
      if (!wcsncmp(v22, v24, v25))
      {
        break;
      }

      if (++v23 == 5)
      {
        goto LABEL_25;
      }
    }

    *(this + 2) = v23;
    v22 += wcslen(v24);
  }

LABEL_25:
  v26 = &v22[2 * (wcsncmp(v22, dword_26288FA64, 2uLL) == 0)];
  *(this + 16) = 0;
  result = wcsncmp(v26, dword_26288FA70, 3uLL);
  if (!result)
  {
    v26 += 3;
    *(this + 16) = 1;
  }

  if (*v26)
  {
    loggableFileObject(a2);
    if (__p[23] >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = *__p;
    }

    tknPrintf("Error: %sInvalid attribute\n", v32, v33, v34, v35, v36);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v43, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v44) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v43[0], v43[1]);
    }

    else
    {
      *&__p[8] = *v43;
      v46 = v44;
    }

    *__p = &unk_287528000;
    if (v46 >= 0)
    {
      v39 = &__p[8];
    }

    else
    {
      v39 = *&__p[8];
    }

    conditionalAssert(v39, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 223, v37, v38);
    *__p = byte_287529580;
    if (SHIBYTE(v46) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    v40 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v40 = byte_287529580;
    v41 = (v40 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v41, *__p, *&__p[8]);
    }

    else
    {
      v42 = *__p;
      v40[3] = *&__p[16];
      *&v41->__r_.__value_.__l.__data_ = v42;
    }

    *v40 = &unk_287528000;
  }

  return result;
}

void sub_262800B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void TCondition::~TCondition(TCondition *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    TRegExp::~TRegExp(v1);
    MEMORY[0x26672B1B0]();
  }
}

void TCondition::getSource(uint64_t a1, uint64_t a2, int *a3, int *a4, void *a5)
{
  TBuffer<wchar_t>::resize(a5, 0);
  v10 = *(a1 + 12);
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v12 = *(a2 + 48);
          if (v12 != 2 && v12 != 5)
          {
            v13 = *(a2 + 56);

            TWord::getTokenName(v13, a5);
          }
        }

        return;
      }

      v25 = 0;
      v18 = a5[2];
        ;
      }

      v20 = v25 - 1;
      v21 = a5;
      v22 = a4;
    }

    else
    {
      v17 = 0;
      v18 = a5[2];
        ;
      }

      v20 = v17 - 1;
      v21 = a5;
      v22 = a3;
    }

    TBuffer<wchar_t>::insert(v21, v18, v22, v20);
  }

  else
  {
    if (v10 <= 4)
    {
      if (v10 != 3)
      {
        v11 = *(a2 + 56);

        TWord::getCategoryTag(v11, a5);
        return;
      }

      v23 = *(a2 + 48);
      if (v23 == 2 || v23 == 5)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v10 == 6)
    {
      if (*(a2 + 48) != 5)
      {
        return;
      }

LABEL_29:
      v24 = *(a2 + 56);

      TWord::getWrittenForm(v24, a5);
      return;
    }

    if (v10 == 5)
    {
      v14 = *(*(a2 + 16) + 16);
      if (v14)
      {
        v15 = *(*(a2 + 24) + 24);
        if (v15)
        {
          v16 = *(a1 + 32) + 240;

          TLocaleInfo::multiByteToUnicode(v16, v14, v15 - v14, a5);
        }
      }
    }
  }
}

uint64_t TCondition::test(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  if (*(a1 + 12) == 7)
  {
    LOBYTE(v5) = rand() < 0x7FFFFFFFLL * *a1 / 0x64uLL;
    return v5 & 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  collectEdge(a2, *(a1 + 8), &v19);
  v8 = v19;
  v9 = v20;
  if (v20 == v19)
  {
    LOBYTE(v5) = 0;
    if (!v19)
    {
      return v5 & 1;
    }

    goto LABEL_21;
  }

  v10 = 0;
  v5 = 0;
  do
  {
    v11 = v8[v10];
    if (*(v11 + 48) != 3)
    {
      v15 = v17;
      v16 = xmmword_26286B6F0;
      v18 = 1;
      TCondition::getSource(a1, v11, a3, a4, &v15);
      if (*(&v16 + 1))
      {
        v12 = *(a1 + 24);
        if (*(&v16 + 1) >= v16)
        {
          if (v18)
          {
            v22 = 0;
            TBuffer<wchar_t>::insert(&v15, *(&v16 + 1), &v22, 1uLL);
            v13 = v15;
            --*(&v16 + 1);
          }

          else
          {
            v13 = v15;
            if (v16)
            {
              v15[v16 - 1] = 0;
            }
          }
        }

        else
        {
          v13 = v15;
          v15[*(&v16 + 1)] = 0;
        }

        v5 |= TRegExp::match(v12, v13, 0) ^ *(a1 + 16);
      }

      if (v18 == 1 && v15 != v17 && v15)
      {
        MEMORY[0x26672B1B0]();
      }

      v8 = v19;
      v9 = v20;
    }

    ++v10;
  }

  while (v10 < v9 - v8);
  if (v8)
  {
LABEL_21:
    v20 = v8;
    operator delete(v8);
  }

  return v5 & 1;
}

void sub_262801008(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void collectEdge(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        OutEdge = TVertex::getInEdge(*(a1 + 16));
        if (OutEdge)
        {
LABEL_9:
          std::vector<TWord const*>::push_back[abi:ne200100](a3, &OutEdge);
          v4 = OutEdge;
          while (1)
          {
            v4 = *v4;
            if (!v4)
            {
              break;
            }

            if ((*(v4 + 32) & 1) == 0)
            {
              OutEdge = v4;
              goto LABEL_9;
            }
          }
        }
      }
    }

    else
    {
      v8 = TVertex::getInEdge(*(a1 + 16));
      if (v8)
      {
        v9 = v8;
LABEL_26:
        collectEdge(v9, 1, a3);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if ((*(v9 + 32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        OutEdge = TVertex::getOutEdge(*(a1 + 24));
        if (OutEdge)
        {
LABEL_14:
          std::vector<TWord const*>::push_back[abi:ne200100](a3, &OutEdge);
          v5 = OutEdge;
          while (1)
          {
            v5 = *(v5 + 8);
            if (!v5)
            {
              break;
            }

            if ((*(v5 + 32) & 1) == 0)
            {
              OutEdge = v5;
              goto LABEL_14;
            }
          }
        }

        break;
      case 3:
        v6 = TVertex::getOutEdge(*(a1 + 24));
        if (v6)
        {
          v7 = v6;
LABEL_20:
          collectEdge(v7, 2, a3);
          while (1)
          {
            v7 = *(v7 + 8);
            if (!v7)
            {
              break;
            }

            if ((*(v7 + 32) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        break;
      case 4:
        std::vector<TWord const*>::push_back[abi:ne200100](a3, &v11);
        break;
    }
  }
}

void TRule::TRule(TRule *this, const TFileObject *a2, TLexicon *a3, TAllocator *a4)
{
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  std::vector<TState *>::reserve(this, 0xAuLL);
  for (i = *(a2 + 3); i; i = *(i + 16))
  {
    if (wcscmp(*(i + 8), dword_26288FA80))
    {
      operator new();
    }

    if (*(this + 3))
    {
      loggableFileObject(i);
      v13 = __p;
      if (__p[23] < 0)
      {
        v13 = *__p;
      }

      tknPrintf("Error: %sRedefinition\n", v9, v10, v11, v12, v13);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v32) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v31[0], v31[1]);
      }

      else
      {
        *&__p[8] = *v31;
        v34 = v32;
      }

      *__p = &unk_287528000;
      if (v34 >= 0)
      {
        v16 = &__p[8];
      }

      else
      {
        v16 = *&__p[8];
      }

      conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 417, v14, v15);
      *__p = byte_287529580;
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
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
        v19 = *__p;
        exception[3] = *&__p[16];
        *&v18->__r_.__value_.__l.__data_ = v19;
      }

      *exception = &unk_287528000;
    }

    *(this + 3) = buildReplaceObject(i, a3, a4);
    *(this + 32) = 1;
  }

  if (*this == *(this + 1))
  {
    loggableFileObject(a2);
    if (__p[23] >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = *__p;
    }

    tknPrintf("Error: %sRule is missing a condition\n", v20, v21, v22, v23, v24);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v31, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v32) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v31[0], v31[1]);
    }

    else
    {
      *&__p[8] = *v31;
      v34 = v32;
    }

    *__p = &unk_287528000;
    if (v34 >= 0)
    {
      v27 = &__p[8];
    }

    else
    {
      v27 = *&__p[8];
    }

    conditionalAssert(v27, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 440, v25, v26);
    *__p = byte_287529580;
    if (SHIBYTE(v34) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }

    v28 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v28 = byte_287529580;
    v29 = (v28 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v29, *__p, *&__p[8]);
    }

    else
    {
      v30 = *__p;
      v28[3] = *&__p[16];
      *&v29->__r_.__value_.__l.__data_ = v30;
    }

    *v28 = &unk_287528000;
  }
}

void sub_262801908(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, void *a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30 == 1)
  {
    __cxa_begin_catch(a1);
    TRule::freeMemory(v29);
    __cxa_rethrow();
  }

  JUMPOUT(0x2628019F4);
}

void sub_2628019E0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

TFileObject *buildReplaceObject(const TFileObject *a1, TLexicon *a2, TAllocator *a3)
{
  v19 = &unk_26288FAF0;
  v20 = xmmword_26286B6D0;
  v21 = -1;
  if (TFileObject::verify(a1, &v19, 1, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v16) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v15[0], v15[1]);
    }

    else
    {
      *&__p[8] = *v15;
      v18 = v16;
    }

    *__p = &unk_287528000;
    if (v18 >= 0)
    {
      v11 = &__p[8];
    }

    else
    {
      v11 = *&__p[8];
    }

    conditionalAssert(v11, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 383, v9, v10);
    *__p = byte_287529580;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v13 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v13, *__p, *&__p[8]);
    }

    else
    {
      v14 = *__p;
      exception[3] = *&__p[16];
      *&v13->__r_.__value_.__l.__data_ = v14;
    }

    *exception = &unk_287528000;
  }

  v6 = *(a1 + 3);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v7 = compileAlt(v6, v7, a2, a3);
    v6 = *(v6 + 2);
  }

  while (v6);
  return v7;
}

void sub_262801C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

uint64_t *TRule::freeMemory(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        TCondition::~TCondition(this);
        this = MEMORY[0x26672B1B0]();
        v2 = *v3;
        v1 = v3[1];
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return this;
}

void TRule::~TRule(TRule *this)
{
  TRule::freeMemory(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}