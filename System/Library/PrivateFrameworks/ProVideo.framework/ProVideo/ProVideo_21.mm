const vImage_Buffer *anonymous namespace::swizzleFloatCopy(_anonymous_namespace_ *this, PCBitmap *a2, vImage_Buffer *a3)
{
}

const vImage_Buffer *anonymous namespace::swizzle8BitCopy(_anonymous_namespace_ *this, PCBitmap *a2, vImage_Buffer *a3)
{
}

uint64_t anonymous namespace::getVImageBuffer(_anonymous_namespace_ *this, PCBitmap *a2, vImage_Buffer *a3)
{
  *a2 = (*(**(this + 8) + 16))(*(this + 8), a2, a3);
  *(a2 + 1) = (*(*this + 24))(this);
  *(a2 + 2) = (*(*this + 16))(this);
  result = (*(**(this + 8) + 64))(*(this + 8));
  *(a2 + 3) = result;
  return result;
}

uint64_t anonymous namespace::getSwizzleOrder(_anonymous_namespace_ *this, const PCBitmap *a2)
{
  v2 = (*(**(this + 8) + 48))(*(this + 8), a2);
  result = 0;
  if (v2 > 5)
  {
    if (v2 == 6)
    {
      return 3;
    }

    if (v2 != 16)
    {
      return result;
    }

    return 1;
  }

  if (v2 == 4)
  {
    return 2;
  }

  if (v2 == 5)
  {
    return 1;
  }

  return result;
}

const vImage_Buffer *anonymous namespace::swizzleFloatPixels(const vImage_Buffer *result, uint64_t a2, const vImage_Buffer *a3, int a4)
{
  v5 = result;
  if (a2 != a4 || result->data != a3->data)
  {
    return vImagePermuteChannels_ARGBFFFF(v5, a3, permuteMap, 0);
  }

  return result;
}

uint64_t anonymous namespace::getSwizzlePermuteMap(uint64_t result, int a2, _BYTE *a3)
{
  v3 = 0x2030001u >> (8 * result);
  v4 = 0x1020102u >> (8 * result);
  LOBYTE(v5) = 3 - result;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      v6 = 0x2030001u >> (8 * result);
      LOBYTE(v3) = 3 - result;
      goto LABEL_8;
    }

    v6 = 0x1020102u >> (8 * result);
    LOBYTE(v4) = 3 - result;
    v5 = 0x2030001u >> (8 * result);
LABEL_11:
    v3 = 0x3000300u >> (8 * result);
    goto LABEL_12;
  }

  if (!a2)
  {
    v6 = 0x1020102u >> (8 * result);
    v4 = 0x2030001u >> (8 * result);
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    return result;
  }

  LOBYTE(v6) = 3 - result;
LABEL_8:
  v5 = 0x3000300u >> (8 * result);
LABEL_12:
  *a3 = v3;
  a3[1] = v4;
  a3[2] = v6;
  a3[3] = v5;
  return result;
}

const vImage_Buffer *anonymous namespace::swizzle8BitPixels(const vImage_Buffer *result, uint64_t a2, const vImage_Buffer *a3, int a4)
{
  v5 = result;
  if (a2 != a4 || result->data != a3->data)
  {
    return vImagePermuteChannels_ARGB8888(v5, a3, permuteMap, 0);
  }

  return result;
}

_WORD *PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>::unpremultiply(_WORD *result, double a2, double a3, double a4)
{
  v4 = result[3];
  if (v4 != 0xFFFF)
  {
    if (result[3])
    {
      v5 = v4 * 0.0000152590219;
      LODWORD(a4) = 1.0;
      v6 = 1.0 / v5;
      LOWORD(a4) = *result;
      v7 = *&a4 * 0.0000152590219;
      v8 = ((v6 * v7) * 65535.0) + 0.5 + 0.0000001;
      v9 = vcvtmd_s64_f64(v8);
      if (v9 >= 0xFFFF)
      {
        v9 = 0xFFFF;
      }

      *result = v9 & ~(v9 >> 31);
      LOWORD(v8) = result[1];
      v10 = *&v8 * 0.0000152590219;
      v11 = ((v6 * v10) * 65535.0) + 0.5 + 0.0000001;
      v12 = vcvtmd_s64_f64(v11);
      if (v12 >= 0xFFFF)
      {
        v12 = 0xFFFF;
      }

      result[1] = v12 & ~(v12 >> 31);
      LOWORD(v11) = result[2];
      v13 = *&v11 * 0.0000152590219;
      v14 = vcvtmd_s64_f64(((v6 * v13) * 65535.0) + 0.5 + 0.0000001);
      if (v14 >= 0xFFFF)
      {
        v14 = 0xFFFF;
      }

      result[2] = v14 & ~(v14 >> 31);
    }

    else
    {
      *result = 0;
      result[2] = 0;
    }
  }

  return result;
}

uint64_t PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply(unsigned __int16 *a1)
{
  v2 = half::_toFloat[a1[1]];
  result = 15360;
  if (v2 != 1.0)
  {
    v4 = half::_toFloat[a1[1]];
    if (v4 == 0.0)
    {
      result = 0;
    }

    else
    {
      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(half::_toFloat[*a1] / v4);
    }

    *a1 = result;
  }

  return result;
}

uint64_t PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::premultiply(unsigned __int16 *a1)
{
  v2 = half::_toFloat[*a1] * half::_toFloat[a1[1]];
  if (v2 == 0.0)
  {
    result = 0;
  }

  else
  {
    v4 = half::_toFloat[*a1] * half::_toFloat[a1[1]];
    if (half::_eLut[LODWORD(v2) >> 23])
    {
      result = half::_eLut[LODWORD(v2) >> 23] + (((LODWORD(v4) & 0x7FF000u) + 4096) >> 13);
    }

    else
    {
      result = half::convert(LODWORD(v2));
    }
  }

  *a1 = result;
  return result;
}

uint64_t ProCore::Private::ChannelTypeTraits<half>::denormalizef(float a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (half::_eLut[LODWORD(a1) >> 23])
  {
    return half::_eLut[LODWORD(a1) >> 23] + (((LODWORD(a1) & 0x7FF000u) + 4096) >> 13);
  }

  return half::convert(LODWORD(a1));
}

unsigned __int16 *PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>::unpremultiply(unsigned __int16 *result)
{
  v1 = half::_toFloat[result[3]];
  if (v1 != 1.0)
  {
    v2 = result;
    if (v1 == 0.0)
    {
      *result = 0;
      result[2] = 0;
    }

    else
    {
      v3 = 1.0 / v1;
      *result = ProCore::Private::ChannelTypeTraits<half>::denormalizef((1.0 / v1) * half::_toFloat[*result]);
      v2[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v3 * half::_toFloat[v2[1]]);
      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v3 * half::_toFloat[v2[2]]);
      v2[2] = result;
    }
  }

  return result;
}

uint64_t PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>::premultiply(unsigned __int16 *a1)
{
  v2 = a1[3];
  v3 = half::_toFloat[*a1] * half::_toFloat[v2];
  if (v3 == 0.0)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    v5 = half::_toFloat[*a1] * half::_toFloat[v2];
    if (half::_eLut[LODWORD(v3) >> 23])
    {
      v4 = half::_eLut[LODWORD(v3) >> 23] + (((LODWORD(v5) & 0x7FF000u) + 4096) >> 13);
    }

    else
    {
      LOWORD(v4) = half::convert(LODWORD(v3));
    }
  }

  *a1 = v4;
  v6 = half::_toFloat[a1[1]] * half::_toFloat[v2];
  if (v6 == 0.0)
  {
    LOWORD(v7) = 0;
  }

  else if (half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = half::_eLut[LODWORD(v6) >> 23] + (((COERCE_UNSIGNED_INT(half::_toFloat[a1[1]] * half::_toFloat[v2]) & 0x7FF000) + 4096) >> 13);
  }

  else
  {
    LOWORD(v7) = half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  v8 = half::_toFloat[a1[2]] * half::_toFloat[v2];
  if (v8 == 0.0)
  {
    result = 0;
  }

  else if (half::_eLut[LODWORD(v8) >> 23])
  {
    result = half::_eLut[LODWORD(v8) >> 23] + (((COERCE_UNSIGNED_INT(half::_toFloat[a1[2]] * half::_toFloat[v2]) & 0x7FF000) + 4096) >> 13);
  }

  else
  {
    result = half::convert(LODWORD(v8));
  }

  a1[2] = result;
  return result;
}

uint64_t anonymous namespace::bitmapInfoFromPCBitmap(_anonymous_namespace_ *this, const PCBitmap *a2)
{
  v3 = (*(**(this + 8) + 48))(*(this + 8), a2);
  if (v3 > 9)
  {
    if (v3 > 14)
    {
      if ((v3 - 15) >= 2)
      {
        if (v3 != 17)
        {
          goto LABEL_27;
        }

        v11 = (*(*this + 48))(this) == 0;
        v12 = 8452;
        v13 = 8450;
      }

      else
      {
        v11 = (*(*this + 48))(this) == 0;
        v12 = 8451;
        v13 = 8449;
      }

LABEL_23:
      if (v11)
      {
        return v12;
      }

      else
      {
        return v13;
      }
    }

    if (v3 != 10)
    {
      if (v3 == 14)
      {
        return 8448;
      }

      goto LABEL_27;
    }

LABEL_17:
    v11 = (*(*this + 48))(this) == 0;
    v12 = 4099;
    v13 = 4097;
    goto LABEL_23;
  }

  if (v3 > 4)
  {
    if (v3 == 5)
    {
      goto LABEL_18;
    }

    if (v3 == 7)
    {
      return 4096;
    }

    if (v3 != 8)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v11 = (*(*this + 48))(this) == 0;
      v12 = 4;
      v13 = 2;
      goto LABEL_23;
    }

LABEL_27:
    PCPrint("File %s, line %d should not have been reached:\n\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCBitmap.mm");
    pcAbortImpl();
  }

LABEL_18:
  if ((*(*this + 48))(this))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void sub_25FB8B4AC(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CGDataProvider *,void (*)(CGDataProvider *),std::allocator<CGDataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<CGDataProvider *,void (*)(CGDataProvider *),std::allocator<CGDataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_25FB8B5EC(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CGImage *,void (*)(CGImage *),std::allocator<CGImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<CGImage *,void (*)(CGImage *),std::allocator<CGImage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_25FB8B730(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CGContext *,void (*)(CGContext *),std::allocator<CGContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<CGContext *,void (*)(CGContext *),std::allocator<CGContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

_BYTE *PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(_BYTE *result, double a2)
{
  v2 = result[1];
  if (result[1])
  {
    if (v2 == 255)
    {
      return result;
    }

    LOBYTE(a2) = *result;
    v3 = *&a2 * 0.00392156863;
    v4 = v2 * 0.00392156863;
    v5 = vcvtmd_s64_f64(((v3 / v4) * 255.0) + 0.5 + 0.0000001);
    if (v5 >= 255)
    {
      v5 = 255;
    }

    v2 = v5 & ~(v5 >> 31);
  }

  *result = v2;
  return result;
}

_WORD *PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(_WORD *result, double a2)
{
  v2 = result[1];
  if (result[1])
  {
    if (v2 == 0xFFFF)
    {
      return result;
    }

    LOWORD(a2) = *result;
    v3 = *&a2 * 0.0000152590219;
    v4 = v2 * 0.0000152590219;
    v5 = vcvtmd_s64_f64(((v3 / v4) * 65535.0) + 0.5 + 0.0000001);
    if (v5 >= 0xFFFF)
    {
      v6 = 0xFFFF;
    }

    else
    {
      v6 = v5;
    }

    v2 = v6 & ~(v6 >> 31);
  }

  *result = v2;
  return result;
}

unsigned __int8 *PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(unsigned __int8 *result, double a2, double a3, double a4)
{
  v4 = *result;
  if (v4 != 255)
  {
    if (*result)
    {
      v5 = v4 * 0.00392156863;
      LODWORD(a4) = 1.0;
      v6 = 1.0 / v5;
      LOBYTE(a4) = result[1];
      v7 = *&a4 * 0.00392156863;
      v8 = ((v6 * v7) * 255.0) + 0.5 + 0.0000001;
      v9 = vcvtmd_s64_f64(v8);
      if (v9 >= 255)
      {
        v9 = 255;
      }

      result[1] = v9 & ~(v9 >> 31);
      LOBYTE(v8) = result[2];
      v10 = *&v8 * 0.00392156863;
      v11 = ((v6 * v10) * 255.0) + 0.5 + 0.0000001;
      v12 = vcvtmd_s64_f64(v11);
      if (v12 >= 255)
      {
        v12 = 255;
      }

      result[2] = v12 & ~(v12 >> 31);
      LOBYTE(v11) = result[3];
      v13 = *&v11 * 0.00392156863;
      v14 = vcvtmd_s64_f64(((v6 * v13) * 255.0) + 0.5 + 0.0000001);
      if (v14 >= 255)
      {
        v14 = 255;
      }

      result[3] = v14 & ~(v14 >> 31);
    }

    else
    {
      *(result + 1) = 0;
      result[3] = 0;
    }
  }

  return result;
}

_BYTE *PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>::unpremultiply(_BYTE *result, double a2, double a3, double a4)
{
  v4 = result[3];
  if (v4 != 255)
  {
    if (result[3])
    {
      v5 = v4 * 0.00392156863;
      LODWORD(a4) = 1.0;
      v6 = 1.0 / v5;
      LOBYTE(a4) = *result;
      v7 = *&a4 * 0.00392156863;
      v8 = ((v6 * v7) * 255.0) + 0.5 + 0.0000001;
      v9 = vcvtmd_s64_f64(v8);
      if (v9 >= 255)
      {
        v9 = 255;
      }

      *result = v9 & ~(v9 >> 31);
      LOBYTE(v8) = result[1];
      v10 = *&v8 * 0.00392156863;
      v11 = ((v6 * v10) * 255.0) + 0.5 + 0.0000001;
      v12 = vcvtmd_s64_f64(v11);
      if (v12 >= 255)
      {
        v12 = 255;
      }

      result[1] = v12 & ~(v12 >> 31);
      LOBYTE(v11) = result[2];
      v13 = *&v11 * 0.00392156863;
      v14 = vcvtmd_s64_f64(((v6 * v13) * 255.0) + 0.5 + 0.0000001);
      if (v14 >= 255)
      {
        v14 = 255;
      }

      result[2] = v14 & ~(v14 >> 31);
    }

    else
    {
      *result = 0;
      result[2] = 0;
    }
  }

  return result;
}

void PCUnsupportedOperationException::~PCUnsupportedOperationException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void sub_25FB8BD60(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CGColor *,void (*)(void const*),std::allocator<CGColor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<CGColor *,void (*)(void const*),std::allocator<CGColor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_25FB8BEA0(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<__CFDictionary *,void (*)(void const*),std::allocator<__CFDictionary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<__CFDictionary *,void (*)(void const*),std::allocator<__CFDictionary>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_25FB8BFE0(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CGImageDestination *,void (*)(void const*),std::allocator<CGImageDestination>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<CGImageDestination *,void (*)(void const*),std::allocator<CGImageDestination>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207BA8;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8C3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F8C88;
  return a1;
}

void sub_25FB8C478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207BF8;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8C6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207C48;
  return a1;
}

void sub_25FB8C784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207CC0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207CC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8C9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2872077B8;
  return a1;
}

void sub_25FB8CA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207D10;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8CCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207830;
  return a1;
}

void sub_25FB8CD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207D60;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8CF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F8AA8;
  return a1;
}

void sub_25FB8D030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207DB0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8D258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2872078A8;
  return a1;
}

void sub_25FB8D300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207E00;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8D528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F8B98;
  return a1;
}

void sub_25FB8D5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207E50;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8D834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207EA0;
  return a1;
}

void sub_25FB8D8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207F18;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8DB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F89B8;
  return a1;
}

void sub_25FB8DBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207F68;
  std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287207F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8DE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207FB8;
  return a1;
}

void sub_25FB8DEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287208030;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287208030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8E11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208080;
  return a1;
}

void sub_25FB8E1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872080F8;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872080F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8E428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208148;
  return a1;
}

void sub_25FB8E4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872081C0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872081C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8E734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207920;
  return a1;
}

void sub_25FB8E7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287208210;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287208210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8EA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208260;
  return a1;
}

void sub_25FB8EAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872082D8;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872082D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208328;
  return a1;
}

void sub_25FB8EDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>::~PCBitmap_t(PCBitmap *a1)
{
  PCBitmap::~PCBitmap(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872083A0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872083A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8F01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207998;
  return a1;
}

void sub_25FB8F0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872083F0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872083F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25FB8F2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>::PCBitmap_t<ProCore_Private::PCBitmapRepDefault>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207A10;
  return a1;
}

void sub_25FB8F394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void sub_25FB8F430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCBitmap>::shared_ptr[abi:ne200100]<PCBitmap,0>();
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<PCBitmap *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap>,std::allocator<PCBitmap>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<PCBitmap *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap>,std::allocator<PCBitmap>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCBitmap *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap>,std::allocator<PCBitmap>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void PCImageAttributes::PCImageAttributes(PCImageAttributes *this)
{
  *this = xmmword_26034BDC0;
  *(this + 2) = 0x500000004;
  DefaultRGBCGColorSpace = PCInfo::getDefaultRGBCGColorSpace(this);
  PCColorSpaceHandle::PCColorSpaceHandle((this + 24), DefaultRGBCGColorSpace);
  *(this + 4) = 3553;
  *(this + 40) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
}

uint64_t PCImageAttributes::PCImageAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t PCImageAttributes::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    PCCFRef<CGColorSpace *>::operator=((a1 + 24), (a2 + 24));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
  }

  return a1;
}

void PCImage::PCImage(PCImage *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2872084B8;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  DefaultRGBCGColorSpace = PCInfo::getDefaultRGBCGColorSpace(this);
  PCColorSpaceHandle::PCColorSpaceHandle((this + 48), DefaultRGBCGColorSpace);
  *(this + 56) = 0;
}

void sub_25FB8F704(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void PCImage::PCImage(PCImage *this, int a2, int a3, int a4, int a5, CGColorSpaceRef space)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2872084B8;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = a5;
  *(this + 11) = 0;
  PCColorSpaceHandle::PCColorSpaceHandle((this + 48), space);
  *(this + 56) = 0;
}

void sub_25FB8F77C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCImage::PCImage(uint64_t a1, int a2, int a3, int a4, int a5, CGColorSpace **a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2872084B8;
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = a5;
  *(a1 + 44) = 0;
  v7 = *a6;
  *(a1 + 48) = *a6;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  *(a1 + 56) = 0;
  return a1;
}

void sub_25FB8F7F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCImage::PCImage(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2872084B8;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_25FB8F880(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void PCImage::~PCImage(CGColorSpace **this)
{
  *this = &unk_2872084B8;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 6);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

CGColorSpace **PCImage::getAttributes(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 40);
  result = PCCFRef<CGColorSpace *>::operator=((a2 + 24), (a1 + 48));
  *(a2 + 40) = *(a1 + 56);
  return result;
}

CGColorSpace **PCImage::setColorSpace(PCImage *this, CGColorSpace *a2)
{
  PCColorSpaceHandle::PCColorSpaceHandle(&v4, a2);
  (*(*this + 56))(this, &v4);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v4);
}

void sub_25FB8F9B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace *PCImage::getColorSpace@<X0>(PCImage *this@<X0>, CGColorSpace **a2@<X8>)
{
  result = *(this + 6);
  *a2 = result;
  if (result)
  {
    return PCCFRefTraits<CGColorSpace *>::retain(result);
  }

  return result;
}

int *PCColor::RED(PCColor *this)
{
  {
    getDefaultColorSpace(&v2);
    PCColor::RED(void)::RED = 4;
    qword_27FE4A8F0 = 0x3FF0000000000000;
    unk_27FE4A8F8 = 0;
    qword_27FE4A900 = 0;
    unk_27FE4A908 = 0x3FF0000000000000;
    sanitizeColorSpace(&v2, &qword_27FE4A918);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v2);
    __cxa_atexit(PCColor::~PCColor, &PCColor::RED(void)::RED, &dword_25F8F0000);
  }

  return &PCColor::RED(void)::RED;
}

void sub_25FB8FABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace *getDefaultColorSpace@<X0>(void *a1@<X8>)
{
  {
    allocDefaultColorSpace();
  }

  result = *getDefaultColorSpace(void)::result;
  *a1 = *getDefaultColorSpace(void)::result;
  if (result)
  {

    return PCCFRefTraits<CGColorSpace *>::retain(result);
  }

  return result;
}

