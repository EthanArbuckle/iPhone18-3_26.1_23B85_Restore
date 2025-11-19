void PixelBufferUtils::forEveryPixel(__CVBuffer *a1, __CVBuffer *a2, void *a3, vImagePixelCount a4)
{
  v31 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = CVPixelBufferGetPixelFormatType(a2);
  v10 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v11 = PixelBufferUtils::pixelSizeForPixelFormat(v9, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount != CVPixelBufferGetPlaneCount(a2))
  {
    v13 = 3556;
    v14 = @"%s:%d - ERROR - mismatching planes number in input buffers";
LABEL_7:
    NSLog(&v14->isa, "forEveryPixel", v13);
    goto LABEL_30;
  }

  if (PlaneCount)
  {
    v13 = 3561;
    v14 = @"%s:%d - ERROR - multiplane pixel buffers with nonmatching plane index";
    if ((a4 & 0x80000000) != 0 || PlaneCount <= a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4 != -1)
  {
    NSLog(&cfstr_SDErrorCannotR_0.isa, "forEveryPixel", 3566);
    goto LABEL_30;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  if (PlaneCount)
  {
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v15 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a1, a4, *MEMORY[0x277CBF3A0], &v32);
    height = v32.height;
    data = v32.data;
    rowBytes = v32.rowBytes;
    width = v32.width;
    PixelBufferUtils::asVImageBuffer(a2, a4, *v15, &v32);
  }

  else
  {
    v16 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v32);
    height = v32.height;
    data = v32.data;
    rowBytes = v32.rowBytes;
    width = v32.width;
    PixelBufferUtils::asVImageBuffer(a2, *v16, &v32);
  }

  v4 = v32.data;
  a4 = v32.height;
  PlaneCount = v32.width;
  v25 = v32.rowBytes;
  if (height != v32.height || width != v32.width)
  {
LABEL_17:
    NSLog(&cfstr_WarningSizesIn.isa);
    if (height >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = height;
    }

    v18 = width;
    if (width >= PlaneCount)
    {
      v18 = PlaneCount;
    }

    width = v18;
    height = v17;
  }

  pixelBuffer = a1;
  v24 = a2;
  v19 = data;
  if (height && width)
  {
    for (i = 0; i != height; ++i)
    {
      v30 = v19;
      v21 = v4;
      v22 = width;
      do
      {
        v31[2](v31, v19, PixelFormatType, v21, v9);
        v21 += v11;
        v19 += v10;
        --v22;
      }

      while (v22);
      v4 += v25;
      v19 = &v30[rowBytes];
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(v24, 0);
LABEL_30:
}

uint64_t convertGrayscaleAsColor(__CVBuffer *a1, unint64_t a2, __CVBuffer *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (a2 > 1380401728)
  {
    if (a2 != 1380401729 && a2 != 1380410945 && a2 != 1380411457)
    {
LABEL_37:
      PixelBufferUtils::pixelFormatAsString(a2, &red);
      if ((red.width & 0x8000000000000000) == 0)
      {
        p_red = &red;
      }

      else
      {
        p_red = red.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertGrayscaleAsColor", 1468, a2, p_red);
      if ((SHIBYTE(red.width) & 0x80000000) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      data = red.data;
LABEL_62:
      operator delete(data);
      return 0xFFFFFFFFLL;
    }
  }

  else if (a2 != 32 && a2 != 1094862674 && a2 != 1111970369)
  {
    goto LABEL_37;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  memset(&red, 0, sizeof(red));
  v7 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &red);
  memset(&dest, 0, sizeof(dest));
  PixelBufferUtils::asVImageBuffer(a3, *v7, &dest);
  v8 = RGBA_FORMAT_MAP();
  *&maxFloat = a2 | 0x2000000000;
  pixelBufferOut.data = &maxFloat;
  v9 = 0;
  v10 = 0;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v8, maxFloat)[3];
  maxFloat = xmmword_2247A54C0;
  minFloat[0] = 0;
  minFloat[1] = 0;
  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 1278226488)
    {
      if (a2 == 1380411457)
      {
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        pixelBufferOut.data = 0;
        BufferAttributes = getBufferAttributes();
        if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x52476641u, BufferAttributes, &pixelBufferOut))
        {
          v12 = 0;
        }

        else
        {
          v12 = pixelBufferOut.data;
        }

        CVPixelBufferLockBaseAddress(v12, 0);
        memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
        PixelBufferUtils::asVImageBuffer(v12, *v7, &pixelBufferOut);
        v13 = vImageConvert_Planar8ToBGRXFFFF(&red, &red, &red, 1.0, &pixelBufferOut, &maxFloat, minFloat, 0);
        if (!v13)
        {
          pixelBufferOut.width *= 4;
          v13 = vImageConvert_PlanarFtoPlanar16F(&pixelBufferOut, &dest, 0);
        }

        v9 = 0;
        goto LABEL_48;
      }

      if (a2 == 1380410945)
      {
        v25 = vImageConvert_Planar8ToXRGBFFFF(1.0, &red, &red, &red, &dest, &maxFloat, minFloat, 0);
      }

      else if (*v11 == 3)
      {
        v25 = vImageConvert_Planar8ToBGRX8888(&red, &red, &red, 0xFFu, &dest, 0);
      }

      else
      {
        if (*v11)
        {
          v9 = 0;
          goto LABEL_76;
        }

        v25 = vImageConvert_Planar8ToXRGB8888(0xFFu, &red, &red, &red, &dest, 0);
      }

      v13 = v25;
      v9 = 0;
      goto LABEL_47;
    }

    if (PixelFormatType == 1278226534)
    {
LABEL_26:
      if (a2 == 1380411457)
      {
        v20 = CVPixelBufferGetWidth(a3);
        v21 = CVPixelBufferGetHeight(a3);
        pixelBufferOut.data = 0;
        v22 = getBufferAttributes();
        if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v20, v21, 0x52476641u, v22, &pixelBufferOut))
        {
          v12 = 0;
        }

        else
        {
          v12 = pixelBufferOut.data;
        }

        CVPixelBufferLockBaseAddress(v12, 0);
        memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
        PixelBufferUtils::asVImageBuffer(v12, *v7, &pixelBufferOut);
        v13 = vImageConvert_PlanarFToBGRXFFFF(&red, &red, &red, 1.0, &pixelBufferOut, 0);
        if (!v13)
        {
          pixelBufferOut.width *= 4;
          v13 = vImageConvert_PlanarFtoPlanar16F(&pixelBufferOut, &dest, 0);
        }

        goto LABEL_48;
      }

      if (a2 == 1380410945)
      {
        v19 = vImageConvert_PlanarFToBGRXFFFF(&red, &red, &red, 1.0, &dest, 0);
LABEL_46:
        v13 = v19;
LABEL_47:
        v12 = 0;
LABEL_48:
        v10 = 1;
        goto LABEL_49;
      }

      if (*v11 == 3)
      {
        v19 = vImageConvert_PlanarFToBGRX8888(&red, &red, &red, 0xFFu, &dest, &maxFloat, minFloat, 0);
        goto LABEL_46;
      }

      if (!*v11)
      {
        v19 = vImageConvert_PlanarFToXRGB8888(0xFFu, &red, &red, &red, &dest, &maxFloat, minFloat, 0);
        goto LABEL_46;
      }

LABEL_76:
      v12 = 0;
      v10 = 0;
      v13 = 0;
      goto LABEL_49;
    }

    v14 = 1278226536;
    goto LABEL_19;
  }

  if (PixelFormatType > 1751410031)
  {
    if (PixelFormatType == 1751411059)
    {
LABEL_20:
      v15 = CVPixelBufferGetWidth(a1);
      v16 = CVPixelBufferGetHeight(a1);
      pixelBufferOut.data = 0;
      v17 = getBufferAttributes();
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v15, v16, 0x4C303066u, v17, &pixelBufferOut))
      {
        v9 = 0;
      }

      else
      {
        v9 = pixelBufferOut.data;
      }

      if (PixelBufferUtils::convertPixelBufferFormat(a1, v9, 0, v18))
      {
        CVPixelBufferRelease(v9);
        v9 = 0;
      }

      CVPixelBufferLockBaseAddress(v9, 1uLL);
      PixelBufferUtils::asVImageBuffer(v9, *v7, &red);
      goto LABEL_26;
    }

    v14 = 1751410032;
LABEL_19:
    v12 = 0;
    v13 = 0;
    if (PixelFormatType != v14)
    {
      goto LABEL_49;
    }

    goto LABEL_20;
  }

  if (PixelFormatType == 1717855600)
  {
    goto LABEL_26;
  }

  v12 = 0;
  v13 = 0;
  if (PixelFormatType == 1717856627)
  {
    goto LABEL_26;
  }

LABEL_49:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  if (v9)
  {
    CVPixelBufferUnlockBaseAddress(v9, 1uLL);
    CVPixelBufferRelease(v9);
  }

  if (v12)
  {
    CVPixelBufferUnlockBaseAddress(v12, 0);
    CVPixelBufferRelease(v12);
  }

  if ((v10 & 1) == 0)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &pixelBufferOut);
    if ((pixelBufferOut.width & 0x8000000000000000) == 0)
    {
      p_pixelBufferOut = &pixelBufferOut;
    }

    else
    {
      p_pixelBufferOut = pixelBufferOut.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertGrayscaleAsColor", 1580, PixelFormatType, p_pixelBufferOut);
    if ((SHIBYTE(pixelBufferOut.width) & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    data = pixelBufferOut.data;
    goto LABEL_62;
  }

  if (v13)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_224732964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertFloat16ToFloat32(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  v6 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 == PixelBufferUtils::planeCountForPixelFormat(v6))
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (v5)
    {
      v7 = 1;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(a1, (v7 - 1), *v8, &src);
        memset(&dest, 0, sizeof(dest));
        PixelBufferUtils::asVImageBuffer(a2, (v7 - 1), *v8, &dest);
        v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
        if (v7 >= v5)
        {
          break;
        }

        ++v7;
      }

      while (!v9);
    }

    else
    {
      memset(&src, 0, sizeof(src));
      v11 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v11, &dest);
      v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
    }

    v12 = v9;
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v12 != 0;
  }

  else
  {
    NSLog(&cfstr_SDErrorInputAn.isa, "convertFloat16ToFloat32", 1626);
    return 0xFFFFFFFFLL;
  }
}

__int16 ___ZL23invertPixelBufferValuesIDhEiP10__CVBufferS1__block_invoke@<H0>(uint64_t a1@<X0>, short float *a2@<X1>, uint64_t a3@<X2>, short float *a4@<X3>)
{
  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *a2;
  *a4 = *&result;
  return result;
}

float ___ZL23invertPixelBufferValuesIfEiP10__CVBuffer_block_invoke(uint64_t a1, float *a2)
{
  result = 1.0 / *a2;
  *a2 = result;
  return result;
}

uint64_t RGBA_FORMAT_MAP(void)
{
  v1 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  return RGBA_FORMAT_MAP(void)::result;
}

void sub_224733074(_Unwind_Exception *a1)
{
  MEMORY[0x22AA531A0](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::unordered_map<unsigned long long,std::pair<unsigned char *,int>>::unordered_map(uint64_t result, unint64_t *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[3 * a3]; i += 3)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_23;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_23:
        operator new();
      }

      if (v6.u32[0] < 2uLL)
      {
        while (1)
        {
          v10 = v9[1];
          if (v10 == v4)
          {
            if (v9[2] == v4)
            {
              goto LABEL_24;
            }
          }

          else if ((v10 & (*&v5 - 1)) != v7)
          {
            goto LABEL_23;
          }

          v9 = *v9;
          if (!v9)
          {
            goto LABEL_23;
          }
        }
      }

      while (1)
      {
        v11 = v9[1];
        if (v11 == v4)
        {
          break;
        }

        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }

        if (v11 != v7)
        {
          goto LABEL_23;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if (v9[2] != v4)
      {
        goto LABEL_18;
      }

LABEL_24:
      ;
    }
  }

  return result;
}

void sub_224733844(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_map<unsigned long,peridot::ChannelsNames>::~unordered_map[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

float ___ZL23invertPixelBufferValuesIfEiP10__CVBufferS1__block_invoke(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  result = 1.0 / *a2;
  *a4 = result;
  return result;
}

__int16 ___ZL23invertPixelBufferValuesIDhEiP10__CVBuffer_block_invoke@<H0>(uint64_t a1@<X0>, short float *a2@<X1>)
{
  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *a2;
  *a2 = *&result;
  return result;
}

uint64_t PixelBufferUtils::copyPixelBuffer(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v3 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(this))
  {
    return 0xFFFFFFFFLL;
  }

  if (v3)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType > 1717855599)
      {
        if (PixelFormatType != 1717855600)
        {
          v7 = 1717856627;
          goto LABEL_15;
        }
      }

      else if (PixelFormatType != 825306677)
      {
        v7 = 825437747;
        goto LABEL_15;
      }
    }

    else if (PixelFormatType <= 1919365989)
    {
      if (PixelFormatType != 1751410032)
      {
        v7 = 1751411059;
        goto LABEL_15;
      }
    }

    else if (PixelFormatType != 1919365990 && PixelFormatType != 1919365992)
    {
      v7 = 1932996149;
LABEL_15:
      if (PixelFormatType == v7)
      {
        goto LABEL_16;
      }

      v18 = **&MEMORY[0x277CBF3A0];
      v19.origin.x = *MEMORY[0x277CBF3A0];
      v19.origin.y = v18.origin.y;
      v19.size.width = v18.size.width;
      v19.size.height = v18.size.height;
      VTTransferSession = createVTTransferSession(*MEMORY[0x277CBF3A0], v19);
      v16 = VTPixelTransferSessionTransferImage(VTTransferSession, pixelBuffer, this);
      if (VTTransferSession)
      {
        VTPixelTransferSessionInvalidate(VTTransferSession);
        CFRelease(VTTransferSession);
      }

      if (!v16)
      {
        return 0;
      }

      NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1109);
      return 0xFFFFFFFFLL;
    }
  }

LABEL_16:
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);

  return copyPixelBufferVImage(this, *&v8, pixelBuffer, *&v10);
}

uint64_t PixelBufferUtils::countDifferentPixels(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3, int32x2_t a4, int32x2_t a5)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v9 = CVPixelBufferGetWidth(a2);
  v10 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  result = -1;
  if (Width == v9 && Height == v10)
  {
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    memset(&v573, 0, sizeof(v573));
    v13 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v573);
    memset(&v572, 0, sizeof(v572));
    PixelBufferUtils::asVImageBuffer(a2, *v13, &v572);
    if (PixelFormatType <= 1380410944)
    {
      v18 = a5;
      v17 = a4;
      if (PixelFormatType > 1111970368)
      {
        if (PixelFormatType > 1278226533)
        {
          if (PixelFormatType != 1278226534)
          {
            if (PixelFormatType != 1278226536)
            {
              if (PixelFormatType != 1380401729)
              {
                goto LABEL_212;
              }

LABEL_137:
              if (*&v573.height == *&v572.height)
              {
                if (v573.height)
                {
                  v230 = 4 * v573.width;
                  if (4 * v573.width)
                  {
                    v231 = 0;
                    LODWORD(PixelFormatType) = 0;
                    if (v230)
                    {
                      v232 = (v230 - 1) >> 32 == 0;
                    }

                    else
                    {
                      v232 = 0;
                    }

                    v233 = !v232;
                    v234 = v230 & 0x1FFFFFFF0;
                    v235 = vdupq_lane_s32(a5, 0);
                    v236 = vdupq_lane_s32(a4, 0);
                    v237 = v230 & 0x1FFFFFFF8;
                    v238 = vdupq_n_s64(0x3B5E392010175EE6uLL);
                    v239.i64[0] = 0x100000001;
                    v239.i64[1] = 0x100000001;
                    data = v572.data;
                    v241 = v573.data;
                    while (1)
                    {
                      v327 = v573.data + v231 * v573.rowBytes;
                      v328 = v572.data + v231 * v572.rowBytes;
                      if (v230 < 8 || (v233 & 1) != 0)
                      {
                        v329 = 0;
                        goto LABEL_223;
                      }

                      if (v230 >= 0x10)
                      {
                        v354 = PixelFormatType;
                        v355 = 0uLL;
                        v356 = data;
                        v357 = v241;
                        v358 = v230 & 0x1FFFFFFF0;
                        v15 = 0uLL;
                        v359 = 0uLL;
                        do
                        {
                          v360 = *v357++;
                          v361 = vqtbl1q_s8(v360, xmmword_2247A48A0);
                          v362 = vqtbl1q_s8(v360, xmmword_2247A48B0);
                          v363 = vcvtq_f32_u32(vqtbl1q_s8(v360, xmmword_2247A4890));
                          v364 = vcvtq_f32_u32(vqtbl1q_s8(v360, xmmword_2247A4880));
                          v365 = *v356++;
                          v366 = vabdq_f32(vcvtq_f32_u32(v361), vcvtq_f32_u32(vqtbl1q_s8(v365, xmmword_2247A48A0)));
                          v367 = vabdq_f32(vcvtq_f32_u32(v362), vcvtq_f32_u32(vqtbl1q_s8(v365, xmmword_2247A48B0)));
                          v368 = vabdq_f32(v364, vcvtq_f32_u32(vqtbl1q_s8(v365, xmmword_2247A4880)));
                          v369 = vabdq_f32(v363, vcvtq_f32_u32(vqtbl1q_s8(v365, xmmword_2247A4890)));
                          v370 = vcgtq_f32(v367, v235);
                          v371 = vcvt_hight_f64_f32(v368);
                          v372 = vcvt_hight_f64_f32(v366);
                          v373 = vextq_s8(v365, v365, 8uLL).u64[0];
                          v374 = vcvtq_f64_f32(*v366.f32);
                          v375.i32[0] = v373.u8[4];
                          v376 = vcvt_hight_f64_f32(v367);
                          v377 = vcvtq_f64_f32(*v367.f32);
                          v375.i32[1] = v373.u8[5];
                          v378 = vuzp1q_s16(vcgtq_f32(v368, v235), vcgtq_f32(v369, v235));
                          v379.i32[0] = v373.u8[6];
                          v379.i32[1] = v373.u8[7];
                          v380 = vuzp1q_s16(vcgtq_f32(v366, v235), v370);
                          v381.i32[0] = v373.u8[0];
                          *v370.i8 = vand_s8(v375, 0xFF000000FFLL);
                          v381.i32[1] = v373.u8[1];
                          v382 = vand_s8(v379, 0xFF000000FFLL);
                          v383.i32[0] = v373.u8[2];
                          v383.i32[1] = v373.u8[3];
                          v384.i64[0] = v370.u32[0];
                          v384.i64[1] = v370.u32[1];
                          v385 = v384;
                          v386 = vand_s8(v381, 0xFF000000FFLL);
                          v387 = vand_s8(v383, 0xFF000000FFLL);
                          v373.i32[0] = v365.u8[4];
                          v384.i64[0] = v382.u32[0];
                          v384.i64[1] = v382.u32[1];
                          v388 = v384;
                          v373.i32[1] = v365.u8[5];
                          v389 = vand_s8(v373, 0xFF000000FFLL);
                          v384.i64[0] = v386.u32[0];
                          v384.i64[1] = v386.u32[1];
                          v390 = v384;
                          v375.i32[0] = v365.u8[6];
                          v384.i64[0] = v387.u32[0];
                          v384.i64[1] = v387.u32[1];
                          v391 = v384;
                          v384.i64[0] = v389.u32[0];
                          v384.i64[1] = v389.u32[1];
                          v392 = v384;
                          v375.i32[1] = v365.u8[7];
                          v393 = vand_s8(v375, 0xFF000000FFLL);
                          v384.i64[0] = v393.u32[0];
                          v384.i64[1] = v393.u32[1];
                          v394.i32[0] = v365.u8[0];
                          v395 = vcvtq_f64_u64(v384);
                          v394.i32[1] = v365.u8[1];
                          v396 = vand_s8(v394, 0xFF000000FFLL);
                          v384.i64[0] = v396.u32[0];
                          v384.i64[1] = v396.u32[1];
                          v397.i32[0] = v365.u8[2];
                          v398 = vcvtq_f64_u64(v390);
                          v399 = vcvtq_f64_u64(v384);
                          v397.i32[1] = v365.u8[3];
                          v400 = vand_s8(v397, 0xFF000000FFLL);
                          v384.i64[0] = v400.u32[0];
                          v384.i64[1] = v400.u32[1];
                          *v398.f32 = vcvt_f32_f64(vdivq_f64(v374, vaddq_f64(v398, v238)));
                          *&v374.f64[0] = vcvt_f32_f64(vdivq_f64(v376, vaddq_f64(vcvtq_f64_u64(v388), v238)));
                          *v376.f32 = vcvt_f32_f64(vdivq_f64(v377, vaddq_f64(vcvtq_f64_u64(v385), v238)));
                          *&v398.u32[2] = vcvt_f32_f64(vdivq_f64(v372, vaddq_f64(vcvtq_f64_u64(v391), v238)));
                          *v368.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v368.f32), vaddq_f64(v399, v238)));
                          *&v368.u32[2] = vcvt_f32_f64(vdivq_f64(v371, vaddq_f64(vcvtq_f64_u64(v384), v238)));
                          v376.i64[1] = *&v374.f64[0];
                          *v362.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v369.f32), vaddq_f64(vcvtq_f64_u64(v392), v238)));
                          *&v362.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v369), vaddq_f64(v395, v238)));
                          *&v371.f64[0] = vmovn_s16(vandq_s8(v380, vuzp1q_s16(vcgtq_f32(v398, v236), vcgtq_f32(v376, v236))));
                          v401 = vmovl_u16(vzip1_s8(*&v371.f64[0], *v235.f32));
                          *v378.i8 = vand_s8(vmovn_s16(v378), vmovn_s16(vuzp1q_s16(vcgtq_f32(v368, v236), vcgtq_f32(v362, v236))));
                          v16 = vandq_s8(vmovl_u16(vzip2_s8(*&v371.f64[0], *v235.f32)), v239);
                          v359 = vaddq_s32(v359, v16);
                          v15 = vaddq_s32(v15, vandq_s8(v401, v239));
                          v355 = vaddq_s32(v355, vandq_s8(vmovl_u16(vzip2_s8(*v378.i8, *v235.f32)), v239));
                          v354 = vaddq_s32(v354, vandq_s8(vmovl_u16(vzip1_s8(*v378.i8, *v235.f32)), v239));
                          v358 -= 16;
                        }

                        while (v358);
                        v14 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v354, v15), vaddq_s32(v355, v359))));
                        *&PixelFormatType = v14;
                        if (v230 == v234)
                        {
                          v17.i32[0] = a4.i32[0];
                          goto LABEL_219;
                        }

                        v17.i32[0] = a4.i32[0];
                        if ((v573.width & 2) == 0)
                        {
                          v327 += v234;
                          v328 += v234;
                          v329 = v230 & 0xFFFFFFF0;
LABEL_223:
                          v330 = v329 + 1;
                          do
                          {
                            LOBYTE(v14) = *v327;
                            v331 = *v328;
                            v14 = vabds_f32(LODWORD(v14), v331);
                            if (v14 > *a5.i32)
                            {
                              v14 = v14 / (v331 + 1.0e-22);
                              if (v14 > *v17.i32)
                              {
                                LODWORD(PixelFormatType) = PixelFormatType + 1;
                              }
                            }

                            ++v327;
                            ++v328;
                            v64 = v230 > v330++;
                          }

                          while (v64);
                          goto LABEL_219;
                        }

                        v332 = v230 & 0x1FFFFFFF0;
                      }

                      else
                      {
                        v332 = 0;
                      }

                      v328 += v237;
                      v333 = 0uLL;
                      v334 = PixelFormatType;
                      do
                      {
                        v15.i64[0] = *(v241->i64 + v332);
                        v16.i64[0] = *(data->i64 + v332);
                        v335 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v15, xmmword_2247A4880)), vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_2247A4880)));
                        v336 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v15, xmmword_2247A4890)), vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_2247A4890)));
                        v337 = vcvt_hight_f64_f32(v335);
                        v338 = vcvt_hight_f64_f32(v336);
                        v339 = vcvtq_f64_f32(*v336.f32);
                        v340.i32[0] = v16.u8[4];
                        v341 = vuzp1q_s16(vcgtq_f32(v335, v235), vcgtq_f32(v336, v235));
                        v340.i32[1] = v16.u8[5];
                        v342.i32[0] = v16.u8[6];
                        v343 = vand_s8(v340, 0xFF000000FFLL);
                        v342.i32[1] = v16.u8[7];
                        v344 = vand_s8(v342, 0xFF000000FFLL);
                        v345.i64[0] = v343.u32[0];
                        v345.i64[1] = v343.u32[1];
                        v340.i32[0] = v16.u8[0];
                        v346 = vcvtq_f64_u64(v345);
                        v345.i64[0] = v344.u32[0];
                        v345.i64[1] = v344.u32[1];
                        v347 = v345;
                        v340.i32[1] = v16.u8[1];
                        v348 = vand_s8(v340, 0xFF000000FFLL);
                        v345.i64[0] = v348.u32[0];
                        v345.i64[1] = v348.u32[1];
                        v349.i32[0] = v16.u8[2];
                        v350 = v16.u8[3];
                        v351 = vcvtq_f64_u64(v345);
                        v349.i32[1] = v350;
                        v352 = vand_s8(v349, 0xFF000000FFLL);
                        v345.i64[0] = v352.u32[0];
                        v345.i64[1] = v352.u32[1];
                        *v335.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v335.f32), vaddq_f64(v351, v238)));
                        *&v335.u32[2] = vcvt_f32_f64(vdivq_f64(v337, vaddq_f64(vcvtq_f64_u64(v345), v238)));
                        *v351.f32 = vcvt_f32_f64(vdivq_f64(v339, vaddq_f64(v346, v238)));
                        *&v351.u32[2] = vcvt_f32_f64(vdivq_f64(v338, vaddq_f64(vcvtq_f64_u64(v347), v238)));
                        v16 = vcgtq_f32(v351, v236);
                        *v341.i8 = vmovn_s16(vandq_s8(v341, vuzp1q_s16(vcgtq_f32(v335, v236), v16)));
                        v353 = vmovl_u16(vzip1_s8(*v341.i8, *v235.f32));
                        v15 = vandq_s8(vmovl_u16(vzip2_s8(*v341.i8, *v235.f32)), v239);
                        v333 = vaddq_s32(v333, v15);
                        v334 = vaddq_s32(v334, vandq_s8(v353, v239));
                        v332 += 8;
                      }

                      while (v237 != v332);
                      v14 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v334, v333)));
                      *&PixelFormatType = v14;
                      if (v230 != v237)
                      {
                        v327 += v237;
                        v329 = v230 & 0xFFFFFFF8;
                        goto LABEL_223;
                      }

LABEL_219:
                      ++v231;
                      v241 = (v241 + v573.rowBytes);
                      data = (data + v572.rowBytes);
                      if (v573.height <= v231)
                      {
                        goto LABEL_299;
                      }
                    }
                  }
                }

LABEL_217:
                LODWORD(PixelFormatType) = 0;
              }

LABEL_299:
              CVPixelBufferUnlockBaseAddress(this, 1uLL);
              CVPixelBufferUnlockBaseAddress(a2, 1uLL);
              return PixelFormatType;
            }

            goto LABEL_149;
          }

LABEL_182:
          if (*&v573.height == *&v572.height)
          {
            if (v573.height && v573.width)
            {
              v305 = 0;
              LODWORD(PixelFormatType) = 0;
              v306 = v573.data;
              v307 = v572.data;
              do
              {
                v308 = 0;
                do
                {
                  v309 = v307[v308];
                  v310 = vabds_f32(v306[v308], v309);
                  if (v310 > *v18.i32)
                  {
                    v311 = v310 / (v309 + 1.0e-22);
                    if (v311 > *v17.i32)
                    {
                      LODWORD(PixelFormatType) = PixelFormatType + 1;
                    }
                  }

                  ++v308;
                }

                while (v573.width > v308);
                ++v305;
                v307 = (v307 + v572.rowBytes);
                v306 = (v306 + v573.rowBytes);
              }

              while (v573.height > v305);
              goto LABEL_299;
            }

            goto LABEL_217;
          }

          goto LABEL_299;
        }

        if (PixelFormatType == 1111970369)
        {
          goto LABEL_137;
        }

        v229 = 1278226488;
