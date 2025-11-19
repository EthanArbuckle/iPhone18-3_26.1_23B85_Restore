@interface disparityDebugUtils
+ (void)createPathIfNeeded:(id)a3;
- (disparityDebugUtils)initWithMetalContext:(id)a3;
- (void)ApplyColorWheelAndWrite:(unsigned int)a3 height:(unsigned int)a4 data:(float *)a5 fileFullPath:(const char *)a6;
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

  [(disparityDebugUtils *)self ApplyColorWheelAndWrite:Width height:Height data:BaseAddress fileFullPath:a4];
}

- (void)saveF32FPBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 scale:(float)a5
{
  v7 = sub_E01C(a4);
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
  v7 = sub_E01C(a4);
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
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v6 width];
    v10 = [v6 height];
    v11 = malloc_type_malloc(3 * v9, 0x100004077774924uLL);
    v12 = malloc_type_malloc(2 * v9 * v10, 0x1000040BDFB0063uLL);
    fprintf(v8, "P6 %u %u 255\n", v9, v10);
    [(disparityDebugUtils *)self makeCoherent:v6];
    memset(v25, 0, 24);
    v25[3] = v9;
    v25[4] = v10;
    v25[5] = 1;
    v24 = v12;
    [v6 getBytes:v12 bytesPerRow:2 * v9 fromRegion:v25 mipmapLevel:0];
    if (v10)
    {
      v13 = 0;
      v14 = 2 * v9;
      do
      {
        if (v9)
        {
          v15 = 0;
          v16 = 2;
          do
          {
            _H0 = *&v12[v15];
            __asm { FCVT            S0, H0 }

            v23 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v11[v16 - 2] = v23;
            v11[v16 - 1] = v23;
            v11[v16] = v23;
            v16 += 3;
            v15 += 2;
          }

          while (v14 != v15);
        }

        fwrite(v11, 3uLL, v9, v8);
        ++v13;
        v12 += v14;
      }

      while (v13 != v10);
    }

    free(v11);
    free(v24);
    fclose(v8);
  }
}

- (void)saveF32Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v9 = malloc_type_malloc(4 * Width * Height, 0xDD18702AuLL);
  v10 = v9;
  if (Height)
  {
    v11 = 0;
    for (i = 0; i != Height; ++i)
    {
      v13 = Width;
      v14 = v11;
      if (Width)
      {
        do
        {
          v15 = vdupq_n_s16((BaseAddress[v14] * 255.0));
          v15.i16[3] = 255;
          *&v9[4 * v14++] = vmovn_s16(v15).u32[0];
          --v13;
        }

        while (v13);
      }

      v11 += Width;
    }
  }

  v17 = [NSString stringWithFormat:@"%s", a4];
  [disparityDebugUtils createPathIfNeeded:v17];
  v16 = v17;
  sub_E620(Width, Height, 4 * Width, v10, [v17 UTF8String]);
  free(v10);
}

- (void)saveU8Buffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v10 = malloc_type_malloc(4 * Width * Height, 0xBA44AB5AuLL);
  v11 = v10;
  if (Height)
  {
    v12 = 0;
    v13 = 0;
    for (i = 0; i != Height; ++i)
    {
      v15 = Width;
      v16 = v12;
      v17 = v13;
      if (Width)
      {
        do
        {
          v18 = vdupq_n_s16(BaseAddress[v16]);
          v18.i16[3] = 255;
          *&v10[4 * v17++] = vmovn_s16(v18).u32[0];
          ++v16;
          --v15;
        }

        while (v15);
      }

      v13 += Width;
      v12 += BytesPerRow;
    }
  }

  v20 = [NSString stringWithFormat:@"%s", a4];
  [disparityDebugUtils createPathIfNeeded:v20];
  v19 = v20;
  sub_E620(Width, Height, 4 * Width, v11, [v20 UTF8String]);
  free(v11);
}

- (void)saveVUYA4444Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = malloc_type_malloc(4 * v7 * v8, 0x100004077774924uLL);
  [(disparityDebugUtils *)self makeCoherent:v6];
  memset(v10, 0, 24);
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = 1;
  [v6 getBytes:v9 bytesPerRow:4 * v7 fromRegion:v10 mipmapLevel:0];

  [(disparityDebugUtils *)self convertVUYA444:v9 rbs:4 * v7 ToRGBA:v9 ofSize:v7, v8];
  sub_E620(v7, v8, 4 * v7, v9, a4);
  free(v9);
}

- (void)saveVUYA4444Texture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = malloc_type_malloc(4 * v7 * v8, 0x12E7F8D9uLL);
  [(disparityDebugUtils *)self makeCoherent:v6];
  memset(v10, 0, 24);
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = 1;
  [v6 getBytes:v9 bytesPerRow:4 * v7 fromRegion:v10 mipmapLevel:0];

  [(disparityDebugUtils *)self WriteBinDataToFile:v9 length:4 * v7 * v8 fileFullPath:a4];
  free(v9);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)Width out_height:(unsigned int)Height AsBinaryFile:(const char *)a6
{
  v9 = sub_E01C(a6);
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
  [(disparityDebugUtils *)self convertVUYA444:CVPixelBufferGetBaseAddress(a3) rbs:BytesPerRow ToRGBA:v14 ofSize:Width, Height];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = Width;
  }

  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = Height;
  }

  sub_E620(v15, v16, 4 * Width, v14, a6);

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
  }

  else
  {
    v7 = Height;
  }

  [(disparityDebugUtils *)self convertRGB10A2ToRGBA8:BaseAddress rbs:BytesPerRow ToRGBA:v14 outWidth:v8 outHeight:v7];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  sub_E620(v8, v7, 4 * v8, v14, a6);

  free(v14);
}

- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFileWithAlpha:(const char *)a6
{
  LODWORD(v7) = a5;
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

  if (v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = Height;
  }

  [(disparityDebugUtils *)self convertRGB10A2ToRGBA8:BaseAddress rbs:BytesPerRow ToRGBA:v14 outWidth:v8 outHeight:v7];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  v16 = sub_E01C(a6);
  if (v16)
  {
    v17 = v16;
    v18 = malloc_type_malloc((4 * v8), 0x100004077774924uLL);
    if (v18)
    {
      v19 = v18;
      fprintf(v17, "P7\nWIDTH %u\nHEIGHT %u\nDEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR", v8, v7);
      if (v7)
      {
        v20 = 0;
        v21 = v14;
        do
        {
          if (v8)
          {
            v22 = 0;
            v23 = v8;
            do
            {
              v24 = &v19[v22];
              *v24 = v21[v22];
              v24[1] = v21[v22 + 1];
              v24[2] = v21[v22 + 2];
              v24[3] = v21[v22 + 3];
              v22 += 4;
              --v23;
            }

            while (v23);
          }

          fwrite(v19, 4uLL, v8, v17);
          v21 += (4 * v8);
          ++v20;
        }

        while (v20 != v7);
      }

      free(v19);
    }

    fclose(v17);
  }

  free(v14);
}

- (void)save420CVPixelBuffer:(__CVBuffer *)a3 to:(const char *)a4
{
  v5 = sub_E01C(a4);
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
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v6 width];
    v10 = [v6 height];
    v11 = malloc_type_malloc(v10 * v9, 0x4EAF6647uLL);
    [(disparityDebugUtils *)self makeCoherent:v6];
    v12 = v9;
    memset(v14, 0, 24);
    v14[3] = v9;
    v14[4] = v10;
    v14[5] = 1;
    [v6 getBytes:v11 bytesPerRow:v9 fromRegion:v14 mipmapLevel:0];
    fwrite(v11, 1uLL, v10 * v9, v8);
    bzero(v11, v9);
    if (v10)
    {
      for (i = 0; i < v10; i += 2)
      {
        fwrite(v11, 1uLL, v12, v8);
      }
    }

    free(v11);
    fclose(v8);
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
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = malloc_type_malloc(4 * v7 * v8, 0xF858F8E4uLL);
  [(disparityDebugUtils *)self makeCoherent:v6];
  memset(v11, 0, 24);
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = 1;
  [v6 getBytes:v9 bytesPerRow:4 * objc_msgSend(v6 fromRegion:"width") mipmapLevel:{v11, 0}];

  v10 = [NSString stringWithFormat:@"%s", a4];
  [disparityDebugUtils createPathIfNeeded:v10];
  sub_E620(v7, v8, 4 * v7, v9, [v10 UTF8String]);
  free(v9);
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
  [(disparityDebugUtils *)self ApplyColorWheelAndWrite:Width height:Height data:v12 fileFullPath:a4];

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
      for (i = 0; i != Height; ++i)
      {
        if (Width)
        {
          v17 = 0;
          v18 = &v14[4 * Width * i];
          do
          {
            _H3 = *&BaseAddress[v17];
            __asm { FCVT            S3, H3 }

            v25 = &unk_2DE98 + 3 * ((((fmaxf(a5, fminf(a6, _S3)) - a5) / (a6 - a5)) * 1024.0) + -0.49);
            *v18 = *v25;
            v18[2] = v25[2];
            v18[3] = -1;
            v18 += 4;
            v17 += 2;
          }

          while (2 * Width != v17);
        }

        BaseAddress += BytesPerRow & 0xFFFFFFFE;
      }
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    sub_E620(Width, Height, 4 * Width, v15, a4);

    free(v15);
  }
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)a3 AsPPMFile:(const char *)a4 WithDisparityScale:(float)a5 AndPercentile:(float)a6
{
  v12 = 0;
  [disparityDebugUtils computeRobustMinMaxForF16DisparityBuffer:"computeRobustMinMaxForF16DisparityBuffer:WithDisparityScale:AndPercentile:OutSignalMin:OutSignalMax:" WithDisparityScale:a3 AndPercentile:&v12 + 4 OutSignalMin:&v12 OutSignalMax:?];
  *&v10 = *(&v12 + 1) * a5;
  *&v11 = *&v12 * a5;
  [(disparityDebugUtils *)self saveF16DisparityBufferAsTurbo:a3 AsPPMFile:a4 WithMin:v10 WithMax:v11];
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

  sub_E620(Width, Height, v30, v28, a4);
  free(v29);

  free(v12);
}

- (void)saveF16DisparityTexture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = v7;
  v10 = 2 * v7;
  [(disparityDebugUtils *)self makeCoherent:v6];
  v11 = malloc_type_malloc(v10 * v8, 0x1000040BDFB0063uLL);
  memset(v12, 0, 24);
  v12[3] = v9;
  v12[4] = v8;
  v12[5] = 1;
  [v6 getBytes:v11 bytesPerRow:v10 fromRegion:v12 mipmapLevel:0];

  [(disparityDebugUtils *)self WriteBinDataToFile:v11 length:v10 * v8 fileFullPath:a4];
  free(v11);
}

