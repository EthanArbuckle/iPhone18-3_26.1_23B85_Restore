@interface disparityDebugUtils
+ (void)createPathIfNeeded:(id)a3;
- (disparityDebugUtils)initWithMetalContext:(id)a3;
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
- (void)saveRGBATexture:(id)a3 AsPPMFile:(const char *)a4;
- (void)saveRGF16ShiftmapTexture:(id)a3 AsPPMFileSx:(id)a4 AsPPMFileSy:(id)a5;
- (void)saveRGF16Texture:(id)a3 AsF32BinaryFile0:(id)a4 AsF32BinaryFile1:(id)a5;
- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveU16Texture:(id)a3 AsPGMFile:(const char *)a4;
- (void)saveU8Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4;
- (void)saveU8Texture:(id)a3 AsPGMFile:(const char *)a4;
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
  v9 = sub_2956EEA7C(a4, a2, a3, a4, v5, v6);
  if (v9)
  {
    v10 = v9;
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v15 = malloc_type_malloc(3 * Width, 0x100004077774924uLL);
    __nitems = Width;
    fprintf(v10, "P6 %u %u 255\n", Width, Height);
    v23 = Height;
    if (Height)
    {
      v16 = 0;
      v17 = BytesPerRow & 0xFFFFFFFC;
      v18 = 4 * Width;
      do
      {
        v19 = v10;
        if (__nitems)
        {
          v20 = 0;
          v21 = 2;
          do
          {
            v22 = vcvtms_s32_f32(fmaxf(fminf(powf(*&BaseAddress[v20], a5) * 255.0, 255.0), 0.0));
            v15[v21 - 2] = v22;
            v15[v21 - 1] = v22;
            v15[v21] = v22;
            v21 += 3;
            v20 += 4;
          }

          while (v18 != v20);
        }

        v10 = v19;
        fwrite(v15, 3uLL, __nitems, v19);
        ++v16;
        BaseAddress += v17;
      }

      while (v16 != v23);
    }

    free(v15);

    fclose(v10);
  }
}

- (void)saveF16Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 scale:(float)a5
{
  v9 = sub_2956EEA7C(a4, a2, a3, a4, v5, v6);
  if (v9)
  {
    v10 = v9;
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v15 = malloc_type_malloc(3 * Width, 0x100004077774924uLL);
    __nitems = Width;
    fprintf(v10, "P6 %u %u 255\n", Width, Height);
    v29 = Height;
    if (Height)
    {
      v16 = 0;
      v17 = BytesPerRow & 0xFFFFFFFE;
      v18 = 2 * Width;
      do
      {
        v19 = v10;
        if (__nitems)
        {
          v20 = 0;
          v21 = 2;
          do
          {
            _H0 = *&BaseAddress[v20];
            __asm { FCVT            S0, H0; float }

            v28 = vcvtms_s32_f32(fmaxf(fminf(powf(_S0, a5) * 255.0, 255.0), 0.0));
            v15[v21 - 2] = v28;
            v15[v21 - 1] = v28;
            v15[v21] = v28;
            v21 += 3;
            v20 += 2;
          }

          while (v18 != v20);
        }

        v10 = v19;
        fwrite(v15, 3uLL, __nitems, v19);
        ++v16;
        BaseAddress += v17;
      }

      while (v16 != v29);
    }

    free(v15);

    fclose(v10);
  }
}

- (void)saveF16Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v12 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    v19 = objc_msgSend_width(v6, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_height(v6, v20, v21, v22, v23, v24);
    v26 = malloc_type_malloc(3 * v19, 0x100004077774924uLL);
    v27 = malloc_type_malloc(2 * v19 * v25, 0x1000040BDFB0063uLL);
    fprintf(v18, "P6 %u %u 255\n", v19, v25);
    objc_msgSend_makeCoherent_(self, v28, v6, v29, v30, v31);
    memset(v45, 0, 24);
    v45[3] = v19;
    v45[4] = v25;
    v45[5] = 1;
    v44 = v27;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v32, v27, 2 * v19, v45, 0);
    if (v25)
    {
      v33 = 0;
      v34 = 2 * v19;
      do
      {
        if (v19)
        {
          v35 = 0;
          v36 = 2;
          do
          {
            _H0 = *&v27[v35];
            __asm { FCVT            S0, H0 }

            v43 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v26[v36 - 2] = v43;
            v26[v36 - 1] = v43;
            v26[v36] = v43;
            v36 += 3;
            v35 += 2;
          }

          while (v34 != v35);
        }

        fwrite(v26, 3uLL, v19, v18);
        ++v33;
        v27 += v34;
      }

      while (v33 != v25);
    }

    free(v26);
    free(v44);
    fclose(v18);
  }
}

- (void)saveF32Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v9 = malloc_type_malloc(4 * Width * Height, 0xDD18702AuLL);
  v14 = v9;
  if (Height)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = Width;
      v18 = v15;
      if (Width)
      {
        do
        {
          v19 = vdupq_n_s16((BaseAddress[v18] * 255.0));
          v19.i16[3] = 255;
          *(v9 + v18++) = vmovn_s16(v19).u32[0];
          --v17;
        }

        while (v17);
      }

      ++v16;
      v15 += Width;
    }

    while (v16 != Height);
  }

  v32 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @"%s", v11, v12, v13, a4);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v20, v32, v21, v22, v23);
  v24 = v32;
  v30 = objc_msgSend_UTF8String(v32, v25, v26, v27, v28, v29);
  sub_2956EF080(Width, Height, 4 * Width, v14, v30, v31);
  free(v14);
}

- (void)saveU8Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v10 = malloc_type_malloc(4 * Width * Height, 0xBA44AB5AuLL);
  v15 = v10;
  if (Height)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = Width;
      v20 = v16;
      v21 = v17;
      if (Width)
      {
        do
        {
          v22 = vdupq_n_s16(BaseAddress[v20]);
          v22.i16[3] = 255;
          *(v10 + v21++) = vmovn_s16(v22).u32[0];
          ++v20;
          --v19;
        }

        while (v19);
      }

      ++v18;
      v17 += Width;
      v16 += BytesPerRow;
    }

    while (v18 != Height);
  }

  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v11, @"%s", v12, v13, v14, a4);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v23, v35, v24, v25, v26);
  v27 = v35;
  v33 = objc_msgSend_UTF8String(v35, v28, v29, v30, v31, v32);
  sub_2956EF080(Width, Height, 4 * Width, v15, v33, v34);
  free(v15);
}