int *PCColor::BLACK(PCColor *this)
{
  {
    getDefaultColorSpace(&v2);
    PCColor::BLACK(void)::BLACK = 4;
    qword_27FE4A930 = 0;
    unk_27FE4A938 = 0;
    qword_27FE4A940 = 0;
    unk_27FE4A948 = 0x3FF0000000000000;
    sanitizeColorSpace(&v2, &qword_27FE4A958);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v2);
    __cxa_atexit(PCColor::~PCColor, &PCColor::BLACK(void)::BLACK, &dword_25F8F0000);
  }

  return &PCColor::BLACK(void)::BLACK;
}

void sub_25FB8FC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

int *PCColor::WHITE(PCColor *this)
{
  {
    getDefaultColorSpace(&v7);
    PCColor::WHITE(void)::WHITE = 4;
    __asm { FMOV            V0.2D, #1.0 }

    unk_27FE4A970 = _Q0;
    unk_27FE4A980 = _Q0;
    sanitizeColorSpace(&v7, &qword_27FE4A998);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v7);
    __cxa_atexit(PCColor::~PCColor, &PCColor::WHITE(void)::WHITE, &dword_25F8F0000);
  }

  return &PCColor::WHITE(void)::WHITE;
}

void sub_25FB8FD48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

int *PCColor::CLEAR(PCColor *this)
{
  {
    getDefaultColorSpace(&v2);
    PCColor::CLEAR(void)::CLEAR = 4;
    unk_280C5C530 = 0u;
    unk_280C5C540 = 0u;
    sanitizeColorSpace(&v2, &qword_280C5C558);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v2);
    __cxa_atexit(PCColor::~PCColor, &PCColor::CLEAR(void)::CLEAR, &dword_25F8F0000);
  }

  return &PCColor::CLEAR(void)::CLEAR;
}

void sub_25FB8FE28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCColor::PCColor(PCColor *this)
{
  getDefaultColorSpace(&v2);
  this->var0.var0 = 4;
  this->var0.var1[0] = 0.0;
  this->var0.var1[1] = 0.0;
  this->var0.var1[2] = 0.0;
  this->var0.var1[3] = 1.0;
  sanitizeColorSpace(&v2, &this->var1._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v2);
}

void sub_25FB8FEAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCColor::PCColor(PCColor *this, float a2, float a3, float a4, float a5, CGColorSpace *a6)
{
  if (a6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(a6);
  }

  v12 = a6;
  this->var0.var0 = 4;
  this->var0.var1[0] = a2;
  this->var0.var1[1] = a3;
  this->var0.var1[2] = a4;
  this->var0.var1[3] = a5;
  sanitizeColorSpace(&v12, &this->var1._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v12);
}

void sub_25FB8FF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCColor::PCColor(PCColor *this, float a2, float a3, float a4, OZChannelBase *a5)
{
  v9 = OZChannelBase::setRangeName(a5, a5);
  this->var0.var0 = 4;
  this->var0.var1[0] = a2;
  this->var0.var1[1] = a3;
  this->var0.var1[2] = a4;
  this->var0.var1[3] = 1.0;
  sanitizeColorSpace(v9, &this->var1._obj);
}

void PCColor::PCColor(PCColor *this, float a2, float a3, float a4, float a5, OZChannelBase *a6)
{
  v11 = OZChannelBase::setRangeName(a6, a6);
  this->var0.var0 = 4;
  this->var0.var1[0] = a2;
  this->var0.var1[1] = a3;
  this->var0.var1[2] = a4;
  this->var0.var1[3] = a5;
  sanitizeColorSpace(v11, &this->var1._obj);
}

void sanitizeColorSpace(CGColorSpaceRef *a1@<X0>, CGColorSpace **a2@<X8>)
{
  if (*a1)
  {
    PCGetCachedExtendedRangeColorSpace(a1, a2);
  }

  else
  {
    getDefaultColorSpace(a2);
  }
}

uint64_t PCColor::PCColor(uint64_t a1, uint64_t a2, CGColorSpaceRef *a3)
{
  *a1 = 0;
  sanitizeColorSpace(a3, (a1 + 48));
  transformColor<PCColor::ColorComponents>(a2, *(a2 + 48), a1, *(a1 + 48));
  return a1;
}

void PCColor::PCColor(PCColor *this, const PCColor *a2, CGColorSpaceRef space)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v6 = space;
  PCColor::PCColor(this, a2, &v6);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v6);
}

void sub_25FB9012C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

double PCColor::setAlpha(PCColor *this, float a2)
{
  result = a2;
  *(&this->var0.var0 + this->var0.var0) = result;
  return result;
}

CGColorSpace **PCColor::setRGB(PCColor *this, float a2, float a3, float a4, CGColorSpace *a5)
{
  v6 = *(&this->var0.var0 + this->var0.var0);
  PCColor::PCColor(&v11, a2, a3, a4, v6, a5);
  v7 = *&v11.var0.var1[1];
  *&this->var0.var0 = *&v11.var0.var0;
  *&this->var0.var1[1] = v7;
  *&this->var0.var1[3] = *&v11.var0.var1[3];
  obj = this->var1._obj;
  v9 = v11.var1._obj;
  if (obj && obj != v11.var1._obj)
  {
    PCCFRefTraits<CGColorSpace *>::release(obj);
    v9 = v11.var1._obj;
  }

  this->var1._obj = v9;
  v11.var1._obj = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v11.var1._obj);
}

CGColorSpace **PCColor::setRGB(PCColor *this, float a2, float a3, float a4, OZChannelBase *a5)
{
  v9 = *(&this->var0.var0 + this->var0.var0);
  v10 = OZChannelBase::setRangeName(a5, a5);
  LODWORD(v14) = 4;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = v9;
  sanitizeColorSpace(v10, &v17);
  *&this->var0.var0 = v14;
  *&this->var0.var1[1] = v15;
  *&this->var0.var1[3] = v16;
  obj = this->var1._obj;
  v12 = v17;
  if (obj && obj != v17)
  {
    PCCFRefTraits<CGColorSpace *>::release(obj);
    v12 = v17;
  }

  this->var1._obj = v12;
  v17 = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v17);
}

CGColorSpace **PCColor::setRGBA(PCColor *this, float a2, float a3, float a4, float a5, CGColorSpace *a6)
{
  PCColor::PCColor(&v12, a2, a3, a4, a5, a6);
  v7 = *&v12.var0.var1[1];
  *&this->var0.var0 = *&v12.var0.var0;
  *&this->var0.var1[1] = v7;
  *&this->var0.var1[3] = *&v12.var0.var1[3];
  obj = this->var1._obj;
  v9 = v12.var1._obj;
  if (obj)
  {
    v10 = obj == v12.var1._obj;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    PCCFRefTraits<CGColorSpace *>::release(obj);
    v9 = v12.var1._obj;
  }

  this->var1._obj = v9;
  v12.var1._obj = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v12.var1._obj);
}

CGColorSpace **PCColor::setRGBA(PCColor *this, float a2, float a3, float a4, float a5, OZChannelBase *a6)
{
  v11 = OZChannelBase::setRangeName(a6, a6);
  LODWORD(v15) = 4;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  *&v17 = a5;
  sanitizeColorSpace(v11, &v18);
  *&this->var0.var0 = v15;
  *&this->var0.var1[1] = v16;
  *&this->var0.var1[3] = v17;
  obj = this->var1._obj;
  v13 = v18;
  if (obj && obj != v18)
  {
    PCCFRefTraits<CGColorSpace *>::release(obj);
    v13 = v18;
  }

  this->var1._obj = v13;
  v18 = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v18);
}

CGColorSpace **PCColor::getRGBA(int *a1, float *a2, float *a3, float *a4, float *a5, CGColorSpaceRef space, int a7, PVPerfStats::FrameStats *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a1;
    if (v15)
    {
      v16 = 8 * v15;
      v17 = (a1 + 2);
      v18 = v40;
      do
      {
        v19 = *v17++;
        v20 = v19;
        *v18++ = v20;
        v16 -= 8;
      }

      while (v16);
    }

    v21 = *(a1 + 6);
    *&v37 = 1;
    *(&v37 + 1) = v40;
    *&v38 = v15;
    *(&v38 + 1) = v21;
    v39 = 2;
    PCGetCachedExtendedRangeColorSpace(space, &v35);
    v32[0] = 1;
    v32[1] = v36;
    v32[2] = 4;
    v32[3] = v35;
    v33 = 2;
    v34 = a7;
    PCColorUtil::transformColorWithDynamicRange(&v37, v32, a8);
    v22 = v36[1];
    *a2 = *v36;
    *a3 = v22;
    v23 = v36[3];
    *a4 = *&v36[2];
    *a5 = v23;
    v24 = &v35;
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    PCGetCachedExtendedRangeColorSpace(space, v32);
    transformColor(a1 + 1, *a1, *(a1 + 6), &v37, 4, v32[0]);
    v25 = *(&v37 + 1);
    v26 = *&v37;
    *a2 = v26;
    v27 = v25;
    *a3 = v27;
    v28 = *(&v38 + 1);
    v29 = *&v38;
    *a4 = v29;
    v30 = v28;
    *a5 = v30;
    v24 = v32;
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(v24);
}

CGColorSpace **PCColor::getRGBA(PCColor *this, float *a2, float *a3, float *a4, float *a5, const PCColorSpaceHandle *a6)
{
  CGColorSpace = PCColorSpaceHandle::getCGColorSpace(a6);

  return PCColor::getRGBA(&this->var0.var0, a2, a3, a4, a5, CGColorSpace, 0, &kPCNoToneMapMethod);
}

float64x2_t PCColor::setRGBA(int *a1, CGColorSpaceRef space, int a3, PVPerfStats::FrameStats *a4, float a5, float a6, float a7, float a8)
{
  v27 = *MEMORY[0x277D85DE8];
  if (space)
  {
    PCGetCachedExtendedRangeColorSpace(space, v24);
  }

  else
  {
    getDefaultColorSpace(v24);
  }

  v11 = *(a1 + 6);
  v12 = v24[0];
  if (v11 && v11 != v24[0])
  {
    PCCFRefTraits<CGColorSpace *>::release(v11);
    v12 = v24[0];
  }

  *(a1 + 6) = v12;
  v24[0] = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(v24);
  if (a3 == 1)
  {
    *v26 = a5;
    *&v26[1] = a6;
    *&v26[2] = a7;
    *&v26[3] = a8;
    v13 = *(a1 + 6);
    v24[0] = 1;
    v24[1] = v26;
    v24[2] = 4;
    v24[3] = v13;
    v24[4] = 0x100000002;
    v23[0] = 1;
    v23[1] = v25;
    v23[2] = 4;
    v23[3] = v13;
    v23[4] = 2;
    PCColorUtil::transformColorWithDynamicRange(v24, v23, a4);
    v22 = v25[0];
    v14 = v25[1];
  }

  else
  {
    v22 = __PAIR64__(LODWORD(a6), LODWORD(a5));
    v14 = __PAIR64__(LODWORD(a8), LODWORD(a7));
  }

  v15 = *a1;
  if (v15 <= 3)
  {
    v20 = v14;
    bzero(&a1[2 * v15 + 2], 32 - 8 * v15);
    v14 = v20;
  }

  result = vcvtq_f64_f32(v14);
  *a1 = 4;
  *(a1 + 2) = vcvtq_f64_f32(v22);
  *(a1 + 6) = result;
  return result;
}

void sub_25FB908D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

double PCColor::getComponents(int *a1, double **a2)
{
  v4 = *a1;
  v9 = 0;
  std::vector<double>::assign(a2, v4, &v9);
  if (v4 >= 1)
  {
    v6 = (a1 + 2);
    v7 = *a2;
    do
    {
      v8 = *v6++;
      result = v8;
      *v7++ = v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *std::vector<double>::assign(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<double>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_260343E00)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_260343E00)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void PCColor::mix(PCColor *this, const PCColor *a2, float a3)
{
  LODWORD(v11) = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  transformColor<PCColor::ColorComponents>(&a2->var0.var0, a2->var1._obj, &v11, this->var1._obj);
  v5 = (LODWORD(v11) - 1);
  if (LODWORD(v11) != 1)
  {
    v6 = v12;
    var1 = this->var0.var1;
    do
    {
      v8 = *v6++;
      v9 = v8;
      v10 = *var1;
      *var1++ = ((v9 * a3) + ((1.0 - a3) * v10));
      --v5;
    }

    while (v5);
  }
}

double transformColor<PCColor::ColorComponents>(double *a1, CGColorSpace *a2, double *a3, CGColorSpaceRef space)
{
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(space);
  if (NumberOfComponents + 1 < 5)
  {
    v9 = NumberOfComponents + 1;
  }

  else
  {
    v9 = 5;
  }

  v10 = *a3;
  if (v9 > v10)
  {
    bzero(&a3[v10 + 1], 8 * (v9 - v10));
  }

  *a3 = v9;
  v11 = *a1;

  return transformColor(a1 + 1, v11, a2, a3 + 1, v9, space);
}

void PCWorkingColor::PCWorkingColor(PCWorkingColor *this, float a2, float a3, float a4, float a5, CGColorSpace *a6)
{
  if (a6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(a6);
  }

  v12 = a6;
  PCWorkingColor::PCWorkingColor(this, &v12, 0, &kPCNoToneMapMethod, a2, a3, a4, a5);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v12);
}

void sub_25FB90D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCWorkingColor::PCWorkingColor(PCWorkingColor *this, CGColorSpaceRef space)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v4 = space;
  PCWorkingColor::PCWorkingColor(this, &v4, 0, &kPCNoToneMapMethod, 0.0, 0.0, 0.0, 1.0);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v4);
}

void sub_25FB90DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCWorkingColor::PCWorkingColor(PCWorkingColor *this, OZChannelBase *a2)
{
  v3 = OZChannelBase::setRangeName(a2, a2);

  PCWorkingColor::PCWorkingColor(this, v3, 0, &kPCNoToneMapMethod, 0.0, 0.0, 0.0, 1.0);
}

uint64_t PCWorkingColor::PCWorkingColor(uint64_t a1, CGColorSpaceRef *a2, int a3, PVPerfStats::FrameStats *a4, float a5, float a6, float a7, float a8)
{
  v13 = 4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  sanitizeColorSpace(a2, &v18);
  PCWorkingColor::PCWorkingColor(a1, &v13, a2, a3, a4);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v18);
  return a1;
}

uint64_t PCWorkingColor::PCWorkingColor(uint64_t a1, int *a2, CGColorSpaceRef *a3, int a4, PVPerfStats::FrameStats *a5)
{
  v10 = *a3;
  *(a1 + 16) = *a3;
  if (v10)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v10);
  }

  *(a1 + 24) = a4;
  *(a1 + 28) = *a5;
  PCColor::getRGBA(a2, a1, (a1 + 4), (a1 + 8), (a1 + 12), *a3, a4, a5);
  return a1;
}

void PCWorkingColor::PCWorkingColor(PCWorkingColor *this, const PCColor *a2, CGColorSpaceRef space)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v6 = space;
  PCWorkingColor::PCWorkingColor(this, &a2->var0.var0, &v6, 0, &kPCNoToneMapMethod);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v6);
}

void sub_25FB91010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

__n128 PCWorkingColor::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

float *PCWorkingColor::setRGB(float *this, float a2, float a3, float a4)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

float PCWorkingColor::getRGBA(PCWorkingColor *this, float *a2, float *a3, float *a4, float *a5)
{
  *a2 = *this;
  *a3 = *(this + 1);
  *a4 = *(this + 2);
  result = *(this + 3);
  *a5 = result;
  return result;
}

float32x4_t operator*@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  *a3 = *a1;
  v6 = *(a1 + 16);
  a3[1].i64[0] = v6;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  a3[1].i64[1] = *(a1 + 24);
  a3[2].i32[0] = *(a1 + 32);
  result = vmulq_f32(*a3, *a2);
  *a3 = result;
  return result;
}

BOOL operator==(uint64_t a1, uint64_t a2)
{
  if (vabds_f32(*(a1 + 12), *(a2 + 12)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v10 = *a2;
  v11 = v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 28);
  PCColorUtil::transform(&v9, &v10, v4, v5, v6, v7, v12);
  return vabds_f32(*a1, v12[0]) < 0.00001 && vabds_f32(*(a1 + 4), v12[1]) < 0.00001 && vabds_f32(*(a1 + 8), v12[2]) < 0.00001;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

void PCWorkingColorVector::PCWorkingColorVector(PCWorkingColorVector *this, float a2, float a3, float a4, float a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
}

float32_t PCWorkingColorVector::operator*=(float32x2_t *a1, float a2)
{
  *a1 = vmul_n_f32(*a1, a2);
  result = a1[1].f32[0] * a2;
  a1[1].f32[0] = result;
  return result;
}

void allocDefaultColorSpace(void)
{
  PCColorSpaceCache::sRGB(v2);
  v1 = *OZChannelBase::setRangeName(v2, v0);
  v2[1] = v1;
  if (v1)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v1);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(v2);
  operator new();
}

void sub_25FB91378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x20C4093837F09);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

double transformColor(double *a1, uint64_t a2, CGColorSpace *a3, double *a4, uint64_t a5, CGColorSpace *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = 8 * a2;
    v9 = v19;
    do
    {
      v10 = *a1++;
      v11 = v10;
      *v9++ = v11;
      v8 -= 8;
    }

    while (v8);
  }

  v17[0] = 1;
  v17[1] = v19;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = 2;
  v16[0] = 1;
  v16[1] = v18;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = 2;
  PCColorUtil::transformColor(v17, v16);
  if (a5)
  {
    v13 = 4 * a5;
    v14 = v18;
    do
    {
      v15 = *v14++;
      result = v15;
      *a4++ = v15;
      v13 -= 4;
    }

    while (v13);
  }

  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2)
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
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

BOOL PCColorSpaceHandle::isSameColorSpace(CGColorSpaceRef space, CGColorSpace *a2, CGColorSpace *a3)
{
  v3 = (space | a2) == 0;
  if (space && a2)
  {
    if (space == a2)
    {
      return 1;
    }

    else
    {
      PCCFRefTraits<CGColorSpace *>::retain(space);
      v9 = space;
      PCCFRefTraits<CGColorSpace *>::retain(a2);
      v8 = a2;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v9);
    }
  }

  return v3;
}

void sub_25FB91684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, CGColorSpace *a10)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a10);
  _Unwind_Resume(a1);
}

BOOL anonymous namespace::colorSpacesAreEquivalent(CGColorSpace **this, CGColorSpace **a2, const PCColorSpaceHandle *a3)
{
  v9 = PCGetNCLCCodeForColorSpace(*this);
  v10 = v4;
  v7 = PCGetNCLCCodeForColorSpace(*a2);
  v8 = v5;
  return operator==(&v9, &v7);
}

void PCColorSpaceHandle::PCColorSpaceHandle(PCColorSpaceHandle *this, CGColorSpaceRef space)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  *this = space;
}

BOOL PCColorSpaceHandle::isSameColorSpace(CGColorSpace **this, CGColorSpace **a2, const PCColorSpaceHandle *a3)
{
  v4 = *this;
  v5 = *a2;
  result = (*this | *a2) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
  }

  return result;
}

void PCColorSpaceHandle::getMD5(CGColorSpace **this@<X0>, PCWorkingColorVector *a2@<X8>)
{
  if (*this)
  {
  }

  else
  {
    PCWorkingColorVector::PCWorkingColorVector(a2);
  }
}

void PCCachedFunctionImpl<PCHash128,PCColorSpaceHandle const&>::operator()(os_unfair_lock_s *a1@<X0>, CGColorSpace **a2@<X1>, PCWorkingColorVector *a3@<X8>)
{
  v6 = a1 + 8;
  v11[1] = &a1[8];
  PCSpinLock::lock(a1 + 8);
  v7 = *a2;
  v11[0] = v7;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  v10 = 0;
  PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::findValue(*&a1[10]._os_unfair_lock_opaque, v11, &v10, a3);
  if ((v10 & 1) == 0)
  {
    v8 = *&a1[6]._os_unfair_lock_opaque;
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(&v9);
    *a3 = v9;
    PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::addValue(*&a1[10]._os_unfair_lock_opaque, v11, a3, 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(v11);
  PCSpinLock::unlock(v6);
}

void sub_25FB9188C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void PCColorSpaceHandle::getMD5(PCColorSpaceHandle *this@<X0>, PCWorkingColorVector *a2@<X8>)
{
  if (this)
  {
    PCCFRefTraits<CGColorSpace *>::retain(this);
    v5 = this;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v5);
  }

  else
  {

    PCWorkingColorVector::PCWorkingColorVector(a2);
  }
}

void sub_25FB91934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace **PCColorSpaceHandle::PCColorSpaceHandle(CGColorSpace **a1, CGColorSpace **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v3);
  }

  return a1;
}

CGColorSpace **PCColorSpaceHandle::setColorSpace(CGColorSpace **this, CGColorSpaceRef space)
{
  v2 = space;
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v7 = v2;
  v4 = *this;
  if (*this)
  {
    v5 = v4 == v2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    PCCFRefTraits<CGColorSpace *>::release(v4);
    v2 = v7;
  }

  *this = v2;
  v7 = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v7);
}