LABEL_135:
        if (PixelFormatType != v229)
        {
          goto LABEL_212;
        }

        goto LABEL_182;
      }

      if (PixelFormatType <= 875704421)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_137;
        }

        if (PixelFormatType == 843264104)
        {
          if (*&v573.height != *&v572.height)
          {
            goto LABEL_299;
          }

          if (!v573.height)
          {
            goto LABEL_217;
          }

          v32 = 2 * v573.width;
          if (!(2 * v573.width))
          {
            goto LABEL_217;
          }

          v33 = 0;
          LODWORD(PixelFormatType) = 0;
          if (v32)
          {
            v34 = (v32 - 1) >> 32 == 0;
          }

          else
          {
            v34 = 0;
          }

          v35 = !v34;
          v36 = vdupq_lane_s32(a5, 0);
          v37 = vdupq_lane_s32(a4, 0);
          v38 = 2 * (v32 & 0x1FFFFFFF0);
          v39 = 2 * (v32 & 0x1FFFFFFF8);
          v40 = (v573.data + 16);
          v41 = (v572.data + 16);
          v42 = vdupq_n_s64(0x3B5E392010175EE6uLL);
          v43.i64[0] = 0x100000001;
          v43.i64[1] = 0x100000001;
          v44 = v572.data;
          v45 = v573.data;
          while (1)
          {
            v60 = (v573.data + v33 * v573.rowBytes);
            v61 = (v572.data + v33 * v572.rowBytes);
            if (v32 < 8 || (v35 & 1) != 0)
            {
              v62 = 0;
              goto LABEL_56;
            }

            if (v32 >= 0x10)
            {
              v93 = PixelFormatType;
              v94 = 0uLL;
              v95 = v41;
              v96 = v40;
              v97 = v32 & 0x1FFFFFFF0;
              v98 = 0uLL;
              v99 = 0uLL;
              do
              {
                v100 = *v96[-2].i8;
                v101 = v95[-1];
                v102 = vcvt_hight_f32_f16(v101);
                v103 = vcvtq_f32_f16(*v101.i8);
                v104 = vcvt_hight_f32_f16(*v95);
                v105 = vcvtq_f32_f16(*v95->i8);
                v106 = vabdq_f32(vcvtq_f32_f16(*v100.i8), v103);
                v107 = vabdq_f32(vcvt_hight_f32_f16(v100), v102);
                v108 = vabdq_f32(vcvtq_f32_f16(*v96), v105);
                v109 = vabdq_f32(vcvt_hight_f32_f16(*v96->i8), v104);
                v110 = vcgtq_f32(v107, v36);
                v111 = vcgtq_f32(v106, v36);
                v112 = vcvt_hight_f64_f32(v106);
                v113 = vcvt_hight_f64_f32(v107);
                *v106.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v106.f32), vaddq_f64(vcvtq_f64_f32(*v103.f32), v42)));
                *v107.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v107.f32), vaddq_f64(vcvtq_f64_f32(*v102.f32), v42)));
                *&v106.u32[2] = vcvt_f32_f64(vdivq_f64(v112, vaddq_f64(vcvt_hight_f64_f32(v103), v42)));
                *&v107.u32[2] = vcvt_f32_f64(vdivq_f64(v113, vaddq_f64(vcvt_hight_f64_f32(v102), v42)));
                *v103.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v108), vaddq_f64(vcvt_hight_f64_f32(v105), v42)));
                *v105.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v108.f32), vaddq_f64(vcvtq_f64_f32(*v105.f32), v42)));
                v105.i64[1] = v103.i64[0];
                *v102.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v109.f32), vaddq_f64(vcvtq_f64_f32(*v104.f32), v42)));
                *&v102.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v109), vaddq_f64(vcvt_hight_f64_f32(v104), v42)));
                *v110.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v111, v110), vuzp1q_s16(vcgtq_f32(v106, v37), vcgtq_f32(v107, v37))));
                *v111.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v108, v36), vcgtq_f32(v109, v36)), vuzp1q_s16(vcgtq_f32(v105, v37), vcgtq_f32(v102, v37))));
                v94 = vaddq_s32(v94, vandq_s8(vmovl_u16(vzip2_s8(*v110.i8, *v36.f32)), v43));
                v93 = vaddq_s32(v93, vandq_s8(vmovl_u16(vzip1_s8(*v110.i8, *v36.f32)), v43));
                v99 = vaddq_s32(v99, vandq_s8(vmovl_u16(vzip2_s8(*v111.i8, *v36.f32)), v43));
                v98 = vaddq_s32(v98, vandq_s8(vmovl_u16(vzip1_s8(*v111.i8, *v36.f32)), v43));
                v96 += 4;
                v95 += 2;
                v97 -= 16;
              }

              while (v97);
              LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v98, v93), vaddq_s32(v99, v94)));
              if (v32 == (v32 & 0x1FFFFFFF0))
              {
                goto LABEL_52;
              }

              if ((v573.width & 4) == 0)
              {
                v60 = (v60 + v38);
                v61 = (v61 + v38);
                v62 = v32 & 0xFFFFFFF0;
LABEL_56:
                v63 = v62 + 1;
                do
                {
                  _H5 = *v60;
                  __asm { FCVT            S6, H5 }

                  _H5 = *v61;
                  __asm { FCVT            S7, H5 }

                  v72 = vabds_f32(_S6, _S7);
                  if (v72 > *a5.i32)
                  {
                    __asm { FCVT            D5, H5 }

                    *&_D5 = v72 / (_D5 + 1.0e-22);
                    if (*&_D5 > *a4.i32)
                    {
                      LODWORD(PixelFormatType) = PixelFormatType + 1;
                    }
                  }

                  ++v60;
                  ++v61;
                  v64 = v32 > v63++;
                }

                while (v64);
                goto LABEL_52;
              }

              v74 = v32 & 0x1FFFFFFF0;
            }

            else
            {
              v74 = 0;
            }

            v61 = (v61 + v39);
            v75 = 0uLL;
            v76 = PixelFormatType;
            v77 = -8 * (LODWORD(v573.width) >> 2) + v74;
            v78 = 2 * v74;
            v79 = &v45[2 * v74];
            v80 = &v44[v78];
            do
            {
              v81 = *v79++;
              v82 = vcvt_hight_f32_f16(v81);
              v83 = vcvtq_f32_f16(*v81.i8);
              v84 = *v80++;
              v85 = vcvt_hight_f32_f16(v84);
              v86 = vcvtq_f32_f16(*v84.i8);
              v87 = vabdq_f32(v83, v86);
              v88 = vabdq_f32(v82, v85);
              v89 = vcgtq_f32(v88, v36);
              v90 = vcgtq_f32(v87, v36);
              v91 = vcvt_hight_f64_f32(v87);
              v92 = vcvt_hight_f64_f32(v88);
              *v87.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v87.f32), vaddq_f64(vcvtq_f64_f32(*v86.f32), v42)));
              *&v87.u32[2] = vcvt_f32_f64(vdivq_f64(v91, vaddq_f64(vcvt_hight_f64_f32(v86), v42)));
              *v88.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v88.f32), vaddq_f64(vcvtq_f64_f32(*v85.f32), v42)));
              *&v88.u32[2] = vcvt_f32_f64(vdivq_f64(v92, vaddq_f64(vcvt_hight_f64_f32(v85), v42)));
              *v87.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v90, v89), vuzp1q_s16(vcgtq_f32(v87, v37), vcgtq_f32(v88, v37))));
              v75 = vaddq_s32(v75, vandq_s8(vmovl_u16(vzip2_s8(*v87.f32, *v36.f32)), v43));
              v76 = vaddq_s32(v76, vandq_s8(vmovl_u16(vzip1_s8(*v87.f32, *v36.f32)), v43));
              v77 += 8;
            }

            while (v77);
            LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v76, v75));
            if (v32 != (v32 & 0x1FFFFFFF8))
            {
              v60 = (v60 + v39);
              v62 = v32 & 0xFFFFFFF8;
              goto LABEL_56;
            }

LABEL_52:
            ++v33;
            v40 = (v40 + v573.rowBytes);
            v41 = (v41 + v572.rowBytes);
            v45 += v573.rowBytes;
            v44 += v572.rowBytes;
            if (v573.height <= v33)
            {
              goto LABEL_299;
            }
          }
        }

LABEL_212:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
        if ((__p.width & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.data;
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "countDifferentPixels", 2363, PixelFormatType, p_p);
        if (SHIBYTE(__p.width) < 0)
        {
          operator delete(__p.data);
        }

        goto LABEL_217;
      }

      if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
      {
        goto LABEL_212;
      }

      PixelBufferUtils::asVImageBuffer(this, 0, *v13, &v573);
      PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &v572);
      v217 = *a4.i32;
      if (v573.height == v572.height && v573.width == v572.width)
      {
        if (v573.height && v573.width)
        {
          v218 = 0;
          LODWORD(PixelFormatType) = 0;
          if (LODWORD(v573.width))
          {
            v219 = (v573.width - 1) >> 32 == 0;
          }

          else
          {
            v219 = 0;
          }

          v220 = !v219;
          v221 = v573.width & 0x1FFFFFFF0;
          v222 = vdupq_lane_s32(a5, 0);
          v223 = vdupq_lane_s32(a4, 0);
          v224 = v573.width & 0x1FFFFFFF8;
          v225 = vdupq_n_s64(0x3B5E392010175EE6uLL);
          v226.i64[0] = 0x100000001;
          v226.i64[1] = 0x100000001;
          v227 = v572.data;
          v228 = v573.data;
          while (1)
          {
            v402 = v573.data + v218 * v573.rowBytes;
            v403 = v572.data + v218 * v572.rowBytes;
            if (v573.width < 8 || (v220 & 1) != 0)
            {
              v404 = 0;
              goto LABEL_246;
            }

            if (v573.width >= 0x10)
            {
              v429 = PixelFormatType;
              v430 = 0uLL;
              v431 = v227;
              v432 = v228;
              v433 = v573.width & 0x1FFFFFFF0;
              v215 = 0uLL;
              v434 = 0uLL;
              do
              {
                v435 = *v432++;
                v436 = vqtbl1q_s8(v435, xmmword_2247A48A0);
                v437 = vqtbl1q_s8(v435, xmmword_2247A48B0);
                v438 = vcvtq_f32_u32(vqtbl1q_s8(v435, xmmword_2247A4890));
                v439 = vcvtq_f32_u32(vqtbl1q_s8(v435, xmmword_2247A4880));
                v440 = *v431++;
                v441 = vabdq_f32(vcvtq_f32_u32(v436), vcvtq_f32_u32(vqtbl1q_s8(v440, xmmword_2247A48A0)));
                v442 = vabdq_f32(vcvtq_f32_u32(v437), vcvtq_f32_u32(vqtbl1q_s8(v440, xmmword_2247A48B0)));
                v443 = vabdq_f32(v439, vcvtq_f32_u32(vqtbl1q_s8(v440, xmmword_2247A4880)));
                v444 = vabdq_f32(v438, vcvtq_f32_u32(vqtbl1q_s8(v440, xmmword_2247A4890)));
                v445 = vcgtq_f32(v442, v222);
                v446 = vcvt_hight_f64_f32(v443);
                v447 = vcvt_hight_f64_f32(v441);
                v448 = vextq_s8(v440, v440, 8uLL).u64[0];
                v449 = vcvtq_f64_f32(*v441.f32);
                v450.i32[0] = v448.u8[4];
                v451 = vcvt_hight_f64_f32(v442);
                v452 = vcvtq_f64_f32(*v442.f32);
                v450.i32[1] = v448.u8[5];
                v453 = vuzp1q_s16(vcgtq_f32(v443, v222), vcgtq_f32(v444, v222));
                v454.i32[0] = v448.u8[6];
                v454.i32[1] = v448.u8[7];
                v455 = vuzp1q_s16(vcgtq_f32(v441, v222), v445);
                v456.i32[0] = v448.u8[0];
                *v445.i8 = vand_s8(v450, 0xFF000000FFLL);
                v456.i32[1] = v448.u8[1];
                v457 = vand_s8(v454, 0xFF000000FFLL);
                v458.i32[0] = v448.u8[2];
                v458.i32[1] = v448.u8[3];
                v459.i64[0] = v445.u32[0];
                v459.i64[1] = v445.u32[1];
                v460 = v459;
                v461 = vand_s8(v456, 0xFF000000FFLL);
                v462 = vand_s8(v458, 0xFF000000FFLL);
                v448.i32[0] = v440.u8[4];
                v459.i64[0] = v457.u32[0];
                v459.i64[1] = v457.u32[1];
                v463 = v459;
                v448.i32[1] = v440.u8[5];
                v464 = vand_s8(v448, 0xFF000000FFLL);
                v459.i64[0] = v461.u32[0];
                v459.i64[1] = v461.u32[1];
                v465 = v459;
                v450.i32[0] = v440.u8[6];
                v459.i64[0] = v462.u32[0];
                v459.i64[1] = v462.u32[1];
                v466 = v459;
                v459.i64[0] = v464.u32[0];
                v459.i64[1] = v464.u32[1];
                v467 = v459;
                v450.i32[1] = v440.u8[7];
                v468 = vand_s8(v450, 0xFF000000FFLL);
                v459.i64[0] = v468.u32[0];
                v459.i64[1] = v468.u32[1];
                v469.i32[0] = v440.u8[0];
                v470 = vcvtq_f64_u64(v459);
                v469.i32[1] = v440.u8[1];
                v471 = vand_s8(v469, 0xFF000000FFLL);
                v459.i64[0] = v471.u32[0];
                v459.i64[1] = v471.u32[1];
                v472.i32[0] = v440.u8[2];
                v473 = vcvtq_f64_u64(v465);
                v474 = vcvtq_f64_u64(v459);
                v472.i32[1] = v440.u8[3];
                v475 = vand_s8(v472, 0xFF000000FFLL);
                v459.i64[0] = v475.u32[0];
                v459.i64[1] = v475.u32[1];
                *v473.f32 = vcvt_f32_f64(vdivq_f64(v449, vaddq_f64(v473, v225)));
                *&v449.f64[0] = vcvt_f32_f64(vdivq_f64(v451, vaddq_f64(vcvtq_f64_u64(v463), v225)));
                *v451.f32 = vcvt_f32_f64(vdivq_f64(v452, vaddq_f64(vcvtq_f64_u64(v460), v225)));
                *&v473.u32[2] = vcvt_f32_f64(vdivq_f64(v447, vaddq_f64(vcvtq_f64_u64(v466), v225)));
                *v443.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v443.f32), vaddq_f64(v474, v225)));
                *&v443.u32[2] = vcvt_f32_f64(vdivq_f64(v446, vaddq_f64(vcvtq_f64_u64(v459), v225)));
                v451.i64[1] = *&v449.f64[0];
                *v437.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v444.f32), vaddq_f64(vcvtq_f64_u64(v467), v225)));
                *&v437.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v444), vaddq_f64(v470, v225)));
                *&v446.f64[0] = vmovn_s16(vandq_s8(v455, vuzp1q_s16(vcgtq_f32(v473, v223), vcgtq_f32(v451, v223))));
                v476 = vmovl_u16(vzip1_s8(*&v446.f64[0], *v222.f32));
                *v453.i8 = vand_s8(vmovn_s16(v453), vmovn_s16(vuzp1q_s16(vcgtq_f32(v443, v223), vcgtq_f32(v437, v223))));
                v216 = vandq_s8(vmovl_u16(vzip2_s8(*&v446.f64[0], *v222.f32)), v226);
                v434 = vaddq_s32(v434, v216);
                v215 = vaddq_s32(v215, vandq_s8(v476, v226));
                v430 = vaddq_s32(v430, vandq_s8(vmovl_u16(vzip2_s8(*v453.i8, *v222.f32)), v226));
                v429 = vaddq_s32(v429, vandq_s8(vmovl_u16(vzip1_s8(*v453.i8, *v222.f32)), v226));
                v433 -= 16;
              }

              while (v433);
              v214 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v429, v215), vaddq_s32(v430, v434))));
              *&PixelFormatType = v214;
              if (v573.width == v221)
              {
                v217 = *a4.i32;
                goto LABEL_242;
              }

              v217 = *a4.i32;
              if ((v573.width & 8) == 0)
              {
                v402 += v221;
                v403 += v221;
                v404 = v573.width & 0xFFFFFFF0;
LABEL_246:
                v405 = v404 + 1;
                do
                {
                  LOBYTE(v214) = *v402;
                  v406 = *v403;
                  v214 = vabds_f32(LODWORD(v214), v406);
                  if (v214 > *a5.i32)
                  {
                    v214 = v214 / (v406 + 1.0e-22);
                    if (v214 > v217)
                    {
                      LODWORD(PixelFormatType) = PixelFormatType + 1;
                    }
                  }

                  ++v402;
                  ++v403;
                  v64 = v573.width > v405++;
                }

                while (v64);
                goto LABEL_242;
              }

              v407 = v573.width & 0x1FFFFFFF0;
            }

            else
            {
              v407 = 0;
            }

            v403 += v224;
            v408 = 0uLL;
            v409 = PixelFormatType;
            do
            {
              v215.i64[0] = *(v228->i64 + v407);
              v216.i64[0] = *(v227->i64 + v407);
              v410 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v215, xmmword_2247A4880)), vcvtq_f32_u32(vqtbl1q_s8(v216, xmmword_2247A4880)));
              v411 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v215, xmmword_2247A4890)), vcvtq_f32_u32(vqtbl1q_s8(v216, xmmword_2247A4890)));
              v412 = vcvt_hight_f64_f32(v410);
              v413 = vcvt_hight_f64_f32(v411);
              v414 = vcvtq_f64_f32(*v411.f32);
              v415.i32[0] = v216.u8[4];
              v416 = vuzp1q_s16(vcgtq_f32(v410, v222), vcgtq_f32(v411, v222));
              v415.i32[1] = v216.u8[5];
              v417.i32[0] = v216.u8[6];
              v418 = vand_s8(v415, 0xFF000000FFLL);
              v417.i32[1] = v216.u8[7];
              v419 = vand_s8(v417, 0xFF000000FFLL);
              v420.i64[0] = v418.u32[0];
              v420.i64[1] = v418.u32[1];
              v415.i32[0] = v216.u8[0];
              v421 = vcvtq_f64_u64(v420);
              v420.i64[0] = v419.u32[0];
              v420.i64[1] = v419.u32[1];
              v422 = v420;
              v415.i32[1] = v216.u8[1];
              v423 = vand_s8(v415, 0xFF000000FFLL);
              v420.i64[0] = v423.u32[0];
              v420.i64[1] = v423.u32[1];
              v424.i32[0] = v216.u8[2];
              v425 = v216.u8[3];
              v426 = vcvtq_f64_u64(v420);
              v424.i32[1] = v425;
              v427 = vand_s8(v424, 0xFF000000FFLL);
              v420.i64[0] = v427.u32[0];
              v420.i64[1] = v427.u32[1];
              *v410.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v410.f32), vaddq_f64(v426, v225)));
              *&v410.u32[2] = vcvt_f32_f64(vdivq_f64(v412, vaddq_f64(vcvtq_f64_u64(v420), v225)));
              *v426.f32 = vcvt_f32_f64(vdivq_f64(v414, vaddq_f64(v421, v225)));
              *&v426.u32[2] = vcvt_f32_f64(vdivq_f64(v413, vaddq_f64(vcvtq_f64_u64(v422), v225)));
              v216 = vcgtq_f32(v426, v223);
              *v416.i8 = vmovn_s16(vandq_s8(v416, vuzp1q_s16(vcgtq_f32(v410, v223), v216)));
              v428 = vmovl_u16(vzip1_s8(*v416.i8, *v222.f32));
              v215 = vandq_s8(vmovl_u16(vzip2_s8(*v416.i8, *v222.f32)), v226);
              v408 = vaddq_s32(v408, v215);
              v409 = vaddq_s32(v409, vandq_s8(v428, v226));
              v407 += 8;
            }

            while (v224 != v407);
            v214 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v409, v408)));
            *&PixelFormatType = v214;
            if (v573.width != v224)
            {
              v402 += v224;
              v404 = v573.width & 0xFFFFFFF8;
              goto LABEL_246;
            }

LABEL_242:
            ++v218;
            v228 = (v228 + v573.rowBytes);
            v227 = (v227 + v572.rowBytes);
            if (v573.height <= v218)
            {
              goto LABEL_265;
            }
          }
        }

        LODWORD(PixelFormatType) = 0;
      }

LABEL_265:
      PixelBufferUtils::asVImageBuffer(this, 1, *v13, &v573);
      PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &v572);
      v481 = *a4.i32;
      if (*&v573.height != *&v572.height)
      {
LABEL_298:
        LODWORD(PixelFormatType) = LODWORD(v477) + PixelFormatType;
        goto LABEL_299;
      }

      if (!v573.height)
      {
        goto LABEL_299;
      }

      v482 = 2 * v573.width;
      if (!(2 * v573.width))
      {
        goto LABEL_299;
      }

      v483 = 0;
      v477 = 0.0;
      if (v482)
      {
        v484 = (v482 - 1) >> 32 == 0;
      }

      else
      {
        v484 = 0;
      }

      v485 = !v484;
      v486 = v482 & 0x1FFFFFFF0;
      v487 = vdupq_lane_s32(a5, 0);
      v488 = vdupq_lane_s32(a4, 0);
      v489 = v482 & 0x1FFFFFFF8;
      v490 = vdupq_n_s64(0x3B5E392010175EE6uLL);
      v491.i64[0] = 0x100000001;
      v491.i64[1] = 0x100000001;
      v492 = v572.data;
      v493 = v573.data;
      while (1)
      {
        v494 = v573.data + v483 * v573.rowBytes;
        v495 = v572.data + v483 * v572.rowBytes;
        if (v482 < 8 || (v485 & 1) != 0)
        {
          v496 = 0;
          goto LABEL_280;
        }

        if (v482 >= 0x10)
        {
          v521 = LODWORD(v477);
          v522 = 0uLL;
          v523 = v492;
          v524 = v493;
          v525 = v482 & 0x1FFFFFFF0;
          v479 = 0uLL;
          v526 = 0uLL;
          do
          {
            v527 = *v524++;
            v528 = vqtbl1q_s8(v527, xmmword_2247A48A0);
            v529 = vqtbl1q_s8(v527, xmmword_2247A48B0);
            v530 = vcvtq_f32_u32(vqtbl1q_s8(v527, xmmword_2247A4890));
            v531 = vcvtq_f32_u32(vqtbl1q_s8(v527, xmmword_2247A4880));
            v532 = *v523++;
            v533 = vabdq_f32(vcvtq_f32_u32(v528), vcvtq_f32_u32(vqtbl1q_s8(v532, xmmword_2247A48A0)));
            v534 = vabdq_f32(vcvtq_f32_u32(v529), vcvtq_f32_u32(vqtbl1q_s8(v532, xmmword_2247A48B0)));
            v535 = vabdq_f32(v531, vcvtq_f32_u32(vqtbl1q_s8(v532, xmmword_2247A4880)));
            v536 = vabdq_f32(v530, vcvtq_f32_u32(vqtbl1q_s8(v532, xmmword_2247A4890)));
            v537 = vcgtq_f32(v534, v487);
            v538 = vcvt_hight_f64_f32(v535);
            v539 = vcvt_hight_f64_f32(v533);
            v540 = vextq_s8(v532, v532, 8uLL).u64[0];
            v541 = vcvtq_f64_f32(*v533.f32);
            v542.i32[0] = v540.u8[4];
            v543 = vcvt_hight_f64_f32(v534);
            v544 = vcvtq_f64_f32(*v534.f32);
            v542.i32[1] = v540.u8[5];
            v545 = vuzp1q_s16(vcgtq_f32(v535, v487), vcgtq_f32(v536, v487));
            v546.i32[0] = v540.u8[6];
            v546.i32[1] = v540.u8[7];
            v547 = vuzp1q_s16(vcgtq_f32(v533, v487), v537);
            v548.i32[0] = v540.u8[0];
            *v537.i8 = vand_s8(v542, 0xFF000000FFLL);
            v548.i32[1] = v540.u8[1];
            v549 = vand_s8(v546, 0xFF000000FFLL);
            v550.i32[0] = v540.u8[2];
            v550.i32[1] = v540.u8[3];
            v551.i64[0] = v537.u32[0];
            v551.i64[1] = v537.u32[1];
            v552 = v551;
            v553 = vand_s8(v548, 0xFF000000FFLL);
            v554 = vand_s8(v550, 0xFF000000FFLL);
            v540.i32[0] = v532.u8[4];
            v551.i64[0] = v549.u32[0];
            v551.i64[1] = v549.u32[1];
            v555 = v551;
            v540.i32[1] = v532.u8[5];
            v556 = vand_s8(v540, 0xFF000000FFLL);
            v551.i64[0] = v553.u32[0];
            v551.i64[1] = v553.u32[1];
            v557 = v551;
            v542.i32[0] = v532.u8[6];
            v551.i64[0] = v554.u32[0];
            v551.i64[1] = v554.u32[1];
            v558 = v551;
            v551.i64[0] = v556.u32[0];
            v551.i64[1] = v556.u32[1];
            v559 = v551;
            v542.i32[1] = v532.u8[7];
            v560 = vand_s8(v542, 0xFF000000FFLL);
            v551.i64[0] = v560.u32[0];
            v551.i64[1] = v560.u32[1];
            v561.i32[0] = v532.u8[0];
            v562 = vcvtq_f64_u64(v551);
            v561.i32[1] = v532.u8[1];
            v563 = vand_s8(v561, 0xFF000000FFLL);
            v551.i64[0] = v563.u32[0];
            v551.i64[1] = v563.u32[1];
            v564.i32[0] = v532.u8[2];
            v565 = vcvtq_f64_u64(v557);
            v566 = vcvtq_f64_u64(v551);
            v564.i32[1] = v532.u8[3];
            v567 = vand_s8(v564, 0xFF000000FFLL);
            v551.i64[0] = v567.u32[0];
            v551.i64[1] = v567.u32[1];
            *v565.f32 = vcvt_f32_f64(vdivq_f64(v541, vaddq_f64(v565, v490)));
            *&v541.f64[0] = vcvt_f32_f64(vdivq_f64(v543, vaddq_f64(vcvtq_f64_u64(v555), v490)));
            *v543.f32 = vcvt_f32_f64(vdivq_f64(v544, vaddq_f64(vcvtq_f64_u64(v552), v490)));
            *&v565.u32[2] = vcvt_f32_f64(vdivq_f64(v539, vaddq_f64(vcvtq_f64_u64(v558), v490)));
            *v535.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v535.f32), vaddq_f64(v566, v490)));
            *&v535.u32[2] = vcvt_f32_f64(vdivq_f64(v538, vaddq_f64(vcvtq_f64_u64(v551), v490)));
            v543.i64[1] = *&v541.f64[0];
            *v529.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v536.f32), vaddq_f64(vcvtq_f64_u64(v559), v490)));
            *&v529.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v536), vaddq_f64(v562, v490)));
            *&v538.f64[0] = vmovn_s16(vandq_s8(v547, vuzp1q_s16(vcgtq_f32(v565, v488), vcgtq_f32(v543, v488))));
            v568 = vmovl_u16(vzip1_s8(*&v538.f64[0], *v487.f32));
            *v545.i8 = vand_s8(vmovn_s16(v545), vmovn_s16(vuzp1q_s16(vcgtq_f32(v535, v488), vcgtq_f32(v529, v488))));
            v480 = vandq_s8(vmovl_u16(vzip2_s8(*&v538.f64[0], *v487.f32)), v491);
            v526 = vaddq_s32(v526, v480);
            v479 = vaddq_s32(v479, vandq_s8(v568, v491));
            v522 = vaddq_s32(v522, vandq_s8(vmovl_u16(vzip2_s8(*v545.i8, *v487.f32)), v491));
            v521 = vaddq_s32(v521, vandq_s8(vmovl_u16(vzip1_s8(*v545.i8, *v487.f32)), v491));
            v525 -= 16;
          }

          while (v525);
          v478 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v521, v479), vaddq_s32(v522, v526))));
          v477 = v478;
          if (v482 == v486)
          {
            v481 = *a4.i32;
            goto LABEL_276;
          }

          v481 = *a4.i32;
          if ((v573.width & 4) == 0)
          {
            v494 += v486;
            v495 += v486;
            v496 = v482 & 0xFFFFFFF0;
LABEL_280:
            v497 = v496 + 1;
            do
            {
              LOBYTE(v478) = *v494;
              v498 = *v495;
              v478 = vabds_f32(LODWORD(v478), v498);
              if (v478 > *a5.i32)
              {
                v478 = v478 / (v498 + 1.0e-22);
                if (v478 > v481)
                {
                  ++LODWORD(v477);
                }
              }

              ++v494;
              ++v495;
              v64 = v482 > v497++;
            }

            while (v64);
            goto LABEL_276;
          }

          v499 = v482 & 0x1FFFFFFF0;
        }

        else
        {
          v499 = 0;
        }

        v495 += v489;
        v500 = 0uLL;
        v501 = LODWORD(v477);
        do
        {
          v479.i64[0] = *(v493->i64 + v499);
          v480.i64[0] = *(v492->i64 + v499);
          v502 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v479, xmmword_2247A4880)), vcvtq_f32_u32(vqtbl1q_s8(v480, xmmword_2247A4880)));
          v503 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v479, xmmword_2247A4890)), vcvtq_f32_u32(vqtbl1q_s8(v480, xmmword_2247A4890)));
          v504 = vcvt_hight_f64_f32(v502);
          v505 = vcvt_hight_f64_f32(v503);
          v506 = vcvtq_f64_f32(*v503.f32);
          v507.i32[0] = v480.u8[4];
          v508 = vuzp1q_s16(vcgtq_f32(v502, v487), vcgtq_f32(v503, v487));
          v507.i32[1] = v480.u8[5];
          v509.i32[0] = v480.u8[6];
          v510 = vand_s8(v507, 0xFF000000FFLL);
          v509.i32[1] = v480.u8[7];
          v511 = vand_s8(v509, 0xFF000000FFLL);
          v512.i64[0] = v510.u32[0];
          v512.i64[1] = v510.u32[1];
          v507.i32[0] = v480.u8[0];
          v513 = vcvtq_f64_u64(v512);
          v512.i64[0] = v511.u32[0];
          v512.i64[1] = v511.u32[1];
          v514 = v512;
          v507.i32[1] = v480.u8[1];
          v515 = vand_s8(v507, 0xFF000000FFLL);
          v512.i64[0] = v515.u32[0];
          v512.i64[1] = v515.u32[1];
          v516.i32[0] = v480.u8[2];
          v517 = v480.u8[3];
          v518 = vcvtq_f64_u64(v512);
          v516.i32[1] = v517;
          v519 = vand_s8(v516, 0xFF000000FFLL);
          v512.i64[0] = v519.u32[0];
          v512.i64[1] = v519.u32[1];
          *v502.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v502.f32), vaddq_f64(v518, v490)));
          *&v502.u32[2] = vcvt_f32_f64(vdivq_f64(v504, vaddq_f64(vcvtq_f64_u64(v512), v490)));
          *v518.f32 = vcvt_f32_f64(vdivq_f64(v506, vaddq_f64(v513, v490)));
          *&v518.u32[2] = vcvt_f32_f64(vdivq_f64(v505, vaddq_f64(vcvtq_f64_u64(v514), v490)));
          v480 = vcgtq_f32(v518, v488);
          *v508.i8 = vmovn_s16(vandq_s8(v508, vuzp1q_s16(vcgtq_f32(v502, v488), v480)));
          v520 = vmovl_u16(vzip1_s8(*v508.i8, *v487.f32));
          v479 = vandq_s8(vmovl_u16(vzip2_s8(*v508.i8, *v487.f32)), v491);
          v500 = vaddq_s32(v500, v479);
          v501 = vaddq_s32(v501, vandq_s8(v520, v491));
          v499 += 8;
        }

        while (v489 != v499);
        v478 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v501, v500)));
        v477 = v478;
        if (v482 != v489)
        {
          v494 += v489;
          v496 = v482 & 0xFFFFFFF8;
          goto LABEL_280;
        }