- (void)saveVUYA4444Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = malloc_type_malloc(4 * v12 * v18, 0x100004077774924uLL);
  objc_msgSend_makeCoherent_(self, v20, v6, v21, v22, v23);
  memset(v28, 0, 24);
  v28[3] = v12;
  v28[4] = v18;
  v28[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v24, v19, 4 * v12, v28, 0);

  objc_msgSend_convertVUYA444_rbs_ToRGBA_ofSize_(self, v25, v19, 4 * v12, v19, v26, v12, v18);
  sub_2956EF080(v12, v18, 4 * v12, v19, a4, v27);
  free(v19);
}

- (void)saveVUYA4444Texture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = malloc_type_malloc(4 * v12 * v18, 0x12E7F8D9uLL);
  objc_msgSend_makeCoherent_(self, v20, v6, v21, v22, v23);
  memset(v27, 0, 24);
  v27[3] = v12;
  v27[4] = v18;
  v27[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v24, v19, 4 * v12, v27, 0);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v25, v19, 4 * v12 * v18, a4, v26);
  free(v19);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6
{
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v14 = malloc_type_malloc(4 * Width * Height, 0x85AD6BAFuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  objc_msgSend_convertVUYA444_rbs_ToRGBA_ofSize_(self, v16, BaseAddress, BytesPerRow, v14, v17, Width, Height);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = Width;
  }

  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = Height;
  }

  sub_2956EF080(v19, v20, 4 * Width, v14, a6, v18);

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
  sub_2956EF080(v8, v7, (4 * v8), v14, a6, v17);

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
  v22 = sub_2956EEA7C(a6, v17, v18, v19, v20, v21);
  if (v22)
  {
    v23 = v22;
    v24 = malloc_type_malloc((4 * v8), 0x100004077774924uLL);
    if (v24)
    {
      v25 = v24;
      fprintf(v23, "P7\nWIDTH %u\nHEIGHT %u\nDEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR", v8, a5);
      if (a5)
      {
        v26 = 0;
        v27 = v14;
        do
        {
          if (v8)
          {
            v28 = 0;
            v29 = v8;
            do
            {
              v30 = &v25[v28];
              *v30 = v27[v28];
              v30[1] = v27[v28 + 1];
              v30[2] = v27[v28 + 2];
              v30[3] = v27[v28 + 3];
              v28 += 4;
              --v29;
            }

            while (v29);
          }

          fwrite(v25, 4uLL, v8, v23);
          v27 += (4 * v8);
          ++v26;
        }

        while (v26 != a5);
      }

      free(v25);
    }

    fclose(v23);
  }

  free(v14);
}

- (void)save420CVPixelBuffer:(__CVBuffer *)a3 to:(const char *)a4
{
  v7 = sub_2956EEA7C(a4, a2, a3, a4, v4, v5);
  if (v7)
  {
    v8 = v7;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    if (Height)
    {
      v13 = BytesPerRowOfPlane;
      v14 = Height;
      do
      {
        fwrite(BaseAddressOfPlane, 1uLL, Width, v8);
        BaseAddressOfPlane += v13;
        --v14;
      }

      while (v14);
    }

    v15 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
    v16 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    if (Height)
    {
      v17 = 0;
      v18 = v16;
      do
      {
        fwrite(v15, 1uLL, Width, v8);
        v15 += v18;
        v17 += 2;
      }

      while (v17 < Height);
    }

    fclose(v8);

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }
}

- (void)saveLumaTexture:(id)a3 to:(const char *)a4
{
  v6 = a3;
  v12 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    v19 = objc_msgSend_width(v6, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_height(v6, v20, v21, v22, v23, v24);
    v26 = malloc_type_malloc(v25 * v19, 0x4EAF6647uLL);
    objc_msgSend_makeCoherent_(self, v27, v6, v28, v29, v30);
    v31 = v19;
    memset(v34, 0, 24);
    v34[3] = v19;
    v34[4] = v25;
    v34[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v32, v26, v19, v34, 0);
    fwrite(v26, 1uLL, v25 * v19, v18);
    bzero(v26, v19);
    if (v25)
    {
      for (i = 0; i < v25; i += 2)
      {
        fwrite(v26, 1uLL, v31, v18);
      }
    }

    free(v26);
    fclose(v18);
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
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = malloc_type_malloc(4 * v12 * v18, 0xF858F8E4uLL);
  objc_msgSend_makeCoherent_(self, v20, v6, v21, v22, v23);
  v29 = objc_msgSend_width(v6, v24, v25, v26, v27, v28);
  memset(v48, 0, 24);
  v48[3] = v12;
  v48[4] = v18;
  v48[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v30, v19, 4 * v29, v48, 0);

  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v31, @"%s", v32, v33, v34, a4);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v36, v35, v37, v38, v39);
  v40 = v35;
  v46 = objc_msgSend_UTF8String(v40, v41, v42, v43, v44, v45);
  sub_2956EF080(v12, v18, 4 * v12, v19, v46, v47);
  free(v19);
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

            v25 = &unk_29570BC50 + 3 * ((((fmaxf(a5, fminf(a6, _S3)) - a5) / (a6 - a5)) * 1024.0) + -0.49);
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
    sub_2956EF080(Width, Height, 4 * Width, v15, a4, v26);

    free(v15);
  }
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 WithDisparityScale:(float)a5 AndPercentile:(float)a6
{
  v16 = 0;
  objc_msgSend_computeRobustMinMaxForF16DisparityBuffer_WithDisparityScale_AndPercentile_OutSignalMin_OutSignalMax_(self, a2, a3, &v16 + 4, &v16, v6);
  *&v11 = *(&v16 + 1) * a5;
  *&v12 = *&v16 * a5;
  objc_msgSend_saveF16DisparityBufferAsTurbo_AsPPMFile_WithMin_WithMax_(self, v13, a3, a4, v14, v15, v11, v12);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsGrayScalePPMFile:(const char *)a4 range:
{
  v40 = v4;
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
  v25 = *&v40 != 0.0;
  v26 = *(&v40 + 1) != 0.0;
  v27 = v25 && v26;
  if (v25 && v26)
  {
    _S9 = *&v40;
  }

  v28 = malloc_type_malloc(4 * Height * Width, 0x9831DB2CuLL);
  v30 = v28;
  v31 = 4 * Width;
  if (Height)
  {
    v32 = 0;
    if (v27)
    {
      v33 = *(&v40 + 1);
    }

    else
    {
      v33 = v21;
    }

    v34 = v33 - _S9;
    v35 = 3;
    v36 = v12;
    do
    {
      if (Width)
      {
        v37 = 0;
        v38 = v35;
        do
        {
          v39 = ~(((v36[v37] - _S9) / v34) * 255.0);
          *(v28 + v38 - 3) = v39;
          *(v28 + v38 - 2) = v39;
          *(v28 + v38 - 1) = v39;
          *(v28 + v38) = -1;
          ++v37;
          v38 += 4;
        }

        while (Width != v37);
      }

      ++v32;
      v36 += Width;
      v35 += v31;
    }

    while (v32 != Height);
  }

  sub_2956EF080(Width, Height, v31, v28, a4, v29);
  free(v30);

  free(v12);
}

- (void)saveF16DisparityTexture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = v12;
  v20 = 2 * v12;
  objc_msgSend_makeCoherent_(self, v21, v6, v22, v23, v24);
  v25 = malloc_type_malloc(v20 * v18, 0x1000040BDFB0063uLL);
  memset(v29, 0, 24);
  v29[3] = v19;
  v29[4] = v18;
  v29[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v26, v25, v20, v29, 0);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v27, v25, v20 * v18, a4, v28);
  free(v25);
}

