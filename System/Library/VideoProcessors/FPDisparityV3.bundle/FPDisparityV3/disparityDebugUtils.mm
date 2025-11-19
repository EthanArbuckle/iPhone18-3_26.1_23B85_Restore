@interface disparityDebugUtils
+ (void)createPathIfNeeded:(id)a3;
- (disparityDebugUtils)initWithMetalContext:(id)a3;
- (void)WriteBinDataToFile:(void *)a3 length:(unsigned int)a4 fileFullPath:(const char *)a5;
- (void)computeRobustMinMaxForF16DisparityBuffer:(__CVBuffer *)a3 WithDisparityScale:(float)a4 AndPercentile:(float)a5 OutSignalMin:(float *)a6 OutSignalMax:(float *)a7;
- (void)convertRGB10A2ToRGBA8:(char *)a3 rbs:(unint64_t)a4 ToRGBA:(char *)a5 outWidth:(unsigned int)a6 outHeight:(unsigned int)a7;
- (void)convertVUYA444:(char *)a3 rbs:(unint64_t)a4 ToRGBA:(char *)a5 ofSize:(CGSize)a6;
- (void)save32BGRAPixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)save420CVPixelBuffer:(__CVBuffer *)a3 to:(const char *)a4;
- (void)saveAccumulationFrom:(id)a3 asBinaryFiles:(const char *)a4 forSize:(CGSize)a5 costLineSize:(unsigned __int16)a6;
- (void)saveF16Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 scale:(float)a5;
- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4;
- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsGrayScalePPMFile:(const char *)a4 range:;
- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 WithDisparityScale:(float)a5 AndPercentile:(float)a6;
- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 WithMin:(float)a5 WithMax:(float)a6;
- (void)saveF16DisparityTexture:(id)a3 AsBinaryFile:(const char *)a4;
- (void)saveF16DisparityTexture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveF16RGTexture:(id)a3 AsBinaryFile:(const char *)a4;
- (void)saveF16Texture:(id)a3 AsF32BinaryFile:(const char *)a4;
- (void)saveF16Texture:(id)a3 AsGrayScalePPMFile:(const char *)a4 range:;
- (void)saveF16Texture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveF32Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveF32DisparityBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveF32FPBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 scale:(float)a5;
- (void)saveF32Texture:(id)a3 AsF32BinaryFile:(const char *)a4;
- (void)saveLumaTexture:(id)a3 to:(const char *)a4;
- (void)saveNCCOutputFrom:(id)a3 asBinaryFiles:(const char *)a4;
- (void)savePixelBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4;
- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6;
- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFileWithAlpha:(const char *)a6;
- (void)saveRGB10A2Texture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveRGBA16FTexture:(id)a3 AsF32File:(const char *)a4;
- (void)saveRGBA16FTexture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveRGBA8Texture:(id)a3 AsBinaryFile:(const char *)a4;
- (void)saveRGBA8Texture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFileWithAlpha:(const char *)a4;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFileWithAlpha:(const char *)a6;
- (void)saveRGBATexture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveRGF16ShiftmapTexture:(id)a3 AsPPMFileSx:(id)a4 AsPPMFileSy:(id)a5;
- (void)saveRGF16Texture:(id)a3 AsF32BinaryFile0:(id)a4 AsF32BinaryFile1:(id)a5;
- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveU16Texture:(id)a3 AsPGMFile:(const char *)a4;
- (void)saveU8Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveU8Texture:(id)a3 AsPGMFile:(const char *)a4;
- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)Width out_height:(unsigned int)Height AsBinaryFile:(const char *)a6;
- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6;
- (void)saveVUYA4444Texture:(id)a3 AsBinaryFile:(const char *)a4;
- (void)saveVUYA4444Texture:(id)a3 AsPPMFile:(const char *)a4;
@end

@implementation disparityDebugUtils

- (disparityDebugUtils)initWithMetalContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = disparityDebugUtils;
  v6 = [(disparityDebugUtils *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
  }

  return v7;
}

- (void)saveF32DisparityBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);

  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v9, Width, Height, BaseAddress, a4);
}

- (void)saveF32FPBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 scale:(float)a5
{
  v7 = sub_2957945B0(a4, a2);
  if (v7)
  {
    v8 = v7;
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v13 = malloc_type_malloc(3 * Width, 0x100004077774924uLL);
    __nitems = Width;
    fprintf(v8, "P6 %u %u 255\n", Width, Height);
    v21 = Height;
    if (Height)
    {
      v14 = 0;
      v15 = BytesPerRow & 0xFFFFFFFC;
      v16 = 4 * Width;
      do
      {
        v17 = v8;
        if (__nitems)
        {
          v18 = 0;
          v19 = 2;
          do
          {
            v20 = vcvtms_s32_f32(fmaxf(fminf(powf(*&BaseAddress[v18], a5) * 255.0, 255.0), 0.0));
            v13[v19 - 2] = v20;
            v13[v19 - 1] = v20;
            v13[v19] = v20;
            v19 += 3;
            v18 += 4;
          }

          while (v16 != v18);
        }

        v8 = v17;
        fwrite(v13, 3uLL, __nitems, v17);
        ++v14;
        BaseAddress += v15;
      }

      while (v14 != v21);
    }

    free(v13);

    fclose(v8);
  }
}

- (void)saveF16Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 scale:(float)a5
{
  v7 = sub_2957945B0(a4, a2);
  if (v7)
  {
    v8 = v7;
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v13 = malloc_type_malloc(3 * Width, 0x100004077774924uLL);
    __nitems = Width;
    fprintf(v8, "P6 %u %u 255\n", Width, Height);
    v27 = Height;
    if (Height)
    {
      v14 = 0;
      v15 = BytesPerRow & 0xFFFFFFFE;
      v16 = 2 * Width;
      do
      {
        v17 = v8;
        if (__nitems)
        {
          v18 = 0;
          v19 = 2;
          do
          {
            _H0 = *&BaseAddress[v18];
            __asm { FCVT            S0, H0; float }

            v26 = vcvtms_s32_f32(fmaxf(fminf(powf(_S0, a5) * 255.0, 255.0), 0.0));
            v13[v19 - 2] = v26;
            v13[v19 - 1] = v26;
            v13[v19] = v26;
            v19 += 3;
            v18 += 2;
          }

          while (v16 != v18);
        }

        v8 = v17;
        fwrite(v13, 3uLL, __nitems, v17);
        ++v14;
        BaseAddress += v15;
      }

      while (v14 != v27);
    }

    free(v13);

    fclose(v8);
  }
}

- (void)saveF16Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v8 = sub_2957945B0(a4, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_width(v6, v9, v10);
    v15 = objc_msgSend_height(v6, v13, v14);
    v16 = malloc_type_malloc(3 * v12, 0x100004077774924uLL);
    v17 = malloc_type_malloc(2 * v12 * v15, 0x1000040BDFB0063uLL);
    fprintf(v11, "P6 %u %u 255\n", v12, v15);
    objc_msgSend_makeCoherent_(self, v18, v6);
    memset(v32, 0, 24);
    v32[3] = v12;
    v32[4] = v15;
    v32[5] = 1;
    v31 = v17;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v19, v17, 2 * v12, v32, 0);
    if (v15)
    {
      v20 = 0;
      v21 = 2 * v12;
      do
      {
        if (v12)
        {
          v22 = 0;
          v23 = 2;
          do
          {
            _H0 = *&v17[v22];
            __asm { FCVT            S0, H0 }

            v30 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v16[v23 - 2] = v30;
            v16[v23 - 1] = v30;
            v16[v23] = v30;
            v23 += 3;
            v22 += 2;
          }

          while (v21 != v22);
        }

        fwrite(v16, 3uLL, v12, v11);
        ++v20;
        v17 += v21;
      }

      while (v20 != v15);
    }

    free(v16);
    free(v31);
    fclose(v11);
  }
}