- (void)saveF16Texture:(id)a3 AsGrayScalePPMFile:(const char *)a4 range:
{
  v41 = v4;
  v7 = a3;
  [(disparityDebugUtils *)self makeCoherent:v7];
  v8 = [v7 width];
  v9 = [v7 height];
  v10 = malloc_type_malloc(2 * v8 * v9, 0x1000040BDFB0063uLL);
  memset(v42, 0, 24);
  v42[3] = v8;
  v42[4] = v9;
  v42[5] = 1;
  [v7 getBytes:v10 bytesPerRow:2 * v8 fromRegion:v42 mipmapLevel:0];
  v11 = malloc_type_malloc(4 * v9 * v8, 0x100004052888210uLL);
  v12 = v11;
  v13 = 4 * v8;
  if (v9)
  {
    v14 = 0;
    v15 = 3.4028e38;
    v16 = 1.1755e-38;
    v17 = v11;
    v18 = v10;
    do
    {
      if (v8)
      {
        for (i = 0; i != v8; v17[i++] = _S1)
        {
          _H1 = *&v18[2 * i];
          __asm { FCVT            S1, H1 }

          v16 = fmaxf(v16, _S1);
          v15 = fminf(v15, _S1);
        }
      }

      ++v14;
      v18 += 2 * v8;
      v17 = (v17 + v13);
    }

    while (v14 != v9);
  }

  else
  {
    v16 = 1.1755e-38;
    v15 = 3.4028e38;
  }

  v26 = *&v41 != 0.0;
  v27 = *(&v41 + 1) != 0.0;
  v28 = v26 && v27;
  if (v26 && v27)
  {
    v29 = *&v41;
  }

  else
  {
    v29 = v15;
  }

  v30 = malloc_type_malloc(4 * v9 * v8, 0x4509B403uLL);
  v31 = v30;
  v32 = 4 * v8;
  if (v9)
  {
    v33 = 0;
    if (v28)
    {
      v34 = *(&v41 + 1);
    }

    else
    {
      v34 = v16;
    }

    v35 = v34 - v29;
    v36 = 3;
    v37 = v12;
    do
    {
      if (v8)
      {
        v38 = 0;
        v39 = v36;
        do
        {
          v40 = ~(((v37[v38] - v29) / v35) * 255.0);
          v30[v39 - 3] = v40;
          v30[v39 - 2] = v40;
          v30[v39 - 1] = v40;
          v30[v39] = -1;
          ++v38;
          v39 += 4;
        }

        while (v8 != v38);
      }

      ++v33;
      v37 = (v37 + v13);
      v36 += v32;
    }

    while (v33 != v9);
  }

  sub_E620(v8, v9, v32, v30, a4);
  free(v31);
  free(v10);
  free(v12);
}

- (void)ApplyColorWheelAndWrite:(unsigned int)a3 height:(unsigned int)a4 data:(float *)a5 fileFullPath:(const char *)a6
{
  v15 = sub_14EE4(80, 30, 20, 20, 30, 0, 0, 1, 0.0);
  v10 = malloc_type_malloc(4 * a3 * a4, 0x7C78171DuLL);
  sub_15600(v15, a3, a4, a5, 4 * a3, 4, v10, 4 * a3, v11, v12, v13, v14, 4);
  sub_E620(a3, a4, 4 * a3, v10, a6);
  free(v10);
  sub_154DC(&v15);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4
{
  v6 = sub_E01C(a4);
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
    if (qword_49CD8 != -1)
    {
      sub_2341C();
    }

    v13 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = a4;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Could not write %s", &v14, 0xCu);
    }
  }
}

- (void)saveU8Texture:(id)a3 AsPGMFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = v7;
  v10 = malloc_type_malloc(v8 * v7 + 4096, 0x2D19AE8DuLL);
  [(disparityDebugUtils *)self makeCoherent:v6];
  memset(v14, 0, 24);
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = 1;
  [v6 getBytes:v10 bytesPerRow:v7 fromRegion:v14 mipmapLevel:0];
  v11 = sub_E01C(a4);
  if (v11)
  {
    v12 = v11;
    fprintf(v11, "P5 %u %u 255\n", v7, v8);
    if (v8)
    {
      v13 = v10;
      do
      {
        fwrite(v13, 1uLL, v9, v12);
        v13 += v9;
        --v8;
      }

      while (v8);
    }

    fclose(v12);
  }

  free(v10);
}

- (void)saveU16Texture:(id)a3 AsPGMFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = malloc_type_malloc(2 * v7 * v8, 0x14ADE848uLL);
  [(disparityDebugUtils *)self makeCoherent:v6];
  memset(v16, 0, 24);
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = 1;
  [v6 getBytes:v9 bytesPerRow:2 * v7 fromRegion:v16 mipmapLevel:0];
  v10 = sub_E01C(a4);
  if (v10)
  {
    v11 = v10;
    fprintf(v10, "P5 %u %u 65535\n", v7, v8);
    if (v8)
    {
      v12 = 0;
      v13 = 2 * v7;
      v14 = v9;
      do
      {
        if (v7)
        {
          v15 = 0;
          do
          {
            fprintf(v11, "%u ", *&v14[v15]);
            v15 += 2;
          }

          while (v13 != v15);
        }

        fputc(10, v11);
        ++v12;
        v14 += v13;
      }

      while (v12 != v8);
    }

    fclose(v11);
  }

  free(v9);
}