- (void)saveF16Texture:(id)a3 AsGrayScalePPMFile:(const char *)a4 range:
{
  v57 = v4;
  v7 = a3;
  objc_msgSend_makeCoherent_(self, v8, v7, v9, v10, v11);
  v17 = objc_msgSend_width(v7, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_height(v7, v18, v19, v20, v21, v22);
  v24 = malloc_type_malloc(2 * v17 * v23, 0x1000040BDFB0063uLL);
  memset(v58, 0, 24);
  v58[3] = v17;
  v58[4] = v23;
  v58[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v7, v25, v24, 2 * v17, v58, 0);
  v26 = malloc_type_malloc(4 * v23 * v17, 0x100004052888210uLL);
  v27 = v26;
  v28 = 4 * v17;
  if (v23)
  {
    v29 = 0;
    v30 = 3.4028e38;
    v31 = 1.1755e-38;
    v32 = v26;
    v33 = v24;
    do
    {
      if (v17)
      {
        for (i = 0; i != v17; v32[i++] = _S1)
        {
          _H1 = *&v33[2 * i];
          __asm { FCVT            S1, H1 }

          v31 = fmaxf(v31, _S1);
          v30 = fminf(v30, _S1);
        }
      }

      ++v29;
      v33 += 2 * v17;
      v32 = (v32 + v28);
    }

    while (v29 != v23);
  }

  else
  {
    v31 = 1.1755e-38;
    v30 = 3.4028e38;
  }

  v41 = *&v57 != 0.0;
  v42 = *(&v57 + 1) != 0.0;
  v43 = v41 && v42;
  if (v41 && v42)
  {
    v44 = *&v57;
  }

  else
  {
    v44 = v30;
  }

  v45 = malloc_type_malloc(4 * v23 * v17, 0x4509B403uLL);
  v47 = v45;
  v48 = 4 * v17;
  if (v23)
  {
    v49 = 0;
    if (v43)
    {
      v50 = *(&v57 + 1);
    }

    else
    {
      v50 = v31;
    }

    v51 = v50 - v44;
    v52 = 3;
    v53 = v27;
    do
    {
      if (v17)
      {
        v54 = 0;
        v55 = v52;
        do
        {
          v56 = ~(((v53[v54] - v44) / v51) * 255.0);
          *(v45 + v55 - 3) = v56;
          *(v45 + v55 - 2) = v56;
          *(v45 + v55 - 1) = v56;
          *(v45 + v55) = -1;
          ++v54;
          v55 += 4;
        }

        while (v17 != v54);
      }

      ++v49;
      v53 = (v53 + v28);
      v52 += v48;
    }

    while (v49 != v23);
  }

  sub_2956EF080(v17, v23, v48, v45, a4, v46);
  free(v47);
  free(v24);
  free(v27);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4
{
  v8 = sub_2956EEA7C(a4, a2, a3, a4, v4, v5);
  if (v8)
  {
    v9 = v8;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    if (Height)
    {
      v14 = BaseAddress;
      do
      {
        fwrite(v14, 2uLL, Width, v9);
        v14 += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);

    fclose(v9);
  }

  else
  {
    if (qword_2A1388C80 != -1)
    {
      sub_2957017C4();
    }

    v15 = qword_2A1388C78;
    if (os_log_type_enabled(qword_2A1388C78, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = a4;
      _os_log_impl(&dword_2956ED000, v15, OS_LOG_TYPE_DEFAULT, "Could not write %s", &v16, 0xCu);
    }
  }
}

- (void)saveU8Texture:(id)a3 AsPGMFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = v12;
  v20 = malloc_type_malloc(v18 * v12 + 4096, 0x2D19AE8DuLL);
  objc_msgSend_makeCoherent_(self, v21, v6, v22, v23, v24);
  memset(v34, 0, 24);
  v34[3] = v12;
  v34[4] = v18;
  v34[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v25, v20, v12, v34, 0);
  v31 = sub_2956EEA7C(a4, v26, v27, v28, v29, v30);
  if (v31)
  {
    v32 = v31;
    fprintf(v31, "P5 %u %u 255\n", v12, v18);
    if (v18)
    {
      v33 = v20;
      do
      {
        fwrite(v33, 1uLL, v19, v32);
        v33 += v19;
        --v18;
      }

      while (v18);
    }

    fclose(v32);
  }

  free(v20);
}

- (void)saveU16Texture:(id)a3 AsPGMFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = malloc_type_malloc(2 * v12 * v18, 0x14ADE848uLL);
  objc_msgSend_makeCoherent_(self, v20, v6, v21, v22, v23);
  memset(v36, 0, 24);
  v36[3] = v12;
  v36[4] = v18;
  v36[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v24, v19, 2 * v12, v36, 0);
  v30 = sub_2956EEA7C(a4, v25, v26, v27, v28, v29);
  if (v30)
  {
    v31 = v30;
    fprintf(v30, "P5 %u %u 65535\n", v12, v18);
    if (v18)
    {
      v32 = 0;
      v33 = 2 * v12;
      v34 = v19;
      do
      {
        if (v12)
        {
          v35 = 0;
          do
          {
            fprintf(v31, "%u ", *&v34[v35]);
            v35 += 2;
          }

          while (v33 != v35);
        }

        fputc(10, v31);
        ++v32;
        v34 += v33;
      }

      while (v32 != v18);
    }

    fclose(v31);
  }

  free(v19);
}

- (void)saveF16RGTexture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = v12;
  v20 = 4 * v12;
  objc_msgSend_makeCoherent_(self, v21, v6, v22, v23, v24);
  v25 = malloc_type_malloc(v20 * v18, 0x1000040BDFB0063uLL);
  memset(v29, 0, 24);
  v29[3] = v19;
  v29[4] = v18;
  v29[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v26, v25, v20, v29, 0);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v27, v25, v20 * v18, a4, v28);
  free(v25);
}