- (void)saveF32Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v9 = malloc_type_malloc(4 * Width * Height, 0xDD18702AuLL);
  v11 = v9;
  if (Height)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = Width;
      v15 = v12;
      if (Width)
      {
        do
        {
          v16 = vdupq_n_s16((BaseAddress[v15] * 255.0));
          v16.i16[3] = 255;
          *&v9[4 * v15++] = vmovn_s16(v16).u32[0];
          --v14;
        }

        while (v14);
      }

      ++v13;
      v12 += Width;
    }

    while (v13 != Height);
  }

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @"%s", a4);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v17, v22);
  v18 = v22;
  v21 = objc_msgSend_UTF8String(v22, v19, v20);
  sub_295794BB4(Width, Height, 4 * Width, v11, v21);
  free(v11);
}

- (void)saveU8Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v10 = malloc_type_malloc(4 * Width * Height, 0xBA44AB5AuLL);
  v12 = v10;
  if (Height)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = Width;
      v17 = v13;
      v18 = v14;
      if (Width)
      {
        do
        {
          v19 = vdupq_n_s16(BaseAddress[v17]);
          v19.i16[3] = 255;
          *&v10[4 * v18++] = vmovn_s16(v19).u32[0];
          ++v17;
          --v16;
        }

        while (v16);
      }

      ++v15;
      v14 += Width;
      v13 += BytesPerRow;
    }

    while (v15 != Height);
  }

  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v11, @"%s", a4);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v20, v25);
  v21 = v25;
  v24 = objc_msgSend_UTF8String(v25, v22, v23);
  sub_295794BB4(Width, Height, 4 * Width, v12, v24);
  free(v12);
}

- (void)saveVUYA4444Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = malloc_type_malloc(4 * v9 * v12, 0x100004077774924uLL);
  objc_msgSend_makeCoherent_(self, v14, v6);
  memset(v17, 0, 24);
  v17[3] = v9;
  v17[4] = v12;
  v17[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v15, v13, 4 * v9, v17, 0);

  objc_msgSend_convertVUYA444_rbs_ToRGBA_ofSize_(self, v16, v13, 4 * v9, v13, v9, v12);
  sub_295794BB4(v9, v12, 4 * v9, v13, a4);
  free(v13);
}

- (void)saveVUYA4444Texture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = malloc_type_malloc(4 * v9 * v12, 0x12E7F8D9uLL);
  objc_msgSend_makeCoherent_(self, v14, v6);
  memset(v17, 0, 24);
  v17[3] = v9;
  v17[4] = v12;
  v17[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v15, v13, 4 * v9, v17, 0);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v16, v13, 4 * v9 * v12, a4);
  free(v13);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)Width out_height:(unsigned int)Height AsBinaryFile:(const char *)a6
{
  v9 = sub_2957945B0(a6, a2);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (!Width)
  {
    Width = CVPixelBufferGetWidth(a3);
    if (Height)
    {
      goto LABEL_4;
    }

LABEL_12:
    Height = CVPixelBufferGetHeight(a3);
    goto LABEL_4;
  }

  if (!Height)
  {
    goto LABEL_12;
  }

LABEL_4:
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  if (Height)
  {
    v13 = BaseAddress;
    do
    {
      fwrite(v13, 4uLL, Width, v10);
      v13 += BytesPerRow;
      --Height;
    }

    while (Height);
  }

  fclose(v10);

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6
{
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v14 = malloc_type_malloc(4 * Width * Height, 0x85AD6BAFuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  objc_msgSend_convertVUYA444_rbs_ToRGBA_ofSize_(self, v16, BaseAddress, BytesPerRow, v14, Width, Height);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = Width;
  }

  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = Height;
  }

  sub_295794BB4(v17, v18, 4 * Width, v14, a6);

  free(v14);
}

- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6
{
  LODWORD(v7) = a5;
  LODWORD(v8) = a4;
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v14 = malloc_type_malloc(4 * Width * Height, 0x6C1AACBuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  if (v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = Width;
  }

  if (v7)
  {
    v7 = v7;
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, v7);
  }

  else
  {
    v7 = Height;
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, Height);
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  sub_295794BB4(v8, v7, 4 * v8, v14, a6);

  free(v14);
}

- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFileWithAlpha:(const char *)a6
{
  LODWORD(v8) = a4;
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v14 = malloc_type_malloc(4 * Width * Height, 0x33047A7FuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  if (v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = Width;
  }

  if (a5)
  {
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, a5);
  }

  else
  {
    a5 = Height;
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, Height);
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  v18 = sub_2957945B0(a6, v17);
  if (v18)
  {
    v19 = v18;
    v20 = malloc_type_malloc((4 * v8), 0x100004077774924uLL);
    if (v20)
    {
      v21 = v20;
      fprintf(v19, "P7\nWIDTH %u\nHEIGHT %u\nDEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR", v8, a5);
      if (a5)
      {
        v22 = 0;
        v23 = v14;
        do
        {
          if (v8)
          {
            v24 = 0;
            v25 = v8;
            do
            {
              v26 = &v21[v24];
              *v26 = v23[v24];
              v26[1] = v23[v24 + 1];
              v26[2] = v23[v24 + 2];
              v26[3] = v23[v24 + 3];
              v24 += 4;
              --v25;
            }

            while (v25);
          }

          fwrite(v21, 4uLL, v8, v19);
          v23 += (4 * v8);
          ++v22;
        }

        while (v22 != a5);
      }

      free(v21);
    }

    fclose(v19);
  }

  free(v14);
}

- (void)save420CVPixelBuffer:(__CVBuffer *)a3 to:(const char *)a4
{
  v5 = sub_2957945B0(a4, a2);
  if (v5)
  {
    v6 = v5;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    if (Height)
    {
      v11 = BytesPerRowOfPlane;
      v12 = Height;
      do
      {
        fwrite(BaseAddressOfPlane, 1uLL, Width, v6);
        BaseAddressOfPlane += v11;
        --v12;
      }

      while (v12);
    }

    v13 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
    v14 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    if (Height)
    {
      v15 = 0;
      v16 = v14;
      do
      {
        fwrite(v13, 1uLL, Width, v6);
        v13 += v16;
        v15 += 2;
      }

      while (v15 < Height);
    }

    fclose(v6);

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }
}

- (void)saveLumaTexture:(id)a3 to:(const char *)a4
{
  v6 = a3;
  v8 = sub_2957945B0(a4, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_width(v6, v9, v10);
    v15 = objc_msgSend_height(v6, v13, v14);
    v16 = malloc_type_malloc(v15 * v12, 0x4EAF6647uLL);
    objc_msgSend_makeCoherent_(self, v17, v6);
    v18 = v12;
    memset(v21, 0, 24);
    v21[3] = v12;
    v21[4] = v15;
    v21[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v19, v16, v12, v21, 0);
    fwrite(v16, 1uLL, v15 * v12, v11);
    bzero(v16, v12);
    if (v15)
    {
      for (i = 0; i < v15; i += 2)
      {
        fwrite(v16, 1uLL, v18, v11);
      }
    }

    free(v16);
    fclose(v11);
  }
}