LABEL_276:
        ++v483;
        v493 = (v493 + v573.rowBytes);
        v492 = (v492 + v572.rowBytes);
        if (v573.height <= v483)
        {
          goto LABEL_298;
        }
      }
    }

    v18 = a5;
    v17 = a4;
    if (PixelFormatType > 1717856626)
    {
      if (PixelFormatType <= 1751411058)
      {
        if (PixelFormatType == 1717856627)
        {
          goto LABEL_182;
        }

        if (PixelFormatType != 1751410032)
        {
          goto LABEL_212;
        }
      }

      else if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType == 1919365990)
        {
          PixelBufferUtils::asVImageBuffer(this, 0, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(this, 1, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(this, 2, *v13, &__p);
          v573 = __p;
          PixelBufferUtils::asVImageBuffer(a2, 2, *v13, &__p);
          v572 = __p;
          if (*&v573.height == *&__p.height)
          {
            if (v573.height && v573.width)
            {
              v319 = 0;
              LODWORD(PixelFormatType) = 0;
              v320 = v573.data;
              v321 = v572.data;
              do
              {
                v322 = 0;
                do
                {
                  v323 = v321[v322];
                  v324 = vabds_f32(v320[v322], v323);
                  if (v324 > *a5.i32)
                  {
                    v325 = v324 / (v323 + 1.0e-22);
                    if (v325 > *a4.i32)
                    {
                      LODWORD(PixelFormatType) = PixelFormatType + 1;
                    }
                  }

                  ++v322;
                }

                while (v573.width > v322);
                ++v319;
                v321 = (v321 + v572.rowBytes);
                v320 = (v320 + v573.rowBytes);
              }

              while (v573.height > v319);
              goto LABEL_299;
            }

            goto LABEL_217;
          }

          goto LABEL_299;
        }

        if (PixelFormatType != 1919365992)
        {
          goto LABEL_212;
        }

        PixelBufferUtils::asVImageBuffer(this, 0, *v13, &__p);
        PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &__p);
        PixelBufferUtils::asVImageBuffer(this, 1, *v13, &__p);
        PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &__p);
        PixelBufferUtils::asVImageBuffer(this, 2, *v13, &__p);
        v573 = __p;
        PixelBufferUtils::asVImageBuffer(a2, 2, *v13, &__p);
        v572 = __p;
        if (v573.height != __p.height || v573.width != v572.width)
        {
          goto LABEL_299;
        }

        if (!v573.height || !v573.width)
        {
          goto LABEL_217;
        }

        v19 = 0;
        LODWORD(PixelFormatType) = 0;
        if (LODWORD(v573.width))
        {
          _ZF = (v573.width - 1) >> 32 == 0;
        }

        else
        {
          _ZF = 0;
        }

        v21 = !_ZF;
        v22 = vdupq_lane_s32(a5, 0);
        v23 = vdupq_lane_s32(a4, 0);
        v24 = 2 * (v573.width & 0x1FFFFFFF0);
        v25 = 2 * (v573.width & 0x1FFFFFFF8);
        v26 = (v573.data + 16);
        v27 = (v572.data + 16);
        v28 = vdupq_n_s64(0x3B5E392010175EE6uLL);
        v29.i64[0] = 0x100000001;
        v29.i64[1] = 0x100000001;
        v30 = v572.data;
        v31 = v573.data;
        while (1)
        {
          v164 = (v573.data + v19 * v573.rowBytes);
          v165 = (v572.data + v19 * v572.rowBytes);
          if (v573.width < 8 || (v21 & 1) != 0)
          {
            v166 = 0;
            goto LABEL_100;
          }

          if (v573.width >= 0x10)
          {
            v193 = PixelFormatType;
            v194 = 0uLL;
            v195 = v27;
            v196 = v26;
            v197 = v573.width & 0x1FFFFFFF0;
            v198 = 0uLL;
            v199 = 0uLL;
            do
            {
              v200 = *v196[-2].i8;
              v201 = v195[-1];
              v202 = vcvt_hight_f32_f16(v201);
              v203 = vcvtq_f32_f16(*v201.i8);
              v204 = vcvt_hight_f32_f16(*v195);
              v205 = vcvtq_f32_f16(*v195->i8);
              v206 = vabdq_f32(vcvtq_f32_f16(*v200.i8), v203);
              v207 = vabdq_f32(vcvt_hight_f32_f16(v200), v202);
              v208 = vabdq_f32(vcvtq_f32_f16(*v196), v205);
              v209 = vabdq_f32(vcvt_hight_f32_f16(*v196->i8), v204);
              v210 = vcgtq_f32(v207, v22);
              v211 = vcgtq_f32(v206, v22);
              v212 = vcvt_hight_f64_f32(v206);
              v213 = vcvt_hight_f64_f32(v207);
              *v206.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v206.f32), vaddq_f64(vcvtq_f64_f32(*v203.f32), v28)));
              *v207.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v207.f32), vaddq_f64(vcvtq_f64_f32(*v202.f32), v28)));
              *&v206.u32[2] = vcvt_f32_f64(vdivq_f64(v212, vaddq_f64(vcvt_hight_f64_f32(v203), v28)));
              *&v207.u32[2] = vcvt_f32_f64(vdivq_f64(v213, vaddq_f64(vcvt_hight_f64_f32(v202), v28)));
              *v203.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v208), vaddq_f64(vcvt_hight_f64_f32(v205), v28)));
              *v205.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v208.f32), vaddq_f64(vcvtq_f64_f32(*v205.f32), v28)));
              v205.i64[1] = v203.i64[0];
              *v202.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v209.f32), vaddq_f64(vcvtq_f64_f32(*v204.f32), v28)));
              *&v202.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v209), vaddq_f64(vcvt_hight_f64_f32(v204), v28)));
              *v210.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v211, v210), vuzp1q_s16(vcgtq_f32(v206, v23), vcgtq_f32(v207, v23))));
              *v211.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v208, v22), vcgtq_f32(v209, v22)), vuzp1q_s16(vcgtq_f32(v205, v23), vcgtq_f32(v202, v23))));
              v194 = vaddq_s32(v194, vandq_s8(vmovl_u16(vzip2_s8(*v210.i8, *v22.f32)), v29));
              v193 = vaddq_s32(v193, vandq_s8(vmovl_u16(vzip1_s8(*v210.i8, *v22.f32)), v29));
              v199 = vaddq_s32(v199, vandq_s8(vmovl_u16(vzip2_s8(*v211.i8, *v22.f32)), v29));
              v198 = vaddq_s32(v198, vandq_s8(vmovl_u16(vzip1_s8(*v211.i8, *v22.f32)), v29));
              v196 += 4;
              v195 += 2;
              v197 -= 16;
            }

            while (v197);
            LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v198, v193), vaddq_s32(v199, v194)));
            if (v573.width == (v573.width & 0x1FFFFFFF0))
            {
              goto LABEL_96;
            }

            if ((v573.width & 8) == 0)
            {
              v164 = (v164 + v24);
              v165 = (v165 + v24);
              v166 = v573.width & 0xFFFFFFF0;
LABEL_100:
              v167 = v166 + 1;
              do
              {
                _H5 = *v164;
                __asm { FCVT            S6, H5 }

                _H5 = *v165;
                __asm { FCVT            S7, H5 }

                v172 = vabds_f32(_S6, _S7);
                if (v172 > *a5.i32)
                {
                  __asm { FCVT            D5, H5 }

                  *&_D5 = v172 / (_D5 + 1.0e-22);
                  if (*&_D5 > *a4.i32)
                  {
                    LODWORD(PixelFormatType) = PixelFormatType + 1;
                  }
                }

                ++v164;
                ++v165;
                v64 = v573.width > v167++;
              }

              while (v64);
              goto LABEL_96;
            }

            v174 = v573.width & 0x1FFFFFFF0;
          }

          else
          {
            v174 = 0;
          }

          v165 = (v165 + v25);
          v175 = 0uLL;
          v176 = PixelFormatType;
          v177 = v174 - (v573.width & 0x1FFFFFFF8);
          v178 = 2 * v174;
          v179 = &v31[2 * v174];
          v180 = &v30[v178];
          do
          {
            v181 = *v179++;
            v182 = vcvt_hight_f32_f16(v181);
            v183 = vcvtq_f32_f16(*v181.i8);
            v184 = *v180++;
            v185 = vcvt_hight_f32_f16(v184);
            v186 = vcvtq_f32_f16(*v184.i8);
            v187 = vabdq_f32(v183, v186);
            v188 = vabdq_f32(v182, v185);
            v189 = vcgtq_f32(v188, v22);
            v190 = vcgtq_f32(v187, v22);
            v191 = vcvt_hight_f64_f32(v187);
            v192 = vcvt_hight_f64_f32(v188);
            *v187.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v187.f32), vaddq_f64(vcvtq_f64_f32(*v186.f32), v28)));
            *&v187.u32[2] = vcvt_f32_f64(vdivq_f64(v191, vaddq_f64(vcvt_hight_f64_f32(v186), v28)));
            *v188.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v188.f32), vaddq_f64(vcvtq_f64_f32(*v185.f32), v28)));
            *&v188.u32[2] = vcvt_f32_f64(vdivq_f64(v192, vaddq_f64(vcvt_hight_f64_f32(v185), v28)));
            *v187.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v190, v189), vuzp1q_s16(vcgtq_f32(v187, v23), vcgtq_f32(v188, v23))));
            v175 = vaddq_s32(v175, vandq_s8(vmovl_u16(vzip2_s8(*v187.f32, *v22.f32)), v29));
            v176 = vaddq_s32(v176, vandq_s8(vmovl_u16(vzip1_s8(*v187.f32, *v22.f32)), v29));
            v177 += 8;
          }

          while (v177);
          LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v176, v175));
          if (v573.width != (v573.width & 0x1FFFFFFF8))
          {
            v164 = (v164 + v25);
            v166 = v573.width & 0xFFFFFFF8;
            goto LABEL_100;
          }

LABEL_96:
          ++v19;
          v26 = (v26 + v573.rowBytes);
          v27 = (v27 + v572.rowBytes);
          v31 += v573.rowBytes;
          v30 += v572.rowBytes;
          if (v573.height <= v19)
          {
            goto LABEL_299;
          }
        }
      }

LABEL_149:
      if (v573.height != v572.height || v573.width != v572.width)
      {
        goto LABEL_299;
      }

      if (!v573.height || !v573.width)
      {
        goto LABEL_217;
      }

      v242 = 0;
      LODWORD(PixelFormatType) = 0;
      if (LODWORD(v573.width))
      {
        v243 = (v573.width - 1) >> 32 == 0;
      }

      else
      {
        v243 = 0;
      }

      v244 = !v243;
      v245 = vdupq_lane_s32(v18, 0);
      v246 = vdupq_lane_s32(v17, 0);
      v247 = 2 * (v573.width & 0x1FFFFFFF0);
      v248 = 2 * (v573.width & 0x1FFFFFFF8);
      v249 = (v573.data + 16);
      v250 = (v572.data + 16);
      v251 = vdupq_n_s64(0x3B5E392010175EE6uLL);
      v252.i64[0] = 0x100000001;
      v252.i64[1] = 0x100000001;
      v253 = v572.data;
      v254 = v573.data;
      while (1)
      {
        v255 = (v573.data + v242 * v573.rowBytes);
        v256 = (v572.data + v242 * v572.rowBytes);
        if (v573.width < 8 || (v244 & 1) != 0)
        {
          v257 = 0;
          goto LABEL_164;
        }

        if (v573.width >= 0x10)
        {
          v284 = PixelFormatType;
          v285 = 0uLL;
          v286 = v250;
          v287 = v249;
          v288 = v573.width & 0x1FFFFFFF0;
          v289 = 0uLL;
          v290 = 0uLL;
          do
          {
            v291 = *v287[-2].i8;
            v292 = v286[-1];
            v293 = vcvt_hight_f32_f16(v292);
            v294 = vcvtq_f32_f16(*v292.i8);
            v295 = vcvt_hight_f32_f16(*v286);
            v296 = vcvtq_f32_f16(*v286->i8);
            v297 = vabdq_f32(vcvtq_f32_f16(*v291.i8), v294);
            v298 = vabdq_f32(vcvt_hight_f32_f16(v291), v293);
            v299 = vabdq_f32(vcvtq_f32_f16(*v287), v296);
            v300 = vabdq_f32(vcvt_hight_f32_f16(*v287->i8), v295);
            v301 = vcgtq_f32(v298, v245);
            v302 = vcgtq_f32(v297, v245);
            v303 = vcvt_hight_f64_f32(v297);
            v304 = vcvt_hight_f64_f32(v298);
            *v297.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v297.f32), vaddq_f64(vcvtq_f64_f32(*v294.f32), v251)));
            *v298.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v298.f32), vaddq_f64(vcvtq_f64_f32(*v293.f32), v251)));
            *&v297.u32[2] = vcvt_f32_f64(vdivq_f64(v303, vaddq_f64(vcvt_hight_f64_f32(v294), v251)));
            *&v298.u32[2] = vcvt_f32_f64(vdivq_f64(v304, vaddq_f64(vcvt_hight_f64_f32(v293), v251)));
            *v294.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v299), vaddq_f64(vcvt_hight_f64_f32(v296), v251)));
            *v296.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v299.f32), vaddq_f64(vcvtq_f64_f32(*v296.f32), v251)));
            v296.i64[1] = v294.i64[0];
            *v293.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v300.f32), vaddq_f64(vcvtq_f64_f32(*v295.f32), v251)));
            *&v293.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v300), vaddq_f64(vcvt_hight_f64_f32(v295), v251)));
            *v301.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v302, v301), vuzp1q_s16(vcgtq_f32(v297, v246), vcgtq_f32(v298, v246))));
            *v302.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v299, v245), vcgtq_f32(v300, v245)), vuzp1q_s16(vcgtq_f32(v296, v246), vcgtq_f32(v293, v246))));
            v285 = vaddq_s32(v285, vandq_s8(vmovl_u16(vzip2_s8(*v301.i8, *v245.f32)), v252));
            v284 = vaddq_s32(v284, vandq_s8(vmovl_u16(vzip1_s8(*v301.i8, *v245.f32)), v252));
            v290 = vaddq_s32(v290, vandq_s8(vmovl_u16(vzip2_s8(*v302.i8, *v245.f32)), v252));
            v289 = vaddq_s32(v289, vandq_s8(vmovl_u16(vzip1_s8(*v302.i8, *v245.f32)), v252));
            v287 += 4;
            v286 += 2;
            v288 -= 16;
          }

          while (v288);
          LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v289, v284), vaddq_s32(v290, v285)));
          if (v573.width == (v573.width & 0x1FFFFFFF0))
          {
            goto LABEL_160;
          }

          if ((v573.width & 8) == 0)
          {
            v255 = (v255 + v247);
            v256 = (v256 + v247);
            v257 = v573.width & 0xFFFFFFF0;
LABEL_164:
            v258 = v257 + 1;
            do
            {
              _H5 = *v255;
              __asm { FCVT            S6, H5 }

              _H5 = *v256;
              __asm { FCVT            S7, H5 }

              v263 = vabds_f32(_S6, _S7);
              if (v263 > *v18.i32)
              {
                __asm { FCVT            D5, H5 }

                *&_D5 = v263 / (_D5 + 1.0e-22);
                if (*&_D5 > *v17.i32)
                {
                  LODWORD(PixelFormatType) = PixelFormatType + 1;
                }
              }

              ++v255;
              ++v256;
              v64 = v573.width > v258++;
            }

            while (v64);
            goto LABEL_160;
          }

          v265 = v573.width & 0x1FFFFFFF0;
        }

        else
        {
          v265 = 0;
        }

        v256 = (v256 + v248);
        v266 = 0uLL;
        v267 = PixelFormatType;
        v268 = v265 - (v573.width & 0x1FFFFFFF8);
        v269 = 2 * v265;
        v270 = &v254[2 * v265];
        v271 = &v253[v269];
        do
        {
          v272 = *v270++;
          v273 = vcvt_hight_f32_f16(v272);
          v274 = vcvtq_f32_f16(*v272.i8);
          v275 = *v271++;
          v276 = vcvt_hight_f32_f16(v275);
          v277 = vcvtq_f32_f16(*v275.i8);
          v278 = vabdq_f32(v274, v277);
          v279 = vabdq_f32(v273, v276);
          v280 = vcgtq_f32(v279, v245);
          v281 = vcgtq_f32(v278, v245);
          v282 = vcvt_hight_f64_f32(v278);
          v283 = vcvt_hight_f64_f32(v279);
          *v278.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v278.f32), vaddq_f64(vcvtq_f64_f32(*v277.f32), v251)));
          *&v278.u32[2] = vcvt_f32_f64(vdivq_f64(v282, vaddq_f64(vcvt_hight_f64_f32(v277), v251)));
          *v279.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v279.f32), vaddq_f64(vcvtq_f64_f32(*v276.f32), v251)));
          *&v279.u32[2] = vcvt_f32_f64(vdivq_f64(v283, vaddq_f64(vcvt_hight_f64_f32(v276), v251)));
          *v278.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v281, v280), vuzp1q_s16(vcgtq_f32(v278, v246), vcgtq_f32(v279, v246))));
          v266 = vaddq_s32(v266, vandq_s8(vmovl_u16(vzip2_s8(*v278.f32, *v245.f32)), v252));
          v267 = vaddq_s32(v267, vandq_s8(vmovl_u16(vzip1_s8(*v278.f32, *v245.f32)), v252));
          v268 += 8;
        }

        while (v268);
        LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v267, v266));
        if (v573.width != (v573.width & 0x1FFFFFFF8))
        {
          v255 = (v255 + v248);
          v257 = v573.width & 0xFFFFFFF8;
          goto LABEL_164;
        }

LABEL_160:
        ++v242;
        v249 = (v249 + v573.rowBytes);
        v250 = (v250 + v572.rowBytes);
        v254 += v573.rowBytes;
        v253 += v572.rowBytes;
        if (v573.height <= v242)
        {
          goto LABEL_299;
        }
      }
    }

    if (PixelFormatType > 1647392358)
    {
      if (PixelFormatType != 1647392359)
      {
        v229 = 1717855600;
        goto LABEL_135;
      }

      goto LABEL_149;
    }

    if (PixelFormatType == 1380410945)
    {
      if (*&v573.height == *&v572.height)
      {
        if (v573.height && 4 * v573.width)
        {
          v312 = 0;
          LODWORD(PixelFormatType) = 0;
          v313 = v573.data;
          v314 = v572.data;
          do
          {
            v315 = 0;
            do
            {
              v316 = v314[v315];
              v317 = vabds_f32(v313[v315], v316);
              if (v317 > *a5.i32)
              {
                v318 = v317 / (v316 + 1.0e-22);
                if (v318 > *a4.i32)
                {
                  LODWORD(PixelFormatType) = PixelFormatType + 1;
                }
              }

              ++v315;
            }

            while (4 * v573.width > v315);
            ++v312;
            v314 = (v314 + v572.rowBytes);
            v313 = (v313 + v573.rowBytes);
          }

          while (v573.height > v312);
          goto LABEL_299;
        }

        goto LABEL_217;
      }

      goto LABEL_299;
    }

    if (PixelFormatType != 1380411457)
    {
      goto LABEL_212;
    }

    if (*&v573.height != *&v572.height)
    {
      goto LABEL_299;
    }

    if (!v573.height)
    {
      goto LABEL_217;
    }

    v46 = 4 * v573.width;
    if (!(4 * v573.width))
    {
      goto LABEL_217;
    }

    v47 = 0;
    LODWORD(PixelFormatType) = 0;
    if (v46)
    {
      v48 = (v46 - 1) >> 32 == 0;
    }

    else
    {
      v48 = 0;
    }

    v49 = !v48;
    v50 = vdupq_lane_s32(a5, 0);
    v51 = vdupq_lane_s32(a4, 0);
    v52 = 2 * (v46 & 0x1FFFFFFF0);
    v53 = 2 * (v46 & 0x1FFFFFFF8);
    v54 = (v573.data + 16);
    v55 = (v572.data + 16);
    v56 = vdupq_n_s64(0x3B5E392010175EE6uLL);
    v57.i64[0] = 0x100000001;
    v57.i64[1] = 0x100000001;
    v58 = v572.data;
    v59 = v573.data;
    while (1)
    {
      v114 = (v573.data + v47 * v573.rowBytes);
      v115 = (v572.data + v47 * v572.rowBytes);
      if (v46 < 8 || (v49 & 1) != 0)
      {
        v116 = 0;
        goto LABEL_78;
      }

      if (v46 >= 0x10)
      {
        v143 = PixelFormatType;
        v144 = 0uLL;
        v145 = v55;
        v146 = v54;
        v147 = v46 & 0x1FFFFFFF0;
        v148 = 0uLL;
        v149 = 0uLL;
        do
        {
          v150 = *v146[-2].i8;
          v151 = v145[-1];
          v152 = vcvt_hight_f32_f16(v151);
          v153 = vcvtq_f32_f16(*v151.i8);
          v154 = vcvt_hight_f32_f16(*v145);
          v155 = vcvtq_f32_f16(*v145->i8);
          v156 = vabdq_f32(vcvtq_f32_f16(*v150.i8), v153);
          v157 = vabdq_f32(vcvt_hight_f32_f16(v150), v152);
          v158 = vabdq_f32(vcvtq_f32_f16(*v146), v155);
          v159 = vabdq_f32(vcvt_hight_f32_f16(*v146->i8), v154);
          v160 = vcgtq_f32(v157, v50);
          v161 = vcgtq_f32(v156, v50);
          v162 = vcvt_hight_f64_f32(v156);
          v163 = vcvt_hight_f64_f32(v157);
          *v156.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v156.f32), vaddq_f64(vcvtq_f64_f32(*v153.f32), v56)));
          *v157.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v157.f32), vaddq_f64(vcvtq_f64_f32(*v152.f32), v56)));
          *&v156.u32[2] = vcvt_f32_f64(vdivq_f64(v162, vaddq_f64(vcvt_hight_f64_f32(v153), v56)));
          *&v157.u32[2] = vcvt_f32_f64(vdivq_f64(v163, vaddq_f64(vcvt_hight_f64_f32(v152), v56)));
          *v153.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v158), vaddq_f64(vcvt_hight_f64_f32(v155), v56)));
          *v155.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v158.f32), vaddq_f64(vcvtq_f64_f32(*v155.f32), v56)));
          v155.i64[1] = v153.i64[0];
          *v152.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v159.f32), vaddq_f64(vcvtq_f64_f32(*v154.f32), v56)));
          *&v152.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v159), vaddq_f64(vcvt_hight_f64_f32(v154), v56)));
          *v160.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v161, v160), vuzp1q_s16(vcgtq_f32(v156, v51), vcgtq_f32(v157, v51))));
          *v161.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v158, v50), vcgtq_f32(v159, v50)), vuzp1q_s16(vcgtq_f32(v155, v51), vcgtq_f32(v152, v51))));
          v144 = vaddq_s32(v144, vandq_s8(vmovl_u16(vzip2_s8(*v160.i8, *v50.f32)), v57));
          v143 = vaddq_s32(v143, vandq_s8(vmovl_u16(vzip1_s8(*v160.i8, *v50.f32)), v57));
          v149 = vaddq_s32(v149, vandq_s8(vmovl_u16(vzip2_s8(*v161.i8, *v50.f32)), v57));
          v148 = vaddq_s32(v148, vandq_s8(vmovl_u16(vzip1_s8(*v161.i8, *v50.f32)), v57));
          v146 += 4;
          v145 += 2;
          v147 -= 16;
        }

        while (v147);
        LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v148, v143), vaddq_s32(v149, v144)));
        if (v46 == (v46 & 0x1FFFFFFF0))
        {
          goto LABEL_74;
        }

        if ((v573.width & 2) == 0)
        {
          v114 = (v114 + v52);
          v115 = (v115 + v52);
          v116 = v46 & 0xFFFFFFF0;
LABEL_78:
          v117 = v116 + 1;
          do
          {
            _H5 = *v114;
            __asm { FCVT            S6, H5 }

            _H5 = *v115;
            __asm { FCVT            S7, H5 }

            v122 = vabds_f32(_S6, _S7);
            if (v122 > *a5.i32)
            {
              __asm { FCVT            D5, H5 }

              *&_D5 = v122 / (_D5 + 1.0e-22);
              if (*&_D5 > *a4.i32)
              {
                LODWORD(PixelFormatType) = PixelFormatType + 1;
              }
            }

            ++v114;
            ++v115;
            v64 = v46 > v117++;
          }

          while (v64);
          goto LABEL_74;
        }

        v124 = v46 & 0x1FFFFFFF0;
      }

      else
      {
        v124 = 0;
      }

      v115 = (v115 + v53);
      v125 = 0uLL;
      v126 = PixelFormatType;
      v127 = -8 * ((v573.width >> 1) & 0x3FFFFFFF) + v124;
      v128 = 2 * v124;
      v129 = &v59[2 * v124];
      v130 = &v58[v128];
      do
      {
        v131 = *v129++;
        v132 = vcvt_hight_f32_f16(v131);
        v133 = vcvtq_f32_f16(*v131.i8);
        v134 = *v130++;
        v135 = vcvt_hight_f32_f16(v134);
        v136 = vcvtq_f32_f16(*v134.i8);
        v137 = vabdq_f32(v133, v136);
        v138 = vabdq_f32(v132, v135);
        v139 = vcgtq_f32(v138, v50);
        v140 = vcgtq_f32(v137, v50);
        v141 = vcvt_hight_f64_f32(v137);
        v142 = vcvt_hight_f64_f32(v138);
        *v137.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v137.f32), vaddq_f64(vcvtq_f64_f32(*v136.f32), v56)));
        *&v137.u32[2] = vcvt_f32_f64(vdivq_f64(v141, vaddq_f64(vcvt_hight_f64_f32(v136), v56)));
        *v138.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v138.f32), vaddq_f64(vcvtq_f64_f32(*v135.f32), v56)));
        *&v138.u32[2] = vcvt_f32_f64(vdivq_f64(v142, vaddq_f64(vcvt_hight_f64_f32(v135), v56)));
        *v137.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v140, v139), vuzp1q_s16(vcgtq_f32(v137, v51), vcgtq_f32(v138, v51))));
        v125 = vaddq_s32(v125, vandq_s8(vmovl_u16(vzip2_s8(*v137.f32, *v50.f32)), v57));
        v126 = vaddq_s32(v126, vandq_s8(vmovl_u16(vzip1_s8(*v137.f32, *v50.f32)), v57));
        v127 += 8;
      }

      while (v127);
      LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v126, v125));
      if (v46 != (v46 & 0x1FFFFFFF8))
      {
        v114 = (v114 + v53);
        v116 = v46 & 0xFFFFFFF8;
        goto LABEL_78;
      }