- (void)saveF16DisparityTexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  objc_msgSend_makeCoherent_(self, v19, v6, v20, v21, v22);
  v23 = malloc_type_malloc((2 * v12 * v18), 0x1000040BDFB0063uLL);
  v24 = malloc_type_malloc(4 * (v12 * v18), 0x100004052888210uLL);
  memset(v37, 0, 24);
  v37[3] = v12;
  v37[4] = v18;
  v37[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v25, v23, (2 * v12), v37, 0);
  if (v18)
  {
    v26 = 0;
    v27 = v24;
    v28 = v23;
    do
    {
      if (v12)
      {
        v29 = 0;
        do
        {
          _H0 = *&v28[2 * v29];
          __asm { FCVT            S0, H0 }

          *&v27[4 * v29++] = _S0;
        }

        while (v12 != v29);
      }

      ++v26;
      v28 += 2 * v12;
      v27 += 4 * v12;
    }

    while (v26 != v18);
  }

  free(v23);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v36, v12, v18, v24, a4);
  free(v24);
}

- (void)saveRGF16ShiftmapTexture:(id)a3 AsPPMFileSx:(id)a4 AsPPMFileSy:(id)a5
{
  v8 = a3;
  v59 = a4;
  v9 = a5;
  v15 = objc_msgSend_width(v8, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_height(v8, v16, v17, v18, v19, v20);
  v58 = self;
  objc_msgSend_makeCoherent_(self, v22, v8, v23, v24, v25);
  v26 = malloc_type_malloc((2 * v21 * 4 * v15), 0x1000040BDFB0063uLL);
  v27 = malloc_type_malloc(4 * (v15 * v21), 0x100004052888210uLL);
  v28 = malloc_type_malloc(4 * (v15 * v21), 0x100004052888210uLL);
  memset(v60, 0, 24);
  v60[3] = v15;
  v60[4] = v21;
  v60[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v8, v29, v26, (4 * v15), v60, 0);
  if (v21)
  {
    v30 = 0;
    v31 = v28;
    v32 = v27;
    v33 = v26;
    do
    {
      for (i = v15; i; --i)
      {
        _H0 = *v33;
        __asm { FCVT            S0, H0 }

        *v32++ = _S0;
        LOWORD(_S0) = v33[1];
        __asm { FCVT            S0, H0 }

        *v31++ = _S0;
        v33 += 2;
      }

      ++v30;
    }

    while (v30 != v21);
  }

  free(v26);
  v42 = v59;
  v48 = objc_msgSend_UTF8String(v42, v43, v44, v45, v46, v47);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(v58, v49, v15, v21, v27, v48);
  free(v27);
  v50 = v9;
  v56 = objc_msgSend_UTF8String(v50, v51, v52, v53, v54, v55);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(v58, v57, v15, v21, v28, v56);
  free(v28);
}

- (void)saveRGF16Texture:(id)a3 AsF32BinaryFile0:(id)a4 AsF32BinaryFile1:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v17 = objc_msgSend_UTF8String(v11, v12, v13, v14, v15, v16);
  v23 = sub_2956EEA7C(v17, v18, v19, v20, v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = v10;
    v31 = objc_msgSend_UTF8String(v25, v26, v27, v28, v29, v30);
    __stream = sub_2956EEA7C(v31, v32, v33, v34, v35, v36);
    if (!__stream)
    {
      v75 = v24;
LABEL_17:
      fclose(v75);
      goto LABEL_18;
    }

    v42 = objc_msgSend_width(v8, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_height(v8, v43, v44, v45, v46, v47);
    v49 = 4 * v42;
    objc_msgSend_makeCoherent_(self, v50, v8, v51, v52, v53);
    v54 = malloc_type_malloc(v49 * v48, 0x1000040BDFB0063uLL);
    v55 = v54;
    if (!v54)
    {
      sub_295701898();
      v58 = 0;
      v56 = 0;
      goto LABEL_16;
    }

    v78 = v54;
    v56 = malloc_type_malloc(4 * (v42 & 0x3FFFFFFF), 0x100004052888210uLL);
    if (v56)
    {
      v58 = malloc_type_malloc(4 * (v42 & 0x3FFFFFFF), 0x100004052888210uLL);
      if (v58)
      {
        v77 = v10;
        memset(v80, 0, 24);
        v80[3] = v42;
        v80[4] = v48;
        v80[5] = 1;
        v59 = v8;
        v60 = v8;
        v61 = v78;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v59, v57, v78, 4 * v42, v80, 0);
        if (!v48)
        {
          v55 = v78;
          v8 = v60;
          v10 = v77;
          goto LABEL_16;
        }

        v76 = v60;
        v62 = 0;
        v63 = v49 >> 1;
        do
        {
          if (v42)
          {
            v64 = 0;
            v65 = v58;
            v66 = v56;
            do
            {
              _H0 = *(v61 + 2 * v64);
              __asm { FCVT            S0, H0 }

              _H1 = *(v61 + 2 * (v64 + 1));
              __asm { FCVT            S1, H1 }

              *v66++ = _S0;
              *v65++ = _S1;
              v64 += 2;
            }

            while (2 * v42 != v64);
          }

          fwrite(v56, 4uLL, v42, v24);
          fwrite(v58, 4uLL, v42, __stream);
          v61 += 2 * v63;
          ++v62;
        }

        while (v62 != v48);
        v8 = v76;
        v10 = v77;
      }

      else
      {
        sub_2957017D8();
      }
    }

    else
    {
      sub_295701838();
      v58 = 0;
    }

    v55 = v78;
LABEL_16:
    free(v56);
    free(v58);
    free(v55);
    fclose(v24);
    v75 = __stream;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)saveRGBA8Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v19 = malloc_type_malloc(4 * v12 * v18, 0xD13A6CE5uLL);
  if (v19)
  {
    v24 = v19;
    objc_msgSend_makeCoherent_(self, v20, v6, v21, v22, v23);
    memset(v28, 0, 24);
    v28[3] = v12;
    v28[4] = v18;
    v28[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v25, v24, 4 * v12, v28, 0);
    sub_2956EF080(v12, v18, 4 * v12, v24, a4, v26);
    free(v24);
  }

  else
  {
    if (qword_2A1388C80 != -1)
    {
      sub_2957017C4();
    }

    v27 = qword_2A1388C78;
    if (os_log_type_enabled(qword_2A1388C78, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&dword_2956ED000, v27, OS_LOG_TYPE_DEFAULT, "Could not allocate rgbaImagesData", v28, 2u);
    }
  }
}

