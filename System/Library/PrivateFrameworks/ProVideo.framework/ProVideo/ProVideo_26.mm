const void **std::__for_each_segment[abi:ne200100]<std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>>>(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 3;
        if ((a4 - v7) >> 3 < v12)
        {
          v12 = (a4 - v7) >> 3;
        }

        v13 = 8 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 8 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = result;
  v17 = *result + 4096;
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 == __len)
  {
    goto LABEL_20;
  }

  v20 = *v18++;
  v19 = v20;
  while (1)
  {
    v21 = (v19 - v8 + 4096) >> 3;
    if ((v17 - v7) >> 3 < v21)
    {
      v21 = (v17 - v7) >> 3;
    }

    v22 = 8 * v21;
    if (v21)
    {
      result = memmove(v8, v7, 8 * v21);
    }

    v7 += v22;
    if (v7 == v17)
    {
      break;
    }

    v23 = *v18++;
    v19 = v23;
    v8 = v23;
  }

  v8 += v22;
  if (*(v18 - 1) + 4096 != v8)
  {
    --v18;
LABEL_20:
    *a5 = v18;
    *(a5 + 8) = v8;
    for (i = v16 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v25 = 0;
        v26 = *i;
        v28 = *v18++;
        v27 = v28;
        while (1)
        {
          v29 = (v27 - v8 + 4096) >> 3;
          if ((4096 - v25) >> 3 < v29)
          {
            v29 = (4096 - v25) >> 3;
          }

          v30 = 8 * v29;
          if (v29)
          {
            result = memmove(v8, &v26[v25], 8 * v29);
          }

          v25 += v30;
          if (v25 == 4096)
          {
            break;
          }

          v31 = *v18++;
          v27 = v31;
          v8 = v31;
        }

        v8 += v30;
        v32 = v18 - 1;
        if (*(v18 - 1) + 4096 != v8)
        {
          break;
        }

        v8 = *v18;
        *a5 = v18;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v18;
      *a5 = v32;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v18;
  *a5 = v18;
  *(a5 + 8) = v8;
  i = v16 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v33 = *i;
  if (*i != a4)
  {
    v35 = *v18++;
    v34 = v35;
    while (1)
    {
      v36 = (v34 - v8 + 4096) >> 3;
      if ((a4 - v33) >> 3 < v36)
      {
        v36 = (a4 - v33) >> 3;
      }

      v37 = 8 * v36;
      if (v36)
      {
        result = memmove(v8, v33, 8 * v36);
      }

      v33 += v37;
      if (v33 == a4)
      {
        break;
      }

      v38 = *v18++;
      v34 = v38;
      v8 = v38;
    }

    v8 += v37;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

uint64_t HGCV::HGFormatForCVPixelFormat(HGCV *this, const char *a2, char *a3)
{
  if (this > 1278226533)
  {
    if (this <= 1380401728)
    {
      if (this == 1278226534)
      {
        return 7;
      }

      if (this != 1278226536)
      {
        if (this == 1278226742)
        {
          return 3;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (this <= 1380411456)
      {
        if (this == 1380401729)
        {
          return 24;
        }

        if (this == 1380410945)
        {
          return 28;
        }

        goto LABEL_33;
      }

      if (this == 1380411457)
      {
        return 27;
      }

      if (this != 1751411059)
      {
        goto LABEL_33;
      }
    }

    return 5;
  }

  if (this <= 843264103)
  {
    switch(this)
    {
      case 0x20:
        return 22;
      case 0x32433038:
        return 10;
      case 0x32433066:
        return 13;
    }
  }

  else if (this > 1111970368)
  {
    if (this == 1111970369)
    {
      return 23;
    }

    if (this == 1278226488)
    {
      return 1;
    }
  }

  else
  {
    if (this == 843264104)
    {
      return 12;
    }

    if (this == 843264310)
    {
      return 11;
    }
  }

LABEL_33:
  HGLogger::warning("unsupported HGFormat for CoreVideo format %c%c%c%c\n", a2, a3, (this >> 24), ((this << 8) >> 24), (this >> 8), this, v3, v4);
  return 0;
}

uint64_t HGCV::CVPixelFormatForHGFormat(int a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0x21 && ((0x1DFE0FE57uLL >> v1))
  {
    return dword_26038F680[v1];
  }

  v3 = HGFormatUtils::toString(a1);
  HGLogger::warning("unsupported CoreVideo format for HGFormat %s\n", v4, v5, v3);
  return 1111970369;
}

uint64_t HGCV::AllowPixelSizeCastingForHGFormat(int a1)
{
  if (atomic_load_explicit(&HGCV::AllowPixelSizeCastingForHGFormat(HGFormat)::envCheck, memory_order_acquire) != -1)
  {
    v7 = &v5;
    v6 = &v7;
    std::__call_once(&HGCV::AllowPixelSizeCastingForHGFormat(HGFormat)::envCheck, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<HGCV::AllowPixelSizeCastingForHGFormat(HGFormat)::$_0 &&>>);
  }

  v3 = a1 != 27 && (a1 - 25) < 0xFFFFFFFE;
  return (v3 | HGCV::AllowPixelSizeCastingForHGFormat(HGFormat)::forcePixelSizeCastingAllowed) & 1;
}

const char *std::__call_once_proxy[abi:ne200100]<std::tuple<HGCV::AllowPixelSizeCastingForHGFormat(HGFormat)::$_0 &&>>()
{
  result = getenv("HG_ENV_FORCE_IOSURFACE_PIXEL_SIZE_CASTING");
  if (result)
  {
    result = atoi(result);
    HGCV::AllowPixelSizeCastingForHGFormat(HGFormat)::forcePixelSizeCastingAllowed = result != 0;
  }

  return result;
}

void HGDither::HGDither(HGDither *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28720E018;
  *(v1 + 408) = 0;
  *(v1 + 448) = 1;
}

void HGDither::~HGDither(HGDither *this)
{
  *this = &unk_28720E018;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  *(this + 51) = 0;

  HGNode::~HGNode(this);
}

void HGDither::~HGDither(HGNode *this)
{
  *this = &unk_28720E018;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  *(this + 51) = 0;
  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGDither::SetParameter(HGDither *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3 != 0.0;
  if (*(this + 448) == v7)
  {
    return 0;
  }

  *(this + 448) = v7;
  return 1;
}

void HGDither::GetOutput(HGDither *this, HGRenderer *a2)
{
  {
    HGDither::GetOutput();
  }

  operator new();
}

void sub_25FBEC274(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

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

_DWORD *HGDitherLUTInfo::isEqual(uint64_t a1, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    return (*(a1 + 8) == result[2]);
  }

  return result;
}

void *HGDitherLUTEntry::HGDitherLUTEntry(void *a1, const void *a2, uint64_t a3)
{
  v5 = HGLUTCache::LUTEntry::LUTEntry(a1, a2, a3);
  *v5 = &unk_28720E328;
  v5[3] = 0;
  v6 = v5 + 3;
  v5[4] = 0;
  if (a2)
  {
    if (v7)
    {
      NumRows = HGDitherNoise::getNumRows(v7);
      v9 = NumRows;
      v10 = HGDitherNoise::getNumRows(NumRows);
      v12 = HGRectMake4f(v11, 0.0, 0.0, v9, v10);
      v14 = v13;
      Format = HGDitherNoise::getFormat(v12);
      v16 = HGObject::operator new(0x80uLL);
      v17 = HGBitmap::HGBitmap(v16, v12, v14, 27);
      v18 = *v6;
      if (*v6 == v16)
      {
        if (v16)
        {
          (*(*v16 + 24))(v16, v17);
        }
      }

      else
      {
        if (v18)
        {
          (*(*v18 + 24))(v18, v17);
        }

        *v6 = v16;
      }

      Noise = HGDitherNoise::getNoise();
      v20 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v20, v12, v14, Format, Noise);
      if (Format == *(*v6 + 16))
      {
        HGRenderUtils::BufferCopier::BufferCopier(v22);
      }

      HGRenderUtils::BufferReformatter::BufferReformatter(v22);
    }
  }

  return a1;
}

void sub_25FBEC80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v14 = *(v10 + 4);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  if (*v12)
  {
    (*(**v12 + 24))(*v12);
  }

  HGLUTCache::LUTEntry::~LUTEntry(v10);
  _Unwind_Resume(a1);
}

void HGDitherLUTEntry::~HGDitherLUTEntry(HGDitherLUTEntry *this)
{
  *this = &unk_28720E328;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGLUTCache::LUTEntry::~LUTEntry(this);
}

{
  *this = &unk_28720E328;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGLUTCache::LUTEntry::~LUTEntry(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t HGDitherLUTEntry::GetBitmap(HGDitherLUTEntry *this)
{
  v2 = *(this + 2);
  {
    v6 = *(this + 3);
    v7 = this + 24;
    if (!v6)
    {
      return *v7;
    }

    goto LABEL_11;
  }

  v7 = this + 32;
  v6 = *(this + 4);
  if (v6)
  {
    goto LABEL_11;
  }

  MetalContext = HGGPURenderer::GetMetalContext(v5);
  HGMetalTexture::createWithCopy(*(*(MetalContext + 16) + 16), 0, *(this + 3), *(*(this + 3) + 20), *(*(this + 3) + 28), 0, 0, &v11);
  v9 = *(this + 4);
  v6 = v11;
  if (v9 == v11)
  {
    if (!v9)
    {
      return *v7;
    }

    (*(*v11 + 24))();
    v6 = *v7;
    if (!*v7)
    {
      return *v7;
    }

LABEL_11:
    (*(*v6 + 16))(v6);
    return *v7;
  }

  if (v9)
  {
    (*(*v9 + 24))(*(this + 4));
    v6 = v11;
  }

  *v7 = v6;
  if (v6)
  {
    goto LABEL_11;
  }

  return *v7;
}

void sub_25FBECC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void HGDither::GetOutput()
{
  {
    __cxa_atexit(HGDitherLUTEntryFactory::~HGDitherLUTEntryFactory, &HGDither::GetOutput(HGRenderer *)::lutFactory, &dword_25F8F0000);
  }
}

void HGCFDataRefHolder::HGCFDataRefHolder(HGCFDataRefHolder *this, const __CFData *a2)
{
  HGObject::HGObject(this);
  *v3 = &unk_28720E368;
  v3[2] = a2;
  CFRetain(a2);
}

void HGCFDataRefHolder::~HGCFDataRefHolder(CFTypeRef *this)
{
  *this = &unk_28720E368;
  CFRelease(this[2]);

  HGObject::~HGObject(this);
}

{
  *this = &unk_28720E368;
  CFRelease(this[2]);
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

double HGDigestInit(_OWORD *a1)
{
  result = -3.59869635e230;
  *a1 = xmmword_26034C050;
  return result;
}

_DWORD *HGDigestAdd(_DWORD *result, int *a2)
{
  v2 = result[1];
  v4 = result[2];
  v3 = result[3];
  v6 = *a2;
  v5 = a2[1];
  HIDWORD(v7) = *result + *a2 - 680876936 + (v4 & v2 | v3 & ~v2);
  LODWORD(v7) = HIDWORD(v7);
  v8 = (v7 >> 25) + v2;
  HIDWORD(v7) = v3 + v5 - 389564586 + (v2 & v8 | v4 & ~v8);
  LODWORD(v7) = HIDWORD(v7);
  v9 = (v7 >> 20) + v8;
  v10 = a2[2];
  v11 = a2[3];
  HIDWORD(v7) = v4 + v10 + 606105819 + (v8 & v9 | v2 & ~v9);
  LODWORD(v7) = HIDWORD(v7);
  v12 = (v7 >> 15) + v9;
  HIDWORD(v7) = v2 + v11 - 1044525330 + (v9 & v12 | v8 & ~v12);
  LODWORD(v7) = HIDWORD(v7);
  v13 = (v7 >> 10) + v12;
  v15 = a2[4];
  v14 = a2[5];
  HIDWORD(v7) = v15 + v8 - 176418897 + (v12 & v13 | v9 & ~v13);
  LODWORD(v7) = HIDWORD(v7);
  v16 = (v7 >> 25) + v13;
  HIDWORD(v7) = v14 + v9 + 1200080426 + (v13 & v16 | v12 & ~v16);
  LODWORD(v7) = HIDWORD(v7);
  v17 = (v7 >> 20) + v16;
  v18 = a2[6];
  v19 = a2[7];
  HIDWORD(v7) = v18 + v12 - 1473231341 + (v16 & v17 | v13 & ~v17);
  LODWORD(v7) = HIDWORD(v7);
  v20 = (v7 >> 15) + v17;
  HIDWORD(v7) = v19 + v13 - 45705983 + (v17 & v20 | v16 & ~v20);
  LODWORD(v7) = HIDWORD(v7);
  v21 = (v7 >> 10) + v20;
  v22 = a2[8];
  v23 = a2[9];
  HIDWORD(v7) = v22 + v16 + 1770035416 + (v20 & v21 | v17 & ~v21);
  LODWORD(v7) = HIDWORD(v7);
  v24 = (v7 >> 25) + v21;
  HIDWORD(v7) = v23 + v17 - 1958414417 + (v21 & v24 | v20 & ~v24);
  LODWORD(v7) = HIDWORD(v7);
  v25 = (v7 >> 20) + v24;
  v27 = a2[10];
  v26 = a2[11];
  HIDWORD(v7) = v27 + v20 - 42063 + (v24 & v25 | v21 & ~v25);
  LODWORD(v7) = HIDWORD(v7);
  v28 = (v7 >> 15) + v25;
  HIDWORD(v7) = v26 + v21 - 1990404162 + (v25 & v28 | v24 & ~v28);
  LODWORD(v7) = HIDWORD(v7);
  v29 = (v7 >> 10) + v28;
  v31 = a2[12];
  v30 = a2[13];
  HIDWORD(v7) = v31 + v24 + 1804603682 + (v28 & v29 | v25 & ~v29);
  LODWORD(v7) = HIDWORD(v7);
  v32 = (v7 >> 25) + v29;
  HIDWORD(v7) = v30 + v25 - 40341101 + (v29 & v32 | v28 & ~v32);
  LODWORD(v7) = HIDWORD(v7);
  v33 = (v7 >> 20) + v32;
  v35 = a2[14];
  v34 = a2[15];
  HIDWORD(v7) = v35 + v28 - 1502002290 + (v32 & v33 | v29 & ~v33);
  LODWORD(v7) = HIDWORD(v7);
  v36 = (v7 >> 15) + v33;
  HIDWORD(v7) = v34 + v29 + 1236535329 + (v33 & v36 | v32 & ~v36);
  LODWORD(v7) = HIDWORD(v7);
  v37 = (v7 >> 10) + v36;
  HIDWORD(v7) = v5 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
  LODWORD(v7) = HIDWORD(v7);
  v38 = (v7 >> 27) + v37;
  HIDWORD(v7) = v18 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
  LODWORD(v7) = HIDWORD(v7);
  v39 = (v7 >> 23) + v38;
  HIDWORD(v7) = v26 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
  LODWORD(v7) = HIDWORD(v7);
  v40 = (v7 >> 18) + v39;
  HIDWORD(v7) = v6 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
  LODWORD(v7) = HIDWORD(v7);
  v41 = (v7 >> 12) + v40;
  HIDWORD(v7) = v14 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
  LODWORD(v7) = HIDWORD(v7);
  v42 = (v7 >> 27) + v41;
  HIDWORD(v7) = v27 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
  LODWORD(v7) = HIDWORD(v7);
  v43 = (v7 >> 23) + v42;
  HIDWORD(v7) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
  LODWORD(v7) = HIDWORD(v7);
  v44 = (v7 >> 18) + v43;
  HIDWORD(v7) = v15 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
  LODWORD(v7) = HIDWORD(v7);
  v45 = (v7 >> 12) + v44;
  HIDWORD(v7) = v23 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
  LODWORD(v7) = HIDWORD(v7);
  v46 = (v7 >> 27) + v45;
  HIDWORD(v7) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
  LODWORD(v7) = HIDWORD(v7);
  v47 = (v7 >> 23) + v46;
  HIDWORD(v7) = v11 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
  LODWORD(v7) = HIDWORD(v7);
  v48 = (v7 >> 18) + v47;
  HIDWORD(v7) = v22 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
  LODWORD(v7) = HIDWORD(v7);
  v49 = (v7 >> 12) + v48;
  HIDWORD(v7) = v30 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
  LODWORD(v7) = HIDWORD(v7);
  v50 = (v7 >> 27) + v49;
  HIDWORD(v7) = v10 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
  LODWORD(v7) = HIDWORD(v7);
  v51 = (v7 >> 23) + v50;
  HIDWORD(v7) = v19 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
  LODWORD(v7) = HIDWORD(v7);
  v52 = (v7 >> 18) + v51;
  HIDWORD(v7) = v31 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
  LODWORD(v7) = HIDWORD(v7);
  v53 = (v7 >> 12) + v52;
  HIDWORD(v7) = v14 + v50 - 378558 + (v52 ^ v51 ^ v53);
  LODWORD(v7) = HIDWORD(v7);
  v54 = (v7 >> 28) + v53;
  HIDWORD(v7) = v22 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
  LODWORD(v7) = HIDWORD(v7);
  v55 = (v7 >> 21) + v54;
  HIDWORD(v7) = v26 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
  LODWORD(v7) = HIDWORD(v7);
  v56 = (v7 >> 16) + v55;
  HIDWORD(v7) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
  LODWORD(v7) = HIDWORD(v7);
  v57 = (v7 >> 9) + v56;
  HIDWORD(v7) = v5 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
  LODWORD(v7) = HIDWORD(v7);
  v58 = (v7 >> 28) + v57;
  HIDWORD(v7) = v15 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
  LODWORD(v7) = HIDWORD(v7);
  v59 = (v7 >> 21) + v58;
  HIDWORD(v7) = v19 + v56 - 155497632 + (v58 ^ v57 ^ v59);
  LODWORD(v7) = HIDWORD(v7);
  v60 = (v7 >> 16) + v59;
  HIDWORD(v7) = v27 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
  LODWORD(v7) = HIDWORD(v7);
  v61 = (v7 >> 9) + v60;
  HIDWORD(v7) = v30 + v58 + 681279174 + (v60 ^ v59 ^ v61);
  LODWORD(v7) = HIDWORD(v7);
  v62 = (v7 >> 28) + v61;
  HIDWORD(v7) = v6 + v59 - 358537222 + (v61 ^ v60 ^ v62);
  LODWORD(v7) = HIDWORD(v7);
  v63 = (v7 >> 21) + v62;
  HIDWORD(v7) = v11 + v60 - 722521979 + (v62 ^ v61 ^ v63);
  LODWORD(v7) = HIDWORD(v7);
  v64 = (v7 >> 16) + v63;
  HIDWORD(v7) = v18 + v61 + 76029189 + (v63 ^ v62 ^ v64);
  LODWORD(v7) = HIDWORD(v7);
  v65 = (v7 >> 9) + v64;
  HIDWORD(v7) = v23 + v62 - 640364487 + (v64 ^ v63 ^ v65);
  LODWORD(v7) = HIDWORD(v7);
  v66 = (v7 >> 28) + v65;
  HIDWORD(v7) = v31 + v63 - 421815835 + (v65 ^ v64 ^ v66);
  LODWORD(v7) = HIDWORD(v7);
  v67 = (v7 >> 21) + v66;
  HIDWORD(v7) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
  LODWORD(v7) = HIDWORD(v7);
  v68 = (v7 >> 16) + v67;
  HIDWORD(v7) = v10 + v65 - 995338651 + (v67 ^ v66 ^ v68);
  LODWORD(v7) = HIDWORD(v7);
  v69 = (v7 >> 9) + v68;
  HIDWORD(v7) = v6 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
  LODWORD(v7) = HIDWORD(v7);
  v70 = (v7 >> 26) + v69;
  HIDWORD(v7) = v19 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
  LODWORD(v7) = HIDWORD(v7);
  v71 = (v7 >> 22) + v70;
  HIDWORD(v7) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
  LODWORD(v7) = HIDWORD(v7);
  v72 = (v7 >> 17) + v71;
  HIDWORD(v7) = v14 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
  LODWORD(v7) = HIDWORD(v7);
  v73 = (v7 >> 11) + v72;
  HIDWORD(v7) = v31 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
  LODWORD(v7) = HIDWORD(v7);
  v74 = (v7 >> 26) + v73;
  HIDWORD(v7) = v11 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
  LODWORD(v7) = HIDWORD(v7);
  v75 = (v7 >> 22) + v74;
  HIDWORD(v7) = v27 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
  LODWORD(v7) = HIDWORD(v7);
  v76 = (v7 >> 17) + v75;
  HIDWORD(v7) = v5 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
  LODWORD(v7) = HIDWORD(v7);
  v77 = (v7 >> 11) + v76;
  HIDWORD(v7) = v22 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
  LODWORD(v7) = HIDWORD(v7);
  v78 = (v7 >> 26) + v77;
  HIDWORD(v7) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
  LODWORD(v7) = HIDWORD(v7);
  v79 = (v7 >> 22) + v78;
  HIDWORD(v7) = v18 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
  LODWORD(v7) = HIDWORD(v7);
  v80 = (v7 >> 17) + v79;
  HIDWORD(v7) = v30 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
  LODWORD(v7) = HIDWORD(v7);
  v81 = (v7 >> 11) + v80;
  HIDWORD(v7) = v15 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
  LODWORD(v7) = HIDWORD(v7);
  v82 = (v7 >> 26) + v81;
  HIDWORD(v7) = v26 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
  LODWORD(v7) = HIDWORD(v7);
  v83 = (v7 >> 22) + v82;
  HIDWORD(v7) = v10 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
  LODWORD(v7) = HIDWORD(v7);
  v84 = (v7 >> 17) + v83;
  HIDWORD(v7) = v23 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
  LODWORD(v7) = HIDWORD(v7);
  *result += v82;
  result[1] = v84 + v2 + (v7 >> 11);
  result[2] = v84 + v4;
  result[3] = v83 + v3;
  return result;
}

const char *HGGLGetErrorString(int a1)
{
  if ((a1 - 1280) > 6)
  {
    return "unknown error";
  }

  else
  {
    return off_279AA8578[a1 - 1280];
  }
}

const char *HGGLGetFramebufferStatusString(int a1)
{
  if ((a1 - 36054) > 7)
  {
    return "unknown status";
  }

  else
  {
    return off_279AA85B0[a1 - 36054];
  }
}

void HGGLContext::~HGGLContext(HGGLContext *this)
{
  *this = &unk_28720E3B8;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    *(v3 + 2) = 0;
    v1 = vars8;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28720E3B8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 2) = 0;
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

void HGGLContext::Create()
{
  v0 = HGObject::operator new(0x18uLL);
  HGObject::HGObject(v0);
  *v0 = &unk_28720E3B8;
  operator new();
}

void sub_25FBEDBDC(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x81C40803F642BLL);
  HGObject::~HGObject(v1);
  HGObject::operator delete(v4);
  _Unwind_Resume(a1);
}

void HGGLContext::Share()
{
  v0 = HGObject::operator new(0x18uLL);
  HGObject::HGObject(v0);
  *v0 = &unk_28720E3B8;
  operator new();
}

void sub_25FBEDCE4(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x81C40803F642BLL);
  HGObject::~HGObject(v1);
  HGObject::operator delete(v4);
  _Unwind_Resume(a1);
}

HGGLContextPtr *HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(HGGLContextPtr *a1, PC_Sp_counted_base **a2)
{
  HGGLContextEAGL::getCurrent(a1);
  *(a1 + 8) = 0;
  if (*a1 != *a2)
  {
    v5 = *a2;
    HGGLContextEAGL::setCurrent(&v5);
    *(a1 + 8) = 1;
  }

  return a1;
}

void HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(HGGLSetCurrentContextGuard *this)
{
  if (*(this + 8) == 1)
  {
    v1 = this;
    v2 = *this;
    HGGLContextEAGL::setCurrent(&v2);
    this = v1;
  }

  *this = 0;
}

void HGGLContextEAGL::~HGGLContextEAGL(id *this)
{
  *this = &unk_28720E408;
}

{
  *this = &unk_28720E408;

  JUMPOUT(0x2666E9F00);
}

uint64_t HGGLContextEAGL::create(HGGLContextEAGL *this)
{
  result = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
  *(this + 1) = result;
  return result;
}

uint64_t HGGLContextEAGL::create(uint64_t a1, PC_Sp_counted_base **a2)
{
  v7.var0 = *a2;
  CGColorSpace = PCColorSpaceHandle::getCGColorSpace(&v7);
  PCSharedCount::PCSharedCount(&v7);
  v4 = [CGColorSpace API];
  v5 = [CGColorSpace sharegroup];
  result = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:v4 sharegroup:v5];
  *(a1 + 8) = result;
  return result;
}

uint64_t HGGLContextEAGL::share(void *a1, PC_Sp_counted_base **a2)
{
  v4.var0 = *a2;
  a1[1] = PCColorSpaceHandle::getCGColorSpace(&v4);
  PCSharedCount::PCSharedCount(&v4);
  return (*(*a1 + 112))(a1);
}

void HGGLContextEAGL::setCurrent(PC_Sp_counted_base **a1)
{
  v1.var0 = *a1;
  [MEMORY[0x277CD9388] setCurrentContext:PCColorSpaceHandle::getCGColorSpace(&v1)];
  PCSharedCount::PCSharedCount(&v1);
}

void HGGLContextEAGL::getCurrent(HGGLContextPtr *a1@<X8>)
{
  v3 = [MEMORY[0x277CD9388] currentContext];

  HGGLContextPtr::HGGLContextPtr(a1, v3);
}

BOOL HGGLContextEAGL::setPriority(uint64_t a1, int a2)
{
  v4 = 1;
  if (a2 == 2)
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (!a2)
  {
    v2 = 2;
LABEL_5:
    v4 = v2;
  }

  return [*(a1 + 8) setParameter:608 to:&v4] == 0;
}

uint64_t HGDemosaicImplementation::GenerateGraph(HGDemosaicImplementation *this, HGRenderer *a2, HGNode *a3)
{
  if (((*(*a2 + 304))(a2) & 1) != 0 || !(*(*a2 + 128))(a2, 43) || (*(*a2 + 128))(a2, 43) == 1)
  {
    v4 = HGObject::operator new(0x1A0uLL);
    HgcDemosaic_1::HgcDemosaic_1(v4);
  }

  return 0;
}

void sub_25FBEE588(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t HDemosaic_1::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HDemosaic_2::GetROI(HDemosaic_2 *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HDemosaic_2::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGDemosaic::HGDemosaic(HGDemosaic *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28720E4D8;
  v3 = HGObject::operator new(0x40uLL);
  HGObject::HGObject(v3);
  *v3 = &unk_28720EC10;
  *(v3 + 12) = 0u;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 15) = 0;
  *(this + 51) = v3;
}

void sub_25FBEE744(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGDemosaic::~HGDemosaic(HGDemosaic *this)
{
  *this = &unk_28720E4D8;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGDemosaic::~HGDemosaic(HGNode *this)
{
  *this = &unk_28720E4D8;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGDemosaic::SetParameter(HGDemosaic *this, int a2, double a3, float a4, float a5, float a6)
{
  v6 = *(this + 51);
  result = 0xFFFFFFFFLL;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (*(v6 + 20) != *&a3)
        {
          *(v6 + 20) = LODWORD(a3);
          return 1;
        }
      }

      else if (COERCE_FLOAT(*(v6 + 24)) != *&a3 || COERCE_FLOAT(HIDWORD(*(v6 + 24))) != a4)
      {
        *(&a3 + 1) = a4;
        *(v6 + 24) = a3;
        return 1;
      }
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      if (*(v6 + 16) != *&a3)
      {
        *(v6 + 16) = LODWORD(a3);
        return 1;
      }
    }

    else if (*(v6 + 12) != *&a3)
    {
      *(v6 + 12) = LODWORD(a3);
      return 1;
    }

    return 0;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if (*(v6 + 32) != *&a3)
      {
        *(v6 + 32) = LODWORD(a3);
        return 1;
      }
    }

    else if (*(v6 + 36) != *&a3)
    {
      *(v6 + 36) = LODWORD(a3);
      return 1;
    }

    return 0;
  }

  if (a2 == 6)
  {
    if (*(v6 + 40) != *&a3)
    {
      *(v6 + 40) = LODWORD(a3);
      return 1;
    }

    return 0;
  }

  if (a2 == 7)
  {
    if (*(v6 + 44) != *&a3)
    {
      *(v6 + 44) = LODWORD(a3);
      return 1;
    }

    return 0;
  }

  if (a2 != 8)
  {
    return result;
  }

  if (COERCE_FLOAT(*(v6 + 48)) == *&a3 && COERCE_FLOAT(HIDWORD(*(v6 + 48))) == a4)
  {
    return 0;
  }

  *(&a3 + 1) = a4;
  *(v6 + 48) = a3;
  return 1;
}

HGNode *HGDemosaic::GetOutput(HGNode *this, HGRenderer *a2)
{
  result = HGRenderer::GetInput(a2, this, 0);
  if (result)
  {
    v5 = result;
    v6 = *(this + 51);

    return HGDemosaicImplementation::GenerateGraph(v6, a2, v5);
  }

  return result;
}

void HDemosaic_1::~HDemosaic_1(HDemosaic_1 *this)
{
  HgcDemosaic_1::~HgcDemosaic_1(this);

  HGObject::operator delete(v1);
}

void HDemosaic_2::~HDemosaic_2(HDemosaic_2 *this)
{
  HgcDemosaic_2::~HgcDemosaic_2(this);

  HGObject::operator delete(v1);
}

void HGDemosaicImplementation::~HGDemosaicImplementation(HGDemosaicImplementation *this)
{
  *this = &unk_28720EC10;
  v1 = *(this + 7);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 7));
    this = v2;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28720EC10;
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

void HGComicGaussianBlurAndGradientGeneration::HGComicGaussianBlurAndGradientGeneration(HGComicGaussianBlurAndGradientGeneration *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28720EC60;
  *(v1 + 408) = xmmword_260345850;
  *(v1 + 16) |= 0x600u;
}

void HGComicGaussianBlurAndGradientGeneration::~HGComicGaussianBlurAndGradientGeneration(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicGaussianBlurAndGradientGeneration::SetParameter(HGComicGaussianBlurAndGradientGeneration *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 == 2)
  {
    if (a3 == 1.0)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (*(this + 105) != v8)
    {
      if (a3 == 1.0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *(this + 105) = v9;
      return 1;
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(this + 102) != a3)
      {
        *(this + 102) = a3;
        return 1;
      }

      return 0;
    }

    if (*(this + 103) != a3)
    {
      *(this + 103) = a3;
      v7 = *(this + 104);
      goto LABEL_19;
    }

    v7 = *(this + 104);
    if (v7 != a4)
    {
LABEL_19:
      if (v7 != a4)
      {
        *(this + 104) = a4;
        return 1;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t HGComicGaussianBlurAndGradientGeneration::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HGComicGaussianBlurAndGradientGeneration::GetROI(HGComicGaussianBlurAndGradientGeneration *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v16 = HGRectNull;
    return HGRectNull;
  }

  v5 = vcvtps_s32_f32(*(this + 102) + *(this + 102));
  if (*(this + 103) == 1.0)
  {
    v6 = -v5;
    v7 = 0;
    v8 = *&a4.var0;
    v9 = v5;
    v10 = *&a4.var2;
    v11 = 0;
LABEL_7:
    HGRect::Init(&v15, v6, v7, v9, v11);
    *&a4.var0 = v8;
    *&a4.var2 = v10;
    goto LABEL_8;
  }

  if (*(this + 104) == 1.0)
  {
    v7 = -v5;
    v6 = 0;
    v8 = *&a4.var0;
    v9 = 0;
    v10 = *&a4.var2;
    v11 = v5;
    goto LABEL_7;
  }

LABEL_8:
  v16 = a4;
  HGRect::Grow(&v16, v15);
  v12 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v14 = v13;
  *&v17.var0 = v12;
  *&v17.var2 = v14;
  HGRect::Grow(&v16, v17);
  return *&v16.var0;
}

uint64_t HGComicGaussianBlurAndGradientGeneration::RenderTile(HGComicGaussianBlurAndGradientGeneration *this, HGTile *a2)
{
  v4 = *(this + 104);
  if (*(this + 103) == 1.0)
  {
    if (v4 == 1.0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 != 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = HGTile::Renderer(a2);
  v7 = (*(*this + 312))(this, v6);
  v8 = *a2;
  v75 = *(a2 + 3) - HIDWORD(*a2);
  if (v75 >= 1)
  {
    v9 = (*(a2 + 2) - v8.i32[0]);
    if (v9 >= 1)
    {
      v10 = v7;
      v11 = 0;
      *v12.f32 = vadd_f32(vcvt_f32_s32(v8), 0x3F0000003F000000);
      v12.i64[1] = 0x3F80000000000000;
      v13 = *(this + 102);
      v14 = v13 + v13;
      v15 = 1.0 / (v13 * (v13 + v13));
      v16 = *(a2 + 2);
      __asm { FMOV            V0.4S, #1.0 }

      v77 = _Q0;
      v22 = v12;
      v79 = v12;
      do
      {
        v23 = 0;
        v76 = v22;
        v24 = v22;
        do
        {
          v35 = *(a2 + 10);
          v36 = *(a2 + 22);
          v37 = vsubq_f32(v24, v12);
          v80 = v24;
          if (v10)
          {
            v38 = vaddq_s32(vcvtq_s32_f32(v37), vcltzq_f32(v37));
            v39 = vsubq_f32(v37, vcvtq_f32_s32(v38)).u64[0];
            v40 = (v35 + 16 * (v38.i32[0] + v38.i32[1] * v36));
            v41 = vaddq_f32(*v40, vmulq_n_f32(vsubq_f32(v40[1], *v40), v39.f32[0]));
            v42 = vaddq_f32(v41, vmulq_lane_f32(vsubq_f32(vaddq_f32(v40[v36], vmulq_n_f32(vsubq_f32(v40[v36 + 1], v40[v36]), v39.f32[0])), v41), v39, 1));
            v43 = *(this + 104);
            v44.i64[0] = 0x3F0000003F000000;
            v44.i64[1] = 0x3F0000003F000000;
            v78 = v42.f32[3];
            if (v14 < 1.0)
            {
              goto LABEL_21;
            }

            v45 = *(this + 103);
            v46 = vdup_n_s32(v36);
            v47 = 1.0;
            v48 = v36;
            v49 = v42;
            do
            {
              v83 = v49;
              v85 = v44;
              *&v50 = v47 * v45;
              *(&v50 + 1) = v47 * v43;
              v81 = v50;
              *v51.i32 = expf(v15 * -(v47 * v47));
              v24 = v80;
              v44 = vaddq_f32(v85, vdupq_lane_s32(v51, 0));
              v52 = vsubq_f32(vaddq_f32(v80, v81), v79);
              v53 = vaddq_s32(vcvtq_s32_f32(v52), vcltzq_f32(v52));
              v54 = vcvtq_f32_s32(v53);
              v55 = vsubq_f32(vsubq_f32(v80, v81), v79);
              v56 = vaddq_s32(vcvtq_s32_f32(v55), vcltzq_f32(v55));
              *v53.i8 = vmla_s32(vzip1_s32(*v53.i8, *v56.i8), vzip2_s32(*v53.i8, *v56.i8), v46);
              v57 = v53.i32[1];
              v52.i64[0] = vsubq_f32(v52, v54).u64[0];
              v58 = (v35 + 16 * v53.i32[0]);
              v55.i64[0] = vsubq_f32(v55, vcvtq_f32_s32(v56)).u64[0];
              v59 = vaddq_f32(*v58, vmulq_n_f32(vsubq_f32(v58[1], *v58), v52.f32[0]));
              v60 = (v35 + 16 * v57);
              v61 = vaddq_f32(*v60, vmulq_n_f32(vsubq_f32(v60[1], *v60), v55.f32[0]));
              v47 = v47 + 1.0;
              v49 = vaddq_f32(v83, vmulq_n_f32(vaddq_f32(vaddq_f32(v59, vmulq_lane_f32(vsubq_f32(vaddq_f32(v58[v48], vmulq_n_f32(vsubq_f32(v58[v48 + 1], v58[v48]), v52.f32[0])), v59), *v52.f32, 1)), vaddq_f32(v61, vmulq_lane_f32(vsubq_f32(vaddq_f32(v60[v48], vmulq_n_f32(vsubq_f32(v60[v48 + 1], v60[v48]), v55.f32[0])), v61), *v55.f32, 1))), *v51.i32));
            }

            while (v47 <= v14);
          }

          else
          {
            v44.i64[0] = 0x3F0000003F000000;
            v44.i64[1] = 0x3F0000003F000000;
            v62 = vaddq_f32(v37, v44);
            v63 = vcvtq_s32_f32(v62);
            v62.i64[0] = vaddq_s32(v63, vcgtq_f32(vcvtq_f32_s32(v63), v62)).u64[0];
            v42 = *(v35 + 16 * (v62.i32[0] + v62.i32[1] * v36));
            v43 = *(this + 104);
            v78 = v42.f32[3];
            if (v14 < 1.0)
            {
LABEL_21:
              v49 = v42;
              goto LABEL_24;
            }

            v64 = *(this + 103);
            v65 = vdup_n_s32(v36);
            v66 = 1.0;
            v49 = v42;
            do
            {
              v84 = v49;
              v86 = v44;
              *&v67 = v66 * v64;
              *(&v67 + 1) = v66 * v43;
              v82 = v67;
              *v68.i32 = expf(v15 * -(v66 * v66));
              v24 = v80;
              v69.i64[0] = 0x3F0000003F000000;
              v69.i64[1] = 0x3F0000003F000000;
              v70 = vaddq_f32(vsubq_f32(vaddq_f32(v80, v82), v79), v69);
              v71 = vcvtq_s32_f32(v70);
              v72 = vaddq_f32(vsubq_f32(vsubq_f32(v80, v82), v79), v69);
              v73 = vcvtq_s32_f32(v72);
              *v72.f32 = vadd_s32(*v73.i8, *&vcgtq_f32(vcvtq_f32_s32(v73), v72));
              *v70.f32 = vadd_s32(*v71.i8, *&vcgtq_f32(vcvtq_f32_s32(v71), v70));
              *v70.f32 = vmla_s32(vzip1_s32(*v70.f32, *v72.f32), vzip2_s32(*v70.f32, *v72.f32), v65);
              v44 = vaddq_f32(v86, vdupq_lane_s32(v68, 0));
              v66 = v66 + 1.0;
              v49 = vaddq_f32(v84, vmulq_n_f32(vaddq_f32(*(v35 + 16 * v70.i32[0]), *(v35 + 16 * v70.i32[1])), *v68.i32));
            }

            while (v66 <= v14);
          }

LABEL_24:
          v74.i64[0] = 0x3F0000003F000000;
          v74.i64[1] = 0x3F0000003F000000;
          v28 = vdivq_f32(vmulq_f32(v49, v74), v44);
          if (v43 == 1.0)
          {
            v87 = v28.f32[3];
            v25 = atan2f(((v28.f32[2] + v28.f32[2]) + -1.0) * -2.0, v28.f32[1] - v28.f32[0]);
            v26 = __sincosf_stret((v25 * 0.5) + 3.1416);
            v24 = v80;
            if (*(this + 105) == 1.0)
            {
              v27 = v78;
            }

            else
            {
              v27 = v87;
            }

            v28.i32[0] = 0;
            v28.f32[1] = (v26.__cosval + 1.0) * 0.5;
            v28.i64[1] = __PAIR64__(LODWORD(v27), (v26.__sinval + 1.0) * 0.5);
          }

          else if (*(this + 105) == 1.0)
          {
            v28.f32[3] = v78;
          }

          v29 = vmaxnmq_f32(vminnmq_f32(v28, v77), 0);
          v30 = vdupq_lane_s32(*v29.i8, 1);
          v28.i64[0] = 0;
          v31 = v29;
          v31.i32[1] = 0;
          v32 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v28, v30), vcgeq_f32(v30, v28))), 0), v31, v29);
          v33 = vdupq_laneq_s32(v32, 2);
          v34 = v32;
          v34.i32[2] = 0;
          *(v16 + 16 * v23) = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v28, v33), vcgeq_f32(v33, v28))), 0), v34, v32);
          v24 = vaddq_f32(v24, xmmword_2603429B0);
          ++v23;
          v12 = v79;
        }

        while (v23 != v9);
        v22 = vaddq_f32(v76, xmmword_2603429C0);
        v16 += 16 * *(a2 + 6);
        ++v11;
      }

      while (v11 != v75);
    }
  }

  return 0;
}