- (void)saveF16RGTexture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = v7;
  v10 = 4 * v7;
  [(disparityDebugUtils *)self makeCoherent:v6];
  v11 = malloc_type_malloc(v10 * v8, 0x1000040BDFB0063uLL);
  memset(v12, 0, 24);
  v12[3] = v9;
  v12[4] = v8;
  v12[5] = 1;
  [v6 getBytes:v11 bytesPerRow:v10 fromRegion:v12 mipmapLevel:0];

  [(disparityDebugUtils *)self WriteBinDataToFile:v11 length:v10 * v8 fileFullPath:a4];
  free(v11);
}

- (void)saveF16DisparityTexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  [(disparityDebugUtils *)self makeCoherent:v6];
  v9 = malloc_type_malloc((2 * v7 * v8), 0x1000040BDFB0063uLL);
  v10 = malloc_type_malloc(4 * (v7 * v8), 0x100004052888210uLL);
  memset(v21, 0, 24);
  v21[3] = v7;
  v21[4] = v8;
  v21[5] = 1;
  [v6 getBytes:v9 bytesPerRow:(2 * v7) fromRegion:v21 mipmapLevel:0];
  if (v8)
  {
    v11 = 0;
    v12 = v10;
    v13 = v9;
    do
    {
      if (v7)
      {
        v14 = 0;
        do
        {
          _H0 = *&v13[2 * v14];
          __asm { FCVT            S0, H0 }

          *&v12[4 * v14++] = _S0;
        }

        while (v7 != v14);
      }

      ++v11;
      v13 += 2 * v7;
      v12 += 4 * v7;
    }

    while (v11 != v8);
  }

  free(v9);
  [(disparityDebugUtils *)self ApplyColorWheelAndWrite:v7 height:v8 data:v10 fileFullPath:a4];
  free(v10);
}

- (void)saveRGF16ShiftmapTexture:(id)a3 AsPPMFileSx:(id)a4 AsPPMFileSy:(id)a5
{
  v8 = a3;
  v28 = a4;
  v9 = a5;
  v10 = [v8 width];
  v11 = [v8 height];
  v27 = self;
  [(disparityDebugUtils *)self makeCoherent:v8];
  v12 = malloc_type_malloc((2 * v11 * 4 * v10), 0x1000040BDFB0063uLL);
  v13 = malloc_type_malloc(4 * (v10 * v11), 0x100004052888210uLL);
  v14 = malloc_type_malloc(4 * (v10 * v11), 0x100004052888210uLL);
  memset(v29, 0, 24);
  v29[3] = v10;
  v29[4] = v11;
  v29[5] = 1;
  [v8 getBytes:v12 bytesPerRow:(4 * v10) fromRegion:v29 mipmapLevel:0];
  if (v11)
  {
    v15 = 0;
    v16 = v14;
    v17 = v13;
    v18 = v12;
    do
    {
      for (i = v10; i; --i)
      {
        _H0 = *v18;
        __asm { FCVT            S0, H0 }

        *v17++ = _S0;
        LOWORD(_S0) = v18[1];
        __asm { FCVT            S0, H0 }

        *v16++ = _S0;
        v18 += 2;
      }

      ++v15;
    }

    while (v15 != v11);
  }

  free(v12);
  -[disparityDebugUtils ApplyColorWheelAndWrite:height:data:fileFullPath:](v27, "ApplyColorWheelAndWrite:height:data:fileFullPath:", v10, v11, v13, [v28 UTF8String]);
  free(v13);
  -[disparityDebugUtils ApplyColorWheelAndWrite:height:data:fileFullPath:](v27, "ApplyColorWheelAndWrite:height:data:fileFullPath:", v10, v11, v14, [v9 UTF8String]);
  free(v14);
}