LABEL_74:
      ++v47;
      v54 = (v54 + v573.rowBytes);
      v55 = (v55 + v572.rowBytes);
      v59 += v573.rowBytes;
      v58 += v572.rowBytes;
      if (v573.height <= v47)
      {
        goto LABEL_299;
      }
    }
  }

  return result;
}

void sub_224736194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CVBuffer *PixelBufferUtils::errorsPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4)
{
  v5 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(this);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(this);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    return 0;
  }

  v11 = CVPixelBufferGetPixelFormatType(this);
  v12 = CVPixelBufferGetWidth(this);
  v13 = CVPixelBufferGetHeight(this);
  pixelBufferOut.data = 0;
  v14 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v14, v12, v13, v11, BufferAttributes, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(data, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v17 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  memset(&v244, 0, sizeof(v244));
  PixelBufferUtils::asVImageBuffer(a2, *v17, &v244);
  memset(&v243, 0, sizeof(v243));
  v197 = data;
  PixelBufferUtils::asVImageBuffer(data, *v17, &v243);
  pixelBuffer = this;
  if (v11 > 1278226535)
  {
    if (v11 <= 1717855599)
    {
      if (v11 <= 1380410944)
      {
        if (v11 != 1278226536)
        {
          v18 = 1380401729;
          goto LABEL_17;
        }

        goto LABEL_36;
      }

      if (v11 == 1380410945)
      {
        calcDiffsRaw<float>(&pixelBufferOut, v244.data, v244.rowBytes, v243.data, v243.rowBytes, v5);
        goto LABEL_121;
      }

      v21 = 1647392359;
      goto LABEL_35;
    }

    if (v11 > 1751410031)
    {
      if (v11 == 1751410032)
      {
        goto LABEL_36;
      }

      v21 = 1751411059;
LABEL_35:
      if (v11 == v21)
      {
LABEL_36:
        v22 = pixelBufferOut.height;
        if (!pixelBufferOut.height)
        {
          goto LABEL_121;
        }

        v23 = pixelBufferOut.width;
        if (!pixelBufferOut.width)
        {
          goto LABEL_121;
        }

        rowBytes = v244.rowBytes;
        v25 = pixelBufferOut.rowBytes;
        v26 = v243.rowBytes;
        v27 = v244.data;
        v28 = v243.data;
        v182 = v243.data + 2 * pixelBufferOut.width;
        v178 = v244.data + 2 * pixelBufferOut.width;
        v180 = pixelBufferOut.data + 2 * pixelBufferOut.width;
        if (LODWORD(pixelBufferOut.width))
        {
          _ZF = (pixelBufferOut.width - 1) >> 32 == 0;
        }

        else
        {
          _ZF = 0;
        }

        v30 = !_ZF;
        v192 = v30;
        v188 = pixelBufferOut.width & 0x1FFFFFFF8;
        v190 = pixelBufferOut.data;
        v176 = pixelBufferOut.height;
        v177 = 2 * (pixelBufferOut.width & 0x1FFFFFFF8);
        v194 = pixelBufferOut.rowBytes;
        v198 = v244.data;
        v211 = v243.rowBytes;
        v214 = v244.rowBytes;
        if (v5)
        {
          v31 = 0;
          v32 = pixelBufferOut.data;
          v33 = v244.data;
          v34 = v243.data;
          v35 = pixelBufferOut.data;
          v184 = a2;
          while (1)
          {
            v36 = (v28 + v26 * v31);
            v37 = v25 * v31;
            v38 = &v35[v25 * v31];
            v39 = rowBytes * v31;
            v40 = &v27[v39];
            v205 = v32;
            v208 = v31;
            v200 = v34;
            v202 = v33;
            if (v23 < 8 || (v192 & 1) != 0)
            {
              v41 = 0;
            }

            else
            {
              v41 = 0;
              v54 = &v182[v26 * v31];
              v55 = &v180[v37];
              v57 = v36 < &v178[v39] && v40 < v54;
              v58 = v38 >= v54 || v36 >= v55;
              if (v58 && !v57)
              {
                v40 += v177;
                v59 = v33;
                v60 = v34;
                v61 = v23 & 0x1FFFFFFF8;
                do
                {
                  v32 += 16;
                  v59 += 16;
                  __powidf2();
                  v226 = v62;
                  __powidf2();
                  v63.f64[1] = v226;
                  v227 = v63;
                  __powidf2();
                  v219 = v64;
                  __powidf2();
                  v65.f64[1] = v219;
                  v231 = v65;
                  __powidf2();
                  v220 = v66;
                  __powidf2();
                  v67.f64[1] = v220;
                  v235 = v67;
                  __powidf2();
                  v221 = v68;
                  __powidf2();
                  v69.f64[1] = v221;
                  *v60++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(v231), v227)), vcvtx_hight_f32_f64(vcvtx_f32_f64(v69), v235)));
                  v61 -= 8;
                }

                while (v61);
                a2 = v184;
                v22 = v176;
                v35 = v190;
                if (v23 == v188)
                {
                  goto LABEL_51;
                }

                v38 += v177;
                v36 = (v36 + v177);
                v41 = v23 & 0xFFFFFFF8;
              }
            }

            v42 = v41 + 1;
            do
            {
              v43 = *v38;
              v38 += 2;
              _H0 = v43;
              __asm { FCVT            S0, H0 }

              v48 = *v40;
              v40 += 2;
              _H1 = v48;
              __asm
              {
                FCVT            S2, H1
                FCVT            D1, H1
              }

              __powidf2();
              __asm { FCVT            H0, D0 }

              *v36++ = fabsl(*&_D0);
              v53 = v23 > v42++;
            }

            while (v53);
LABEL_51:
            v26 = v211;
            v31 = v208 + 1;
            v34 = (v200 + v211);
            rowBytes = v214;
            v33 = &v202[v214];
            v25 = v194;
            v32 = &v205[v194];
            v27 = v198;
            if (v22 <= (v208 + 1))
            {
              goto LABEL_121;
            }
          }
        }

        if (pixelBufferOut.width < 8)
        {
          v108 = 0;
          v109 = pixelBufferOut.data;
          do
          {
            v110 = 0;
            do
            {
              _H0 = *&v109[2 * v110];
              __asm { FCVT            S0, H0 }

              _H1 = *&v27[2 * v110];
              __asm { FCVT            S1, H1 }

              __powidf2();
              __asm { FCVT            H0, D0 }

              v28[v110++] = fabsl(*&_D0);
            }

            while (v110 < v23);
            ++v108;
            v109 += v25;
            v27 += v214;
            v28 = (v28 + v211);
          }

          while (v22 > v108);
          goto LABEL_121;
        }

        v140 = 0;
        v141 = pixelBufferOut.data;
        v142 = pixelBufferOut.data;
        v143 = v244.data;
        v144 = v243.data;
        v187 = a2;
        while (1)
        {
          v145 = v26 * v140;
          v146 = v27;
          v147 = (v28 + v145);
          v148 = &v141[v25 * v140];
          v149 = rowBytes * v140;
          v150 = &v146[v149];
          v218 = v140;
          v207 = v143;
          v210 = v142;
          v204 = v144;
          if (v192)
          {
            v151 = 0;
          }

          else
          {
            v151 = 0;
            v160 = &v182[v145];
            v162 = v147 < &v178[v149] && v150 < v160;
            v163 = v148 >= v160 || v147 >= &v180[v25 * v140];
            if (v163 && !v162)
            {
              v150 += v177;
              v164 = v142;
              v165 = v143;
              v166 = v144;
              v167 = v23 & 0x1FFFFFFF8;
              do
              {
                v164 += 16;
                v165 += 16;
                __powidf2();
                v229 = v168;
                __powidf2();
                v169.f64[1] = v229;
                v230 = v169;
                __powidf2();
                v223 = v170;
                __powidf2();
                v171.f64[1] = v223;
                v234 = v171;
                __powidf2();
                v224 = v172;
                __powidf2();
                v173.f64[1] = v224;
                v240 = v173;
                __powidf2();
                v225 = v174;
                __powidf2();
                v175.f64[1] = v225;
                *v166++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(v234), v230)), vcvtx_hight_f32_f64(vcvtx_f32_f64(v175), v240)));
                v167 -= 8;
              }

              while (v167);
              a2 = v187;
              v22 = v176;
              v25 = v194;
              if (v23 == v188)
              {
                goto LABEL_146;
              }

              v148 += v177;
              v147 = (v147 + v177);
              v151 = v23 & 0xFFFFFFF8;
            }
          }

          v152 = v151 + 1;
          do
          {
            v153 = *v148;
            v148 += 2;
            _H0 = v153;
            __asm { FCVT            S0, H0 }

            v156 = *v150;
            v150 += 2;
            _H1 = v156;
            __asm { FCVT            S1, H1 }

            __powidf2();
            __asm { FCVT            H0, D0 }

            *v147++ = fabsl(*&_D0);
            v53 = v23 > v152++;
          }

          while (v53);
LABEL_146:
          rowBytes = v214;
          v140 = v218 + 1;
          v26 = v211;
          v144 = (v204 + v211);
          v143 = &v207[v214];
          v142 = &v210[v25];
          v141 = v190;
          v27 = v198;
          if (v22 <= (v218 + 1))
          {
            goto LABEL_121;
          }
        }
      }

LABEL_105:
      PixelBufferUtils::pixelFormatAsString(v11, v241);
      if (v242 >= 0)
      {
        v103 = v241;
      }

      else
      {
        v103 = v241[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "errorsPixelBuffer", 2434, v11, v103);
      if (v242 < 0)
      {
        operator delete(v241[0]);
      }

      goto LABEL_121;
    }

    if (v11 == 1717855600)
    {
      goto LABEL_70;
    }

    v20 = 1717856627;
    goto LABEL_29;
  }

  if (v11 <= 875704437)
  {
    if (v11 == 32)
    {
LABEL_26:
      calcDiffsRaw<unsigned char>(&pixelBufferOut, &v244, &v243, v5, a4, 4);
      goto LABEL_121;
    }

    if (v11 == 843264104)
    {
      calcDiffsRaw<half>(&pixelBufferOut, v244.data, v244.rowBytes, v243.data, v243.rowBytes, v5);
      goto LABEL_121;
    }

    if (v11 != 875704422)
    {
      goto LABEL_105;
    }
  }

  else
  {
    if (v11 > 1278226487)
    {
      if (v11 == 1278226488)
      {
        calcDiffsRaw<unsigned char>(&pixelBufferOut, &v244, &v243, v5, a4, 1);
LABEL_70:
        v70 = pixelBufferOut.height;
        if (!pixelBufferOut.height)
        {
          goto LABEL_121;
        }

        v71 = pixelBufferOut.width;
        if (!pixelBufferOut.width)
        {
          goto LABEL_121;
        }

        v72 = v244.rowBytes;
        v73 = pixelBufferOut.data;
        v74 = pixelBufferOut.rowBytes;
        v75 = v243.rowBytes;
        v76 = v243.data;
        v193 = v243.data + 4 * pixelBufferOut.width;
        v189 = v244.data + 4 * pixelBufferOut.width;
        v191 = pixelBufferOut.data + 4 * pixelBufferOut.width;
        if (LODWORD(pixelBufferOut.width))
        {
          v77 = (pixelBufferOut.width - 1) >> 32 == 0;
        }

        else
        {
          v77 = 0;
        }

        v78 = !v77;
        v199 = v78;
        v195 = pixelBufferOut.width & 0x1FFFFFFFCLL;
        v181 = pixelBufferOut.height;
        v183 = 4 * (pixelBufferOut.width & 0x1FFFFFFFCLL);
        v179 = pixelBufferOut.data;
        v203 = pixelBufferOut.rowBytes;
        v206 = v244.data;
        v222 = v244.rowBytes;
        v201 = v243.data;
        v217 = v243.rowBytes;
        if (v5)
        {
          v79 = 0;
          v80 = pixelBufferOut.data;
          v81 = v244.data;
          v82 = v243.data;
          v83 = v244.data;
          v185 = a2;
          while (1)
          {
            v84 = (v76 + v75 * v79);
            v85 = &v73[v74 * v79];
            v86 = v72 * v79;
            v87 = &v83[v86];
            v212 = v81;
            v215 = v80;
            v209 = v82;
            if (v71 < 4 || (v199 & 1) != 0)
            {
              v88 = 0;
            }

            else
            {
              v88 = 0;
              v91 = &v193[v75 * v79];
              v93 = v84 < &v189[v86] && v87 < v91;
              v94 = v85 >= v91 || v84 >= &v191[v74 * v79];
              if (v94 && !v93)
              {
                v87 += v183;
                v95 = v80;
                v96 = v81;
                v97 = v82;
                v98 = v71 & 0x1FFFFFFFCLL;
                do
                {
                  v95 += 16;
                  v96 += 16;
                  __powidf2();
                  v236 = v99;
                  __powidf2();
                  v100.f64[1] = v236;
                  v237 = v100;
                  __powidf2();
                  v232 = v101;
                  __powidf2();
                  v102.f64[1] = v232;
                  *v97++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v102), v237));
                  v98 -= 4;
                }

                while (v98);
                a2 = v185;
                v73 = v179;
                v70 = v181;
                if (v71 == v195)
                {
                  goto LABEL_85;
                }

                v85 += v183;
                v84 = (v84 + v183);
                v88 = v71 & 0xFFFFFFFC;
              }
            }

            v89 = v88 + 1;
            do
            {
              v85 += 4;
              v87 += 4;
              __powidf2();
              *&v90 = v90;
              *v84++ = fabsf(*&v90);
              v53 = v71 > v89++;
            }

            while (v53);
LABEL_85:
            ++v79;
            v75 = v217;
            v82 = (v209 + v217);
            v72 = v222;
            v81 = &v212[v222];
            v74 = v203;
            v83 = v206;
            v80 = &v215[v203];
            v76 = v201;
            if (v70 <= v79)
            {
              goto LABEL_121;
            }
          }
        }

        if (pixelBufferOut.width < 8)
        {
          v104 = 0;
          v105 = v244.data;
          do
          {
            v106 = 0;
            do
            {
              __powidf2();
              *&v107 = v107;
              v76[v106++] = fabsf(*&v107);
            }

            while (v106 < v71);
            ++v104;
            v73 += v74;
            v105 += v222;
            v76 = (v76 + v217);
          }

          while (v70 > v104);
          goto LABEL_121;
        }

        v116 = 0;
        v117 = pixelBufferOut.data;
        v118 = v244.data;
        v119 = v244.data;
        v120 = v243.data;
        v186 = a2;
        while (1)
        {
          v121 = (v76 + v75 * v116);
          v122 = &v73[v74 * v116];
          v123 = v72 * v116;
          v124 = &v118[v123];
          v228 = v117;
          v213 = v120;
          v216 = v119;
          if (v199)
          {
            v125 = 0;
          }

          else
          {
            v125 = 0;
            v128 = &v193[v75 * v116];
            v130 = v121 < &v189[v123] && v124 < v128;
            v131 = v122 >= v128 || v121 >= &v191[v74 * v116];
            if (v131 && !v130)
            {
              v124 += v183;
              v132 = v117;
              v133 = v119;
              v134 = v120;
              v135 = v71 & 0x1FFFFFFFCLL;
              do
              {
                v132 += 16;
                v133 += 16;
                __powidf2();
                v238 = v136;
                __powidf2();
                v137.f64[1] = v238;
                v239 = v137;
                __powidf2();
                v233 = v138;
                __powidf2();
                v139.f64[1] = v233;
                *v134++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v139), v239));
                v135 -= 4;
              }

              while (v135);
              a2 = v186;
              v73 = v179;
              v70 = v181;
              if (v71 == v195)
              {
                goto LABEL_123;
              }

              v122 += v183;
              v121 = (v121 + v183);
              v125 = v71 & 0xFFFFFFFC;
            }
          }

          v126 = v125 + 1;
          do
          {
            v122 += 4;
            v124 += 4;
            __powidf2();
            *&v127 = v127;
            *v121++ = fabsf(*&v127);
            v53 = v71 > v126++;
          }

          while (v53);
LABEL_123:
          ++v116;
          v75 = v217;
          v120 = (v213 + v217);
          v72 = v222;
          v119 = &v216[v222];
          v74 = v203;
          v118 = v206;
          v117 = &v228[v203];
          v76 = v201;
          if (v70 <= v116)
          {
            goto LABEL_121;
          }
        }
      }

      v20 = 1278226534;
LABEL_29:
      if (v11 != v20)
      {
        goto LABEL_105;
      }

      goto LABEL_70;
    }

    if (v11 != 875704438)
    {
      v18 = 1111970369;
LABEL_17:
      if (v11 != v18)
      {
        goto LABEL_105;
      }

      goto LABEL_26;
    }
  }

  PixelBufferUtils::asVImageBuffer(this, 0, *v17, &pixelBufferOut);
  PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &v244);
  calcDiffsRaw<unsigned char>(&pixelBufferOut, &v244, &v243, v5, a4, 1);
  PixelBufferUtils::asVImageBuffer(this, 1, *v17, &pixelBufferOut);
  PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &v244);
  calcDiffsRaw<unsigned char>(&pixelBufferOut, &v244, &v243, v5, a4, 2);
LABEL_121:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  CVPixelBufferUnlockBaseAddress(v197, 0);
  return v197;
}

void sub_224737080(_Unwind_Exception *exception_object)
{
  if (*(v1 - 209) < 0)
  {
    operator delete(*(v1 - 232));
  }

  _Unwind_Resume(exception_object);
}

uint64_t calcDiffsRaw<unsigned char>(uint64_t result, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 8);
  if (v6)
  {
    v9 = result;
    v10 = *(result + 16);
    LODWORD(v11) = 0;
    if (a4)
    {
      do
      {
        v12 = v11;
        if (v10 * a6)
        {
          v13 = 0;
          v14 = *a3 + a3[3] * v11;
          do
          {
            result = __powidf2();
            *&v15 = v15;
            *(v14 + v13++) = fabsf(*&v15);
            v10 = *(v9 + 16);
          }

          while (v10 * a6 > v13);
          v6 = *(v9 + 8);
        }

        v11 = (v12 + 1);
      }

      while (v6 > v11);
    }

    else
    {
      do
      {
        v16 = v11;
        if (v10 * a6)
        {
          v17 = 0;
          v18 = *a3 + a3[3] * v11;
          do
          {
            result = __powidf2();
            *&v19 = v19;
            *(v18 + v17++) = fabsf(*&v19);
            v10 = *(v9 + 16);
          }

          while (v10 * a6 > v17);
          v6 = *(v9 + 8);
        }

        v11 = (v16 + 1);
      }

      while (v6 > v11);
    }
  }

  return result;
}

uint64_t *calcDiffsRaw<half>(uint64_t *result, uint64_t a2, uint64_t a3, float16x8_t *a4, uint64_t a5, char a6)
{
  v125 = result[1];
  if (!v125)
  {
    return result;
  }

  v6 = result[2];
  v7 = 2 * v6;
  if (!(2 * v6))
  {
    return result;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = *result;
  v13 = result[3];
  v116 = v13;
  if (a6)
  {
    v14 = 0;
    v15 = 4 * v6;
    v108 = a4->i64 + v15;
    v105 = a2 + v15;
    v106 = v12 + v15;
    if (v7)
    {
      _ZF = (v7 - 1) >> 32 == 0;
    }

    else
    {
      _ZF = 0;
    }

    v17 = !_ZF;
    v113 = v17;
    v104 = 2 * (v7 & 0x1FFFFFFF8);
    v18 = *result;
    v19 = a2;
    v20 = a4;
    while (1)
    {
      v21 = (v9->i16 + v14 * v8);
      v22 = v13 * v14;
      v23 = (v12 + v13 * v14);
      v24 = v14 * v10;
      v25 = (v11 + v14 * v10);
      v121 = v18;
      v123 = v14;
      v118 = v20;
      v120 = v19;
      if (v7 < 8 || (v113 & 1) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        v39 = v108 + v14 * v8;
        v40 = v106 + v22;
        v42 = v21 < v105 + v24 && v25 < v39;
        v43 = v23 >= v39 || v21 >= v40;
        if (v43 && !v42)
        {
          v25 = (v25 + v104);
          v44 = v19;
          v45 = v20;
          v46 = v7 & 0x1FFFFFFF8;
          do
          {
            v18 += 16;
            v44 += 16;
            __powidf2();
            v133 = v47;
            __powidf2();
            v48.f64[1] = v133;
            v134 = v48;
            __powidf2();
            v127 = v49;
            __powidf2();
            v50.f64[1] = v127;
            v137 = v50;
            __powidf2();
            v128 = v51;
            __powidf2();
            v52.f64[1] = v128;
            v139 = v52;
            __powidf2();
            v129 = v53;
            result = __powidf2();
            v54.f64[1] = v129;
            *v45++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(v137), v134)), vcvtx_hight_f32_f64(vcvtx_f32_f64(v54), v139)));
            v46 -= 8;
          }

          while (v46);
          v8 = a5;
          v9 = a4;
          v10 = a3;
          if (v7 == (v7 & 0x1FFFFFFF8))
          {
            goto LABEL_16;
          }

          v23 = (v23 + v104);
          v21 = (v21 + v104);
          v26 = v7 & 0xFFFFFFF8;
        }
      }

      v27 = v26 + 1;
      do
      {
        v28 = *v23++;
        _H0 = v28;
        __asm { FCVT            S0, H0 }

        v33 = *v25++;
        _H1 = v33;
        __asm
        {
          FCVT            S2, H1
          FCVT            D1, H1
        }

        result = __powidf2();
        __asm { FCVT            H0, D0 }

        *v21++ = fabsl(*&_D0);
        v38 = v7 > v27++;
      }

      while (v38);
LABEL_16:
      v14 = v123 + 1;
      v20 = (v118 + v8);
      v19 = v120 + v10;
      v13 = v116;
      v11 = a2;
      v18 = v121 + v116;
      if (v125 <= (v123 + 1))
      {
        return result;
      }
    }
  }

  if (v7 <= 7)
  {
    v55 = 0;
    do
    {
      v56 = 0;
      do
      {
        _H0 = *(v12 + 2 * v56);
        __asm { FCVT            S0, H0 }

        _H1 = *(v11 + 2 * v56);
        __asm { FCVT            S1, H1 }

        result = __powidf2();
        __asm { FCVT            H0, D0 }

        *&v9->i16[v56++] = fabsl(*&_D0);
      }

      while (v7 > v56);
      ++v55;
      v12 += v13;
      v11 += a3;
      v9 = (v9 + v8);
    }

    while (v125 > v55);
    return result;
  }

  if (v7)
  {
    v62 = (v7 - 1) >> 32 == 0;
  }

  else
  {
    v62 = 0;
  }

  if (v62)
  {
    v70 = 0;
    v71 = 4 * v6;
    v119 = a4->i64 + v71;
    v114 = v12 + v71;
    v111 = a2 + v71;
    v107 = 2 * (v7 & 0x1FFFFFFF8);
    v72 = *result;
    v73 = a2;
    v74 = a4;
    while (1)
    {
      v75 = 0;
      v76 = (v9->i16 + v70 * v8);
      v77 = v119 + v70 * v8;
      v78 = v13 * v70;
      v79 = (v12 + v13 * v70);
      v80 = (v11 + v70 * v10);
      v82 = v76 < v111 + v70 * v10 && v80 < v77;
      v83 = v79 >= v77 || v76 >= v114 + v78;
      v126 = v72;
      v122 = v74;
      v124 = v73;
      if (v83 && !v82)
      {
        v109 = v70;
        v80 = (v80 + v107);
        v84 = v72;
        v85 = v73;
        v86 = v74;
        v87 = v7 & 0x1FFFFFFF8;
        do
        {
          v84 += 16;
          v85 += 16;
          __powidf2();
          v135 = v88;
          __powidf2();
          v89.f64[1] = v135;
          v136 = v89;
          __powidf2();
          v130 = v90;
          __powidf2();
          v91.f64[1] = v130;
          v138 = v91;
          __powidf2();
          v131 = v92;
          __powidf2();
          v93.f64[1] = v131;
          v140 = v93;
          __powidf2();
          v132 = v94;
          result = __powidf2();
          v95.f64[1] = v132;
          *v86++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(v138), v136)), vcvtx_hight_f32_f64(vcvtx_f32_f64(v95), v140)));
          v87 -= 8;
        }

        while (v87);
        v70 = v109;
        v8 = a5;
        v10 = a3;
        if (v7 == (v7 & 0x1FFFFFFF8))
        {
          goto LABEL_50;
        }

        v79 = (v79 + v107);
        v76 = (v76 + v107);
        v75 = v7 & 0xFFFFFFF8;
      }

      v96 = v75 + 1;
      do
      {
        v97 = *v79++;
        _H0 = v97;
        __asm { FCVT            S0, H0 }

        v100 = *v80++;
        _H1 = v100;
        __asm { FCVT            S1, H1 }

        result = __powidf2();
        __asm { FCVT            H0, D0 }

        *v76++ = fabsl(*&_D0);
        v38 = v7 > v96++;
      }

      while (v38);
LABEL_50:
      ++v70;
      v74 = (v122 + v8);
      v73 = v124 + v10;
      v13 = v116;
      v11 = a2;
      v72 = v126 + v116;
      v9 = a4;
      if (v125 <= v70)
      {
        return result;
      }
    }
  }

  v63 = 0;
  do
  {
    v64 = 0;
    do
    {
      _H0 = *(v12 + 2 * v64);
      __asm { FCVT            S0, H0 }

      _H1 = *(v11 + 2 * v64);
      __asm { FCVT            S1, H1 }

      result = __powidf2();
      __asm { FCVT            H0, D0 }

      *&v9->i16[v64++] = fabsl(*&_D0);
    }

    while (v7 > v64);
    ++v63;
    v12 += v13;
    v11 += a3;
    v9 = (v9 + v8);
  }

  while (v125 > v63);
  return result;
}

uint64_t *calcDiffsRaw<float>(uint64_t *result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, char a6)
{
  v94 = result[1];
  if (!v94)
  {
    return result;
  }

  v6 = result[2];
  v7 = 4 * v6;
  if (!(4 * v6))
  {
    return result;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = *result;
  v13 = result[3];
  v83 = v13;
  if (a6)
  {
    v14 = 0;
    v15 = 16 * v6;
    v78 = &a4[v15 / 0x10];
    v75 = a2 + v15;
    v77 = v12 + v15;
    if (v7)
    {
      v16 = (v7 - 1) >> 32 == 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = !v16;
    v81 = v17;
    v73 = 4 * (v7 & 0x1FFFFFFFCLL);
    v18 = *result;
    v19 = a2;
    v20 = a4;
    while (1)
    {
      v21 = v14 * v8;
      v22 = (v9->f32 + v14 * v8);
      v23 = v13 * v14;
      v24 = v12 + v13 * v14;
      v90 = v18;
      v92 = v14;
      v25 = v14 * v10;
      v26 = v11 + v25;
      v86 = v20;
      v88 = v19;
      if (v81)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        v31 = v77 + v23;
        v32 = v78 + v21;
        v34 = v22 < v75 + v25 && v26 < v32;
        v35 = v24 >= v32 || v22 >= v31;
        if (v35 && !v34)
        {
          v26 += v73;
          v36 = v19;
          v37 = v20;
          v38 = v7 & 0x1FFFFFFFCLL;
          do
          {
            v18 += 16;
            v36 += 16;
            __powidf2();
            v98 = v39;
            __powidf2();
            v40.f64[1] = v98;
            v99 = v40;
            __powidf2();
            v96 = v41;
            result = __powidf2();
            v42.f64[1] = v96;
            *v37++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v42), v99));
            v38 -= 4;
          }

          while (v38);
          v8 = a5;
          v9 = a4;
          v10 = a3;
          if (v7 == (v7 & 0x1FFFFFFFCLL))
          {
            goto LABEL_11;
          }

          v24 += v73;
          v22 = (v22 + v73);
          v27 = v7;
        }
      }

      v28 = v27 + 1;
      do
      {
        v24 += 4;
        v26 += 4;
        result = __powidf2();
        *&v29 = v29;
        *v22++ = fabsf(*&v29);
        v30 = v7 > v28++;
      }

      while (v30);
LABEL_11:
      v14 = v92 + 1;
      v20 = (v86 + v8);
      v19 = v88 + v10;
      v13 = v83;
      v18 = v90 + v83;
      v11 = a2;
      if (v94 <= (v92 + 1))
      {
        return result;
      }
    }
  }

  if (v7 <= 7)
  {
    v43 = 0;
    do
    {
      v44 = 0;
      do
      {
        result = __powidf2();
        *&v45 = v45;
        v9->f32[v44++] = fabsf(*&v45);
      }

      while (v7 > v44);
      ++v43;
      v12 += v13;
      v11 += a3;
      v9 = (v9 + v8);
    }

    while (v94 > v43);
    return result;
  }

  if (v7)
  {
    v46 = (v7 - 1) >> 32 == 0;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    v50 = 0;
    v51 = 16 * v6;
    v87 = &a4[v51 / 0x10];
    v82 = v12 + v51;
    v79 = a2 + v51;
    v76 = 4 * (v7 & 0x1FFFFFFFCLL);
    v52 = *result;
    v53 = a2;
    v54 = a4;
    while (1)
    {
      v55 = 0;
      v56 = (v9->f32 + v50 * v8);
      v57 = v87 + v50 * v8;
      v58 = v12 + v13 * v50;
      v59 = v11 + v50 * v10;
      v61 = v56 < v79 + v50 * v10 && v59 < v57;
      v62 = v58 >= v57 || v56 >= v82 + v13 * v50;
      v95 = v50;
      v91 = v53;
      v93 = v52;
      v89 = v54;
      if (v62 && !v61)
      {
        v63 = v7 & 0x1FFFFFFFCLL;
        v59 += v76;
        v64 = v52;
        v65 = v53;
        v66 = v54;
        do
        {
          v64 += 16;
          v65 += 16;
          __powidf2();
          v100 = v67;
          __powidf2();
          v68.f64[1] = v100;
          v101 = v68;
          __powidf2();
          v97 = v69;
          result = __powidf2();
          v70.f64[1] = v97;
          *v66++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v70), v101));
          v63 -= 4;
        }

        while (v63);
        v8 = a5;
        v13 = v83;
        v10 = a3;
        if (v7 == (v7 & 0x1FFFFFFFCLL))
        {
          goto LABEL_49;
        }

        v58 += v76;
        v56 = (v56 + v76);
        v55 = v7;
      }

      v71 = v55 + 1;
      do
      {
        v58 += 4;
        v59 += 4;
        result = __powidf2();
        *&v72 = v72;
        *v56++ = fabsf(*&v72);
        v30 = v7 > v71++;
      }

      while (v30);