void sub_25FB91A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::makeColorSpaceFromCacheKey(uint64_t a1@<X0>, CGColorSpace **a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = *a1;
  v23 = *(a1 + 8);
  v4 = PCGetNCLCColorSpace(&v22);
  v5 = v4;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
    *a2 = v5;
    return;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  do
  {
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  {
LABEL_13:
    v12 = *(a1 + 44);
    if (v12 != 0.0)
    {
      if (v12 == 1.0)
      {
        operator new();
      }

      operator new();
    }

    v13 = *(a1 + 4);
    if (v13 > 7)
    {
      if (v13 > 13)
      {
        if (v13 == 17)
        {
          operator new();
        }

        if (v13 == 14)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 8)
        {
          operator new();
        }

        if (v13 == 13)
        {
          operator new();
        }
      }
    }

    else
    {
      if (v13 <= 1)
      {
        if (!v13)
        {
          operator new();
        }

        if (v13 != 1)
        {
          goto LABEL_40;
        }

LABEL_35:
        operator new();
      }

      if (v13 == 2)
      {
        operator new();
      }

      if (v13 == 7)
      {
        goto LABEL_35;
      }
    }

LABEL_40:
    PCMakeDisplayRGBProfile((a1 + 12), 0, &v22);
    v16 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v16;
    v20[2] = *(a1 + 32);
    v17 = *a2;
    v21[0] = v17;
    if (v17)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v17);
    }

    v18 = *(v15 + 8);
    if (!v18)
    {
LABEL_48:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        {
          break;
        }

        v18 = *v19;
        if (!*v19)
        {
          goto LABEL_48;
        }
      }

      {
        break;
      }

      v18 = *(v19 + 1);
      if (!v18)
      {
        goto LABEL_48;
      }
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(v21);
    PCICCProfile::~PCICCProfile(&v22);
    (*(MEMORY[0] + 8))(0);
    if (v6)
    {
      goto LABEL_50;
    }

    return;
  }

  v14 = *(v9 + 80);
  *a2 = v14;
  if (v14)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v14);
  }

  if (v6)
  {
LABEL_50:
    PCSpinLock::unlock(v6);
  }
}

void sub_25FB91EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x2666E9F00](v9, 0x1081C409227ACB4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void PCMakeColorSpaceFromNCLC(int a1@<W0>, int a2@<W1>, int a3@<W2>, CGColorSpace **a4@<X8>, float a5@<S0>)
{
  memset(v8, 0, sizeof(v8));
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v9 = a5;
}

__n128 anonymous namespace::getChromaticities@<Q0>(int a1@<W0>, __int128 *a2@<X8>)
{
  if (a1 > 5)
  {
    if (a1 > 10)
    {
      if (a1 == 11)
      {
        v2 = &kPCChromaticities_DCI_P3;
      }

      else
      {
        if (a1 != 12)
        {
          return result;
        }

        v2 = &kPCChromaticities_P3_D65;
      }
    }

    else if (a1 == 6)
    {
      v2 = &kPCChromaticities_SMPTE_C;
    }

    else
    {
      if (a1 != 9)
      {
        return result;
      }

      v2 = &kPCChromaticities_ITU_R2020;
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = &kPCChromaticities_Generic;
    }

    else
    {
      if (a1 != 5)
      {
        return result;
      }

      v2 = &kPCChromaticities_EBU_3213;
    }
  }

  else
  {
    if (a1 > 1)
    {
      return result;
    }

    v2 = &kPCChromaticities_ITU_R709_2;
  }

  result = *v2;
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

const void **anonymous namespace::makeColorSpaceFromProfile@<X0>(_anonymous_namespace_ *this@<X0>, CGColorSpace **a2@<X8>)
{
  v5 = *MEMORY[0x277CBECE8];
  ProfileData = PCICCProfile::getProfileData(this);
  Size = PCICCProfile::getSize(this);
  v11 = CFDataCreate(v5, ProfileData, Size);
  v8 = CGColorSpaceCreateWithICCData(v11);
  v9 = v8;
  if (v8)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v8);
  }

  *a2 = v9;
  CGColorSpaceRelease(v9);
  return PCCFRef<__CTLine const*>::~PCCFRef(&v11);
}

void sub_25FB92134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(v2);
  PCCFRef<__CTLine const*>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCMakeColorSpaceFromProfile(const PCICCProfile *a1@<X0>, CGColorSpace **a2@<X8>)
{
  PCICCProfile::getMD5Hash(a1, &v13);
  v4 = profileCacheLock;
  v12[1] = profileCacheLock;
  PCSpinLock::lock(profileCacheLock);
  v5 = *profileCache;
  LOBYTE(v12[0]) = 0;
  PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::findValue(v5, &v13, v12, a2);
  if (*a2)
  {
    if (!v4)
    {
      return;
    }

LABEL_10:
    PCSpinLock::unlock(v4);
    return;
  }

  ProfileData = PCICCProfile::getProfileData(a1);
  Size = PCICCProfile::getSize(a1);
  v12[0] = CFDataCreate(*MEMORY[0x277CBECE8], ProfileData, Size);
  v8 = CGColorSpaceCreateWithICCData(v12[0]);
  v9 = v8;
  if (v8)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v8);
  }

  v11 = v9;
  v10 = *a2;
  if (*a2)
  {
    if (v10 != v9)
    {
      PCCFRefTraits<CGColorSpace *>::release(v10);
      v9 = v11;
    }
  }

  *a2 = v9;
  v11 = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  CGColorSpaceRelease(*a2);
  PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::addValue(*profileCache, &v13, a2, 0);
  PCCFRef<__CTLine const*>::~PCCFRef(v12);
  if (v4)
  {
    goto LABEL_10;
  }
}

void sub_25FB92288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, CGColorSpace *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  PCCFRef<__CTLine const*>::~PCCFRef(va1);
  PCCFRef<CGColorSpace *>::~PCCFRef(v2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va2);
  _Unwind_Resume(a1);
}

os_unfair_lock_s **PCLockSentry<PCSpinLock>::~PCLockSentry(os_unfair_lock_s **a1)
{
  v2 = *a1;
  if (v2)
  {
    PCSpinLock::unlock(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    PCSpinLock::unlock(v2);
  }

  return a1;
}

uint64_t anonymous namespace::testColorSpaceEquivalence(CFTypeRef *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (CFEqual(*a1, a1[1]))
  {
    return 1;
  }

  PCICCProfile::PCICCProfile(v5, *a1);
  PCICCProfile::PCICCProfile(v4, a1[1]);
  v2 = PCSameColorTransform(v5, v4);
  PCICCProfile::~PCICCProfile(v4);
  PCICCProfile::~PCICCProfile(v5);
  return v2;
}

void sub_25FB925E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    PCICCProfile::~PCICCProfile(&a10);
    PCICCProfile::~PCICCProfile(&a38);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x25FB925B8);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::less<anonymous namespace::CacheKey>::operator()[abi:ne200100](float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 < *a2)
  {
    return 1;
  }

  if (SLODWORD(v2) > *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v8 = *(a2 + 8);
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 > v8)
  {
    return 0;
  }

  if (LODWORD(v2) != 2)
  {
    if (v5 != 2)
    {
      return 0;
    }

    return a1[11] < *(a2 + 44);
  }

  v9 = a1[3];
  v10 = *(a2 + 12);
  if (v9 < v10)
  {
    return 1;
  }

  if (v9 > v10)
  {
    return 0;
  }

  v11 = a1[4];
  v12 = *(a2 + 16);
  if (v11 < v12)
  {
    return 1;
  }

  if (v11 > v12)
  {
    return 0;
  }

  v13 = a1[5];
  v14 = *(a2 + 20);
  if (v13 < v14)
  {
    return 1;
  }

  if (v13 > v14)
  {
    return 0;
  }

  v15 = a1[6];
  v16 = *(a2 + 24);
  if (v15 < v16)
  {
    return 1;
  }

  if (v15 > v16)
  {
    return 0;
  }

  v17 = a1[7];
  v18 = *(a2 + 28);
  if (v17 < v18)
  {
    return 1;
  }

  if (v17 > v18)
  {
    return 0;
  }

  v19 = a1[8];
  v20 = *(a2 + 32);
  if (v19 < v20)
  {
    return 1;
  }

  if (v19 > v20)
  {
    return 0;
  }

  v21 = a1[9];
  v22 = *(a2 + 36);
  if (v21 < v22)
  {
    return 1;
  }

  if (v21 > v22)
  {
    return 0;
  }

  v23 = a1[10];
  v24 = *(a2 + 40);
  if (v23 < v24)
  {
    return 1;
  }

  v3 = 0;
  if (v5 == 2 && v23 <= v24)
  {
    return a1[11] < *(a2 + 44);
  }

  return v3;
}

void PCICCProfile::~PCICCProfile(PCICCProfile *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = (this + 152);
  std::vector<PCICCProfile::Tag>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 128);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<PCICCProfile::Tag>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<PCICCProfile::Tag>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<PCICCProfile::Tag>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::function<BOOL ()(anonymous namespace::EquivalenceKey const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<PCHash128 ()(PCColorSpaceHandle const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::findValue(void *a1@<X0>, unint64_t *a2@<X1>, _BYTE *a3@<X2>, PCWorkingColorVector *a4@<X8>)
{
  v5 = a1[4];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *a2;
  v7 = a1 + 4;
  do
  {
    v8 = v5[4];
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v5;
    }

    v5 = v5[v10];
  }

  while (v5);
  if (v7 != a1 + 4 && v6 >= v7[4])
  {
    v12 = v7;
    *a4 = *(v7 + 10);
    *(a4 + 1) = *(v7 + 11);
    *(a4 + 2) = *(v7 + 12);
    *(a4 + 3) = *(v7 + 13);
    v11 = a1[9] + 1;
    a1[9] = v11;
    v7[8] = v11;
    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::bubble(a1 + 6, &v12);
    *a3 = 1;
  }

  else
  {
LABEL_9:
    *a3 = 0;

    PCWorkingColorVector::PCWorkingColorVector(a4);
  }
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 72);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 64) <= *(v17 + 64))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 72) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 72) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 64);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 64);
    v13 = *(*(v2 + 8 * v5) + 64);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 64))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 72) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 72) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 72);
    goto LABEL_24;
  }

  return result;
}

void PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::addValue(uint64_t a1, CGColorSpace **a2, _OWORD *a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v6 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *a2;
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = a1 + 32;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != v6 && v8 >= *(v9 + 32))
    {
      v33 = v9;
      *(v9 + 40) = *a3;
      v19 = *(a1 + 72) + 1;
      *(a1 + 72) = v19;
      *(v9 + 64) = v19;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v33);
      v20 = v33;
      v21 = a4 - *(v33 + 56);
      if (v21)
      {
        v22 = v21 + *(a1 + 80);
        *(a1 + 80) = v22;
        *(v20 + 56) = a4;
        if (!*(a1 + 104))
        {
          while (v22 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v24 = *(a1 + 48);
            if (v24 == *(a1 + 56))
            {
              break;
            }

            v26 = *v24;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v26);
            v23 = v26;
            *(a1 + 80) -= *(v26 + 7);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v23);
            PCCFRef<CGColorSpace *>::~PCCFRef(v23 + 4);
            operator delete(v23);
            v22 = *(a1 + 80);
          }
        }
      }
    }

    else
    {
LABEL_11:
      v13 = *(a1 + 72) + 1;
      *(a1 + 72) = v13;
      v14 = *a3;
      v26 = v8;
      if (v8)
      {
        v25 = v14;
        PCCFRefTraits<CGColorSpace *>::retain(v8);
        v14 = v25;
      }

      v27 = v14;
      v28 = a4;
      v29 = v13;
      v30 = 0;
      v31 = std::__tree<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__map_value_compare<std::tuple<PCColorSpaceHandle const>,std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::less<std::tuple<PCColorSpaceHandle const>>,true>,std::allocator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>>>::__emplace_unique_key_args<std::tuple<PCColorSpaceHandle const>,std::pair<std::tuple<PCColorSpaceHandle const> const,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>>(a1 + 24, &v26);
      v32 = v15;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v26);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::add(a1 + 48, &v31);
      v16 = *(a1 + 80) + a4;
      *(a1 + 80) = v16;
      if (!*(a1 + 104))
      {
        while (v16 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v18 = *(a1 + 48);
          if (v18 == *(a1 + 56))
          {
            break;
          }

          v26 = *v18;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v26);
          v17 = v26;
          *(a1 + 80) -= *(v26 + 7);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v17);
          PCCFRef<CGColorSpace *>::~PCCFRef(v17 + 4);
          operator delete(v17);
          v16 = *(a1 + 80);
        }
      }
    }
  }
}

void sub_25FB92DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 72) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 72);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 64) <= *(v18 + 64))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 72) = v16;
      v18 = v17[v20];
      *(v18 + 72) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

void *std::__tree<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__map_value_compare<std::tuple<PCColorSpaceHandle const>,std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::less<std::tuple<PCColorSpaceHandle const>>,true>,std::allocator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>>>::__emplace_unique_key_args<std::tuple<PCColorSpaceHandle const>,std::pair<std::tuple<PCColorSpaceHandle const> const,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__map_value_compare<std::tuple<PCColorSpaceHandle const>,std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::less<std::tuple<PCColorSpaceHandle const>>,true>,std::allocator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>>>::__construct_node<std::pair<std::tuple<PCColorSpaceHandle const> const,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCCFRef<CGColorSpace *>::~PCCFRef(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<std::tuple<PCColorSpaceHandle const> const,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 72);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 72) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

uint64_t PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::findValue@<X0>(uint64_t a1@<X0>, const PCHash128 *a2@<X1>, _BYTE *a3@<X2>, CGColorSpace **a4@<X8>)
{
  result = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
  v11 = result;
  if (a1 + 32 == result)
  {
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v8 = result;
    v9 = *(result + 48);
    *a4 = v9;
    if (v9)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v9);
    }

    v10 = *(a1 + 72) + 1;
    *(a1 + 72) = v10;
    *(v8 + 64) = v10;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v11);
    *a3 = 1;
  }

  return result;
}

void PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::addValue(uint64_t a1, const PCHash128 *a2, CGColorSpace **a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v8 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
    v31 = v8;
    if (a1 + 32 == v8)
    {
      v16 = *(a1 + 72) + 1;
      *(a1 + 72) = v16;
      v17 = *a3;
      v28 = v17;
      if (v17)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v17);
      }

      *&v29 = a4;
      *(&v29 + 1) = v16;
      v30 = 0;
      v22 = *a2;
      v23 = v17;
      if (v17)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v17);
      }

      v24 = v29;
      v25 = v30;
      v26 = std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>>(a1 + 24, &v22);
      v27 = v18;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v23);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::add(a1 + 48, &v26);
      v19 = *(a1 + 80) + a4;
      *(a1 + 80) = v19;
      if (!*(a1 + 104))
      {
        while (v19 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v21 = *(a1 + 48);
          if (v21 == *(a1 + 56))
          {
            break;
          }

          *&v22 = *v21;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v22);
          v20 = v22;
          *(a1 + 80) -= *(v22 + 56);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v20);
          PCCFRef<CGColorSpace *>::~PCCFRef((v20 + 48));
          operator delete(v20);
          v19 = *(a1 + 80);
        }
      }

      PCCFRef<CGColorSpace *>::~PCCFRef(&v28);
    }

    else
    {
      v9 = v8;
      PCCFRef<CGColorSpace *>::operator=((v8 + 48), a3);
      v10 = *(a1 + 72) + 1;
      *(a1 + 72) = v10;
      *(v9 + 64) = v10;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v31);
      v11 = v31;
      v12 = a4 - *(v31 + 56);
      if (v12)
      {
        v13 = v12 + *(a1 + 80);
        *(a1 + 80) = v13;
        *(v11 + 56) = a4;
        if (!*(a1 + 104))
        {
          while (v13 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v15 = *(a1 + 48);
            if (v15 == *(a1 + 56))
            {
              break;
            }

            *&v22 = *v15;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCColorSpaceHandle const>,PCCacheImpl<std::tuple<PCColorSpaceHandle const>,PCHash128,PCNoLock,std::less<std::tuple<PCColorSpaceHandle const>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v22);
            v14 = v22;
            *(a1 + 80) -= *(v22 + 56);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v14);
            PCCFRef<CGColorSpace *>::~PCCFRef((v14 + 48));
            operator delete(v14);
            v13 = *(a1 + 80);
          }
        }
      }
    }
  }
}

void sub_25FB93474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>>>::__construct_node<std::pair<PCHash128 const,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCCFRef<CGColorSpace *>::~PCCFRef(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<PCHash128 const,PCCacheImpl<PCHash128,PCColorSpaceHandle,PCNoLock,std::less<PCHash128>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

uint64_t std::__function::__func<BOOL (*)(anonymous namespace::EquivalenceKey const&),std::allocator<BOOL (*)(anonymous namespace::EquivalenceKey const&)>,BOOL ()(anonymous namespace::EquivalenceKey const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287208550;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(anonymous namespace::EquivalenceKey const&),std::allocator<BOOL (*)(anonymous namespace::EquivalenceKey const&)>,BOOL ()(anonymous namespace::EquivalenceKey const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void PCCachedFunctionImpl<PCHash128,PCColorSpaceHandle const&>::PCCachedFunctionImpl<PCHash128 (*)(PCColorSpaceHandle const&)>(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (a2)
  {
    *a1 = &unk_287208600;
    *(a1 + 8) = a2;
    *(a1 + 24) = a1;
  }

  *(a1 + 32) = 0;
  operator new();
}

void sub_25FB937F8(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v2);
  std::__function::__value_func<PCHash128 ()(PCColorSpaceHandle const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<PCHash128 (*)(PCColorSpaceHandle const&),std::allocator<PCHash128 (*)(PCColorSpaceHandle const&)>,PCHash128 ()(PCColorSpaceHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287208600;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<PCHash128 (*)(PCColorSpaceHandle const&),std::allocator<PCHash128 (*)(PCColorSpaceHandle const&)>,PCHash128 ()(PCColorSpaceHandle const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void PCToneMapMethod::PCToneMapMethod(PCToneMapMethod *this)
{
  PCColorUtil::getHLGDiffuseWhiteGain(this);
  this->_type = 5;
  this->_gain = v2;
}

uint64_t PCHashToneMapMethod(uint64_t a1, unsigned int *a2)
{
  result = (*(*a1 + 48))(a1, *a2);
  if (*a2 == 5)
  {
    v5.n128_u32[0] = a2[1];
    v6 = *(*a1 + 80);

    return v6(a1, v5);
  }

  return result;
}

BOOL operator<(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return SLODWORD(v2) < *a2;
  }

  if (LODWORD(v2) == 5)
  {
    return a1[1] < *(a2 + 4);
  }

  return 0;
}

uint64_t PCColorDescription::PCColorDescription(uint64_t a1, CGColorSpaceRef space, int a3, void *a4)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
    v9 = space;
    *a1 = space;
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = a3;
  *(a1 + 12) = *a4;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v9);
  return a1;
}

void sub_25FB93A98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCColorDescription::PCColorDescription(PCColorDescription *this, const PCColorDescription *a2, CGColorSpaceRef space)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
    v7 = space;
    dynamicRange = a2->_dynamicRange;
    this->_colorSpaceRef._obj = space;
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  else
  {
    v7 = 0;
    dynamicRange = a2->_dynamicRange;
    this->_colorSpaceRef._obj = 0;
  }

  this->_dynamicRange = dynamicRange;
  this->_toneMapMethod = a2->_toneMapMethod;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v7);
}

void sub_25FB93B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t PCColorDescription::PCColorDescription(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  *a1 = *a2;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  *(a1 + 8) = a3;
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

void PCColorDescription::PCColorDescription(PCColorDescription *this, const PCColorDescription *a2, const PCToneMapMethod *a3)
{
  dynamicRange = a2->_dynamicRange;
  obj = a2->_colorSpaceRef._obj;
  this->_colorSpaceRef._obj = a2->_colorSpaceRef._obj;
  if (obj)
  {
    PCCFRefTraits<CGColorSpace *>::retain(obj);
  }

  this->_dynamicRange = dynamicRange;
  this->_toneMapMethod = *a3;
}

void PCColorDescription::PCColorDescription(PCColorDescription *this, CGColorSpaceRef space, PCToneMapMethod *a3)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v6 = space;
  PCColorDescription::PCColorDescription(this, &v6, a3);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v6);
}

void sub_25FB93C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t PCColorDescription::PCColorDescription(uint64_t a1, CGColorSpace **a2, void *a3)
{
  v6 = PCIsHDRColorSpace(*a2);
  v7 = *a2;
  *a1 = *a2;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  *(a1 + 8) = v6;
  *(a1 + 12) = *a3;
  return a1;
}