- (void)saveRGF16Texture:(id)a3 AsF32BinaryFile0:(id)a4 AsF32BinaryFile1:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_E01C([v9 UTF8String]);
  if (v11)
  {
    v12 = v11;
    __stream = sub_E01C([v10 UTF8String]);
    if (!__stream)
    {
      v36 = v12;
LABEL_17:
      fclose(v36);
      goto LABEL_18;
    }

    v13 = [v8 width];
    v14 = [v8 height];
    v15 = 4 * v13;
    [(disparityDebugUtils *)self makeCoherent:v8];
    v16 = malloc_type_malloc(v15 * v14, 0x1000040BDFB0063uLL);
    v17 = v16;
    if (!v16)
    {
      sub_234F0();
      v19 = 0;
      v18 = 0;
      goto LABEL_16;
    }

    v39 = v16;
    v18 = malloc_type_malloc(4 * (v13 & 0x3FFFFFFF), 0x100004052888210uLL);
    if (v18)
    {
      v19 = malloc_type_malloc(4 * (v13 & 0x3FFFFFFF), 0x100004052888210uLL);
      if (v19)
      {
        v38 = v10;
        memset(v41, 0, 24);
        v41[3] = v13;
        v41[4] = v14;
        v41[5] = 1;
        v20 = v8;
        v21 = v8;
        v22 = v39;
        [v20 getBytes:v39 bytesPerRow:4 * v13 fromRegion:v41 mipmapLevel:0];
        if (!v14)
        {
          v17 = v39;
          v8 = v21;
          v10 = v38;
          goto LABEL_16;
        }

        v37 = v21;
        v23 = 0;
        v24 = v15 >> 1;
        do
        {
          if (v13)
          {
            v25 = 0;
            v26 = v19;
            v27 = v18;
            do
            {
              _H0 = *&v22[2 * v25];
              __asm { FCVT            S0, H0 }

              _H1 = *&v22[2 * (v25 + 1)];
              __asm { FCVT            S1, H1 }

              *v27++ = _S0;
              *v26++ = _S1;
              v25 += 2;
            }

            while (2 * v13 != v25);
          }

          fwrite(v18, 4uLL, v13, v12);
          fwrite(v19, 4uLL, v13, __stream);
          v22 += 2 * v24;
          ++v23;
        }

        while (v23 != v14);
        v8 = v37;
        v10 = v38;
      }

      else
      {
        sub_23430();
      }
    }

    else
    {
      sub_23490();
      v19 = 0;
    }

    v17 = v39;
LABEL_16:
    free(v18);
    free(v19);
    free(v17);
    fclose(v12);
    v36 = __stream;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)saveRGBA8Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = malloc_type_malloc(4 * v7 * v8, 0xD13A6CE5uLL);
  if (v9)
  {
    v10 = v9;
    [(disparityDebugUtils *)self makeCoherent:v6];
    memset(v12, 0, 24);
    v12[3] = v7;
    v12[4] = v8;
    v12[5] = 1;
    [v6 getBytes:v10 bytesPerRow:4 * v7 fromRegion:v12 mipmapLevel:0];
    sub_E620(v7, v8, 4 * v7, v10, a4);
    free(v10);
  }

  else
  {
    if (qword_49CD8 != -1)
    {
      sub_2341C();
    }

    v11 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Could not allocate rgbaImagesData", v12, 2u);
    }
  }
}

- (void)saveRGBA8Texture:(id)a3 AsBinaryFile:(const char *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = malloc_type_malloc(4 * v7 * v8, 0xABE21FF2uLL);
  if (v9)
  {
    v10 = sub_E01C(a4);
    if (v10)
    {
      v11 = v10;
      [(disparityDebugUtils *)self makeCoherent:v6];
      memset(v12, 0, 24);
      v12[3] = v7;
      v12[4] = v8;
      v12[5] = 1;
      [v6 getBytes:v9 bytesPerRow:4 * v7 fromRegion:v12 mipmapLevel:0];
      fwrite(v9, 4 * v7 * v8, 1uLL, v11);
      fclose(v11);
    }

    else
    {
      sub_23550();
    }
  }

  else
  {
    sub_235B0();
  }

  free(v9);
}

- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  v6 = sub_E01C(a4);
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
    if (qword_49CD8 != -1)
    {
      sub_2341C();
    }

    v17 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = a4;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)save32BGRAPixelBuffer:(__CVBuffer *)a3 AsPPMFile:(const char *)a4
{
  v5 = sub_E01C(a4);
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
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);

  [(disparityDebugUtils *)self saveRGBAF16PixelBuffer:a3 out_width:Width out_height:Height AsPPMFile:a4];
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFile:(const char *)a6
{
  v10 = sub_E01C(a6);
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
    if (qword_49CD8 != -1)
    {
      sub_2341C();
    }

    v27 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = a6;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 AsPPMFileWithAlpha:(const char *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);

  [(disparityDebugUtils *)self saveRGBAF16PixelBuffer:a3 out_width:Width out_height:Height AsPPMFileWithAlpha:a4];
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)a3 out_width:(unsigned int)a4 out_height:(unsigned int)a5 AsPPMFileWithAlpha:(const char *)a6
{
  v10 = sub_E01C(a6);
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
    if (qword_49CD8 != -1)
    {
      sub_2341C();
    }

    v27 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = a6;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)saveF16Texture:(id)a3 AsF32BinaryFile:(const char *)a4
{
  v6 = a3;
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v6 width];
    v10 = [v6 height];
    v11 = 2 * v9;
    v12 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
    v13 = malloc_type_malloc(v11 * v10, 0x1000040BDFB0063uLL);
    [(disparityDebugUtils *)self makeCoherent:v6];
    memset(v23, 0, 24);
    v23[3] = v9;
    v23[4] = v10;
    v23[5] = 1;
    [v6 getBytes:v13 bytesPerRow:v11 fromRegion:v23 mipmapLevel:0];
    if (v10)
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (v9)
        {
          for (i = 0; i != v9; v12[i++] = _S0)
          {
            _H0 = *&v15[2 * i];
            __asm { FCVT            S0, H0 }
          }
        }

        fwrite(v12, 4uLL, v9, v8);
        ++v14;
        v15 += v11;
      }

      while (v14 != v10);
    }

    free(v12);
    free(v13);
    fclose(v8);
  }
}