LABEL_49:
      v50 = v95 + 1;
      v54 = (v89 + v8);
      v53 = v91 + v10;
      v52 = v93 + v13;
      v9 = a4;
      v11 = a2;
      if (v94 <= (v95 + 1))
      {
        return result;
      }
    }
  }

  v47 = 0;
  do
  {
    v48 = 0;
    do
    {
      result = __powidf2();
      *&v49 = v49;
      v9->f32[v48++] = fabsf(*&v49);
    }

    while (v7 > v48);
    ++v47;
    v12 += v13;
    v11 += a3;
    v9 = (v9 + v8);
  }

  while (v94 > v47);
  return result;
}

uint64_t PixelBufferUtils::scaleConvertRotatePixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, CGRect a4, CVPixelBufferRef *a5, __CVBuffer **a6, __CVBuffer **a7)
{
  v68 = pixelBuffer;
  v69 = this;
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a2;
  v64 = a7;
  v66 = 0;
  texture = 0;
  if (a5)
  {
    p_texture = a5;
  }

  else
  {
    p_texture = &texture;
  }

  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = &v66;
  }

  v17 = CVPixelBufferGetWidth(pixelBuffer);
  v18 = CVPixelBufferGetHeight(pixelBuffer);
  v19 = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v20 = CVPixelBufferGetPixelFormatType(this);
  v65 = v12;
  v21 = trunc(v17);
  if ((v12 & 0xFFFFFFFD) == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = v18;
  }

  if ((v12 & 0xFFFFFFFD) == 1)
  {
    v23 = v18;
  }

  else
  {
    v23 = v17;
  }

  v24 = CVPixelBufferGetWidth(this);
  v25 = CVPixelBufferGetHeight(this);
  v26 = CVPixelBufferGetPixelFormatType(this);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v76 = CGRectIntegral(v71);
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  if (!CGRectEqualToRect(v72, v76))
  {
    NSLog(&cfstr_SDErrorCropDim.isa, "scaleConvertRotatePixelBuffer", 2538);
    return 0xFFFFFFFFLL;
  }

  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  if (CGRectIsEmpty(v73))
  {
    x = 0.0;
    y = 0.0;
    width = v24;
    height = v25;
  }

  v77.origin.x = 0.0;
  v77.origin.y = 0.0;
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  v77.size.width = v24;
  v77.size.height = v25;
  v27 = !CGRectEqualToRect(v74, v77);
  if (v23 != v24)
  {
    v27 = 1;
  }

  if (v22 != v25)
  {
    v27 = 1;
  }

  v28 = v19;
  if (v20 == v19 && !v65 && !v27)
  {
    return PixelBufferUtils::copyPixelBuffer(pixelBuffer, this, v64);
  }

  v30 = v64;
  v31 = p_texture;
  v32 = v16;
  v33 = a6;
  if ((v27 & v64) != 1)
  {
    goto LABEL_41;
  }

  if (v26 <= 1751410031)
  {
    if (v26 > 1717855599)
    {
      if (v26 == 1717855600)
      {
        goto LABEL_41;
      }

      v34 = 1717856627;
    }

    else
    {
      if (v26 == 825306677)
      {
        goto LABEL_41;
      }

      v34 = 825437747;
    }
  }

  else if (v26 <= 1919365989)
  {
    if (v26 == 1751410032)
    {
      goto LABEL_41;
    }

    v34 = 1751411059;
  }

  else
  {
    if (v26 == 1919365990 || v26 == 1919365992)
    {
      goto LABEL_41;
    }

    v34 = 1932996149;
  }

  if (v26 == v34)
  {
    goto LABEL_41;
  }

  v36 = 0;
  if (v19 <= 1751410031)
  {
    if (v19 > 1717855599)
    {
      if (v19 == 1717855600)
      {
        goto LABEL_41;
      }

      v61 = 1717856627;
    }

    else
    {
      if (v19 == 825306677)
      {
        goto LABEL_41;
      }

      v61 = 825437747;
    }

LABEL_108:
    v35 = p_texture;
    if (v19 != v61)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v19 <= 1919365989)
  {
    if (v19 == 1751410032)
    {
      goto LABEL_41;
    }

    v61 = 1751411059;
    goto LABEL_108;
  }

  if (v19 != 1919365990 && v19 != 1932996149)
  {
    v61 = 1919365992;
    goto LABEL_108;
  }

LABEL_41:
  if (v27)
  {
    v35 = p_texture;
  }

  else
  {
    v35 = &v69;
  }

  if (v20 == v19)
  {
    p_texture = v35;
  }

  else
  {
    p_texture = v32;
  }

  v36 = v20 != v19;
LABEL_48:
  if (v65)
  {
    v37 = v32;
  }

  else
  {
    v37 = &v68;
  }

  v38 = !v36;
  if (v65)
  {
    v39 = !v27;
  }

  else
  {
    v39 = 1;
  }

  if ((v39 & v38) != 0)
  {
    v40 = v37;
  }

  else
  {
    v40 = v31;
  }

  pixelFormatType = v28;
  if (v27)
  {
    v41 = *v40;
    if (!*v40)
    {
      if (v36)
      {
        v42 = v20;
      }

      else
      {
        v42 = v28;
      }

      pixelBufferOut = 0;
      v43 = p_texture;
      v44 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      v46 = v44;
      p_texture = v43;
      v47 = v42;
      v30 = v64;
      if (CVPixelBufferCreate(v46, v23, v22, v47, BufferAttributes, &pixelBufferOut))
      {
        v41 = 0;
      }

      else
      {
        v41 = pixelBufferOut;
      }

      *v40 = v41;
    }

    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    result = PixelBufferUtils::cropAndScalePixelBuffer(this, v41, v30, v75, *MEMORY[0x277CBF3A0]);
  }

  else
  {
    result = 0;
  }

  if (result)
  {
    v48 = 1;
  }

  else
  {
    v48 = v38;
  }

  if ((v48 & 1) == 0)
  {
    v49 = *v35;
    if (!*v37)
    {
      v51 = p_texture;
      v52 = *v35;
      v53 = v30;
      v54 = CVPixelBufferGetWidth(v49);
      v55 = CVPixelBufferGetHeight(v52);
      pixelBufferOut = 0;
      v56 = *MEMORY[0x277CBECE8];
      v57 = getBufferAttributes();
      if (CVPixelBufferCreate(v56, v54, v55, pixelFormatType, v57, &pixelBufferOut))
      {
        v58 = 0;
      }

      else
      {
        v58 = pixelBufferOut;
      }

      if (PixelBufferUtils::convertPixelBufferFormat(v52, v58, v53))
      {
        CVPixelBufferRelease(v58);
        v58 = 0;
      }

      p_texture = v51;
      *v37 = v58;
      if (v58)
      {
        result = 0;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      LODWORD(v30) = v64;
      if (!v65)
      {
        goto LABEL_91;
      }

      goto LABEL_75;
    }

    result = PixelBufferUtils::convertPixelBufferFormat(v49, *v37, v30);
  }

  if (v65)
  {
LABEL_75:
    if (!result)
    {
      v50 = *p_texture;
      if (v68)
      {
        result = PixelBufferUtils::rotatePixelBuffer(v50, v68, v65, v30);
      }

      else if (PixelBufferUtils::createRotatedPixelBuffer(v50, v65, v30))
      {
        result = 0;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_91:
  if (!a5)
  {
    v59 = result;
    CVPixelBufferRelease(texture);
    result = v59;
  }

  if (!v33)
  {
    v60 = result;
    CVPixelBufferRelease(v66);
    return v60;
  }

  return result;
}

CVPixelBufferRef PixelBufferUtils::pixelBufferFromCGImage(PixelBufferUtils *this, CGImage *a2)
{
  v2 = a2;
  v26[3] = *MEMORY[0x277D85DE8];
  ColorSpace = CGImageGetColorSpace(this);
  BitsPerComponent = CGImageGetBitsPerComponent(this);
  BitmapInfo = CGImageGetBitmapInfo(this);
  Name = CGColorSpaceGetName(ColorSpace);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGColorSpaceGetName(DeviceRGB);
  if (!Name)
  {
    Name = v9;
    ColorSpace = DeviceRGB;
  }

  if (CFEqual(Name, v9))
  {
    BitmapInfo = 6;
    v10 = 32;
    ColorSpace = DeviceRGB;
  }

  else
  {
    v11 = *MEMORY[0x277CBF4B8];
    if (CFEqual(Name, *MEMORY[0x277CBF4B8]))
    {
      v12 = BitsPerComponent == 8;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || CFEqual(Name, *MEMORY[0x277CBF3E0]))
    {
      BitmapInfo = 6;
    }

    else
    {
      if (CFEqual(Name, v11) && BitsPerComponent == 32)
      {
        BitmapInfo = 257;
        v10 = 1380410945;
        goto LABEL_12;
      }

      if (!CFEqual(Name, *MEMORY[0x277CBF460]))
      {
        if (CFEqual(Name, *MEMORY[0x277CBF448]))
        {
          if (BitsPerComponent == 16)
          {
            v10 = 1647392359;
          }

          else
          {
            v10 = 1278226534;
          }

          if (BitsPerComponent == 16 || BitsPerComponent == 32)
          {
            goto LABEL_12;
          }

          NSLog(&cfstr_SDErrorThisCon.isa, "pixelBufferFromCGImage", 2713);
        }

        else
        {
          NSLog(&cfstr_SDErrorThisCon.isa, "pixelBufferFromCGImage", 2719);
        }

        return 0;
      }

      BitmapInfo = 2;
    }

    v10 = 32;
  }

LABEL_12:
  if (v2 == 1061109567)
  {
    v13 = v10;
  }

  else
  {
    v13 = v2;
  }

  Width = CGImageGetWidth(this);
  Height = CGImageGetHeight(this);
  v16 = *MEMORY[0x277CC4D68];
  v25[0] = *MEMORY[0x277CC4D70];
  v25[1] = v16;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v25[2] = *MEMORY[0x277CC4DE8];
  v26[2] = MEMORY[0x277CBEC10];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, v13, v17, &pixelBufferOut))
  {
    NSLog(&cfstr_SDErrorCouldNo.isa, "pixelBufferFromCGImage", 2743);
    CGColorSpaceRelease(DeviceRGB);
    v18 = 0;
  }

  else
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v21 = CGBitmapContextCreate(BaseAddress, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
    v22 = v21;
    if (v21)
    {
      v27.size.width = Width;
      v27.size.height = Height;
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      CGContextDrawImage(v21, v27, this);
      CGContextRelease(v22);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    }

    else
    {
      NSLog(&cfstr_SDErrorCouldNo_0.isa, "pixelBufferFromCGImage", 2765);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      CVPixelBufferRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }

    CGColorSpaceRelease(DeviceRGB);
    v18 = pixelBufferOut;
  }

  return v18;
}

void PixelBufferUtils::pixelBufferToImageFile(PixelBufferUtils *this, PixelBufferUtils *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = PixelBufferUtils::pixelBufferToCGImage(a2, a2);
  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  url = [v7 fileURLWithPath:v8];
  if (!a3)
  {
    a3 = @"public.png";
  }

  v9 = CGImageDestinationCreateWithURL(url, a3, 1uLL, 0);
  CGImageDestinationAddImage(v9, v6, 0);
  CGImageDestinationFinalize(v9);
  CFRelease(v9);
  CGImageRelease(v6);
}

CGImageRef PixelBufferUtils::pixelBufferToCGImage(PixelBufferUtils *this, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v5 = CVPixelBufferGetWidth(this);
  v6 = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v7, v5, v6, 0x20u, BufferAttributes, &pixelBufferOut))
  {
    v9 = 0;
  }

  else
  {
    v9 = pixelBufferOut;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(this, v9, 0))
  {
    CVPixelBufferRelease(v9);
    v9 = 0;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(v9, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v9);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
  v13 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 6u);
  CFRelease(DeviceRGB);
  Image = CGBitmapContextCreateImage(v13);
  CVPixelBufferUnlockBaseAddress(v9, 1uLL);
  CGContextRelease(v13);
  CVPixelBufferRelease(v9);
  return Image;
}

uint64_t PixelBufferUtils::pixelBufferFromRawFileWithBuffer(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  if (!v6)
  {
    NSLog(&cfstr_SDErrorFailedR.isa, "pixelBufferFromRawFileWithBuffer", 2882);
LABEL_16:
    v30 = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  v7 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v8 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (v8)
  {
    v55 = v6;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v12);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, v12);
      v14 += WidthOfPlane * v15 * CVPixelBufferGetHeightOfPlane(pixelBuffer, v12);
      v13 += CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v12++);
    }

    while (v8 != v12);
    v17 = [v55 length];
    if (v17 == v14 || [v55 length] == v13)
    {
      v18 = [v55 bytes];
      v57 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      if (PlaneCount)
      {
        if (v17 == v14)
        {
          for (i = 0; i != PlaneCount; ++i)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
            v22 = PixelBufferUtils::pixelSizeForPixelFormat(v57, i);
            v23 = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
            v26 = v23 * v22;
            if (HeightOfPlane)
            {
              v27 = BytesPerRowOfPlane;
              v28 = v18;
              v29 = HeightOfPlane;
              do
              {
                memcpy(BaseAddressOfPlane, v28, v26);
                BaseAddressOfPlane += v27;
                v28 += v26;
                --v29;
              }

              while (v29);
            }

            v18 += v26 * HeightOfPlane;
          }
        }

        else
        {
          for (j = 0; j != PlaneCount; ++j)
          {
            v45 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, j);
            v46 = PixelBufferUtils::pixelSizeForPixelFormat(v57, j);
            v47 = CVPixelBufferGetWidthOfPlane(pixelBuffer, j);
            v48 = CVPixelBufferGetHeightOfPlane(pixelBuffer, j);
            v49 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, j);
            v50 = v47 * v46;
            if (v48)
            {
              v51 = v49;
              v52 = 0;
              v53 = v48;
              do
              {
                memcpy(&v45[v52], (v18 + v52), v50);
                v52 += v51;
                --v53;
              }

              while (v53);
            }

            v18 += v50 * v48;
          }
        }
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      v30 = 0;
    }

    else
    {
      NSLog(&cfstr_SDErrorDataSiz.isa, "pixelBufferFromRawFileWithBuffer", 2926);
      v30 = 0xFFFFFFFFLL;
    }

    v6 = v55;
    goto LABEL_35;
  }

  v31 = BytesPerRow;
  v32 = [v6 length];
  v33 = Width * v7 * Height;
  if (v32 != v33 && [v6 length] != v31 * Height)
  {
    NSLog(&cfstr_SDErrorDataSiz.isa, "pixelBufferFromRawFileWithBuffer", 2902);
    goto LABEL_16;
  }

  v34 = [v6 bytes];
  v35 = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v36 = CVPixelBufferGetWidth(pixelBuffer);
  v37 = CVPixelBufferGetHeight(pixelBuffer);
  v38 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v39 = PixelBufferUtils::pixelSizeForPixelFormat(v35, 0);
  v40 = v39 * v36;
  if (v32 == v33)
  {
    v41 = v39 * v36;
  }

  else
  {
    v41 = v38;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (v37)
  {
    v43 = BaseAddress;
    do
    {
      memcpy(v43, v34, v40);
      v43 += v38;
      v34 += v41;
      --v37;
    }

    while (v37);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v30 = 0;
LABEL_35:

  return v30;
}

__CVBuffer *PixelBufferUtils::pixelBufferFromRawFile(PixelBufferUtils *this, unint64_t a2, size_t a3, OSType a4)
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v9 = v8;
  if (a4 == 1061109567)
  {
    v10 = [v8 pathExtension];
    v11 = [v10 UTF8String];
    a4 = PixelBufferUtils::pixelFormatFromFileExtension(v11, v12);

    if (!a4)
    {
      NSLog(&cfstr_SDErrorCannotR.isa, "pixelBufferFromRawFile", 2947);
      goto LABEL_23;
    }
  }

  if (!a2 || !a3)
  {
    if (a3 | a2)
    {
      NSLog(&cfstr_SDErrorBadDime.isa, "pixelBufferFromRawFile", 2956);
      goto LABEL_23;
    }

    v16 = [v9 stringByDeletingPathExtension];
    v17 = [v16 pathExtension];

    if ([v17 isEqualToString:&stru_28380C970])
    {
      NSLog(&cfstr_SDErrorDidNotF.isa, "pixelBufferFromRawFile", 2963);
    }

    else
    {
      v18 = [v17 lowercaseString];
      v19 = [v18 componentsSeparatedByString:@"x"];

      if ([v19 count] == 2)
      {
        a3 = [v19 objectAtIndexedSubscript:0];
        LODWORD(a2) = [a3 intValue];

        v20 = [v19 objectAtIndexedSubscript:1];
        LODWORD(a3) = [v20 intValue];

        v21 = 2980;
        v22 = @"%s:%d - ERROR - did not find dimensions in file name - width/height ill formatted";
        if (a2 && a3)
        {
          a2 = a2;
          a3 = a3;

          goto LABEL_5;
        }
      }

      else
      {
        v21 = 2969;
        v22 = @"%s:%d - ERROR - did not find dimensions in file name - extension ill formatted";
      }

      NSLog(&v22->isa, "pixelBufferFromRawFile", v21);
    }

    goto LABEL_23;
  }

LABEL_5:
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, a4, BufferAttributes, &pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  if (PixelBufferUtils::pixelBufferFromRawFileWithBuffer(this, v15, v14))
  {
    CVPixelBufferRelease(v15);
LABEL_23:
    v15 = 0;
  }

  return v15;
}

void PixelBufferUtils::pixelBufferToRawFile(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  if (!pixelBuffer)
  {
    return;
  }

  v3 = pixelBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  isPixelFormatCompressed = PixelBufferUtils::isPixelFormatCompressed(PixelFormatType);
  if (isPixelFormatCompressed)
  {
    v6 = PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelFormatType);
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v3);
    pixelBufferOut.__r_.__value_.__r.__words[0] = 0;
    v9 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    v11 = CVPixelBufferCreate(v9, Width, Height, v6, BufferAttributes, &pixelBufferOut);
    v12 = pixelBufferOut.__r_.__value_.__r.__words[0];
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = pixelBufferOut.__r_.__value_.__r.__words[0];
    }

    if (PixelBufferUtils::convertPixelBufferFormat(v3, v13, 1))
    {
      CVPixelBufferRelease(v13);
LABEL_8:
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, &pixelBufferOut);
      if ((pixelBufferOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_pixelBufferOut = &pixelBufferOut;
      }

      else
      {
        p_pixelBufferOut = pixelBufferOut.__r_.__value_.__r.__words[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "pixelBufferToRawFile", 3011, PixelFormatType, p_pixelBufferOut);
      goto LABEL_203;
    }

    v3 = v12;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v15 = strlen(this);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  *(&pixelBufferOut.__r_.__value_.__s + 23) = v15;
  if (v15)
  {
    memcpy(&pixelBufferOut, this, v15);
  }

  pixelBufferOut.__r_.__value_.__s.__data_[v16] = 0;
  v17 = MEMORY[0x277CBEBC0];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v19 = [v17 fileURLWithPath:v18];
  v20 = [v19 pathExtension];
  v21 = [v20 isEqualToString:&stru_28380C970];

  if (!v21)
  {
    goto LABEL_181;
  }

  std::string::append(&pixelBufferOut, ".");
  v22 = CVPixelBufferGetWidth(v3);
  v23 = CVPixelBufferGetHeight(v3);
  std::to_string(&v87, v22);
  v24 = std::string::append(&v87, "x");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v86, v23);
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v86;
  }

  else
  {
    v26 = v86.__r_.__value_.__r.__words[0];
  }

  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v86.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v88, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v90 = v28->__r_.__value_.__r.__words[2];
  *__p = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_65:
    operator delete(v88.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_66:
    operator delete(v87.__r_.__value_.__l.__data_);
    goto LABEL_29;
  }

  operator delete(v86.__r_.__value_.__l.__data_);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_65;
  }