CGColorSpace **PCColorDescription::setCGColorSpace(PCColorDescription *this, CGColorSpaceRef space)
{
  v2 = space;
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v7 = v2;
  obj = this->_colorSpaceRef._obj;
  if (this->_colorSpaceRef._obj)
  {
    v5 = obj == v2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    PCCFRefTraits<CGColorSpace *>::release(obj);
    v2 = v7;
  }

  this->_colorSpaceRef._obj = v2;
  v7 = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v7);
}

void sub_25FB93D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t PCHashColorDescription(int8x8_t *a1, const PCColorDescription *a2)
{
  PCColorSpaceHandle::getMD5(a2->_colorSpaceRef._obj, v5);
  PCHashWriteStream::writeValue(a1, v5);
  (*(*a1 + 48))(a1, a2->_dynamicRange);
  return PCHashToneMapMethod(a1, &a2->_toneMapMethod);
}

BOOL operator==(uint64_t a1, uint64_t a2, CGColorSpace *a3)
{
  if (*(a1 + 8) == *(a2 + 8) && (v3 = *(a1 + 12), v3 == *(a2 + 12)) && (v3 != 5 || *(a1 + 16) == *(a2 + 16)))
  {
    return PCColorSpaceHandle::isSameColorSpace(*a1, *a2, a3);
  }

  else
  {
    return 0;
  }
}

{
  return *(a1 + 24) == *(a2 + 24) && operator==(a1, a2, a3);
}

uint64_t PCColorSpaceCache::identifyColorSpace(PCColorSpaceCache *this, CGColorSpace *a2)
{
  v3 = 1;
  CGColorSpaceByID = PCColorSpaceCache::getCGColorSpaceByID(1);
  if (!PCColorSpaceHandle::isSameColorSpace(this, CGColorSpaceByID, v5))
  {
    v3 = 4;
    v6 = PCColorSpaceCache::getCGColorSpaceByID(4);
    if (!PCColorSpaceHandle::isSameColorSpace(this, v6, v7))
    {
      v3 = 10;
      v8 = PCColorSpaceCache::getCGColorSpaceByID(0xA);
      if (!PCColorSpaceHandle::isSameColorSpace(this, v8, v9))
      {
        v3 = 9;
        v10 = PCColorSpaceCache::getCGColorSpaceByID(9);
        if (!PCColorSpaceHandle::isSameColorSpace(this, v10, v11))
        {
          v3 = 18;
          v12 = PCColorSpaceCache::getCGColorSpaceByID(0x12);
          if (!PCColorSpaceHandle::isSameColorSpace(this, v12, v13))
          {
            v3 = 17;
            v14 = PCColorSpaceCache::getCGColorSpaceByID(0x11);
            if (!PCColorSpaceHandle::isSameColorSpace(this, v14, v15))
            {
              v3 = 3;
              v16 = PCColorSpaceCache::getCGColorSpaceByID(3);
              if (!PCColorSpaceHandle::isSameColorSpace(this, v16, v17))
              {
                v3 = 12;
                v18 = PCColorSpaceCache::getCGColorSpaceByID(0xC);
                if (!PCColorSpaceHandle::isSameColorSpace(this, v18, v19))
                {
                  v3 = 5;
                  v20 = PCColorSpaceCache::getCGColorSpaceByID(5);
                  if (!PCColorSpaceHandle::isSameColorSpace(this, v20, v21))
                  {
                    v3 = 6;
                    v22 = PCColorSpaceCache::getCGColorSpaceByID(6);
                    if (!PCColorSpaceHandle::isSameColorSpace(this, v22, v23))
                    {
                      v3 = 11;
                      v24 = PCColorSpaceCache::getCGColorSpaceByID(0xB);
                      if (!PCColorSpaceHandle::isSameColorSpace(this, v24, v25))
                      {
                        v3 = 13;
                        v26 = PCColorSpaceCache::getCGColorSpaceByID(0xD);
                        if (!PCColorSpaceHandle::isSameColorSpace(this, v26, v27))
                        {
                          v3 = 19;
                          v28 = PCColorSpaceCache::getCGColorSpaceByID(0x13);
                          if (!PCColorSpaceHandle::isSameColorSpace(this, v28, v29))
                          {
                            v3 = 20;
                            v30 = PCColorSpaceCache::getCGColorSpaceByID(0x14);
                            if (!PCColorSpaceHandle::isSameColorSpace(this, v30, v31))
                            {
                              v3 = 21;
                              v32 = PCColorSpaceCache::getCGColorSpaceByID(0x15);
                              if (!PCColorSpaceHandle::isSameColorSpace(this, v32, v33))
                              {
                                v3 = 7;
                                v34 = PCColorSpaceCache::getCGColorSpaceByID(7);
                                if (!PCColorSpaceHandle::isSameColorSpace(this, v34, v35))
                                {
                                  v3 = 8;
                                  v36 = PCColorSpaceCache::getCGColorSpaceByID(8);
                                  if (!PCColorSpaceHandle::isSameColorSpace(this, v36, v37))
                                  {
                                    v3 = 14;
                                    v38 = PCColorSpaceCache::getCGColorSpaceByID(0xE);
                                    if (!PCColorSpaceHandle::isSameColorSpace(this, v38, v39))
                                    {
                                      v3 = 2;
                                      v40 = PCColorSpaceCache::getCGColorSpaceByID(2);
                                      if (!PCColorSpaceHandle::isSameColorSpace(this, v40, v41))
                                      {
                                        v42 = PCColorSpaceCache::getCGColorSpaceByID(0);
                                        v3 = 0;
                                        if (!PCColorSpaceHandle::isSameColorSpace(this, v42, v43))
                                        {
                                          v3 = 15;
                                          v44 = PCColorSpaceCache::getCGColorSpaceByID(0xF);
                                          if (!PCColorSpaceHandle::isSameColorSpace(this, v44, v45))
                                          {
                                            v46 = PCColorSpaceCache::getCGColorSpaceByID(0x10);
                                            if (PCColorSpaceHandle::isSameColorSpace(this, v46, v47))
                                            {
                                              return 16;
                                            }

                                            else
                                            {
                                              return 0xFFFFFFFFLL;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t PCColorSpaceCache::intToColorSpaceID(uint64_t result, unsigned int a2)
{
  if ((result - 22) >= 0xFFFFFFE9)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t PCColorSpaceCache::getCGColorSpaceByID(CGColorSpace **a1)
{
  PCInit();
  if (a1 == -1)
  {
    return 0;
  }

  CGColorSpace = PCColorSpaceHandle::getCGColorSpace(v5);
  PCCFRef<CGColorSpace *>::~PCCFRef(v5);
  if (v2)
  {
    PCSpinLock::unlock(v2);
  }

  return CGColorSpace;
}

void sub_25FB94278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, os_unfair_lock_s *a10)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCLockSentry<PCSpinLock>::~PCLockSentry(&a10);
  _Unwind_Resume(a1);
}

CGColorSpace **anonymous namespace::lookUpColorSpace@<X0>(CGColorSpace **result@<X0>, CGColorSpace **a2@<X8>)
{
  v18[27] = *MEMORY[0x277D85DE8];
  if (result == -1)
  {
    *a2 = 0;
  }

  else
  {
    v3 = result;
    if (!v4)
    {
      goto LABEL_9;
    }

    do
    {
      if (*(v4 + 32) >= result)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < result));
    }

    while (v4);
    {
      v9 = *(v5 + 40);
      *a2 = v9;
      if (v9)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v9);
      }
    }

    else
    {
LABEL_9:
      *a2 = 0;
    }

    result = operator==(a2);
    if (result)
    {
      v6 = MEMORY[0x277CBF3C8];
      v7 = 6;
      v8 = &kPCNCLC_Rec709Linear;
      switch(v3)
      {
        case 1:
          goto LABEL_36;
        case 3:
          v8 = &kPCNCLC_sRGB;
          goto LABEL_36;
        case 4:
          v8 = &kPCNCLC_Rec709;
          goto LABEL_36;
        case 5:
          goto LABEL_31;
        case 6:
          v7 = 5;
LABEL_31:
          PCMakeColorSpaceFromNCLC(v7, 1, 6, &v15, 0.0);
          break;
        case 7:
          goto LABEL_20;
        case 8:
          PCICCTransferFunctionParametric0::PCICCTransferFunctionParametric0(v16, 1.961);
          PCMakeDisplayRGBProfile(&kPCChromaticities_ACEScg, v16, &v17);
          PCMakeColorSpaceFromProfile(&v17, &v15);
          PCICCProfile::~PCICCProfile(&v17);
          PCICCTransferFunctionParametric0::~PCICCTransferFunctionParametric0(v16);
          break;
        case 9:
          v8 = &kPCNCLC_Rec2020;
          goto LABEL_36;
        case 10:
          v8 = &kPCNCLC_Rec2020Linear;
          goto LABEL_36;
        case 11:
          v8 = &kPCNCLC_DCI_P3;
          goto LABEL_36;
        case 12:
          v8 = &kPCNCLC_P3_D65;
          goto LABEL_36;
        case 13:
          v8 = &kPCNCLC_P3_D65Linear;
          goto LABEL_36;
        case 14:
          v6 = MEMORY[0x277CBF3D0];
LABEL_20:
          PCColorSpaceHandle::PCColorSpaceHandle(&v15, *v6);
          break;
        case 15:
          PCMakeDisplayGrayProfile(0.3127, 0.329, 1.0, &v17);
          PCMakeColorSpaceFromProfile(&v17, &v15);
          goto LABEL_28;
        case 16:
          PCMakeDisplayGrayProfile(0.3127, 0.329, 2.2, &v17);
          PCMakeColorSpaceFromProfile(&v17, &v15);
LABEL_28:
          PCICCProfile::~PCICCProfile(&v17);
          break;
        case 17:
          v8 = &kPCNCLC_Rec2020HLG;
          goto LABEL_36;
        case 18:
          v8 = &kPCNCLC_Rec2020PQ;
          goto LABEL_36;
        case 19:
          v8 = &kPCNCLC_P3_D65PQ;
          goto LABEL_36;
        case 20:
          v8 = &kPCNCLC_P3_D65HLG;
          goto LABEL_36;
        case 21:
          v8 = &kPCNCLC_DCI_P3PQ;
LABEL_36:
          v10 = PCGetNCLCColorSpace(v8);
          PCColorSpaceHandle::PCColorSpaceHandle(&v15, v10);
          break;
        default:
          break;
      }

      v11 = *a2;
      v12 = v15;
      if (*a2 && v11 != v15)
      {
        PCCFRefTraits<CGColorSpace *>::release(v11);
        v12 = v15;
      }

      *a2 = v12;
      v15 = 0;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
      v17 = v3;
      v14 = *a2;
      v18[0] = v14;
      if (v14)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v14);
      }

      std::__tree<std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>,std::__map_value_compare<PCColorSpaceCache::ID,std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>,std::less<PCColorSpaceCache::ID>,true>,std::allocator<std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>>>::__emplace_unique_key_args<PCColorSpaceCache::ID,std::pair<PCColorSpaceCache::ID const,PCColorSpaceHandle>>(v13, &v17);
      return PCCFRef<CGColorSpace *>::~PCCFRef(v18);
    }
  }

  return result;
}

void sub_25FB945BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  PCICCProfile::~PCICCProfile(va1);
  PCICCTransferFunctionParametric0::~PCICCTransferFunctionParametric0(va);
  PCCFRef<CGColorSpace *>::~PCCFRef(v2);
  _Unwind_Resume(a1);
}

void PCColorSpaceCache::getColorSpaceByID(CGColorSpace **a1@<X0>, CGColorSpace **a2@<X8>)
{
  if (v4)
  {
    PCSpinLock::unlock(v4);
  }
}

void sub_25FB94690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void PCGetCachedExtendedRangeColorSpace(CGColorSpaceRef *a1@<X0>, CGColorSpace **a2@<X8>)
{
  if (CGColorSpaceUsesExtendedRange(*a1))
  {
    v4 = *a1;
    *a2 = *a1;
    if (v4)
    {

      PCCFRefTraits<CGColorSpace *>::retain(v4);
    }

    return;
  }

  v56 = PCGetNCLCCodeForColorSpace(*a1);
  v57 = v5;
  cf = 0x200000002;
  LODWORD(space) = 2;
  if (operator!=(&v56, &cf))
  {
    v6 = PCGetNCLCColorSpace(&v56, 1);
    v7 = v6;
    if (v6)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v6);
    }

    *a2 = v7;
    return;
  }

  {
    operator new();
  }

  v8 = getExtendedColorSpaceCache(void)::cache;
  {
    operator new();
  }

  v9 = getExtendedColorSpaceLock(void)::mutex;
  v55 = getExtendedColorSpaceLock(void)::mutex;
  PCMutex::lock(getExtendedColorSpaceLock(void)::mutex);
  v10 = *v8;
  v12 = v11;
  cf = v11;
  if (v10 + 4 == v11)
  {
    *a2 = 0;
  }

  else
  {
    v13 = v11[5];
    *a2 = v13;
    if (v13)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v13);
    }

    v14 = v10[9] + 1;
    v10[9] = v14;
    v12[7] = v14;
    if (*a2)
    {
LABEL_24:
      if (!v9)
      {
        return;
      }

LABEL_25:
      PCMutex::unlock(v9);
      return;
    }
  }

  PCCreateExtendedColorSpace(a1, &cf);
  v15 = *a2;
  v16 = cf;
  if (*a2 && v15 != cf)
  {
    PCCFRefTraits<CGColorSpace *>::release(v15);
    v16 = cf;
  }

  *a2 = v16;
  cf = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(&cf);
  v17 = *v8;
  v19 = v18;
  v65 = v18;
  v20 = v17 + 4;
  if (v17 + 4 != v18)
  {
    PCCFRef<CGColorSpace *>::operator=((v18 + 40), a2);
    v21 = v17[9] + 1;
    v17[9] = v21;
    *(v19 + 56) = v21;
    v22 = *(v19 + 48);
    if (v22)
    {
      v17[10] -= v22;
      *(v19 + 48) = 0;
    }

    goto LABEL_24;
  }

  v23 = v17[9] + 1;
  v17[9] = v23;
  v24 = *a2;
  v62 = v24;
  if (v24)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v24);
  }

  *&v63 = 0;
  *(&v63 + 1) = v23;
  v64 = 0;
  v25 = *a1;
  cf = v25;
  if (v25)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v25);
    v24 = v62;
  }

  space = v24;
  if (v24)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v24);
  }

  v61 = v64;
  v60 = v63;
  v26 = *v20;
  if (!*v20)
  {
    goto LABEL_43;
  }

  v27 = cf;
  while (1)
  {
    while (1)
    {
      v28 = v26;
      v29 = CFHash(v27);
      v30 = CFHash(v28[4]);
      v27 = cf;
      v31 = v29 == v30;
      v32 = v29 < v30;
      if (v31)
      {
        v32 = cf < v28[4];
      }

      if (!v32)
      {
        break;
      }

      v26 = *v28;
      v20 = v28;
      if (!*v28)
      {
        goto LABEL_43;
      }
    }

    v33 = CFHash(v28[4]);
    v34 = CFHash(cf);
    v27 = cf;
    v31 = v33 == v34;
    v35 = v33 < v34;
    if (v31)
    {
      v35 = v28[4] < cf;
    }

    if (!v35)
    {
      break;
    }

    v20 = v28 + 1;
    v26 = v28[1];
    if (!v26)
    {
      goto LABEL_43;
    }
  }

  v45 = *v20;
  if (!*v20)
  {
LABEL_43:
    operator new();
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&space);
  PCCFRef<CGColorSpace *>::~PCCFRef(&cf);
  v36 = v17[6];
  v37 = v17[7];
  v38 = v37 - v36;
  v39 = (v37 - v36) >> 3;
  *(v45 + 64) = v39;
  v40 = v17[8];
  if (v37 >= v40)
  {
    v42 = v39 + 1;
    if ((v39 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v43 = v40 - v36;
    if (v43 >> 2 > v42)
    {
      v42 = v43 >> 2;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      v44 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      if (!(v44 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v46 = (v37 - v36) >> 3;
    v47 = (8 * v39);
    v48 = (8 * v39 - 8 * v46);
    *v47 = v45;
    v41 = v47 + 1;
    memcpy(v48, v36, v38);
    v17[6] = v48;
    v17[7] = v41;
    v17[8] = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v37 = v45;
    v41 = v37 + 8;
  }

  v17[7] = v41;
  v49 = *(v45 + 64);
  if (v49)
  {
    v50 = v17[6];
    v51 = *(v50 + 8 * v49);
    do
    {
      v52 = v49 - 1;
      v53 = (v49 - 1) >> 1;
      v54 = *(v50 + 8 * v53);
      if (*(v54 + 56) <= *(v51 + 56))
      {
        break;
      }

      *(v50 + 8 * v49) = v54;
      *(v50 + 8 * v53) = v51;
      v50 = v17[6];
      *(*(v50 + 8 * v49) + 64) = v49;
      v51 = *(v50 + 8 * v53);
      *(v51 + 64) = v53;
      v49 = (v49 - 1) >> 1;
    }

    while (v52 > 1);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v62);
  v9 = v55;
  if (v55)
  {
    goto LABEL_25;
  }
}

void sub_25FB94CE4(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x1081C4076DFA842);
  _Unwind_Resume(a1);
}

CGColorSpace **PCGetCachedExtendedRangeColorSpace@<X0>(CGColorSpaceRef space@<X0>, CGColorSpace **a2@<X8>)
{
  if (space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space);
  }

  v5 = space;
  PCGetCachedExtendedRangeColorSpace(&v5, a2);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v5);
}

void sub_25FB94E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::makeDeviceRGBColorSpace(PCColorSpaceHandle *a1@<X8>)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  PCColorSpaceHandle::PCColorSpaceHandle(a1, DeviceRGB);
  CGColorSpaceRelease(DeviceRGB);
}

uint64_t *std::__tree<std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>,std::__map_value_compare<PCColorSpaceCache::ID,std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>,std::less<PCColorSpaceCache::ID>,true>,std::allocator<std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>>>::__emplace_unique_key_args<PCColorSpaceCache::ID,std::pair<PCColorSpaceCache::ID const,PCColorSpaceHandle>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCColorSpaceCache::ID,PCColorSpaceHandle>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCCFRef<CGColorSpace *>::~PCCFRef(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t PCLockSentry<PCMutex>::~PCLockSentry(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    PCMutex::unlock(v2);
    *(a1 + 8) = 0;
  }

  return a1;
}

{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    PCMutex::unlock(v2);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t std::map<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data,anonymous namespace::CompareColorSpaceRef,std::allocator<std::pair<PCCFRef<CGColorSpace *> const,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>>>::find[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = CFHash(*(v3 + 32));
    v7 = CFHash(*a2);
    v9 = v6 == v7;
    v8 = v6 < v7;
    if (v9)
    {
      v8 = *(v3 + 32) < *a2;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v5 = v3;
    }

    v3 = *(v3 + v10);
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v11 = CFHash(*a2);
  v12 = CFHash(*(v5 + 32));
  v13 = *a2 < *(v5 + 32);
  if (v11 != v12)
  {
    v13 = v11 < v12;
  }

  if (v13)
  {
    return v2;
  }

  return v5;
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>,std::__tree_node<std::__value_type<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 64);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 56) <= *(v17 + 56))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 64) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 64) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 56);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 56);
    v13 = *(*(v2 + 8 * v5) + 56);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 56))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 64) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 64) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 64);
    goto LABEL_24;
  }

  return result;
}

void PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::evictIfNecessary(void *a1)
{
  if (!a1[13])
  {
    while (a1[10] > a1[11] || a1[5] > a1[12])
    {
      v2 = a1[6];
      v3 = a1[7];
      if (v2 == v3)
      {
        break;
      }

      v4 = *v2;
      v5 = *(*v2 + 64);
      v6 = v3 - v2 - 1;
      if (v5 == v6)
      {
      }

      else
      {
        v2[v5] = v2[v6];
        *(*(a1[6] + 8 * v5) + 64) = v5;
      }

      a1[10] -= *(v4 + 48);
      v7 = *(v4 + 8);
      v8 = v4;
      if (v7)
      {
        do
        {
          v9 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (!v10);
      }

      if (a1[3] == v4)
      {
        a1[3] = v9;
      }

      v11 = a1[4];
      --a1[5];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v11, v4);
      PCCFRef<CGColorSpace *>::~PCCFRef((v4 + 40));
      PCCFRef<CGColorSpace *>::~PCCFRef((v4 + 32));
      operator delete(v4);
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCCFRef<CGColorSpace *>::~PCCFRef(v2 + 5);
      PCCFRef<CGColorSpace *>::~PCCFRef(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>,std::__tree_node<std::__value_type<PCCFRef<CGColorSpace *>,PCCacheImpl<PCCFRef<CGColorSpace *>,PCCFRef<CGColorSpace *>,PCNoLock,anonymous namespace::CompareColorSpaceRef>::Data>,void *> *,long>>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
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

      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void PCICCProfile::PCICCProfile(PCICCProfile *this)
{
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 176) = 1;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 208));
  PCICCProfile::setUpHeader(this, 0x7DFu, 9u, 0xFu, 0, 0, 0);
}

void sub_25FB95550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 192) = v14;
    operator delete(v14);
  }

  a10 = (v10 + 152);
  std::vector<PCICCProfile::Tag>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double PCICCProfile::setUpHeader(PCICCProfile *this, unsigned __int16 a2, unsigned __int16 a3, unsigned __int16 a4, unsigned __int16 a5, unsigned __int16 a6, unsigned __int16 a7)
{
  ProCore::Private::setUInt32Number(this + 1, 0x6170706C);
  ProCore::Private::setUInt32Number(this + 2, 0x4030000);
  ProCore::Private::setUInt32Number(this + 3, 0x6D6E7472);
  ProCore::Private::setUInt32Number(this + 4, 0x52474220);
  ProCore::Private::setUInt32Number(this + 5, 0x58595A20);
  ProCore::Private::setUInt16Number(this + 12, a2);
  ProCore::Private::setUInt16Number(this + 13, a3);
  ProCore::Private::setUInt16Number(this + 14, a4);
  ProCore::Private::setUInt16Number(this + 15, a5);
  ProCore::Private::setUInt16Number(this + 16, a6);
  ProCore::Private::setUInt16Number(this + 17, a7);
  ProCore::Private::setUInt32Number(this + 9, 0x61637370);
  ProCore::Private::setUInt32Number(this + 10, 0x4150504C);
  ProCore::Private::setUInt32Number(this + 11, 0);
  ProCore::Private::setUInt32Number(this + 12, 0);
  ProCore::Private::setUInt32Number(this + 13, 0);
  *(this + 7) = 0;
  ProCore::Private::setUInt32Number(this + 16, 0);
  ProCore::Private::setUInt32Number(this + 17, 0xF6D6);
  ProCore::Private::setUInt32Number(this + 18, 0x10000);
  ProCore::Private::setUInt32Number(this + 19, 0xD32D);
  ProCore::Private::setUInt32Number(this + 20, 0x4150504C);
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 100) = 0u;
  *(this + 84) = 0u;
  return result;
}

void PCICCProfile::PCICCProfile(PCICCProfile *this, CGColorSpace *a2)
{
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 176) = 1;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 208));
  v4 = CGColorSpaceCopyICCData(a2);
  theData = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v9, "Color space without an ICC profile given to PCICCProfile");
    PCString::PCString(&v8, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCICCProfile.cpp");
    PCException::PCException(exception, &v9, &v8, 158);
  }

  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(theData);
  PCICCProfile::parseProfileData(this, BytePtr, Length);
  PCCFRef<__CTLine const*>::~PCCFRef(&theData);
}

void sub_25FB95818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, uint64_t a12)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  if (v15)
  {
    __cxa_free_exception(v13);
  }

  PCCFRef<__CTLine const*>::~PCCFRef(&a12);
  v17 = *v14;
  if (*v14)
  {
    *(v12 + 192) = v17;
    operator delete(v17);
  }

  a12 = v12 + 152;
  std::vector<PCICCProfile::Tag>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void PCICCProfile::parseProfileData(PCICCProfile *this, const unsigned __int8 *a2, size_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(__p, "Corrupt ColorSync profile given to PCICCProfile");
    PCString::PCString(&v40, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCICCProfile.cpp");
    PCException::PCException(exception, __p, &v40, 193);
  }

  if (a3 <= 0x80)
  {
    v34 = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(__p, "Corrupt ICC profile given to PCICCProfile");
    PCString::PCString(&v40, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCICCProfile.cpp");
    PCException::PCException(v34, __p, &v40, 199);
  }

  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v8;
  *this = v6;
  *(this + 1) = v7;
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v11;
  *(this + 4) = v9;
  *(this + 5) = v10;
  Int32Number = ProCore::Private::getInt32Number((a2 + 128), a2);
  if ((12 * Int32Number + 132) >= a3)
  {
    v35 = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(__p, "Corrupt ICC profile given to PCICCProfile");
    PCString::PCString(&v40, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCICCProfile.cpp");
    PCException::PCException(v35, __p, &v40, 211);
  }

  v14 = Int32Number;
  if (Int32Number)
  {
    v15 = 132;
    do
    {
      v16 = v15;
      if (v15 >= a3)
      {
        v32 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(__p, "Corrupt ICC profile given to PCICCProfile");
        PCString::PCString(&v40, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCICCProfile.cpp");
        PCException::PCException(v32, __p, &v40, 217);
      }

      LODWORD(__p[0]) = 0;
      v38 = 0;
      v39 = 0;
      v17 = &a2[v15];
      __p[1] = 0;
      v18 = ProCore::Private::getInt32Number(v17, v13);
      ProCore::Private::setUInt32NumberLE(__p, v18);
      v20 = ProCore::Private::getInt32Number((v17 + 4), v19);
      v22 = ProCore::Private::getInt32Number((v17 + 8), v21);
      if (v22 + v20 > a3)
      {
        v31 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v40, "Corrupt ICC profile given to PCICCProfile");
        PCString::PCString(&v36, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCICCProfile.cpp");
        PCException::PCException(v31, &v40, &v36, 228);
      }

      v23 = v22;
      PCICCTag::resize(__p, v22);
      FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(__p);
      memcpy(FactoryForSerialization, &a2[v20], v23);
      PCICCProfile::addTag(this, __p);
      if (__p[1])
      {
        v38 = __p[1];
        operator delete(__p[1]);
      }

      v15 = v16 + 12;
      --v14;
    }

    while (v14);
  }

  v25 = *(this + 23);
  v26 = *(this + 24) - v25;
  if (a3 <= v26)
  {
    if (a3 < v26)
    {
      *(this + 24) = &v25[a3];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 23, a3 - v26);
    v25 = *(this + 23);
  }

  memcpy(v25, a2, a3);
  Size = PVPerfStats::FrameStats::GetSize((this + 84));
  v28 = PVPerfStats::FrameStats::GetSize((this + 88));
  v29 = PVPerfStats::FrameStats::GetSize((this + 92));
  v30 = PVPerfStats::FrameStats::GetSize((this + 96));
  if (Size || v28 || v29 || v30)
  {
    PCHash128::PCHash128(__p, Size, v28, v29, v30);
    *(this + 13) = *__p;
  }

  else
  {
    PCICCProfile::computeMD5(this);
  }

  *(this + 176) = 0;
}

void sub_25FB95CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, void *__p, uint64_t a12, uint64_t a13, PCString a14)
{
  PCString::~PCString(&a14);
  PCString::~PCString(&a10);
  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(a1);
}

void PCICCProfile::addTag(PCICCProfile *this, const PCICCTag *a2)
{
  v5 = *(this + 19);
  v6 = *(this + 20);
  v4 = (this + 152);
  if (v5 != v6)
  {
    v7 = -v5;
    while (1)
    {
      v8 = *v5;
      if (v8 == PVPerfStats::FrameStats::GetSize(a2))
      {
        break;
      }

      v5 += 24;
      v7 -= 24;
      if (v5 == v6)
      {
        goto LABEL_11;
      }
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PCICCProfile::Tag *,PCICCProfile::Tag *,PCICCProfile::Tag *>(&Size, 24 - v7, *(this + 20), -v7);
    v10 = v9;
    v11 = *(this + 20);
    if (v11 != v9)
    {
      do
      {
        v12 = *(v11 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v11 -= 24;
      }

      while (v11 != v10);
    }

    *(this + 20) = v10;
  }

LABEL_11:
  v26 = 0uLL;
  v13 = PCICCTag::size(a2);
  v14 = *(this + 16);
  v15 = *(this + 17);
  if (v14 == v15)
  {
LABEL_18:
    operator new();
  }

  v16 = v13;
  while (1)
  {
    v17 = **v14;
    FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a2);
    v19 = *v14;
    v20 = **v14;
    v21 = (*v14)[1] - v20 >= v16 ? v16 : (*v14)[1] - v20;
    if (!memcmp(v17, FactoryForSerialization, v21))
    {
      break;
    }

    v14 += 2;
    if (v14 == v15)
    {
      goto LABEL_18;
    }
  }

  v22 = v14[1];
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  *&v26 = v19;
  *(&v26 + 1) = v22;
  v25 = 0uLL;
  Size = PVPerfStats::FrameStats::GetSize(a2);
  v23 = v26;
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v25 = v23;
  std::vector<PCICCProfile::Tag>::push_back[abi:ne200100](v4, &Size);
  *(this + 176) = 1;
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }
}

void sub_25FB95F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

__n128 PCICCProfile::computeMD5(PCICCProfile *this)
{
  v2 = *(this + 23);
  v3 = *(v2 + 44);
  v4 = *(v2 + 64);
  *(v2 + 44) = 0;
  *(*(this + 23) + 64) = 0;
  v5 = *(this + 23);
  *(v5 + 92) = 0;
  *(v5 + 84) = 0;
  v8 = 0;
  v9 = xmmword_26034C050;
  v10 = 0;
  v11 = 0;
  PCMD5::writeBytes(&v8, *(this + 23), *(this + 24) - *(this + 23));
  PCMD5::getHash(&v8, &v7);
  *(this + 13) = v7;
  ProCore::Private::setUInt32NumberLE(this + 21, *(this + 52));
  ProCore::Private::setUInt32NumberLE(this + 22, *(this + 53));
  ProCore::Private::setUInt32NumberLE(this + 23, *(this + 54));
  ProCore::Private::setUInt32NumberLE(this + 24, *(this + 55));
  *(*(this + 23) + 44) = v3;
  *(*(this + 23) + 64) = v4;
  result = *(this + 84);
  *(*(this + 23) + 84) = result;
  return result;
}

__n128 PCICCProfile::getMD5Hash@<Q0>(PCICCProfile *this@<X0>, __n128 *a2@<X8>)
{
  PCICCProfile::buildProfile(this);
  result = *(this + 13);
  *a2 = result;
  return result;
}

void PCICCProfile::buildProfile(PCICCProfile *this)
{
  if (*(this + 176) == 1)
  {
    v3 = (this + 184);
    v2 = *(this + 23);
    v4 = ((*(this + 20) - *(this + 19)) >> 1) + 132;
    v5 = *(this + 24) - v2;
    v35 = (this + 184);
    if (v4 <= v5)
    {
      if (v4 < v5)
      {
        *(this + 24) = v2 + v4;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(this + 23, v4 - v5);
      v2 = *v3;
    }

    v6 = *this;
    v7 = *(this + 1);
    v8 = *(this + 3);
    v2[2] = *(this + 2);
    v2[3] = v8;
    *v2 = v6;
    v2[1] = v7;
    v9 = *(this + 4);
    v10 = *(this + 5);
    v11 = *(this + 7);
    v2[6] = *(this + 6);
    v2[7] = v11;
    v2[4] = v9;
    v2[5] = v10;
    ProCore::Private::setUInt32Number((*(this + 23) + 128), (-1431655765 * ((*(this + 20) - *(this + 19)) >> 3)));
    v36[0] = 0;
    v36[1] = 0;
    v12 = *(this + 19);
    if (*(this + 20) != v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 132;
      do
      {
        v16 = (v12 + 24 * v13);
        v17 = *(v16 + 1);
        v18 = *(v16 + 2);
        v20 = *v17;
        v19 = v17[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v19 - v20;
        v22 = v36[0];
        if (!v36[0])
        {
          goto LABEL_18;
        }

        v23 = v36;
        do
        {
          v24 = v22[5];
          v25 = v24 >= v17;
          v26 = v24 < v17;
          if (v25)
          {
            v23 = v22;
          }

          v22 = v22[v26];
        }

        while (v22);
        if (v23 != v36 && v17 >= v23[5])
        {
          v28 = v23[4];
          v32 = v35;
        }

        else
        {
LABEL_18:
          v27 = *(this + 23);
          v28 = (*(this + 24) - v27);
          if (v28 >= &v28[v21])
          {
            if (v28 > &v28[v21])
            {
              *(this + 24) += v21;
            }
          }

          else
          {
            std::vector<unsigned char>::__append(v35, v21);
            v27 = *v35;
          }

          memcpy(&v28[v27], **(v16 + 1), v21);
          v29 = v36[0];
LABEL_23:
          if (!v29)
          {
LABEL_30:
            operator new();
          }

          while (1)
          {
            v30 = v29;
            v31 = v29[5];
            if (v17 < v31)
            {
              v29 = *v30;
              goto LABEL_23;
            }

            if (v31 >= v17)
            {
              break;
            }

            v29 = v30[1];
            if (!v29)
            {
              goto LABEL_30;
            }
          }

          v33 = ((v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) - v21;
          v34 = *(this + 24) - *(this + 23);
          if (v34 >= v34 + v33)
          {
            v32 = v35;
            if (v34 > v34 + v33)
            {
              *(this + 24) += v33;
            }
          }

          else
          {
            v32 = v35;
            std::vector<unsigned char>::__append(v35, v33);
          }
        }

        ProCore::Private::setUInt32Number(&(*v32)[v15], *v16);
        ProCore::Private::setUInt32Number(&(*v32)[v15 + 4], v28);
        ProCore::Private::setUInt32Number(&(*v32)[v15 + 8], v21);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v15 += 12;
        v12 = *(this + 19);
        v13 = ++v14;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v12) >> 3) != v14);
    }

    ProCore::Private::setUInt32Number(*(this + 23), (*(this + 48) - *(this + 23)));
    PCICCProfile::computeMD5(this);
    *(this + 176) = 0;
  }
}

void PCICCProfile::findTagBySignature(PCICCProfile *this@<X0>, int a2@<W1>, PCICCTag *a3@<X8>)
{
  for (i = *(this + 19); ; i += 24)
  {
    if (i == *(this + 20))
    {
      *a3 = 0u;
      *(a3 + 1) = 0u;
      return;
    }

    if (*i == a2)
    {
      break;
    }
  }

  PCICCTag::PCICCTag(a3, a2, **(i + 8), *(*(i + 8) + 8));
}

void **std::vector<std::shared_ptr<std::vector<unsigned char>>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<TXTextObject>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t std::vector<PCICCProfile::Tag>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PCICCProfile::Tag>::__emplace_back_slow_path<PCICCProfile::Tag const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t PCICCProfile::getSize(ProCore::Private **this)
{
  PCICCProfile::buildProfile(this);
  v3 = this[23];

  return ProCore::Private::getInt32Number(v3, v2);
}

_BYTE *anonymous namespace::addXYZToTag(ProCore::Private *a1, double *a2)
{
  ProCore::Private::addInt32ToTag(a1, 0x58595A20);
  ProCore::Private::addInt32ToTag(a1, 0);
  ProCore::Private::add15Fixed16ToTag(a1, v4, *a2);
  ProCore::Private::add15Fixed16ToTag(a1, v5, a2[1]);
  v7 = a2[2];

  return ProCore::Private::add15Fixed16ToTag(a1, v6, v7);
}

_BYTE *PCMakeChromaticAdaptationICCTag(ProCore::Private *a1, uint64_t a2)
{
  PCICCTag::reset(a1, 1667785060);
  ProCore::Private::addInt32ToTag(a1, 0x73663332);
  ProCore::Private::addInt32ToTag(a1, 0);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 24; j += 8)
    {
      result = ProCore::Private::add15Fixed16ToTag(a1, v4, *(a2 + j));
    }

    a2 += 24;
  }

  return result;
}

void anonymous namespace::addMultiLocalizedUnicodeToTag(_anonymous_namespace_ *this, PCICCTag *a2, const char *a3)
{
  ProCore::Private::addInt32ToTag(this, 0x6D6C7563);
  ProCore::Private::addInt32ToTag(this, 0);
  ProCore::Private::addInt32ToTag(this, 1);
  ProCore::Private::addInt32ToTag(this, 0xC);
  ProCore::Private::addInt16ToTag(this, 0x656E);
  ProCore::Private::addInt16ToTag(this, 0x7573);
  v5 = strlen(a2);
  ProCore::Private::addInt32ToTag(this, (2 * v5));
  ProCore::Private::addInt32ToTag(this, 0x1C);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      ProCore::Private::addInt16ToTag(this, v6);
      v7 = *(a2 + 1);
      a2 = (a2 + 1);
      v6 = v7;
    }

    while (v7);
  }

  ProCore::Private::addStringToTag(this, a2, 1);
}