- (void)saveNCCOutputFrom:(id)a3 asBinaryFiles:(const char *)a4
{
  v6 = a3;
  [(FigMetalContext *)self->_metalContext waitForIdle];
  [(disparityDebugUtils *)self makeCoherent:v6];
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = [v6 bufferBytesPerRow];
  v10 = malloc_type_malloc(v9 * v8, 0x885D3F11uLL);
  v11 = vabd_s32(vdup_n_s32(v9), vshl_u32(vdup_n_s32(v7), 0x400000003));
  v12 = vcgt_u32(vdup_lane_s32(v11, 1), v11).u8[0];
  v13 = @"f32";
  if (v12)
  {
    v13 = @"f16";
  }

  v14 = v13;
  v52 = v7;
  v45 = v10;
  v50 = v9;
  [v6 getBytes:v10 bytesPerRow:? fromRegion:? mipmapLevel:?];
  v15 = [NSString stringWithFormat:@"%s_L_%dx%d.%@", a4, v7, v8, v14];
  v16 = [NSString stringWithFormat:@"%s_R_%dx%d.%@", a4, v7, v8, v14];
  v17 = [NSString stringWithFormat:@"%s_C_%dx%d.%@", a4, v7, v8, v14];
  v53 = v7;
  v57 = a4;
  v18 = [NSString stringWithFormat:@"%s_F_%dx%d.%@", a4, v7, v8, v14];
  v19 = sub_E01C([v15 UTF8String]);
  v20 = sub_E01C([v16 UTF8String]);
  v44 = v17;
  v56 = sub_E01C([v17 UTF8String]);
  v21 = sub_E01C([v18 UTF8String]);
  v22 = 0;
  v54 = v21;
  __stream = v19;
  if (!v19)
  {
    v46 = 0;
    v23 = v20;
    goto LABEL_37;
  }

  v23 = v20;
  if (!v20)
  {
    v46 = 0;
LABEL_37:
    v24 = v56;
    goto LABEL_38;
  }

  v24 = v56;
  if (!v56)
  {
    v46 = 0;
    goto LABEL_38;
  }

  v46 = 0;
  if (!v21)
  {
    goto LABEL_38;
  }

  v51 = v8;
  v41 = v16;
  v42 = v15;
  v43 = v6;
  v25 = 4;
  if (v12)
  {
    v25 = 2;
  }

  __size = v25;
  v26 = 1;
  if ((v12 & 1) == 0)
  {
    v26 = 2;
  }

  v27 = v52 << v26;
  v28 = malloc_type_malloc(v52 << v26, 0x24B2F1B5uLL);
  v29 = malloc_type_malloc(v27, 0x311604CEuLL);
  v30 = malloc_type_malloc(v27, 0x9916A70BuLL);
  v31 = malloc_type_malloc(v27, 0x83896B1uLL);
  v49 = v23;
  if (v12)
  {
    v22 = 0;
    v46 = 0;
    if (!v51)
    {
      goto LABEL_23;
    }

LABEL_15:
    v32 = 0;
    v33 = 0;
    v34 = v45;
    v47 = v12;
    do
    {
      v58 = v33;
      if (v53)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          v37 = (v36 + 1);
          v38 = (v36 + 2);
          v39 = (v36 + 3);
          if (v12)
          {
            *&v28[v35] = *&v34[2 * v36];
            *&v29[v35] = *&v34[2 * v37];
            *&v30[v35] = *&v34[2 * v38];
            *&v31[v35] = *&v34[2 * v39];
          }

          else
          {
            *&v28[v36] = *&v34[4 * v36];
            *&v29[v36] = *&v34[4 * v37];
            *&v30[v36] = *&v34[4 * v38];
            *&v31[v36] = *&v34[4 * v39];
            v40 = fmaxf(fminf(*&v34[4 * v36] * 25500.0, 255.0), 0.0);
            v22[(v32 + v36 + 2)] = v40;
            v22[(v32 + v36 + 1)] = v40;
            v22[(v32 + v36)] = v40;
            v22[(v32 + v36 + 3)] = -1;
          }

          v36 += 4;
          v35 += 2;
        }

        while (4 * v52 != v36);
      }

      fwrite(v28, __size, v52, __stream);
      fwrite(v29, __size, v52, v49);
      fwrite(v30, __size, v52, v56);
      v12 = v47;
      fwrite(v31, __size, v52, v54);
      v34 += v50;
      v33 = v58 + 1;
      v32 += 4 * v53;
    }

    while (v58 + 1 != v51);
    goto LABEL_23;
  }

  v46 = [NSString stringWithFormat:@"%s_L_%dx%d.ppm", v57, v53, v51];
  v22 = malloc_type_malloc((4 * v53 * v51), 0x72A3BA2BuLL);
  if (v51)
  {
    goto LABEL_15;
  }

LABEL_23:
  if ((v12 & 1) == 0)
  {
    sub_E620(v53, v51, 4 * v53, v22, [v46 UTF8String]);
  }

  v23 = v49;
  v24 = v56;
  if (v28)
  {
    free(v28);
  }

  if (v29)
  {
    free(v29);
  }

  v6 = v43;
  if (v30)
  {
    free(v30);
  }

  v15 = v42;
  if (v31)
  {
    free(v31);
  }

  v16 = v41;
LABEL_38:
  if (v45)
  {
    free(v45);
  }

  if (v22)
  {
    free(v22);
  }

  if (__stream)
  {
    fclose(__stream);
  }

  if (v23)
  {
    fclose(v23);
  }

  if (v24)
  {
    fclose(v24);
  }

  if (v54)
  {
    fclose(v54);
  }
}