LABEL_28:
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_29:
  if (v90 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if (v90 >= 0)
  {
    v31 = HIBYTE(v90);
  }

  else
  {
    v31 = __p[1];
  }

  std::string::append(&pixelBufferOut, v30, v31);
  std::string::append(&pixelBufferOut, ".");
  v32 = CVPixelBufferGetPixelFormatType(v3);
  PixelBufferUtils::pixelFormatAsString(v32, &v88);
  v33 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v36 = v88.__r_.__value_.__l.__size_;
  v35 = v88.__r_.__value_.__r.__words[0];
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v88;
  }

  else
  {
    v37 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v88.__r_.__value_.__l.__size_;
  }

  if (!v38)
  {
    goto LABEL_106;
  }

  v39 = v37;
  if (v38 < 8)
  {
LABEL_210:
    v83 = (v37 + v38);
    do
    {
      if (v39->__r_.__value_.__s.__data_[0] == 47)
      {
        v39->__r_.__value_.__s.__data_[0] = 58;
      }

      v39 = (v39 + 1);
    }

    while (v39 != v83);
    goto LABEL_105;
  }

  if (v38 < 0x10)
  {
    v40 = 0;
    goto LABEL_45;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFF0;
  v45 = &v37->__r_.__value_.__s.__data_[7];
  v46.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
  v46.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
  v47 = v38 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v48 = vceqq_s8(*(v45 - 7), v46);
    if (v48.i8[0])
    {
      *(v45 - 7) = 58;
      if ((v48.i8[1] & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else if ((v48.i8[1] & 1) == 0)
    {
LABEL_73:
      if (v48.i8[2])
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

    *(v45 - 6) = 58;
    if (v48.i8[2])
    {
LABEL_74:
      *(v45 - 5) = 58;
      if ((v48.i8[3] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_91;
    }

LABEL_90:
    if ((v48.i8[3] & 1) == 0)
    {
LABEL_75:
      if (v48.i8[4])
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }

LABEL_91:
    *(v45 - 4) = 58;
    if (v48.i8[4])
    {
LABEL_76:
      *(v45 - 3) = 58;
      if ((v48.i8[5] & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_93;
    }

LABEL_92:
    if ((v48.i8[5] & 1) == 0)
    {
LABEL_77:
      if (v48.i8[6])
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    }

LABEL_93:
    *(v45 - 2) = 58;
    if (v48.i8[6])
    {
LABEL_78:
      *(v45 - 1) = 58;
      if ((v48.i8[7] & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

LABEL_94:
    if ((v48.i8[7] & 1) == 0)
    {
LABEL_79:
      if (v48.i8[8])
      {
        goto LABEL_80;
      }

      goto LABEL_96;
    }

LABEL_95:
    *v45 = 58;
    if (v48.i8[8])
    {
LABEL_80:
      v45[1] = 58;
      if ((v48.i8[9] & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }

LABEL_96:
    if ((v48.i8[9] & 1) == 0)
    {
LABEL_81:
      if (v48.i8[10])
      {
        goto LABEL_82;
      }

      goto LABEL_98;
    }

LABEL_97:
    v45[2] = 58;
    if (v48.i8[10])
    {
LABEL_82:
      v45[3] = 58;
      if ((v48.i8[11] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

LABEL_98:
    if ((v48.i8[11] & 1) == 0)
    {
LABEL_83:
      if (v48.i8[12])
      {
        goto LABEL_84;
      }

      goto LABEL_100;
    }

LABEL_99:
    v45[4] = 58;
    if (v48.i8[12])
    {
LABEL_84:
      v45[5] = 58;
      if ((v48.i8[13] & 1) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_101;
    }

LABEL_100:
    if ((v48.i8[13] & 1) == 0)
    {
LABEL_85:
      if ((v48.i8[14] & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

LABEL_101:
    v45[6] = 58;
    if ((v48.i8[14] & 1) == 0)
    {
LABEL_102:
      if ((v48.i8[15] & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_103;
    }

LABEL_86:
    v45[7] = 58;
    if ((v48.i8[15] & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_103:
    v45[8] = 58;
LABEL_70:
    v45 += 16;
    v47 -= 16;
  }

  while (v47);
  if (v38 == v40)
  {
    goto LABEL_105;
  }

  if ((v38 & 8) == 0)
  {
    v39 = (v37 + v40);
    goto LABEL_210;
  }

LABEL_45:
  v41 = v38 & 0xFFFFFFFFFFFFFFF8;
  v42 = v40 - (v38 & 0xFFFFFFFFFFFFFFF8);
  v43 = &v37->__r_.__value_.__s.__data_[v40 + 3];
  while (2)
  {
    v44 = vceq_s8(*(v43 - 3), 0x2F2F2F2F2F2F2F2FLL);
    if (v44.i8[0])
    {
      *(v43 - 3) = 58;
      if ((v44.i8[1] & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_57:
      *(v43 - 2) = 58;
      if ((v44.i8[2] & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_50:
      *(v43 - 1) = 58;
      if ((v44.i8[3] & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_59:
      *v43 = 58;
      if ((v44.i8[4] & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_52:
      v43[1] = 58;
      if ((v44.i8[5] & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      v43[2] = 58;
      if ((v44.i8[6] & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_54:
      v43[3] = 58;
      if (v44.i8[7])
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v44.i8[1])
      {
        goto LABEL_57;
      }

LABEL_49:
      if (v44.i8[2])
      {
        goto LABEL_50;
      }

LABEL_58:
      if (v44.i8[3])
      {
        goto LABEL_59;
      }

LABEL_51:
      if (v44.i8[4])
      {
        goto LABEL_52;
      }

LABEL_60:
      if (v44.i8[5])
      {
        goto LABEL_61;
      }

LABEL_53:
      if (v44.i8[6])
      {
        goto LABEL_54;
      }

LABEL_62:
      if (v44.i8[7])
      {
LABEL_63:
        v43[4] = 58;
      }
    }

    v43 += 8;
    v42 += 8;
    if (v42)
    {
      continue;
    }

    break;
  }

  if (v38 != v41)
  {
    v39 = (v37 + v41);
    goto LABEL_210;
  }

LABEL_105:
  v33 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v36 = v88.__r_.__value_.__l.__size_;
  v35 = v88.__r_.__value_.__r.__words[0];
  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
LABEL_106:
  if ((v34 & 0x80u) == 0)
  {
    v49 = &v88;
  }

  else
  {
    v49 = v35;
  }

  if ((v34 & 0x80u) != 0)
  {
    v33 = v36;
  }

  if (!v33)
  {
    goto LABEL_173;
  }

  v50 = v49;
  if (v33 < 8)
  {
LABEL_216:
    v84 = (v49 + v33);
    do
    {
      if (v50->__r_.__value_.__s.__data_[0] == 46)
      {
        v50->__r_.__value_.__s.__data_[0] = 95;
      }

      v50 = (v50 + 1);
    }

    while (v50 != v84);
    goto LABEL_172;
  }

  if (v33 < 0x10)
  {
    v51 = 0;
    goto LABEL_115;
  }

  v51 = v33 & 0xFFFFFFFFFFFFFFF0;
  v56 = &v49->__r_.__value_.__s.__data_[7];
  v57.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v57.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v58 = v33 & 0xFFFFFFFFFFFFFFF0;
  while (2)
  {
    v59 = vceqq_s8(*(v56 - 7), v57);
    if (v59.i8[0])
    {
      *(v56 - 7) = 95;
      if ((v59.i8[1] & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_156:
      *(v56 - 6) = 95;
      if ((v59.i8[2] & 1) == 0)
      {
        goto LABEL_157;
      }

LABEL_141:
      *(v56 - 5) = 95;
      if ((v59.i8[3] & 1) == 0)
      {
        goto LABEL_142;
      }

LABEL_158:
      *(v56 - 4) = 95;
      if ((v59.i8[4] & 1) == 0)
      {
        goto LABEL_159;
      }

LABEL_143:
      *(v56 - 3) = 95;
      if ((v59.i8[5] & 1) == 0)
      {
        goto LABEL_144;
      }

LABEL_160:
      *(v56 - 2) = 95;
      if ((v59.i8[6] & 1) == 0)
      {
        goto LABEL_161;
      }

LABEL_145:
      *(v56 - 1) = 95;
      if ((v59.i8[7] & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_162:
      *v56 = 95;
      if ((v59.i8[8] & 1) == 0)
      {
        goto LABEL_163;
      }

LABEL_147:
      v56[1] = 95;
      if ((v59.i8[9] & 1) == 0)
      {
        goto LABEL_148;
      }

LABEL_164:
      v56[2] = 95;
      if ((v59.i8[10] & 1) == 0)
      {
        goto LABEL_165;
      }

LABEL_149:
      v56[3] = 95;
      if ((v59.i8[11] & 1) == 0)
      {
        goto LABEL_150;
      }

LABEL_166:
      v56[4] = 95;
      if ((v59.i8[12] & 1) == 0)
      {
        goto LABEL_167;
      }

LABEL_151:
      v56[5] = 95;
      if ((v59.i8[13] & 1) == 0)
      {
        goto LABEL_152;
      }

LABEL_168:
      v56[6] = 95;
      if ((v59.i8[14] & 1) == 0)
      {
        goto LABEL_169;
      }

LABEL_153:
      v56[7] = 95;
      if (v59.i8[15])
      {
        goto LABEL_170;
      }
    }

    else
    {
      if (v59.i8[1])
      {
        goto LABEL_156;
      }

LABEL_140:
      if (v59.i8[2])
      {
        goto LABEL_141;
      }

LABEL_157:
      if (v59.i8[3])
      {
        goto LABEL_158;
      }

LABEL_142:
      if (v59.i8[4])
      {
        goto LABEL_143;
      }

LABEL_159:
      if (v59.i8[5])
      {
        goto LABEL_160;
      }

LABEL_144:
      if (v59.i8[6])
      {
        goto LABEL_145;
      }

LABEL_161:
      if (v59.i8[7])
      {
        goto LABEL_162;
      }

LABEL_146:
      if (v59.i8[8])
      {
        goto LABEL_147;
      }

LABEL_163:
      if (v59.i8[9])
      {
        goto LABEL_164;
      }

LABEL_148:
      if (v59.i8[10])
      {
        goto LABEL_149;
      }

LABEL_165:
      if (v59.i8[11])
      {
        goto LABEL_166;
      }

LABEL_150:
      if (v59.i8[12])
      {
        goto LABEL_151;
      }

LABEL_167:
      if (v59.i8[13])
      {
        goto LABEL_168;
      }

LABEL_152:
      if (v59.i8[14])
      {
        goto LABEL_153;
      }

LABEL_169:
      if (v59.i8[15])
      {
LABEL_170:
        v56[8] = 95;
      }
    }

    v56 += 16;
    v58 -= 16;
    if (v58)
    {
      continue;
    }

    break;
  }

  if (v33 == v51)
  {
    goto LABEL_172;
  }

  if ((v33 & 8) == 0)
  {
    v50 = (v49 + v51);
    goto LABEL_216;
  }

LABEL_115:
  v52 = v33 & 0xFFFFFFFFFFFFFFF8;
  v53 = v51 - (v33 & 0xFFFFFFFFFFFFFFF8);
  v54 = &v49->__r_.__value_.__s.__data_[v51 + 3];
  while (2)
  {
    v55 = vceq_s8(*(v54 - 3), 0x2E2E2E2E2E2E2E2ELL);
    if (v55.i8[0])
    {
      *(v54 - 3) = 95;
      if ((v55.i8[1] & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_127:
      *(v54 - 2) = 95;
      if ((v55.i8[2] & 1) == 0)
      {
        goto LABEL_128;
      }

LABEL_120:
      *(v54 - 1) = 95;
      if ((v55.i8[3] & 1) == 0)
      {
        goto LABEL_121;
      }

LABEL_129:
      *v54 = 95;
      if ((v55.i8[4] & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_122:
      v54[1] = 95;
      if ((v55.i8[5] & 1) == 0)
      {
        goto LABEL_123;
      }

LABEL_131:
      v54[2] = 95;
      if ((v55.i8[6] & 1) == 0)
      {
        goto LABEL_132;
      }

LABEL_124:
      v54[3] = 95;
      if (v55.i8[7])
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v55.i8[1])
      {
        goto LABEL_127;
      }

LABEL_119:
      if (v55.i8[2])
      {
        goto LABEL_120;
      }

LABEL_128:
      if (v55.i8[3])
      {
        goto LABEL_129;
      }

LABEL_121:
      if (v55.i8[4])
      {
        goto LABEL_122;
      }

LABEL_130:
      if (v55.i8[5])
      {
        goto LABEL_131;
      }

LABEL_123:
      if (v55.i8[6])
      {
        goto LABEL_124;
      }

LABEL_132:
      if (v55.i8[7])
      {
LABEL_133:
        v54[4] = 95;
      }
    }

    v54 += 8;
    v53 += 8;
    if (v53)
    {
      continue;
    }

    break;
  }

  if (v33 != v52)
  {
    v50 = (v49 + v52);
    goto LABEL_216;
  }

LABEL_172:
  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v36 = v88.__r_.__value_.__l.__size_;
  v35 = v88.__r_.__value_.__r.__words[0];
LABEL_173:
  if ((v34 & 0x80u) == 0)
  {
    v60 = &v88;
  }

  else
  {
    v60 = v35;
  }

  if ((v34 & 0x80u) == 0)
  {
    v61 = v34;
  }

  else
  {
    v61 = v36;
  }

  std::string::append(&pixelBufferOut, v60, v61);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
    if (SHIBYTE(v90) < 0)
    {
      goto LABEL_207;
    }
  }

  else
  {
    if ((SHIBYTE(v90) & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_207:
    operator delete(__p[0]);
  }

LABEL_181:
  if ((pixelBufferOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &pixelBufferOut;
  }

  else
  {
    v62 = pixelBufferOut.__r_.__value_.__r.__words[0];
  }

  v63 = fopen(v62, "wb");
  if (v63)
  {
    if (CVPixelBufferGetPlaneCount(v3))
    {
      CVPixelBufferLockBaseAddress(v3, 1uLL);
      v64 = CVPixelBufferGetPixelFormatType(v3);
      PlaneCount = CVPixelBufferGetPlaneCount(v3);
      if (PlaneCount)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          v67 = PixelBufferUtils::pixelSizeForPixelFormat(v64, i);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v3, i);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v3, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v3, i);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v3, i);
          if (HeightOfPlane)
          {
            v72 = BaseAddressOfPlane;
            do
            {
              fwrite(v72, v67, WidthOfPlane, v63);
              v72 += BytesPerRowOfPlane;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
          }
        }
      }
    }

    else
    {
      CVPixelBufferLockBaseAddress(v3, 1uLL);
      v76 = CVPixelBufferGetPixelFormatType(v3);
      v77 = PixelBufferUtils::pixelSizeForPixelFormat(v76, 0);
      v78 = CVPixelBufferGetHeight(v3);
      v79 = CVPixelBufferGetWidth(v3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v3);
      BaseAddress = CVPixelBufferGetBaseAddress(v3);
      if (v78)
      {
        v82 = BaseAddress;
        do
        {
          fwrite(v82, v77, v79, v63);
          v82 += BytesPerRow;
          --v78;
        }

        while (v78);
      }
    }

    CVPixelBufferUnlockBaseAddress(v3, 1uLL);
  }

  else
  {
    if ((pixelBufferOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &pixelBufferOut;
    }

    else
    {
      v73 = pixelBufferOut.__r_.__value_.__r.__words[0];
    }

    v74 = __error();
    v75 = strerror(*v74);
    NSLog(&cfstr_SDErrorFailedO.isa, "pixelBufferToRawFile", 3036, v73, v75);
  }

  fclose(v63);
  if (isPixelFormatCompressed)
  {
    CVPixelBufferRelease(v3);
  }

LABEL_203:
  if (SHIBYTE(pixelBufferOut.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pixelBufferOut.__r_.__value_.__l.__data_);
  }
}

void sub_224739C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef PixelBufferUtils::pixelBufferFromImageFile(PixelBufferUtils *this, CGImage *a2)
{
  if (this)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v5 = [v3 fileURLWithPath:v4];

    v6 = CGImageSourceCreateWithURL(v5, 0);
    v7 = v6;
    if (v6)
    {
      if (CGImageSourceGetCount(v6))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
        v9 = PixelBufferUtils::pixelBufferFromCGImage(ImageAtIndex, a2);
        CGImageRelease(ImageAtIndex);
        CFRelease(v7);
LABEL_8:

        return v9;
      }

      CFRelease(v7);
    }

    v9 = 0;
    goto LABEL_8;
  }

  return 0;
}

__CVBuffer *PixelBufferUtils::blacken(__CVBuffer *this, __CVBuffer *a2)
{
  if (this)
  {
    v2 = this;
    PlaneCount = CVPixelBufferGetPlaneCount(this);
    CVPixelBufferLockBaseAddress(v2, 0);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v2, i);
        v6 = CVPixelBufferGetHeightOfPlane(v2, i) * BytesPerRowOfPlane;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v2, i);
        bzero(BaseAddressOfPlane, v6);
      }
    }

    else
    {
      DataSize = CVPixelBufferGetDataSize(v2);
      BaseAddress = CVPixelBufferGetBaseAddress(v2);
      bzero(BaseAddress, DataSize);
    }

    return CVPixelBufferUnlockBaseAddress(v2, 0);
  }

  return this;
}

float PixelBufferUtils::getTurboColor(PixelBufferUtils *this, float a2, float *a3, float *a4, float *a5)
{
  v5 = a2 * 255.0;
  v6 = v5;
  if (v5 + 1 < 0xFF)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 255;
  }

  v8 = v5 - truncf(v5);
  *this = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v6] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v7] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v6]) * v8);
  *a3 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v6] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v7] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v6]) * v8);
  result = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v6] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v7] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v6]) * v8);
  *a4 = result;
  return result;
}

float *PixelBufferUtils::getJetColor(float *this, float a2, float *a3, float *a4, float *a5)
{
  v5 = a2 * 4.0;
  *this = 1.5 - fabsf(v5 + -3.0);
  *a3 = 1.5 - fabsf(v5 + -2.0);
  *a4 = 1.5 - fabsf(v5 + -1.0);
  v6 = 0.0;
  if (*this <= 1.0)
  {
    v7 = *this;
  }

  else
  {
    v7 = 1.0;
  }

  if (*this >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  *this = v8;
  if (*a3 <= 1.0)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 1.0;
  }

  if (*a3 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  *a3 = v10;
  if (*a4 >= 0.0)
  {
    v6 = 1.0;
    if (*a4 <= 1.0)
    {
      v6 = *a4;
    }
  }

  *a4 = v6;
  return this;
}

uint64_t PixelBufferUtils::colorizedDepthPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, int a3, float a4, float a5, uint64_t a6, __CVBuffer *a7, __CVBuffer *a8)
{
  _S8 = a5;
  v13 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 0);
  memset(&v141, 0, sizeof(v141));
  v16 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v141);
  memset(&v140, 0, sizeof(v140));
  PixelBufferUtils::asVImageBuffer(a7, *v16, &v140);
  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType > 1751410031)
    {
      if (PixelFormatType != 1751410032 && PixelFormatType != 1751411059)
      {
        if (PixelFormatType != 1932996149)
        {
          goto LABEL_158;
        }

        goto LABEL_26;
      }

LABEL_12:
      v18 = *&v141.data;
      if (v13)
      {
        if (!v141.height)
        {
          goto LABEL_155;
        }

        width = v141.width;
        if (!v141.width)
        {
          goto LABEL_155;
        }

        v20 = 0;
        _H0 = *v141.data;
        __asm { FCVT            S8, H0 }

        a4 = _S8;
        do
        {
          v26 = (v141.data + v141.rowBytes * v20);
          v27 = 1;
          do
          {
            v28 = *v26++;
            _H0 = v28;
            __asm { FCVT            S0, H0 }

            if (_S8 > _S0)
            {
              _S8 = _S0;
            }

            if (a4 < _S0)
            {
              a4 = _S0;
            }

            v31 = v141.width > v27++;
          }

          while (v31);
          ++v20;
        }

        while (v141.height > v20);
      }

      else
      {
        if (!v141.height)
        {
          goto LABEL_155;
        }

        width = v141.width;
      }

      if (width)
      {
        v74 = 0;
        rowBytes = v140.rowBytes;
        v76 = v141.rowBytes;
        v77 = v140.data + 1;
        v78 = 1.0 / (a4 - _S8);
        do
        {
          v79 = (v18 + v76 * v74);
          v80 = 1;
          v81 = v77;
          if (a6)
          {
            do
            {
              _H3 = *v79;
              __asm { FCVT            S4, H3 }

              if (a3 && _S4 == 0.0)
              {
                v89 = 0;
              }

              else
              {
                v82 = (_S4 - _S8) * v78;
                if (v82 <= 1.0)
                {
                  v83 = (_S4 - _S8) * v78;
                }

                else
                {
                  v83 = 1.0;
                }

                v84 = v83 * 255.0;
                if (v82 >= 0.0)
                {
                  v85 = v84;
                }

                else
                {
                  v85 = 0.0;
                }

                v86 = (a6 + 12 * v85);
                v87 = *v86;
                v88 = v86[1];
                *(v81 - 1) = (v86[2] * 255.0);
                *v81 = (v88 * 255.0);
                v81[1] = (v87 * 255.0);
                v89 = -1;
              }

              v81[2] = v89;
              ++v79;
              v31 = width > v80++;
              v81 += 4;
            }

            while (v31);
          }

          else
          {
            do
            {
              _H3 = *v79;
              __asm { FCVT            S4, H3 }

              if (a3 && _S4 == 0.0)
              {
                v97 = 0;
              }

              else
              {
                v92 = (_S4 - _S8) * v78;
                if (v92 <= 1.0)
                {
                  v93 = (_S4 - _S8) * v78;
                }

                else
                {
                  v93 = 1.0;
                }

                v94 = v93 * 255.0;
                if (v92 >= 0.0)
                {
                  v95 = v94;
                }

                else
                {
                  v95 = 0.0;
                }

                v96 = v95;
                v97 = -1;
                if (v95 + 1 < 0xFF)
                {
                  v98 = v96 + 1;
                }

                else
                {
                  v98 = 255;
                }

                v99 = v95 - truncf(v95);
                v100 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v96] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v98] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v96]) * v99);
                v101 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v96];
                v102 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v98] - v101;
                v103 = ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v96] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v98] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v96]) * v99)) * 255.0);
                *(v81 - 1) = ((v101 + (v102 * v99)) * 255.0);
                *v81 = v103;
                v81[1] = (v100 * 255.0);
              }

              v81[2] = v97;
              ++v79;
              v31 = width > v80++;
              v81 += 4;
            }

            while (v31);
          }

          ++v74;
          v77 += rowBytes;
        }

        while (*(&v18 + 1) > v74);
      }

      goto LABEL_155;
    }

    if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
    {
      v67 = *&v141.data;
      if (v13)
      {
        if (!v141.height)
        {
          goto LABEL_155;
        }

        v68 = v141.width;
        if (!v141.width)
        {
          goto LABEL_155;
        }

        v69 = 0;
        _S8 = *v141.data;
        a4 = *v141.data;
        do
        {
          v70 = (v141.data + v141.rowBytes * v69);
          v71 = 1;
          do
          {
            v72 = *v70++;
            v73 = v72;
            if (v72 < _S8)
            {
              _S8 = v73;
            }

            if (a4 < v73)
            {
              a4 = v73;
            }

            v31 = v141.width > v71++;
          }

          while (v31);
          ++v69;
        }

        while (v141.height > v69);
      }

      else
      {
        if (!v141.height)
        {
          goto LABEL_155;
        }

        v68 = v141.width;
      }

      if (v68)
      {
        v106 = 0;
        v107 = v140.rowBytes;
        v108 = v141.rowBytes;
        v109 = v140.data + 1;
        v110 = 1.0 / (a4 - _S8);
        do
        {
          v111 = (v67 + v108 * v106);
          v112 = 1;
          v113 = v109;
          if (a6)
          {
            do
            {
              v122 = *v111;
              if (a3 && v122 == 0.0)
              {
                v121 = 0;
              }

              else
              {
                v114 = (v122 - _S8) * v110;
                if (v114 <= 1.0)
                {
                  v115 = v114;
                }

                else
                {
                  v115 = 1.0;
                }

                v116 = v115 * 255.0;
                if (v114 >= 0.0)
                {
                  v117 = v116;
                }

                else
                {
                  v117 = 0.0;
                }

                v118 = (a6 + 12 * v117);
                v119 = *v118;
                v120 = v118[1];
                *(v113 - 1) = (v118[2] * 255.0);
                *v113 = (v120 * 255.0);
                v113[1] = (v119 * 255.0);
                v121 = -1;
              }

              v113[2] = v121;
              ++v111;
              v31 = v68 > v112++;
              v113 += 4;
            }

            while (v31);
          }

          else
          {
            do
            {
              v135 = *v111;
              if (a3 && v135 == 0.0)
              {
                v128 = 0;
              }

              else
              {
                v123 = (v135 - _S8) * v110;
                if (v123 <= 1.0)
                {
                  v124 = v123;
                }

                else
                {
                  v124 = 1.0;
                }

                v125 = v124 * 255.0;
                if (v123 >= 0.0)
                {
                  v126 = v125;
                }

                else
                {
                  v126 = 0.0;
                }

                v127 = v126;
                v128 = -1;
                if (v126 + 1 < 0xFF)
                {
                  v129 = v127 + 1;
                }

                else
                {
                  v129 = 255;
                }

                v130 = v126 - truncf(v126);
                v131 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v127] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v129] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v127]) * v130);
                v132 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v127];
                v133 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v129] - v132;
                v134 = ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v127] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v129] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v127]) * v130)) * 255.0);
                *(v113 - 1) = ((v132 + (v133 * v130)) * 255.0);
                *v113 = v134;
                v113[1] = (v131 * 255.0);
              }

              v113[2] = v128;
              ++v111;
              v31 = v68 > v112++;
              v113 += 4;
            }

            while (v31);
          }

          ++v106;
          v109 += v107;
        }

        while (*(&v67 + 1) > v106);
      }

      goto LABEL_155;
    }

LABEL_158:
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v139 >= 0)
    {
      v137 = __p;
    }

    else
    {
      v137 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "colorizedDepthPixelBuffer", 3269, PixelFormatType, v137);
    if (v139 < 0)
    {
      operator delete(__p[0]);
    }

    CVPixelBufferUnlockBaseAddress(a7, 0);
    return 0xFFFFFFFFLL;
  }

  if (PixelFormatType <= 1278226535)
  {
    if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
    {
      goto LABEL_26;
    }

    goto LABEL_158;
  }

  if (PixelFormatType == 1278226536)
  {
    goto LABEL_12;
  }

  if (PixelFormatType != 1278226742 && PixelFormatType != 1647392359)
  {
    goto LABEL_158;
  }

LABEL_26:
  v32 = *&v141.data;
  if (v13)
  {
    if (v141.height)
    {
      v33 = v141.width;
      if (v141.width)
      {
        v34 = 0;
        LOWORD(v17) = *v141.data;
        _S8 = v17;
        a4 = v17;
        do
        {
          v35 = (v141.data + v141.rowBytes * v34);
          v36 = 1;
          do
          {
            v37 = *v35++;
            v38 = v37;
            if (_S8 > v37)
            {
              _S8 = v38;
            }

            if (a4 < v38)
            {
              a4 = v38;
            }

            v31 = v141.width > v36++;
          }

          while (v31);
          ++v34;
        }

        while (v141.height > v34);
        goto LABEL_40;
      }
    }
  }

  else if (v141.height)
  {
    v33 = v141.width;
    if (v141.width)
    {
LABEL_40:
      v39 = 0;
      v40 = v140.rowBytes;
      v41 = v141.rowBytes;
      v42 = v140.data + 1;
      v43 = 1;
      v44 = 1.0 / (a4 - _S8);
      do
      {
        if (v43)
        {
          v45 = (v32 + v41 * v39);
          v46 = 1;
          v47 = v42;
          if (a6)
          {
            do
            {
              LODWORD(v54) = *v45;
              if (!a3 || *v45)
              {
                v48 = (v54 - _S8) * v44;
                if (v48 <= 1.0)
                {
                  v49 = (v54 - _S8) * v44;
                }

                else
                {
                  v49 = 1.0;
                }

                v50 = v49 * 255.0;
                if (v48 >= 0.0)
                {
                  v51 = v50;
                }

                else
                {
                  v51 = 0.0;
                }

                v54 = (a6 + 12 * v51);
                v52 = *v54;
                v53 = v54[1];
                *(v47 - 1) = (v54[2] * 255.0);
                *v47 = (v53 * 255.0);
                v47[1] = (v52 * 255.0);
                LOBYTE(v54) = -1;
              }

              v47[2] = v54;
              ++v45;
              v31 = v33 > v46++;
              v47 += 4;
            }

            while (v31);
          }

          else
          {
            do
            {
              v60 = *v45;
              if (!a3 || *v45)
              {
                v55 = (v60 - _S8) * v44;
                if (v55 <= 1.0)
                {
                  v56 = (v60 - _S8) * v44;
                }

                else
                {
                  v56 = 1.0;
                }

                v57 = v56 * 255.0;
                if (v55 >= 0.0)
                {
                  v58 = v57;
                }

                else
                {
                  v58 = 0.0;
                }

                v59 = v58;
                LOBYTE(v60) = -1;
                if (v58 + 1 < 0xFF)
                {
                  v61 = v59 + 1;
                }

                else
                {
                  v61 = 255;
                }

                v62 = v58 - truncf(v58);
                v63 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v59] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v61] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v59]) * v62);
                v64 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v59];
                v65 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v61] - v64;
                v66 = ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v59] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v61] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v59]) * v62)) * 255.0);
                *(v47 - 1) = ((v64 + (v65 * v62)) * 255.0);
                *v47 = v66;
                v47[1] = (v63 * 255.0);
              }

              v47[2] = v60;
              ++v45;
              v31 = v33 > v46++;
              v47 += 4;
            }

            while (v31);
          }

          v43 = v33;
        }

        ++v39;
        v42 += v40;
      }

      while (*(&v32 + 1) > v39);
    }
  }

LABEL_155:
  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  if (a7)
  {
    CVPixelBufferUnlockBaseAddress(a7, 0);
  }

  return 0;
}

void sub_22473A8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef PixelBufferUtils::createColorizedDepthPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer **a3, float a4, float a5, uint64_t a6, __CVBuffer *a7, __CVBuffer *a8, float a9)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v19 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v19, Width, Height, 0x42475241u, BufferAttributes, &pixelBufferOut))
  {
    v22 = 0;
  }

  else
  {
    v22 = pixelBufferOut;
  }

  texture = v22;
  if (PixelBufferUtils::colorizedDepthPixelBuffer(this, a2, a3, a5, a4, a6, v22, v21))
  {
    CVPixelBufferRelease(v22);
    v22 = 0;
    texture = 0;
  }

  if (a7)
  {
    v23 = CVPixelBufferGetWidth(a7);
    v24 = CVPixelBufferGetHeight(a7);
    pixelBufferOut = 0;
    v25 = getBufferAttributes();
    if (CVPixelBufferCreate(v19, v23, v24, 0x42475241u, v25, &pixelBufferOut))
    {
      v26 = 0;
    }

    else
    {
      v26 = pixelBufferOut;
    }

    if (PixelBufferUtils::convertPixelBufferFormat(a7, v26, 0))
    {
      CVPixelBufferRelease(v26);
    }

    else if (v26)
    {
      *&v27 = a9;
      v31 = PixelBufferUtils::alphaBlend(v26, v22, &texture, v27, a3);
      CVPixelBufferRelease(v26);
      if (v31)
      {
        return texture;
      }

      goto LABEL_13;
    }

    CVPixelBufferRelease(v22);
    texture = 0;
    *&v28 = a9;
    v29 = PixelBufferUtils::alphaBlend(0, 0, &texture, v28, a3);
    CVPixelBufferRelease(0);
    if ((v29 & 1) == 0)
    {
LABEL_13:
      CVPixelBufferRelease(texture);
      return 0;
    }
  }

  return texture;
}