HGComicGaussianBlurAndGradientGeneration *HGComicGaussianBlurAndGradientGeneration::GetOutput(HGComicGaussianBlurAndGradientGeneration *this, HGRenderer *a2, char *a3)
{
  HGNode::SetParameter(this, 0, *(this + 102), 0.0, 0.0, 0.0, a3);
  HGNode::SetParameter(this, 1, *(this + 103), *(this + 104), 0.0, 0.0, v4);
  HGNode::SetParameter(this, 2, *(this + 105), 0.0, 0.0, 0.0, v5);
  return this;
}

const char *HGComicGaussianBlurAndGradientGeneration::GetProgram(HGComicGaussianBlurAndGradientGeneration *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) < 0x60B10)
  {
    if ((*(*a2 + 128))(a2, 46))
    {
      if (*(this + 103) == 1.0)
      {
        return "//GLfs1.0      \n//LEN=0000000632\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#define precision\n#endif\n\nprecision highp float;\nprecision highp int;\n\n\nuniform lowp sampler2DRect inputTexture;\nuniform mediump vec4 hg_ProgramLocal0; // .x == sigma\nuniform mediump vec4 hg_ProgramLocal1; // .x == axis\nuniform mediump vec4 hg_ProgramLocal2; // .x == alphaPassthrough\n\nvoid main()\n{\n    mediump float sigma = hg_ProgramLocal0.x;\n    mediump float alphaPassthrough = hg_ProgramLocal2.x;\n    mediump float sigma22 = 1.0 / (2.0 * sigma * sigma);\n    mediump float sigmax2 = 2.0 * sigma;\n\n    highp vec4 texel = texture2DRect(inputTexture, gl_TexCoord[0].xy);\n    highp vec4 acc = texel;\n    float norm = 0.5;\n\n    for (float i = 1.0; i <=  sigmax2; i++)\n    {\n        float coeff = exp(-i*i * sigma22);\n        \n        float uPos = gl_TexCoord[0].x + i;\n        float uNeg = gl_TexCoord[0].x - i;\n        float v = gl_TexCoord[0].y;\n     \n        norm += coeff;\n        acc += coeff * \n            (texture2DRect(inputTexture, vec2(uPos, v)) +\n               texture2DRect(inputTexture, vec2(uNeg, v)));\n    }\n    \n    highp vec4 result = acc * 0.5 / norm;\n    result.a = (texel.a * alphaPassthrough + result.a * (1.0 - alphaPassthrough));\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(result, 0.0, 1.0);\n}\n//MD5=603686a0:96250beb:b6f38426:b3689fdb\n//SIG=00000000:00000000:00000000:00000000:0012:0003:0000:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
      }

      else
      {
        return "//GLfs1.0      \n//LEN=0000000743\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#define precision\n#endif\n#define defaultp highp\n\nprecision highp float;\nprecision highp int;\n\n#define M_PI        3.14159265358979323846264338327950288\n\nuniform sampler2DRect inputTexture;\nuniform mediump vec4 hg_ProgramLocal0; // .x == sigma\nuniform mediump vec4 hg_ProgramLocal1; // .x == axis\nuniform mediump vec4 hg_ProgramLocal2; // .x == alphaPassthrough\n\nvoid main()\n{\n    mediump float sigma = hg_ProgramLocal0.x;\n    mediump float alphaPassthrough = hg_ProgramLocal2.x;\n    mediump float sigma22 = 1.0 / (2.0 * sigma * sigma);\n    mediump float sigmax2 = 2.0 * sigma;\n\n    vec4 texel = texture2DRect(inputTexture, gl_TexCoord[0].xy);\n    vec4 acc = texel;\n    float norm = 0.5;\n\n    for (float i = 1.0; i <= sigmax2; i++)\n    {\n        float coeff = exp(-i*i * sigma22);\n        \n        float u = gl_TexCoord[0].x;\n        float vPos = gl_TexCoord[0].y + i;\n        float vNeg = gl_TexCoord[0].y - i;\n     \n        norm += coeff;\n        acc += coeff * \n            (texture2DRect(inputTexture, vec2(u, vPos)) +\n               texture2DRect(inputTexture, vec2(u, vNeg)));\n    }\n    acc = acc * 0.5 / norm;\n    \n    // Generate gradients \n    float alfa = M_PI + 0.5 * atan(-2.0 * (acc.z * 2.0 - 1.0),  acc.y - acc.x);\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(vec4(0.0,\n                              (cos(alfa) + 1.0) * 0.5,\n                              (sin(alfa) + 1.0) * 0.5,\n                              (alphaPassthrough == 1.0) ? texel.a : acc.a), 0.0, 1.0);\n}\n//MD5=92f7df43:09b533ad:ad6d6e66:e2b97b70\n//SIG=00000000:00000000:00000000:00000000:0026:0003:0000:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
      }
    }

    else
    {
      return 0;
    }
  }

  else if (*(this + 103) == 1.0)
  {
    return "//Metal1.0     \n//LEN=00000005fd\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    const half sigma {static_cast<half>(hg_Params[0].x)};\n    const BOOL alphaPassthrough {static_cast<BOOL>(hg_Params[2].x)};\n    const half sigma22 {1.0h / (2.0h * sigma * sigma)};\n    const half sigmax2 {2.0h * sigma};\n\n    half4 texel = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    half4 acc = texel;\n    half norm {0.5h};\n\n    for (half i {1.0h}; i <= sigmax2; i++)\n    {\n        const half coeff {exp(-i * i * sigma22)};\n        \n        const float uPos {frag._texCoord0.x + i};\n        const float uNeg {frag._texCoord0.x - i};\n        const float v {frag._texCoord0.y};\n     \n        norm += coeff;\n        acc += coeff * \n            (hg_Texture0.sample(hg_Sampler0, float2(uPos, v)) +\n             hg_Texture0.sample(hg_Sampler0, float2(uNeg, v)));\n    }\n \n    half4 result = acc * 0.5h / norm;\n    result.a = (alphaPassthrough ? texel.a : result.a);\n\n    FragmentOut out {static_cast<float4>(result)};\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n\n    return out;\n}\n//MD5=85a34481:c1c78204:e169c439:c39a6324\n//SIG=00000000:00000000:00000000:00000001:0008:0003:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
  }

  else
  {
    return "//Metal1.0     \n//LEN=00000006fe\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    const half sigma {static_cast<half>(hg_Params[0].x)};\n    const BOOL alphaPassthrough {static_cast<BOOL>(hg_Params[2].x)};\n    const half sigma22 {1.0h / (2.0h * sigma * sigma)};\n    const half sigmax2 {2.0h * sigma};\n\n    const half4 texel = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n\n    half4 acc = texel;\n    half norm {0.5h};\n\n    for (half i {1.0h}; i <= sigmax2; i++)\n    {\n        const half coeff {exp(-i * i * sigma22)};\n        \n        const float u {frag._texCoord0.x};\n        const float vPos {frag._texCoord0.y + i};\n        const float vNeg {frag._texCoord0.y - i};\n\n        norm += coeff;\n        acc += coeff * \n            (hg_Texture0.sample(hg_Sampler0, float2(u, vPos)) +\n             hg_Texture0.sample(hg_Sampler0, float2(u, vNeg)));\n    }\n    acc = acc * 0.5h / norm;\n\n    // Generate gradients \n    const half alfa {M_PI_H + 0.5h * atan2(-2.0h * (acc.z * 2.0h - 1.0h),  acc.y - acc.x)};\n    \n    FragmentOut out {float4(0.0h,\n                     (cos(alfa) + 1.0h) * 0.5h,\n                     (sin(alfa) + 1.0h) * 0.5h,\n                     alphaPassthrough ? texel.a : acc.a)};\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n\n    return out;\n}\n//MD5=d4a9c30f:71e94a09:7c9108eb:21ca2c59\n//SIG=00000000:00000000:00000000:00000001:0011:0003:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
  }
}

uint64_t HGComicGaussianBlurAndGradientGeneration::BindTexture(HGComicGaussianBlurAndGradientGeneration *this, HGHandler *a2, uint64_t a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

uint64_t *HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(uint64_t *a1, uint64_t a2, PCColorSpaceHandle *a3)
{
  *a1 = a2;
  HGGLContextPtr::HGGLContextPtr((a1 + 1), 0);
  *(a1 + 16) = 0;
  v5 = *a1;
  if (*a1)
  {
    if (*(v5 + 40) == 1)
    {
      var0 = *(v5 + 32);
      v13.var0 = var0;
    }

    else
    {
      HGGLGetCurrentContext();
      var0 = v13.var0;
    }

    a1[1] = var0;
    PCSharedCount::PCSharedCount(&v13);
  }

  if (!PCColorSpaceHandle::getCGColorSpace((a1 + 1)))
  {
    HGGLGetCurrentContext();
    a1[1] = v13.var0;
    PCSharedCount::PCSharedCount(&v13);
  }

  CGColorSpace = PCColorSpaceHandle::getCGColorSpace((a1 + 1));
  if (CGColorSpace != PCColorSpaceHandle::getCGColorSpace(a3))
  {
    v8 = *a1;
    if (*a1)
    {
      v12 = *a3;
      v9 = &v12;
      HGGLState::setCurrentContext(v8, &v12);
    }

    else
    {
      v11 = *a3;
      v9 = &v11;
      HGGLSetCurrentContext(&v11);
    }

    PCSharedCount::PCSharedCount(v9);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_25FBEF634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::PCSharedCount(&a10);
  PCSharedCount::PCSharedCount(v10 + 1);
  _Unwind_Resume(a1);
}

void sub_25FBEF678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11)
{
  PCSharedCount::PCSharedCount(&a11);
  PCSharedCount::PCSharedCount(v11 + 1);
  _Unwind_Resume(a1);
}

void HGGLState::setCurrentContext(uint64_t a1, PC_Sp_counted_base **a2)
{
  if (*(a1 + 40) == 1)
  {
    CGColorSpace = PCColorSpaceHandle::getCGColorSpace((a1 + 32));
    if (CGColorSpace != PCColorSpaceHandle::getCGColorSpace(a2))
    {
      v6.var0 = *a2;
      HGGLSetCurrentContext(&v6.var0);
      PCSharedCount::PCSharedCount(&v6);
      *(a1 + 32) = *a2;
    }
  }

  else
  {
    v5.var0 = *a2;
    HGGLSetCurrentContext(&v5.var0);
    PCSharedCount::PCSharedCount(&v5);
  }
}

void HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(PCSharedCount *this)
{
  if (LOBYTE(this[2].var0) == 1)
  {
    var0 = this->var0;
    if (this->var0)
    {
      v3.var0 = this[1].var0;
      HGGLState::setCurrentContext(var0, &v3.var0);
    }

    else
    {
      v3.var0 = this[1].var0;
      HGGLSetCurrentContext(&v3.var0);
    }

    PCSharedCount::PCSharedCount(&v3);
  }

  PCSharedCount::PCSharedCount(this + 1);
}

void HGGLState::HGGLState(HGGLState *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  HGGLContextPtr::HGGLContextPtr((this + 24), 0);
  HGGLContextPtr::HGGLContextPtr((this + 32), 0);
  *(this + 40) = 0;
  HGLogger::setLevel("glstate", 1);
}

void sub_25FBEF850(_Unwind_Exception *a1)
{
  PCSharedCount::PCSharedCount((v1 + 32));
  PCSharedCount::PCSharedCount((v1 + 24));
  std::__tree<HGNode *>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void HGGLState::resetUniforms(HGGLState **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v4 = *(v3 + 5);
      if (v4)
      {
        v5 = v4[4];
        if (v5)
        {
          v4[5] = v5;
          operator delete(v5);
        }

        v6 = v4[1];
        if (v6)
        {
          v4[2] = v6;
          operator delete(v6);
        }

        MEMORY[0x2666E9F00](v4, 0x1010C40738DD8B8);
      }

      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v2);
  }

  std::__tree<HGNode *>::destroy(this, this[1]);
  this[1] = 0;
  this[2] = 0;
  *this = v2;
}