- (void)convertVUYA444:(char *)a3 rbs:(unint64_t)a4 ToRGBA:(char *)a5 ofSize:(CGSize)a6
{
  v6 = vcvtmd_u64_f64(a6.height);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = vcvtmd_u64_f64(a6.width);
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = a3[(v8 + v11 + 3)];
          v13 = a3[(v8 + v11)] - 128;
          v14 = 74 * a3[(v8 + v11 + 2)] - 1152;
          v15 = (v14 + 102 * v13) >> 6;
          if (v15 >= 0xFF)
          {
            LOBYTE(v16) = -1;
          }

          else
          {
            v16 = (v14 + 102 * v13) >> 6;
          }

          if (v15 >= 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = a3[(v8 + v11 + 1)] - 128;
          v19 = (v14 - 51 * v13 - 25 * v18) >> 6;
          if (v19 >= 0xFF)
          {
            v20 = -1;
          }

          else
          {
            v20 = v19;
          }

          if (v19 >= 0)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = (v14 + 129 * v18) >> 6;
          if (v22 >= 0xFF)
          {
            v23 = -1;
          }

          else
          {
            v23 = v22;
          }

          if (v22 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v12 == 255;
          if (v12 == 255)
          {
            v26 = v17;
          }

          else
          {
            v26 = -1;
          }

          if (!v25)
          {
            v21 = 0;
            v24 = 0;
          }

          v27 = v7 + v11;
          a5[v27] = v26;
          a5[v27 + 1] = v21;
          a5[v27 + 2] = v24;
          a5[v27 + 3] = -1;
          v11 += 4;
        }

        while (4 * v10 != v11);
      }

      ++v9;
      v8 += a4;
      v7 += 4 * v10;
    }

    while (v9 != v6);
  }
}

- (void)convertRGB10A2ToRGBA8:(char *)a3 rbs:(unint64_t)a4 ToRGBA:(char *)a5 outWidth:(unsigned int)a6 outHeight:(unsigned int)a7
{
  if (a7)
  {
    v7 = 0;
    v8 = 0;
    v9 = a7;
    do
    {
      if (a6)
      {
        v10 = 0;
        do
        {
          v11 = *&a3[v8 * a4 + v10];
          v12 = &a5[(v7 + v10)];
          *v12 = v11 >> 2;
          v12[1] = v11 >> 12;
          v12[2] = v11 >> 22;
          v12[3] = 85 * (v11 >> 30);
          v10 += 4;
        }

        while (4 * a6 != v10);
      }

      ++v8;
      v7 += 4 * a6;
    }

    while (v8 != v9);
  }
}

- (void)saveRGBATexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = malloc_type_malloc(4 * v9 * v12, 0xF858F8E4uLL);
  objc_msgSend_makeCoherent_(self, v14, v6);
  v17 = objc_msgSend_width(v6, v15, v16);
  memset(v26, 0, 24);
  v26[3] = v9;
  v26[4] = v12;
  v26[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v18, v13, 4 * v17, v26, 0);

  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v19, @"%s", a4);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v21, v20);
  v22 = v20;
  v25 = objc_msgSend_UTF8String(v22, v23, v24);
  sub_295794BB4(v9, v12, 4 * v9, v13, v25);
  free(v13);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v11 = malloc_type_malloc(4 * (Width * Height), 0x100004052888210uLL);
  v12 = v11;
  if (Height)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      if (Width)
      {
        v15 = 0;
        do
        {
          _H0 = *&BaseAddress[2 * v15];
          __asm { FCVT            S0, H0 }

          *&v14[4 * v15++] = _S0;
        }

        while (Width != v15);
      }

      ++v13;
      BaseAddress += BytesPerRow & 0xFFFFFFFE;
      v14 += 4 * Width;
    }

    while (v13 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v22, Width, Height, v12, a4);

  free(v12);
}

- (void)computeRobustMinMaxForF16DisparityBuffer:(__CVBuffer *)a3 WithDisparityScale:(float)a4 AndPercentile:(float)a5 OutSignalMin:(float *)a6 OutSignalMax:(float *)a7
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  bzero(v37, 0x1000uLL);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      if (Width)
      {
        v17 = &BaseAddress[BytesPerRow * i];
        v18 = Width;
        do
        {
          v19 = *v17;
          v17 += 2;
          _H0 = v19;
          __asm { FCVT            S0, H0 }

          v26 = (((_S0 / a4) * 8.0) + 0.5);
          if (v26 >= 0x3FF)
          {
            v26 = 1023;
          }

          ++v37[v26];
          --v18;
        }

        while (v18);
      }
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = (Height * Width);
  *a6 = 3.4028e38;
  *a7 = 1.1755e-38;
  v30 = ((v29 * a5) + 0.5);
  v31 = ((v29 * (1.0 - a5)) + 0.5);
  v32 = *a6;
  v33 = 1.1755e-38;
  while (1)
  {
    v34 = v37[v27];
    v28 += v34;
    if (v32 == 3.4028e38 && v28 > v30)
    {
      v32 = ((v27 + -0.5) + ((v28 - v30) / v34)) * 0.125;
      *a6 = v32;
      v33 = *a7;
    }

    if (v33 == 1.1755e-38 && v28 > v31)
    {
      break;
    }

    if (++v27 == 1024)
    {
      goto LABEL_23;
    }
  }

  *a7 = ((v27 + -0.5) + ((v28 - v31) / v34)) * 0.125;