- (void)saveRGBA8Texture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v12 = objc_msgSend_width(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_height(v6, v13, v14, v15, v16, v17);
  v24 = malloc_type_malloc(4 * v12 * v18, 0xABE21FF2uLL);
  if (v24)
  {
    v25 = sub_2956EEA7C(a4, v19, v20, v21, v22, v23);
    if (v25)
    {
      v30 = v25;
      objc_msgSend_makeCoherent_(self, v26, v6, v27, v28, v29);
      memset(v32, 0, 24);
      v32[3] = v12;
      v32[4] = v18;
      v32[5] = 1;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v31, v24, 4 * v12, v32, 0);
      fwrite(v24, 4 * v12 * v18, 1uLL, v30);
      fclose(v30);
    }

    else
    {
      sub_2957018F8();
    }
  }

  else
  {
    sub_295701958();
  }

  free(v24);
}

- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  v8 = sub_2956EEA7C(a4, a2, a3, a4, v4, v5);
  if (v8)
  {
    v9 = v8;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v12 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    fprintf(v9, "P6 %u %u 255\n", Width, Height);
    if (Height)
    {
      v15 = 0;
      v16 = BytesPerRow >> 2;
      do
      {
        if (Width)
        {
          v17 = 0;
          v18 = 2;
          do
          {
            v12[v18 - 2] = vcvtms_s32_f32(BaseAddress[v17] * 255.0);
            v12[v18 - 1] = vcvtms_s32_f32(BaseAddress[(v17 + 1)] * 255.0);
            v12[v18] = vcvtms_s32_f32(BaseAddress[(v17 + 2)] * 255.0);
            v18 += 3;
            v17 += 4;
          }

          while (4 * Width != v17);
        }

        fwrite(v12, 3uLL, Width, v9);
        BaseAddress += v16;
        ++v15;
      }

      while (v15 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    fclose(v9);

    free(v12);
  }

  else
  {
    if (qword_2A1388C80 != -1)
    {
      sub_2957017C4();
    }

    v19 = qword_2A1388C78;
    if (os_log_type_enabled(qword_2A1388C78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = a4;
      _os_log_impl(&dword_2956ED000, v19, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)save32BGRAPixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  v7 = sub_2956EEA7C(a4, a2, a3, a4, v4, v5);
  if (v7)
  {
    v8 = v7;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v11 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    fprintf(v8, "P6 %u %u 255\n", Width, Height);
    if (Height)
    {
      for (i = 0; i != Height; ++i)
      {
        if (Width)
        {
          v15 = 0;
          v16 = 2;
          do
          {
            v11[v16 - 2] = BaseAddress[(v15 + 2)];
            v11[v16 - 1] = BaseAddress[(v15 + 1)];
            v11[v16] = BaseAddress[v15];
            v16 += 3;
            v15 += 4;
          }

          while (4 * Width != v15);
        }

        fwrite(v11, 3uLL, Width, v8);
        BaseAddress += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    fclose(v8);

    free(v11);
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);

  MEMORY[0x2A1C70FE8](self, sel_saveRGBAF16PixelBuffer_out_width_out_height_AsPPMFile_, a3, Width, Height, a4);
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFileWithAlpha:(const char *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);

  MEMORY[0x2A1C70FE8](self, sel_saveRGBAF16PixelBuffer_out_width_out_height_AsPPMFileWithAlpha_, a3, Width, Height, a4);
}

- (void)saveF16Texture:(id)a3 AsF32BinaryFile:(const char *)a4
{
  v6 = a3;
  v12 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    v19 = objc_msgSend_width(v6, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_height(v6, v20, v21, v22, v23, v24);
    v26 = 2 * v19;
    v27 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    v28 = malloc_type_malloc(v26 * v25, 0x1000040BDFB0063uLL);
    objc_msgSend_makeCoherent_(self, v29, v6, v30, v31, v32);
    memset(v43, 0, 24);
    v43[3] = v19;
    v43[4] = v25;
    v43[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v33, v28, v26, v43, 0);
    if (v25)
    {
      v34 = 0;
      v35 = v28;
      do
      {
        if (v19)
        {
          for (i = 0; i != v19; v27[i++] = _S0)
          {
            _H0 = *&v35[2 * i];
            __asm { FCVT            S0, H0 }
          }
        }

        fwrite(v27, 4uLL, v19, v18);
        ++v34;
        v35 += v26;
      }

      while (v34 != v25);
    }

    free(v27);
    free(v28);
    fclose(v18);
  }
}

- (void)saveNCCOutputFrom:(id)a3 asBinaryFiles:(const char *)a4
{
  v6 = a3;
  objc_msgSend_waitForIdle(self->_metalContext, v7, v8, v9, v10, v11);
  objc_msgSend_makeCoherent_(self, v12, v6, v13, v14, v15);
  v21 = objc_msgSend_width(v6, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_height(v6, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_bufferBytesPerRow(v6, v28, v29, v30, v31, v32);
  v34 = malloc_type_malloc(v33 * v27, 0x885D3F11uLL);
  v35 = vabd_s32(vdup_n_s32(v33), vshl_u32(vdup_n_s32(v21), 0x400000003));
  v36 = vcgt_u32(vdup_lane_s32(v35, 1), v35).u8[0];
  v37 = @"f32";
  if (v36)
  {
    v37 = @"f16";
  }

  v38 = v37;
  memset(v160, 0, 24);
  v160[3] = v21;
  v153 = v21;
  v160[4] = v27;
  v160[5] = 1;
  v146 = v34;
  v151 = v33;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v39, v34, v33, v160, 0);
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v40, @"%s_L_%dx%d.%@", v41, v42, v43, a4, v21, v27, v38);
  v49 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v45, @"%s_R_%dx%d.%@", v46, v47, v48, a4, v21, v27, v38);
  v54 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v50, @"%s_C_%dx%d.%@", v51, v52, v53, a4, v21, v27, v38);
  v154 = v21;
  v158 = a4;
  v59 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v55, @"%s_F_%dx%d.%@", v56, v57, v58, a4, v21, v27, v38);
  v60 = v44;
  v66 = objc_msgSend_UTF8String(v60, v61, v62, v63, v64, v65);
  v72 = sub_2956EEA7C(v66, v67, v68, v69, v70, v71);
  v73 = v49;
  v79 = objc_msgSend_UTF8String(v73, v74, v75, v76, v77, v78);
  v85 = sub_2956EEA7C(v79, v80, v81, v82, v83, v84);
  v86 = v54;
  v145 = v54;
  v92 = objc_msgSend_UTF8String(v86, v87, v88, v89, v90, v91);
  v157 = sub_2956EEA7C(v92, v93, v94, v95, v96, v97);
  v98 = v59;
  v104 = objc_msgSend_UTF8String(v98, v99, v100, v101, v102, v103);
  v110 = sub_2956EEA7C(v104, v105, v106, v107, v108, v109);
  v111 = 0;
  v155 = v110;
  __stream = v72;
  if (!v72)
  {
    v147 = 0;
    v112 = v85;
    goto LABEL_37;
  }

  v112 = v85;
  if (!v85)
  {
    v147 = 0;
LABEL_37:
    v113 = v157;
    goto LABEL_38;
  }

  v113 = v157;
  if (!v157)
  {
    v147 = 0;
    goto LABEL_38;
  }

  v147 = 0;
  if (!v110)
  {
    goto LABEL_38;
  }

  v152 = v27;
  v142 = v49;
  v143 = v44;
  v144 = v6;
  v114 = 4;
  if (v36)
  {
    v114 = 2;
  }

  __size = v114;
  v115 = 1;
  if ((v36 & 1) == 0)
  {
    v115 = 2;
  }

  v116 = v153 << v115;
  v117 = malloc_type_malloc(v153 << v115, 0x24B2F1B5uLL);
  v118 = malloc_type_malloc(v116, 0x311604CEuLL);
  v119 = malloc_type_malloc(v116, 0x9916A70BuLL);
  v124 = malloc_type_malloc(v116, 0x83896B1uLL);
  v150 = v112;
  if (v36)
  {
    v111 = 0;
    v147 = 0;
    if (!v152)
    {
      goto LABEL_23;
    }

LABEL_15:
    v125 = 0;
    v126 = 0;
    v127 = v146;
    v148 = v36;
    do
    {
      v159 = v126;
      if (v154)
      {
        v128 = 0;
        v129 = 0;
        do
        {
          v130 = (v129 + 1);
          v131 = (v129 + 2);
          v132 = (v129 + 3);
          if (v36)
          {
            *&v117[v128] = *&v127[2 * v129];
            *&v118[v128] = *&v127[2 * v130];
            *&v119[v128] = *&v127[2 * v131];
            *&v124[v128] = *&v127[2 * v132];
          }

          else
          {
            *&v117[v129] = *&v127[4 * v129];
            *&v118[v129] = *&v127[4 * v130];
            *&v119[v129] = *&v127[4 * v131];
            *&v124[v129] = *&v127[4 * v132];
            v133 = fmaxf(fminf(*&v127[4 * v129] * 25500.0, 255.0), 0.0);
            v111[(v125 + v129 + 2)] = v133;
            v111[(v125 + v129 + 1)] = v133;
            v111[(v125 + v129)] = v133;
            v111[(v125 + v129 + 3)] = -1;
          }

          v129 += 4;
          v128 += 2;
        }

        while (4 * v153 != v129);
      }

      fwrite(v117, __size, v153, __stream);
      fwrite(v118, __size, v153, v150);
      fwrite(v119, __size, v153, v157);
      v36 = v148;
      fwrite(v124, __size, v153, v155);
      v127 += v151;
      v126 = v159 + 1;
      v125 += 4 * v154;
    }

    while (v159 + 1 != v152);
    goto LABEL_23;
  }

  v147 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v120, @"%s_L_%dx%d.ppm", v121, v122, v123, v158, v154, v152);
  v111 = malloc_type_malloc((4 * v154 * v152), 0x72A3BA2BuLL);
  if (v152)
  {
    goto LABEL_15;
  }

LABEL_23:
  if ((v36 & 1) == 0)
  {
    v134 = v147;
    v140 = objc_msgSend_UTF8String(v134, v135, v136, v137, v138, v139);
    sub_2956EF080(v154, v152, (4 * v154), v111, v140, v141);
  }

  v112 = v150;
  v113 = v157;
  if (v117)
  {
    free(v117);
  }

  if (v118)
  {
    free(v118);
  }

  v6 = v144;
  if (v119)
  {
    free(v119);
  }

  v44 = v143;
  if (v124)
  {
    free(v124);
  }

  v49 = v142;
LABEL_38:
  if (v146)
  {
    free(v146);
  }

  if (v111)
  {
    free(v111);
  }

  if (__stream)
  {
    fclose(__stream);
  }

  if (v112)
  {
    fclose(v112);
  }

  if (v113)
  {
    fclose(v113);
  }

  if (v155)
  {
    fclose(v155);
  }
}

- (void)savePixelBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v7, @"%s.%c%c%c%c", v8, v9, v10, a4, HIBYTE(PixelFormatType), BYTE2(PixelFormatType), BYTE1(PixelFormatType), PixelFormatType);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v11, v22, v12, v13, v14);
  v15 = v22;
  v21 = objc_msgSend_UTF8String(v22, v16, v17, v18, v19, v20);
  MEMORY[0x29C250900](v21, a3);
}