void HGGLState::~HGGLState(HGGLState *this)
{
  HGGLState::resetUniforms(this);
  PCSharedCount::PCSharedCount(this + 4);
  PCSharedCount::PCSharedCount(this + 3);
  std::__tree<HGNode *>::destroy(this, *(this + 1));
}

void HGGLState::startContextTracking(HGGLState *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    *(this + 40) = 1;
    HGGLGetCurrentContext();
    *(this + 4) = v2;
    PCSharedCount::PCSharedCount(&v2);
    *(this + 3) = *(this + 4);
  }
}

void HGGLState::stopContextTracking(PCSharedCount *this)
{
  if (LOBYTE(this[5].var0) == 1)
  {
    v3.var0 = this[3].var0;
    HGGLState::setCurrentContext(this, &v3.var0);
    PCSharedCount::PCSharedCount(&v3);
    LOBYTE(this[5].var0) = 0;
    HGGLContextPtr::HGGLContextPtr(&v2, 0);
    this[4].var0 = v2.var0;
    PCSharedCount::PCSharedCount(&v2);
    this[3].var0 = this[4].var0;
  }
}

uint64_t HGGLState::getUniformLocation(HGGLState *a1, unint64_t a2, int a3, int a4)
{
  if (a3 == 2)
  {

    return HGGLState::_getProgramLocalLocation(a1, a2, a4);
  }

  else if (a3 == 1)
  {

    return HGGLState::_getTextureMatrixLocation(a1, a2, a4);
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
    UniformLocations = HGGLState::_getUniformLocations(a1, a2);
    result = *UniformLocations;
    if (result == -2)
    {
      result = glGetUniformLocation(v5, "hg_ProjectionMatrix");
      *UniformLocations = result;
    }
  }

  return result;
}

uint64_t HGGLState::_getTextureMatrixLocation(HGGLState *this, unint64_t a2, int a3)
{
  v4 = a2;
  v31 = *MEMORY[0x277D85DE8];
  UniformLocations = HGGLState::_getUniformLocations(this, a2);
  v6 = a3;
  v8 = (UniformLocations + 8);
  v7 = *(UniformLocations + 8);
  v9 = (*(UniformLocations + 16) - v7) >> 2;
  if (v9 <= a3)
  {
    v10 = (a3 + 1);
    if (v10 <= v9)
    {
      if (v10 < v9)
      {
        *(UniformLocations + 16) = v7 + 4 * v10;
      }
    }

    else
    {
      std::vector<int>::__append((UniformLocations + 8), v10 - v9, &UNKNOWN_LOC);
      v7 = *v8;
    }
  }

  result = *(v7 + 4 * a3);
  if (result == -2)
  {
    v28 = 0;
    v27 = *"hg_TextureMatrix";
    v12 = a3 > 999;
    if (a3 > 9999)
    {
      ++v12;
    }

    if (a3 > 99)
    {
      ++v12;
    }

    if (v12 | (a3 > 9))
    {
      if (a3 <= 9999)
      {
        v13 = a3 > 999;
      }

      else
      {
        v13 = (a3 > 999) + 1;
      }

      if (a3 > 99)
      {
        ++v13;
      }

      if (a3 > 9)
      {
        ++v13;
      }

      v14 = format(char *,int,int)::div[v13];
      v15 = a3 / v14;
      a3 %= v14;
      LOBYTE(v28) = v15 + 48;
      v16 = v13 - 2;
      if (v13 < 2)
      {
        v23 = 17;
      }

      else
      {
        v17 = format(char *,int,int)::div[v13 - 1];
        v18 = a3 / v17;
        a3 %= v17;
        HIBYTE(v28) = v18 + 48;
        if (v13 - 1 < 2)
        {
          v23 = 18;
        }

        else
        {
          v19 = format(char *,int,int)::div[v16];
          v20 = a3 / v19;
          a3 %= v19;
          v29 = v20 + 48;
          if (v16 < 2)
          {
            v23 = 19;
          }

          else
          {
            v21 = format(char *,int,int)::div[v13 - 3];
            v22 = a3 / v21;
            a3 %= v21;
            v30 = v22 + 48;
            v23 = 20;
          }
        }
      }
    }

    else
    {
      v23 = 16;
    }

    v24 = &v27 + v23;
    *v24 = a3 + 48;
    v24[1] = 0;
    UniformLocation = glGetUniformLocation(v4, &v27);
    v26 = *v8;
    *(*v8 + 4 * v6) = UniformLocation;
    return *(v26 + 4 * v6);
  }

  return result;
}

uint64_t HGGLState::_getProgramLocalLocation(HGGLState *this, unint64_t a2, int a3)
{
  v4 = a2;
  v28 = *MEMORY[0x277D85DE8];
  UniformLocations = HGGLState::_getUniformLocations(this, a2);
  v6 = a3;
  v8 = (UniformLocations + 32);
  v7 = *(UniformLocations + 32);
  v9 = (*(UniformLocations + 40) - v7) >> 2;
  if (v9 <= a3)
  {
    v10 = (a3 + 1);
    if (v10 <= v9)
    {
      if (v10 < v9)
      {
        *(UniformLocations + 40) = v7 + 4 * v10;
      }
    }

    else
    {
      std::vector<int>::__append((UniformLocations + 32), v10 - v9, &UNKNOWN_LOC);
      v7 = *v8;
    }
  }

  result = *(v7 + 4 * a3);
  if (result == -2)
  {
    strcpy(v27, "hg_ProgramLocal");
    *&v27[13] = 27745;
    v12 = a3 > 999;
    if (a3 > 9999)
    {
      ++v12;
    }

    if (a3 > 99)
    {
      ++v12;
    }

    if (v12 | (a3 > 9))
    {
      if (a3 <= 9999)
      {
        v13 = a3 > 999;
      }

      else
      {
        v13 = (a3 > 999) + 1;
      }

      if (a3 > 99)
      {
        ++v13;
      }

      if (a3 > 9)
      {
        ++v13;
      }

      v14 = format(char *,int,int)::div[v13];
      v15 = a3 / v14;
      a3 %= v14;
      v27[15] = v15 + 48;
      v16 = v13 - 2;
      if (v13 < 2)
      {
        v23 = 16;
      }

      else
      {
        v17 = format(char *,int,int)::div[v13 - 1];
        v18 = a3 / v17;
        a3 %= v17;
        v27[16] = v18 + 48;
        if (v13 - 1 < 2)
        {
          v23 = 17;
        }

        else
        {
          v19 = format(char *,int,int)::div[v16];
          v20 = a3 / v19;
          a3 %= v19;
          v27[17] = v20 + 48;
          if (v16 < 2)
          {
            v23 = 18;
          }

          else
          {
            v21 = format(char *,int,int)::div[v13 - 3];
            v22 = a3 / v21;
            a3 %= v21;
            v27[18] = v22 + 48;
            v23 = 19;
          }
        }
      }
    }

    else
    {
      v23 = 15;
    }

    v24 = &v27[v23];
    *v24 = a3 + 48;
    v24[1] = 0;
    UniformLocation = glGetUniformLocation(v4, v27);
    v26 = *v8;
    *(*v8 + 4 * v6) = UniformLocation;
    return *(v26 + 4 * v6);
  }

  return result;
}

uint64_t HGGLState::_getUniformLocations(HGGLState *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = (this + 8);
  v4 = *(this + 1);
  do
  {
    v5 = v4[4];
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v3 = v4;
    }

    v4 = v4[v7];
  }

  while (v4);
  if (v3 == (this + 8) || v3[4] > a2)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v2;
      v9 = v2[4];
      if (v9 <= a2)
      {
        break;
      }

      v2 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }
    }

    if (v9 >= a2)
    {
      return v8[5];
    }

    v2 = v8[1];
    if (!v2)
    {
LABEL_14:
      operator new();
    }
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = *__x;
      v12 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &end[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (end + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      end = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *end++ = v11;
        }

        while (end != v10);
      }

      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = v6 + __n;
    if ((v6 + __n) >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = 4 * v6;
    v19 = (4 * v6 + 4 * __n);
    v20 = *__x;
    v21 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    begin = this->__begin_;
    v28 = this->__end_ - this->__begin_;
    v29 = (v18 - v28);
    memcpy((v18 - v28), this->__begin_, v28);
    this->__begin_ = v29;
    this->__end_ = v19;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

FILE *HGIQA::IQAWriteFile(const char *a1, __int128 *a2, char *a3)
{
  result = fopen(a1, "w");
  v6 = a2[1];
  __ptr = *a2;
  *v16 = v6;
  *&v16[12] = *(a2 + 28);
  if (result)
  {
    v7 = result;
    LOBYTE(__ptr) = __ptr | 0x80;
    if (fwrite(&__ptr, 1uLL, 1uLL, result) == 1 && fwrite(&__ptr + 4, 4uLL, 1uLL, v7) == 1 && fwrite(&__ptr + 8, 4uLL, 1uLL, v7) == 1)
    {
      if ((*&v16[8] - 31) > 1)
      {
        if ((*&v16[8] - 19) >= 2)
        {
          *&v16[20] = 0;
          *&v16[24] = 0;
        }
      }

      else
      {
        if (HIDWORD(__ptr) != 1)
        {
          *&v16[20] = HIDWORD(__ptr);
          HIDWORD(__ptr) = 1;
        }

        if (*v16 != 1)
        {
          *&v16[24] = *v16;
          *v16 = 1;
        }
      }

      if (fwrite((&__ptr | 0xC), 4uLL, 1uLL, v7) == 1 && fwrite(v16, 4uLL, 1uLL, v7) == 1)
      {
        v13 = 0;
        v14 = 0;
        v8 = *&v16[8];
        HGIQA::GetPixelInfo(*&v16[8], &v14, &v13, 0, 0);
        v9 = *&v16[4];
        v10 = v8 == 24 ? vcvts_n_u32_f32(ceilf(SHIDWORD(__ptr) / 6.0), 4uLL) : v14 * SHIDWORD(__ptr) * v13;
        if (v10 < *&v16[4])
        {
          *&v16[4] = v10;
        }

        if (fwrite(&v16[4], 4uLL, 1uLL, v7) == 1 && fwrite(&v16[8], 4uLL, 1uLL, v7) == 1 && fwrite(&v16[12], 4uLL, 1uLL, v7) == 1 && fwrite(&v16[16], 4uLL, 1uLL, v7) == 1 && fwrite(&v16[20], 4uLL, 1uLL, v7) == 1 && fwrite(&v16[24], 4uLL, 1uLL, v7) == 1)
        {
          if ((*&v16[8] - 31) <= 1)
          {
            v11 = (*&v16[4] << (*&v16[12] != 0)) + (*&v16[4] << (*&v16[12] != 0)) * (SDWORD2(__ptr) - SDWORD1(__ptr));
            goto LABEL_29;
          }

          HGIQA::GetPixelInfo(*&v16[8], &v14, &v13, 0, 0);
          if (v10 == v9)
          {
            v11 = *v16 * *&v16[4];
LABEL_29:
            if (fwrite(a3, v11, 1uLL, v7) == 1)
            {
LABEL_30:
              fclose(v7);
              return 1;
            }

            goto LABEL_36;
          }

          if (*v16 < 1)
          {
            goto LABEL_30;
          }

          v12 = 0;
          while (fwrite(a3, v10, 1uLL, v7) == 1)
          {
            ++v12;
            a3 += v9;
            if (v12 >= *v16)
            {
              goto LABEL_30;
            }
          }
        }
      }
    }

LABEL_36:
    fclose(v7);
    return 0;
  }

  return result;
}

const char *HGIQA::GetPixelInfo(int a1, void *a2, void *a3, int *a4, int *a5)
{
  switch(a1)
  {
    case 0:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 22;
      }

      result = "r408";
      if (a5)
      {
        v6 = 4;
        goto LABEL_313;
      }

      return result;
    case 1:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 14;
      }

      result = "2vuy_cby0cry1";
      if (a5)
      {
        goto LABEL_288;
      }

      return result;
    case 2:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 29;
      }

      result = "r4fl";
      if (a5)
      {
        v6 = 7;
        goto LABEL_313;
      }

      return result;
    case 3:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 22;
      }

      result = "ARGB 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 4:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 26;
      }

      result = "ARGB 16 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 5:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 29;
      }

      result = "ARGB 32 bit float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 6:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "ABGR 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 7:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "ABGR 16 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 8:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "ABGR 32 bit float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 9:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 24;
      }

      result = "RGBA 8 bit float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 10:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 27;
      }

      result = "RGBA 16 bit float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 11:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 1;
      }

      if (a4)
      {
        *a4 = 1;
      }

      result = "A 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 12:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 1;
      }

      if (a4)
      {
        *a4 = 3;
      }

      result = "A 16 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 13:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 1;
      }

      if (a4)
      {
        *a4 = 7;
      }

      result = "A 32 bit float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 14:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 10;
      }

      result = "AL 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 15:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 11;
      }

      result = "AL 16 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 16:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 13;
      }

      result = "AL 32 bit float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 18:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 12;
      }

      result = "AL half float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 19:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 13;
      }

      result = "Optical Flow Progressive";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 20:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 28;
      }

      result = "Optical Flow Interlaced";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 21:
      if (a2)
      {
        *a2 = 8;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "LABC";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 22:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 22;
      }

      result = "y408";
      if (a5)
      {
        v6 = 5;
        goto LABEL_313;
      }

      return result;
    case 23:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 26;
      }

      result = "y416";
      if (a5)
      {
        v6 = 6;
        goto LABEL_313;
      }

      return result;
    case 24:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 31;
      }

      result = "v210";
      if (a5)
      {
        v6 = 2;
        goto LABEL_313;
      }

      return result;
    case 25:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 16;
      }

      result = "v216";
      if (a5)
      {
        v6 = 3;
        goto LABEL_313;
      }

      return result;
    case 26:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 32;
      }

      result = "r10k";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 27:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 33;
      }

      result = "b64a";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 28:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 2;
      }

      if (a4)
      {
        *a4 = 15;
      }

      result = "2vuy_y0cby1cr";
      if (a5)
      {
LABEL_288:
        v6 = 1;
        goto LABEL_313;
      }

      return result;
    case 29:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 23;
      }

      result = "BGRA 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 30:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 29;
      }

      result = "AYCbCr float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 31:
      if (a2)
      {
        *a2 = 8;
      }

      if (a3)
      {
        *a3 = 13;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "DominantMotionTracker Original Motion Data";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 32:
      if (a2)
      {
        *a2 = 8;
      }

      if (a3)
      {
        *a3 = 17;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "DominantMotionTracker Processed Motion Data";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 33:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "ARGB half float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 34:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 28;
      }

      result = "RGBA float";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 35:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 3;
      }

      if (a4)
      {
        *a4 = 17;
      }

      result = "RGB 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 36:
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        *a3 = 3;
      }

      if (a4)
      {
        *a4 = 18;
      }

      result = "BGR 8 bit unsigned int";
      if (a5)
      {
        goto LABEL_312;
      }

      return result;
    case 37:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 3;
      }

      if (!a4)
      {
        goto LABEL_231;
      }

      v7 = 19;
      goto LABEL_230;
    case 38:
      if (a2)
      {
        *a2 = 2;
      }

      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        v7 = 25;
LABEL_230:
        *a4 = v7;
      }

LABEL_231:
      result = "RGB 16 bit unsigned int";
      if (!a5)
      {
        return result;
      }

      goto LABEL_312;
    default:
      if (a2)
      {
        *a2 = 0;
      }

      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        *a4 = 0;
      }

      result = "Unknown pixel type";
      if (!a5)
      {
        return result;
      }

LABEL_312:
      v6 = 0;
LABEL_313:
      *a5 = v6;
      return result;
  }
}

FILE *HGIQA::WriteBitmap(HGIQA *this, const char *a2, HGBitmap *a3)
{
  v5 = *(a2 + 4);
  if (!a3)
  {
    if ((0x3BFCFFC8AuLL >> v5))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v5 == 13)
  {
    v6 = 19;
    goto LABEL_9;
  }

  if (v5 != 28)
  {
    return 0;
  }

  v6 = 20;
LABEL_9:
  v15 = v3;
  v16 = v4;
  v8 = 0x100000000;
  v9 = 1;
  v10 = vsub_s32(*(a2 + 28), *(a2 + 20));
  v11 = *(a2 + 8);
  v12 = v6;
  v14 = 0;
  v13 = 0;
  return HGIQA::IQAWriteFile(this, &v8, *(a2 + 10));
}

uint64_t HGLoggerUtils::bytesPrettyString(HGLoggerUtils *this)
{
  if (this)
  {
    v1 = (log2(this) / 10.0);
  }

  else
  {
    v1 = 0;
  }

  if (v1 >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v3 = v9;
  *(&v9 + *(v9 - 24) + 8) = *(&v9 + *(v9 - 24) + 8) & 0xFFFFFEFB | 4;
  ldexp(1.0, 10 * v2);
  *(&v11[0].__locale_ + *(v3 - 24)) = 1;
  v4 = std::ostream::operator<<();
  v5 = strlen(HGLoggerUtils::bytesPrettyString(unsigned long long)::units[v2]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, HGLoggerUtils::bytesPrettyString(unsigned long long)::units[v2], v5);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v9 = v6;
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v13);
}

void sub_25FBF112C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FBF1140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t HGLoggerUtils::timePrettyString(HGLoggerUtils *this)
{
  if (this)
  {
    v1 = log10(this) / 3;
  }

  else
  {
    v1 = 0;
  }

  if (v1 >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v3 = v9;
  *(&v9 + *(v9 - 24) + 8) = *(&v9 + *(v9 - 24) + 8) & 0xFFFFFEFB | 4;
  __exp10((3 * v2));
  *(&v11[0].__locale_ + *(v3 - 24)) = 1;
  v4 = std::ostream::operator<<();
  v5 = strlen(HGLoggerUtils::timePrettyString(unsigned long long)::units[v2]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, HGLoggerUtils::timePrettyString(unsigned long long)::units[v2], v5);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v9 = v6;
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v13);
}

void sub_25FBF13CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FBF13E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t MatrixPrettyString<double>(double *a1, int a2, int a3, const void **a4, const void **a5)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v10 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = a5;
  if (v10 + 8 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v37 = 0;
  __p[0] = 0;
  HIBYTE(v37) = v10 + 8;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    memmove(__p, v11, v10);
  }

  v12 = 0;
  v30 = a2 & ~(a2 >> 31);
  v29 = a2;
  v13 = 8 * a2;
  strcpy(__p + v10, "    [ [ ");
  while (v12 != v30)
  {
    if (v37 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (v37 >= 0)
    {
      v17 = HIBYTE(v37);
    }

    else
    {
      v17 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v16, v17);
    v32 = v12;
    v18 = *(a5 + 23);
    if (v18 >= 0)
    {
      v19 = *(a5 + 23);
    }

    else
    {
      v19 = a5[1];
    }

    if (v19 + 8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v19 + 8 >= 0x17)
    {
      operator new();
    }

    v35 = 0;
    __dst = 0uLL;
    HIBYTE(v35) = v19 + 8;
    if (v19)
    {
      if ((v18 & 0x80u) == 0)
      {
        v20 = a5;
      }

      else
      {
        v20 = *a5;
      }

      memmove(&__dst, v20, v19);
    }

    strcpy(&__dst + v19, "      [ ");
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = __dst;
    v37 = v35;
    v22 = a3 - 1;
    v21 = a3 & ~(a3 >> 31);
    v23 = a1;
    while (v21)
    {
      v24 = v38;
      *(&v40[-1].__locale_ + *(v38 - 24)) = *(&v40[-1].__locale_ + *(v38 - 24)) & 0xFFFFFEFB | 4;
      *(&v40[0].__locale_ + *(v24 - 24)) = 8;
      v25 = MEMORY[0x2666E9B30](&v38, *v23);
      if (v22)
      {
        v26 = ", ";
      }

      else
      {
        v26 = " ";
      }

      if (v22)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      --v21;
      v23 = (v23 + v13);
      --v22;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    }

    v12 = v32 + 1;
    if (v32 + 1 == v29)
    {
      v14 = "] ]";
    }

    else
    {
      v14 = "]\n";
    }

    if (v32 + 1 == v29)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    ++a1;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v14, v15);
    a5 = v31;
  }

  std::stringbuf::str();
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

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

void sub_25FBF1870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t MatrixPrettyString<float>(uint64_t a1, int a2, int a3, const void **a4, const void **a5)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v10 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = a5;
  if (v10 + 8 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v37 = 0;
  __p[0] = 0;
  HIBYTE(v37) = v10 + 8;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    memmove(__p, v11, v10);
  }

  v12 = 0;
  v30 = a2 & ~(a2 >> 31);
  v29 = a2;
  v13 = 4 * a2;
  strcpy(__p + v10, "    [ [ ");
  while (v12 != v30)
  {
    if (v37 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (v37 >= 0)
    {
      v17 = HIBYTE(v37);
    }

    else
    {
      v17 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v16, v17);
    v32 = v12;
    v18 = *(a5 + 23);
    if (v18 >= 0)
    {
      v19 = *(a5 + 23);
    }

    else
    {
      v19 = a5[1];
    }

    if (v19 + 8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v19 + 8 >= 0x17)
    {
      operator new();
    }

    v35 = 0;
    __dst = 0uLL;
    HIBYTE(v35) = v19 + 8;
    if (v19)
    {
      if ((v18 & 0x80u) == 0)
      {
        v20 = a5;
      }

      else
      {
        v20 = *a5;
      }

      memmove(&__dst, v20, v19);
    }

    strcpy(&__dst + v19, "      [ ");
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = __dst;
    v37 = v35;
    v22 = a3 - 1;
    v21 = a3 & ~(a3 >> 31);
    v23 = a1;
    while (v21)
    {
      v24 = v38;
      *(&v40[-1].__locale_ + *(v38 - 24)) = *(&v40[-1].__locale_ + *(v38 - 24)) & 0xFFFFFEFB | 4;
      *(&v40[0].__locale_ + *(v24 - 24)) = 8;
      v25 = std::ostream::operator<<();
      if (v22)
      {
        v26 = ", ";
      }

      else
      {
        v26 = " ";
      }

      if (v22)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      --v21;
      v23 += v13;
      --v22;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    }

    v12 = v32 + 1;
    if (v32 + 1 == v29)
    {
      v14 = "] ]";
    }

    else
    {
      v14 = "]\n";
    }

    if (v32 + 1 == v29)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    a1 += 4;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v14, v15);
    a5 = v31;
  }

  std::stringbuf::str();
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

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

void sub_25FBF1D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t HGLogger::setLevel(HGLogger *this, const char *a2)
{
  v2 = a2;
  v4[0] = this;
  pthread_mutex_lock(&HGLC::_ctxsLock);
  if (!HGLC::getContexts(void)::contexts)
  {
    operator new();
  }

  v4[2] = v4;
  *(std::__tree<std::__value_type<char const*,int>,std::__map_value_compare<char const*,std::__value_type<char const*,int>,HGLC::ltstr,true>,std::allocator<std::__value_type<char const*,int>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(HGLC::getContexts(void)::contexts, v4) + 10) = v2;
  return pthread_mutex_unlock(&HGLC::_ctxsLock);
}

uint64_t HGLogger::getLevel(HGLogger *this, const char *a2)
{
  pthread_mutex_lock(&HGLC::_ctxsLock);
  if (!HGLC::getContexts(void)::contexts)
  {
    operator new();
  }

  v3 = HGLC::getContexts(void)::contexts + 8;
  v4 = *(HGLC::getContexts(void)::contexts + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = HGLC::getContexts(void)::contexts + 8;
  do
  {
    v6 = strcmp(*(v4 + 32), this);
    if (v6 >= 0)
    {
      v5 = v4;
    }

    v4 = *(v4 + ((v6 >> 28) & 8));
  }

  while (v4);
  if (v5 == v3 || strcmp(this, *(v5 + 32)) < 0)
  {
LABEL_10:
    v7 = 0;
  }

  else
  {
    v7 = *(v5 + 40);
  }

  pthread_mutex_unlock(&HGLC::_ctxsLock);
  return v7;
}

void HGLogger::vlog(HGLogger *this, const char *a2, HGLogger *a3, const char *a4, char *a5)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v32 = a4;
  v5 = atomic_load(HGLogger::_enabled);
  if (a2 < 1 || (v5 & 1) == 0 || HGLogger::getLevel(this, a2) < a2)
  {
    return;
  }

  HGLogger::getFormatPreamble(__p, a3, v7);
  if (v25 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v31 = v9;
  if (v9)
  {
    memmove(&__dst, v8, v9);
    *(&__dst + v10) = 0;
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    operator delete(__p[0]);
    goto LABEL_11;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v25) < 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v12 = fmtcheck(p_dst, a3);
  v29 = v32;
  v13 = vsnprintf(0, 0, v12, v32);
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  vsnprintf(0, 0, v12, v29);
  v14 = strlen(0);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v23) = v14;
  if (v14)
  {
    memcpy(v22, 0, v14);
  }

  *(v22 + v15) = 0;
  std::istringstream::basic_istringstream[abi:ne200100](__p, v22, 8);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v16 = MEMORY[0x277D82680];
  v17 = MEMORY[0x277D86220];
  while (1)
  {
    std::ios_base::getloc((__p + *(__p[0] - 3)));
    v18 = std::locale::use_facet(v33, v16);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(v33);
    v20 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v22, v19);
    if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v23 >= 0)
      {
        v21 = v22;
      }

      else
      {
        v21 = v22[0];
      }

      LODWORD(v33[0].__locale_) = 136315138;
      *(&v33[0].__locale_ + 4) = v21;
      _os_log_impl(&dword_25F8F0000, v17, OS_LOG_TYPE_DEFAULT, "%s", v33, 0xCu);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  __p[0] = *MEMORY[0x277D82820];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82820] + 24);
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::istream::~istream();
  MEMORY[0x2666E9E10](&v28);
  if (v31 < 0)
  {
    operator delete(__dst);
  }
}