void PCMakeDisplayRGBProfile(float *a1@<X0>, uint64_t a2@<X1>, PCICCTag *a3@<X2>, PCICCTag *a4@<X3>, PCICCProfile *a5@<X8>)
{
  PCICCProfile::PCICCProfile(a5);
  PCConvertChromaticitiesToXYZ(a1, &v67, &v65, &v63, v62, v10, v11, v12, v13, v14, v15, v16);
  v61[0] = 0x3FF0000000000000;
  memset(&v61[1], 0, 24);
  v61[4] = 0x3FF0000000000000;
  memset(&v61[5], 0, 24);
  v61[8] = 0x3FF0000000000000;
  v18 = 1.0;
  if (v68 <= 1.0)
  {
    v19 = v68;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = 0.0;
  if (v68 < 0.0)
  {
    v19 = 0.0;
  }

  v68 = v19;
  if (v66 <= 1.0)
  {
    v21 = v66;
  }

  else
  {
    v21 = 1.0;
  }

  if (v66 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v66 = v22;
  if (v64 <= 1.0)
  {
    v18 = v64;
  }

  if (v64 >= 0.0)
  {
    v20 = v18;
  }

  v64 = v20;
  v57 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v49 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  PCICCTag::reset(&v57, 1918392666);
  PCICCTag::reset(&v53, 1733843290);
  PCICCTag::reset(&v49, 1649957210);
  PCICCTag::reset(&v45, 2004119668);
  PCICCProfile::addTag(a5, &v57);
  PCICCProfile::addTag(a5, &v53);
  PCICCProfile::addTag(a5, &v49);
  PCICCProfile::addTag(a5, &v45);
  if (v17)
  {
    v41 = 0;
    v43 = 0;
    v44 = 0;
    __p = 0;
    PCMakeChromaticAdaptationICCTag(&v41, v61);
    PCICCProfile::addTag(a5, &v41);
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  v41 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  PCMakeTRCTag(a2, &v41, 0);
  PCMakeTRCTag(a2, &v37, 1);
  PCMakeTRCTag(a2, &v33, 2);
  PCICCProfile::addTag(a5, &v41);
  PCICCProfile::addTag(a5, &v37);
  PCICCProfile::addTag(a5, &v33);
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  PCICCTag::reset(&v29, 1684370275);
  PCICCProfile::addTag(a5, &v29);
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  PCICCTag::reset(&v25, 1668313716);
  PCICCProfile::addTag(a5, &v25);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_25FB96B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v43 = *(v41 - 240);
  if (v43)
  {
    *(v41 - 232) = v43;
    operator delete(v43);
  }

  PCICCProfile::~PCICCProfile(v40);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::adaptXYZColors(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  if (v9)
  {
    PCTransformXYZ(a5, a1, a1);
    PCTransformXYZ(a5, a2, a2);
    PCTransformXYZ(a5, a3, a3);
  }

  return v9;
}

void PCMakeDisplayRGBProfile(float *a1@<X0>, uint64_t a2@<X1>, PCICCProfile *a3@<X8>)
{
  PCGetDescriptionForProfile(a1, a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  PCMakeDisplayRGBProfile(a1, a2, p_p, "Copyright (c) 2016 Apple Inc.", a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25FB96D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PCMakeDisplayGrayProfile(uint64_t a1@<X0>, PCICCTag *a2@<X1>, PCICCTag *a3@<X2>, PCICCProfile *a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  PCICCProfile::PCICCProfile(a4);
  PCICCProfile::setUpHeader(a4, 0x7DFu, 7u, 0xAu, 0, 0, 0);
  ProCore::Private::setUInt32Number(a4 + 4, 0x47524159);
  v32[0] = (a5 / a6);
  v32[1] = 1.0;
  v32[2] = (((1.0 - a5) - a6) / a6);
  v31[0] = 0x3FF0000000000000;
  memset(&v31[1], 0, 24);
  v31[4] = 0x3FF0000000000000;
  memset(&v31[5], 0, 24);
  v31[8] = 0x3FF0000000000000;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  PCICCTag::reset(&v27, 2004119668);
  PCICCProfile::addTag(a4, &v27);
  if (v12)
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
    __p = 0;
    PCMakeChromaticAdaptationICCTag(&v23, v31);
    PCICCProfile::addTag(a4, &v23);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  v23 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  PCMakeTRCTag(a1, &v23, 3);
  PCICCProfile::addTag(a4, &v23);
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  PCICCTag::reset(&v19, 1684370275);
  PCICCProfile::addTag(a4, &v19);
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  PCICCTag::reset(&v15, 1668313716);
  PCICCProfile::addTag(a4, &v15);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_25FB96F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  PCICCProfile::~PCICCProfile(v23);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::computeAdaptationMatrix(double *a1, uint64_t a2)
{
  v2 = a2;
  PCComputeChromaticAdaptation(a1, &kPCD50XYZ, a2);
  v4 = 0;
  while (2)
  {
    for (i = 0; i != 3; ++i)
    {
      v3 = ProCore::Private::convertToS15Fixed16(v3, *(v2 + 8 * i));
      if (v4 == i)
      {
        if (v3 != 0x10000)
        {
          return 1;
        }
      }

      else if (v3)
      {
        return 1;
      }
    }

    ++v4;
    v2 += 24;
    if (v4 != 3)
    {
      continue;
    }

    break;
  }

  return 0;
}

void PCMakeDisplayGrayProfile(float a1@<S0>, float a2@<S1>, float a3@<S2>, PCICCTag *a4@<X0>, PCICCTag *a5@<X1>, PCICCProfile *a6@<X8>)
{
  PCICCTransferFunctionGamma::PCICCTransferFunctionGamma(v11, a3);
  PCMakeDisplayGrayProfile(v11, a4, a5, a6, a1, a2);
  PCICCTransferFunctionGamma::~PCICCTransferFunctionGamma(v11);
}

uint64_t PCMakeDisplayGrayProfile@<X0>(float a1@<S0>, float a2@<S1>, float a3@<S2>, PCICCProfile *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::stringbuf::str();
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  PCMakeDisplayGrayProfile(a1, a2, a3, p_p, "Copyright (c) 2016 Apple Inc.", a4);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v16);
}

void sub_25FB972C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void *anonymous namespace::writeMonochromeIlluminantName(void *a1, float a2, float a3)
{
  if (vabds_f32(a2, 0.3127) >= 0.00001 || vabds_f32(a3, 0.329) >= 0.00001)
  {
    if (vabds_f32(a2, 0.3457) >= 0.00001 || vabds_f32(a3, 0.3585) >= 0.00001)
    {
      if (vabds_f32(a2, 0.32168) >= 0.00001 || vabds_f32(a3, 0.33767) >= 0.00001)
      {
        if (vabds_f32(a2, 0.314) >= 0.00001 || vabds_f32(a3, 0.351) >= 0.00001)
        {
          v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
          *(v5 + *(*v5 - 24) + 16) = 5;
          v6 = std::ostream::operator<<();
          v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
          *(v7 + *(*v7 - 24) + 16) = 5;
          a1 = std::ostream::operator<<();
          v3 = ")";
          v4 = 1;
        }

        else
        {
          v3 = "DCI P3 Monochrome";
          v4 = 17;
        }

        goto LABEL_15;
      }

      v3 = "D60 Monochrome";
    }

    else
    {
      v3 = "D50 Monochrome";
    }
  }

  else
  {
    v3 = "D65 Monochrome";
  }

  v4 = 14;
LABEL_15:

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

void *anonymous namespace::writeGamma(void *a1, float a2)
{
  if (a2 == 1.0)
  {
    v2 = " Linear";
    v3 = 7;
LABEL_5:

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
  }

  if (fabsf(a2 + -1.961) < 0.00001)
  {
    v2 = ", QuickTime Gamma";
    v3 = 17;
    goto LABEL_5;
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", gamma ", 8);
  *(v5 + *(*v5 - 24) + 16) = 4;

  return std::ostream::operator<<();
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](a1 + 112);
  return a1;
}

void PCMakeDisplayRGBProfileFromGrayProfile(const PCICCProfile *a1@<X0>, PCICCProfile *a2@<X8>)
{
  PCICCProfile::PCICCProfile(a2);
  PCICCProfile::setUpHeader(a2, 0x7DFu, 8u, 4u, 0, 0, 0);
  PCICCProfile::findTagBySignature(a1, 2004119668, v60);
  PCICCProfile::findTagBySignature(a1, 1800688195, &v57);
  v52 = kPCChromaticities_ITU_R709_2;
  v53 = 0x3D75C28F3E19999ALL;
  v4 = vaddvq_f64(v55);
  v54 = COERCE_DOUBLE(vcvt_f32_f64(vdivq_f64(v55, vdupq_lane_s64(COERCE__INT64(v4 + v56), 0))));
  if (!PCConvertChromaticitiesToXYZ(&v52, &v50, &v48, &v46, v45, v54, v55.f64[0], v4, v5, v6, v7, v8))
  {
    PCConvertChromaticitiesToXYZ(&kPCChromaticities_ITU_R709_2, &v50, &v48, &v46, &v55, v9, v10, v11, v12, v13, v14, v15);
  }

  v44[0] = 0x3FF0000000000000;
  memset(&v44[1], 0, 24);
  v44[4] = 0x3FF0000000000000;
  memset(&v44[5], 0, 24);
  v44[8] = 0x3FF0000000000000;
  v17 = 1.0;
  if (v51 <= 1.0)
  {
    v18 = v51;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = 0.0;
  if (v51 < 0.0)
  {
    v18 = 0.0;
  }

  v51 = v18;
  if (v49 <= 1.0)
  {
    v20 = v49;
  }

  else
  {
    v20 = 1.0;
  }

  if (v49 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v49 = v21;
  if (v47 <= 1.0)
  {
    v17 = v47;
  }

  if (v47 >= 0.0)
  {
    v19 = v17;
  }

  v47 = v19;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v36 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  PCICCTag::reset(&v40, 1918392666);
  PCICCTag::reset(&v36, 1733843290);
  PCICCTag::reset(&v32, 1649957210);
  PCICCTag::reset(v60, 2004119668);
  PCICCProfile::addTag(a2, &v40);
  PCICCProfile::addTag(a2, &v36);
  PCICCProfile::addTag(a2, &v32);
  PCICCProfile::addTag(a2, v60);
  if (v16)
  {
    v28 = 0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    PCMakeChromaticAdaptationICCTag(&v28, v44);
    PCICCProfile::addTag(a2, &v28);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }

  ProCore::Private::setUInt32NumberLE(&v57, 0x72545243);
  PCICCProfile::addTag(a2, &v57);
  ProCore::Private::setUInt32NumberLE(&v57, 0x67545243);
  PCICCProfile::addTag(a2, &v57);
  ProCore::Private::setUInt32NumberLE(&v57, 0x62545243);
  PCICCProfile::addTag(a2, &v57);
  v28 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  PCICCTag::reset(&v28, 1684370275);
  PCICCProfile::addTag(a2, &v28);
  v24 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  PCICCTag::reset(&v24, 1668313716);
  PCICCProfile::addTag(a2, &v24);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

void sub_25FB97A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a27)
  {
    operator delete(a27);
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 56);
  if (v32)
  {
    *(v29 - 48) = v32;
    operator delete(v32);
  }

  PCICCProfile::~PCICCProfile(v28);
  _Unwind_Resume(a1);
}

void anonymous namespace::getXYZFromTag(uint64_t a1, double *a2)
{
  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
  *a2 = ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 8), v4);
  a2[1] = ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 12), v5);
  a2[2] = ProCore::Private::getS15Fixed16Number((FactoryForSerialization + 16), v6);
}

void PCMakeDisplayGrayProfileFromRGBProfile(const PCICCProfile *a1@<X0>, PCICCProfile *a2@<X8>)
{
  PCICCProfile::findTagBySignature(a1, 2004119668, v22);
  PCICCProfile::findTagBySignature(a1, 1918128707, v16);
  PCICCProfile::findTagBySignature(a1, 1733579331, v13);
  PCICCProfile::findTagBySignature(a1, 1649693251, v10);
  v4 = 2.2;
  if (!PCICCTag::empty(v16) && !PCICCTag::empty(v13) && !PCICCTag::empty(v10))
  {
    v5 = PCEstimateGammaFromTag(v16);
    v6 = PCEstimateGammaFromTag(v13);
    v4 = ((v5 + v6) + PCEstimateGammaFromTag(v10)) / 3.0;
  }

  v7 = v19 + v20 + v21;
  v8 = v19 / v7;
  v9 = v20 / v7;
  PCMakeDisplayGrayProfile(v8, v9, v4, a2);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_25FB97CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

BOOL PCSameColorTransform(const PCICCProfile *a1, const PCICCProfile *a2)
{
  v4 = *(a1 + 19);
  v5 = (*(a1 + 20) - v4) >> 3;
  v6 = 0xAAAAAAAAAAAAAAABLL * v5;
  v7 = (-1431655765 * v5);
  if (-1431655765 * v5)
  {
    v8 = 0;
    v9 = *(a1 + 19);
    while (1)
    {
      if ((v10 = 0, !v4) || v6 <= v8 || ((v10 = *v9, *v9 != 1668313716) ? (v11 = v10 == 1852074350) : (v11 = 1), !v11))
      {
        if (!result)
        {
          break;
        }
      }

      ++v8;
      v9 += 6;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v13 = *(a2 + 19);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 20) - v13) >> 3);
    if (v14)
    {
      v15 = 0;
      for (i = *(a2 + 19); ; i += 6)
      {
        if ((v17 = 0, !v13) || v14 <= v15 || ((v17 = *i, *i != 1668313716) ? (v18 = v17 == 1852074350) : (v18 = 1), !v18))
        {
          if (!result)
          {
            break;
          }
        }

        if (v14 == ++v15)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL anonymous namespace::sameTagData(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  if (v3 == v4)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 152);
    while (*v5 != a3)
    {
      v5 += 24;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *(*(v5 + 8) + 8) - **(v5 + 8);
  }

  v7 = *(a2 + 152);
  v8 = *(a2 + 160);
  if (v7 == v8)
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    v9 = *(a2 + 152);
    while (*v9 != a3)
    {
      v9 += 24;
      if (v9 == v8)
      {
        goto LABEL_11;
      }
    }

    v10 = *(*(v9 + 8) + 8) - **(v9 + 8);
  }

  if (v6 != v10)
  {
    return 0;
  }

  while (1)
  {
    if (v3 == v4)
    {
      v12 = 0;
      goto LABEL_20;
    }

    if (*v3 == a3)
    {
      break;
    }

    v3 += 24;
  }

  v12 = **(v3 + 8);
  while (1)
  {
LABEL_20:
    if (v7 == v8)
    {
      return 1;
    }

    if (*v7 == a3)
    {
      break;
    }

    v7 += 24;
  }

  v11 = 1;
  if (v12)
  {
    v14 = **(v7 + 8);
    if (v14)
    {
      return memcmp(v12, v14, v6) == 0;
    }
  }

  return v11;
}

void PCGetChromaticities(PCICCProfile *a1, float32x4_t *a2)
{
  PCICCProfile::findTagBySignature(a1, 2004119668, v40);
  v38 = kPCD50XYZ;
  v39 = 0.8249;
  if (!PCICCTag::empty(v40))
  {
  }

  PCICCProfile::findTagBySignature(a1, 1918392666, v35);
  v34 = 1.0;
  v33 = xmmword_26034C068;
  if (!PCICCTag::empty(v35))
  {
  }

  PCICCProfile::findTagBySignature(a1, 1733843290, v30);
  v29 = 1.0;
  v28 = xmmword_26034C068;
  if (!PCICCTag::empty(v30))
  {
  }

  PCICCProfile::findTagBySignature(a1, 1649957210, v25);
  v24 = 1.0;
  v23 = xmmword_26034C068;
  if (!PCICCTag::empty(v25))
  {
  }

  PCICCProfile::findTagBySignature(a1, 1667785060, v20);
  v19[0] = 0x3FF0000000000000;
  memset(&v19[1], 0, 24);
  v19[4] = 0x3FF0000000000000;
  memset(&v19[5], 0, 24);
  v19[8] = 0x3FF0000000000000;
  if (PCICCTag::empty(v20))
  {
    PCComputeChromaticAdaptation(&kPCD50XYZ, &v38, v19);
  }

  else
  {
    v4 = 0;
    v6 = (OZFactoryBase::getFactoryForSerialization(v20) + 8);
    v7 = v19;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *&v7[i] = ProCore::Private::getS15Fixed16Number(v6, v5);
        v6 = (v6 + 4);
      }

      ++v4;
      v7 += 3;
    }

    while (v4 != 3);
    PCMatrix33Tmpl<double>::invert(v19, v19, 0.0, v9, v10, v11);
  }

  if (vabdd_f64(*&v38, 0.9642) < 0.001 && vabdd_f64(*(&v38 + 1), 1.0) < 0.001 && vabdd_f64(v39, 0.8249) < 0.001)
  {
    PCTransformXYZ(v19, &v38, &v38);
  }

  PCTransformXYZ(v19, &v33, &v33);
  PCTransformXYZ(v19, &v28, &v28);
  PCTransformXYZ(v19, &v23, &v23);
  v12.f64[0] = v34;
  *&v13.f64[0] = vdupq_laneq_s64(v33, 1).u64[0];
  v13.f64[1] = *(&v28 + 1);
  v12.f64[1] = v29;
  v14 = vaddq_f64(vaddq_f64(vzip1q_s64(v33, v28), v13), v12);
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v33, vdupq_lane_s64(v14.i64[0], 0))), vdivq_f64(v28, vdupq_laneq_s64(v14, 1)));
  *&v13.f64[0] = vdupq_laneq_s64(v23, 1).u64[0];
  v13.f64[1] = *(&v38 + 1);
  v16 = vaddq_f64(vzip1q_s64(v23, v38), v13);
  v13.f64[0] = v24;
  v13.f64[1] = v39;
  v17 = vaddq_f64(v16, v13);
  v18 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v23, vdupq_lane_s64(v17.i64[0], 0))), vdivq_f64(v38, vdupq_laneq_s64(v17, 1)));
  *a2 = v15;
  a2[1] = v18;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_25FB982C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  v41 = *(v39 - 152);
  if (v41)
  {
    *(v39 - 144) = v41;
    operator delete(v41);
  }

  v42 = *(v39 - 88);
  if (v42)
  {
    *(v39 - 80) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

BOOL PCMatrix33Tmpl<double>::invert(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int64x2_t a6)
{
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  a6.i64[0] = *a2;
  v10 = *(a2 + 24);
  v11 = vmuld_lane_f64(v7, v10, 1) - v6 * v9.f64[0];
  v12.f64[0] = *(a2 + 40);
  v12.f64[1] = v6;
  v13 = vdupq_laneq_s64(v9, 1);
  v14.f64[1] = *(a2 + 48);
  v14.f64[0] = v7;
  v15 = vsubq_f64(vmulq_f64(v12, vzip1q_s64(v13, v10)), vmulq_f64(v10, v14));
  v16 = vmulq_f64(v8, v15);
  v17 = v16.f64[1] + v11 * *a2 + v16.f64[0];
  v18 = fabs(v17) >= a3 && v17 != 0.0;
  if (v18)
  {
    v19 = vmulq_f64(v12, v8);
    v20.f64[1] = *(a2 + 32);
    v20.f64[0] = *(a2 + 64);
    v21 = 1.0 / v17;
    *a1 = v11 * v21;
    *(a1 + 8) = vmulq_n_f64(vsubq_f64(vextq_s8(v19, v19, 8uLL), vmulq_f64(v20, v8)), v21);
    *(a1 + 24) = v21 * v15.f64[0];
    v19.f64[1] = v8.f64[1];
    v19.f64[0] = v7;
    v22 = vzip1q_s64(a6, v10);
    v23.f64[1] = v8.f64[1];
    *&v23.f64[0] = a6.i64[0];
    v24 = vmulq_f64(v23, v9);
    *(a1 + 32) = vmulq_n_f64(vsubq_f64(vmulq_f64(v19, v22), vextq_s8(v24, v24, 8uLL)), v21);
    v25 = vdupq_lane_s64(*&v8.f64[0], 0);
    *(a1 + 48) = vmuld_lane_f64(v21, v15, 1);
    v8.f64[1] = v10.f64[1];
    *&v13.f64[1] = a6.i64[0];
    v25.f64[0] = v6;
    *(a1 + 56) = vmulq_n_f64(vsubq_f64(vmulq_f64(v8, v13), vmulq_f64(v25, v22)), v21);
  }

  return v18;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PCICCProfile::Tag *,PCICCProfile::Tag *,PCICCProfile::Tag *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v8 = *(a4 + 16);
      *(a4 + 8) = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 24;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB98730(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FB987BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2666E9F00);
  }
}

uint64_t std::vector<PCICCProfile::Tag>::__emplace_back_slow_path<PCICCProfile::Tag const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCICCProfile::Tag>>(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *&v17 = v7 + 24;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCICCProfile::Tag>,PCICCProfile::Tag*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<PCICCProfile::Tag>::~__split_buffer(&v15);
  return v14;
}

void sub_25FB989E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCICCProfile::Tag>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PCICCProfile::Tag>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCICCProfile::Tag>,PCICCProfile::Tag*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PCICCProfile::Tag>,PCICCProfile::Tag*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PCICCProfile::Tag>,PCICCProfile::Tag*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PCICCProfile::Tag>,PCICCProfile::Tag*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PCICCProfile::Tag>,PCICCProfile::Tag*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 24;
  }
}