- (void)savePixelBuffer:(__CVBuffer *)a3 AsBinaryFile:(const char *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v7 = [NSString stringWithFormat:@"%s.%c%c%c%c", a4, HIBYTE(PixelFormatType), BYTE2(PixelFormatType), BYTE1(PixelFormatType), PixelFormatType];
  [disparityDebugUtils createPathIfNeeded:v7];
  v6 = v7;
  [v7 UTF8String];
  WritePixelBufferToFile();
}

- (void)WriteBinDataToFile:(void *)a3 length:(unsigned int)a4 fileFullPath:(const char *)a5
{
  v7 = sub_E01C(a5);
  if (v7)
  {
    v8 = v7;
    fwrite(a3, 1uLL, a4, v7);

    fclose(v8);
  }
}

+ (void)createPathIfNeeded:(id)a3
{
  v3 = [a3 stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v12];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    if (qword_49CD8 != -1)
    {
      sub_233F4();
    }

    v7 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", &v8, 0x16u);
    }
  }
}

- (void)saveAccumulationFrom:(id)a3 asBinaryFiles:(const char *)a4 forSize:(CGSize)a5 costLineSize:(unsigned __int16)a6
{
  v43 = a6;
  height = a5.height;
  width = a5.width;
  v36 = a3;
  [(FigMetalContext *)self->_metalContext waitForIdle];
  [(disparityDebugUtils *)self makeCoherent:v36];
  v45 = width;
  v10 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v11 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v12 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v13 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v14 = v36;
  v15 = [v36 contents];
  v16 = [NSString stringWithFormat:@"%s_L.f32", a4];
  v17 = [NSString stringWithFormat:@"%s_R.f32", a4];
  v18 = [NSString stringWithFormat:@"%s_C.f32", a4];
  v19 = [NSString stringWithFormat:@"%s_W.f32", a4];
  v35 = [NSString stringWithFormat:@"%s_L.ppm", a4];
  v34 = v16;
  v20 = sub_E01C([v16 UTF8String]);
  v21 = sub_E01C([v17 UTF8String]);
  v42 = sub_E01C([v18 UTF8String]);
  v22 = sub_E01C([v19 UTF8String]);
  v23 = v20;
  v24 = 0;
  v40 = v22;
  v41 = v21;
  if (!v23 || !v21)
  {
LABEL_12:
    v25 = v42;
    goto LABEL_13;
  }

  v25 = v42;
  if (v42 && v22)
  {
    __stream = v23;
    v33 = v17;
    v26 = malloc_type_malloc(4 * height * v45, 0x1DEA816FuLL);
    v27 = width;
    v24 = v26;
    v38 = height;
    if (height)
    {
      v28 = 0;
      v29 = 0;
      v37 = v43;
      do
      {
        v44 = v29;
        if (v27)
        {
          v30 = 0;
          do
          {
            v31 = v15[v30];
            *&v10[v30] = v31;
            v32 = fmaxf(fminf(v31 * 25500.0, 255.0), 0.0);
            v24[(v28 + v30 + 2)] = v32;
            v24[(v28 + v30 + 1)] = v32;
            v24[(v28 + v30)] = v32;
            v24[(v28 + v30 + 3)] = -1;
            *&v11[v30] = v15[(v30 + 1)];
            *&v12[v30] = v15[(v30 + 2)];
            *&v13[v30] = v15[(v30 + 3)];
            v30 += 4;
          }

          while (4 * v45 != v30);
        }

        fwrite(v10, 4uLL, v45, __stream);
        fwrite(v11, 4uLL, v45, v41);
        fwrite(v12, 4uLL, v45, v42);
        fwrite(v13, 4uLL, v45, v40);
        v27 = width;
        v15 += v37;
        v29 = v44 + 1;
        v28 += 4 * v45;
      }

      while (v44 + 1 != v38);
    }

    sub_E620(v27, v38, 4 * v27, v24, [v35 UTF8String]);
    v17 = v33;
    v23 = __stream;
    goto LABEL_12;
  }

LABEL_13:
  if (v23)
  {
    fclose(v23);
  }

  if (v41)
  {
    fclose(v41);
  }

  if (v25)
  {
    fclose(v25);
  }

  if (v40)
  {
    fclose(v40);
  }

  free(v24);
  free(v10);
  free(v11);
  free(v12);
  free(v13);
}

- (void)saveF32Texture:(id)a3 AsF32BinaryFile:(const char *)a4
{
  v6 = a3;
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = [v6 width];
    v9 = [v6 height];
    v10 = v8;
    v11 = 4 * v8;
    v12 = malloc_type_malloc(v11, 0x100004052888210uLL);
    if (v12)
    {
      v13 = malloc_type_malloc((v11 * v9) & 0xFFFFFFFC, 0x100004052888210uLL);
      if (v13)
      {
        [(disparityDebugUtils *)self makeCoherent:v6];
        memset(v17, 0, 24);
        v17[3] = v10;
        v17[4] = v9;
        v17[5] = 1;
        [v6 getBytes:v13 bytesPerRow:v11 & 0xFFFFFFFC fromRegion:v17 mipmapLevel:0];
        if (v9)
        {
          v14 = 0;
          v15 = v13;
          do
          {
            if (v10)
            {
              v16 = 0;
              do
              {
                *&v12[v16] = *&v15[v16];
                v16 += 4;
              }

              while (v11 != v16);
            }

            fwrite(v12, 4uLL, v10, v7);
            ++v14;
            v15 += v11 & 0xFFFFFFFC;
          }

          while (v14 != v9);
        }
      }

      else
      {
        sub_23610();
      }
    }

    else
    {
      sub_23670();
      v13 = 0;
    }
  }

  else
  {
    sub_236D0();
    v13 = 0;
    v12 = 0;
  }

  free(v12);
  free(v13);
  fclose(v7);
}