void sub_25FBF2414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (v22)
    {
LABEL_7:
      operator delete(v22);
      if ((*(v23 - 121) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (v22)
  {
    goto LABEL_7;
  }

  if ((*(v23 - 121) & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(*(v23 - 144));
  goto LABEL_9;
}

uint64_t HGLogger::getFormatPreamble(HGLogger *this, const char *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v3 = atomic_load(&HGLogger::_indent);
  if (v3 >= 1)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "| ", 2);
      --v3;
    }

    while (v3);
  }

  v4 = strlen(this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, this, v4);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v10);
}

void sub_25FBF2668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FBF267C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 168) = 0;
  v5 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v6 = *(MEMORY[0x277D82820] + 16);
  v7 = *(MEMORY[0x277D82820] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x277D82898] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v5;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2666E9DA0](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a3 | 8;
  std::stringbuf::str();
  return a1;
}

void sub_25FBF2850(_Unwind_Exception *a1)
{
  if (*(v2 + 103) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 16) = v3;
  std::locale::~locale((v2 + 24));
  std::istream::~istream();
  MEMORY[0x2666E9E10](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x2666E9E10](a1 + 120);
  return a1;
}

void HGLogger::vprint(HGLogger *this, const char *a2, char *a3)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29 = a2;
  v3 = atomic_load(HGLogger::_enabled);
  if ((v3 & 1) == 0)
  {
    return;
  }

  HGLogger::getFormatPreamble(__p, this, a2);
  if (v22 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = strlen(v5);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v28 = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
    *(&__dst + v7) = 0;
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    operator delete(__p[0]);
    goto LABEL_9;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = fmtcheck(p_dst, this);
  v26 = v29;
  v10 = vsnprintf(0, 0, v9, v29);
  if (v10 != -1)
  {
    if (v10 > -2)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  vsnprintf(0, 0, v9, v26);
  v11 = strlen(0);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v20) = v11;
  if (v11)
  {
    memcpy(v19, 0, v11);
  }

  *(v19 + v12) = 0;
  std::istringstream::basic_istringstream[abi:ne200100](__p, v19, 8);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v13 = MEMORY[0x277D82680];
  v14 = MEMORY[0x277D86220];
  while (1)
  {
    std::ios_base::getloc((__p + *(__p[0] - 3)));
    v15 = std::locale::use_facet(v30, v13);
    v16 = (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v30);
    v17 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v19, v16);
    if ((*(v17 + *(*v17 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v20 >= 0)
      {
        v18 = v19;
      }

      else
      {
        v18 = v19[0];
      }

      LODWORD(v30[0].__locale_) = 136315138;
      *(&v30[0].__locale_ + 4) = v18;
      _os_log_impl(&dword_25F8F0000, v14, OS_LOG_TYPE_DEFAULT, "%s", v30, 0xCu);
    }
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  __p[0] = *MEMORY[0x277D82820];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82820] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::istream::~istream();
  MEMORY[0x2666E9E10](&v25);
  if (v28 < 0)
  {
    operator delete(__dst);
  }
}

void sub_25FBF2EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (v22)
    {
LABEL_7:
      operator delete(v22);
      if ((*(v23 - 121) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (v22)
  {
    goto LABEL_7;
  }

  if ((*(v23 - 121) & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(*(v23 - 144));
  goto LABEL_9;
}

const char *HGLogger::vwarning(const char *this, const char *a2, char *a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v38 = a2;
  v3 = atomic_load(HGLogger::_enabled);
  if ((v3 & 1) == 0)
  {
    return this;
  }

  v4 = this;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "  Helium WARNING -- ", 20);
  v6 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4, v6);
  std::stringbuf::str();
  if (v26 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = strlen(v7);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v32 = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
    *(&__dst + v9) = 0;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  operator delete(__p[0]);
LABEL_9:
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v11 = fmtcheck(p_dst, v4);
  v30 = v38;
  v12 = vsnprintf(0, 0, v11, v38);
  if (v12 != -1)
  {
    if (v12 > -2)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  vsnprintf(0, 0, v11, v30);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", __p, 2u);
  }

  v14 = strlen(0);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = v14;
  if (v14)
  {
    memcpy(buf, 0, v14);
  }

  buf[v15] = 0;
  std::istringstream::basic_istringstream[abi:ne200100](__p, buf, 8);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

  *buf = 0;
  v23 = 0;
  v24 = 0;
  v16 = MEMORY[0x277D82680];
  v17 = MEMORY[0x277D86220];
  while (1)
  {
    std::ios_base::getloc((__p + *(__p[0] - 3)));
    v18 = std::locale::use_facet(v39, v16);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(v39);
    v20 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, buf, v19);
    if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v24 >= 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      LODWORD(v39[0].__locale_) = 136315138;
      *(&v39[0].__locale_ + 4) = v21;
      _os_log_impl(&dword_25F8F0000, v17, OS_LOG_TYPE_DEFAULT, "%s", v39, 0xCu);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
LABEL_38:
    *buf = 0;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", buf, 2u);
  }

LABEL_39:
  __p[0] = *MEMORY[0x277D82820];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82820] + 24);
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  MEMORY[0x2666E9E10](&v29);
  if (v32 < 0)
  {
    operator delete(__dst);
  }

  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v37);
}

void sub_25FBF3634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (!v62)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
LABEL_8:
        std::ostringstream::~ostringstream(&a62);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a56);
      goto LABEL_8;
    }
  }

  else if (!v62)
  {
    goto LABEL_3;
  }

  operator delete(v62);
  if ((a61 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

const char *HGLogger::verror(const char *this, const char *a2, char *a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v38 = a2;
  v3 = atomic_load(HGLogger::_enabled);
  if ((v3 & 1) == 0)
  {
    return this;
  }

  v4 = this;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "  Helium ERROR -- ", 18);
  v6 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4, v6);
  std::stringbuf::str();
  if (v26 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = strlen(v7);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v32 = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
    *(&__dst + v9) = 0;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  operator delete(__p[0]);
LABEL_9:
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v11 = fmtcheck(p_dst, v4);
  v30 = v38;
  v12 = vsnprintf(0, 0, v11, v38);
  if (v12 != -1)
  {
    if (v12 > -2)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  vsnprintf(0, 0, v11, v30);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", __p, 2u);
  }

  v14 = strlen(0);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = v14;
  if (v14)
  {
    memcpy(buf, 0, v14);
  }

  buf[v15] = 0;
  std::istringstream::basic_istringstream[abi:ne200100](__p, buf, 8);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

  *buf = 0;
  v23 = 0;
  v24 = 0;
  v16 = MEMORY[0x277D82680];
  v17 = MEMORY[0x277D86220];
  while (1)
  {
    std::ios_base::getloc((__p + *(__p[0] - 3)));
    v18 = std::locale::use_facet(v39, v16);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(v39);
    v20 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, buf, v19);
    if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v24 >= 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      LODWORD(v39[0].__locale_) = 136315138;
      *(&v39[0].__locale_ + 4) = v21;
      _os_log_impl(&dword_25F8F0000, v17, OS_LOG_TYPE_DEFAULT, "%s", v39, 0xCu);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
LABEL_38:
    *buf = 0;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", buf, 2u);
  }

LABEL_39:
  __p[0] = *MEMORY[0x277D82820];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82820] + 24);
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  MEMORY[0x2666E9E10](&v29);
  if (v32 < 0)
  {
    operator delete(__dst);
  }

  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v37);
}

void sub_25FBF3DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (!v62)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
LABEL_8:
        std::ostringstream::~ostringstream(&a62);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a56);
      goto LABEL_8;
    }
  }

  else if (!v62)
  {
    goto LABEL_3;
  }

  operator delete(v62);
  if ((a61 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t HGLogger::getNewlinePreamble(HGLogger *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  v1 = atomic_load(&HGLogger::_indent);
  if (v1 >= 1)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "| ", 2);
      --v1;
    }

    while (v1);
  }

  std::stringbuf::str();
  v3 = *MEMORY[0x277D82828];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x277D82828] + 24);
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v7);
}

void sub_25FBF403C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FBF4050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void HGTraceGuard::HGTraceGuard(HGTraceGuard *this, HGLogger *a2, int a3, const char *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  v5 = atomic_load(HGLogger::_enabled);
  if (a3 >= 1 && (v5 & 1) != 0 && HGLogger::getLevel(a2, a2) >= a3)
  {
    v7 = strdup(a4);
    *this = v7;
    snprintf(__str, 0x64uLL, "/-- %s\n", v7);
    HGLogger::print("%s", v8, v9, __str);
    atomic_fetch_add(&HGLogger::_indent, 1u);
    operator new();
  }
}

void HGTraceGuard::~HGTraceGuard(HGProfiler **this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    HGProfiler::stop(this[1]);
    v2 = *this;
    Time = HGProfiler::getTime(this[1]);
    snprintf(__str, 0x64uLL, "\\-- %s : %f msec\n", v2, Time);
    atomic_fetch_add(&HGLogger::_indent, 0xFFFFFFFF);
    HGLogger::print("%s", v4, v5, __str);
    free(*this);
  }

  v6 = this[1];
  if (v6)
  {
    MEMORY[0x2666E9F00](v6, 0x1000C40451B5BE8);
  }
}

void sub_25FBF4264(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::__tree<std::__value_type<char const*,int>,std::__map_value_compare<char const*,std::__value_type<char const*,int>,HGLC::ltstr,true>,std::allocator<std::__value_type<char const*,int>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(uint64_t a1, const char **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if ((strcmp(v3, v5) & 0x80000000) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((strcmp(v5, v3) & 0x80000000) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2666E9AA0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_25FBF44F0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x25FBF44B0);
  }

  __cxa_rethrow();
}

const char *HGLodBlend2::GetProgram(HGLodBlend2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if ((*(*this + 312))(this, a2))
  {
    v5 = Target;
  }

  else
  {
    v5 = 394016;
  }

  if (v5 <= 0x6030F)
  {
    v6 = "!!ARBfp1.0     \n##LEN=00000004f2\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p2=program.local[2];\nPARAM $c0={0.5000000000,1.500000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2,r3,r4,r5;\n##@\nSUB r0.xy,$f0,$c0.x;\nFLR r1.xy,r0;\nFRC r0.xy,r0;\nADD r2.xy,r1,$c0.x;\n##0\nTEX r2,r2,texture[0],RECT;\nADD r3.xy,r1,$c0.yxzw;\n##0\nTEX r3,r3,texture[0],RECT;\nADD r4.xy,r1,$c0;\n##0\nTEX r4,r4,texture[0],RECT;\nADD r1.xy,r1,$c0.y;\n##0\nTEX r1,r1,texture[0],RECT;\nSUB r3,r3,r2;\nMAD r3,r0.x,r3,r2;\nSUB r1,r1,r4;\nMAD r4,r0.x,r1,r4;\nSUB r4,r4,r3;\nMAD r0,r0.y,r4,r3;\nSUB r2.xy,$f1,$c0.x;\nFLR r1.xy,r2;\nFRC r2.xy,r2;\nADD r4.xy,r1,$c0.x;\n##1\nTEX r4,r4,texture[1],RECT;\nADD r3.xy,r1,$c0.yxzw;\n##1\nTEX r3,r3,texture[1],RECT;\nADD r5.xy,r1,$c0;\n##1\nTEX r5,r5,texture[1],RECT;\nADD r1.xy,r1,$c0.y;\n##1\nTEX r1,r1,texture[1],RECT;\nSUB r3,r3,r4;\nMAD r3,r2.x,r3,r4;\nSUB r1,r1,r5;\nMAD r5,r2.x,r1,r5;\nSUB r5,r5,r3;\nMAD r2,r2.y,r5,r3;\nSUB r2,r2,r0;\nMAD $o0,$p2,r2,r0;\nEND\n##MD5=5731f160:a6e64969:b14ecbbd:d9ff8c59\n##SIG=00000000:00000000:00000000:00000000:0001:0003:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  else
  {
    v6 = "!!ARBfp1.0     \n##LEN=0000000490\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p2=program.local[2];\nPARAM $c0={0.5000000000,1.500000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2,r3,r4,r5;\n##@\nSUB r0.xy,$f0,$c0.x;\nFLR r1.xy,r0;\nFRC r0.xy,r0;\nADD r2.xy,r1,$c0.x;\n##0\nTEX r2,r2,texture[0],RECT;\nADD r3.xy,r1,$c0.yxzw;\n##0\nTEX r3,r3,texture[0],RECT;\nADD r4.xy,r1,$c0;\n##0\nTEX r4,r4,texture[0],RECT;\nADD r1.xy,r1,$c0.y;\n##0\nTEX r1,r1,texture[0],RECT;\nLRP r3,r0.x,r3,r2;\nLRP r4,r0.x,r1,r4;\nLRP r0,r0.y,r4,r3;\nSUB r2.xy,$f1,$c0.x;\nFLR r1.xy,r2;\nFRC r2.xy,r2;\nADD r4.xy,r1,$c0.x;\n##1\nTEX r4,r4,texture[1],RECT;\nADD r3.xy,r1,$c0.yxzw;\n##1\nTEX r3,r3,texture[1],RECT;\nADD r5.xy,r1,$c0;\n##1\nTEX r5,r5,texture[1],RECT;\nADD r1.xy,r1,$c0.y;\n##1\nTEX r1,r1,texture[1],RECT;\nLRP r3,r2.x,r3,r4;\nLRP r5,r2.x,r1,r5;\nLRP r2,r2.y,r5,r3;\nLRP $o0,$p2,r2,r0;\nEND\n##MD5=1af34882:dae2497c:35308843:34541126\n##SIG=00000000:00000000:00000000:00000000:0001:0003:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  if (v5 - 394016 < 0xF0 || v5 > 0x6043F)
  {
    return "!!ARBfp1.0     \n##LEN=0000000218\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p2=program.local[2];\n##%\nTEMP r0,r1;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\n##1\nTEX r1,$f1,texture[1],RECT;\nLRP $o0,$p2,r1,r0;\nEND\n##MD5=b7dfa253:e221938a:d4b76add:5cea1bcb\n##SIG=00000000:00000003:00000000:00000000:0000:0003:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  else
  {
    return v6;
  }
}

uint64_t HGLodBlend2::BindTexture(HGLodBlend2 *this, HGRenderer **a2, int a3)
{
  Target = HGRenderer::GetTarget(a2[18], 393216);
  if (a3 == 1)
  {
    if (Target > 0x6043F || Target - 394016 < 0xF0)
    {
      (*(*a2 + 9))(a2, 1, 0);
      v9 = (*(*this + 312))(this, 0);
      (*(*a2 + 6))(a2, v9, v9);
    }

    v8 = 112;
    goto LABEL_11;
  }

  if (!a3)
  {
    if (Target > 0x6043F || Target - 394016 < 0xF0)
    {
      (*(*a2 + 9))(a2, 0, 0);
      v7 = (*(*this + 312))(this, 0);
      (*(*a2 + 6))(a2, v7, v7);
    }

    v8 = 48;
LABEL_11:
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 15))(a2, *(this + 51) + v8);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t HGLodBlend2::Bind(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, *(a1 + 408), 1);
  (*(*a2 + 144))(a2, 1, *(a1 + 408) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(a1 + 408) + 32, 1);
  return 0;
}

uint64_t HGLodBlend2::RenderTile(float32x4_t **this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *(a2 + 1);
  v7 = *(a2 + 3) - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *a2 + 0.5;
    v10 = this[51];
    v12.f32[0] = v9;
    v12.f32[1] = v6 + 0.5;
    v11 = vmulq_n_f32(v10[7], v9);
    v12.i32[2] = 0;
    v12.i32[3] = 1.0;
    v13 = 0uLL;
    v14 = vaddq_f32(v10[6], vaddq_f32(vaddq_f32(vmulq_n_f32(v10[3], v9), vmulq_n_f32(v10[4], v12.f32[1])), vmulq_f32(v10[5], 0)));
    v15 = *(a2 + 2) - *a2;
    v16 = vaddq_f32(v10[10], vaddq_f32(vaddq_f32(v11, vmulq_n_f32(v10[8], v12.f32[1])), vmulq_f32(v10[9], 0)));
    v17 = *(a2 + 2);
    v18 = v17 + 2;
    v19 = 16 * *(a2 + 6);
    __asm { FMOV            V4.4S, #4.0 }

    v25.i64[0] = 0x3F0000003F000000;
    v25.i64[1] = 0x3F0000003F000000;
    do
    {
      v26 = this[51];
      v27 = vaddq_f32(v14, vmulq_f32(v13, v26[4]));
      v28 = vaddq_f32(v16, vmulq_f32(v13, v26[8]));
      if (v15 < 4)
      {
        v29 = 0;
        v30 = 0uLL;
      }

      else
      {
        v29 = 0;
        v30 = 0uLL;
        v31 = v18;
        for (i = v15; i > 3; i -= 4)
        {
          v82 = this[51];
          v83 = v82[3];
          v84 = vaddq_f32(v27, vmulq_f32(v30, v83));
          v85 = v82[7];
          v86 = vaddq_f32(v28, vmulq_f32(v30, v85));
          v87 = vaddq_f32(v83, v84);
          v88 = vaddq_f32(v85, v86);
          v89 = vaddq_f32(v83, v87);
          v90 = vaddq_f32(v85, v88);
          v91 = vaddq_f32(v83, v89);
          v92 = vaddq_f32(v85, v90);
          v93 = *(a2 + 10);
          v94 = *(a2 + 22);
          v95 = vsubq_f32(v84, v12);
          if (v5)
          {
            v33 = vaddq_s32(vcvtq_s32_f32(v95), vcltzq_f32(v95));
            v34 = vsubq_f32(v95, vcvtq_f32_s32(v33)).u64[0];
            v35 = vsubq_f32(v87, v12);
            v36 = vaddq_s32(vcvtq_s32_f32(v35), vcltzq_f32(v35));
            v37 = vsubq_f32(v35, vcvtq_f32_s32(v36)).u64[0];
            v38 = vdup_n_s32(v94);
            *v33.i8 = vmla_s32(vzip1_s32(*v33.i8, *v36.i8), vzip2_s32(*v33.i8, *v36.i8), v38);
            v39 = (v93 + 16 * v33.i32[0]);
            v40 = vaddq_f32(*v39, vmulq_n_f32(vsubq_f32(v39[1], *v39), v34.f32[0]));
            v41 = v94;
            v42 = vaddq_f32(v40, vmulq_lane_f32(vsubq_f32(vaddq_f32(v39[v41], vmulq_n_f32(vsubq_f32(v39[v41 + 1], v39[v41]), v34.f32[0])), v40), v34, 1));
            v43 = (v93 + 16 * v33.i32[1]);
            v44 = vaddq_f32(*v43, vmulq_n_f32(vsubq_f32(v43[1], *v43), v37.f32[0]));
            v45 = vaddq_f32(v44, vmulq_lane_f32(vsubq_f32(vaddq_f32(v43[v41], vmulq_n_f32(vsubq_f32(v43[v41 + 1], v43[v41]), v37.f32[0])), v44), v37, 1));
            v46 = vsubq_f32(v89, v12);
            v47 = vaddq_s32(vcvtq_s32_f32(v46), vcltzq_f32(v46));
            v46.i64[0] = vsubq_f32(v46, vcvtq_f32_s32(v47)).u64[0];
            v48 = vsubq_f32(v91, v12);
            v49 = vaddq_s32(vcvtq_s32_f32(v48), vcltzq_f32(v48));
            v50 = vsubq_f32(v48, vcvtq_f32_s32(v49)).u64[0];
            *v47.i8 = vmla_s32(vzip1_s32(*v47.i8, *v49.i8), vzip2_s32(*v47.i8, *v49.i8), v38);
            v51 = (v93 + 16 * v47.i32[0]);
            v52 = vaddq_f32(*v51, vmulq_n_f32(vsubq_f32(v51[1], *v51), v46.f32[0]));
            v53 = vaddq_f32(v52, vmulq_lane_f32(vsubq_f32(vaddq_f32(v51[v41], vmulq_n_f32(vsubq_f32(v51[v41 + 1], v51[v41]), v46.f32[0])), v52), *v46.f32, 1));
            v54 = (v93 + 16 * v47.i32[1]);
            v55 = vaddq_f32(*v54, vmulq_n_f32(vsubq_f32(v54[1], *v54), v50.f32[0]));
            v56 = vaddq_f32(v55, vmulq_lane_f32(vsubq_f32(vaddq_f32(v54[v41], vmulq_n_f32(vsubq_f32(v54[v41 + 1], v54[v41]), v50.f32[0])), v55), v50, 1));
            v57 = *(a2 + 12);
            v58 = *(a2 + 26);
            v59 = vsubq_f32(v86, v12);
            v60 = vaddq_s32(vcvtq_s32_f32(v59), vcltzq_f32(v59));
            v59.i64[0] = vsubq_f32(v59, vcvtq_f32_s32(v60)).u64[0];
            v61 = vsubq_f32(v88, v12);
            v62 = vaddq_s32(vcvtq_s32_f32(v61), vcltzq_f32(v61));
            v63 = vsubq_f32(v61, vcvtq_f32_s32(v62)).u64[0];
            v64 = vdup_n_s32(v58);
            *v60.i8 = vmla_s32(vzip1_s32(*v60.i8, *v62.i8), vzip2_s32(*v60.i8, *v62.i8), v64);
            v65 = (v57 + 16 * v60.i32[0]);
            v66 = vaddq_f32(*v65, vmulq_n_f32(vsubq_f32(v65[1], *v65), v59.f32[0]));
            v58 *= 16;
            v67 = vaddq_f32(v66, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v65 + v58), vmulq_n_f32(vsubq_f32(*(v65 + v58 + 16), *(v65 + v58)), v59.f32[0])), v66), *v59.f32, 1));
            v68 = (v57 + 16 * v60.i32[1]);
            v69 = vaddq_f32(*v68, vmulq_n_f32(vsubq_f32(v68[1], *v68), v63.f32[0]));
            v70 = vaddq_f32(v69, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v68 + v58), vmulq_n_f32(vsubq_f32(*(v68 + v58 + 16), *(v68 + v58)), v63.f32[0])), v69), v63, 1));
            v71 = vsubq_f32(v90, v12);
            v72 = vaddq_s32(vcvtq_s32_f32(v71), vcltzq_f32(v71));
            v71.i64[0] = vsubq_f32(v71, vcvtq_f32_s32(v72)).u64[0];
            v73 = vsubq_f32(v92, v12);
            v74 = vaddq_s32(vcvtq_s32_f32(v73), vcltzq_f32(v73));
            *v72.i8 = vmla_s32(vzip1_s32(*v72.i8, *v74.i8), vzip2_s32(*v72.i8, *v74.i8), v64);
            v75 = (v57 + 16 * v72.i32[0]);
            v74.i64[0] = vsubq_f32(v73, vcvtq_f32_s32(v74)).u64[0];
            v76 = vaddq_f32(*v75, vmulq_n_f32(vsubq_f32(v75[1], *v75), v71.f32[0]));
            v77 = vaddq_f32(v76, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v75 + v58), vmulq_n_f32(vsubq_f32(*(v75 + v58 + 16), *(v75 + v58)), v71.f32[0])), v76), *v71.f32, 1));
            v78 = (v57 + 16 * v72.i32[1]);
            v79 = vaddq_f32(*v78, vmulq_n_f32(vsubq_f32(v78[1], *v78), *v74.i32));
            v80 = vaddq_f32(v79, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v78 + v58), vmulq_n_f32(vsubq_f32(*(v78 + v58 + 16), *(v78 + v58)), *v74.i32)), v79), *v74.i8, 1));
          }

          else
          {
            v96 = vaddq_f32(v95, v25);
            v97 = vcvtq_s32_f32(v96);
            v98 = vaddq_f32(vsubq_f32(v87, v12), v25);
            v99 = vcvtq_s32_f32(v98);
            *v96.f32 = vadd_s32(*v97.i8, *&vcgtq_f32(vcvtq_f32_s32(v97), v96));
            *v98.f32 = vadd_s32(*v99.i8, *&vcgtq_f32(vcvtq_f32_s32(v99), v98));
            *v99.i8 = vdup_n_s32(v94);
            *v98.f32 = vmla_s32(vzip1_s32(*v96.f32, *v98.f32), vzip2_s32(*v96.f32, *v98.f32), *v99.i8);
            v100 = v98.i32[1];
            v42 = *(v93 + 16 * v98.i32[0]);
            v45 = *(v93 + 16 * v100);
            v101 = vaddq_f32(vsubq_f32(v89, v12), v25);
            v102 = vcvtq_s32_f32(v101);
            v103 = vaddq_f32(vsubq_f32(v91, v12), v25);
            v104 = vcvtq_s32_f32(v103);
            *v103.f32 = vadd_s32(*v104.i8, *&vcgtq_f32(vcvtq_f32_s32(v104), v103));
            *v101.f32 = vadd_s32(*v102.i8, *&vcgtq_f32(vcvtq_f32_s32(v102), v101));
            *v103.f32 = vmla_s32(vzip1_s32(*v101.f32, *v103.f32), vzip2_s32(*v101.f32, *v103.f32), *v99.i8);
            v105 = v103.i32[1];
            v53 = *(v93 + 16 * v103.i32[0]);
            v56 = *(v93 + 16 * v105);
            v106 = (a2 + 104);
            v107 = vaddq_f32(vsubq_f32(v86, v12), v25);
            v108 = vcvtq_s32_f32(v107);
            v109 = vaddq_f32(vsubq_f32(v88, v12), v25);
            v110 = vcvtq_s32_f32(v109);
            *v109.f32 = vadd_s32(*v110.i8, *&vcgtq_f32(vcvtq_f32_s32(v110), v109));
            *v107.f32 = vadd_s32(*v108.i8, *&vcgtq_f32(vcvtq_f32_s32(v108), v107));
            *v110.i8 = vld1_dup_f32(v106);
            *v109.f32 = vmla_s32(vzip1_s32(*v107.f32, *v109.f32), vzip2_s32(*v107.f32, *v109.f32), *v110.i8);
            LODWORD(v106) = v109.i32[1];
            v111 = *(a2 + 12);
            v67 = *(v111 + 16 * v109.i32[0]);
            v70 = *(v111 + 16 * v106);
            v112 = vaddq_f32(vsubq_f32(v90, v12), v25);
            v113 = vcvtq_s32_f32(v112);
            v114 = vaddq_f32(vsubq_f32(v92, v12), v25);
            v115 = vcvtq_s32_f32(v114);
            *v114.f32 = vadd_s32(*v115.i8, *&vcgtq_f32(vcvtq_f32_s32(v115), v114));
            *v112.f32 = vadd_s32(*v113.i8, *&vcgtq_f32(vcvtq_f32_s32(v113), v112));
            *v114.f32 = vmla_s32(vzip1_s32(*v112.f32, *v114.f32), vzip2_s32(*v112.f32, *v114.f32), *v110.i8);
            LODWORD(v106) = v114.i32[1];
            v77 = *(v111 + 16 * v114.i32[0]);
            v80 = *(v111 + 16 * v106);
          }

          v30 = vaddq_f32(v30, _Q4);
          v81 = v82[2];
          v31[-2] = vaddq_f32(v42, vmulq_f32(vsubq_f32(v67, v42), v81));
          v31[-1] = vaddq_f32(v45, vmulq_f32(vsubq_f32(v70, v45), v81));
          *v31 = vaddq_f32(v53, vmulq_f32(vsubq_f32(v77, v53), v81));
          v31[1] = vaddq_f32(v56, vmulq_f32(v81, vsubq_f32(v80, v56)));
          v31 += 4;
          v29 += 4;
        }
      }

      __asm { FMOV            V17.4S, #1.0 }

      if (v29 < v15)
      {
        if (v5)
        {
          do
          {
            v117 = this[51];
            v118 = v117[2];
            v119 = vaddq_f32(v28, vmulq_f32(v30, v117[7]));
            v120 = *(a2 + 22);
            v121 = vsubq_f32(vaddq_f32(v27, vmulq_f32(v30, v117[3])), v12);
            v122 = vaddq_s32(vcvtq_s32_f32(v121), vcltzq_f32(v121));
            v121.i64[0] = vsubq_f32(v121, vcvtq_f32_s32(v122)).u64[0];
            v123 = (*(a2 + 10) + 16 * (v122.i32[0] + v122.i32[1] * v120));
            v124 = *v123;
            v125 = vsubq_f32(v123[1], *v123);
            v126 = &v123[v120];
            v127 = vsubq_f32(v119, v12);
            v128 = vaddq_s32(vcvtq_s32_f32(v127), vcltzq_f32(v127));
            v127.i64[0] = vsubq_f32(v127, vcvtq_f32_s32(v128)).u64[0];
            v129 = vaddq_f32(v124, vmulq_n_f32(v125, v121.f32[0]));
            v130 = *(a2 + 26);
            v131 = vaddq_f32(*v126, vmulq_n_f32(vsubq_f32(v126[1], *v126), v121.f32[0]));
            v132 = (*(a2 + 12) + 16 * (v128.i32[0] + v128.i32[1] * v130));
            v133 = vaddq_f32(*v132, vmulq_n_f32(vsubq_f32(v132[1], *v132), v127.f32[0]));
            v134 = vaddq_f32(v129, vmulq_lane_f32(vsubq_f32(v131, v129), *v121.f32, 1));
            v17[v29] = vaddq_f32(v134, vmulq_f32(v118, vsubq_f32(vaddq_f32(v133, vmulq_lane_f32(vsubq_f32(vaddq_f32(v132[v130], vmulq_n_f32(vsubq_f32(v132[v130 + 1], v132[v130]), v127.f32[0])), v133), *v127.f32, 1)), v134)));
            v30 = vaddq_f32(v30, _Q17);
            ++v29;
          }

          while (v29 < v15);
        }

        else
        {
          do
          {
            v135 = this[51];
            v136 = vaddq_f32(vsubq_f32(vaddq_f32(v27, vmulq_f32(v30, v135[3])), v12), v25);
            v137 = vcvtq_s32_f32(v136);
            v136.i64[0] = vaddq_s32(v137, vcgtq_f32(vcvtq_f32_s32(v137), v136)).u64[0];
            v138 = v136.i32[1];
            v139 = v136.i32[0];
            v140 = vaddq_f32(vsubq_f32(vaddq_f32(v28, vmulq_f32(v30, v135[7])), v12), v25);
            v141 = vcvtq_s32_f32(v140);
            v140.i64[0] = vaddq_s32(v141, vcgtq_f32(vcvtq_f32_s32(v141), v140)).u64[0];
            v142 = *(*(a2 + 10) + 16 * (v139 + v138 * *(a2 + 22)));
            v17[v29] = vaddq_f32(v142, vmulq_f32(v135[2], vsubq_f32(*(*(a2 + 12) + 16 * (v140.i32[0] + v140.i32[1] * *(a2 + 26))), v142)));
            v30 = vaddq_f32(v30, _Q17);
            ++v29;
          }

          while (v29 < v15);
        }
      }

      v13 = vaddq_f32(v13, _Q17);
      ++v8;
      v18 = (v18 + v19);
      v17 = (v17 + v19);
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HGLodBlend2::GetDOD(HGLodBlend2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      v5 = HGRectGrow(v5, v4, v14);
      v4 = v15;
    }

    HGTransform::HGTransform(v22);
    HGTransform::LoadMatrixf(v22, (*(this + 51) + 112));
    HGTransform::Invert2D(v22);
    v17 = HGTransformUtils::MinW(v16);
    *&v24.var0 = v4;
    DOD = HGTransformUtils::GetDOD(v22, v5, v24, 0.5, v17);
    v13 = HGRectUnion(0, 0, DOD, v19);
  }

  else
  {
    if (a3)
    {
      return 0;
    }

    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      v5 = HGRectGrow(v5, v4, v7);
      v4 = v8;
    }

    HGTransform::HGTransform(v22);
    HGTransform::LoadMatrixf(v22, (*(this + 51) + 48));
    HGTransform::Invert2D(v22);
    v10 = HGTransformUtils::MinW(v9);
    *&v23.var0 = v4;
    v11 = HGTransformUtils::GetDOD(v22, v5, v23, 0.5, v10);
    v13 = HGRectUnion(0, 0, v11, v12);
  }

  v20 = v13;
  HGTransform::~HGTransform(v22);
  return v20;
}