uint64_t PixelBufferUtils::alphaBlend(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer **a3, double a4, __CVBuffer **a5)
{
  v5 = a5;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v12 = CVPixelBufferGetPixelFormatType(a2);
  v13 = CVPixelBufferGetWidth(a2);
  v14 = CVPixelBufferGetHeight(a2);
  if (PixelFormatType == v12 && Width == v13 && Height == v14)
  {
    v15 = *a3;
    if (!*a3)
    {
      v16 = CVPixelBufferGetWidth(this);
      v17 = CVPixelBufferGetHeight(this);
      pixelBufferOut[0] = 0;
      v18 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      if (CVPixelBufferCreate(v18, v16, v17, PixelFormatType, BufferAttributes, pixelBufferOut))
      {
        v15 = 0;
      }

      else
      {
        v15 = pixelBufferOut[0];
      }

      *a3 = v15;
    }

    pixelBuffer = v15;
    v316 = v5;
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType > 875704437)
      {
        if (PixelFormatType > 1111970368)
        {
          if (PixelFormatType != 1111970369)
          {
            if (PixelFormatType != 1278226534)
            {
              if (PixelFormatType != 1278226536)
              {
                goto LABEL_285;
              }

LABEL_73:
              v65 = CVPixelBufferGetWidth(this);
              v66 = CVPixelBufferGetHeight(this);
              CVPixelBufferLockBaseAddress(v15, 0);
              CVPixelBufferLockBaseAddress(this, 1uLL);
              CVPixelBufferLockBaseAddress(a2, 1uLL);
              BytesPerRow = CVPixelBufferGetBytesPerRow(this);
              v68 = CVPixelBufferGetBytesPerRow(a2);
              v69 = CVPixelBufferGetBytesPerRow(v15);
              BaseAddress = CVPixelBufferGetBaseAddress(this);
              v71 = CVPixelBufferGetBaseAddress(a2);
              v72 = CVPixelBufferGetBaseAddress(v15);
              v73 = CVPixelBufferGetPixelFormatType(this);
              v74 = PixelBufferUtils::componentsPerPixelForPixelFormat(v73, 0);
              v75 = v74 * v65;
              if (v66)
              {
                v76 = v75 == 0;
              }

              else
              {
                v76 = 1;
              }

              v77 = v76;
              if (v316)
              {
                if ((v77 & 1) == 0)
                {
                  v78 = 0;
                  do
                  {
                    v79 = &BaseAddress->i8[v78 * BytesPerRow];
                    v80 = &v71->i8[v78 * v68];
                    v81 = v74 * v65;
                    v82 = &v72->i8[v78 * v69];
                    do
                    {
                      __asm { FCMP            H0, #0 }

                      if (_ZF)
                      {
                        _H0 = *v79;
                      }

                      else
                      {
                        __asm { FCVT            S0, H0 }

                        _H1 = *v79;
                        __asm { FCVT            S1, H1 }

                        _S0 = _S0 + ((_S1 - _S0) * *&a4);
                        __asm { FCVT            H0, S0 }
                      }

                      *v82 = _H0;
                      v82 += 2;
                      v79 += 2;
                      v80 += 2;
                      --v81;
                    }

                    while (v81);
                    ++v78;
                  }

                  while (v78 != v66);
                }

                goto LABEL_283;
              }

              if ((v77 & 1) == 0)
              {
                v90 = 0;
                v91 = v72 + 2 * v75 + v69 * (v66 - 1);
                v94 = v72 < (BaseAddress + 2 * v75 + BytesPerRow * (v66 - 1)) && BaseAddress < v91 || ((v69 | BytesPerRow) & 0x8000000000000000) != 0;
                v97 = v72 < (v71 + 2 * v75 + v68 * (v66 - 1)) && v71 < v91 || ((v69 | v68) & 0x8000000000000000) != 0 || v94;
                v98 = 2 * (v75 & 0xFFFFFFFFFFFFFFF8);
                v99 = vdupq_lane_s32(*&a4, 0);
                v100 = v72;
                v101 = v71;
                v102 = BaseAddress;
                do
                {
                  v103 = &BaseAddress->i8[v90 * BytesPerRow];
                  v104 = &v71->i8[v90 * v68];
                  v105 = &v72->i8[v90 * v69];
                  if (v75 < 8 || (v97 & 1) != 0)
                  {
                    v106 = 0;
                  }

                  else
                  {
                    v104 += v98;
                    v115 = v100;
                    v116 = v101;
                    v117 = v102;
                    v118 = v75 & 0xFFFFFFFFFFFFFFF8;
                    do
                    {
                      v119 = *v117++;
                      v120 = *v119.i8;
                      v121 = vcvt_hight_f32_f16(v119);
                      v122 = *v116++;
                      v123 = vcvt_hight_f32_f16(v122);
                      v124 = vcvtq_f32_f16(*v122.i8);
                      *v115++ = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v124, v99, vsubq_f32(vcvtq_f32_f16(v120), v124))), vmlaq_f32(v123, v99, vsubq_f32(v121, v123)));
                      v118 -= 8;
                    }

                    while (v118);
                    if (v75 == (v75 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_108;
                    }

                    v105 += v98;
                    v103 += v98;
                    v106 = v75 & 0xFFFFFFFFFFFFFFF8;
                  }

                  v107 = v75 - v106;
                  do
                  {
                    v108 = *v103;
                    v103 += 2;
                    _H1 = v108;
                    __asm { FCVT            S1, H1 }

                    v111 = *v104;
                    v104 += 2;
                    _H2 = v111;
                    __asm { FCVT            S2, H2 }

                    _S1 = _S2 + ((_S1 - _S2) * *&a4);
                    __asm { FCVT            H1, S1 }

                    *v105 = LOWORD(_S1);
                    v105 += 2;
                    --v107;
                  }

                  while (v107);
LABEL_108:
                  ++v90;
                  v102 = (v102 + BytesPerRow);
                  v101 = (v101 + v68);
                  v100 = (v100 + v69);
                }

                while (v90 != v66);
              }

LABEL_283:
              v20 = 1;
              CVPixelBufferUnlockBaseAddress(this, 1uLL);
              CVPixelBufferUnlockBaseAddress(a2, 1uLL);
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
              return v20;
            }

            goto LABEL_209;
          }

          goto LABEL_122;
        }

        if (PixelFormatType != 875704438)
        {
          v23 = 1094862674;
          goto LABEL_121;
        }

        goto LABEL_122;
      }

      if (PixelFormatType > 843264103)
      {
        if (PixelFormatType == 843264104)
        {
          goto LABEL_73;
        }

        v23 = 875704422;
LABEL_121:
        if (PixelFormatType == v23)
        {
          goto LABEL_122;
        }

LABEL_285:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, pixelBufferOut);
        if (v320 >= 0)
        {
          v284 = pixelBufferOut;
        }

        else
        {
          v284 = pixelBufferOut[0];
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "alphaBlend", 3985, PixelFormatType, v284);
        if (v320 < 0)
        {
          operator delete(pixelBufferOut[0]);
        }

        return 0;
      }

      if (PixelFormatType == 32)
      {
LABEL_122:
        v125 = CVPixelBufferGetWidth(this);
        v126 = CVPixelBufferGetHeight(this);
        CVPixelBufferLockBaseAddress(v15, 0);
        CVPixelBufferLockBaseAddress(this, 1uLL);
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        v127 = CVPixelBufferGetBytesPerRow(this);
        v128 = CVPixelBufferGetBytesPerRow(a2);
        v129 = CVPixelBufferGetBytesPerRow(v15);
        v130 = CVPixelBufferGetBaseAddress(this);
        v131 = CVPixelBufferGetBaseAddress(a2);
        v132 = CVPixelBufferGetBaseAddress(v15);
        v133 = CVPixelBufferGetPixelFormatType(this);
        v134 = PixelBufferUtils::componentsPerPixelForPixelFormat(v133, 0) * v125;
        if (v126)
        {
          v138 = v134 == 0;
        }

        else
        {
          v138 = 1;
        }

        v139 = v138;
        if (v316)
        {
          if (v139)
          {
            goto LABEL_283;
          }

          v140 = 0;
          v141 = &v132[v134 + v129 * (v126 - 1)];
          v144 = v132 < &v131->i8[v134 + v128 * (v126 - 1)] && v131 < v141 || ((v129 | v128) & 0x8000000000000000) != 0;
          v147 = v132 < &v130->i8[v134 + v127 * (v126 - 1)] && v130 < v141 || ((v129 | v127) & 0x8000000000000000) != 0 || v144;
          v148 = v134 & 0xFFFFFFFFFFFFFFF0;
          v149 = vdupq_lane_s32(*&a4, 0);
          v150 = v134 & 0xFFFFFFFFFFFFFFFCLL;
          v151 = v132;
          v152 = v131;
          v153 = v130;
          while (1)
          {
            v154 = &v130->i8[v140 * v127];
            v155 = &v131->i8[v140 * v128];
            v156 = &v132[v140 * v129];
            if (v134 < 4 || (v147 & 1) != 0)
            {
              v157 = 0;
              goto LABEL_153;
            }

            if (v134 >= 0x10)
            {
              v161 = v151;
              v162 = v152;
              v163 = v153;
              v164 = v134 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v165 = *v162++;
                v166 = v165;
                v167 = vceqzq_s8(v165);
                v168 = *v163++;
                v137.i32[1] = v168.i32[1];
                v169 = vqtbl1q_s8(v166, xmmword_2247A48B0);
                v170 = vqtbl1q_s8(v166, xmmword_2247A48A0);
                v171 = vqtbl1q_s8(v166, xmmword_2247A4890);
                v172 = vcvtq_f32_u32(vqtbl1q_s8(v166, xmmword_2247A4880));
                v173 = vcvtq_f32_u32(v171);
                v174 = vcvtq_f32_u32(v170);
                v175 = vcvtq_f32_u32(v169);
                v321.val[3] = vcvtq_u32_f32(vmlaq_f32(v175, v149, vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v168, xmmword_2247A48B0)), v175)));
                v321.val[2] = vcvtq_u32_f32(vmlaq_f32(v174, v149, vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v168, xmmword_2247A48A0)), v174)));
                v321.val[1] = vcvtq_u32_f32(vmlaq_f32(v173, v149, vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v168, xmmword_2247A4890)), v173)));
                v321.val[0] = vcvtq_u32_f32(vmlaq_f32(v172, v149, vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v168, xmmword_2247A4880)), v172)));
                v135 = vbslq_s8(v167, v168, vqtbl4q_s8(v321, xmmword_2247A4600));
                *v161++ = v135;
                v164 -= 16;
              }

              while (v164);
              if (v134 == v148)
              {
                goto LABEL_149;
              }

              v160 = v134 & 0xFFFFFFFFFFFFFFF0;
              if ((v134 & 0xC) == 0)
              {
                v154 += v148;
                v155 += v148;
                v156 += v148;
                v157 = v134 & 0xFFFFFFFFFFFFFFF0;
LABEL_153:
                v158 = v134 - v157;
                do
                {
                  v159 = *v154;
                  if (*v155)
                  {
                    v159 = (*v155 + ((v159 - *v155) * *&a4));
                  }

                  *v156++ = v159;
                  ++v154;
                  ++v155;
                  --v158;
                }

                while (v158);
                goto LABEL_149;
              }
            }

            else
            {
              v160 = 0;
            }

            v155 += v150;
            do
            {
              v135.i32[0] = *(v152->i32 + v160);
              v176 = vmovl_u8(*v135.f32).u64[0];
              v177 = vceqz_s16(v176);
              v137.i32[0] = *(v153->i32 + v160);
              v137 = vmovl_u8(v137).u64[0];
              v135 = vcvtq_f32_u32(vmovl_u16(v176));
              *v135.f32 = vuzp1_s8(vbsl_s8(v177, v137, vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v135, v149, vsubq_f32(vcvtq_f32_u32(vmovl_u16(v137)), v135))))), *v149.f32);
              *(v151->i32 + v160) = v135.i32[0];
              v160 += 4;
            }

            while (v150 != v160);
            if (v134 != v150)
            {
              v156 += v150;
              v154 += v150;
              v157 = v134 & 0xFFFFFFFFFFFFFFFCLL;
              goto LABEL_153;
            }

LABEL_149:
            ++v140;
            v153 = (v153 + v127);
            v152 = (v152 + v128);
            v151 = (v151 + v129);
            if (v140 == v126)
            {
              goto LABEL_283;
            }
          }
        }

        if (v139)
        {
          goto LABEL_283;
        }

        v178 = 0;
        v179 = &v132[v134 + v129 * (v126 - 1)];
        v182 = v132 < &v130->i8[v134 + v127 * (v126 - 1)] && v130 < v179 || ((v129 | v127) & 0x8000000000000000) != 0;
        v185 = v132 < &v131->i8[v134 + v128 * (v126 - 1)] && v131 < v179 || ((v129 | v128) & 0x8000000000000000) != 0 || v182;
        v186 = v134 & 0xFFFFFFFFFFFFFFF0;
        v187 = vdupq_lane_s32(*&a4, 0);
        v188 = v134 & 0xFFFFFFFFFFFFFFFCLL;
        v189 = v132;
        v190 = v131;
        v191 = v130;
        while (1)
        {
          v192 = &v130->i8[v178 * v127];
          v193 = &v131->i8[v178 * v128];
          v194 = &v132[v178 * v129];
          if (v134 < 4 || (v185 & 1) != 0)
          {
            v195 = 0;
            goto LABEL_192;
          }

          if (v134 >= 0x10)
          {
            v201 = v189;
            v202 = v190;
            v203 = v191;
            v204 = v134 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v205 = *v203++;
              v206 = vcvtq_f32_u32(vqtbl1q_s8(v205, xmmword_2247A4880));
              v207 = vcvtq_f32_u32(vqtbl1q_s8(v205, xmmword_2247A4890));
              v208 = vcvtq_f32_u32(vqtbl1q_s8(v205, xmmword_2247A48A0));
              v209 = vcvtq_f32_u32(vqtbl1q_s8(v205, xmmword_2247A48B0));
              v210 = *v202++;
              v211 = vcvtq_f32_u32(vqtbl1q_s8(v210, xmmword_2247A4880));
              v212 = vcvtq_f32_u32(vqtbl1q_s8(v210, xmmword_2247A4890));
              v213 = vcvtq_f32_u32(vqtbl1q_s8(v210, xmmword_2247A48A0));
              v214 = vcvtq_f32_u32(vqtbl1q_s8(v210, xmmword_2247A48B0));
              v136 = vsubq_f32(v209, v214);
              v322.val[3] = vcvtq_u32_f32(vmlaq_f32(v214, v187, v136));
              v322.val[2] = vcvtq_u32_f32(vmlaq_f32(v213, v187, vsubq_f32(v208, v213)));
              v322.val[1] = vcvtq_u32_f32(vmlaq_f32(v212, v187, vsubq_f32(v207, v212)));
              v322.val[0] = vcvtq_u32_f32(vmlaq_f32(v211, v187, vsubq_f32(v206, v211)));
              v135 = vqtbl4q_s8(v322, xmmword_2247A4600);
              *v201++ = v135;
              v204 -= 16;
            }

            while (v204);
            if (v134 == v186)
            {
              goto LABEL_188;
            }

            v200 = v134 & 0xFFFFFFFFFFFFFFF0;
            if ((v134 & 0xC) == 0)
            {
              v192 += v186;
              v193 += v186;
              v194 += v186;
              v195 = v134 & 0xFFFFFFFFFFFFFFF0;
              goto LABEL_192;
            }
          }

          else
          {
            v200 = 0;
          }

          v193 += v188;
          do
          {
            v135.i32[0] = *(v191->i32 + v200);
            v136.i32[0] = *(v190->i32 + v200);
            v215 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v136.f32)));
            v136 = vmlaq_f32(v215, v187, vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v135.f32))), v215));
            *v135.f32 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v136)), *v187.f32);
            *(v189->i32 + v200) = v135.i32[0];
            v200 += 4;
          }

          while (v188 != v200);
          if (v134 == v188)
          {
            goto LABEL_188;
          }

          v194 += v188;
          v192 += v188;
          v195 = v134 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_192:
          v196 = v134 - v195;
          do
          {
            v197 = *v192++;
            v198 = v197;
            v199 = *v193++;
            *v194++ = (v199 + ((v198 - v199) * *&a4));
            --v196;
          }

          while (v196);
LABEL_188:
          ++v178;
          v191 = (v191 + v127);
          v190 = (v190 + v128);
          v189 = (v189 + v129);
          if (v178 == v126)
          {
            goto LABEL_283;
          }
        }
      }

      v22 = 825437747;
      goto LABEL_33;
    }

    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType == 1380411457)
        {
          goto LABEL_73;
        }

        v22 = 1647392359;
LABEL_33:
        if (PixelFormatType != v22)
        {
          goto LABEL_285;
        }

        v24 = CVPixelBufferGetWidth(this);
        v25 = CVPixelBufferGetHeight(this);
        CVPixelBufferLockBaseAddress(v15, 0);
        CVPixelBufferLockBaseAddress(this, 1uLL);
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        v26 = CVPixelBufferGetBytesPerRow(this);
        v27 = CVPixelBufferGetBytesPerRow(a2);
        v28 = CVPixelBufferGetBytesPerRow(v15);
        v29 = CVPixelBufferGetBaseAddress(this);
        v30 = CVPixelBufferGetBaseAddress(a2);
        v31 = CVPixelBufferGetBaseAddress(v15);
        v32 = CVPixelBufferGetPixelFormatType(this);
        v33 = PixelBufferUtils::componentsPerPixelForPixelFormat(v32, 0) * v24;
        if (v25)
        {
          _ZF = v33 == 0;
        }

        else
        {
          _ZF = 1;
        }

        v35 = _ZF;
        if (v316)
        {
          if (v35)
          {
            goto LABEL_283;
          }

          v36 = 0;
          v37 = v31 + 2 * v33 + v28 * (v25 - 1);
          v40 = v31 < (v30 + 2 * v33 + v27 * (v25 - 1)) && v30 < v37 || ((v28 | v27) & 0x8000000000000000) != 0;
          v43 = v31 < (v29 + 2 * v33 + v26 * (v25 - 1)) && v29 < v37 || ((v28 | v26) & 0x8000000000000000) != 0 || v40;
          v44 = 2 * (v33 & 0xFFFFFFFFFFFFFFF8);
          v45 = vdupq_lane_s32(*&a4, 0);
          v46 = v31;
          v47 = v30;
          v48 = v29;
          while (1)
          {
            v49 = &v29->i8[v36 * v26];
            v50 = &v30->i8[v36 * v27];
            v51 = &v31->i8[v36 * v28];
            if (v33 < 8 || (v43 & 1) != 0)
            {
              break;
            }

            v50 += v44;
            v55 = v46;
            v56 = v47;
            v57 = v48;
            v58 = v33 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v59 = *v56++;
              v60 = v59;
              v61 = vceqzq_s16(v59);
              v62 = *v57++;
              v63 = vcvtq_f32_u32(vmovl_u16(*v60.i8));
              v64 = vcvtq_f32_u32(vmovl_high_u16(v60));
              *v55++ = vbslq_s8(v61, v62, vuzp1q_s16(vcvtq_u32_f32(vmlaq_f32(v63, v45, vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v62.i8)), v63))), vcvtq_u32_f32(vmlaq_f32(v64, v45, vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(v62)), v64)))));
              v58 -= 8;
            }

            while (v58);
            if (v33 != (v33 & 0xFFFFFFFFFFFFFFF8))
            {
              v51 += v44;
              v49 += v44;
              v52 = v33 & 0xFFFFFFFFFFFFFFF8;
LABEL_65:
              v53 = v33 - v52;
              do
              {
                v54 = *v49;
                if (*v50)
                {
                  v54 = (*v50 + ((v54 - *v50) * *&a4));
                }

                *v51 = v54;
                v51 += 2;
                v49 += 2;
                v50 += 2;
                --v53;
              }

              while (v53);
            }

            ++v36;
            v48 = (v48 + v26);
            v47 = (v47 + v27);
            v46 = (v46 + v28);
            if (v36 == v25)
            {
              goto LABEL_283;
            }
          }

          v52 = 0;
          goto LABEL_65;
        }

        if (v35)
        {
          goto LABEL_283;
        }

        v285 = 0;
        v286 = v31 + 2 * v33 + v28 * (v25 - 1);
        v289 = v31 < (v29 + 2 * v33 + v26 * (v25 - 1)) && v29 < v286 || ((v28 | v26) & 0x8000000000000000) != 0;
        v292 = v31 < (v30 + 2 * v33 + v27 * (v25 - 1)) && v30 < v286 || ((v28 | v27) & 0x8000000000000000) != 0 || v289;
        v293 = 2 * (v33 & 0xFFFFFFFFFFFFFFF8);
        v294 = vdupq_lane_s32(*&a4, 0);
        v295 = v31;
        v296 = v30;
        v297 = v29;
        while (1)
        {
          v298 = &v29->i8[v285 * v26];
          v299 = &v30->i8[v285 * v27];
          v300 = &v31->i8[v285 * v28];
          if (v33 < 8 || (v292 & 1) != 0)
          {
            v301 = 0;
          }

          else
          {
            v299 += v293;
            v306 = v295;
            v307 = v296;
            v308 = v297;
            v309 = v33 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v310 = *v308++;
              v311 = vcvtq_f32_u32(vmovl_u16(*v310.i8));
              v312 = vcvtq_f32_u32(vmovl_high_u16(v310));
              v313 = *v307++;
              v314 = vcvtq_f32_u32(vmovl_u16(*v313.i8));
              v315 = vcvtq_f32_u32(vmovl_high_u16(v313));
              *v306++ = vuzp1q_s16(vcvtq_u32_f32(vmlaq_f32(v314, v294, vsubq_f32(v311, v314))), vcvtq_u32_f32(vmlaq_f32(v315, v294, vsubq_f32(v312, v315))));
              v309 -= 8;
            }

            while (v309);
            if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_309;
            }

            v300 += v293;
            v298 += v293;
            v301 = v33 & 0xFFFFFFFFFFFFFFF8;
          }

          v302 = v33 - v301;
          do
          {
            v303 = *v298;
            v298 += 2;
            v304 = v303;
            v305 = *v299;
            v299 += 2;
            *v300 = (v305 + ((v304 - v305) * *&a4));
            v300 += 2;
            --v302;
          }

          while (v302);
LABEL_309:
          ++v285;
          v297 = (v297 + v26);
          v296 = (v296 + v27);
          v295 = (v295 + v28);
          if (v285 == v25)
          {
            goto LABEL_283;
          }
        }
      }

      if (PixelFormatType == 1380401729)
      {
        goto LABEL_122;
      }

      v21 = 1380410945;
    }

    else if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType == 1717855600)
      {
        goto LABEL_209;
      }

      v21 = 1717856627;
    }

    else
    {
      if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
      {
        goto LABEL_73;
      }

      v21 = 1919365990;
    }

    if (PixelFormatType != v21)
    {
      goto LABEL_285;
    }

LABEL_209:
    v216 = CVPixelBufferGetWidth(this);
    v217 = CVPixelBufferGetHeight(this);
    CVPixelBufferLockBaseAddress(v15, 0);
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    v218 = CVPixelBufferGetBytesPerRow(this);
    v219 = CVPixelBufferGetBytesPerRow(a2);
    v220 = CVPixelBufferGetBytesPerRow(v15);
    v221 = CVPixelBufferGetBaseAddress(this);
    v222 = CVPixelBufferGetBaseAddress(a2);
    v223 = CVPixelBufferGetBaseAddress(v15);
    v224 = CVPixelBufferGetPixelFormatType(this);
    v225 = PixelBufferUtils::componentsPerPixelForPixelFormat(v224, 0) * v216;
    if (v217)
    {
      v226 = v225 == 0;
    }

    else
    {
      v226 = 1;
    }

    v227 = v226;
    if (v316)
    {
      if (v227)
      {
        goto LABEL_283;
      }

      v254 = 0;
      v255 = &v223[4 * v225 + v220 * (v217 - 1)];
      v258 = v223 < &v222->i8[4 * v225 + v219 * (v217 - 1)] && v222 < v255 || ((v220 | v219) & 0x8000000000000000) != 0;
      v261 = v223 < &v221->i8[4 * v225 + v218 * (v217 - 1)] && v221 < v255 || ((v220 | v218) & 0x8000000000000000) != 0 || v258;
      v262 = 4 * (v225 & 0xFFFFFFFFFFFFFFF8);
      v263 = vdupq_lane_s32(*&a4, 0);
      v264 = (v223 + 16);
      v265 = v221 + 1;
      v266 = v222 + 1;
      while (1)
      {
        v267 = (v221->i32 + v254 * v218);
        v268 = (v222->f32 + v254 * v219);
        v269 = &v223[v254 * v220];
        if (v225 < 8 || (v261 & 1) != 0)
        {
          break;
        }

        v268 = (v268 + v262);
        v278 = v266;
        v279 = v265;
        v280 = v264;
        v281 = v225 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v282 = vbslq_s8(vceqzq_f32(*v278), *v279, vmlaq_f32(*v278, v263, vsubq_f32(*v279, *v278)));
          v280[-1] = vbslq_s8(vceqzq_f32(v278[-1]), v279[-1], vmlaq_f32(v278[-1], v263, vsubq_f32(v279[-1], v278[-1])));
          *v280 = v282;
          v280 += 2;
          v279 += 2;
          v278 += 2;
          v281 -= 8;
        }

        while (v281);
        if (v225 != (v225 & 0xFFFFFFFFFFFFFFF8))
        {
          v269 = (v269 + v262);
          v267 = (v267 + v262);
          v270 = v225 & 0xFFFFFFFFFFFFFFF8;
LABEL_272:
          v271 = v225 - v270;
          do
          {
            v272 = *v268++;
            v273 = v272;
            v274 = *v267++;
            v275 = v274;
            v276 = v273 + ((v274 - v273) * *&a4);
            if (v273 == 0.0)
            {
              v277 = v275;
            }

            else
            {
              v277 = v276;
            }

            *v269++ = v277;
            --v271;
          }

          while (v271);
        }

        ++v254;
        v264 = (v264 + v220);
        v265 = (v265 + v218);
        v266 = (v266 + v219);
        if (v254 == v217)
        {
          goto LABEL_283;
        }
      }

      v270 = 0;
      goto LABEL_272;
    }

    if (v227)
    {
      goto LABEL_283;
    }

    v228 = 0;
    v229 = &v223[4 * v225 + v220 * (v217 - 1)];
    v232 = v223 < &v221->i8[4 * v225 + v218 * (v217 - 1)] && v221 < v229 || ((v220 | v218) & 0x8000000000000000) != 0;
    v235 = v223 < &v222->i8[4 * v225 + v219 * (v217 - 1)] && v222 < v229 || ((v220 | v219) & 0x8000000000000000) != 0 || v232;
    v236 = 4 * (v225 & 0xFFFFFFFFFFFFFFF8);
    v237 = vdupq_lane_s32(*&a4, 0);
    v238 = (v223 + 16);
    v239 = &v221[1];
    v240 = v222 + 1;
    while (1)
    {
      v241 = (v221->i32 + v228 * v218);
      v242 = (v222->f32 + v228 * v219);
      v243 = &v223[v228 * v220];
      if (v225 < 8 || (v235 & 1) != 0)
      {
        v244 = 0;
      }

      else
      {
        v242 = (v242 + v236);
        v249 = v240;
        v250 = v239;
        v251 = v238;
        v252 = v225 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v253 = vmlaq_f32(*v249, v237, vsubq_f32(*v250, *v249));
          v251[-1] = vmlaq_f32(v249[-1], v237, vsubq_f32(v250[-1], v249[-1]));
          *v251 = v253;
          v251 += 2;
          v250 += 2;
          v249 += 2;
          v252 -= 8;
        }

        while (v252);
        if (v225 == (v225 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_238;
        }

        v243 = (v243 + v236);
        v241 = (v241 + v236);
        v244 = v225 & 0xFFFFFFFFFFFFFFF8;
      }

      v245 = v225 - v244;
      do
      {
        v246 = *v241++;
        v247 = v246;
        v248 = *v242++;
        *v243++ = v248 + ((v247 - v248) * *&a4);
        --v245;
      }

      while (v245);
LABEL_238:
      ++v228;
      v238 = (v238 + v220);
      v239 = (v239 + v218);
      v240 = (v240 + v219);
      if (v228 == v217)
      {
        goto LABEL_283;
      }
    }
  }

  NSLog(&cfstr_SDErrorCannotA.isa, "alphaBlend", 3934);
  return 0;
}

void sub_22473BC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::colorizePointCloudOnPixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, unint64_t a3, const CGPoint *a4, const float *a5, float a6, float a7, float a8)
{
  if (a8 <= 0.0)
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
  }

  operator new[]();
}

void sub_22473BEC4(_Unwind_Exception *a1)
{
  MEMORY[0x22AA53170](v5, v1);
  MEMORY[0x22AA53170](v4, v1);
  MEMORY[0x22AA53170](v3, v1);
  MEMORY[0x22AA53170](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t PixelBufferUtils::addCirclesToPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, float a3, uint64_t a4, CGPoint *a5, float *a6, float *a7, float *a8, const float *a9)
{
  if (!this || !a4 || (v9 = a5) == 0 || (v10 = a6) == 0 || (v11 = a7) == 0 || (v12 = a8) == 0)
  {
    NSLog(&cfstr_SDErrorCannotA_2.isa, a2, a4, a5, a6, a7, a8, a9, "addCirclesToPixelBuffer", 4067);
    return 0;
  }

  v13 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  if (PixelFormatType != 1111970369)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v40 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "addCirclesToPixelBuffer", 4077, PixelFormatType, v37);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v19 = Height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(this, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v23 = CGBitmapContextCreate(BaseAddress, Width, v19, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
  if (v13)
  {
    v24 = v19;
    v25 = (a4 + 8);
    do
    {
      v26 = *(v25 - 1);
      v27 = v24 - *v25;
      v28 = *v9++;
      v29 = v28;
      v30 = *v10++;
      v31 = v30;
      v32 = *v11++;
      v33 = v32;
      v34 = *v12++;
      GenericRGB = CGColorCreateGenericRGB(v29, v31, v33, v34);
      CGContextSetFillColorWithColor(v23, GenericRGB);
      v41.origin.x = (v26 - a3);
      v41.origin.y = (v27 - a3);
      v41.size.width = (a3 + a3);
      v41.size.height = v41.size.width;
      CGContextFillEllipseInRect(v23, v41);
      CFRelease(GenericRGB);
      v25 += 2;
      v13 = (v13 - 1);
    }

    while (v13);
  }

  CVPixelBufferUnlockBaseAddress(this, 0);
  CFRelease(DeviceRGB);
  CGContextRelease(v23);
  return 1;
}

void sub_22473C150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::createColorizedPointCloud(PixelBufferUtils *this, unint64_t a2, const CGPoint *a3, const float *a4, size_t a5, const float *a6, float a7, float a8, float a9)
{
  pixelBufferOut = 0;
  v18 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v21 = CVPixelBufferCreate(v18, a4, a5, 0x42475241u, BufferAttributes, &pixelBufferOut);
  result = 0;
  v23 = pixelBufferOut;
  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = pixelBufferOut == 0;
  }

  if (!v24)
  {
    PixelBufferUtils::blacken(pixelBufferOut, v20);
    PixelBufferUtils::colorizePointCloudOnPixelBuffer(v23, this, a2, a3, a6, a7, a8, a9);
  }

  return result;
}

__CVBuffer *PixelBufferUtils::createPixelBufferCopy(PixelBufferUtils *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v8 = 0;
  }

  else
  {
    v8 = pixelBufferOut;
  }

  v9 = CVPixelBufferGetPixelFormatType(this);
  if (v9 != CVPixelBufferGetPixelFormatType(v8) || copyPixelBufferVImage(v8, *MEMORY[0x277CBF348], this, *MEMORY[0x277CBF3A0]))
  {
    CVPixelBufferRelease(v8);
    return 0;
  }

  return v8;
}