+ (void)createPathIfNeeded:(id)a3
{
  v6 = objc_msgSend_stringByDeletingLastPathComponent(a3, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v7, v8, v9, v10, v11);
  v21 = 0;
  DirectoryAtPath_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v12, v13, v6, 1, 0, &v21);
  v15 = v21;
  if ((DirectoryAtPath_withIntermediateDirectories_attributes_error & 1) == 0)
  {
    if (qword_2A1388C80 != -1)
    {
      sub_29570179C();
    }

    v16 = qword_2A1388C78;
    if (os_log_type_enabled(qword_2A1388C78, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2956ED000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", &v17, 0x16u);
    }
  }
}

- (void)saveAccumulationFrom:(id)a3 asBinaryFiles:(const char *)a4 forSize:(CGSize)a5 costLineSize:(unsigned __int16)a6
{
  v136 = a6;
  height = a5.height;
  width = a5.width;
  v129 = a3;
  objc_msgSend_waitForIdle(self->_metalContext, v10, v11, v12, v13, v14);
  objc_msgSend_makeCoherent_(self, v15, v129, v16, v17, v18);
  v138 = width;
  v19 = malloc_type_malloc(4 * v138, 0x100004052888210uLL);
  v20 = malloc_type_malloc(4 * v138, 0x100004052888210uLL);
  v21 = malloc_type_malloc(4 * v138, 0x100004052888210uLL);
  v22 = malloc_type_malloc(4 * v138, 0x100004052888210uLL);
  v23 = v129;
  v29 = objc_msgSend_contents(v129, v24, v25, v26, v27, v28);
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v30, @"%s_L.f32", v31, v32, v33, a4);
  v39 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v35, @"%s_R.f32", v36, v37, v38, a4);
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v40, @"%s_C.f32", v41, v42, v43, a4);
  v49 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v45, @"%s_W.f32", v46, v47, v48, a4);
  v128 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v50, @"%s_L.ppm", v51, v52, v53, a4);
  v54 = v34;
  v127 = v34;
  v60 = objc_msgSend_UTF8String(v54, v55, v56, v57, v58, v59);
  v66 = sub_2956EEA7C(v60, v61, v62, v63, v64, v65);
  v67 = v39;
  v73 = objc_msgSend_UTF8String(v67, v68, v69, v70, v71, v72);
  v79 = sub_2956EEA7C(v73, v74, v75, v76, v77, v78);
  v80 = v44;
  v86 = objc_msgSend_UTF8String(v80, v81, v82, v83, v84, v85);
  v135 = sub_2956EEA7C(v86, v87, v88, v89, v90, v91);
  v92 = v49;
  v98 = objc_msgSend_UTF8String(v92, v93, v94, v95, v96, v97);
  v104 = sub_2956EEA7C(v98, v99, v100, v101, v102, v103);
  v105 = v66;
  v106 = 0;
  v133 = v104;
  v134 = v79;
  if (!v105 || !v79)
  {
LABEL_12:
    v107 = v135;
    goto LABEL_13;
  }

  v107 = v135;
  if (v135 && v104)
  {
    __stream = v105;
    v125 = v49;
    v126 = v39;
    v108 = malloc_type_malloc(4 * height * v138, 0x1DEA816FuLL);
    v109 = width;
    v106 = v108;
    v131 = height;
    if (height)
    {
      v110 = 0;
      v111 = 0;
      v130 = v136;
      do
      {
        v137 = v111;
        if (v109)
        {
          v112 = 0;
          do
          {
            v113 = *(v29 + 4 * v112);
            *&v19[v112] = v113;
            v114 = fmaxf(fminf(v113 * 25500.0, 255.0), 0.0);
            v106[(v110 + v112 + 2)] = v114;
            v106[(v110 + v112 + 1)] = v114;
            v106[(v110 + v112)] = v114;
            v106[(v110 + v112 + 3)] = -1;
            *&v20[v112] = *(v29 + 4 * (v112 + 1));
            *&v21[v112] = *(v29 + 4 * (v112 + 2));
            *&v22[v112] = *(v29 + 4 * (v112 + 3));
            v112 += 4;
          }

          while (4 * v138 != v112);
        }

        fwrite(v19, 4uLL, v138, __stream);
        fwrite(v20, 4uLL, v138, v134);
        fwrite(v21, 4uLL, v138, v135);
        fwrite(v22, 4uLL, v138, v133);
        v109 = width;
        v29 += 4 * v130;
        v111 = v137 + 1;
        v110 += 4 * v138;
      }

      while (v137 + 1 != v131);
    }

    v115 = 4 * v109;
    v116 = v109;
    v117 = v128;
    v123 = objc_msgSend_UTF8String(v117, v118, v119, v120, v121, v122);
    sub_2956EF080(v116, v131, v115, v106, v123, v124);
    v39 = v126;
    v49 = v125;
    v105 = __stream;
    goto LABEL_12;
  }