LABEL_23:

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 WithMin:(float)a5 WithMax:(float)a6
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v14 = malloc_type_malloc(4 * Width * Height, 0x100004077774924uLL);
  if (v14)
  {
    v15 = v14;
    if (Height)
    {
      v16 = 0;
      do
      {
        if (Width)
        {
          v17 = 0;
          v18 = &v14[4 * Width * v16];
          do
          {
            _H3 = *&BaseAddress[v17];
            __asm { FCVT            S3, H3 }

            v25 = &unk_2957A3650 + 3 * ((((fmaxf(a5, fminf(a6, _S3)) - a5) / (a6 - a5)) * 1024.0) + -0.49);
            *v18 = *v25;
            v18[2] = v25[2];
            v18[3] = -1;
            v18 += 4;
            v17 += 2;
          }

          while (2 * Width != v17);
        }

        ++v16;
        BaseAddress += BytesPerRow & 0xFFFFFFFE;
      }

      while (v16 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    sub_295794BB4(Width, Height, 4 * Width, v15, a4);

    free(v15);
  }
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 WithDisparityScale:(float)a5 AndPercentile:(float)a6
{
  v13 = 0;
  objc_msgSend_computeRobustMinMaxForF16DisparityBuffer_WithDisparityScale_AndPercentile_OutSignalMin_OutSignalMax_(self, a2, a3, &v13 + 4, &v13);
  *&v10 = *(&v13 + 1) * a5;
  *&v11 = *&v13 * a5;
  objc_msgSend_saveF16DisparityBufferAsTurbo_AsPPMFile_WithMin_WithMax_(self, v12, a3, a4, v10, v11);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsGrayScalePPMFile:(const char *)a4 range:
{
  v39 = v4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v11 = malloc_type_malloc(4 * Height * Width, 0x100004052888210uLL);
  v12 = v11;
  _H0 = *BaseAddress;
  __asm { FCVT            S9, H0 }

  if (Height)
  {
    v19 = 0;
    v20 = v11;
    v21 = _S9;
    do
    {
      if (Width)
      {
        for (i = 0; i != Width; v20[i++] = _S0)
        {
          _H0 = BaseAddress[i];
          __asm { FCVT            S0, H0 }

          v21 = fmaxf(v21, _S0);
          _S9 = fminf(_S9, _S0);
        }
      }

      ++v19;
      BaseAddress = (BaseAddress + (BytesPerRow & 0xFFFFFFFE));
      v20 += Width;
    }

    while (v19 != Height);
  }

  else
  {
    v21 = _S9;
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  v25 = *&v39 != 0.0;
  v26 = *(&v39 + 1) != 0.0;
  v27 = v25 && v26;
  if (v25 && v26)
  {
    _S9 = *&v39;
  }

  v28 = malloc_type_malloc(4 * Height * Width, 0x9831DB2CuLL);
  v29 = v28;
  v30 = 4 * Width;
  if (Height)
  {
    v31 = 0;
    if (v27)
    {
      v32 = *(&v39 + 1);
    }

    else
    {
      v32 = v21;
    }

    v33 = v32 - _S9;
    v34 = 3;
    v35 = v12;
    do
    {
      if (Width)
      {
        v36 = 0;
        v37 = v34;
        do
        {
          v38 = ~(((v35[v36] - _S9) / v33) * 255.0);
          v28[v37 - 3] = v38;
          v28[v37 - 2] = v38;
          v28[v37 - 1] = v38;
          v28[v37] = -1;
          ++v36;
          v37 += 4;
        }

        while (Width != v36);
      }

      ++v31;
      v35 += Width;
      v34 += v30;
    }

    while (v31 != Height);
  }

  sub_295794BB4(Width, Height, v30, v28, a4);
  free(v29);

  free(v12);
}

- (void)saveF16DisparityTexture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = v9;
  v14 = 2 * v9;
  objc_msgSend_makeCoherent_(self, v15, v6);
  v16 = malloc_type_malloc(v14 * v12, 0x1000040BDFB0063uLL);
  memset(v19, 0, 24);
  v19[3] = v13;
  v19[4] = v12;
  v19[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v17, v16, v14, v19, 0);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v18, v16, v14 * v12, a4);
  free(v16);
}

- (void)saveF16Texture:(id)a3 AsGrayScalePPMFile:(const char *)a4 range:
{
  v47 = v4;
  v7 = a3;
  objc_msgSend_makeCoherent_(self, v8, v7);
  v11 = objc_msgSend_width(v7, v9, v10);
  v14 = objc_msgSend_height(v7, v12, v13);
  v15 = malloc_type_malloc(2 * v11 * v14, 0x1000040BDFB0063uLL);
  memset(v48, 0, 24);
  v48[3] = v11;
  v48[4] = v14;
  v48[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v7, v16, v15, 2 * v11, v48, 0);
  v17 = malloc_type_malloc(4 * v14 * v11, 0x100004052888210uLL);
  v18 = v17;
  v19 = 4 * v11;
  if (v14)
  {
    v20 = 0;
    v21 = 3.4028e38;
    v22 = 1.1755e-38;
    v23 = v17;
    v24 = v15;
    do
    {
      if (v11)
      {
        for (i = 0; i != v11; v23[i++] = _S1)
        {
          _H1 = *&v24[2 * i];
          __asm { FCVT            S1, H1 }

          v22 = fmaxf(v22, _S1);
          v21 = fminf(v21, _S1);
        }
      }

      ++v20;
      v24 += 2 * v11;
      v23 = (v23 + v19);
    }

    while (v20 != v14);
  }

  else
  {
    v22 = 1.1755e-38;
    v21 = 3.4028e38;
  }

  v32 = *&v47 != 0.0;
  v33 = *(&v47 + 1) != 0.0;
  v34 = v32 && v33;
  if (v32 && v33)
  {
    v35 = *&v47;
  }

  else
  {
    v35 = v21;
  }

  v36 = malloc_type_malloc(4 * v14 * v11, 0x4509B403uLL);
  v37 = v36;
  v38 = 4 * v11;
  if (v14)
  {
    v39 = 0;
    if (v34)
    {
      v40 = *(&v47 + 1);
    }

    else
    {
      v40 = v22;
    }

    v41 = v40 - v35;
    v42 = 3;
    v43 = v18;
    do
    {
      if (v11)
      {
        v44 = 0;
        v45 = v42;
        do
        {
          v46 = ~(((v43[v44] - v35) / v41) * 255.0);
          v36[v45 - 3] = v46;
          v36[v45 - 2] = v46;
          v36[v45 - 1] = v46;
          v36[v45] = -1;
          ++v44;
          v45 += 4;
        }

        while (v11 != v44);
      }

      ++v39;
      v43 = (v43 + v19);
      v42 += v38;
    }

    while (v39 != v14);
  }

  sub_295794BB4(v11, v14, v38, v36, a4);
  free(v37);
  free(v15);
  free(v18);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4
{
  v6 = sub_2957945B0(a4, a2);
  if (v6)
  {
    v7 = v6;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    if (Height)
    {
      v12 = BaseAddress;
      do
      {
        fwrite(v12, 2uLL, Width, v7);
        v12 += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);

    fclose(v7);
  }

  else
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A180C();
    }

    v13 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = a4;
      _os_log_impl(&dword_295785000, v13, OS_LOG_TYPE_DEFAULT, "Could not write %s", &v14, 0xCu);
    }
  }
}

- (void)saveU8Texture:(id)a3 AsPGMFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = v9;
  v14 = malloc_type_malloc(v12 * v9 + 4096, 0x2D19AE8DuLL);
  objc_msgSend_makeCoherent_(self, v15, v6);
  memset(v21, 0, 24);
  v21[3] = v9;
  v21[4] = v12;
  v21[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v16, v14, v9, v21, 0);
  v18 = sub_2957945B0(a4, v17);
  if (v18)
  {
    v19 = v18;
    fprintf(v18, "P5 %u %u 255\n", v9, v12);
    if (v12)
    {
      v20 = v14;
      do
      {
        fwrite(v20, 1uLL, v13, v19);
        v20 += v13;
        --v12;
      }

      while (v12);
    }

    fclose(v19);
  }

  free(v14);
}

- (void)saveU16Texture:(id)a3 AsPGMFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = malloc_type_malloc(2 * v9 * v12, 0x14ADE848uLL);
  objc_msgSend_makeCoherent_(self, v14, v6);
  memset(v23, 0, 24);
  v23[3] = v9;
  v23[4] = v12;
  v23[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v15, v13, 2 * v9, v23, 0);
  v17 = sub_2957945B0(a4, v16);
  if (v17)
  {
    v18 = v17;
    fprintf(v17, "P5 %u %u 65535\n", v9, v12);
    if (v12)
    {
      v19 = 0;
      v20 = 2 * v9;
      v21 = v13;
      do
      {
        if (v9)
        {
          v22 = 0;
          do
          {
            fprintf(v18, "%u ", *&v21[v22]);
            v22 += 2;
          }

          while (v20 != v22);
        }

        fputc(10, v18);
        ++v19;
        v21 += v20;
      }

      while (v19 != v12);
    }

    fclose(v18);
  }

  free(v13);
}

- (void)saveF16RGTexture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = v9;
  v14 = 4 * v9;
  objc_msgSend_makeCoherent_(self, v15, v6);
  v16 = malloc_type_malloc(v14 * v12, 0x1000040BDFB0063uLL);
  memset(v19, 0, 24);
  v19[3] = v13;
  v19[4] = v12;
  v19[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v17, v16, v14, v19, 0);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v18, v16, v14 * v12, a4);
  free(v16);
}

- (void)saveF16DisparityTexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  objc_msgSend_makeCoherent_(self, v13, v6);
  v14 = malloc_type_malloc((2 * v9 * v12), 0x1000040BDFB0063uLL);
  v15 = malloc_type_malloc(4 * (v9 * v12), 0x100004052888210uLL);
  memset(v28, 0, 24);
  v28[3] = v9;
  v28[4] = v12;
  v28[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v16, v14, (2 * v9), v28, 0);
  if (v12)
  {
    v17 = 0;
    v18 = v15;
    v19 = v14;
    do
    {
      if (v9)
      {
        v20 = 0;
        do
        {
          _H0 = *&v19[2 * v20];
          __asm { FCVT            S0, H0 }

          *&v18[4 * v20++] = _S0;
        }

        while (v9 != v20);
      }

      ++v17;
      v19 += 2 * v9;
      v18 += 4 * v9;
    }

    while (v17 != v12);
  }

  free(v14);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v27, v9, v12, v15, a4);
  free(v15);
}