- (void)saveRGBA16FTexture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v6 width];
    v10 = [v6 height];
    v11 = malloc_type_malloc(3 * v9, 0x100004077774924uLL);
    v12 = malloc_type_malloc(8 * v9 * v10, 0x1000040BDFB0063uLL);
    fprintf(v8, "P6 %u %u 255\n", v9, v10);
    [(disparityDebugUtils *)self makeCoherent:v6];
    memset(v28, 0, 24);
    v28[3] = v9;
    v28[4] = v10;
    v28[5] = 1;
    v27 = v6;
    [v6 getBytes:v12 bytesPerRow:8 * v9 fromRegion:v28 mipmapLevel:0];
    if (v10)
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (v9)
        {
          v15 = 0;
          v16 = 2;
          do
          {
            _H0 = *&v14[2 * v15];
            __asm { FCVT            S0, H0 }

            v23 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v14[2 * (v15 + 1)];
            __asm { FCVT            S0, H0 }

            v25 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v14[2 * (v15 + 2)];
            __asm { FCVT            S0, H0 }

            v11[v16 - 2] = v23;
            v11[v16 - 1] = v25;
            v11[v16] = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v16 += 3;
            v15 += 4;
          }

          while (4 * v9 != v15);
        }

        fwrite(v11, 3uLL, v9, v8);
        v14 += 8 * (v9 & 0x3FFFFFFF);
        ++v13;
      }

      while (v13 != v10);
    }

    free(v11);
    free(v12);
    fclose(v8);
    v6 = v27;
  }
}

- (void)saveRGBA16FTexture:(id)a3 AsF32File:(const char *)a4
{
  v6 = a3;
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v6 width];
    v10 = [v6 height];
    v11 = malloc_type_malloc(16 * (v9 & 0x3FFFFFFF), 0x100004052888210uLL);
    v12 = malloc_type_malloc(8 * v9 * v10, 0x1000040BDFB0063uLL);
    [(disparityDebugUtils *)self makeCoherent:v6];
    memset(v23, 0, 24);
    v23[3] = v9;
    v23[4] = v10;
    v23[5] = 1;
    v22 = v12;
    [v6 getBytes:v12 bytesPerRow:8 * v9 fromRegion:v23 mipmapLevel:0];
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        if (v9)
        {
          v15 = 0;
          do
          {
            _H0 = *&v12[2 * (v15 + 2)];
            __asm { FCVT            S0, H0 }

            v13.i32[0] = *&v12[2 * v15];
            v13 = vcvtq_f32_f16(v13).u64[0];
            *&v11[v15] = v13;
            v11[(v15 + 2)] = _S0;
            v11[(v15 + 3)] = 0;
            v15 += 4;
          }

          while (4 * v9 != v15);
        }

        fwrite(v11, 0x10uLL, v9, v8);
        v12 += 8 * (v9 & 0x3FFFFFFF);
      }
    }

    free(v11);
    free(v22);
    fclose(v8);
  }
}

- (void)saveRGB10A2Texture:(id)a3 AsPPMFile:(const char *)a4
{
  v6 = a3;
  v7 = sub_E01C(a4);
  if (v7)
  {
    v8 = v7;
    if ([v6 pixelFormat] == &stru_20.maxprot + 2)
    {
      v9 = [v6 width];
      v10 = [v6 height];
      v11 = malloc_type_malloc(3 * v9, 0x100004077774924uLL);
      v12 = malloc_type_malloc(4 * v9 * v10, 0x100004052888210uLL);
      fprintf(v8, "P6 %u %u 255\n", v9, v10);
      [(disparityDebugUtils *)self makeCoherent:v6];
      memset(v19, 0, 24);
      v19[3] = v9;
      v19[4] = v10;
      v19[5] = 1;
      v18 = v12;
      [v6 getBytes:v12 bytesPerRow:4 * v9 fromRegion:v19 mipmapLevel:0];
      if (v10)
      {
        v13 = 0;
        v14 = 4 * v9;
        do
        {
          if (v9)
          {
            v15 = 0;
            v16 = 2;
            do
            {
              v17 = *&v12[v15];
              v11[v16 - 2] = vcvtms_s32_f32(((v17 & 0x3FF) / 1023.0) * 255.0);
              v11[v16 - 1] = vcvtms_s32_f32((((v17 >> 10) & 0x3FF) / 1023.0) * 255.0);
              v11[v16] = vcvtms_s32_f32((((v17 >> 20) & 0x3FF) / 1023.0) * 255.0);
              v16 += 3;
              v15 += 4;
            }

            while (v14 != v15);
          }

          fwrite(v11, 3uLL, v9, v8);
          ++v13;
          v12 += v14;
        }

        while (v13 != v10);
      }

      free(v11);
      free(v18);
    }

    fclose(v8);
  }
}

@end