void **std::__split_buffer<PCICCProfile::Tag>::~__split_buffer(void **a1)
{
  std::__split_buffer<PCICCProfile::Tag>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PCICCProfile::Tag>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

void std::__tree<anonymous namespace::WrittenTag>::destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

BOOL PCIssRGBTransferFunction(float a1, float a2, float a3, float a4, float a5)
{
  if (fabsf(a1 + -2.4) >= 0.001 || fabsf(a2 + -0.94787) >= 0.001 || fabsf(a3 + -0.052133) >= 0.001 || fabsf(a4 + -0.077399) >= 0.001)
  {
    return 0;
  }

  if (fabsf(a5 + -0.0405) >= 0.001)
  {
    return fabsf(a5 + -0.039) < 0.001;
  }

  return 1;
}

BOOL anonymous namespace::invert(_anonymous_namespace_ *this, double *a2, double *a3, int64x2_t a4, double a5, double a6, double a7, double a8, double a9, int64x2_t a10)
{
  a4.i64[0] = *(this + 7);
  a10.i64[0] = *(this + 8);
  v10 = *(this + 40);
  v11 = *this;
  v12 = *(this + 8);
  v13 = *(this + 24);
  v14 = vmuld_lane_f64(*a10.i64, v13, 1) - *a4.i64 * v10.f64[0];
  v15.f64[0] = *(this + 5);
  *&v15.f64[1] = a4.i64[0];
  v16 = vdupq_laneq_s64(v10, 1);
  v17.f64[1] = *(this + 6);
  *&v17.f64[0] = a10.i64[0];
  v18 = vsubq_f64(vmulq_f64(v15, vzip1q_s64(v16, v13)), vmulq_f64(v13, v17));
  v19 = vmulq_f64(v12, v18);
  v20 = v14 * *this + v19.f64[0] + v19.f64[1];
  v21 = fabs(v20);
  if (v21 >= 0.0000001)
  {
    v22 = 1.0 / v20;
    v23 = vmulq_f64(v15, v12);
    v24.f64[1] = *(this + 4);
    v24.f64[0] = *(this + 8);
    *a2 = v14 * v22;
    *(a2 + 1) = vmulq_n_f64(vsubq_f64(vextq_s8(v23, v23, 8uLL), vmulq_f64(v24, v12)), v22);
    a2[3] = v22 * v18.f64[0];
    v25.f64[1] = v12.f64[1];
    v25.f64[0] = v11;
    v26 = vmulq_f64(v10, v25);
    *(a2 + 2) = vmulq_n_f64(vsubq_f64(vmulq_f64(vzip1q_s64(a10, v13), v25), vextq_s8(v26, v26, 8uLL)), v22);
    a2[6] = vmuld_lane_f64(v22, v18, 1);
    v16.f64[1] = v13.f64[1];
    v27 = vdupq_lane_s64(*&v12.f64[0], 0);
    v12.f64[1] = v11;
    v27.f64[0] = v11;
    *(a2 + 7) = vmulq_n_f64(vsubq_f64(vmulq_f64(v16, v12), vmulq_f64(vzip1q_s64(a4, v13), v27)), v22);
  }

  return v21 >= 0.0000001;
}

BOOL PCConvertChromaticitiesToXYZ(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, int64x2_t a12)
{
  v58 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v17 = a1[1];
  v18 = 1.0 - v16 - v17;
  v19 = a1[2];
  v20 = a1[3];
  v21 = 1.0 - v19 - v20;
  *a12.i64 = a1[4];
  v22 = a1[5];
  v24 = a1[6];
  v23 = a1[7];
  v50 = v16 / v17;
  v51 = v19 / v20;
  v52 = *a12.i64 / v22;
  __asm { FMOV            V0.2D, #1.0 }

  v53 = _Q0;
  v54 = 0x3FF0000000000000;
  v55 = v18 / v17;
  v56 = v21 / v20;
  v57 = (1.0 - *a12.i64 - v22) / v22;
  v49 = 0.0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  if (v31)
  {
    v32 = v24 / v23;
    v33 = (1.0 - v24 - v23) / v23;
    v44[0] = v32 * *&v45 + *(&v45 + 1) + v33 * *&v46;
    memset(&v44[1], 0, 24);
    v44[4] = v32 * *(&v46 + 1) + *&v47 + v33 * *(&v47 + 1);
    memset(&v44[5], 0, 24);
    v44[8] = v32 * *&v48 + *(&v48 + 1) + v33 * v49;
    v34 = v50;
    v35 = v51;
    v37 = v52;
    v36 = v53;
    *a2 = v50;
    *(a2 + 8) = v36;
    v38 = *(&v53 + 1);
    v39 = v54;
    *a3 = v35;
    *(a3 + 8) = v38;
    v40 = v55;
    v41 = v56;
    *(a2 + 16) = v55;
    *(a3 + 16) = v41;
    *a4 = v37;
    *(a4 + 8) = v39;
    v42 = v57;
    *(a4 + 16) = v57;
    *a5 = v34 + v35 + v37;
    *(a5 + 8) = 0x3FF0000000000000;
    *(a5 + 16) = v40 + v41 + v42;
  }

  return v31;
}

float64x2_t anonymous namespace::multiply(_anonymous_namespace_ *this, const double *a2, double *a3, double *a4)
{
  v4 = *(this + 1);
  v5 = a2[2];
  v6 = a2[5];
  v7 = a2[8];
  v8 = *(this + 2);
  v9 = *(this + 3);
  v10 = *this * v5 + v4 * v6 + v8 * v7;
  v11 = *(this + 4);
  v12 = *(this + 5);
  v13 = v5 * v9 + v6 * v11 + v7 * v12;
  v14 = *(this + 6);
  v15 = *(this + 7);
  v16 = *(this + 8);
  v17 = v5 * v14 + v6 * v15 + v7 * v16;
  v18 = *a2;
  v19 = *(a2 + 3);
  v20 = vaddq_f64(vmulq_n_f64(*a2, *this), vmulq_n_f64(v19, v4));
  v21 = *(a2 + 6);
  a3[8] = v17;
  *a3 = vaddq_f64(v20, vmulq_n_f64(v21, v8));
  a3[2] = v10;
  *(a3 + 3) = vaddq_f64(vaddq_f64(vmulq_n_f64(v18, v9), vmulq_n_f64(v19, v11)), vmulq_n_f64(v21, v12));
  a3[5] = v13;
  result = vaddq_f64(vaddq_f64(vmulq_n_f64(v18, v14), vmulq_n_f64(v19, v15)), vmulq_n_f64(v21, v16));
  *(a3 + 3) = result;
  return result;
}

double PCComputeChromaticAdaptation(double *a1, double *a2, uint64_t a3)
{
  v12[9] = *MEMORY[0x277D85DE8];
  result = 0.0000001;
  if (vabdd_f64(*a1, *a2) >= 0.0000001 || vabdd_f64(a1[1], a2[1]) >= 0.0000001 || vabdd_f64(a1[2], a2[2]) >= 0.0000001)
  {
    v12[0] = v8[0] / v9[0];
    memset(&v12[1], 0, 24);
    v12[4] = v8[1] / v9[1];
    memset(&v12[5], 0, 24);
    v12[8] = v8[2] / v9[2];
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  else
  {
    *a3 = 0x3FF0000000000000;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0x3FF0000000000000;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0x3FF0000000000000;
  }

  return result;
}

double anonymous namespace::transform(double *a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  result = *a1 * *a2 + a1[1] * v3 + a1[2] * v4;
  v6 = *a2 * a1[3] + v3 * a1[4] + v4 * a1[5];
  v7 = *a2 * a1[6] + v3 * a1[7] + v4 * a1[8];
  a3[1] = v6;
  a3[2] = v7;
  *a3 = result;
  return result;
}

float *PCGetLuminanceCoefficients@<X0>(float *result@<X0>, float *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, int64x2_t a9@<Q6>)
{
  LODWORD(a3) = 925353388;
  if ((vabds_f32(*result, 0.64) >= 0.00001 || (LODWORD(a6) = 1051260355, vabds_f32(result[1], 0.33) >= 0.00001) || (LODWORD(a6) = 1049918177, vabds_f32(result[2], 0.29) >= 0.00001) || (LODWORD(a6) = 1058642330, vabds_f32(result[3], 0.6) >= 0.00001) || (LODWORD(a6) = 1041865114, vabds_f32(result[4], 0.15) >= 0.00001) || (LODWORD(a6) = 1031127695, vabds_f32(result[5], 0.06) >= 0.00001) || (LODWORD(a6) = 1050679863, vabds_f32(result[6], 0.3127) >= 0.00001) || (LODWORD(a6) = 1051226800, vabds_f32(result[7], 0.329) >= 0.00001)) && ((LODWORD(a5) = 1059145646, *&a4 = vabds_f32(*result, 0.63), *&a4 >= 0.00001) || (LODWORD(a5) = 1051595899, *&a4 = vabds_f32(result[1], 0.34), *&a4 >= 0.00001) || (LODWORD(a5) = 1050589266, *&a4 = vabds_f32(result[2], 0.31), *&a4 >= 0.00001) || (LODWORD(a5) = 1058558444, *&a4 = vabds_f32(result[3], 0.595), *&a4 >= 0.00001) || (LODWORD(a5) = 1042200658, *&a4 = vabds_f32(result[4], 0.155), *&a4 >= 0.00001) || (LODWORD(a5) = 1032805417, *&a4 = vabds_f32(result[5], 0.07), *&a4 >= 0.00001) || (LODWORD(a5) = 1050679863, *&a4 = vabds_f32(result[6], 0.3127), *&a4 >= 0.00001) || (LODWORD(a5) = 1051226800, *&a4 = vabds_f32(result[7], 0.329), *&a4 >= 0.00001)))
  {
    result = PCConvertChromaticitiesToXYZ(result, v18, v16, v14, &v13, a3, a4, a5, a6, a7, a8, a9);
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    if (result)
    {
      v10 = v19;
      v11 = v17;
      v12 = v15;
    }

    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
  }

  else
  {
    *a2 = 0x3F1645A23E991687;
    a2[2] = 0.114;
  }

  return result;
}

float PCGetRec709LuminanceCoefficients@<S0>(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals_8, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    PCGetRec709LuminanceCoefficients();
    a1 = v2;
  }

  *a1 = qword_280C5CD10;
  result = *&dword_280C5CD18;
  *(a1 + 8) = dword_280C5CD18;
  return result;
}

float *PCGetRGBToYCbCrMatrix(float *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  result = PCGetLuminanceCoefficients(a1, &v25, a3, a4, a5, a6, a7, a8, a9);
  v12 = *(&v25 + 1);
  v11 = v26;
  v13 = 1.0 / ((v26 + -1.0) + (v26 + -1.0));
  v14 = *&v25;
  v15 = 1.0 / ((*&v25 + -1.0) + (*&v25 + -1.0));
  *a2 = v25;
  *(a2 + 8) = v26;
  v16 = v14 * v13;
  v17 = v12 * v13;
  v18 = v17 + (v16 + 0.5);
  if (v18 != 0.0)
  {
    v17 = -0.5 - (v16 + (v18 * 0.5));
    v16 = v16 + (v18 * 0.5);
  }

  *(a2 + 12) = v16;
  *(a2 + 16) = v17;
  v19 = v12 * v15;
  v20 = v11 * v15;
  v21 = v20 + (v19 + 0.5);
  v22 = v19 + (v21 * 0.5);
  v23 = v21 == 0.0;
  if (v21 == 0.0)
  {
    v24 = v19;
  }

  else
  {
    v24 = v19 + (v21 * 0.5);
  }

  *(a2 + 20) = 0x3F0000003F000000;
  if (!v23)
  {
    v20 = -0.5 - v22;
  }

  *(a2 + 28) = v24;
  *(a2 + 32) = v20;
  return result;
}

double PCGetYCbCrToRGBMatrix(float *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  PCGetRGBToYCbCrMatrix(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (!PCMatrix33Tmpl<float>::invert(a2, a2, 0.0))
  {
    *&result = 1065353216;
    *a2 = xmmword_2603429B0;
    *(a2 + 16) = xmmword_2603429B0;
    *(a2 + 32) = 1065353216;
  }

  return result;
}

float *PCGetRec709YCbCrMatrix@<X0>(uint64_t a1@<X8>, double a2@<D1>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, int64x2_t a7@<Q6>)
{
  *a1 = xmmword_2603429B0;
  *(a1 + 16) = xmmword_2603429B0;
  *(a1 + 32) = 1065353216;
  return PCGetRGBToYCbCrMatrix(&kPCChromaticities_ITU_R709_2, a1, COERCE_DOUBLE(1065353216), a2, a3, a4, a5, a6, a7);
}

BOOL PCMatrix33Tmpl<float>::invert(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a2 + 28);
  v3.i32[0] = *(a2 + 32);
  v6 = *(a2 + 12);
  v5 = *(a2 + 16);
  v7.i32[0] = *(a2 + 20);
  v8 = *(a2 + 24);
  v9 = (v5 * v3.f32[0]) - (v4 * v7.f32[0]);
  v10 = *(a2 + 4);
  v11 = (v7.f32[0] * v8) - (v3.f32[0] * v6);
  v12 = *a2;
  v13 = (v4 * v6) - (v5 * v8);
  v14 = vmuls_lane_f32(v13, v10, 1) + ((v9 * *a2) + (v11 * v10.f32[0]));
  v15 = fabsf(v14) >= a3 && v14 != 0.0;
  if (v15)
  {
    v16 = vdup_lane_s32(v10, 0);
    v17.i32[0] = *(a2 + 4);
    v17.i32[1] = *(a2 + 16);
    v16.i32[0] = *(a2 + 28);
    v18.i32[0] = *a2;
    v18.i32[1] = *(a2 + 12);
    v19 = vsub_f32(vmul_f32(v17, __PAIR64__(LODWORD(v12), LODWORD(v8))), vmul_f32(v16, v18));
    v20.f32[0] = (v10.f32[1] * v6) - (v7.f32[0] * v12);
    *&v21 = (v3.f32[0] * v12) - (v10.f32[1] * v8);
    v7.i32[1] = *(a2 + 28);
    v3.i32[1] = v17.i32[1];
    *v22.f32 = vsub_f32(vrev64_s32(vmul_f32(v7, v10)), vmul_f32(v3, v10));
    *a1 = v9 * (1.0 / v14);
    v22.i64[1] = __PAIR64__(v21, LODWORD(v11));
    *(a1 + 4) = vmulq_n_f32(v22, 1.0 / v14);
    v20.f32[1] = v13;
    *&v20.u32[2] = v19;
    *(a1 + 20) = vmulq_n_f32(v20, 1.0 / v14);
  }

  return v15;
}

void PCGetRec709LuminanceCoefficients()
{
  if (__cxa_guard_acquire(_MergedGlobals_8))
  {
    PCGetLuminanceCoefficients(&kPCChromaticities_ITU_R709_2, &qword_280C5CD10, v0, v1, v2, v3, v4, v5, v6);

    __cxa_guard_release(_MergedGlobals_8);
  }
}

void PCException::addCallStackSymbols(PCException *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCACC8] callStackSymbols];
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v7 = v4;
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    CFRelease(v5);
    v4 = v7;
  }

  *(this + 1) = v4;
  v7 = 0;
  PCCFRef<__CFArray const*>::~PCCFRef(&v7);
  objc_autoreleasePoolPop(v2);
}

void sub_25FB99880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<__CFArray const*>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