LABEL_13:
  if (v105)
  {
    fclose(v105);
  }

  if (v134)
  {
    fclose(v134);
  }

  if (v107)
  {
    fclose(v107);
  }

  if (v133)
  {
    fclose(v133);
  }

  free(v106);
  free(v19);
  free(v20);
  free(v21);
  free(v22);
}

- (void)saveF32Texture:(id)a3 AsF32BinaryFile:(const char *)a4
{
  v6 = a3;
  v17 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v17)
  {
    v18 = objc_msgSend_width(v6, v12, v13, v14, v15, v16);
    v24 = objc_msgSend_height(v6, v19, v20, v21, v22, v23);
    v25 = v18;
    v26 = 4 * v18;
    v27 = malloc_type_malloc(v26, 0x100004052888210uLL);
    if (v27)
    {
      v32 = malloc_type_malloc((v26 * v24) & 0xFFFFFFFC, 0x100004052888210uLL);
      if (v32)
      {
        objc_msgSend_makeCoherent_(self, v28, v6, v29, v30, v31);
        memset(v37, 0, 24);
        v37[3] = v25;
        v37[4] = v24;
        v37[5] = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v33, v32, v26 & 0xFFFFFFFC, v37, 0);
        if (v24)
        {
          v34 = 0;
          v35 = v32;
          do
          {
            if (v25)
            {
              v36 = 0;
              do
              {
                *&v27[v36] = *&v35[v36];
                v36 += 4;
              }

              while (v26 != v36);
            }

            fwrite(v27, 4uLL, v25, v17);
            ++v34;
            v35 += v26 & 0xFFFFFFFC;
          }

          while (v34 != v24);
        }
      }

      else
      {
        sub_2957019B8();
      }
    }

    else
    {
      sub_295701A18();
      v32 = 0;
    }
  }

  else
  {
    sub_295701A78();
    v32 = 0;
    v27 = 0;
  }

  free(v27);
  free(v32);
  fclose(v17);
}