- (void)saveRGF16ShiftmapTexture:(id)a3 AsPPMFileSx:(id)a4 AsPPMFileSy:(id)a5
{
  v8 = a3;
  v44 = a4;
  v9 = a5;
  v12 = objc_msgSend_width(v8, v10, v11);
  v15 = objc_msgSend_height(v8, v13, v14);
  v43 = self;
  objc_msgSend_makeCoherent_(self, v16, v8);
  v17 = malloc_type_malloc((2 * v15 * 4 * v12), 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(4 * (v12 * v15), 0x100004052888210uLL);
  v19 = malloc_type_malloc(4 * (v12 * v15), 0x100004052888210uLL);
  memset(v45, 0, 24);
  v45[3] = v12;
  v45[4] = v15;
  v45[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v8, v20, v17, (4 * v12), v45, 0);
  if (v15)
  {
    v21 = 0;
    v22 = v19;
    v23 = v18;
    v24 = v17;
    do
    {
      for (i = v12; i; --i)
      {
        _H0 = *v24;
        __asm { FCVT            S0, H0 }

        *v23++ = _S0;
        LOWORD(_S0) = v24[1];
        __asm { FCVT            S0, H0 }

        *v22++ = _S0;
        v24 += 2;
      }

      ++v21;
    }

    while (v21 != v15);
  }

  free(v17);
  v33 = v44;
  v36 = objc_msgSend_UTF8String(v33, v34, v35);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(v43, v37, v12, v15, v18, v36);
  free(v18);
  v38 = v9;
  v41 = objc_msgSend_UTF8String(v38, v39, v40);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(v43, v42, v12, v15, v19, v41);
  free(v19);
}

- (void)saveRGF16Texture:(id)a3 AsF32BinaryFile0:(id)a4 AsF32BinaryFile1:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v14 = objc_msgSend_UTF8String(v11, v12, v13);
  v16 = sub_2957945B0(v14, v15);
  if (v16)
  {
    v17 = v16;
    v18 = v10;
    v21 = objc_msgSend_UTF8String(v18, v19, v20);
    __stream = sub_2957945B0(v21, v22);
    if (!__stream)
    {
      v52 = v17;
LABEL_17:
      fclose(v52);
      goto LABEL_18;
    }

    v25 = objc_msgSend_width(v8, v23, v24);
    v28 = objc_msgSend_height(v8, v26, v27);
    v29 = 4 * v25;
    objc_msgSend_makeCoherent_(self, v30, v8);
    v31 = malloc_type_malloc(v29 * v28, 0x1000040BDFB0063uLL);
    v32 = v31;
    if (!v31)
    {
      sub_2957A18E0();
      v35 = 0;
      v33 = 0;
      goto LABEL_16;
    }

    v55 = v31;
    v33 = malloc_type_malloc(4 * (v25 & 0x3FFFFFFF), 0x100004052888210uLL);
    if (v33)
    {
      v35 = malloc_type_malloc(4 * (v25 & 0x3FFFFFFF), 0x100004052888210uLL);
      if (v35)
      {
        v54 = v10;
        memset(v57, 0, 24);
        v57[3] = v25;
        v57[4] = v28;
        v57[5] = 1;
        v36 = v8;
        v37 = v8;
        v38 = v55;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v36, v34, v55, 4 * v25, v57, 0);
        if (!v28)
        {
          v32 = v55;
          v8 = v37;
          v10 = v54;
          goto LABEL_16;
        }

        v53 = v37;
        v39 = 0;
        v40 = v29 >> 1;
        do
        {
          if (v25)
          {
            v41 = 0;
            v42 = v35;
            v43 = v33;
            do
            {
              _H0 = *(v38 + 2 * v41);
              __asm { FCVT            S0, H0 }

              _H1 = *(v38 + 2 * (v41 + 1));
              __asm { FCVT            S1, H1 }

              *v43++ = _S0;
              *v42++ = _S1;
              v41 += 2;
            }

            while (2 * v25 != v41);
          }

          fwrite(v33, 4uLL, v25, v17);
          fwrite(v35, 4uLL, v25, __stream);
          v38 += 2 * v40;
          ++v39;
        }

        while (v39 != v28);
        v8 = v53;
        v10 = v54;
      }

      else
      {
        sub_2957A1820();
      }
    }

    else
    {
      sub_2957A1880();
      v35 = 0;
    }

    v32 = v55;
LABEL_16:
    free(v33);
    free(v35);
    free(v32);
    fclose(v17);
    v52 = __stream;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)saveRGBA8Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v13 = malloc_type_malloc(4 * v9 * v12, 0xD13A6CE5uLL);
  if (v13)
  {
    v15 = v13;
    objc_msgSend_makeCoherent_(self, v14, v6);
    memset(v18, 0, 24);
    v18[3] = v9;
    v18[4] = v12;
    v18[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v16, v15, 4 * v9, v18, 0);
    sub_295794BB4(v9, v12, 4 * v9, v15, a4);
    free(v15);
  }

  else
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A180C();
    }

    v17 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&dword_295785000, v17, OS_LOG_TYPE_DEFAULT, "Could not allocate rgbaImagesData", v18, 2u);
    }
  }
}

- (void)saveRGBA8Texture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_width(v6, v7, v8);
  v12 = objc_msgSend_height(v6, v10, v11);
  v14 = malloc_type_malloc(4 * v9 * v12, 0xABE21FF2uLL);
  if (v14)
  {
    v15 = sub_2957945B0(a4, v13);
    if (v15)
    {
      v17 = v15;
      objc_msgSend_makeCoherent_(self, v16, v6);
      memset(v19, 0, 24);
      v19[3] = v9;
      v19[4] = v12;
      v19[5] = 1;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v18, v14, 4 * v9, v19, 0);
      fwrite(v14, 4 * v9 * v12, 1uLL, v17);
      fclose(v17);
    }

    else
    {
      sub_2957A1940();
    }
  }

  else
  {
    sub_2957A19A0();
  }

  free(v14);
}

- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  v6 = sub_2957945B0(a4, a2);
  if (v6)
  {
    v7 = v6;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v10 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    fprintf(v7, "P6 %u %u 255\n", Width, Height);
    if (Height)
    {
      v13 = 0;
      v14 = BytesPerRow >> 2;
      do
      {
        if (Width)
        {
          v15 = 0;
          v16 = 2;
          do
          {
            v10[v16 - 2] = vcvtms_s32_f32(BaseAddress[v15] * 255.0);
            v10[v16 - 1] = vcvtms_s32_f32(BaseAddress[(v15 + 1)] * 255.0);
            v10[v16] = vcvtms_s32_f32(BaseAddress[(v15 + 2)] * 255.0);
            v16 += 3;
            v15 += 4;
          }

          while (4 * Width != v15);
        }

        fwrite(v10, 3uLL, Width, v7);
        BaseAddress += v14;
        ++v13;
      }

      while (v13 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    fclose(v7);

    free(v10);
  }

  else
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A180C();
    }

    v17 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = a4;
      _os_log_impl(&dword_295785000, v17, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)save32BGRAPixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  v5 = sub_2957945B0(a4, a2);
  if (v5)
  {
    v6 = v5;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v9 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    fprintf(v6, "P6 %u %u 255\n", Width, Height);
    if (Height)
    {
      for (i = 0; i != Height; ++i)
      {
        if (Width)
        {
          v13 = 0;
          v14 = 2;
          do
          {
            v9[v14 - 2] = BaseAddress[(v13 + 2)];
            v9[v14 - 1] = BaseAddress[(v13 + 1)];
            v9[v14] = BaseAddress[v13];
            v14 += 3;
            v13 += 4;
          }

          while (4 * Width != v13);
        }

        fwrite(v9, 3uLL, Width, v6);
        BaseAddress += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    fclose(v6);

    free(v9);
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);

  MEMORY[0x2A1C70FE8](self, sel_saveRGBAF16PixelBuffer_out_width_out_height_AsPPMFile_, a3);
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6
{
  v10 = sub_2957945B0(a6, a2);
  if (v10)
  {
    v11 = v10;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    v12 = malloc_type_malloc(3 * a4, 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    fprintf(v11, "P6 %u %u 255\n", a4, a5);
    if (a5)
    {
      v15 = 0;
      v16 = BytesPerRow >> 1;
      do
      {
        if (a4)
        {
          v17 = 0;
          v18 = 2;
          do
          {
            _H0 = *&BaseAddress[2 * v17];
            __asm { FCVT            S0, H0 }

            v12[v18 - 2] = vcvtms_s32_f32(_S0 * 255.0);
            LOWORD(_S0) = *&BaseAddress[2 * (v17 + 1)];
            __asm { FCVT            S0, H0 }

            v12[v18 - 1] = vcvtms_s32_f32(_S0 * 255.0);
            LOWORD(_S0) = *&BaseAddress[2 * (v17 + 2)];
            __asm { FCVT            S0, H0 }

            v12[v18] = vcvtms_s32_f32(_S0 * 255.0);
            v18 += 3;
            v17 += 4;
          }

          while (4 * a4 != v17);
        }

        fwrite(v12, 3uLL, a4, v11);
        BaseAddress += 2 * v16;
        ++v15;
      }

      while (v15 != a5);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    fclose(v11);

    free(v12);
  }

  else
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A180C();
    }

    v27 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = a6;
      _os_log_impl(&dword_295785000, v27, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFileWithAlpha:(const char *)a4
{
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);

  MEMORY[0x2A1C70FE8](self, sel_saveRGBAF16PixelBuffer_out_width_out_height_AsPPMFileWithAlpha_, a3);
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFileWithAlpha:(const char *)a6
{
  v10 = sub_2957945B0(a6, a2);
  if (v10)
  {
    v11 = v10;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    v12 = malloc_type_malloc(4 * a4, 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    fprintf(v11, "P7\nWIDTH %u\nHEIGHT %u\nDEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR", a4, a5);
    if (a5)
    {
      v15 = 0;
      v16 = BytesPerRow >> 1;
      do
      {
        if (a4)
        {
          v17 = 0;
          do
          {
            _H0 = *&BaseAddress[2 * v17];
            __asm { FCVT            S0, H0 }

            v12[v17] = vcvtms_s32_f32(_S0 * 255.0);
            LOWORD(_S0) = *&BaseAddress[2 * (v17 + 1)];
            __asm { FCVT            S0, H0 }

            v12[(v17 + 1)] = vcvtms_s32_f32(_S0 * 255.0);
            LOWORD(_S0) = *&BaseAddress[2 * (v17 + 2)];
            __asm { FCVT            S0, H0 }

            v12[(v17 + 2)] = vcvtms_s32_f32(_S0 * 255.0);
            LOWORD(_S0) = *&BaseAddress[2 * (v17 + 3)];
            __asm { FCVT            S0, H0 }

            v12[(v17 + 3)] = vcvtms_s32_f32(_S0 * 255.0);
            v17 += 4;
          }

          while (4 * a4 != v17);
        }

        fwrite(v12, 4uLL, a4, v11);
        BaseAddress += 2 * v16;
        ++v15;
      }

      while (v15 != a5);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    fclose(v11);

    free(v12);
  }

  else
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A180C();
    }

    v27 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = a6;
      _os_log_impl(&dword_295785000, v27, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)saveF16Texture:(id)a3 AsF32BinaryFile:(const char *)a4
{
  v6 = a3;
  v8 = sub_2957945B0(a4, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_width(v6, v9, v10);
    v15 = objc_msgSend_height(v6, v13, v14);
    v16 = 2 * v12;
    v17 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
    v18 = malloc_type_malloc(v16 * v15, 0x1000040BDFB0063uLL);
    objc_msgSend_makeCoherent_(self, v19, v6);
    memset(v30, 0, 24);
    v30[3] = v12;
    v30[4] = v15;
    v30[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v20, v18, v16, v30, 0);
    if (v15)
    {
      v21 = 0;
      v22 = v18;
      do
      {
        if (v12)
        {
          for (i = 0; i != v12; v17[i++] = _S0)
          {
            _H0 = *&v22[2 * i];
            __asm { FCVT            S0, H0 }
          }
        }

        fwrite(v17, 4uLL, v12, v11);
        ++v21;
        v22 += v16;
      }

      while (v21 != v15);
    }

    free(v17);
    free(v18);
    fclose(v11);
  }
}

- (void)saveNCCOutputFrom:(id)a3 asBinaryFiles:(const char *)a4
{
  v6 = a3;
  objc_msgSend_waitForIdle(self->_metalContext, v7, v8);
  objc_msgSend_makeCoherent_(self, v9, v6);
  v12 = objc_msgSend_width(v6, v10, v11);
  v15 = objc_msgSend_height(v6, v13, v14);
  v18 = objc_msgSend_bufferBytesPerRow(v6, v16, v17);
  v19 = malloc_type_malloc(v18 * v15, 0x885D3F11uLL);
  v20 = vabd_s32(vdup_n_s32(v18), vshl_u32(vdup_n_s32(v12), 0x400000003));
  v21 = vcgt_u32(vdup_lane_s32(v20, 1), v20).u8[0];
  v22 = @"f32";
  if (v21)
  {
    v22 = @"f16";
  }

  v23 = v22;
  v91 = v12;
  v84 = v19;
  v89 = v18;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v24, v19);
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v25, @"%s_L_%dx%d.%@", a4, v12, v15, v23);
  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v27, @"%s_R_%dx%d.%@", a4, v12, v15, v23);
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v29, @"%s_C_%dx%d.%@", a4, v12, v15, v23);
  v92 = v12;
  v96 = a4;
  v32 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v31, @"%s_F_%dx%d.%@", a4, v12, v15, v23);
  v33 = v26;
  v36 = objc_msgSend_UTF8String(v33, v34, v35);
  v38 = sub_2957945B0(v36, v37);
  v39 = v28;
  v42 = objc_msgSend_UTF8String(v39, v40, v41);
  v44 = sub_2957945B0(v42, v43);
  v45 = v30;
  v83 = v30;
  v48 = objc_msgSend_UTF8String(v45, v46, v47);
  v95 = sub_2957945B0(v48, v49);
  v50 = v32;
  v53 = objc_msgSend_UTF8String(v50, v51, v52);
  v55 = sub_2957945B0(v53, v54);
  v56 = 0;
  v93 = v55;
  __stream = v38;
  if (!v38)
  {
    v85 = 0;
    v57 = v44;
    goto LABEL_37;
  }

  v57 = v44;
  if (!v44)
  {
    v85 = 0;
LABEL_37:
    v58 = v95;
    goto LABEL_38;
  }

  v58 = v95;
  if (!v95)
  {
    v85 = 0;
    goto LABEL_38;
  }

  v85 = 0;
  if (!v55)
  {
    goto LABEL_38;
  }

  v90 = v15;
  v80 = v28;
  v81 = v26;
  v82 = v6;
  v59 = 4;
  if (v21)
  {
    v59 = 2;
  }

  __size = v59;
  v60 = 1;
  if ((v21 & 1) == 0)
  {
    v60 = 2;
  }

  v61 = v91 << v60;
  v62 = malloc_type_malloc(v91 << v60, 0x24B2F1B5uLL);
  v63 = malloc_type_malloc(v61, 0x311604CEuLL);
  v64 = malloc_type_malloc(v61, 0x9916A70BuLL);
  v66 = malloc_type_malloc(v61, 0x83896B1uLL);
  v88 = v57;
  if (v21)
  {
    v56 = 0;
    v85 = 0;
    if (!v90)
    {
      goto LABEL_23;
    }

LABEL_15:
    v67 = 0;
    v68 = 0;
    v69 = v84;
    v86 = v21;
    do
    {
      v97 = v68;
      if (v92)
      {
        v70 = 0;
        v71 = 0;
        do
        {
          v72 = (v71 + 1);
          v73 = (v71 + 2);
          v74 = (v71 + 3);
          if (v21)
          {
            *&v62[v70] = *&v69[2 * v71];
            *&v63[v70] = *&v69[2 * v72];
            *&v64[v70] = *&v69[2 * v73];
            *&v66[v70] = *&v69[2 * v74];
          }

          else
          {
            *&v62[v71] = *&v69[4 * v71];
            *&v63[v71] = *&v69[4 * v72];
            *&v64[v71] = *&v69[4 * v73];
            *&v66[v71] = *&v69[4 * v74];
            v75 = fmaxf(fminf(*&v69[4 * v71] * 25500.0, 255.0), 0.0);
            v56[(v67 + v71 + 2)] = v75;
            v56[(v67 + v71 + 1)] = v75;
            v56[(v67 + v71)] = v75;
            v56[(v67 + v71 + 3)] = -1;
          }

          v71 += 4;
          v70 += 2;
        }

        while (4 * v91 != v71);
      }

      fwrite(v62, __size, v91, __stream);
      fwrite(v63, __size, v91, v88);
      fwrite(v64, __size, v91, v95);
      v21 = v86;
      fwrite(v66, __size, v91, v93);
      v69 += v89;
      v68 = v97 + 1;
      v67 += 4 * v92;
    }

    while (v97 + 1 != v90);
    goto LABEL_23;
  }

  v85 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v65, @"%s_L_%dx%d.ppm", v96, v92, v90);
  v56 = malloc_type_malloc((4 * v92 * v90), 0x72A3BA2BuLL);
  if (v90)
  {
    goto LABEL_15;
  }

LABEL_23:
  if ((v21 & 1) == 0)
  {
    v76 = v85;
    v79 = objc_msgSend_UTF8String(v76, v77, v78);
    sub_295794BB4(v92, v90, 4 * v92, v56, v79);
  }

  v57 = v88;
  v58 = v95;
  if (v62)
  {
    free(v62);
  }

  if (v63)
  {
    free(v63);
  }

  v6 = v82;
  if (v64)
  {
    free(v64);
  }

  v26 = v81;
  if (v66)
  {
    free(v66);
  }

  v28 = v80;
LABEL_38:
  if (v84)
  {
    free(v84);
  }

  if (v56)
  {
    free(v56);
  }

  if (__stream)
  {
    fclose(__stream);
  }

  if (v57)
  {
    fclose(v57);
  }

  if (v58)
  {
    fclose(v58);
  }

  if (v93)
  {
    fclose(v93);
  }
}

- (void)savePixelBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v7, @"%s.%c%c%c%c", a4, HIBYTE(PixelFormatType), BYTE2(PixelFormatType), BYTE1(PixelFormatType), PixelFormatType);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v8, v13);
  v9 = v13;
  v12 = objc_msgSend_UTF8String(v13, v10, v11);
  MEMORY[0x29C251A80](v12, a3);
}