uint64_t HGLodBlend2::GetROI(HGLodBlend2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v8 = 0;
  if (a3 == 1)
  {
    HGTransform::HGTransform(v22);
    HGTransform::LoadMatrixf(v22, (*(this + 51) + 112));
    v16 = HGTransformUtils::MinW(v15);
    *&v24.var0 = v4;
    ROI = HGTransformUtils::GetROI(v22, v5, v24, 0.5, v16);
    v13 = HGRectUnion(0, 0, ROI, v18);
  }

  else
  {
    if (a3)
    {
      return v8;
    }

    HGTransform::HGTransform(v22);
    HGTransform::LoadMatrixf(v22, (*(this + 51) + 48));
    v10 = HGTransformUtils::MinW(v9);
    *&v23.var0 = v4;
    v11 = HGTransformUtils::GetROI(v22, v5, v23, 0.5, v10);
    v13 = HGRectUnion(0, 0, v11, v12);
  }

  v8 = v13;
  v19 = v14;
  HGTransform::~HGTransform(v22);
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v20 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v8, v19, v20);
  }

  return v8;
}

void HGLodBlend2::HGLodBlend2(HGLodBlend2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28720EEC8;
  *(v1 + 416) = 1;
  operator new();
}

void HGLodBlend2::~HGLodBlend2(HGLodBlend2 *this)
{
  *this = &unk_28720EEC8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40104B78CFLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HGLodBlend2::~HGLodBlend2(HGNode *this)
{
  *this = &unk_28720EEC8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40104B78CFLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGLodBlend2::SetParameter(HGLodBlend2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HGLodBlend2::GetParameter(HGLodBlend2 *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

int8x8_t HGLodBlend2::GetOutput(uint64_t a1)
{
  if (*(a1 + 416))
  {
    v1 = *(a1 + 408);
    v2 = *v1;
    v3 = *(v1 + 192);
    v4 = vextq_s8(v2, v2, 8uLL).u64[0];
    *&v5 = vmul_f32(*v1, *(v1 + 176));
    v6 = *(v1 + 224);
    *(&v5 + 1) = vand_s8(*&vextq_s8(*(v1 + 240), *(v1 + 240), 8uLL), *&v5);
    *(v1 + 48) = v5;
    *&v5 = vmul_f32(*v2.i8, *&v3);
    v7 = *(a1 + 408);
    *(&v5 + 1) = vand_s8(*&vextq_s8(*(v7 + 240), *(v7 + 240), 8uLL), *&v5);
    *(v7 + 64) = v5;
    *v2.i8 = vmul_f32(*v2.i8, *&v6);
    v8 = *(a1 + 408);
    *&v3 = vadd_f32(v4, *v2.i8);
    v2.u64[1] = vbsl_s8(*(v8 + 240), *v2.i8, *&vextq_s8(*(v8 + 208), *(v8 + 208), 8uLL));
    *(v8 + 80) = v2;
    v9 = *(a1 + 408);
    *(&v3 + 1) = vbsl_s8(*(v9 + 240), *&v3, *&vextq_s8(*(v9 + 224), *(v9 + 224), 8uLL));
    *(v9 + 96) = v3;
    v10 = *(a1 + 408);
    v11 = *(v10 + 16);
    v12 = *(v10 + 192);
    *&v5 = vmul_f32(*v11.i8, *(v10 + 176));
    v13 = *(v10 + 224);
    *(&v5 + 1) = vand_s8(*&vextq_s8(*(v10 + 240), *(v10 + 240), 8uLL), *&v5);
    *&v6 = vextq_s8(v11, v11, 8uLL).u64[0];
    *(v10 + 112) = v5;
    *&v5 = vmul_f32(*v11.i8, *&v12);
    v14 = *(a1 + 408);
    *(&v5 + 1) = vand_s8(*&vextq_s8(*(v14 + 240), *(v14 + 240), 8uLL), *&v5);
    *(v14 + 128) = v5;
    *v11.i8 = vmul_f32(*v11.i8, *&v13);
    v15 = *(a1 + 408);
    *&v12 = vadd_f32(*&v6, *v11.i8);
    v11.u64[1] = vbsl_s8(*(v15 + 240), *v11.i8, *&vextq_s8(*(v15 + 208), *(v15 + 208), 8uLL));
    *(v15 + 144) = v11;
    v16 = *(a1 + 408);
    result = vbsl_s8(*(v16 + 240), *&v12, *&vextq_s8(*(v16 + 224), *(v16 + 224), 8uLL));
    *(&v12 + 1) = result;
    *(v16 + 160) = v12;
    *(a1 + 416) = 0;
  }

  return result;
}

void HGMipmap::HGMipmap(HGMipmap *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28720F370;
  HGTransform::HGTransform((v2 + 56));
  HGTransform::HGTransform((this + 592));
  v3 = HGObject::operator new(0x1B0uLL);
  HGLodBlend2::HGLodBlend2(v3);
}

void sub_25FBF5A14(_Unwind_Exception *a1)
{
  v3 = v2;
  HGObject::operator delete(v3);
  HGTransform::~HGTransform((v1 + 592));
  HGTransform::~HGTransform((v1 + 448));
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMipmap::~HGMipmap(HGMipmap *this)
{
  *this = &unk_28720F370;
  if (*(this + 107))
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 52) + 8 * v2);
      (*(*v3 + 120))(v3, 0, 0);
      v4 = *(*(this + 52) + 8 * v2);
      (*(*v4 + 24))(v4);
      ++v2;
    }

    while (v2 < *(this + 107));
    free(*(this + 52));
  }

  (*(**(this + 51) + 24))(*(this + 51));
  HGTransform::~HGTransform((this + 592));
  HGTransform::~HGTransform((this + 448));

  HGNode::~HGNode(this);
}

{
  HGMipmap::~HGMipmap(this);

  HGObject::operator delete(v1);
}

uint64_t HGMipmap::SetTransform(float64x2_t *this, HGTransform *a2, HGTransform *a3, float a4)
{
  if (!HGTransform::IsEqual(&this[28], a2))
  {
    HGTransform::LoadTransform(&this[28], a2);
    v8 = 1;
    v9 = &this[37];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    HGTransform::LoadTransform(v9, &this[28]);
    HGTransform::Invert2D(this + 37);
    goto LABEL_6;
  }

  v8 = 0;
  v9 = &this[37];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  HGTransform::LoadTransform(v9, a3);
LABEL_6:
  *this[46].f64 = a4;
  return v8;
}

uint64_t HGMipmap::SetParameter(HGMipmap *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 108) == a3)
  {
    return 0;
  }

  *(this + 108) = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HGMipmap::SetInput(HGNode *this, int a2, HGNode *a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = HGNode::SetInput(this, a2, a3);
  if (result == 1)
  {
    *(this + 109) = 1;
  }

  return result;
}

uint64_t HGMipmap::SetLodFilter(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a1 + 440) == a2)
  {
    return 0;
  }

  *(a1 + 440) = a2;
  HGNode::ClearBits(a1, a2, a3);
  return 1;
}

HGNode *HGMipmap::GetLevelOfDetail(HGMipmap *this, HGRenderer *a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  result = HGRenderer::GetInput(a2, this, 0);
  if (!result)
  {
    return result;
  }

  Input = result;
  DOD = 0;
  v9 = 0;
  v30 = 0uLL;
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target <= 0x6043F && Target - 394016 >= 0xF0)
  {
    MatrixPtr = HGTransform::GetMatrixPtr((this + 592));
    if (*(this + 184) > 1.0)
    {
      if (MatrixPtr[3] != 0.0 || MatrixPtr[7] != 0.0 || (MatrixPtr[11] == 0.0 ? (v12 = *MatrixPtr * *MatrixPtr + MatrixPtr[1] * MatrixPtr[1] == MatrixPtr[4] * MatrixPtr[4] + MatrixPtr[5] * MatrixPtr[5]) : (v12 = 0), !v12))
      {
        v13 = HGObject::operator new(0x1B0uLL);
        HGLodPreFilter::HGLodPreFilter(v13, this, 0);
        (*(*v13 + 120))(v13, 0, Input);
        v14 = HGObject::operator new(0x1B0uLL);
        HGLodPreFilter::HGLodPreFilter(v14, this, 1);
        (*(*v14 + 120))(v14, 0, v13);
        (*(*v13 + 24))(v13);
        v15 = 0;
        if (!*(this + 109))
        {
          goto LABEL_20;
        }

LABEL_21:
        DOD = HGRenderer::GetDOD(a2, Input);
        v9 = v17;
        *(this + 740) = DOD;
        *(this + 748) = v17;
        goto LABEL_22;
      }
    }
  }

  if (*(Input + 3) != -1814136143)
  {
    v14 = 0;
    v15 = 1;
    if (!*(this + 109))
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  TextureWrapMode = HGTextureWrap::GetTextureWrapMode(Input);
  HGTextureWrap::GetTextureBorderColor(Input, v30.f32);
  v14 = 0;
  v15 = 1;
  if (!TextureWrapMode && (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqzq_f32(v30))) & 0xF) == 0)
  {
    Input = HGRenderer::GetInput(a2, Input, 0);
    v14 = 0;
  }

  if (*(this + 109))
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*(this + 107) <= a3)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (!v15)
  {
    Input = v14;
  }

  if (!*(this + 106))
  {
    *(this + 106) = 8;
    *(this + 52) = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
    v18 = HGObject::operator new(0x250uLL);
    HGLodFilter::HGLodFilter(v18);
  }

  if (*(this + 109))
  {
    (*(***(this + 52) + 120))(**(this + 52), 0, Input);
    HGLodFilter::SetLevel(**(this + 52), DOD, v9, DOD, v9, 0, 0);
    if (*(this + 107) >= 2u)
    {
      v19 = 0;
      do
      {
        v20 = *(this + 52) + 8 * v19;
        v21 = *(v20 + 8);
        v22 = HGRenderer::GetDOD(a2, *v20);
        HGLodFilter::SetLevel(v21, DOD, v9, v22, v23, v19 + 1, *(this + 110));
        v24 = v19 + 2;
        ++v19;
      }

      while (v24 < *(this + 107));
    }

    *(this + 109) = 0;
  }

  if ((v15 & 1) == 0)
  {
    (*(*v14 + 24))(v14);
  }

  v25 = *(this + 107);
  if (v25 <= a3)
  {
    v26 = *(this + 106);
    if (v26 <= v25)
    {
      v27 = *(this + 52);
      v28 = v26 + 8;
      *(this + 106) = v28;
      *(this + 52) = malloc_type_realloc(v27, 8 * v28, 0x2004093837F09uLL);
    }

    v29 = HGObject::operator new(0x250uLL);
    HGLodFilter::HGLodFilter(v29);
  }

  return *(*(this + 52) + 8 * a3);
}

uint64_t HGMipmap::GetOutput(HGMipmap *this, HGRenderer *a2)
{
  if (*(this + 108) >= 0.0)
  {
    v5 = *(this + 108);
  }

  else
  {
    v5 = 0.0;
  }

  LODWORD(v2) = vcvtms_s32_f32(v5);
  v6 = (*(*this + 584))(this, a2, v2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  HGTransform::HGTransform(v30);
  (*(*v7 + 576))(v21, v7, 0);
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  HGTransform::~HGTransform(v21);
  MatrixPtr = HGTransform::GetMatrixPtr(v30);
  (*(**(this + 51) + 120))(*(this + 51), 0, v7);
  v9 = *MatrixPtr;
  v10 = MatrixPtr[5];
  v11 = MatrixPtr[12];
  v12 = MatrixPtr[13];
  (*(**(this + 51) + 96))(*(this + 51), 0, v9, v10, v11, v12);
  v13 = (*(*this + 584))(this, a2, (v2 + 1));
  (*(*v13 + 576))(v21);
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  HGTransform::~HGTransform(v21);
  v14 = HGTransform::GetMatrixPtr(v30);
  (*(**(this + 51) + 120))(*(this + 51), 1, v13);
  v15 = *v14;
  v16 = v14[5];
  v17 = v14[12];
  v18 = v14[13];
  (*(**(this + 51) + 96))(*(this + 51), 1, v15, v16, v17, v18);
  (*(**(this + 51) + 96))(*(this + 51), 2, v5 - v2, v5 - v2, v5 - v2, v5 - v2);
  v19 = *(this + 51);
  HGTransform::~HGTransform(v30);
  return v19;
}

uint64_t HGMipmap::GetRect(HGMipmap *this, unsigned int a2, HGRect a3, char a4, int a5)
{
  if (*(this + 107) <= a2)
  {
    return 0;
  }

  if (a4)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v7 = 0;
      v8 = 8 * (a2 + 1);
      do
      {
        *&a3.var0 = HGLodFilter::GetRect(*(*(this + 52) + v7), a3, 1, a5);
        *&a3.var2 = v9;
        v7 += 8;
      }

      while (v8 != v7);
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
    v11 = 8 * a2;
    do
    {
      *&a3.var0 = HGLodFilter::GetRect(*(*(this + 52) + v11), a3, 0, a5);
      *&a3.var2 = v12;
      v11 -= 8;
    }

    while (v11 != -8);
  }

  return *&a3.var0;
}

void HGMipmap::GetTransform(HGMipmap *this@<X0>, int a2@<W1>, uint64_t a3@<X2>, HGTransform *a4@<X8>)
{
  if (*(this + 107) <= a2)
  {
    HGTransform::HGTransform(a4);
  }

  else
  {
    v4 = *(*(this + 52) + 8 * a2);
    (*(*v4 + 576))(v4, a3);
  }
}

void soMaxFlow::~soMaxFlow(HGMemory ***this, void *a2)
{
  *this = &unk_28720F628;
  if (this[1])
  {
    soMaxFlow::Impl::~Impl(this[1], a2);
    MEMORY[0x2666E9F00]();
  }
}

{
  *this = &unk_28720F628;
  if (this[1])
  {
    soMaxFlow::Impl::~Impl(this[1], a2);
    MEMORY[0x2666E9F00]();
  }

  JUMPOUT(0x2666E9F00);
}

double soMaxFlow::Reset(soMaxFlow *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 68) * *(v1 + 64);
  bzero(*v1, v2 << 6);
  bzero(*(v1 + 8), 8 * v2);
  memset(*(v1 + 16), 255, v2);
  bzero(*(v1 + 24), v2);
  memset(*(v1 + 32), 255, v2);
  v2 *= 4;
  memset(*(v1 + 40), 255, v2);
  bzero(*(v1 + 48), v2);
  *(v1 + 72) = 0;
  result = NAN;
  *(v1 + 80) = -1;
  *(v1 + 104) = *(v1 + 96);
  return result;
}

float soMaxFlow::Impl::solve(HGProfiler **this)
{
  HGProfiler::start(this[11]);
  this[10] = -1;
  v2 = *(this + 16);
  v3 = *(this + 17);
  if (v3 * v2 >= 1)
  {
    v4 = 0;
    do
    {
      if (*(this[3] + v4))
      {
        *(this[2] + v4) = -2;
        *(this[1] + v4) = 1;
        v5 = *(this + 21);
        if ((v5 & 0x80000000) != 0)
        {
          *(this + 20) = v4;
        }

        else
        {
          *(this[5] + v5) = v4;
        }

        *(this + 21) = v4;
        v2 = *(this + 16);
        v3 = *(this + 17);
      }

      ++v4;
    }

    while (v4 < v3 * v2);
  }

  while (1)
  {
    v20 = -1;
    soMaxFlow::Impl::GrowthStage(this, &v20);
    v6 = v20;
    if ((v20 & 0x80000000) != 0)
    {
      break;
    }

    v7 = HIDWORD(v20);
    if (v20 < 0)
    {
      break;
    }

    ++*(this + 18);
    v8 = this[2];
    v9 = *this;
    if (*(v8 + v6) < 0)
    {
      v11 = 3.4028e38;
      v12 = v6;
    }

    else
    {
      v10 = *(v8 + v6);
      v11 = 3.4028e38;
      v12 = v6;
      do
      {
        v12 = *(v9 + 16 * v12 + v10 + 8);
        v11 = fminf(v11, *(v9 + 16 * v12 + (v10 & 7 ^ 4)));
        v10 = *(v8 + v12);
      }

      while ((*(v8 + v12) & 0x80000000) == 0);
    }

    v13 = this[6];
    v14 = v9 + 64 * v6 + 4 * v7;
    v15 = fminf(fminf(v11, fabsf(*(v13 + v12))), *v14);
    v16 = *(v14 + 32);
    if ((*(v8 + v16) & 0x80000000) == 0)
    {
      v17 = *(v8 + v16);
      do
      {
        v18 = v9 + 64 * v16 + 4 * v17;
        v15 = fminf(v15, *v18);
        v16 = *(v18 + 32);
        v17 = *(v8 + v16);
      }

      while ((*(v8 + v16) & 0x80000000) == 0);
    }

    soMaxFlow::Impl::UpdateFlow(this, &v20, fminf(v15, fabsf(*(v13 + v16))));
    soMaxFlow::Impl::AdoptionStage(this);
  }

  HGProfiler::stop(this[11]);
  return *(this + 19);
}