- (void)saveRGBA16FTexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v12 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    v19 = objc_msgSend_width(v6, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_height(v6, v20, v21, v22, v23, v24);
    v26 = malloc_type_malloc(3 * v19, 0x100004077774924uLL);
    v27 = malloc_type_malloc(8 * v19 * v25, 0x1000040BDFB0063uLL);
    fprintf(v18, "P6 %u %u 255\n", v19, v25);
    objc_msgSend_makeCoherent_(self, v28, v6, v29, v30, v31);
    memset(v48, 0, 24);
    v48[3] = v19;
    v48[4] = v25;
    v48[5] = 1;
    v47 = v6;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v32, v27, 8 * v19, v48, 0);
    if (v25)
    {
      v33 = 0;
      v34 = v27;
      do
      {
        if (v19)
        {
          v35 = 0;
          v36 = 2;
          do
          {
            _H0 = *&v34[2 * v35];
            __asm { FCVT            S0, H0 }

            v43 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v34[2 * (v35 + 1)];
            __asm { FCVT            S0, H0 }

            v45 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v34[2 * (v35 + 2)];
            __asm { FCVT            S0, H0 }

            v26[v36 - 2] = v43;
            v26[v36 - 1] = v45;
            v26[v36] = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v36 += 3;
            v35 += 4;
          }

          while (4 * v19 != v35);
        }

        fwrite(v26, 3uLL, v19, v18);
        v34 += 8 * (v19 & 0x3FFFFFFF);
        ++v33;
      }

      while (v33 != v25);
    }

    free(v26);
    free(v27);
    fclose(v18);
    v6 = v47;
  }
}

- (void)saveRGBA16FTexture:(id)a3 AsF32File:(const char *)a4
{
  v6 = a3;
  v12 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    v19 = objc_msgSend_width(v6, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_height(v6, v20, v21, v22, v23, v24);
    v26 = malloc_type_malloc(16 * (v19 & 0x3FFFFFFF), 0x100004052888210uLL);
    v27 = malloc_type_malloc(8 * v19 * v25, 0x1000040BDFB0063uLL);
    objc_msgSend_makeCoherent_(self, v28, v6, v29, v30, v31);
    memset(v43, 0, 24);
    v43[3] = v19;
    v43[4] = v25;
    v43[5] = 1;
    v42 = v27;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v32, v27, 8 * v19, v43, 0);
    if (v25)
    {
      for (i = 0; i != v25; ++i)
      {
        if (v19)
        {
          v35 = 0;
          do
          {
            _H0 = *&v27[2 * (v35 + 2)];
            __asm { FCVT            S0, H0 }

            v33.i32[0] = *&v27[2 * v35];
            v33 = vcvtq_f32_f16(v33).u64[0];
            *&v26[v35] = v33;
            v26[(v35 + 2)] = _S0;
            v26[(v35 + 3)] = 0;
            v35 += 4;
          }

          while (4 * v19 != v35);
        }

        fwrite(v26, 0x10uLL, v19, v18);
        v27 += 8 * (v19 & 0x3FFFFFFF);
      }
    }

    free(v26);
    free(v42);
    fclose(v18);
  }
}

- (void)saveRGB10A2Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v12 = sub_2956EEA7C(a4, v7, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    if (objc_msgSend_pixelFormat(v6, v13, v14, v15, v16, v17) == 90)
    {
      v24 = objc_msgSend_width(v6, v19, v20, v21, v22, v23);
      v30 = objc_msgSend_height(v6, v25, v26, v27, v28, v29);
      v31 = malloc_type_malloc(3 * v24, 0x100004077774924uLL);
      v32 = malloc_type_malloc(4 * v24 * v30, 0x100004052888210uLL);
      fprintf(v18, "P6 %u %u 255\n", v24, v30);
      objc_msgSend_makeCoherent_(self, v33, v6, v34, v35, v36);
      memset(v44, 0, 24);
      v44[3] = v24;
      v44[4] = v30;
      v44[5] = 1;
      v43 = v32;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v6, v37, v32, 4 * v24, v44, 0);
      if (v30)
      {
        v38 = 0;
        v39 = 4 * v24;
        do
        {
          if (v24)
          {
            v40 = 0;
            v41 = 2;
            do
            {
              v42 = *&v32[v40];
              v31[v41 - 2] = vcvtms_s32_f32(((v42 & 0x3FF) / 1023.0) * 255.0);
              v31[v41 - 1] = vcvtms_s32_f32((((v42 >> 10) & 0x3FF) / 1023.0) * 255.0);
              v31[v41] = vcvtms_s32_f32((((v42 >> 20) & 0x3FF) / 1023.0) * 255.0);
              v41 += 3;
              v40 += 4;
            }

            while (v39 != v40);
          }

          fwrite(v31, 3uLL, v24, v18);
          ++v38;
          v32 += v39;
        }

        while (v38 != v30);
      }

      free(v31);
      free(v43);
    }

    fclose(v18);
  }
}

@end