- (void)WriteBinDataToFile:(void *)a3 length:(unsigned int)a4 fileFullPath:(const char *)a5
{
  v7 = sub_2957945B0(a5, a2);
  if (v7)
  {
    v8 = v7;
    fwrite(a3, 1uLL, a4, v7);

    fclose(v8);
  }
}

+ (void)createPathIfNeeded:(id)a3
{
  v3 = objc_msgSend_stringByDeletingLastPathComponent(a3, a2, a3);
  v6 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v4, v5);
  v15 = 0;
  v8 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v6, v7, v3, 1, 0, &v15);
  v9 = v15;
  if ((v8 & 1) == 0)
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A17E4();
    }

    v10 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_295785000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", &v11, 0x16u);
    }
  }
}

- (void)saveAccumulationFrom:(id)a3 asBinaryFiles:(const char *)a4 forSize:(CGSize)a5 costLineSize:(unsigned __int16)a6
{
  v80 = a6;
  height = a5.height;
  width = a5.width;
  v73 = a3;
  objc_msgSend_waitForIdle(self->_metalContext, v10, v11);
  objc_msgSend_makeCoherent_(self, v12, v73);
  v82 = width;
  v13 = malloc_type_malloc(4 * v82, 0x100004052888210uLL);
  v14 = malloc_type_malloc(4 * v82, 0x100004052888210uLL);
  v15 = malloc_type_malloc(4 * v82, 0x100004052888210uLL);
  v16 = malloc_type_malloc(4 * v82, 0x100004052888210uLL);
  v17 = v73;
  v20 = objc_msgSend_contents(v73, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v21, @"%s_L.f32", a4);
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v23, @"%s_R.f32", a4);
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v25, @"%s_C.f32", a4);
  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v27, @"%s_W.f32", a4);
  v72 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v29, @"%s_L.ppm", a4);
  v30 = v22;
  v71 = v22;
  v33 = objc_msgSend_UTF8String(v30, v31, v32);
  v35 = sub_2957945B0(v33, v34);
  v36 = v24;
  v39 = objc_msgSend_UTF8String(v36, v37, v38);
  v41 = sub_2957945B0(v39, v40);
  v42 = v26;
  v45 = objc_msgSend_UTF8String(v42, v43, v44);
  v79 = sub_2957945B0(v45, v46);
  v47 = v28;
  v50 = objc_msgSend_UTF8String(v47, v48, v49);
  v52 = sub_2957945B0(v50, v51);
  v53 = v35;
  v54 = 0;
  v77 = v52;
  v78 = v41;
  if (!v53 || !v41)
  {
LABEL_12:
    v55 = v79;
    goto LABEL_13;
  }

  v55 = v79;
  if (v79 && v52)
  {
    __stream = v53;
    v69 = v28;
    v70 = v24;
    v56 = malloc_type_malloc(4 * height * v82, 0x1DEA816FuLL);
    v57 = width;
    v54 = v56;
    v75 = height;
    if (height)
    {
      v58 = 0;
      v59 = 0;
      v74 = v80;
      do
      {
        v81 = v59;
        if (v57)
        {
          v60 = 0;
          do
          {
            v61 = *(v20 + 4 * v60);
            *&v13[v60] = v61;
            v62 = fmaxf(fminf(v61 * 25500.0, 255.0), 0.0);
            v54[(v58 + v60 + 2)] = v62;
            v54[(v58 + v60 + 1)] = v62;
            v54[(v58 + v60)] = v62;
            v54[(v58 + v60 + 3)] = -1;
            *&v14[v60] = *(v20 + 4 * (v60 + 1));
            *&v15[v60] = *(v20 + 4 * (v60 + 2));
            *&v16[v60] = *(v20 + 4 * (v60 + 3));
            v60 += 4;
          }

          while (4 * v82 != v60);
        }

        fwrite(v13, 4uLL, v82, __stream);
        fwrite(v14, 4uLL, v82, v78);
        fwrite(v15, 4uLL, v82, v79);
        fwrite(v16, 4uLL, v82, v77);
        v57 = width;
        v20 += 4 * v74;
        v59 = v81 + 1;
        v58 += 4 * v82;
      }

      while (v81 + 1 != v75);
    }

    v63 = 4 * v57;
    v64 = v57;
    v65 = v72;
    v68 = objc_msgSend_UTF8String(v65, v66, v67);
    sub_295794BB4(v64, v75, v63, v54, v68);
    v24 = v70;
    v28 = v69;
    v53 = __stream;
    goto LABEL_12;
  }