uint64_t soMaxFlow::SetNodeWeights(soMaxFlow *this, int a2, int a3, float a4, float a5)
{
  v5 = *(this + 1);
  v6 = ((a2 + (*(v5 + 56) >> 1)) & 7 | ((a2 + (*(v5 + 56) >> 1)) >> 3 << 6)) + ((a3 + (*(v5 + 60) >> 1)) & 0xFFFFFFF8) * *(v5 + 64) + 8 * ((a3 + (*(v5 + 60) >> 1)) & 7);
  *(*(v5 + 48) + 4 * v6) = a4 - a5;
  if ((a4 - a5) != 0.0)
  {
    if ((a4 - a5) > 0.0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *(*(v5 + 24) + v6) = v7;
  }

  if (a4 >= a5)
  {
    a4 = a5;
  }

  *(v5 + 76) = a4 + *(v5 + 76);
  return 1;
}

uint64_t soMaxFlow::SetEdgeCapacity(uint64_t a1, int a2, int a3, int a4, float a5)
{
  v5 = *(a1 + 8);
  v6 = ((a3 + (*(v5 + 56) >> 1)) & 7 | ((a3 + (*(v5 + 56) >> 1)) >> 3 << 6)) + ((a4 + (*(v5 + 60) >> 1)) & 0xFFFFFFF8) * *(v5 + 64) + 8 * ((a4 + (*(v5 + 60) >> 1)) & 7);
  v7 = v6 << 6;
  v8 = 4 * a2;
  *(*v5 + v7 + v8) = a5;
  *(*(v5 + 32) + v6) = *(*(v5 + 32) + v6) & ~(1 << a2) | ((a5 == 0.0) << a2);
  v9 = *(&Edge::OffsetX + v8) + a3 + (*(v5 + 56) >> 1);
  v10 = *(&Edge::OffsetY + v8) + a4 + (*(v5 + 60) >> 1);
  *(*v5 + v8 + v7 + 32) = (v9 & 7 | (v9 >> 3 << 6)) + (v10 & 0xFFFFFFF8) * *(v5 + 64) + 8 * (v10 & 7);
  return 1;
}

uint64_t soMaxFlow::StoreGraphCutToMask(uint64_t this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned __int8 a8, char a9)
{
  v9 = *(this + 8);
  if (*(v9 + 64) - *(v9 + 56) == a3 && a4 && *(v9 + 68) - *(v9 + 60) == a4 && a3 != 0)
  {
    for (i = 0; i != a4; ++i)
    {
      v12 = 0;
      do
      {
        v13 = a2[v12];
        if (v13 >= a6 && v13 <= a7)
        {
          if (*(*(v9 + 24) + (((v12 + (*(v9 + 56) >> 1)) & 7 | ((v12 + (*(v9 + 56) >> 1)) >> 3 << 6)) + ((i + (*(v9 + 60) >> 1)) & 0xFFFFFFF8) * *(v9 + 64) + 8 * ((i + (*(v9 + 60) >> 1)) & 7))) == 1)
          {
            v15 = a9;
          }

          else
          {
            v15 = a8;
          }

          a2[v12] = v15;
        }

        ++v12;
      }

      while (a3 != v12);
      a2 += a5;
    }
  }

  return this;
}

void soMaxFlow::Impl::Impl(soMaxFlow::Impl *this, int a2, unint64_t *a3)
{
  *(this + 12) = 0;
  *(this + 9) = 1;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v4 = 8 - (a2 & 7);
  v5 = 8 - (a3 & 7);
  *(this + 14) = v4;
  *(this + 15) = v5;
  if ((a2 & 7) == 7)
  {
    v4 = 9;
    *(this + 14) = 9;
  }

  if ((a3 & 7) == 7)
  {
    v5 = 9;
    *(this + 15) = 9;
  }

  v6 = v4 + a2;
  v7 = v5 + a3;
  *(this + 16) = v6;
  *(this + 17) = v7;
  v8 = v7 * v6;
  *this = HGMemory::allocate(((v7 * v6) << 6), 0, a3);
  *(this + 1) = HGMemory::allocate((8 * v8), 0, v9);
  *(this + 2) = HGMemory::allocate(v8, 0, v10);
  *(this + 3) = HGMemory::allocate(v8, 0, v11);
  *(this + 4) = HGMemory::allocate(v8, 0, v12);
  v13 = (4 * v8);
  *(this + 5) = HGMemory::allocate(v13, 0, v14);
  *(this + 6) = HGMemory::allocate(v13, 0, v15);
  v16 = *(this + 17) * *(this + 16);
  bzero(*this, v16 << 6);
  bzero(*(this + 1), 8 * v16);
  memset(*(this + 2), 255, v16);
  bzero(*(this + 3), v16);
  memset(*(this + 4), 255, v16);
  v16 *= 4;
  memset(*(this + 5), 255, v16);
  bzero(*(this + 6), v16);
  *(this + 9) = 0;
  *(this + 10) = -1;
  *(this + 13) = *(this + 12);
  operator new();
}

void sub_25FBF6E74(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x2666E9F00](v4, 0x1000C40451B5BE8);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void soMaxFlow::Impl::~Impl(HGMemory **this, void *a2)
{
  v3 = *this;
  if (v3)
  {
    HGMemory::release(v3, a2);
  }

  v4 = this[1];
  if (v4)
  {
    HGMemory::release(v4, a2);
  }

  v5 = this[2];
  if (v5)
  {
    HGMemory::release(v5, a2);
  }

  v6 = this[3];
  if (v6)
  {
    HGMemory::release(v6, a2);
  }

  v7 = this[4];
  if (v7)
  {
    HGMemory::release(v7, a2);
  }

  v8 = this[5];
  if (v8)
  {
    HGMemory::release(v8, a2);
  }

  v9 = this[6];
  if (v9)
  {
    HGMemory::release(v9, a2);
  }

  v10 = this[11];
  if (v10)
  {
    MEMORY[0x2666E9F00](v10, 0x1000C40451B5BE8);
  }

  v11 = this[12];
  if (v11)
  {
    this[13] = v11;
    operator delete(v11);
  }
}

uint64_t soMaxFlow::Impl::GrowthStage(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 80);
  if ((v2 & 0x80000000) != 0)
  {
LABEL_101:
    *(result + 84) = v2;
    return result;
  }

  while (1)
  {
    v4 = *(result + 16);
    if (*(v4 + v2) == 255)
    {
      goto LABEL_4;
    }

    v5 = (*(result + 8) + 8 * v2);
    v6 = *(result + 24);
    v7 = *(result + 32);
    v8 = *(v6 + v2);
    v9 = *v5;
    v10 = v5[1];
    v11 = v9 + 1;
    v12 = *(*result + (v2 << 6) + 32);
    if (v8 == 2)
    {
      if ((*(v7 + v12) & 0x10) == 0)
      {
        if (*(v4 + v12) == 255)
        {
          *(v6 + v12) = 2;
          *(*(result + 16) + v12) = 4;
          v13 = (*(result + 8) + 8 * v12);
          *v13 = v11;
          v13[1] = v10;
          v14 = *(result + 40);
          if ((*(v14 + 4 * v12) & 0x80000000) != 0)
          {
            *(v14 + 4 * *(result + 84)) = v12;
            *(result + 84) = v12;
          }
        }

        else if (*(v6 + v12) != 2)
        {
          *a2 = v12;
          a2[1] = 4;
          return result;
        }
      }

      v15 = *(*result + (v2 << 6) + 36);
      if ((*(*(result + 32) + v15) & 0x20) == 0)
      {
        v16 = *(result + 24);
        if (*(*(result + 16) + v15) == 255)
        {
          *(v16 + v15) = 2;
          *(*(result + 16) + v15) = 5;
          v20 = (*(result + 8) + 8 * v15);
          *v20 = v11;
          v20[1] = v10;
          v21 = *(result + 40);
          if ((*(v21 + 4 * v15) & 0x80000000) != 0)
          {
            *(v21 + 4 * *(result + 84)) = v15;
            *(result + 84) = v15;
          }
        }

        else if (*(v16 + v15) != 2)
        {
          *a2 = v15;
          a2[1] = 5;
          return result;
        }
      }

      v22 = *(*result + (v2 << 6) + 40);
      if ((*(*(result + 32) + v22) & 0x40) == 0)
      {
        v23 = *(result + 24);
        if (*(*(result + 16) + v22) == 255)
        {
          *(v23 + v22) = 2;
          *(*(result + 16) + v22) = 6;
          v26 = (*(result + 8) + 8 * v22);
          *v26 = v11;
          v26[1] = v10;
          v27 = *(result + 40);
          if ((*(v27 + 4 * v22) & 0x80000000) != 0)
          {
            *(v27 + 4 * *(result + 84)) = v22;
            *(result + 84) = v22;
          }
        }

        else if (*(v23 + v22) != 2)
        {
          *a2 = v22;
          a2[1] = 6;
          return result;
        }
      }

      v28 = *(*result + (v2 << 6) + 44);
      if ((*(*(result + 32) + v28) & 0x80000000) == 0)
      {
        v29 = *(result + 24);
        if (*(*(result + 16) + v28) == 255)
        {
          *(v29 + v28) = 2;
          *(*(result + 16) + v28) = 7;
          v30 = (*(result + 8) + 8 * v28);
          *v30 = v11;
          v30[1] = v10;
          v31 = *(result + 40);
          if ((*(v31 + 4 * v28) & 0x80000000) != 0)
          {
            *(v31 + 4 * *(result + 84)) = v28;
            *(result + 84) = v28;
          }
        }

        else if (*(v29 + v28) != 2)
        {
          *a2 = v28;
          a2[1] = 7;
          return result;
        }
      }

      v32 = *(*result + (v2 << 6) + 48);
      if ((*(*(result + 32) + v32) & 1) == 0)
      {
        v33 = *(result + 24);
        if (*(*(result + 16) + v32) == 255)
        {
          *(v33 + v32) = 2;
          *(*(result + 16) + v32) = 0;
          v34 = (*(result + 8) + 8 * v32);
          *v34 = v11;
          v34[1] = v10;
          v35 = *(result + 40);
          if ((*(v35 + 4 * v32) & 0x80000000) != 0)
          {
            *(v35 + 4 * *(result + 84)) = v32;
            *(result + 84) = v32;
          }
        }

        else if (*(v33 + v32) != 2)
        {
          *a2 = v32;
          a2[1] = 0;
          return result;
        }
      }

      v36 = *(*result + (v2 << 6) + 52);
      if ((*(*(result + 32) + v36) & 2) == 0)
      {
        v37 = *(result + 24);
        if (*(*(result + 16) + v36) == 255)
        {
          *(v37 + v36) = 2;
          *(*(result + 16) + v36) = 1;
          v38 = (*(result + 8) + 8 * v36);
          *v38 = v11;
          v38[1] = v10;
          v39 = *(result + 40);
          if ((*(v39 + 4 * v36) & 0x80000000) != 0)
          {
            *(v39 + 4 * *(result + 84)) = v36;
            *(result + 84) = v36;
          }
        }

        else if (*(v37 + v36) != 2)
        {
          *a2 = v36;
          a2[1] = 1;
          return result;
        }
      }

      v40 = *(*result + (v2 << 6) + 56);
      if ((*(*(result + 32) + v40) & 4) == 0)
      {
        v41 = *(result + 24);
        if (*(*(result + 16) + v40) == 255)
        {
          *(v41 + v40) = 2;
          *(*(result + 16) + v40) = 2;
          v42 = (*(result + 8) + 8 * v40);
          *v42 = v11;
          v42[1] = v10;
          v43 = *(result + 40);
          if ((*(v43 + 4 * v40) & 0x80000000) != 0)
          {
            *(v43 + 4 * *(result + 84)) = v40;
            *(result + 84) = v40;
          }
        }

        else if (*(v41 + v40) != 2)
        {
          *a2 = v40;
          a2[1] = 2;
          return result;
        }
      }

      v12 = *(*result + (v2 << 6) + 60);
      if ((*(*(result + 32) + v12) & 8) == 0)
      {
        v44 = *(result + 24);
        if (*(*(result + 16) + v12) == 255)
        {
          *(v44 + v12) = 2;
          *(*(result + 16) + v12) = 3;
          v45 = (*(result + 8) + 8 * v12);
          *v45 = v11;
          v45[1] = v10;
          v46 = *(result + 40);
          if ((*(v46 + 4 * v12) & 0x80000000) != 0)
          {
            goto LABEL_100;
          }
        }

        else if (*(v44 + v12) != 2)
        {
          *a2 = v12;
          a2[1] = 3;
          return result;
        }
      }

      goto LABEL_4;
    }

    if ((*(v7 + v2) & 1) == 0)
    {
      if (*(v4 + v12) == 255)
      {
        *(v6 + v12) = v8;
        *(*(result + 16) + v12) = 4;
        v17 = (*(result + 8) + 8 * v12);
        *v17 = v11;
        v17[1] = v10;
        v18 = *(result + 40);
        if ((*(v18 + 4 * v12) & 0x80000000) != 0)
        {
          *(v18 + 4 * *(result + 84)) = v12;
          *(result + 84) = v12;
          if ((*(*(result + 32) + v2) & 2) != 0)
          {
            goto LABEL_67;
          }

          goto LABEL_23;
        }
      }

      else if (*(v6 + v12) != v8)
      {
        v64 = 0;
        if (*(v6 + v2) == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_117;
      }
    }

    if ((*(*(result + 32) + v2) & 2) != 0)
    {
      goto LABEL_67;
    }

LABEL_23:
    v12 = *(*result + (v2 << 6) + 36);
    v19 = *(result + 24);
    if (*(*(result + 16) + v12) == 255)
    {
      *(v19 + v12) = v8;
      *(*(result + 16) + v12) = 5;
      v24 = (*(result + 8) + 8 * v12);
      *v24 = v11;
      v24[1] = v10;
      v25 = *(result + 40);
      if ((*(v25 + 4 * v12) & 0x80000000) != 0)
      {
        *(v25 + 4 * *(result + 84)) = v12;
        *(result + 84) = v12;
      }
    }

    else if (*(v19 + v12) != v8)
    {
      v64 = 1;
      if (v8 == 1)
      {
        goto LABEL_115;
      }

      goto LABEL_117;
    }

LABEL_67:
    if ((*(*(result + 32) + v2) & 4) == 0)
    {
      v12 = *(*result + (v2 << 6) + 40);
      v47 = *(result + 24);
      if (*(*(result + 16) + v12) == 255)
      {
        *(v47 + v12) = v8;
        *(*(result + 16) + v12) = 6;
        v48 = (*(result + 8) + 8 * v12);
        *v48 = v11;
        v48[1] = v10;
        v49 = *(result + 40);
        if ((*(v49 + 4 * v12) & 0x80000000) != 0)
        {
          *(v49 + 4 * *(result + 84)) = v12;
          *(result + 84) = v12;
          if ((*(*(result + 32) + v2) & 8) != 0)
          {
            goto LABEL_79;
          }

          goto LABEL_73;
        }
      }

      else if (*(v47 + v12) != v8)
      {
        v64 = 2;
        if (v8 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_117;
      }
    }

    if ((*(*(result + 32) + v2) & 8) != 0)
    {
      goto LABEL_79;
    }

LABEL_73:
    v12 = *(*result + (v2 << 6) + 44);
    v50 = *(result + 24);
    if (*(*(result + 16) + v12) == 255)
    {
      *(v50 + v12) = v8;
      *(*(result + 16) + v12) = 7;
      v51 = (*(result + 8) + 8 * v12);
      *v51 = v11;
      v51[1] = v10;
      v52 = *(result + 40);
      if ((*(v52 + 4 * v12) & 0x80000000) != 0)
      {
        *(v52 + 4 * *(result + 84)) = v12;
        *(result + 84) = v12;
      }
    }

    else if (*(v50 + v12) != v8)
    {
      v64 = 3;
      if (v8 == 1)
      {
        goto LABEL_115;
      }

      goto LABEL_117;
    }

LABEL_79:
    if ((*(*(result + 32) + v2) & 0x10) == 0)
    {
      v12 = *(*result + (v2 << 6) + 48);
      v53 = *(result + 24);
      if (*(*(result + 16) + v12) == 255)
      {
        *(v53 + v12) = v8;
        *(*(result + 16) + v12) = 0;
        v54 = (*(result + 8) + 8 * v12);
        *v54 = v11;
        v54[1] = v10;
        v55 = *(result + 40);
        if ((*(v55 + 4 * v12) & 0x80000000) != 0)
        {
          *(v55 + 4 * *(result + 84)) = v12;
          *(result + 84) = v12;
          if ((*(*(result + 32) + v2) & 0x20) != 0)
          {
            goto LABEL_91;
          }

          goto LABEL_85;
        }
      }

      else if (*(v53 + v12) != v8)
      {
        v64 = 4;
        if (v8 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_117;
      }
    }

    if ((*(*(result + 32) + v2) & 0x20) != 0)
    {
      goto LABEL_91;
    }

LABEL_85:
    v12 = *(*result + (v2 << 6) + 52);
    v56 = *(result + 24);
    if (*(*(result + 16) + v12) == 255)
    {
      *(v56 + v12) = v8;
      *(*(result + 16) + v12) = 1;
      v57 = (*(result + 8) + 8 * v12);
      *v57 = v11;
      v57[1] = v10;
      v58 = *(result + 40);
      if ((*(v58 + 4 * v12) & 0x80000000) != 0)
      {
        *(v58 + 4 * *(result + 84)) = v12;
        *(result + 84) = v12;
      }
    }

    else if (*(v56 + v12) != v8)
    {
      v64 = 5;
      if (v8 != 1)
      {
        goto LABEL_117;
      }

      goto LABEL_115;
    }

LABEL_91:
    if ((*(*(result + 32) + v2) & 0x40) == 0)
    {
      v12 = *(*result + (v2 << 6) + 56);
      v59 = *(result + 24);
      if (*(*(result + 16) + v12) == 255)
      {
        *(v59 + v12) = v8;
        *(*(result + 16) + v12) = 2;
        v60 = (*(result + 8) + 8 * v12);
        *v60 = v11;
        v60[1] = v10;
        v61 = *(result + 40);
        if ((*(v61 + 4 * v12) & 0x80000000) != 0)
        {
          *(v61 + 4 * *(result + 84)) = v12;
          *(result + 84) = v12;
        }
      }

      else if (*(v59 + v12) != v8)
      {
        v64 = 6;
        if (v8 != 1)
        {
          goto LABEL_117;
        }

LABEL_115:
        *a2 = v2;
        a2[1] = v64;
        return result;
      }
    }

    if (*(*(result + 32) + v2) < 0)
    {
      goto LABEL_4;
    }

    v12 = *(*result + (v2 << 6) + 60);
    v62 = *(result + 24);
    if (*(*(result + 16) + v12) != 255)
    {
      break;
    }

    *(v62 + v12) = v8;
    *(*(result + 16) + v12) = 3;
    v63 = (*(result + 8) + 8 * v12);
    *v63 = v11;
    v63[1] = v10;
    v46 = *(result + 40);
    if ((*(v46 + 4 * v12) & 0x80000000) != 0)
    {
LABEL_100:
      *(v46 + 4 * *(result + 84)) = v12;
      *(result + 84) = v12;
    }

LABEL_4:
    v3 = *(result + 40);
    *(result + 80) = *(v3 + 4 * v2);
    *(v3 + 4 * v2) = -1;
    v2 = *(result + 80);
    if ((v2 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }
  }

  if (*(v62 + v12) == v8)
  {
    goto LABEL_4;
  }

  v64 = 7;
  if (v8 == 1)
  {
    goto LABEL_115;
  }

LABEL_117:
  *a2 = v12;
  a2[1] = v64 ^ 4;
  return result;
}

void soMaxFlow::Impl::AdoptionStage(soMaxFlow::Impl *this)
{
  for (i = *(this + 13); *(this + 12) != i; i = *(this + 13))
  {
    v5 = 0;
    v6 = *(i - 4);
    *(this + 13) = i - 4;
    v7 = *(this + 3);
    v8 = *(v7 + v6);
    v9 = *this;
    v10 = -1;
    v11 = 0x7FFFFFFF;
    v12 = *this + (v6 << 6);
    do
    {
      v13 = Edge::All[v5];
      LODWORD(v14) = *(v12 + 4 * v13 + 32);
      v15 = v14;
      v16 = *(v7 + v14);
      if (!*(v7 + v14))
      {
        goto LABEL_7;
      }

      if (v16 == 1)
      {
        if (((*(*(this + 4) + v14) >> (v13 & 7 ^ 4)) & 1) != 0 || v8 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (((*(*(this + 4) + v6) >> v13) & 1) != 0 || v8 != v16)
      {
        goto LABEL_7;
      }

      v17 = *(this + 2);
      v18 = *(v17 + v14);
      if (v18 == 255)
      {
        goto LABEL_7;
      }

      v19 = *(this + 1);
      v20 = *(this + 18);
      v21 = v19 + 8 * v14;
      v23 = *(v21 + 4);
      v22 = (v21 + 4);
      if (v23 == v20)
      {
        v24 = 0;
        v14 = v14;
LABEL_22:
        v24 += *(v19 + 8 * v14);
        v25 = 1;
        if (v18 != 254)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = 0;
        while (1)
        {
          v14 = v14;
          if (*(v17 + v14) < 0)
          {
            break;
          }

          LODWORD(v14) = *(v9 + (v14 << 6) + 4 * *(v17 + v14) + 32);
          ++v24;
          if (*(v19 + 8 * v14 + 4) == v20)
          {
            v14 = v14;
            v18 = *(v17 + v14);
            goto LABEL_22;
          }
        }

        v25 = 0;
        if (*(v17 + v14) != 254)
        {
LABEL_26:
          if (v25 != 1)
          {
            goto LABEL_7;
          }

          goto LABEL_27;
        }
      }

      v26 = (v19 + 8 * v14);
      *v26 = 1;
      v26[1] = v20;
      if ((v25 | (*(v17 + v14) == 254)) != 1)
      {
        goto LABEL_7;
      }

LABEL_27:
      if (v24 < v11)
      {
        v10 = v13;
        v11 = v24;
      }

      if (*v22 != v20)
      {
        do
        {
          *(v19 + 8 * v15) = v24;
          *v22 = v20;
          v15 = *(v9 + (v15 << 6) + 4 * *(v17 + v15) + 32);
          --v24;
          v27 = v19 + 8 * v15;
          v28 = *(v27 + 4);
          v22 = (v27 + 4);
        }

        while (v28 != v20);
      }

LABEL_7:
      ++v5;
    }

    while (v5 != 8);
    *(*(this + 2) + v6) = v10;
    if (v10 < 0)
    {
      v29 = 0;
      while (1)
      {
        v31 = Edge::All[v29];
        v32 = *(*this + (v6 << 6) + 4 * v31 + 32);
        if (v8 == *(*(this + 3) + v32))
        {
          v33 = *(this + 2);
          if (*(v33 + v32) != 255)
          {
            break;
          }
        }

LABEL_35:
        if (++v29 == 8)
        {
          goto LABEL_5;
        }
      }

      v34 = *(this + 5);
      if ((*(v34 + 4 * v32) & 0x80000000) != 0)
      {
        if (v8 == 1)
        {
          if ((*(*(this + 4) + v32) >> (v31 & 7 ^ 4)))
          {
            goto LABEL_39;
          }
        }

        else if ((*(*(this + 4) + v6) >> v31))
        {
          goto LABEL_39;
        }

        v43 = *(this + 21);
        if ((v43 & 0x80000000) != 0)
        {
          *(this + 20) = v32;
        }

        else
        {
          *(v34 + 4 * v43) = v32;
        }

        *(this + 21) = v32;
      }

LABEL_39:
      if ((v31 & 7 ^ *(v33 + v32)) == 4)
      {
        v36 = *(this + 13);
        v35 = *(this + 14);
        if (v36 < v35)
        {
          *v36 = v32;
          v30 = v36 + 4;
        }

        else
        {
          v37 = *(this + 12);
          v38 = v36 - v37;
          v39 = (v36 - v37) >> 2;
          v40 = v39 + 1;
          if ((v39 + 1) >> 62)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v41 = v35 - v37;
          if (v41 >> 1 > v40)
          {
            v40 = v41 >> 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v42 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            if (!(v42 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v44 = (v36 - v37) >> 2;
          v45 = (4 * v39);
          v46 = (4 * v39 - 4 * v44);
          *v45 = v32;
          v30 = v45 + 1;
          memcpy(v46, v37, v38);
          *(this + 12) = v46;
          *(this + 13) = v30;
          *(this + 14) = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        *(this + 13) = v30;
        *(*(this + 2) + v32) = -4;
      }

      goto LABEL_35;
    }

    v3 = *(this + 18);
    v4 = (*(this + 1) + 8 * v6);
    *v4 = v11;
    v4[1] = v3;
LABEL_5:
    ;
  }
}

void soMaxFlow::Impl::UpdateFlow(uint64_t *a1, int *a2, float a3)
{
  *(a1 + 19) = *(a1 + 19) + a3;
  v42 = *a2;
  v6 = v42;
  v7 = a1[2];
  if ((*(v7 + v42) & 0x80000000) == 0)
  {
    v8 = *(v7 + v42);
    do
    {
      v9 = *a1 + (v6 << 6);
      v10 = 4 * v8;
      v11 = *(v9 + v10) + a3;
      *(v9 + v10) = v11;
      *(a1[4] + v6) = *(a1[4] + v6) & ~(1 << v8) | ((v11 == 0.0) << v8);
      v12 = *(*a1 + (v42 << 6) + v10 + 32);
      v13 = v8 & 7 ^ 4;
      v6 = v12;
      v14 = *a1 + (v12 << 6);
      v15 = *(v14 + 4 * v13) - a3;
      *(v14 + 4 * v13) = v15;
      LODWORD(v14) = (v15 == 0.0) << v13;
      v16 = 1 << v13;
      *(a1[4] + v12) = *(a1[4] + v12) & ~v16 | v14;
      if ((v16 & *(a1[4] + v12)) != 0)
      {
        *(a1[2] + v42) = -4;
        std::vector<int>::push_back[abi:ne200100](a1 + 12, &v42);
      }

      v42 = v12;
      v7 = a1[2];
      v8 = *(v7 + v12);
    }

    while ((*(v7 + v12) & 0x80000000) == 0);
  }

  v17 = a1[6];
  v18 = *(v17 + 4 * v6) - a3;
  *(v17 + 4 * v6) = v18;
  if (v18 == 0.0)
  {
    *(v7 + v6) = -4;
    std::vector<int>::push_back[abi:ne200100](a1 + 12, &v42);
  }

  v20 = *a2;
  v19 = a2[1];
  v21 = v20 << 6;
  v22 = *a1 + (v20 << 6);
  v23 = *(v22 + 4 * v19) - a3;
  *(v22 + 4 * v19) = v23;
  *(a1[4] + v20) = *(a1[4] + v20) & ~(1 << v19) | ((v23 == 0.0) << v19);
  v24 = *a1;
  v42 = *(*a1 + v21 + 4 * v19 + 32);
  v25 = v42;
  v26 = v19 & 7 ^ 4;
  v27 = v24 + (v42 << 6);
  v28 = *(v27 + 4 * v26) + a3;
  *(v27 + 4 * v26) = v28;
  *(a1[4] + v25) = *(a1[4] + v25) & ~(1 << v26) | ((v28 == 0.0) << v26);
  v29 = v42;
  v30 = a1[2];
  if ((*(v30 + v42) & 0x80000000) == 0)
  {
    v31 = *(v30 + v42);
    do
    {
      v32 = *a1 + (v29 << 6);
      v33 = 4 * v31;
      v34 = *(v32 + v33) - a3;
      *(v32 + v33) = v34;
      v35 = 1 << v31;
      *(a1[4] + v29) = *(a1[4] + v29) & ~(1 << v31) | ((v34 == 0.0) << v31);
      v36 = *(*a1 + (v42 << 6) + v33 + 32);
      v37 = v31 & 7 ^ 4;
      v29 = v36;
      v38 = *a1 + (v36 << 6);
      v39 = *(v38 + 4 * v37) + a3;
      *(v38 + 4 * v37) = v39;
      *(a1[4] + v36) = *(a1[4] + v36) & ~(1 << v37) | ((v39 == 0.0) << v37);
      if ((v35 & *(a1[4] + v42)) != 0)
      {
        *(a1[2] + v42) = -4;
        std::vector<int>::push_back[abi:ne200100](a1 + 12, &v42);
      }

      v42 = v36;
      v30 = a1[2];
      v31 = *(v30 + v36);
    }

    while ((*(v30 + v36) & 0x80000000) == 0);
  }

  v40 = a1[6];
  v41 = *(v40 + 4 * v29) + a3;
  *(v40 + 4 * v29) = v41;
  if (v41 == 0.0)
  {
    *(v30 + v29) = -4;
    std::vector<int>::push_back[abi:ne200100](a1 + 12, &v42);
  }
}

uint64_t HGMemory::allocate(HGMemory *this, unint64_t *a2, unint64_t *a3)
{
  if (atomic_load_explicit(&HGMemoryManager::INSTANCE(void)::flag, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(&HGMemoryManager::INSTANCE(void)::flag, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMemoryManager::INSTANCE(void)::{lambda(void)#1} &&>>);
  }

  return HGMemoryManager::allocate(HGMemoryManager::INSTANCE(void)::mm, this, a2);
}

uint64_t HGMemoryManager::allocate(HGMemoryManager *this, unint64_t a2, unint64_t *a3)
{
  pthread_mutex_lock(this + 1);
  HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(&v31, *(this + 4));
  if (!*(*(this + 3) + 40))
  {
    goto LABEL_38;
  }

  v6 = (*(**(this + 1) + 24))(*(this + 1), a2);
  v7 = v6 >= a2 ? v6 : 0;
  v8 = v6 >= a2 ? a2 : 0;
  v9 = *(this + 3);
  v10 = v9[4];
  v11 = v9[1];
  v12 = (v11 + 8 * (v10 >> 9));
  if (v9[2] == v11)
  {
    v14 = 0;
  }

  else
  {
    v13 = *v12;
    v14 = (*v12 + 8 * (v9[4] & 0x1FFLL));
    v15 = *(v11 + (((v9[5] + v10) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9[5] + v10) & 0x1FF);
    if (v14 != v15)
    {
      v16 = v11 + 8 * (v10 >> 9);
      v17 = v14 + 8;
      if (v14 + 8 - v13 != 4096)
      {
        goto LABEL_12;
      }

LABEL_11:
      v18 = *(v16 + 8);
      v16 += 8;
      v13 = v18;
      v17 = v18;
LABEL_12:
      while (v17 != v15)
      {
        v19 = *(*v14 + 16);
        if (v7 < v19 || v8 > v19)
        {
          v21 = 0;
        }

        else
        {
          v21 = v7 - v19;
        }

        v22 = *(*v17 + 16);
        v24 = v8 <= v22 && v7 >= v22;
        if (v24 && v21 < v7 - v22)
        {
          v12 = v16;
          v14 = v17;
        }

        v17 += 8;
        if (v17 - v13 == 4096)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v25 = *(*v14 + 16);
  v26 = v8 <= v25 && v7 >= v25;
  v27 = !v26 || v7 - v25 == 0;
  if (v27 || (v28 = HGMemoryManager::_reuse(this, v12, v14, a2)) == 0)
  {
LABEL_38:
    HGMemoryManager::_allocate(this);
  }

  if (a3)
  {
    *a3 = *(v28 + 16);
  }

  v29 = *(v28 + 8);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(&v31);
  pthread_mutex_unlock(this + 1);
  return v29;
}

void sub_25FBF80F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(va);
  pthread_mutex_unlock(v2 + 1);
  _Unwind_Resume(a1);
}

pthread_mutex_t *HGMemory::release(HGMemory *this, void *a2)
{
  if (atomic_load_explicit(&HGMemoryManager::INSTANCE(void)::flag, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&HGMemoryManager::INSTANCE(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMemoryManager::INSTANCE(void)::{lambda(void)#1} &&>>);
  }

  return HGMemoryManager::release(HGMemoryManager::INSTANCE(void)::mm, this);
}

pthread_mutex_t *HGMemoryManager::release(pthread_mutex_t *this, void *a2)
{
  if (a2)
  {
    v3 = this;
    pthread_mutex_lock(this + 1);
    ++*(v3 + 56);
    HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(&v23, *(v3 + 32));
    v6 = *(v3 + 16);
    v7 = v6[1];
    if (v6[2] == v7)
    {
      goto LABEL_10;
    }

    v8 = v6[4];
    v9 = v6[5];
    v4 = (v7 + 8 * (v8 >> 9));
    v10 = *v4;
    v5 = &(*v4)[8 * (v8 & 0x1FF)];
    v11 = *(v7 + (((v9 + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9 + v8) & 0x1FF);
    if (v5 != v11)
    {
      while (*(*v5 + 8) != a2)
      {
        v5 += 8;
        if (v5 - v10 == 4096)
        {
          v12 = v4[1];
          ++v4;
          v10 = v12;
          v5 = v12;
        }

        if (v5 == v11)
        {
          goto LABEL_10;
        }
      }
    }

    if (v5 == v11)
    {
LABEL_10:
      v13 = *(v3 + 24);
      v14 = v13[1];
      if (v13[2] == v14)
      {
        goto LABEL_18;
      }

      v15 = v13[4];
      v16 = v13[5];
      v17 = (v14 + 8 * (v15 >> 9));
      v18 = *v17;
      v19 = *v17 + 8 * (v15 & 0x1FF);
      v20 = *(v14 + (((v16 + v15) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v16 + v15) & 0x1FF);
      if (v19 != v20)
      {
        while (*(*v19 + 8) != a2)
        {
          v19 += 8;
          if (v19 - v18 == 4096)
          {
            v22 = v17[1];
            ++v17;
            v18 = v22;
            v19 = v22;
          }

          if (v19 == v20)
          {
            goto LABEL_18;
          }
        }
      }

      if (v19 == v20)
      {
LABEL_18:
        v21 = "HGMemoryManager::release() - Attempting to release an unmanaged buffer: <%p>";
      }

      else
      {
        v21 = "HGMemoryManager::release() - Attempting to double-release a free buffer: <%p>";
      }

      HGLogger::warning(v21, v4, v5, a2);
    }

    else
    {
      HGMemoryManager::_recycle(v3, v4, v5);
    }

    HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(&v23);
    HGMemoryManager::cleanup(v3);
    return pthread_mutex_unlock((v3 + 64));
  }

  return this;
}

uint64_t HGMemory::renderEnd(HGMemory *this)
{
  if (atomic_load_explicit(&HGMemoryManager::INSTANCE(void)::flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&HGMemoryManager::INSTANCE(void)::flag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMemoryManager::INSTANCE(void)::{lambda(void)#1} &&>>);
  }

  v1 = HGMemoryManager::INSTANCE(void)::mm;
  pthread_mutex_lock(HGMemoryManager::INSTANCE(void)::mm + 1);
  ++*&v1->__opaque[48];
  HGMemoryManager::cleanup(v1);
  return pthread_mutex_unlock(v1 + 1);
}

uint64_t HGMemoryManager::cleanup(uint64_t **this)
{
  if (*(this + 128) == 1)
  {
    HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(&v60, this[4]);
    v2 = (*(*this[1] + 32))(this[1]);
    v3 = this[3];
    for (i = v3[5]; i > v2; i = v3[5])
    {
      v5 = v3[4] + i;
      v6 = v3[1];
      v7 = v3[2];
      v8 = (v6 + 8 * (v5 >> 9));
      v9 = *v8 + 8 * (v5 & 0x1FF);
      if (v7 == v6)
      {
        v9 = 0;
      }

      v10 = (v9 - *v8) >> 3;
      if (v10 < 2)
      {
        v15 = 512 - v10;
        v12 = &v8[-(v15 >> 9)];
        v13 = *v12;
        v14 = ~v15 & 0x1FFLL;
      }

      else
      {
        v11 = v10 - 1;
        v12 = &v8[v11 >> 9];
        v13 = *v12;
        v14 = v11 & 0x1FF;
      }

      HGMemoryManager::_release(this, v12, (v13 + 8 * v14));
      v3 = this[3];
    }

    v16 = (*(*this[1] + 40))(this[1]);
    v17 = this[3];
    v18 = v17[5];
    if (v18)
    {
      v19 = v16;
      do
      {
        v20 = v17[4] + v18;
        v21 = v17[1];
        v22 = v17[2];
        v23 = (v21 + 8 * (v20 >> 9));
        v24 = *v23 + 8 * (v20 & 0x1FF);
        if (v22 == v21)
        {
          v24 = 0;
        }

        v25 = (v24 - *v23) >> 3;
        if (v25 < 2)
        {
          v30 = 512 - v25;
          v27 = &v23[-(v30 >> 9)];
          v28 = *v27;
          v29 = ~v30 & 0x1FFLL;
        }

        else
        {
          v26 = v25 - 1;
          v27 = &v23[v26 >> 9];
          v28 = *v27;
          v29 = v26 & 0x1FF;
        }

        v31 = (v28 + 8 * v29);
        if (this[7] - *(*v31 + 48) <= v19)
        {
          break;
        }

        HGMemoryManager::_release(this, v27, v31);
        v17 = this[3];
        v18 = v17[5];
      }

      while (v18);
    }

    v32 = (*(*this[1] + 48))(this[1]);
    while (this[6][10] > v32)
    {
      v33 = this[3];
      v34 = v33[4] + v33[5];
      v35 = v33[1];
      v36 = v33[2];
      v37 = (v35 + 8 * (v34 >> 9));
      v38 = *v37 + 8 * (v34 & 0x1FF);
      if (v36 == v35)
      {
        v38 = 0;
      }

      v39 = (v38 - *v37) >> 3;
      if (v39 < 2)
      {
        v44 = 512 - v39;
        v41 = &v37[-(v44 >> 9)];
        v42 = *v41;
        v43 = ~v44 & 0x1FFLL;
      }

      else
      {
        v40 = v39 - 1;
        v41 = &v37[v40 >> 9];
        v42 = *v41;
        v43 = v40 & 0x1FF;
      }

      HGMemoryManager::_release(this, v41, (v42 + 8 * v43));
    }
  }

  else
  {
    HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(&v60, this[4]);
    v45 = this[3];
    for (j = v45[5]; j; j = v45[5])
    {
      v47 = v45[4] + j;
      v48 = v45[1];
      v49 = v45[2];
      v50 = (v48 + 8 * (v47 >> 9));
      v51 = *v50 + 8 * (v47 & 0x1FF);
      if (v49 == v48)
      {
        v51 = 0;
      }

      v52 = (v51 - *v50) >> 3;
      if (v52 < 2)
      {
        v57 = 512 - v52;
        v54 = &v50[-(v57 >> 9)];
        v55 = *v54;
        v56 = ~v57 & 0x1FFLL;
      }

      else
      {
        v53 = v52 - 1;
        v54 = &v50[v53 >> 9];
        v55 = *v54;
        v56 = v53 & 0x1FF;
      }

      HGMemoryManager::_release(this, v54, (v55 + 8 * v56));
      v45 = this[3];
    }
  }

  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(&v60);
  return HGMemoryManager::dump(this, v58);
}

void sub_25FBF875C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBF8770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBF8784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBF8798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBF87AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

HGMemory::StorageObject *HGMemory::StorageObject::StorageObject(HGMemory::StorageObject *this, unint64_t a2)
{
  HGObject::HGObject(this);
  *v4 = &unk_28720F658;
  v5 = v4 + 3;
  if (atomic_load_explicit(&HGMemoryManager::INSTANCE(void)::flag, memory_order_acquire) != -1)
  {
    v9 = &v7;
    v8 = &v9;
    std::__call_once(&HGMemoryManager::INSTANCE(void)::flag, &v8, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMemoryManager::INSTANCE(void)::{lambda(void)#1} &&>>);
  }

  *(this + 2) = HGMemoryManager::allocate(HGMemoryManager::INSTANCE(void)::mm, a2, v5);
  return this;
}

void HGMemory::StorageObject::~StorageObject(HGMemory::StorageObject *this)
{
  *this = &unk_28720F658;
  v2 = *(this + 2);
  if (atomic_load_explicit(&HGMemoryManager::INSTANCE(void)::flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&HGMemoryManager::INSTANCE(void)::flag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMemoryManager::INSTANCE(void)::{lambda(void)#1} &&>>);
  }

  HGMemoryManager::release(HGMemoryManager::INSTANCE(void)::mm, v2);
  HGObject::~HGObject(this);
}

{
  *this = &unk_28720F658;
  v2 = *(this + 2);
  if (atomic_load_explicit(&HGMemoryManager::INSTANCE(void)::flag, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&HGMemoryManager::INSTANCE(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMemoryManager::INSTANCE(void)::{lambda(void)#1} &&>>);
  }

  HGMemoryManager::release(HGMemoryManager::INSTANCE(void)::mm, v2);
  HGObject::~HGObject(this);
  HGObject::operator delete(v3);
}

uint64_t HGMemoryManager::_reuse(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = v6[2];
  v8 = v6[1];
  v9 = ((v7 - v8) << 6) - 1;
  v10 = v7 == v8;
  v11 = *a3;
  *(v11 + 48) = *(a1 + 56);
  v12 = *(v11 + 32) + a4;
  *(v11 + 24) = a4;
  *(v11 + 32) = v12;
  ++*(v11 + 40);
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  v14 = v6[5];
  v15 = v14 + v6[4];
  if (v13 == v15)
  {
    v16 = a3;
    v17 = a2;
    std::deque<HGMemoryManager::Block *>::__add_back_capacity(v6);
    a2 = v17;
    a3 = v16;
    v8 = v6[1];
    v14 = v6[5];
    v15 = v6[4] + v14;
  }

  *(*(v8 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v15 & 0x1FF)) = v11;
  v6[5] = v14 + 1;
  std::deque<Pipeline *>::erase(*(a1 + 24), a2, a3);
  v18 = *(a1 + 48);
  v19 = *(v11 + 16);
  ++v18[2];
  v18[6] += v19;
  v20 = v18[8];
  v21 = v20 + v19;
  v22 = v18[9] + a4;
  v18[8] = v20 + v19;
  v18[9] = v22;
  v23 = v18[10];
  v24 = v18[11];
  v25 = v23 - v19;
  v18[10] = v25;
  if (v24 < v21)
  {
    v18[11] = v21;
    if (v18[12] >= v25)
    {
LABEL_8:
      v26 = v21 - v22;
      if (v18[13] >= v26)
      {
        goto LABEL_9;
      }

LABEL_14:
      v18[13] = v26;
      v27 = v23 + v20;
      if (v18[14] >= v27)
      {
        return v11;
      }

      goto LABEL_10;
    }
  }

  else if (v18[12] >= v25)
  {
    goto LABEL_8;
  }

  v18[12] = v25;
  v26 = v21 - v22;
  if (v18[13] < v26)
  {
    goto LABEL_14;
  }

LABEL_9:
  v27 = v23 + v20;
  if (v18[14] < v27)
  {
LABEL_10:
    v18[14] = v27;
  }

  return v11;
}

void HGMemoryManager::_allocate(HGMemoryManager *this)
{
  (*(**(this + 1) + 16))(*(this + 1));
  HGProfilerGuard<(HGProfilerGuardMode)1>::HGProfilerGuard(&v3, *(this + 4));
  HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(&v2, *(this + 5));
  operator new();
}

void sub_25FBF8F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t *a10)
{
  MEMORY[0x2666E9F00](v10, 0x10E0C40D70D0186);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(&a9);
  HGProfilerGuard<(HGProfilerGuardMode)1>::~HGProfilerGuard(&a10);
  _Unwind_Resume(a1);
}

void sub_25FBF8FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)1>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

void *std::deque<HGMemoryManager::Block *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(a1, &v11);
}

void sub_25FBF935C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t HGMemoryManager::_recycle(uint64_t a1, char *a2, char *a3)
{
  v4 = *a3;
  *(*a3 + 48) = *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = v5[4];
  if (!v6)
  {
    v7 = a3;
    v8 = a2;
    std::deque<HGMemoryManager::Block *>::__add_front_capacity(*(a1 + 24));
    a2 = v8;
    a3 = v7;
    v6 = v5[4];
  }

  v9 = v5[1];
  v10 = (v9 + 8 * (v6 >> 9));
  if (v5[2] == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 8 * (v6 & 0x1FF);
  }

  if (v11 == *v10)
  {
    v11 = *(v10 - 1) + 4096;
  }

  *(v11 - 8) = v4;
  v12 = v5[5] + 1;
  v5[4] = v6 - 1;
  v5[5] = v12;
  std::deque<Pipeline *>::erase(*(a1 + 16), a2, a3);
  v13 = *(a1 + 48);
  ++v13->i64[1];
  v14 = v13[4];
  v15 = vsubq_s64(v14, v4[1]);
  v16 = v4[1].i64[0];
  v13[2].i64[1] += v16;
  v13[4] = v15;
  v17 = v13[5].i64[0];
  v18 = v13[5].u64[1];
  v19 = v17 + v16;
  v13[5].i64[0] = v17 + v16;
  if (v18 < v15.i64[0])
  {
    v13[5].i64[1] = v15.i64[0];
    if (v13[6].i64[0] >= v19)
    {
LABEL_10:
      v20 = v15.i64[0] - v15.i64[1];
      if (v13[6].i64[1] >= (v15.i64[0] - v15.i64[1]))
      {
        goto LABEL_11;
      }

LABEL_16:
      v13[6].i64[1] = v20;
      v21 = v17 + v14.i64[0];
      if (v13[7].i64[0] >= v21)
      {
        return v4->i64[1];
      }

      goto LABEL_12;
    }
  }

  else if (v13[6].i64[0] >= v19)
  {
    goto LABEL_10;
  }

  v13[6].i64[0] = v19;
  v20 = v15.i64[0] - v15.i64[1];
  if (v13[6].i64[1] < (v15.i64[0] - v15.i64[1]))
  {
    goto LABEL_16;
  }

LABEL_11:
  v21 = v17 + v14.i64[0];
  if (v13[7].i64[0] < v21)
  {
LABEL_12:
    v13[7].i64[0] = v21;
  }

  return v4->i64[1];
}

const void **std::deque<HGMemoryManager::Block *>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 32) = v5 + 512;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<HGNode **>::emplace_front<HGNode **>(a1, &v11);
}

void sub_25FBF98E4(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t HGMemoryManager::dump(HGMemoryManager::Stats **this, const char *a2)
{
  v3 = atomic_load(HGLogger::_enabled);
  if ((v3 & 1) != 0 && HGLogger::getLevel("alloc", a2) >= 1)
  {
    HGMemoryManager::Stats::dump(this[6], 1);
    HGMemoryManager::dumpToLogger(this, 1);
  }

  if (this[4] && this[5])
  {
    HGTraceGuard::HGTraceGuard(v13, "alloc", 1, "Time Profile");
    Time = HGProfiler::getTime(this[4]);
    v7 = HGProfiler::getTime(this[5]);
    v8 = *(this[6] + 2) + *this[6];
    v9 = atomic_load(HGLogger::_enabled);
    if (v9)
    {
      HGLogger::log("alloc", 1, "time doing manager stuff   : %f ms / %zu ops (avg : %f ms)\n", v5, v6, *&Time, v8, Time / v8);
    }

    v10 = atomic_load(HGLogger::_enabled);
    if (v10)
    {
      HGLogger::log("alloc", 1, "time doing real memory ops : %f ms / %zu ops (avg : %f ms)\n", v5, v6, *&v7, v8, v7 / v8);
    }

    v11 = atomic_load(HGLogger::_enabled);
    if (v11)
    {
      HGLogger::log("alloc", 1, "total time in mem manager  : %f ms / %zu ops (avg : %f ms)\n", v5, v6, Time + v7, v8, (Time + v7) / v8);
    }

    HGTraceGuard::~HGTraceGuard(v13);
  }

  return 0;
}

void sub_25FBF9AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBF9ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBF9AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t **HGMemoryManager::_release(uint64_t a1, char *a2, char *a3)
{
  v4 = *a3;
  std::deque<Pipeline *>::erase(*(a1 + 24), a2, a3);
  v5 = *(a1 + 48);
  v6 = *(v4 + 16);
  ++v5[3];
  v7 = v5[8];
  v5[7] += v6;
  v8 = v5[11];
  v9 = v5[10] - v6;
  v5[10] = v9;
  if (v8 < v7)
  {
    v5[11] = v7;
    if (v5[12] >= v9)
    {
LABEL_3:
      v10 = v7 - v5[9];
      if (v5[13] >= v10)
      {
        goto LABEL_4;
      }

LABEL_9:
      v5[13] = v10;
      v11 = v7 + v9;
      if (v5[14] >= v11)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if (v5[12] >= v9)
  {
    goto LABEL_3;
  }

  v5[12] = v9;
  v10 = v7 - v5[9];
  if (v5[13] < v10)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = v7 + v9;
  if (v5[14] < v11)
  {
LABEL_5:
    v5[14] = v11;
  }

LABEL_6:
  HGProfilerGuard<(HGProfilerGuardMode)1>::HGProfilerGuard(&v14, *(a1 + 32));
  HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(&v13, *(a1 + 40));
  free(*(v4 + 8));
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  MEMORY[0x2666E9F00](v4, 0x10E0C40D70D0186);
  HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(&v13);
  return HGProfilerGuard<(HGProfilerGuardMode)1>::~HGProfilerGuard(&v14);
}

void sub_25FBF9C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGProfilerGuard<(HGProfilerGuardMode)1>::~HGProfilerGuard(va);
  _Unwind_Resume(a1);
}

void HGMemoryManager::Stats::dump(HGMemoryManager::Stats *this, const char *a2)
{
  HGTraceGuard::HGTraceGuard(v27, "alloc", a2, "Memory Manager Stats");
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("alloc", a2, "  numAllocs           : %zu \n", v4, v5, *this);
  }

  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("alloc", a2, "  numFrees            : %zu \n", v4, v5, *(this + 3));
  }

  v9 = atomic_load(HGLogger::_enabled);
  if (v9)
  {
    HGLogger::log("alloc", a2, "  numReused           : %zu \n", v4, v5, *(this + 2));
  }

  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log("alloc", a2, "  numRecycled         : %zu \n", v4, v5, *(this + 1));
  }

  v11 = atomic_load(HGLogger::_enabled);
  if (v11)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  v12 = atomic_load(HGLogger::_enabled);
  if (v12)
  {
    HGLogger::log("alloc", a2, "  totalAllocated      : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 4), 0x14uLL));
  }

  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log("alloc", a2, "  totalReleased       : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 7), 0x14uLL));
  }

  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
    HGLogger::log("alloc", a2, "  totalReused         : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 6), 0x14uLL));
  }

  v15 = atomic_load(HGLogger::_enabled);
  if (v15)
  {
    HGLogger::log("alloc", a2, "  totalRecycled       : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 5), 0x14uLL));
  }

  v16 = atomic_load(HGLogger::_enabled);
  if (v16)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  v17 = atomic_load(HGLogger::_enabled);
  if (v17)
  {
    HGLogger::log("alloc", a2, "  allocMem            : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 8), 0x14uLL));
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    HGLogger::log("alloc", a2, "  usedMem             : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 9), 0x14uLL));
  }

  v19 = atomic_load(HGLogger::_enabled);
  if (v19)
  {
    HGLogger::log("alloc", a2, "  freeMem             : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 10), 0x14uLL));
  }

  v20 = atomic_load(HGLogger::_enabled);
  if (v20)
  {
    HGLogger::log("alloc", a2, "  totalMem            : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 10) + *(this + 8), 0x14uLL));
  }

  v21 = atomic_load(HGLogger::_enabled);
  if (v21)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  v22 = atomic_load(HGLogger::_enabled);
  if (v22)
  {
    HGLogger::log("alloc", a2, "  peakAllocMem        : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 11), 0x14uLL));
  }

  v23 = atomic_load(HGLogger::_enabled);
  if (v23)
  {
    HGLogger::log("alloc", a2, "  peakFreeMem         : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 12), 0x14uLL));
  }

  v24 = atomic_load(HGLogger::_enabled);
  if (v24)
  {
    HGLogger::log("alloc", a2, "  peakUnusedMem       : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 13), 0x14uLL));
  }

  v25 = atomic_load(HGLogger::_enabled);
  if (v25)
  {
    HGLogger::log("alloc", a2, "  peakTotalMem        : %5.1f mb \n", v4, v5, vcvts_n_f32_u64(*(this + 14), 0x14uLL));
  }

  v26 = atomic_load(HGLogger::_enabled);
  if (v26)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  HGTraceGuard::~HGTraceGuard(v27);
}

void sub_25FBFA02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMemoryManager::dumpToLogger(HGMemoryManager *this, const char *a2)
{
  HGTraceGuard::HGTraceGuard(v43, "alloc", a2, "Dump Memory Blocks");
  v6 = *(this + 7);
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("alloc", a2, "used blocks:\n", v4, v5);
  }

  v9 = *(this + 2);
  v10 = v9[1];
  if (v9[2] != v10)
  {
    v11 = v9[4];
    v12 = (v10 + 8 * (v11 >> 9));
    v13 = *v12 + 8 * (v11 & 0x1FF);
    v14 = *(v10 + (((v9[5] + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9[5] + v11) & 0x1FF);
    while (v13 != v14)
    {
      v16 = *(*v13 + 16);
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        if (v16 <= 0x100000)
        {
          v18 = "  %p : %8lu bytes (%7.1f kb) (using %7.1f kb) (age : %4lu) (total usage : %4d for %7.1f kb, average : %7.1f kb)\n";
        }

        else
        {
          v18 = "  %p : %8lu bytes (%7.1f mb) (using %7.1f mb) (age : %4lu) (total usage : %4d for %7.1f mb, average : %7.1f mb)\n";
        }

        v19 = 0.00097656;
        if (v16 > 0x100000)
        {
          v19 = 0.00000095367;
        }

        v15 = *v13;
        HGLogger::log("alloc", a2, v18, v4, v5, *(v15 + 8), *(v15 + 16), (v19 * *(v15 + 16)), (v19 * *(v15 + 24)), v6 - *(v15 + 48), *(v15 + 40), (v19 * *(v15 + 32)), ((v19 * *(v15 + 32)) / *(v15 + 40)));
      }

      v13 += 8;
      if (v13 - *v12 == 4096)
      {
        v20 = v12[1];
        ++v12;
        v13 = v20;
      }
    }
  }

  v21 = *(this + 6);
  v22 = vcvts_n_f32_u64(*(v21 + 64), 0x14uLL);
  v23 = vcvts_n_f32_u64(*(v21 + 72), 0x14uLL);
  if (v22 <= 0.0)
  {
    v24 = 0;
    v26 = atomic_load(HGLogger::_enabled);
    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v24 = ((v23 * 100.0) / v22);
  v25 = atomic_load(HGLogger::_enabled);
  if (v25)
  {
LABEL_22:
    HGLogger::log("alloc", a2, " total : %5.1f mb(using : %5.1f mb or %3d%%)\n", v4, v5, v22, v23, v24);
  }

LABEL_23:
  v27 = atomic_load(HGLogger::_enabled);
  if (v27)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  v28 = atomic_load(HGLogger::_enabled);
  if (v28)
  {
    HGLogger::log("alloc", a2, "free blocks:\n", v4, v5);
  }

  v29 = *(this + 3);
  v30 = v29[1];
  if (v29[2] != v30)
  {
    v31 = v29[4];
    v32 = (v30 + 8 * (v31 >> 9));
    v33 = *v32 + 8 * (v31 & 0x1FF);
    v34 = *(v30 + (((v29[5] + v31) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29[5] + v31) & 0x1FF);
    while (v33 != v34)
    {
      v36 = *(*v33 + 16);
      v37 = atomic_load(HGLogger::_enabled);
      if (v37)
      {
        if (v36 <= 0x100000)
        {
          v38 = "  %p : %8lu bytes (%7.1f kb) (using %7.1f kb) (age : %4lu) (total usage : %4d for %7.1f kb, average : %7.1f kb)\n";
        }

        else
        {
          v38 = "  %p : %8lu bytes (%7.1f mb) (using %7.1f mb) (age : %4lu) (total usage : %4d for %7.1f mb, average : %7.1f mb)\n";
        }

        v39 = 0.00097656;
        if (v36 > 0x100000)
        {
          v39 = 0.00000095367;
        }

        v35 = *v33;
        HGLogger::log("alloc", a2, v38, v4, v5, *(v35 + 8), *(v35 + 16), (v39 * *(v35 + 16)), (v39 * *(v35 + 24)), v6 - *(v35 + 48), *(v35 + 40), (v39 * *(v35 + 32)), ((v39 * *(v35 + 32)) / *(v35 + 40)));
      }

      v33 += 8;
      if (v33 - *v32 == 4096)
      {
        v40 = v32[1];
        ++v32;
        v33 = v40;
      }
    }
  }

  v41 = atomic_load(HGLogger::_enabled);
  if (v41)
  {
    HGLogger::log("alloc", a2, " total : %5.1f mb\n", v4, v5, vcvts_n_f32_u64(*(*(this + 6) + 80), 0x14uLL));
  }

  v42 = atomic_load(HGLogger::_enabled);
  if (v42)
  {
    HGLogger::log("alloc", a2, "\n", v4, v5);
  }

  HGTraceGuard::~HGTraceGuard(v43);
}

void sub_25FBFA430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFA444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFA458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFA46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFA480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMetalContext::HGMetalContext(HGMetalContext *this, const HGMetalDeviceInfo *a2)
{
  HGObject::HGObject(this);
  *v4 = &unk_28720F718;
  v4[2] = a2;
  DeviceResources = HGGPUResources::getDeviceResources(a2, v5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = DeviceResources;
  *(this + 52) = 1;
  *(this + 14) = 64;
  *(this + 16) = 1;
  *(this + 9) = -1;
  *(this + 10) = 0x100000000;
  *(this + 11) = -1;
  *(this + 12) = 0x101010100000020;
  *(this + 4) = [*(*(this + 2) + 16) newCommandQueue];
  *(this + 12) = 29;
  v7 = (*(*(this + 2) + 40) * 0.1);
  *(this + 10) = 0x500000002;
  if (v7 >= 0x40000000)
  {
    v7 = 0x40000000;
  }

  *(this + 11) = v7;
}

void HGMetalContext::~HGMetalContext(id *this)
{
  *this = &unk_28720F718;

  this[4] = 0;

  HGObject::~HGObject(this);
}

{
  *this = &unk_28720F718;

  this[4] = 0;
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

void HGMetalContext::setLabel(HGMetalContext *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v15 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&__p, __s, v6);
  }

  __p.__r_.__value_.__s.__data_[v7] = 0;
  v8 = std::string::append(&__p, " Frame");
  v9 = v8->__r_.__value_.__r.__words[0];
  v10 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__r.__words[0] = 0;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *(this + 4);
  if (v15 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  [v11 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", p_dst, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2])}];
  if ((v10 & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(__dst);
    return;
  }

  operator delete(v9);
  if (v15 < 0)
  {
    goto LABEL_22;
  }
}

void sub_25FBFA844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void HGMetalContext::synchronizeCommandQueue(id *this)
{
  HGTraceGuard::HGTraceGuard(v3, "metal", 1, "HGMetalContext::synchronizeCommandQueue()");
  v2 = [this[4] commandBuffer];
  [v2 setLabel:@"HG synchronizeCommandQueue"];
  [objc_msgSend(v2 "blitCommandEncoder")];
  [v2 commit];
  [v2 waitUntilCompleted];
  HGTraceGuard::~HGTraceGuard(v3);
}

uint64_t HGMetalContext::bufferPool(HGMetalContext *this)
{
  if (*(this + 100) == 1)
  {
    return *(*(this + 3) + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t HGMetalContext::texturePool(HGMetalContext *this)
{
  if (*(this + 101) == 1)
  {
    return *(*(this + 3) + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t HGMetalContext::bufferInfiniPool(HGMetalContext *this)
{
  if (*(this + 102) == 1)
  {
    return *(*(this + 3) + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t HGMetalContext::setCommandBufferLimits(uint64_t this, int a2, uint64_t a3)
{
  *(this + 64) = a2;
  *(this + 72) = a3;
  return this;
}

uint64_t HGMetalContext::setCommandQueueLimits(uint64_t this, int a2, int a3, uint64_t a4)
{
  *(this + 80) = a2;
  *(this + 84) = a3;
  *(this + 88) = a4;
  return this;
}

void HGObject::~HGObject(HGObject *this)
{
  *this = &unk_28720F768;
}

{
  *this = &unk_28720F768;
}

atomic_uint *HGObject::Release(atomic_uint *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_fetch_add(this + 2, 1u);
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

void HGObject::debugDescription(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t HGMalloc(uint64_t a1)
{
  v2 = malloc_type_malloc(a1 + 144, 0xFB7E6037uLL);
  v3 = v2 & 0xFFFFFFFFFFFFFF80;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  return (v2 & 0xFFFFFFFFFFFFFF80) + 128;
}

const void *HGRealloc(const void *a1, unint64_t a2)
{
  v2 = a1;
  if (!a1 || *(a1 - 2) < a2)
  {
    v4 = malloc_type_malloc(a2 + 144, 0xD2190E28uLL);
    v5 = v4 & 0xFFFFFFFFFFFFFF80;
    v6 = (v4 & 0xFFFFFFFFFFFFFF80) + 128;
    *(v5 + 112) = a2;
    *(v5 + 120) = v4;
    if (v2)
    {
      memcpy(((v4 & 0xFFFFFFFFFFFFFF80) + 128), v2, *(v2 - 2));
      free(*(v2 - 1));
    }

    return v6;
  }

  return v2;
}

unint64_t HGGetTBCFrequency()
{
  result = qword_280C5CEA0;
  if (!qword_280C5CEA0)
  {
    mach_timebase_info(&_MergedGlobals_12);
    result = 1000000000 * *algn_280C5CE9C / _MergedGlobals_12;
    qword_280C5CEA0 = result;
  }

  return result;
}

uint64_t HGGetActiveCPU()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0) && sysctlbyname("hw.ncpu", &v2, &v1, 0, 0))
  {
    return 1;
  }

  return v2;
}

uint64_t GLPBO::GLPBO(uint64_t a1, PC_Sp_counted_base **a2)
{
  *a1 = 0;
  v3 = *a2;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 29) = 0;
  *(a1 + 24) = 0;
  v6.var0 = v3;
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v7, &v6.var0);
  PCSharedCount::PCSharedCount(&v6);
  glGenFramebuffers(1, v4);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v7);
  return a1;
}

void sub_25FBFAC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  PCSharedCount::PCSharedCount(v3);
  _Unwind_Resume(a1);
}

void sub_25FBFACA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::PCSharedCount(&a10);
  PCSharedCount::PCSharedCount(v10);
  _Unwind_Resume(a1);
}

void GLPBO::_delete(GLPBO *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  if (*(this + 7))
  {
    v6 = atomic_load(HGLogger::_enabled);
    if (v6)
    {
      HGLogger::log("pbo", 1, "GLPBO::_delete()\n", a4, a5);
    }

    if (*(this + 5))
    {
      GLPBO::_unmap(this);
      *(this + 5) = 0;
    }

    v7.var0 = *(this + 1);
    HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v8, &v7.var0);
    PCSharedCount::PCSharedCount(&v7);
    glDeleteBuffers(1, this + 5);
    *(this + 5) = 0;
    *(this + 7) = 0;
    HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v8);
  }
}

void sub_25FBFAD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

uint64_t GLPBO::_setup(GLPBO *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  if (a2 && *(this + 7) == a2)
  {
    return 1;
  }

  GLPBO::_delete(this, a2, a3, a4, a5);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log("pbo", 1, "GLPBO::_setup( size = %d)\n", v8, v9, a2);
  }

  *(this + 7) = a2;
  v11.var0 = *(this + 1);
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v12, &v11.var0);
  PCSharedCount::PCSharedCount(&v11);
  glGenBuffers(1, this + 5);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v12);
  return 1;
}

void sub_25FBFAE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void GLPBO::_map(GLPBO *this)
{
  if (GLPBO::m_ForcePostReadPixelsFinish)
  {
    v4.var0 = *(this + 1);
    HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v5, &v4.var0);
    PCSharedCount::PCSharedCount(&v4);
    glFinish();
    HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v5);
  }

  HGTraceGuard::HGTraceGuard(v5, "pbo", 1, "GLPBO::_map()");
  v2.var0 = *(this + 1);
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v3, &v2.var0);
  PCSharedCount::PCSharedCount(&v2);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v3);
  HGTraceGuard::~HGTraceGuard(v5);
}

void sub_25FBFAF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFAF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FBFAF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  PCSharedCount::PCSharedCount(&a9);
  HGTraceGuard::~HGTraceGuard(&a13);
  _Unwind_Resume(a1);
}

void sub_25FBFAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t GLPBO::_unmap(GLPBO *this)
{
  HGTraceGuard::HGTraceGuard(v5, "pbo", 1, "GLPBO::_unmap()");
  v3.var0 = *(this + 1);
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v4, &v3.var0);
  PCSharedCount::PCSharedCount(&v3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v4);
  HGTraceGuard::~HGTraceGuard(v5);
  return 0;
}

void sub_25FBFB024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FBFB040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, uint64_t a11, uint64_t a12, char a13)
{
  PCSharedCount::PCSharedCount(&a10);
  HGTraceGuard::~HGTraceGuard(&a13);
  _Unwind_Resume(a1);
}

void sub_25FBFB05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void GLPBO::ReadPixels(PC_Sp_counted_base **this, int a2, uint64_t a3, const char *a4, char *a5, int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v12 = a5;
  if (this[5])
  {
    GLPBO::_unmap(this);
    this[5] = 0;
  }

  *(this + 6) = a6;
  v14 = (a6 * v12);
  if (*this)
  {
    v14 = (ceilf(v14 / *this) * *this);
  }

  GLPBO::_setup(this, v14, a3, a4, a5);
  v15.var0 = this[1];
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v16, &v15.var0);
  PCSharedCount::PCSharedCount(&v15);
  *(this + 36) = 1;
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v16);
}

void sub_25FBFB120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void HGPixelBufferObj::HGPixelBufferObj(HGObject *a1)
{
  HGObject::HGObject(a1);
  *v1 = &unk_28720F7B0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  operator new();
}

void sub_25FBFB1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::PCSharedCount(&a10);
  MEMORY[0x2666E9F00](v11, 0x1080C404AC29809);
  HGObject::~HGObject(v10);
  _Unwind_Resume(a1);
}

void HGPixelBufferObj::~HGPixelBufferObj(HGPixelBufferObj *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  *this = &unk_28720F7B0;
  v6 = *(this + 6);
  if (v6)
  {
    HGRenderUtils::BufferCopier::~BufferCopier(v6);
    MEMORY[0x2666E9F00]();
  }

  v7 = *(this + 2);
  if (v7)
  {
    GLPBO::_delete(*(this + 2), a2, a3, a4, a5);
    v8.var0 = *(v7 + 8);
    HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v9, &v8.var0);
    PCSharedCount::PCSharedCount(&v8);
    glDeleteFramebuffers(1, (v7 + 16));
    HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v9);
    PCSharedCount::PCSharedCount((v7 + 8));
    MEMORY[0x2666E9F00](v7, 0x1080C404AC29809);
  }

  HGObject::~HGObject(this);
}

{
  HGPixelBufferObj::~HGPixelBufferObj(this, a2, a3, a4, a5);

  HGObject::operator delete(v5);
}

void HGPixelBufferObj::ReadPixels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  HGTraceGuard::HGTraceGuard(v27, "pbo", 1, "HGPixelBufferObj::ReadPixels()");
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a8;
  HGFormatUtils::toGLType(a8);
  HGFormatUtils::toGLFormat(*(a1 + 40));
  v12 = HGFormatUtils::bytesPerPixel(*(a1 + 40));
  v18 = *(a1 + 32) - *(a1 + 24);
  v19 = *(a1 + 40);
  v20 = v19 - 14;
  v21 = (v18 + 1) >> 1;
  v22 = v19 == 31;
  v23 = ((2863311531u * (v18 + 5)) >> 32) & 0xFFFFFFFC;
  if (!v22)
  {
    v23 = *(a1 + 32) - *(a1 + 24);
  }

  if (v20 >= 3)
  {
    v24 = v12;
  }

  else
  {
    v24 = 2 * v12;
  }

  if (v20 < 3)
  {
    v23 = v21;
  }

  GLPBO::ReadPixels(*(a1 + 16), v13, v14, v15, (*(a1 + 36) - *(a1 + 28)), v23 * v24, v16, v17, v25, HIDWORD(v25), v26);
  HGTraceGuard::~HGTraceGuard(v27);
}

void sub_25FBFB460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFB474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFB488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFB49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFB4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGPixelBufferObj::GetDataPtr(HGPixelBufferObj *this)
{
  v1 = *(this + 2);
  result = *(v1 + 40);
  if (!result)
  {
    GLPBO::_map(v1);
    result = *(v1 + 40);
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t HGPixelBufferObj::ReleaseDataPtr(HGPixelBufferObj *this)
{
  v1 = *(this + 2);
  if (*(v1 + 40))
  {
    GLPBO::_unmap(*(this + 2));
    *(v1 + 40) = 0;
  }

  return 0;
}

void HGPixelBufferObj::StartCopyBitmap(HGPixelBufferObj *this, HGBitmap *a2)
{
  v4 = HGRectIntersection(*(a2 + 20), *(a2 + 28), *(this + 3), *(this + 4));
  v7 = v5 == v4 || (v5 ^ v4) >> 32 == 0;
  if (v7 || (v8 = *(a2 + 4), v8 != *(this + 10)))
  {
    HGLogger::warning("incompatible formats", v5, v6);
  }

  else
  {
    v9 = *(this + 2);
    v10 = *(v9 + 40);
    if (v10)
    {
      v11 = *(this + 2);
    }

    else
    {
      GLPBO::_map(*(this + 2));
      v10 = *(v9 + 40);
      v11 = *(this + 2);
      v8 = *(this + 10);
    }

    *(v9 + 36) = 0;
    HGBitmap::HGBitmap(v14, *(this + 3), *(this + 4), v8, v10, *(v11 + 24));
    v12 = *(this + 6);
    if (!v12)
    {
      operator new();
    }

    HGRenderUtils::BufferCopier::start(v12, a2, v14);
    *(this + 56) = 1;
    HGBitmap::~HGBitmap(v14, v13);
  }
}

void sub_25FBFB64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2666E9F00](v9, 0x20C4093837F09);
  HGBitmap::~HGBitmap(&a9, v11);
  _Unwind_Resume(a1);
}

intptr_t HGPixelBufferObj::FinishCopyBitmap(intptr_t this)
{
  v1 = this;
  if (*(this + 56) == 1)
  {
    this = HGRenderUtils::BufferCopier::finish(*(this + 48));
    *(v1 + 56) = 0;
  }

  return this;
}

void HGPixelBufferObj::CopyBitmap(intptr_t *this, HGBitmap *a2)
{
  HGTraceGuard::HGTraceGuard(v4, "pbo", 1, "HGPixelBufferObj::CopyBitmap()");
  HGPixelBufferObj::StartCopyBitmap(this, a2);
  if (*(this + 56) == 1)
  {
    HGRenderUtils::BufferCopier::finish(this[6]);
    *(this + 56) = 0;
  }

  HGTraceGuard::~HGTraceGuard(v4);
}

HGBitmap *HGPixelBufferObj::CreateBitmap(HGPixelBufferObj *this)
{
  HGTraceGuard::HGTraceGuard(v4, "pbo", 1, "HGPixelBufferObj::CreateBitmap()");
  v2 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v2, *(this + 3), *(this + 4), *(this + 10));
  HGPixelBufferObj::CopyBitmap(this, v2);
  HGTraceGuard::~HGTraceGuard(v4);
  return v2;
}

void sub_25FBFB7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HGObject::operator delete(v9);
  HGTraceGuard::~HGTraceGuard(&a9);
  _Unwind_Resume(a1);
}

void sub_25FBFBB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, uint64_t a11, PCSharedCount a12, PCSharedCount a13, uint64_t a14)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  PCSharedCount::PCSharedCount(&a10);
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  v17 = *(v14 + 23);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v15);
  HGRenderContext::~HGRenderContext(v14);
  _Unwind_Resume(a1);
}

void HGGPURenderContext::~HGGPURenderContext(HGGPURenderContext *this)
{
  *this = &unk_28720F800;
  v2 = *(this + 19);
  if (v2)
  {
    HGGPURenderer::FinishMetalCommandBuffer(v2);
    (*(**(this + 19) + 24))(*(this + 19));
  }

  v3 = *(this + 23);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 18);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  HGRenderContext::~HGRenderContext(v5);
}

{
  HGGPURenderContext::~HGGPURenderContext(this);

  HGObject::operator delete(v1);
}

uint64_t HGGPURenderContext::DumpContext(HGGPURenderContext *this)
{
  puts("-----------------------------------------");
  printf("Dumping HGGPURenderContext: %p\n", this);
  printf("    _state                    : %d\n", *(this + 8));
  printf("    _type                     : %d\n", *(this + 9));
  printf("    _renderer                 : %p\n", *(this + 9));
  printf("    _renderQueue              : %p\n", *(this + 6));
  printf("    _renderGraphDumpLevel     : %d\n", *(this + 22));
  printf("    _intermediateBufferFormat : %d\n", *(this + 20));
  printf("    _defaultFilteringMode     : %d\n", *(this + 21));
  printf("    _concatenationFlag        : %d\n", *(this + 176));
  printf("    _renderStatsFlag          : %d\n", *(this + 92));
  printf("    _renderStatsWarmUp        : %lu\n", *(this + 12));
  printf("    _renderStatsMaxVals       : %lu\n", *(this + 13));

  return puts("-----------------------------------------");
}

void HGGPURenderContext::GetGLContext(HGGLContext **this@<X0>, HGGLContextPtr *a2@<X8>)
{
  v3 = HGGLContext::ptr(this[23]);

  HGGLContextPtr::HGGLContextPtr(a2, v3);
}

void HGGPURenderContext::SetGLContextPriority(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = 0;
  HGSynchronizable::Lock(v3);
  HGGPURenderer::GetContext(*(a1 + 72), 24, &v2);
  HGGLContext::Share();
}

void sub_25FBFC0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, uint64_t a12, HGSynchronizable *a13)
{
  PCSharedCount::PCSharedCount(&a9);
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  HGSynchronizer::~HGSynchronizer(&a13);
  _Unwind_Resume(a1);
}

HGSynchronizable *HGGPURenderContext::SetGLTexturePoolingPolicy(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 56);
  v8[1] = v4;
  v9 = 0;
  HGSynchronizable::Lock(v4);
  v5 = *(*(a1 + 152) + 1472);
  if (v5)
  {
    v6 = *a2;
    v8[0] = v6;
    if (v6)
    {
      (*(*v6 + 16))(v6);
    }

    HGTextureManager::setTexturePoolingPolicy(v5, v8);
    if (v8[0])
    {
      (*(*v8[0] + 24))(v8[0]);
    }
  }

  return HGSynchronizable::Unlock(v4);
}

void sub_25FBFC224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FBFC238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

HGSynchronizable *HGGPURenderContext::SetGLTexturePaddingPolicy(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 56);
  v8[1] = v4;
  v9 = 0;
  HGSynchronizable::Lock(v4);
  v5 = *(*(a1 + 152) + 1472);
  if (v5)
  {
    v6 = *a2;
    v8[0] = v6;
    if (v6)
    {
      (*(*v6 + 16))(v6);
    }

    HGTextureManager::setTexturePaddingPolicy(v5, v8);
    if (v8[0])
    {
      (*(*v8[0] + 24))(v8[0]);
    }
  }

  return HGSynchronizable::Unlock(v4);
}

void sub_25FBFC348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FBFC35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void HRasterizerTextureNoColor::~HRasterizerTextureNoColor(HRasterizerTextureNoColor *this)
{
  HgcRasterizerTextureNoColor::~HgcRasterizerTextureNoColor(this);

  HGObject::operator delete(v1);
}

HGRect *HGRect::Init(HGRect *this, int a2, int a3, int a4, int a5)
{
  if (a2 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a2;
  }

  if (a2 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  if (a3 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a3;
  }

  this->var0 = v5;
  this->var1 = v7;
  if (a3 <= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = a3;
  }

  this->var2 = v6;
  this->var3 = v8;
  return this;
}

float HGRectf::Init(HGRectf *this, float a2, float a3, float a4, float a5)
{
  v5 = fminf(a2, a4);
  result = fmaxf(a2, a4);
  *this = v5;
  *(this + 1) = fminf(a3, a5);
  *(this + 2) = result;
  *(this + 3) = fmaxf(a3, a5);
  return result;
}

int32x2_t HGRect::Init(void *a1, double a2, float a3, double a4, float a5)
{
  if (*&a4 < *&a2 || a5 < a3)
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *(&a2 + 1) = a3;
    result = vcvt_s32_f32(vrndm_f32(vmaxnm_f32(*&a2, 0xCF000000CF000000)));
    *(&a4 + 1) = a5;
    v7 = vrndp_f32(vminnm_f32(*&a4, 0x4F0000004F000000));
    v8 = vcge_f32(v7, 0x4F0000004F000000);
    *a1 = result;
    a1[1] = vorr_s8((*&v8 & 0x7FFFFFFF7FFFFFFFLL), vbic_s8(vcvt_s32_f32(v7), v8));
  }

  return result;
}

HGRect *HGRect::Grow(HGRect *this, HGRect a2)
{
  var1 = this->var1;
  if (this->var0 >= (a2.var0 ^ 0x7FFFFFFF))
  {
    v3 = 0x7FFFFFFF;
  }

  else
  {
    v3 = this->var0 + a2.var0;
  }

  if (this->var0 <= (0x80000000 - a2.var0))
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = this->var0 + a2.var0;
  }

  if (a2.var0 > 0)
  {
    v4 = v3;
  }

  if (var1 >= (a2.var1 ^ 0x7FFFFFFF))
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = var1 + a2.var1;
  }

  if (var1 <= (0x80000000 - a2.var1))
  {
    v6 = 0x80000000;
  }

  else
  {
    v6 = var1 + a2.var1;
  }

  if (a2.var1 <= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  var2 = this->var2;
  var3 = this->var3;
  v10 = var2 + a2.var2;
  if (var2 >= (a2.var2 ^ 0x7FFFFFFF))
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = var2 + a2.var2;
  }

  if (var2 <= (0x80000000 - a2.var2))
  {
    v10 = 0x80000000;
  }

  if (a2.var2 > 0)
  {
    v10 = v11;
  }

  if (var3 >= (a2.var3 ^ 0x7FFFFFFF))
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = var3 + a2.var3;
  }

  if (var3 <= (0x80000000 - a2.var3))
  {
    v13 = 0x80000000;
  }

  else
  {
    v13 = var3 + a2.var3;
  }

  this->var0 = v4;
  this->var1 = v7;
  if (a2.var3 <= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  this->var2 = v10;
  this->var3 = v14;
  return this;
}