CVPixelBufferRef PixelBufferUtils::asPixelBuffer(unint64_t this, size_t a2, PixelBufferUtils *a3, char *a4, void *a5)
{
  planeWidth[3] = *MEMORY[0x277D85DE8];
  if (PixelBufferUtils::planeCountForPixelFormat(a3))
  {
    v25 = 0;
    v9 = PixelBufferUtils::planeCountForPixelFormat(a3);
    if ((v9 - 4) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v12 = v9;
      planeWidth[1] = this;
      planeWidth[2] = this;
      planeHeight[1] = a2;
      planeHeight[2] = a2;
      v27[1] = this;
      v27[2] = this;
      planeBaseAddress[1] = 0;
      planeBaseAddress[2] = 0;
      planeBaseAddress[0] = a4;
      v13 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a3, 0);
      v14 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a3, 0);
      v15 = PixelBufferUtils::pixelSizeForPixelFormat(a3, 0) / v13 * this;
      v27[0] = v15;
      v24 = a2;
      planeWidth[0] = this / v13;
      v16 = a2 / v14;
      planeHeight[0] = a2 / v14;
      if (v12 != 1)
      {
        v17 = 1;
        do
        {
          v18 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a3, v17);
          v19 = v12;
          v20 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a3, v17);
          v21 = v27[v17] * (PixelBufferUtils::pixelSizeForPixelFormat(a3, v17) / v18);
          v27[v17] = v21;
          planeWidth[v17] /= v18;
          a4 += v16 * v15;
          v16 = planeHeight[v17] / v20;
          v12 = v19;
          planeHeight[v17] = v16;
          planeBaseAddress[v17++] = a4;
          v15 = v21;
        }

        while (v19 != v17);
      }

      v22 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      CVPixelBufferCreateWithPlanarBytes(v22, this, v24, a3, 0, 0, v12, planeBaseAddress, planeWidth, planeHeight, v27, 0, 0, BufferAttributes, &v25);
      return v25;
    }

    else
    {
      NSLog(&cfstr_SDErrorOnlyUpT.isa, "asPixelBufferMultiPlane", 3452);
      return 0;
    }
  }

  else
  {
    planeWidth[0] = 0;
    v11 = PixelBufferUtils::pixelSizeForPixelFormat(a3, 0);
    CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], this, a2, a3, a4, v11 * this, 0, 0, 0, planeWidth);
    return planeWidth[0];
  }
}

void PixelBufferUtils::inPlaceColorScaling(PixelBufferUtils *this, __CVBuffer *a2, float a3, float a4, int a5)
{
  v45 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v9 = PixelFormatType;
  if (PixelFormatType <= 1380401728)
  {
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType > 825437746)
      {
        if (PixelFormatType != 825437747)
        {
          if (PixelFormatType != 843264104)
          {
            if (PixelFormatType != 875704422)
            {
              goto LABEL_85;
            }

            goto LABEL_77;
          }

          goto LABEL_65;
        }

        goto LABEL_25;
      }

      if (PixelFormatType != 32)
      {
        v11 = 825306677;
LABEL_24:
        if (PixelFormatType == v11)
        {
LABEL_25:
          CVPixelBufferLockBaseAddress(this, 0);
          v46 = CVPixelBufferGetPixelFormatType(this);
          PlaneCount = CVPixelBufferGetPlaneCount(this);
          v13 = PlaneCount;
          v14 = 0;
          v15 = 0;
          if (PlaneCount <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = PlaneCount;
          }

          v17 = MEMORY[0x277CBF3A0];
          do
          {
            if (v13)
            {
              PixelBufferUtils::asVImageBuffer(this, v14, *v17, &__p);
            }

            else
            {
              PixelBufferUtils::asVImageBuffer(this, *v17, &__p);
              v14 = 0;
            }

            data = __p.data;
            height = __p.height;
            width = __p.width;
            rowBytes = __p.rowBytes;
            v22 = PixelBufferUtils::componentsPerPixelForPixelFormat(v46, v14);
            if (height)
            {
              v24 = width * v22;
              if (width * v22)
              {
                if (v45)
                {
                  for (i = 0; i != height; ++i)
                  {
                    v26 = 0;
                    do
                    {
                      if (v26 % v22 != 0x7FFFFFFF)
                      {
                        LOWORD(v23) = *&data[2 * v26];
                        v23 = a4 + (LODWORD(v23) * a3);
                        *&data[2 * v26] = v23;
                      }

                      ++v26;
                    }

                    while (v24 != v26);
                    data += rowBytes;
                  }
                }

                else
                {
                  for (j = 0; j != height; ++j)
                  {
                    v28 = 0;
                    do
                    {
                      if (v28 % v22 != 0x7FFFFFFF)
                      {
                        LOWORD(v23) = *&data[2 * v28];
                        v23 = (LODWORD(v23) + a4) * a3;
                        *&data[2 * v28] = v23;
                      }

                      ++v28;
                    }

                    while (v24 != v28);
                    data += rowBytes;
                  }
                }
              }
            }

            v14 = ++v15;
          }

          while (v16 > v15);

          CVPixelBufferUnlockBaseAddress(this, 0);
          return;
        }

LABEL_85:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
        if ((__p.width & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.data;
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "inPlaceColorScaling", 3700, v9, p_p);
        if (SHIBYTE(__p.width) < 0)
        {
          operator delete(__p.data);
        }

        return;
      }

      goto LABEL_59;
    }

    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 875704438)
      {
LABEL_77:
        v40 = this;
        v41 = a3;
        v42 = a4;
        v43 = v45;
        v34 = 0x7FFFFFFF;
        goto LABEL_78;
      }

      if (PixelFormatType != 1094862674)
      {
        goto LABEL_85;
      }

LABEL_59:
      if (a5)
      {
        v34 = 0x7FFFFFFF;
      }

      else
      {
        v34 = 0;
      }

LABEL_76:
      v40 = this;
      v41 = a3;
      v42 = a4;
      v43 = v45;
LABEL_78:

      scaleColorsRawInPlace<unsigned char>(v40, v43, v34, v41, v42);
      return;
    }

    if (PixelFormatType != 1111970369)
    {
      if (PixelFormatType != 1278226534)
      {
        v10 = 1278226536;
        goto LABEL_64;
      }

      goto LABEL_69;
    }

    goto LABEL_73;
  }

  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType <= 1751411058)
    {
      if (PixelFormatType != 1717856627)
      {
        v10 = 1751410032;
LABEL_64:
        if (PixelFormatType != v10)
        {
          goto LABEL_85;
        }

LABEL_65:
        v35 = this;
        v36 = a3;
        v37 = a4;
        v38 = v45;
        v39 = 0x7FFFFFFF;
LABEL_66:

        scaleColorsRawInPlace<half>(v35, v38, v39, v36, v37);
        return;
      }
    }

    else
    {
      if (PixelFormatType == 1751411059)
      {
        goto LABEL_65;
      }

      if (PixelFormatType != 1919365990)
      {
        v11 = 1932996149;
        goto LABEL_24;
      }
    }

    goto LABEL_69;
  }

  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType == 1380411457)
    {
      if (a5)
      {
        v39 = 0x7FFFFFFF;
      }

      else
      {
        v39 = 3;
      }

      v35 = this;
      v36 = a3;
      v37 = a4;
      v38 = v45;
      goto LABEL_66;
    }

    if (PixelFormatType == 1647392359)
    {
      goto LABEL_25;
    }

    if (PixelFormatType != 1717855600)
    {
      goto LABEL_85;
    }

LABEL_69:
    v30 = this;
    v31 = a3;
    v32 = a4;
    v33 = v45;
    v29 = 0x7FFFFFFF;
    goto LABEL_70;
  }

  if (PixelFormatType == 1380401729)
  {
LABEL_73:
    if (a5)
    {
      v34 = 0x7FFFFFFF;
    }

    else
    {
      v34 = 3;
    }

    goto LABEL_76;
  }

  if (PixelFormatType != 1380410945)
  {
    goto LABEL_85;
  }

  if (a5)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = 3;
  }

  v30 = this;
  v31 = a3;
  v32 = a4;
  v33 = v45;
LABEL_70:

  scaleColorsRawInPlace<float>(v30, v33, v29, v31, v32);
}

void sub_22473CAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scaleColorsRawInPlace<float>(__CVBuffer *a1, char a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v10 = PlaneCount;
  v11 = 0;
  v12 = 0;
  if (PlaneCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = PlaneCount;
  }

  v27 = v13;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    if (v10)
    {
      PixelBufferUtils::asVImageBuffer(a1, v11, *v14, &v29);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(a1, *v14, &v29);
      v11 = 0;
    }

    data = v29.data;
    height = v29.height;
    width = v29.width;
    rowBytes = v29.rowBytes;
    v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v11);
    if (height)
    {
      v20 = width * v19;
      if (width * v19)
      {
        if (a2)
        {
          for (i = 0; i != height; ++i)
          {
            v22 = 0;
            do
            {
              if (v22 % v19 != a3)
              {
                data[v22] = a5 + (data[v22] * a4);
              }

              ++v22;
            }

            while (v20 != v22);
            data = (data + rowBytes);
          }
        }

        else
        {
          for (j = 0; j != height; ++j)
          {
            v24 = 0;
            do
            {
              if (v24 % v19 != a3)
              {
                data[v24] = (data[v24] + a5) * a4;
              }

              ++v24;
            }

            while (v20 != v24);
            data = (data + rowBytes);
          }
        }
      }
    }

    v11 = ++v12;
  }

  while (v27 > v12);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t scaleColorsRawInPlace<half>(__CVBuffer *a1, char a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v10 = PlaneCount;
  v11 = 0;
  v12 = 0;
  if (PlaneCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = PlaneCount;
  }

  v37 = v13;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    if (v10)
    {
      PixelBufferUtils::asVImageBuffer(a1, v11, *v14, &v39);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(a1, *v14, &v39);
      v11 = 0;
    }

    data = v39.data;
    height = v39.height;
    width = v39.width;
    rowBytes = v39.rowBytes;
    v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v11);
    if (height)
    {
      v20 = width * v19;
      if (width * v19)
      {
        if (a2)
        {
          for (i = 0; i != height; ++i)
          {
            v22 = 0;
            do
            {
              if (v22 % v19 != a3)
              {
                _H0 = *&data[2 * v22];
                __asm { FCVT            S0, H0 }

                _S0 = a5 + (_S0 * a4);
                __asm { FCVT            H0, S0 }

                *&data[2 * v22] = LOWORD(_S0);
              }

              ++v22;
            }

            while (v20 != v22);
            data += rowBytes;
          }
        }

        else
        {
          for (j = 0; j != height; ++j)
          {
            v31 = 0;
            do
            {
              if (v31 % v19 != a3)
              {
                _H0 = *&data[2 * v31];
                __asm { FCVT            S0, H0 }

                _S0 = (_S0 + a5) * a4;
                __asm { FCVT            H0, S0 }

                *&data[2 * v31] = LOWORD(_S0);
              }

              ++v31;
            }

            while (v20 != v31);
            data += rowBytes;
          }
        }
      }
    }

    v11 = ++v12;
  }

  while (v37 > v12);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t scaleColorsRawInPlace<unsigned char>(__CVBuffer *a1, char a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v10 = PlaneCount;
  v11 = 0;
  v12 = 0;
  if (PlaneCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = PlaneCount;
  }

  v28 = v13;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    if (v10)
    {
      PixelBufferUtils::asVImageBuffer(a1, v11, *v14, &v30);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(a1, *v14, &v30);
      v11 = 0;
    }

    data = v30.data;
    height = v30.height;
    width = v30.width;
    rowBytes = v30.rowBytes;
    v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v11);
    if (height)
    {
      v21 = width * v19;
      if (width * v19)
      {
        if (a2)
        {
          for (i = 0; i != height; ++i)
          {
            v23 = 0;
            do
            {
              if (v23 % v19 != a3)
              {
                LOBYTE(v20) = data[v23];
                v20 = a5 + (LODWORD(v20) * a4);
                data[v23] = v20;
              }

              ++v23;
            }

            while (v21 != v23);
            data += rowBytes;
          }
        }

        else
        {
          for (j = 0; j != height; ++j)
          {
            v25 = 0;
            do
            {
              if (v25 % v19 != a3)
              {
                LOBYTE(v20) = data[v25];
                v20 = (LODWORD(v20) + a5) * a4;
                data[v25] = v20;
              }

              ++v25;
            }

            while (v21 != v25);
            data += rowBytes;
          }
        }
      }
    }

    v11 = ++v12;
  }

  while (v28 > v12);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t PixelBufferUtils::rotationAngleAndMirroringFromExifOrientation(PixelBufferUtils *this, BOOL *a2, BOOL *a3)
{
  if (this <= 4)
  {
    if (this == 4)
    {
      v11 = 180;
    }

    else
    {
      v11 = 0;
    }

    v12 = this == 4;
    if (this == 3)
    {
      v13 = 180;
    }

    else
    {
      v13 = v11;
    }

    if (this == 3)
    {
      v12 = 0;
    }

    v14 = this == 2;
    if (this == 2)
    {
      result = 0;
    }

    else
    {
      result = v13;
    }

    v5 = v14 || v12;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (this == 8)
    {
      v3 = 270;
    }

    else
    {
      v3 = 0;
    }

    if (this == 7)
    {
      v4 = 90;
    }

    else
    {
      v4 = v3;
    }

    v5 = this == 7;
    if (this == 6)
    {
      v6 = 90;
    }

    else
    {
      v6 = 0;
    }

    if (this == 5)
    {
      v7 = 270;
    }

    else
    {
      v7 = v6;
    }

    v8 = this == 5;
    v9 = this <= 6;
    if (this <= 6)
    {
      result = v7;
    }

    else
    {
      result = v4;
    }

    if (v9)
    {
      v5 = v8;
    }

    if (a2)
    {
LABEL_21:
      *a2 = v5;
    }
  }

  return result;
}

uint64_t PixelBufferUtils::rotationBetweenOrientations(PixelBufferUtils *this, int a2, CGImagePropertyOrientation a3)
{
  if (this <= 4)
  {
    if (this == 4)
    {
      v10 = -180;
    }

    else
    {
      v10 = 0;
    }

    v11 = this == 4;
    if (this == 3)
    {
      v7 = -180;
    }

    else
    {
      v7 = v10;
    }

    if (this == 3)
    {
      v11 = 0;
    }

    if (this == 2)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v8 = v11;
    }

    if (a2 > 4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (this == 8)
    {
      v3 = -270;
    }

    else
    {
      v3 = 0;
    }

    if (this == 7)
    {
      v4 = -90;
    }

    else
    {
      v4 = v3;
    }

    if (this == 6)
    {
      v5 = -90;
    }

    else
    {
      v5 = 0;
    }

    if (this == 5)
    {
      v6 = -270;
    }

    else
    {
      v6 = v5;
    }

    if (this <= 6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (this <= 6)
    {
      v8 = this == 5;
    }

    else
    {
      v8 = this == 7;
    }

    if (a2 > 4)
    {
LABEL_21:
      if (a2 <= 6)
      {
        if (a2 == 5)
        {
          v9 = 270;
          if (!v8)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          v9 = 90;
          if (v8)
          {
            return 0xFFFFFFFFLL;
          }
        }

        goto LABEL_55;
      }

      if (a2 == 7)
      {
        v9 = 90;
        if (!v8)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_55;
      }

      if (a2 == 8)
      {
        v9 = 270;
      }

      else
      {
        v9 = 0;
      }

LABEL_46:
      if (v8)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_55;
    }
  }

  if (a2 == 2)
  {
    v9 = 0;
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_55;
  }

  if (a2 != 3)
  {
    v9 = 0;
    if (a2 == 4)
    {
      v9 = 180;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_55;
    }

    goto LABEL_46;
  }

  v9 = 180;
  if (v8)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_55:
  v12 = v9 + v7;
  if (v12 <= 0xFFFFFE97)
  {
    result = v12;
  }

  else
  {
    result = v12 + 360;
  }

  if (result > 179)
  {
    if (result == 180)
    {
      return 2;
    }

    if (result == 270)
    {
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  if (result)
  {
    if (result == 90)
    {
      return 3;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

__CVBuffer *PixelBufferUtils::savePlyFromDepthBuffer(__CVBuffer *this, __CVBuffer *a2, const char *a3, float a4, CGPoint a5, float a6, float a7, float a8)
{
  if (this)
  {
    v8 = this;
    CVPixelBufferGetWidth(this);
    CVPixelBufferGetHeight(v8);
    CVPixelBufferLockBaseAddress(v8, 1uLL);
    CVPixelBufferGetBytesPerRow(v8);
    CVPixelBufferGetBaseAddress(v8);
    operator new[]();
  }

  return this;
}

uint64_t PixelBufferUtils::addTextToPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, const char *a3, CGPoint a4)
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (!this || !a2)
  {
    NSLog(&cfstr_SDErrorCannotA_0.isa, a2, a3, a4.x, a4.y, "addTextToPixelBuffer", 3998);
    return 0;
  }

  y = a4.y;
  x = a4.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  if (PixelFormatType != 32 && PixelFormatType != 1111970369)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if (__p.c >= 0.0)
    {
      a = COERCE_DOUBLE(&__p);
    }

    else
    {
      a = __p.a;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "addTextToPixelBuffer", 4008, PixelFormatType, *&a);
    if (SHIBYTE(__p.c) < 0)
    {
      operator delete(*&__p.a);
    }

    return 0;
  }

  v12 = Height;
  if (x > Width || y > v12)
  {
    NSLog(&cfstr_SDErrorCannotA_1.isa, "addTextToPixelBuffer", 4014);
    return 0;
  }

  v16 = Height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(this, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v20 = CGBitmapContextCreate(BaseAddress, Width, v16, 8uLL, BytesPerRow, DeviceRGB, 6u);
  v21 = *(MEMORY[0x277CBF2C0] + 16);
  *&__p.a = *MEMORY[0x277CBF2C0];
  *&__p.c = v21;
  *&__p.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(v20, &__p);
  CGContextSetTextDrawingMode(v20, kCGTextFill);
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v23 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  v24 = CTFontCreateWithName(@"Courier", a3, 0);
  {
    {
      v31 = *MEMORY[0x277CC49C0];
      v33[0] = *MEMORY[0x277CC4838];
      v33[1] = v31;
      v34[0] = v24;
      v34[1] = GenericRGB;
      v33[2] = *MEMORY[0x277CC4820];
      v34[2] = v23;
      PixelBufferUtils::addTextToPixelBuffer(__CVBuffer *,char const*,unsigned long,CGPoint)::stringAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    }
  }

  v25 = objc_alloc(MEMORY[0x277CCA898]);
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v27 = [v25 initWithString:v26 attributes:{PixelBufferUtils::addTextToPixelBuffer(__CVBuffer *, char const*, unsigned long, CGPoint)::stringAttributes}];

  v28 = CTLineCreateWithAttributedString(v27);
  v29 = x;
  v30 = v12 - y;
  CGContextSetTextPosition(v20, v29, v30);
  CTLineDraw(v28, v20);
  CVPixelBufferUnlockBaseAddress(this, 0);
  CFRelease(DeviceRGB);
  CGContextRelease(v20);
  CFRelease(GenericRGB);
  CFRelease(v23);
  CFRelease(v24);

  return 1;
}

uint64_t PixelBufferUtilsSession::PixelBufferUtilsSession(uint64_t a1, int a2, signed int a3, int a4, int a5, double a6, double a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  v20 = a9;
  v21 = a8;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a2;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a3;
  *(a1 + 72) = a10;
  *(a1 + 80) = a11;
  *(a1 + 88) = a12;
  *(a1 + 96) = a13;
  *(a1 + 104) = a4;
  *(a1 + 108) = a5;
  v54.origin.x = a10;
  v54.origin.y = a11;
  v54.size.width = a12;
  v54.size.height = a13;
  IsEmpty = CGRectIsEmpty(v54);
  v27 = 0.0;
  if (IsEmpty)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = a10;
  }

  if (IsEmpty)
  {
    v29 = a6;
  }

  else
  {
    v27 = a11;
    v29 = a12;
  }

  if (IsEmpty)
  {
    v30 = a7;
  }

  else
  {
    v30 = a13;
  }

  if (a2 == a3 && a6 == v21 && a7 == v20)
  {
    v31 = (a5 | a4) == 0;
    if (v29 == a6 && v30 == a7)
    {
      if (!(a5 | a4))
      {
        LOBYTE(v32) = 1;
        goto LABEL_44;
      }

      v32 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v31 = (a5 | a4) == 0;
  }

  if (a2 <= 1751410031)
  {
    if (a2 > 1717855599)
    {
      if (a2 == 1717855600 || a2 == 1717856627)
      {
        goto LABEL_60;
      }
    }

    else if (a2 == 825306677 || a2 == 825437747)
    {
      goto LABEL_60;
    }
  }

  else if (a2 <= 1919365989)
  {
    if (a2 == 1751410032 || a2 == 1751411059)
    {
      goto LABEL_60;
    }
  }

  else if (a2 == 1919365990 || a2 == 1919365992 || a2 == 1932996149)
  {
    goto LABEL_60;
  }

  if (a3 <= 1751410031)
  {
    if (a3 > 1717855599)
    {
      if (a3 != 1717855600)
      {
        v34 = 1717856627;
        goto LABEL_59;
      }
    }

    else if (a3 != 825306677)
    {
      v34 = 825437747;
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (a3 <= 1919365989)
  {
    if (a3 != 1751410032)
    {
      v34 = 1751411059;
      goto LABEL_59;
    }

LABEL_60:
    NSLog(&cfstr_SDErrorTransfe.isa, v28, v27, v29, v30, "PixelBufferUtilsSession", 4145);
    return a1;
  }

  if (a3 == 1919365990 || a3 == 1919365992)
  {
    goto LABEL_60;
  }

  v34 = 1932996149;
LABEL_59:
  if (a3 == v34)
  {
    goto LABEL_60;
  }

  v32 = 1;
  if (v31)
  {
    goto LABEL_44;
  }

LABEL_17:
  if (a3 > 1717856626)
  {
    if (a3 > 1919365989)
    {
      if (a3 == 1919365990 || a3 == 1932996149)
      {
        goto LABEL_67;
      }

      v33 = 1919365992;
      goto LABEL_66;
    }

    if (a3 != 1717856627)
    {
      v33 = 1751411059;
      goto LABEL_66;
    }

LABEL_67:
    NSLog(&cfstr_SDErrorRotatio.isa, v28, v27, v29, v30, "PixelBufferUtilsSession", 4151);
    return a1;
  }

  if (a3 > 1380410944)
  {
    if (a3 == 1380410945)
    {
      goto LABEL_67;
    }

    v33 = 1380411457;
  }

  else
  {
    if (a3 == 825306677)
    {
      goto LABEL_67;
    }

    v33 = 825437747;
  }

LABEL_66:
  if (a3 == v33)
  {
    goto LABEL_67;
  }

  if (!v32)
  {
    goto LABEL_46;
  }

  v37 = v30;
  v38 = v29;
  v39 = v27;
  v40 = v28;
  v41 = trunc(v21);
  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v21 = v20;
    v20 = v41;
  }

  pixelBufferOut = 0;
  v42 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v44 = CVPixelBufferCreate(v42, v21, v20, a3, BufferAttributes, &pixelBufferOut);
  v49 = pixelBufferOut;
  if (v44)
  {
    v49 = 0;
  }

  *a1 = v49;
  if (!v49)
  {
    NSLog(&cfstr_SDErrorFailedA.isa, v45, v46, v47, v48, "PixelBufferUtilsSession", 4175);
    return a1;
  }

  LOBYTE(v32) = 0;
  v28 = v40;
  v27 = v39;
  v29 = v38;
  v30 = v37;
LABEL_44:
  VTTransferSession = createVTTransferSession(*(&v27 - 1), *MEMORY[0x277CBF3A0]);
  *(a1 + 8) = VTTransferSession;
  if (!VTTransferSession)
  {
    CVPixelBufferRelease(*a1);
    *a1 = 0;
    return a1;
  }

  if ((v32 & 1) == 0)
  {
LABEL_46:
    if (a5)
    {
      NSLog(&cfstr_SDErrorReflect.isa, "createVTRotationSession", 781);
    }

    else
    {
      pixelBufferOut = 0;
      v50 = VTImageRotationSessionCreate();
      v51 = pixelBufferOut;
      if (!v50)
      {
        *(a1 + 16) = pixelBufferOut;
        if (v51)
        {
          return a1;
        }

        goto LABEL_80;
      }

      MEMORY[0x22AA52DC0](pixelBufferOut);
      CFRelease(pixelBufferOut);
      NSLog(&cfstr_SDErrorUnableT_2.isa, "createVTRotationSession", 802);
    }

    *(a1 + 16) = 0;
LABEL_80:
    CVPixelBufferRelease(*a1);
    *a1 = 0;
    v52 = *(a1 + 8);
    if (v52)
    {
      VTPixelTransferSessionInvalidate(v52);
      CFRelease(*(a1 + 8));
    }

    *(a1 + 8) = 0;
  }

  return a1;
}

void PixelBufferUtilsSession::~PixelBufferUtilsSession(PixelBufferUtilsSession *this)
{
  CVPixelBufferRelease(*this);
  *this = 0;
  if (*(this + 2))
  {
    MEMORY[0x22AA52DC0]();
    CFRelease(*(this + 2));
  }

  *(this + 2) = 0;
  v2 = *(this + 1);
  if (v2)
  {
    VTPixelTransferSessionInvalidate(v2);
    CFRelease(*(this + 1));
  }

  *(this + 1) = 0;
}

{
  CVPixelBufferRelease(*this);
  *this = 0;
  if (*(this + 2))
  {
    MEMORY[0x22AA52DC0]();
    CFRelease(*(this + 2));
  }

  *(this + 2) = 0;
  v2 = *(this + 1);
  if (v2)
  {
    VTPixelTransferSessionInvalidate(v2);
    CFRelease(*(this + 1));
  }

  *(this + 1) = 0;
}

CVPixelBufferRef PixelBufferUtilsSession::createOutputPixelBuffer(PixelBufferUtilsSession *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  v3 = *(this + 16);
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v4, v1, v2, v3, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

BOOL PixelBufferUtilsSession::verifyInput(PixelBufferUtilsSession *this, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0;
  }

  v3 = *(this + 10);
  v5 = *(this + 3);
  v4 = *(this + 4);
  return v5 == CVPixelBufferGetWidth(pixelBuffer) && v4 == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == v3;
}

BOOL PixelBufferUtilsSession::verifyOutput(PixelBufferUtilsSession *this, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0;
  }

  v3 = *(this + 16);
  v5 = *(this + 6);
  v4 = *(this + 7);
  return v5 == CVPixelBufferGetWidth(pixelBuffer) && v4 == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == v3;
}

BOOL PixelBufferUtilsSession::setScalingMode(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (a2 == 1)
    {
      v3 = *MEMORY[0x277CE28B0];
      v4 = MEMORY[0x277CE2A70];
      return VTSessionSetProperty(v2, v3, *v4) == 0;
    }

    if (!a2)
    {
      v3 = *MEMORY[0x277CE28B0];
      v4 = MEMORY[0x277CE2A78];
      return VTSessionSetProperty(v2, v3, *v4) == 0;
    }

    NSLog(&cfstr_SDErrorUnknown.isa, "setScalingMode", 4249);
  }

  else
  {
    NSLog(&cfstr_SDErrorSession.isa, "setScalingMode", 4239);
  }

  return 0;
}

uint64_t PixelBufferUtilsSession::setHardwareAcceleration(PixelBufferUtilsSession *this, int a2)
{
  v4 = *(this + 1);
  v5 = MEMORY[0x277CBED28];
  v6 = MEMORY[0x277CBED10];
  if (v4)
  {
    v7 = (a2 ? MEMORY[0x277CBED28] : MEMORY[0x277CBED10]);
    if (VTSessionSetProperty(v4, *MEMORY[0x277CE2880], *v7))
    {
      NSLog(&cfstr_SDErrorFailedS.isa, "setHardwareAcceleration", 4265);
      return 0;
    }
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = (a2 ? v5 : v6);
    if (VTSessionSetProperty(v8, *MEMORY[0x277CE27F8], *v9))
    {
      NSLog(&cfstr_SDErrorFailedS_0.isa, "setHardwareAcceleration", 4277);
      return 0;
    }
  }

  return 1;
}

uint64_t PixelBufferUtilsSession::run(PixelBufferUtilsSession *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  if (!pixelBuffer || (v6 = *(this + 10), v8 = *(this + 3), v7 = *(this + 4), v8 != CVPixelBufferGetWidth(pixelBuffer)) || v7 != CVPixelBufferGetHeight(pixelBuffer) || CVPixelBufferGetPixelFormatType(pixelBuffer) != v6 || !a3 || (v9 = *(this + 16), v11 = *(this + 6), v10 = *(this + 7), v11 != CVPixelBufferGetWidth(a3)) || v10 != CVPixelBufferGetHeight(a3) || CVPixelBufferGetPixelFormatType(a3) != v9)
  {
    NSLog(&cfstr_SDErrorProvide.isa, "run", 4295);
    return 0;
  }

  v12 = *(this + 1);
  if (*this)
  {
    v13 = *this;
  }

  else
  {
    v13 = pixelBuffer;
  }

  if (!v12)
  {
    v19 = *(this + 2);
    if (!v19 || !MEMORY[0x22AA52DD0](v19, v13, a3))
    {
      return 1;
    }

LABEL_24:
    NSLog(&cfstr_SDErrorRotatio_0.isa, "run", 4339);
    return 0;
  }

  if (*this)
  {
    v14 = *this;
  }

  else
  {
    v14 = a3;
  }

  v15 = VTPixelTransferSessionTransferImage(v12, pixelBuffer, v14);
  v16 = *(this + 2);
  if (v16)
  {
    v17 = MEMORY[0x22AA52DD0](v16, v13, a3);
    if (!v15)
    {
      if (!v17)
      {
        return 1;
      }

      goto LABEL_24;
    }

LABEL_26:
    NSLog(&cfstr_SDErrorPixelTr.isa, "run", 4333);
    return 0;
  }

  if (v15)
  {
    goto LABEL_26;
  }

  return 1;
}