float PCEstimateGamma(const PCICCProfile *a1)
{
  PCICCProfile::findTagBySignature(a1, 1918128707, v15);
  PCICCProfile::findTagBySignature(a1, 1733579331, v12);
  PCICCProfile::findTagBySignature(a1, 1649693251, v9);
  if (PCICCTag::empty(v15) || PCICCTag::empty(v12) || PCICCTag::empty(v9))
  {
    PCICCProfile::findTagBySignature(a1, 1800688195, &v6);
    v2 = 0.0;
    if (!PCICCTag::empty(&v6))
    {
      v2 = PCEstimateGammaFromTag(&v6);
    }

    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = PCEstimateGammaFromTag(v15);
    v5 = PCEstimateGammaFromTag(v12);
    v2 = ((v4 + v5) + PCEstimateGammaFromTag(v9)) / 3.0;
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v2;
}

void sub_25FB999C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

float PCEstimateGamma(CGColorSpace *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  PCICCProfile::PCICCProfile(v3, a1);
  v1 = PCEstimateGamma(v3);
  PCICCProfile::~PCICCProfile(v3);
  return v1;
}

void sub_25FB99AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    PCICCProfile::~PCICCProfile(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x25FB99A84);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ProCore::Private::convertToS15Fixed16(ProCore::Private *this, double a2)
{
  v2 = 32768.0;
  if (a2 <= 32768.0)
  {
    v2 = a2;
  }

  v3 = v2 * 131072.0;
  v4 = a2 < -32768.0;
  v5 = -4294967300.0;
  if (!v4)
  {
    v5 = v3;
  }

  return (v5 + 1) >> 1;
}

uint64_t ProCore::Private::convertToU8Fixed8(ProCore::Private *this, double a2)
{
  v2 = 255.996094;
  if (a2 <= 255.996094)
  {
    v2 = a2;
  }

  v3 = v2 * 512.0;
  v4 = a2 < 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  return ((v5 + 1) >> 1);
}

_BYTE *ProCore::Private::add8Fixed8ToTag(ProCore::Private *this, PCICCTag *a2, double a3)
{
  v5 = PCICCTag::size(this);
  PCICCTag::resize(this, v5 + 2);
  result = PCICCTag::operator[](this, v5);
  v7 = 255.996094;
  if (a3 <= 255.996094)
  {
    v7 = a3;
  }

  v8 = v7 * 512.0;
  if (a3 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8 + 1;
  *result = v9 >> 9;
  result[1] = v9 >> 1;
  return result;
}

_WORD *ProCore::Private::addInt16ToTag(ProCore::Private *this, PCICCTag *a2)
{
  v2 = a2;
  v4 = PCICCTag::size(this);
  PCICCTag::resize(this, v4 + 2);
  result = PCICCTag::operator[](this, v4);
  *result = __rev16(v2);
  return result;
}

_DWORD *ProCore::Private::addInt32ToTag(ProCore::Private *this, PCICCTag *a2)
{
  v2 = a2;
  v4 = PCICCTag::size(this);
  PCICCTag::resize(this, v4 + 4);
  result = PCICCTag::operator[](this, v4);
  *result = bswap32(v2);
  return result;
}

_BYTE *ProCore::Private::add15Fixed16ToTag(ProCore::Private *this, PCICCTag *a2, double a3)
{
  v5 = PCICCTag::size(this);
  PCICCTag::resize(this, v5 + 4);
  result = PCICCTag::operator[](this, v5);
  v7 = 32768.0;
  if (a3 <= 32768.0)
  {
    v7 = a3;
  }

  v8 = v7 * 131072.0;
  if (a3 < -32768.0)
  {
    v8 = -4294967300.0;
  }

  v9 = v8 + 1;
  *result = v9 >> 25;
  result[1] = v9 >> 17;
  result[2] = v9 >> 9;
  result[3] = v9 >> 1;
  return result;
}

void ProCore::Private::addStringToTag(ProCore::Private *this, PCICCTag *a2, const char *a3)
{
  v3 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = a2 + 1;
    do
    {
      PCICCTag::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  if (v3)
  {

    PCICCTag::push_back(this, 0);
  }
}

uint64_t PCGetPrimariesString(int a1)
{
  result = 0;
  if (a1 > 8)
  {
    switch(a1)
    {
      case 9:
        v3 = MEMORY[0x277CC4C18];
        break;
      case 11:
        v3 = MEMORY[0x277CC4C08];
        break;
      case 12:
        v3 = MEMORY[0x277CC4C30];
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v3 = MEMORY[0x277CC4C20];
        break;
      case 5:
        v3 = MEMORY[0x277CC4C10];
        break;
      case 6:
        v3 = MEMORY[0x277CC4C38];
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t PCGetTransferFunctionString(int a1)
{
  result = 0;
  if (a1 <= 12)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v3 = MEMORY[0x277CC4CE8];
      }

      else
      {
        if (a1 != 8)
        {
          return result;
        }

        v3 = MEMORY[0x277CC4CE0];
      }
    }

    else if (a1 == 1)
    {
      v3 = MEMORY[0x277CC4CD8];
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v3 = MEMORY[0x277CC4D00];
    }
  }

  else if (a1 <= 15)
  {
    if (a1 == 13)
    {
      v3 = MEMORY[0x277CC4D08];
    }

    else
    {
      if (a1 != 14)
      {
        return result;
      }

      v3 = MEMORY[0x277CC4CC8];
    }
  }

  else
  {
    switch(a1)
    {
      case 16:
        v3 = MEMORY[0x277CC4CF0];
        break;
      case 17:
        v3 = MEMORY[0x277CC4CF8];
        break;
      case 18:
        v3 = MEMORY[0x277CC4CD0];
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t PCGetMatrixString(int a1)
{
  result = 0;
  if (a1 > 6)
  {
    if (a1 == 7)
    {
      v3 = MEMORY[0x277CC4D30];
    }

    else
    {
      if (a1 != 9)
      {
        return result;
      }

      v3 = MEMORY[0x277CC4D18];
    }
  }

  else if (a1 == 1)
  {
    v3 = MEMORY[0x277CC4D28];
  }

  else
  {
    if (a1 != 6)
    {
      return result;
    }

    v3 = MEMORY[0x277CC4D20];
  }

  return *v3;
}

uint64_t PCClassifyPrimaries(float *a1)
{
  v1 = *a1;
  if (vabds_f32(*a1, 0.64) < 0.001 && vabds_f32(a1[1], 0.33) < 0.001 && vabds_f32(a1[2], 0.3) < 0.001 && vabds_f32(a1[3], 0.6) < 0.001 && vabds_f32(a1[4], 0.15) < 0.001 && vabds_f32(a1[5], 0.06) < 0.001 && vabds_f32(a1[6], 0.3127) < 0.001 && vabds_f32(a1[7], 0.329) < 0.001)
  {
    return 1;
  }

  if (vabds_f32(v1, 0.64) < 0.001 && vabds_f32(a1[1], 0.33) < 0.001 && vabds_f32(a1[2], 0.29) < 0.001 && vabds_f32(a1[3], 0.6) < 0.001 && vabds_f32(a1[4], 0.15) < 0.001 && vabds_f32(a1[5], 0.06) < 0.001 && vabds_f32(a1[6], 0.3127) < 0.001 && vabds_f32(a1[7], 0.329) < 0.001)
  {
    return 5;
  }

  if (vabds_f32(v1, 0.63) < 0.001 && vabds_f32(a1[1], 0.34) < 0.001 && vabds_f32(a1[2], 0.31) < 0.001 && vabds_f32(a1[3], 0.595) < 0.001 && vabds_f32(a1[4], 0.155) < 0.001 && vabds_f32(a1[5], 0.07) < 0.001 && vabds_f32(a1[6], 0.3127) < 0.001 && vabds_f32(a1[7], 0.329) < 0.001)
  {
    return 6;
  }

  if (vabds_f32(v1, 0.708) < 0.001 && vabds_f32(a1[1], 0.292) < 0.001 && vabds_f32(a1[2], 0.17) < 0.001 && vabds_f32(a1[3], 0.797) < 0.001 && vabds_f32(a1[4], 0.131) < 0.001 && vabds_f32(a1[5], 0.046) < 0.001 && vabds_f32(a1[6], 0.3127) < 0.001 && vabds_f32(a1[7], 0.329) < 0.001)
  {
    return 9;
  }

  if (vabds_f32(v1, 0.68) < 0.001 && vabds_f32(a1[1], 0.32) < 0.001 && vabds_f32(a1[2], 0.265) < 0.001 && vabds_f32(a1[3], 0.69) < 0.001 && vabds_f32(a1[4], 0.15) < 0.001 && vabds_f32(a1[5], 0.06) < 0.001 && vabds_f32(a1[6], 0.314) < 0.001 && vabds_f32(a1[7], 0.351) < 0.001)
  {
    return 11;
  }

  if (vabds_f32(v1, 0.68) >= 0.001 || vabds_f32(a1[1], 0.32) >= 0.001 || vabds_f32(a1[2], 0.265) >= 0.001 || vabds_f32(a1[3], 0.69) >= 0.001 || vabds_f32(a1[4], 0.15) >= 0.001 || vabds_f32(a1[5], 0.06) >= 0.001)
  {
    return 2;
  }

  v2 = 2;
  if (vabds_f32(a1[6], 0.3127) < 0.001)
  {
    if (fabsf(a1[7] - 0.329) >= 0.001)
    {
      return 2;
    }

    else
    {
      return 12;
    }
  }

  return v2;
}

uint64_t PCClassifyTransfer(float a1)
{
  if (fabsf(a1 + -1.961) < 0.001)
  {
    return 1;
  }

  if (fabsf(a1 + -1.0) < 0.001)
  {
    return 8;
  }

  if (fabsf(a1 + -2.6) >= 0.001)
  {
    return 2;
  }

  return 17;
}

uint64_t PCPrimariesToMatrix(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 2;
  }

  else
  {
    return dword_26034C3EC[a1 - 1];
  }
}

unint64_t PCMakeCanonicalNCLCCode(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = 2;
  if (a1 > 0xC || a2 > 0x12)
  {
    v4 = 2;
    return v3 | (v4 << 32);
  }

  v4 = 2;
  if (supportedPrimariesTable[a1])
  {
    if (a3 > 9)
    {
      goto LABEL_16;
    }

    v4 = 2;
    if ((supportedTransfersTable[a2] & 1) == 0)
    {
      return v3 | (v4 << 32);
    }

    if (supportedMatricesTable[a3] != 1)
    {
LABEL_16:
      v4 = 2;
      return v3 | (v4 << 32);
    }

    if (a2 == 14)
    {
      v4 = 1;
    }

    else
    {
      v4 = a2;
    }

    if (a2 == 8 || a2 == 13)
    {
      v3 = a1;
    }

    else
    {
      if (a1 == 12 && v4 == 1)
      {
        v4 = 1;
        v3 = 12;
        return v3 | (v4 << 32);
      }

      if (a1 == 11 && v4 == 17)
      {
        v4 = 17;
        v3 = 11;
        return v3 | (v4 << 32);
      }

      v6 = v4 & 0x1D;
      if (a1 == 9 && v6 == 16)
      {
        v3 = 9;
        v4 = a2;
        return v3 | (v4 << 32);
      }

      if (a1 != 12 || v6 != 16)
      {
        v3 = a1;
        return v3 | (v4 << 32);
      }

      v3 = 12;
    }

    v4 = a2;
  }

  return v3 | (v4 << 32);
}

uint64_t PCIsUsableNCLCCode(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0xC)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a1[1];
    if (v3 <= 0x12 && (supportedPrimariesTable[v1] & 1) != 0)
    {
      v2 = 0;
      v4 = a1[2];
      if (v4 <= 9 && (supportedTransfersTable[v3] & 1) != 0)
      {
        v2 = supportedMatricesTable[v4];
      }
    }
  }

  return v2 & 1;
}

BOOL operator<(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      return a1[2] < a2[2];
    }
  }

  return v2;
}

void *PCMD5::writeBytes(PCMD5 *this, char *__src, size_t __n)
{
  v3 = __n;
  *this += __n;
  v6 = this + 28;
  v7 = *(this + 151);
  if (v7 + __n >= 0x200)
  {
    v8 = &v6[v7];
    v9 = (512 - v7);
    do
    {
      memcpy(v8, __src, v9);
      PCMD5::flushBlocks(this, 8);
      __src += v9;
      *(this + 151) = 0;
      v3 -= v9;
      v9 = 512;
      v8 = v6;
    }

    while (v3 > 0x1FF);
    v7 = 0;
  }

  result = memcpy(&v6[v7], __src, v3);
  *(this + 151) += v3;
  return result;
}

uint64_t PCMD5::flushBlocks(uint64_t this, uint64_t a2)
{
  v2 = *(this + 8);
  v3 = *(this + 12);
  v4 = *(this + 16);
  v5 = *(this + 20);
  v86 = this;
  if (a2)
  {
    v6 = (this + 44);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      HIDWORD(v9) = v2 + (v4 & v3 | v5 & ~v3) - 680876936 + v7;
      LODWORD(v9) = HIDWORD(v9);
      v10 = (v9 >> 25) + v3;
      HIDWORD(v9) = v5 + v8 - 389564586 + (v3 & v10 | v4 & ~v10);
      LODWORD(v9) = HIDWORD(v9);
      v11 = (v9 >> 20) + v10;
      v13 = *(v6 - 2);
      v12 = *(v6 - 1);
      HIDWORD(v9) = v4 + v13 + 606105819 + (v10 & v11 | v3 & ~v11);
      LODWORD(v9) = HIDWORD(v9);
      v14 = (v9 >> 15) + v11;
      HIDWORD(v9) = v3 + v12 - 1044525330 + (v11 & v14 | v10 & ~v14);
      LODWORD(v9) = HIDWORD(v9);
      v15 = (v9 >> 10) + v14;
      v16 = v6[1];
      HIDWORD(v9) = *v6 + v10 - 176418897 + (v14 & v15 | v11 & ~v15);
      LODWORD(v9) = HIDWORD(v9);
      v17 = (v9 >> 25) + v15;
      HIDWORD(v9) = v16 + v11 + 1200080426 + (v15 & v17 | v14 & ~v17);
      LODWORD(v9) = HIDWORD(v9);
      v18 = (v9 >> 20) + v17;
      v20 = v6[2];
      v19 = v6[3];
      HIDWORD(v9) = v20 + v14 - 1473231341 + (v17 & v18 | v15 & ~v18);
      LODWORD(v9) = HIDWORD(v9);
      v21 = (v9 >> 15) + v18;
      HIDWORD(v9) = v19 + v15 - 45705983 + (v18 & v21 | v17 & ~v21);
      LODWORD(v9) = HIDWORD(v9);
      v22 = (v9 >> 10) + v21;
      v23 = v6[4];
      v24 = v6[5];
      HIDWORD(v9) = v23 + v17 + 1770035416 + (v21 & v22 | v18 & ~v22);
      LODWORD(v9) = HIDWORD(v9);
      v25 = (v9 >> 25) + v22;
      HIDWORD(v9) = v24 + v18 - 1958414417 + (v22 & v25 | v21 & ~v25);
      LODWORD(v9) = HIDWORD(v9);
      v26 = (v9 >> 20) + v25;
      v27 = v6[6];
      v28 = v6[7];
      HIDWORD(v9) = v27 + v21 - 42063 + (v25 & v26 | v22 & ~v26);
      LODWORD(v9) = HIDWORD(v9);
      v29 = (v9 >> 15) + v26;
      HIDWORD(v9) = v28 + v22 - 1990404162 + (v26 & v29 | v25 & ~v29);
      LODWORD(v9) = HIDWORD(v9);
      v30 = (v9 >> 10) + v29;
      v32 = v6[8];
      v31 = v6[9];
      HIDWORD(v9) = v32 + v25 + 1804603682 + (v29 & v30 | v26 & ~v30);
      LODWORD(v9) = HIDWORD(v9);
      v33 = (v9 >> 25) + v30;
      HIDWORD(v9) = v31 + v26 - 40341101 + (v30 & v33 | v29 & ~v33);
      LODWORD(v9) = HIDWORD(v9);
      v34 = (v9 >> 20) + v33;
      v36 = v6[10];
      v35 = v6[11];
      HIDWORD(v9) = v36 + v29 - 1502002290 + (v33 & v34 | v30 & ~v34);
      LODWORD(v9) = HIDWORD(v9);
      v37 = (v9 >> 15) + v34;
      HIDWORD(v9) = v35 + v30 + 1236535329 + (v34 & v37 | v33 & ~v37);
      LODWORD(v9) = HIDWORD(v9);
      v38 = (v9 >> 10) + v37;
      HIDWORD(v9) = v8 + v33 + (v37 & ~v34) - 165796510 + (v38 & v34);
      LODWORD(v9) = HIDWORD(v9);
      v39 = (v9 >> 27) + v38;
      HIDWORD(v9) = v20 + v34 + (v38 & ~v37) - 1069501632 + (v39 & v37);
      LODWORD(v9) = HIDWORD(v9);
      v40 = (v9 >> 23) + v39;
      HIDWORD(v9) = v28 + v37 + (v39 & ~v38) + 643717713 + (v40 & v38);
      LODWORD(v9) = HIDWORD(v9);
      v41 = (v9 >> 18) + v40;
      HIDWORD(v9) = v7 + v38 + (v40 & ~v39) - 373897302 + (v41 & v39);
      LODWORD(v9) = HIDWORD(v9);
      v42 = (v9 >> 12) + v41;
      HIDWORD(v9) = v16 + v39 + (v41 & ~v40) - 701558691 + (v42 & v40);
      LODWORD(v9) = HIDWORD(v9);
      v43 = (v9 >> 27) + v42;
      HIDWORD(v9) = v27 + v40 + (v42 & ~v41) + 38016083 + (v43 & v41);
      LODWORD(v9) = HIDWORD(v9);
      v44 = (v9 >> 23) + v43;
      HIDWORD(v9) = v35 + v41 + (v43 & ~v42) - 660478335 + (v44 & v42);
      LODWORD(v9) = HIDWORD(v9);
      v45 = (v9 >> 18) + v44;
      HIDWORD(v9) = *v6 + v42 + (v44 & ~v43) - 405537848 + (v45 & v43);
      LODWORD(v9) = HIDWORD(v9);
      v46 = (v9 >> 12) + v45;
      HIDWORD(v9) = v24 + v43 + (v45 & ~v44) + 568446438 + (v46 & v44);
      LODWORD(v9) = HIDWORD(v9);
      v47 = (v9 >> 27) + v46;
      HIDWORD(v9) = v36 + v44 + (v46 & ~v45) - 1019803690 + (v47 & v45);
      LODWORD(v9) = HIDWORD(v9);
      v48 = (v9 >> 23) + v47;
      HIDWORD(v9) = v12 + v45 + (v47 & ~v46) - 187363961 + (v48 & v46);
      LODWORD(v9) = HIDWORD(v9);
      v49 = (v9 >> 18) + v48;
      HIDWORD(v9) = v23 + v46 + (v48 & ~v47) + 1163531501 + (v49 & v47);
      LODWORD(v9) = HIDWORD(v9);
      v50 = (v9 >> 12) + v49;
      HIDWORD(v9) = v31 + v47 + (v49 & ~v48) - 1444681467 + (v50 & v48);
      LODWORD(v9) = HIDWORD(v9);
      v51 = (v9 >> 27) + v50;
      HIDWORD(v9) = v13 + v48 + (v50 & ~v49) - 51403784 + (v51 & v49);
      LODWORD(v9) = HIDWORD(v9);
      v52 = (v9 >> 23) + v51;
      HIDWORD(v9) = v19 + v49 + (v51 & ~v50) + 1735328473 + (v52 & v50);
      LODWORD(v9) = HIDWORD(v9);
      v53 = (v9 >> 18) + v52;
      HIDWORD(v9) = v32 + v50 + (v52 & ~v51) - 1926607734 + (v53 & v51);
      LODWORD(v9) = HIDWORD(v9);
      v54 = (v9 >> 12) + v53;
      HIDWORD(v9) = v16 + v51 - 378558 + (v54 ^ v53 ^ v52);
      LODWORD(v9) = HIDWORD(v9);
      v55 = (v9 >> 28) + v54;
      HIDWORD(v9) = v23 + v52 - 2022574463 + (v55 ^ v54 ^ v53);
      LODWORD(v9) = HIDWORD(v9);
      v56 = (v9 >> 21) + v55;
      HIDWORD(v9) = v28 + v53 + 1839030562 + (v56 ^ v55 ^ v54);
      LODWORD(v9) = HIDWORD(v9);
      v57 = (v9 >> 16) + v56;
      HIDWORD(v9) = v36 + v54 - 35309556 + (v56 ^ v55 ^ v57);
      LODWORD(v9) = HIDWORD(v9);
      v58 = (v9 >> 9) + v57;
      HIDWORD(v9) = v8 + v55 - 1530992060 + (v57 ^ v56 ^ v58);
      LODWORD(v9) = HIDWORD(v9);
      v59 = (v9 >> 28) + v58;
      HIDWORD(v9) = *v6 + v56 + 1272893353 + (v58 ^ v57 ^ v59);
      LODWORD(v9) = HIDWORD(v9);
      v60 = (v9 >> 21) + v59;
      HIDWORD(v9) = v19 + v57 - 155497632 + (v59 ^ v58 ^ v60);
      LODWORD(v9) = HIDWORD(v9);
      v61 = (v9 >> 16) + v60;
      HIDWORD(v9) = v27 + v58 - 1094730640 + (v60 ^ v59 ^ v61);
      LODWORD(v9) = HIDWORD(v9);
      v62 = (v9 >> 9) + v61;
      HIDWORD(v9) = v31 + v59 + 681279174 + (v61 ^ v60 ^ v62);
      LODWORD(v9) = HIDWORD(v9);
      v63 = (v9 >> 28) + v62;
      HIDWORD(v9) = v7 + v60 - 358537222 + (v62 ^ v61 ^ v63);
      LODWORD(v9) = HIDWORD(v9);
      v64 = (v9 >> 21) + v63;
      HIDWORD(v9) = v12 + v61 - 722521979 + (v63 ^ v62 ^ v64);
      LODWORD(v9) = HIDWORD(v9);
      v65 = (v9 >> 16) + v64;
      HIDWORD(v9) = v20 + v62 + 76029189 + (v64 ^ v63 ^ v65);
      LODWORD(v9) = HIDWORD(v9);
      v66 = (v9 >> 9) + v65;
      HIDWORD(v9) = v24 + v63 - 640364487 + (v65 ^ v64 ^ v66);
      LODWORD(v9) = HIDWORD(v9);
      v67 = (v9 >> 28) + v66;
      HIDWORD(v9) = v32 + v64 - 421815835 + (v66 ^ v65 ^ v67);
      LODWORD(v9) = HIDWORD(v9);
      v68 = (v9 >> 21) + v67;
      HIDWORD(v9) = v35 + v65 + 530742520 + (v67 ^ v66 ^ v68);
      LODWORD(v9) = HIDWORD(v9);
      v69 = (v9 >> 16) + v68;
      HIDWORD(v9) = v13 + v66 - 995338651 + (v68 ^ v67 ^ v69);
      LODWORD(v9) = HIDWORD(v9);
      v70 = (v9 >> 9) + v69;
      HIDWORD(v9) = v7 + v67 - 198630844 + ((v70 | ~v68) ^ v69);
      LODWORD(v9) = HIDWORD(v9);
      v71 = (v9 >> 26) + v70;
      HIDWORD(v9) = v19 + v68 + 1126891415 + ((v71 | ~v69) ^ v70);
      LODWORD(v9) = HIDWORD(v9);
      v72 = (v9 >> 22) + v71;
      HIDWORD(v9) = v36 + v69 - 1416354905 + ((v72 | ~v70) ^ v71);
      LODWORD(v9) = HIDWORD(v9);
      v73 = (v9 >> 17) + v72;
      HIDWORD(v9) = v16 + v70 - 57434055 + ((v73 | ~v71) ^ v72);
      LODWORD(v9) = HIDWORD(v9);
      v74 = (v9 >> 11) + v73;
      HIDWORD(v9) = v32 + v71 + 1700485571 + ((v74 | ~v72) ^ v73);
      LODWORD(v9) = HIDWORD(v9);
      v75 = (v9 >> 26) + v74;
      HIDWORD(v9) = v12 + v72 - 1894986606 + ((v75 | ~v73) ^ v74);
      LODWORD(v9) = HIDWORD(v9);
      v76 = (v9 >> 22) + v75;
      HIDWORD(v9) = v27 + v73 - 1051523 + ((v76 | ~v74) ^ v75);
      LODWORD(v9) = HIDWORD(v9);
      v77 = (v9 >> 17) + v76;
      HIDWORD(v9) = v8 + v74 - 2054922799 + ((v77 | ~v75) ^ v76);
      LODWORD(v9) = HIDWORD(v9);
      v78 = (v9 >> 11) + v77;
      HIDWORD(v9) = v23 + v75 + 1873313359 + ((v78 | ~v76) ^ v77);
      LODWORD(v9) = HIDWORD(v9);
      v79 = (v9 >> 26) + v78;
      HIDWORD(v9) = v35 + v76 - 30611744 + ((v79 | ~v77) ^ v78);
      LODWORD(v9) = HIDWORD(v9);
      v80 = (v9 >> 22) + v79;
      HIDWORD(v9) = v20 + v77 - 1560198380 + ((v80 | ~v78) ^ v79);
      LODWORD(v9) = HIDWORD(v9);
      v81 = (v9 >> 17) + v80;
      HIDWORD(v9) = v31 + v78 + 1309151649 + ((v81 | ~v79) ^ v80);
      LODWORD(v9) = HIDWORD(v9);
      v82 = (v9 >> 11) + v81;
      HIDWORD(v9) = *v6 + v79 - 145523070 + ((v82 | ~v80) ^ v81);
      LODWORD(v9) = HIDWORD(v9);
      v83 = (v9 >> 26) + v82;
      HIDWORD(v9) = v28 + v80 - 1120210379 + ((v83 | ~v81) ^ v82);
      LODWORD(v9) = HIDWORD(v9);
      v84 = (v9 >> 22) + v83;
      HIDWORD(v9) = v13 + v81 + 718787259 + ((v84 | ~v82) ^ v83);
      LODWORD(v9) = HIDWORD(v9);
      v85 = (v9 >> 17) + v84;
      this = 3951481745;
      v2 += v83;
      HIDWORD(v9) = v24 + v82 - 343485551 + ((v85 | ~v83) ^ v84);
      LODWORD(v9) = HIDWORD(v9);
      v3 += v85 + (v9 >> 11);
      v4 += v85;
      v5 += v84;
      v6 += 16;
      --a2;
    }

    while (a2);
  }

  v86[2] = v2;
  v86[3] = v3;
  v86[4] = v4;
  v86[5] = v5;
  return this;
}

uint64_t PCMD5::finish(PCMD5 *this)
{
  v2 = *(this + 151);
  v3 = ((v2 + 63) & 0xFFFFFFC0) - v2;
  if (v3 >= 9)
  {
    v4 = -8;
  }

  else
  {
    v4 = 56;
  }

  v5 = v4 + v3;
  v6 = this + v2;
  *(this + v2 + 28) = 0x80;
  v7 = this + v2 + 29;
  if (v5 != 1)
  {
    bzero(v7, v5 - 1);
    v7 = &v6[v5 + 28];
  }

  v8 = 0;
  v9 = 8 * *this;
  v10 = v7 - this - 28;
  do
  {
    v7[v8] = v9;
    v9 >>= 8;
    ++v8;
    ++v10;
  }

  while (v8 != 8);
  result = PCMD5::flushBlocks(this, v10 / 64);
  *(this + 24) = 1;
  return result;
}

void PCMD5::getHash(PCMD5 *this@<X0>, PCHash128 *a2@<X8>)
{
  if ((*(this + 24) & 1) == 0)
  {
    PCMD5::finish(this);
  }

  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = *(this + 4);
  v7 = *(this + 5);

  PCHash128::PCHash128(a2, v4, v5, v6, v7);
}

FILE *PCPrintVA(char *a1, va_list a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (_pcPrint_Initialized == 1)
  {
    if ((_pcPrint_UseLogFile & 1) == 0)
    {
LABEL_3:

      return vprintf(a1, a2);
    }
  }

  else
  {
    _pcPrint_UseLogFile = 0;
    v5 = getenv("pcPrintUseLogFile");
    _pcPrint_UseLogFile = v5 != 0;
    _pcPrint_Initialized = 1;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v6 = getpid();
  snprintf(__str, 0x400uLL, "/tmp/output.%d.log", v6);
  result = PCPrintVA::logFile;
  if (PCPrintVA::logFile || (result = fopen(__str, "w"), (PCPrintVA::logFile = result) != 0))
  {
    vfprintf(result, a1, a2);
    return fflush(PCPrintVA::logFile);
  }

  return result;
}

void PCException_WriteError::~PCException_WriteError(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

id *ProCore_Impl::PCNSRefImpl::operator=(id *a1, id *a2)
{
  if (*a2 != *a1)
  {
    v4 = *a2;

    *a1 = *a2;
  }

  return a1;
}

{
  if (*a2 != *a1)
  {

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

void PCBufferWriteStream::PCBufferWriteStream(PCBufferWriteStream *this, int a2, int a3)
{
  PCStream::PCStream(this);
  *v6 = &unk_2872087A8;
  v7 = malloc_type_malloc(a2, 0x100004077774924uLL);
  *(this + 1) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException::PCException(exception);
    *exception = &unk_287208768;
  }

  *(this + 2) = v7;
  *(this + 3) = &v7[a2];
  *(this + 4) = v7;
  *(this + 10) = a2;
  *(this + 11) = a3;
}

void sub_25FB9B6C0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  OZChannelBase::setRangeName(v1, v4);
  _Unwind_Resume(a1);
}

void PCBufferWriteStream::~PCBufferWriteStream(OZChannelBase *this, const PCString *a2)
{
  this->var0 = &unk_2872087A8;
  var1 = this->var1;
  if (var1)
  {
    free(var1);
  }

  OZChannelBase::setRangeName(this, a2);
}

{
  PCBufferWriteStream::~PCBufferWriteStream(this, a2);

  JUMPOUT(0x2666E9F00);
}