LABEL_13:
  if (v53)
  {
    fclose(v53);
  }

  if (v78)
  {
    fclose(v78);
  }

  if (v55)
  {
    fclose(v55);
  }

  if (v77)
  {
    fclose(v77);
  }

  free(v54);
  free(v13);
  free(v14);
  free(v15);
  free(v16);
}

- (void)saveF32Texture:(id)a3 AsF32BinaryFile:(const char *)a4
{
  v6 = a3;
  v10 = sub_2957945B0(a4, v7);
  if (v10)
  {
    v11 = objc_msgSend_width(v6, v8, v9);
    v14 = objc_msgSend_height(v6, v12, v13);
    v15 = v11;
    v16 = 4 * v11;
    v17 = malloc_type_malloc(v16, 0x100004052888210uLL);
    if (v17)
    {
      v19 = malloc_type_malloc((v16 * v14) & 0xFFFFFFFC, 0x100004052888210uLL);
      if (v19)
      {
        objc_msgSend_makeCoherent_(self, v18, v6);
        memset(v24, 0, 24);
        v24[3] = v15;
        v24[4] = v14;
        v24[5] = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v20, v19, v16 & 0xFFFFFFFC, v24, 0);
        if (v14)
        {
          v21 = 0;
          v22 = v19;
          do
          {
            if (v15)
            {
              v23 = 0;
              do
              {
                *&v17[v23] = *&v22[v23];
                v23 += 4;
              }

              while (v16 != v23);
            }

            fwrite(v17, 4uLL, v15, v10);
            ++v21;
            v22 += v16 & 0xFFFFFFFC;
          }

          while (v21 != v14);
        }
      }

      else
      {
        sub_2957A1A00();
      }
    }

    else
    {
      sub_2957A1A60();
      v19 = 0;
    }
  }

  else
  {
    sub_2957A1AC0();
    v19 = 0;
    v17 = 0;
  }

  free(v17);
  free(v19);
  fclose(v10);
}

- (void)saveRGBA16FTexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v8 = sub_2957945B0(a4, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_width(v6, v9, v10);
    v15 = objc_msgSend_height(v6, v13, v14);
    v16 = malloc_type_malloc(3 * v12, 0x100004077774924uLL);
    v17 = malloc_type_malloc(8 * v12 * v15, 0x1000040BDFB0063uLL);
    fprintf(v11, "P6 %u %u 255\n", v12, v15);
    objc_msgSend_makeCoherent_(self, v18, v6);
    memset(v35, 0, 24);
    v35[3] = v12;
    v35[4] = v15;
    v35[5] = 1;
    v34 = v6;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v19, v17, 8 * v12, v35, 0);
    if (v15)
    {
      v20 = 0;
      v21 = v17;
      do
      {
        if (v12)
        {
          v22 = 0;
          v23 = 2;
          do
          {
            _H0 = *&v21[2 * v22];
            __asm { FCVT            S0, H0 }

            v30 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v21[2 * (v22 + 1)];
            __asm { FCVT            S0, H0 }

            v32 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v21[2 * (v22 + 2)];
            __asm { FCVT            S0, H0 }

            v16[v23 - 2] = v30;
            v16[v23 - 1] = v32;
            v16[v23] = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v23 += 3;
            v22 += 4;
          }

          while (4 * v12 != v22);
        }

        fwrite(v16, 3uLL, v12, v11);
        v21 += 8 * (v12 & 0x3FFFFFFF);
        ++v20;
      }

      while (v20 != v15);
    }

    free(v16);
    free(v17);
    fclose(v11);
    v6 = v34;
  }
}

- (void)saveRGBA16FTexture:(id)a3 AsF32File:(const char *)a4
{
  v6 = a3;
  v8 = sub_2957945B0(a4, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_width(v6, v9, v10);
    v15 = objc_msgSend_height(v6, v13, v14);
    v16 = malloc_type_malloc(16 * (v12 & 0x3FFFFFFF), 0x100004052888210uLL);
    v17 = malloc_type_malloc(8 * v12 * v15, 0x1000040BDFB0063uLL);
    objc_msgSend_makeCoherent_(self, v18, v6);
    memset(v30, 0, 24);
    v30[3] = v12;
    v30[4] = v15;
    v30[5] = 1;
    v29 = v17;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v19, v17, 8 * v12, v30, 0);
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        if (v12)
        {
          v22 = 0;
          do
          {
            _H0 = *&v17[2 * (v22 + 2)];
            __asm { FCVT            S0, H0 }

            v20.i32[0] = *&v17[2 * v22];
            v20 = vcvtq_f32_f16(v20).u64[0];
            *&v16[v22] = v20;
            v16[(v22 + 2)] = _S0;
            v16[(v22 + 3)] = 0;
            v22 += 4;
          }

          while (4 * v12 != v22);
        }

        fwrite(v16, 0x10uLL, v12, v11);
        v17 += 8 * (v12 & 0x3FFFFFFF);
      }
    }

    free(v16);
    free(v29);
    fclose(v11);
  }
}

- (void)saveRGB10A2Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v8 = sub_2957945B0(a4, v7);
  if (v8)
  {
    v11 = v8;
    if (objc_msgSend_pixelFormat(v6, v9, v10) == 90)
    {
      v14 = objc_msgSend_width(v6, v12, v13);
      v17 = objc_msgSend_height(v6, v15, v16);
      v18 = malloc_type_malloc(3 * v14, 0x100004077774924uLL);
      v19 = malloc_type_malloc(4 * v14 * v17, 0x100004052888210uLL);
      fprintf(v11, "P6 %u %u 255\n", v14, v17);
      objc_msgSend_makeCoherent_(self, v20, v6);
      memset(v28, 0, 24);
      v28[3] = v14;
      v28[4] = v17;
      v28[5] = 1;
      v27 = v19;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v21, v19, 4 * v14, v28, 0);
      if (v17)
      {
        v22 = 0;
        v23 = 4 * v14;
        do
        {
          if (v14)
          {
            v24 = 0;
            v25 = 2;
            do
            {
              v26 = *&v19[v24];
              v18[v25 - 2] = vcvtms_s32_f32(((v26 & 0x3FF) / 1023.0) * 255.0);
              v18[v25 - 1] = vcvtms_s32_f32((((v26 >> 10) & 0x3FF) / 1023.0) * 255.0);
              v18[v25] = vcvtms_s32_f32((((v26 >> 20) & 0x3FF) / 1023.0) * 255.0);
              v25 += 3;
              v24 += 4;
            }

            while (v23 != v24);
          }

          fwrite(v18, 3uLL, v14, v11);
          ++v22;
          v19 += v23;
        }

        while (v22 != v17);
      }

      free(v18);
      free(v27);
    }

    fclose(v11);
  }
}

@end