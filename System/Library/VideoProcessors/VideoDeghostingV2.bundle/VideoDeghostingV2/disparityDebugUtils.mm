@interface disparityDebugUtils
+ (void)createPathIfNeeded:(id)needed;
- (disparityDebugUtils)initWithMetalContext:(id)context;
- (void)ApplyColorWheelAndWrite:(unsigned int)write height:(unsigned int)height data:(float *)data fileFullPath:(const char *)path;
- (void)WriteBinDataToFile:(void *)file length:(unsigned int)length fileFullPath:(const char *)path;
- (void)computeRobustMinMaxForF16DisparityBuffer:(__CVBuffer *)buffer WithDisparityScale:(float)scale AndPercentile:(float)percentile OutSignalMin:(float *)min OutSignalMax:(float *)max;
- (void)convertRGB10A2ToRGBA8:(char *)a8 rbs:(unint64_t)rbs ToRGBA:(char *)a outWidth:(unsigned int)width outHeight:(unsigned int)height;
- (void)convertVUYA444:(char *)rbs44 rbs:(unint64_t)rbs ToRGBA:(char *)a ofSize:(CGSize)size;
- (void)save32BGRAPixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)save420CVPixelBuffer:(__CVBuffer *)buffer to:(const char *)to;
- (void)saveAccumulationFrom:(id)from asBinaryFiles:(const char *)files forSize:(CGSize)size costLineSize:(unsigned __int16)lineSize;
- (void)saveF16Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file scale:(float)scale;
- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsBinaryFile:(const char *)file;
- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsGrayScalePPMFile:(const char *)file range:;
- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)turbo AsPPMFile:(const char *)file WithDisparityScale:(float)scale AndPercentile:(float)percentile;
- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)turbo AsPPMFile:(const char *)file WithMin:(float)min WithMax:(float)max;
- (void)saveF16DisparityTexture:(id)texture AsBinaryFile:(const char *)file;
- (void)saveF16DisparityTexture:(id)texture AsPPMFile:(const char *)file;
- (void)saveF16RGTexture:(id)texture AsBinaryFile:(const char *)file;
- (void)saveF16Texture:(id)texture AsF32BinaryFile:(const char *)file;
- (void)saveF16Texture:(id)texture AsGrayScalePPMFile:(const char *)file range:;
- (void)saveF16Texture:(id)texture AsPPMFile:(const char *)file;
- (void)saveF32Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveF32DisparityBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveF32FPBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file scale:(float)scale;
- (void)saveF32Texture:(id)texture AsF32BinaryFile:(const char *)file;
- (void)saveLumaTexture:(id)texture to:(const char *)to;
- (void)saveNCCOutputFrom:(id)from asBinaryFiles:(const char *)files;
- (void)savePixelBuffer:(__CVBuffer *)buffer AsBinaryFile:(const char *)file;
- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file;
- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFileWithAlpha:(const char *)alpha;
- (void)saveRGB10A2Texture:(id)texture AsPPMFile:(const char *)file;
- (void)saveRGBA16FTexture:(id)texture AsF32File:(const char *)file;
- (void)saveRGBA16FTexture:(id)texture AsPPMFile:(const char *)file;
- (void)saveRGBA8Texture:(id)texture AsBinaryFile:(const char *)file;
- (void)saveRGBA8Texture:(id)texture AsPPMFile:(const char *)file;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer AsPPMFileWithAlpha:(const char *)alpha;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file;
- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFileWithAlpha:(const char *)alpha;
- (void)saveRGBATexture:(id)texture AsPPMFile:(const char *)file;
- (void)saveRGF16ShiftmapTexture:(id)texture AsPPMFileSx:(id)sx AsPPMFileSy:(id)sy;
- (void)saveRGF16Texture:(id)texture AsF32BinaryFile0:(id)file0 AsF32BinaryFile1:(id)file1;
- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveU16Texture:(id)texture AsPGMFile:(const char *)file;
- (void)saveU8Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveU8Texture:(id)texture AsPGMFile:(const char *)file;
- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)Width out_height:(unsigned int)Height AsBinaryFile:(const char *)file;
- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file;
- (void)saveVUYA4444Texture:(id)texture AsBinaryFile:(const char *)file;
- (void)saveVUYA4444Texture:(id)texture AsPPMFile:(const char *)file;
@end

@implementation disparityDebugUtils

- (disparityDebugUtils)initWithMetalContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = disparityDebugUtils;
  v6 = [(disparityDebugUtils *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
  }

  return v7;
}

- (void)saveF32DisparityBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  [(disparityDebugUtils *)self ApplyColorWheelAndWrite:Width height:Height data:BaseAddress fileFullPath:file];
}

- (void)saveF32FPBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file scale:(float)scale
{
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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
            v20 = vcvtms_s32_f32(fmaxf(fminf(powf(*&BaseAddress[v18], scale) * 255.0, 255.0), 0.0));
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

- (void)saveF16Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file scale:(float)scale
{
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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

            v26 = vcvtms_s32_f32(fmaxf(fminf(powf(_S0, scale) * 255.0, 255.0), 0.0));
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

- (void)saveF16Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    width = [textureCopy width];
    height = [textureCopy height];
    v11 = malloc_type_malloc(3 * width, 0x100004077774924uLL);
    v12 = malloc_type_malloc(2 * width * height, 0x1000040BDFB0063uLL);
    fprintf(v8, "P6 %u %u 255\n", width, height);
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    memset(v25, 0, 24);
    v25[3] = width;
    v25[4] = height;
    v25[5] = 1;
    v24 = v12;
    [textureCopy getBytes:v12 bytesPerRow:2 * width fromRegion:v25 mipmapLevel:0];
    if (height)
    {
      v13 = 0;
      v14 = 2 * width;
      do
      {
        if (width)
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

        fwrite(v11, 3uLL, width, v8);
        ++v13;
        v12 += v14;
      }

      while (v13 != height);
    }

    free(v11);
    free(v24);
    fclose(v8);
  }
}

- (void)saveF32Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
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

  file = [NSString stringWithFormat:@"%s", file];
  [disparityDebugUtils createPathIfNeeded:file];
  v16 = file;
  sub_E620(Width, Height, 4 * Width, v10, [file UTF8String]);
  free(v10);
}

- (void)saveU8Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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

  file = [NSString stringWithFormat:@"%s", file];
  [disparityDebugUtils createPathIfNeeded:file];
  v19 = file;
  sub_E620(Width, Height, 4 * Width, v11, [file UTF8String]);
  free(v11);
}

- (void)saveVUYA4444Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = malloc_type_malloc(4 * width * height, 0x100004077774924uLL);
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  memset(v10, 0, 24);
  v10[3] = width;
  v10[4] = height;
  v10[5] = 1;
  [textureCopy getBytes:v9 bytesPerRow:4 * width fromRegion:v10 mipmapLevel:0];

  [(disparityDebugUtils *)self convertVUYA444:v9 rbs:4 * width ToRGBA:v9 ofSize:width, height];
  sub_E620(width, height, 4 * width, v9, file);
  free(v9);
}

- (void)saveVUYA4444Texture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = malloc_type_malloc(4 * width * height, 0x12E7F8D9uLL);
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  memset(v10, 0, 24);
  v10[3] = width;
  v10[4] = height;
  v10[5] = 1;
  [textureCopy getBytes:v9 bytesPerRow:4 * width fromRegion:v10 mipmapLevel:0];

  [(disparityDebugUtils *)self WriteBinDataToFile:v9 length:4 * width * height fileFullPath:file];
  free(v9);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)Width out_height:(unsigned int)Height AsBinaryFile:(const char *)file
{
  v9 = sub_E01C(file);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  if (!Width)
  {
    Width = CVPixelBufferGetWidth(buffer);
    if (Height)
    {
      goto LABEL_4;
    }

LABEL_12:
    Height = CVPixelBufferGetHeight(buffer);
    goto LABEL_4;
  }

  if (!Height)
  {
    goto LABEL_12;
  }

LABEL_4:
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
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

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file
{
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  v14 = malloc_type_malloc(4 * Width * Height, 0x85AD6BAFuLL);
  [(disparityDebugUtils *)self convertVUYA444:CVPixelBufferGetBaseAddress(buffer) rbs:BytesPerRow ToRGBA:v14 ofSize:Width, Height];
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  if (out_width)
  {
    out_widthCopy = out_width;
  }

  else
  {
    out_widthCopy = Width;
  }

  if (out_height)
  {
    out_heightCopy = out_height;
  }

  else
  {
    out_heightCopy = Height;
  }

  sub_E620(out_widthCopy, out_heightCopy, 4 * Width, v14, file);

  free(v14);
}

- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file
{
  LODWORD(v7) = out_height;
  LODWORD(v8) = out_width;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  v14 = malloc_type_malloc(4 * Width * Height, 0x6C1AACBuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
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
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  sub_E620(v8, v7, 4 * v8, v14, file);

  free(v14);
}

- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFileWithAlpha:(const char *)alpha
{
  LODWORD(v7) = out_height;
  LODWORD(v8) = out_width;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  v14 = malloc_type_malloc(4 * Width * Height, 0x33047A7FuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
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
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  v16 = sub_E01C(alpha);
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

- (void)save420CVPixelBuffer:(__CVBuffer *)buffer to:(const char *)to
{
  v5 = sub_E01C(to);
  if (v5)
  {
    v6 = v5;
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
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

    v13 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
    v14 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
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

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  }
}

- (void)saveLumaTexture:(id)texture to:(const char *)to
{
  textureCopy = texture;
  v7 = sub_E01C(to);
  if (v7)
  {
    v8 = v7;
    width = [textureCopy width];
    height = [textureCopy height];
    v11 = malloc_type_malloc(height * width, 0x4EAF6647uLL);
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    v12 = width;
    memset(v14, 0, 24);
    v14[3] = width;
    v14[4] = height;
    v14[5] = 1;
    [textureCopy getBytes:v11 bytesPerRow:width fromRegion:v14 mipmapLevel:0];
    fwrite(v11, 1uLL, height * width, v8);
    bzero(v11, width);
    if (height)
    {
      for (i = 0; i < height; i += 2)
      {
        fwrite(v11, 1uLL, v12, v8);
      }
    }

    free(v11);
    fclose(v8);
  }
}

- (void)convertVUYA444:(char *)rbs44 rbs:(unint64_t)rbs ToRGBA:(char *)a ofSize:(CGSize)size
{
  v6 = vcvtmd_u64_f64(size.height);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = vcvtmd_u64_f64(size.width);
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = a444[(v8 + v11 + 3)];
          v13 = a444[(v8 + v11)] - 128;
          v14 = 74 * a444[(v8 + v11 + 2)] - 1152;
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

          v18 = a444[(v8 + v11 + 1)] - 128;
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
          a[v27] = v26;
          a[v27 + 1] = v21;
          a[v27 + 2] = v24;
          a[v27 + 3] = -1;
          v11 += 4;
        }

        while (4 * v10 != v11);
      }

      ++v9;
      v8 += rbs;
      v7 += 4 * v10;
    }

    while (v9 != v6);
  }
}

- (void)convertRGB10A2ToRGBA8:(char *)a8 rbs:(unint64_t)rbs ToRGBA:(char *)a outWidth:(unsigned int)width outHeight:(unsigned int)height
{
  if (height)
  {
    v7 = 0;
    v8 = 0;
    heightCopy = height;
    do
    {
      if (width)
      {
        v10 = 0;
        do
        {
          v11 = *&a8[v8 * rbs + v10];
          v12 = &a[(v7 + v10)];
          *v12 = v11 >> 2;
          v12[1] = v11 >> 12;
          v12[2] = v11 >> 22;
          v12[3] = 85 * (v11 >> 30);
          v10 += 4;
        }

        while (4 * width != v10);
      }

      ++v8;
      v7 += 4 * width;
    }

    while (v8 != heightCopy);
  }
}

- (void)saveRGBATexture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = malloc_type_malloc(4 * width * height, 0xF858F8E4uLL);
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  memset(v11, 0, 24);
  v11[3] = width;
  v11[4] = height;
  v11[5] = 1;
  [textureCopy getBytes:v9 bytesPerRow:4 * objc_msgSend(textureCopy fromRegion:"width") mipmapLevel:{v11, 0}];

  file = [NSString stringWithFormat:@"%s", file];
  [disparityDebugUtils createPathIfNeeded:file];
  sub_E620(width, height, 4 * width, v9, [file UTF8String]);
  free(v9);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
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

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  [(disparityDebugUtils *)self ApplyColorWheelAndWrite:Width height:Height data:v12 fileFullPath:file];

  free(v12);
}

- (void)computeRobustMinMaxForF16DisparityBuffer:(__CVBuffer *)buffer WithDisparityScale:(float)scale AndPercentile:(float)percentile OutSignalMin:(float *)min OutSignalMax:(float *)max
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  bzero(v37, 0x1000uLL);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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

          v26 = (((_S0 / scale) * 8.0) + 0.5);
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
  *min = 3.4028e38;
  *max = 1.1755e-38;
  v30 = ((v29 * percentile) + 0.5);
  v31 = ((v29 * (1.0 - percentile)) + 0.5);
  v32 = *min;
  v33 = 1.1755e-38;
  while (1)
  {
    v34 = v37[v27];
    v28 += v34;
    if (v32 == 3.4028e38 && v28 > v30)
    {
      v32 = ((v27 + -0.5) + ((v28 - v30) / v34)) * 0.125;
      *min = v32;
      v33 = *max;
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

  *max = ((v27 + -0.5) + ((v28 - v31) / v34)) * 0.125;
LABEL_23:

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)turbo AsPPMFile:(const char *)file WithMin:(float)min WithMax:(float)max
{
  Width = CVPixelBufferGetWidth(turbo);
  Height = CVPixelBufferGetHeight(turbo);
  BytesPerRow = CVPixelBufferGetBytesPerRow(turbo);
  CVPixelBufferLockBaseAddress(turbo, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(turbo);
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

            v25 = &unk_2DE98 + 3 * ((((fmaxf(min, fminf(max, _S3)) - min) / (max - min)) * 1024.0) + -0.49);
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

    CVPixelBufferUnlockBaseAddress(turbo, 1uLL);
    sub_E620(Width, Height, 4 * Width, v15, file);

    free(v15);
  }
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)turbo AsPPMFile:(const char *)file WithDisparityScale:(float)scale AndPercentile:(float)percentile
{
  v12 = 0;
  [disparityDebugUtils computeRobustMinMaxForF16DisparityBuffer:"computeRobustMinMaxForF16DisparityBuffer:WithDisparityScale:AndPercentile:OutSignalMin:OutSignalMax:" WithDisparityScale:turbo AndPercentile:&v12 + 4 OutSignalMin:&v12 OutSignalMax:?];
  *&v10 = *(&v12 + 1) * scale;
  *&v11 = *&v12 * scale;
  [(disparityDebugUtils *)self saveF16DisparityBufferAsTurbo:turbo AsPPMFile:file WithMin:v10 WithMax:v11];
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsGrayScalePPMFile:(const char *)file range:
{
  v39 = v4;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
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

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
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

  sub_E620(Width, Height, v30, v28, file);
  free(v29);

  free(v12);
}

- (void)saveF16DisparityTexture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = width;
  v10 = 2 * width;
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  v11 = malloc_type_malloc(v10 * height, 0x1000040BDFB0063uLL);
  memset(v12, 0, 24);
  v12[3] = v9;
  v12[4] = height;
  v12[5] = 1;
  [textureCopy getBytes:v11 bytesPerRow:v10 fromRegion:v12 mipmapLevel:0];

  [(disparityDebugUtils *)self WriteBinDataToFile:v11 length:v10 * height fileFullPath:file];
  free(v11);
}

- (void)saveF16Texture:(id)texture AsGrayScalePPMFile:(const char *)file range:
{
  v41 = v4;
  textureCopy = texture;
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  width = [textureCopy width];
  height = [textureCopy height];
  v10 = malloc_type_malloc(2 * width * height, 0x1000040BDFB0063uLL);
  memset(v42, 0, 24);
  v42[3] = width;
  v42[4] = height;
  v42[5] = 1;
  [textureCopy getBytes:v10 bytesPerRow:2 * width fromRegion:v42 mipmapLevel:0];
  v11 = malloc_type_malloc(4 * height * width, 0x100004052888210uLL);
  v12 = v11;
  v13 = 4 * width;
  if (height)
  {
    v14 = 0;
    v15 = 3.4028e38;
    v16 = 1.1755e-38;
    v17 = v11;
    v18 = v10;
    do
    {
      if (width)
      {
        for (i = 0; i != width; v17[i++] = _S1)
        {
          _H1 = *&v18[2 * i];
          __asm { FCVT            S1, H1 }

          v16 = fmaxf(v16, _S1);
          v15 = fminf(v15, _S1);
        }
      }

      ++v14;
      v18 += 2 * width;
      v17 = (v17 + v13);
    }

    while (v14 != height);
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

  v30 = malloc_type_malloc(4 * height * width, 0x4509B403uLL);
  v31 = v30;
  v32 = 4 * width;
  if (height)
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
      if (width)
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

        while (width != v38);
      }

      ++v33;
      v37 = (v37 + v13);
      v36 += v32;
    }

    while (v33 != height);
  }

  sub_E620(width, height, v32, v30, file);
  free(v31);
  free(v10);
  free(v12);
}

- (void)ApplyColorWheelAndWrite:(unsigned int)write height:(unsigned int)height data:(float *)data fileFullPath:(const char *)path
{
  v15 = sub_14EE4(80, 30, 20, 20, 30, 0, 0, 1, 0.0);
  v10 = malloc_type_malloc(4 * write * height, 0x7C78171DuLL);
  sub_15600(v15, write, height, data, 4 * write, 4, v10, 4 * write, v11, v12, v13, v14, 4);
  sub_E620(write, height, 4 * write, v10, path);
  free(v10);
  sub_154DC(&v15);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsBinaryFile:(const char *)file
{
  v6 = sub_E01C(file);
  if (v6)
  {
    v7 = v6;
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
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

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);

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
      fileCopy = file;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Could not write %s", &v14, 0xCu);
    }
  }
}

- (void)saveU8Texture:(id)texture AsPGMFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = width;
  v10 = malloc_type_malloc(height * width + 4096, 0x2D19AE8DuLL);
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  memset(v14, 0, 24);
  v14[3] = width;
  v14[4] = height;
  v14[5] = 1;
  [textureCopy getBytes:v10 bytesPerRow:width fromRegion:v14 mipmapLevel:0];
  v11 = sub_E01C(file);
  if (v11)
  {
    v12 = v11;
    fprintf(v11, "P5 %u %u 255\n", width, height);
    if (height)
    {
      v13 = v10;
      do
      {
        fwrite(v13, 1uLL, v9, v12);
        v13 += v9;
        --height;
      }

      while (height);
    }

    fclose(v12);
  }

  free(v10);
}

- (void)saveU16Texture:(id)texture AsPGMFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = malloc_type_malloc(2 * width * height, 0x14ADE848uLL);
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  memset(v16, 0, 24);
  v16[3] = width;
  v16[4] = height;
  v16[5] = 1;
  [textureCopy getBytes:v9 bytesPerRow:2 * width fromRegion:v16 mipmapLevel:0];
  v10 = sub_E01C(file);
  if (v10)
  {
    v11 = v10;
    fprintf(v10, "P5 %u %u 65535\n", width, height);
    if (height)
    {
      v12 = 0;
      v13 = 2 * width;
      v14 = v9;
      do
      {
        if (width)
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

      while (v12 != height);
    }

    fclose(v11);
  }

  free(v9);
}

- (void)saveF16RGTexture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = width;
  v10 = 4 * width;
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  v11 = malloc_type_malloc(v10 * height, 0x1000040BDFB0063uLL);
  memset(v12, 0, 24);
  v12[3] = v9;
  v12[4] = height;
  v12[5] = 1;
  [textureCopy getBytes:v11 bytesPerRow:v10 fromRegion:v12 mipmapLevel:0];

  [(disparityDebugUtils *)self WriteBinDataToFile:v11 length:v10 * height fileFullPath:file];
  free(v11);
}

- (void)saveF16DisparityTexture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  v9 = malloc_type_malloc((2 * width * height), 0x1000040BDFB0063uLL);
  v10 = malloc_type_malloc(4 * (width * height), 0x100004052888210uLL);
  memset(v21, 0, 24);
  v21[3] = width;
  v21[4] = height;
  v21[5] = 1;
  [textureCopy getBytes:v9 bytesPerRow:(2 * width) fromRegion:v21 mipmapLevel:0];
  if (height)
  {
    v11 = 0;
    v12 = v10;
    v13 = v9;
    do
    {
      if (width)
      {
        v14 = 0;
        do
        {
          _H0 = *&v13[2 * v14];
          __asm { FCVT            S0, H0 }

          *&v12[4 * v14++] = _S0;
        }

        while (width != v14);
      }

      ++v11;
      v13 += 2 * width;
      v12 += 4 * width;
    }

    while (v11 != height);
  }

  free(v9);
  [(disparityDebugUtils *)self ApplyColorWheelAndWrite:width height:height data:v10 fileFullPath:file];
  free(v10);
}

- (void)saveRGF16ShiftmapTexture:(id)texture AsPPMFileSx:(id)sx AsPPMFileSy:(id)sy
{
  textureCopy = texture;
  sxCopy = sx;
  syCopy = sy;
  width = [textureCopy width];
  height = [textureCopy height];
  selfCopy = self;
  [(disparityDebugUtils *)self makeCoherent:textureCopy];
  v12 = malloc_type_malloc((2 * height * 4 * width), 0x1000040BDFB0063uLL);
  v13 = malloc_type_malloc(4 * (width * height), 0x100004052888210uLL);
  v14 = malloc_type_malloc(4 * (width * height), 0x100004052888210uLL);
  memset(v29, 0, 24);
  v29[3] = width;
  v29[4] = height;
  v29[5] = 1;
  [textureCopy getBytes:v12 bytesPerRow:(4 * width) fromRegion:v29 mipmapLevel:0];
  if (height)
  {
    v15 = 0;
    v16 = v14;
    v17 = v13;
    v18 = v12;
    do
    {
      for (i = width; i; --i)
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

    while (v15 != height);
  }

  free(v12);
  -[disparityDebugUtils ApplyColorWheelAndWrite:height:data:fileFullPath:](selfCopy, "ApplyColorWheelAndWrite:height:data:fileFullPath:", width, height, v13, [sxCopy UTF8String]);
  free(v13);
  -[disparityDebugUtils ApplyColorWheelAndWrite:height:data:fileFullPath:](selfCopy, "ApplyColorWheelAndWrite:height:data:fileFullPath:", width, height, v14, [syCopy UTF8String]);
  free(v14);
}

- (void)saveRGF16Texture:(id)texture AsF32BinaryFile0:(id)file0 AsF32BinaryFile1:(id)file1
{
  textureCopy = texture;
  file0Copy = file0;
  file1Copy = file1;
  v11 = sub_E01C([file0Copy UTF8String]);
  if (v11)
  {
    v12 = v11;
    __stream = sub_E01C([file1Copy UTF8String]);
    if (!__stream)
    {
      v36 = v12;
LABEL_17:
      fclose(v36);
      goto LABEL_18;
    }

    width = [textureCopy width];
    height = [textureCopy height];
    v15 = 4 * width;
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    v16 = malloc_type_malloc(v15 * height, 0x1000040BDFB0063uLL);
    v17 = v16;
    if (!v16)
    {
      sub_234F0();
      v19 = 0;
      v18 = 0;
      goto LABEL_16;
    }

    v39 = v16;
    v18 = malloc_type_malloc(4 * (width & 0x3FFFFFFF), 0x100004052888210uLL);
    if (v18)
    {
      v19 = malloc_type_malloc(4 * (width & 0x3FFFFFFF), 0x100004052888210uLL);
      if (v19)
      {
        v38 = file1Copy;
        memset(v41, 0, 24);
        v41[3] = width;
        v41[4] = height;
        v41[5] = 1;
        v20 = textureCopy;
        v21 = textureCopy;
        v22 = v39;
        [v20 getBytes:v39 bytesPerRow:4 * width fromRegion:v41 mipmapLevel:0];
        if (!height)
        {
          v17 = v39;
          textureCopy = v21;
          file1Copy = v38;
          goto LABEL_16;
        }

        v37 = v21;
        v23 = 0;
        v24 = v15 >> 1;
        do
        {
          if (width)
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

            while (2 * width != v25);
          }

          fwrite(v18, 4uLL, width, v12);
          fwrite(v19, 4uLL, width, __stream);
          v22 += 2 * v24;
          ++v23;
        }

        while (v23 != height);
        textureCopy = v37;
        file1Copy = v38;
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

- (void)saveRGBA8Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = malloc_type_malloc(4 * width * height, 0xD13A6CE5uLL);
  if (v9)
  {
    v10 = v9;
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    memset(v12, 0, 24);
    v12[3] = width;
    v12[4] = height;
    v12[5] = 1;
    [textureCopy getBytes:v10 bytesPerRow:4 * width fromRegion:v12 mipmapLevel:0];
    sub_E620(width, height, 4 * width, v10, file);
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

- (void)saveRGBA8Texture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  v9 = malloc_type_malloc(4 * width * height, 0xABE21FF2uLL);
  if (v9)
  {
    v10 = sub_E01C(file);
    if (v10)
    {
      v11 = v10;
      [(disparityDebugUtils *)self makeCoherent:textureCopy];
      memset(v12, 0, 24);
      v12[3] = width;
      v12[4] = height;
      v12[5] = 1;
      [textureCopy getBytes:v9 bytesPerRow:4 * width fromRegion:v12 mipmapLevel:0];
      fwrite(v9, 4 * width * height, 1uLL, v11);
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

- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  v6 = sub_E01C(file);
  if (v6)
  {
    v7 = v6;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v10 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
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
      fileCopy = file;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)save32BGRAPixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  v5 = sub_E01C(file);
  if (v5)
  {
    v6 = v5;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v9 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    fclose(v6);

    free(v9);
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  [(disparityDebugUtils *)self saveRGBAF16PixelBuffer:buffer out_width:Width out_height:Height AsPPMFile:file];
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file
{
  v10 = sub_E01C(file);
  if (v10)
  {
    v11 = v10;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    v12 = malloc_type_malloc(3 * out_width, 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    fprintf(v11, "P6 %u %u 255\n", out_width, out_height);
    if (out_height)
    {
      v15 = 0;
      v16 = BytesPerRow >> 1;
      do
      {
        if (out_width)
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

          while (4 * out_width != v17);
        }

        fwrite(v12, 3uLL, out_width, v11);
        BaseAddress += 2 * v16;
        ++v15;
      }

      while (v15 != out_height);
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
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
      fileCopy = file;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer AsPPMFileWithAlpha:(const char *)alpha
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  [(disparityDebugUtils *)self saveRGBAF16PixelBuffer:buffer out_width:Width out_height:Height AsPPMFileWithAlpha:alpha];
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFileWithAlpha:(const char *)alpha
{
  v10 = sub_E01C(alpha);
  if (v10)
  {
    v11 = v10;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    v12 = malloc_type_malloc(4 * out_width, 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    fprintf(v11, "P7\nWIDTH %u\nHEIGHT %u\nDEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR", out_width, out_height);
    if (out_height)
    {
      v15 = 0;
      v16 = BytesPerRow >> 1;
      do
      {
        if (out_width)
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

          while (4 * out_width != v17);
        }

        fwrite(v12, 4uLL, out_width, v11);
        BaseAddress += 2 * v16;
        ++v15;
      }

      while (v15 != out_height);
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
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
      alphaCopy = alpha;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)saveF16Texture:(id)texture AsF32BinaryFile:(const char *)file
{
  textureCopy = texture;
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    width = [textureCopy width];
    height = [textureCopy height];
    v11 = 2 * width;
    v12 = malloc_type_malloc(4 * width, 0x100004052888210uLL);
    v13 = malloc_type_malloc(v11 * height, 0x1000040BDFB0063uLL);
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    memset(v23, 0, 24);
    v23[3] = width;
    v23[4] = height;
    v23[5] = 1;
    [textureCopy getBytes:v13 bytesPerRow:v11 fromRegion:v23 mipmapLevel:0];
    if (height)
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (width)
        {
          for (i = 0; i != width; v12[i++] = _S0)
          {
            _H0 = *&v15[2 * i];
            __asm { FCVT            S0, H0 }
          }
        }

        fwrite(v12, 4uLL, width, v8);
        ++v14;
        v15 += v11;
      }

      while (v14 != height);
    }

    free(v12);
    free(v13);
    fclose(v8);
  }
}

- (void)saveNCCOutputFrom:(id)from asBinaryFiles:(const char *)files
{
  fromCopy = from;
  [(FigMetalContext *)self->_metalContext waitForIdle];
  [(disparityDebugUtils *)self makeCoherent:fromCopy];
  width = [fromCopy width];
  height = [fromCopy height];
  bufferBytesPerRow = [fromCopy bufferBytesPerRow];
  v10 = malloc_type_malloc(bufferBytesPerRow * height, 0x885D3F11uLL);
  v11 = vabd_s32(vdup_n_s32(bufferBytesPerRow), vshl_u32(vdup_n_s32(width), 0x400000003));
  v12 = vcgt_u32(vdup_lane_s32(v11, 1), v11).u8[0];
  v13 = @"f32";
  if (v12)
  {
    v13 = @"f16";
  }

  v14 = v13;
  v52 = width;
  v45 = v10;
  v50 = bufferBytesPerRow;
  [fromCopy getBytes:v10 bytesPerRow:? fromRegion:? mipmapLevel:?];
  v15 = [NSString stringWithFormat:@"%s_L_%dx%d.%@", files, width, height, v14];
  v16 = [NSString stringWithFormat:@"%s_R_%dx%d.%@", files, width, height, v14];
  v17 = [NSString stringWithFormat:@"%s_C_%dx%d.%@", files, width, height, v14];
  v53 = width;
  filesCopy = files;
  v18 = [NSString stringWithFormat:@"%s_F_%dx%d.%@", files, width, height, v14];
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

  v51 = height;
  v41 = v16;
  v42 = v15;
  v43 = fromCopy;
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

  v46 = [NSString stringWithFormat:@"%s_L_%dx%d.ppm", filesCopy, v53, v51];
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

  fromCopy = v43;
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

- (void)savePixelBuffer:(__CVBuffer *)buffer AsBinaryFile:(const char *)file
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  pixelFormatType = [NSString stringWithFormat:@"%s.%c%c%c%c", file, HIBYTE(PixelFormatType), BYTE2(PixelFormatType), BYTE1(PixelFormatType), PixelFormatType];
  [disparityDebugUtils createPathIfNeeded:pixelFormatType];
  v6 = pixelFormatType;
  [pixelFormatType UTF8String];
  WritePixelBufferToFile();
}

- (void)WriteBinDataToFile:(void *)file length:(unsigned int)length fileFullPath:(const char *)path
{
  v7 = sub_E01C(path);
  if (v7)
  {
    v8 = v7;
    fwrite(file, 1uLL, length, v7);

    fclose(v8);
  }
}

+ (void)createPathIfNeeded:(id)needed
{
  stringByDeletingLastPathComponent = [needed stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v12];
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
      v9 = stringByDeletingLastPathComponent;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", &v8, 0x16u);
    }
  }
}

- (void)saveAccumulationFrom:(id)from asBinaryFiles:(const char *)files forSize:(CGSize)size costLineSize:(unsigned __int16)lineSize
{
  lineSizeCopy = lineSize;
  height = size.height;
  width = size.width;
  fromCopy = from;
  [(FigMetalContext *)self->_metalContext waitForIdle];
  [(disparityDebugUtils *)self makeCoherent:fromCopy];
  v45 = width;
  v10 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v11 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v12 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v13 = malloc_type_malloc(4 * v45, 0x100004052888210uLL);
  v14 = fromCopy;
  contents = [fromCopy contents];
  files = [NSString stringWithFormat:@"%s_L.f32", files];
  files2 = [NSString stringWithFormat:@"%s_R.f32", files];
  files3 = [NSString stringWithFormat:@"%s_C.f32", files];
  files4 = [NSString stringWithFormat:@"%s_W.f32", files];
  files5 = [NSString stringWithFormat:@"%s_L.ppm", files];
  v34 = files;
  v20 = sub_E01C([files UTF8String]);
  v21 = sub_E01C([files2 UTF8String]);
  v42 = sub_E01C([files3 UTF8String]);
  v22 = sub_E01C([files4 UTF8String]);
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
    v33 = files2;
    v26 = malloc_type_malloc(4 * height * v45, 0x1DEA816FuLL);
    v27 = width;
    v24 = v26;
    v38 = height;
    if (height)
    {
      v28 = 0;
      v29 = 0;
      v37 = lineSizeCopy;
      do
      {
        v44 = v29;
        if (v27)
        {
          v30 = 0;
          do
          {
            v31 = contents[v30];
            *&v10[v30] = v31;
            v32 = fmaxf(fminf(v31 * 25500.0, 255.0), 0.0);
            v24[(v28 + v30 + 2)] = v32;
            v24[(v28 + v30 + 1)] = v32;
            v24[(v28 + v30)] = v32;
            v24[(v28 + v30 + 3)] = -1;
            *&v11[v30] = contents[(v30 + 1)];
            *&v12[v30] = contents[(v30 + 2)];
            *&v13[v30] = contents[(v30 + 3)];
            v30 += 4;
          }

          while (4 * v45 != v30);
        }

        fwrite(v10, 4uLL, v45, __stream);
        fwrite(v11, 4uLL, v45, v41);
        fwrite(v12, 4uLL, v45, v42);
        fwrite(v13, 4uLL, v45, v40);
        v27 = width;
        contents += v37;
        v29 = v44 + 1;
        v28 += 4 * v45;
      }

      while (v44 + 1 != v38);
    }

    sub_E620(v27, v38, 4 * v27, v24, [files5 UTF8String]);
    files2 = v33;
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

- (void)saveF32Texture:(id)texture AsF32BinaryFile:(const char *)file
{
  textureCopy = texture;
  v7 = sub_E01C(file);
  if (v7)
  {
    width = [textureCopy width];
    height = [textureCopy height];
    v10 = width;
    v11 = 4 * width;
    v12 = malloc_type_malloc(v11, 0x100004052888210uLL);
    if (v12)
    {
      v13 = malloc_type_malloc((v11 * height) & 0xFFFFFFFC, 0x100004052888210uLL);
      if (v13)
      {
        [(disparityDebugUtils *)self makeCoherent:textureCopy];
        memset(v17, 0, 24);
        v17[3] = v10;
        v17[4] = height;
        v17[5] = 1;
        [textureCopy getBytes:v13 bytesPerRow:v11 & 0xFFFFFFFC fromRegion:v17 mipmapLevel:0];
        if (height)
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

          while (v14 != height);
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

- (void)saveRGBA16FTexture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    width = [textureCopy width];
    height = [textureCopy height];
    v11 = malloc_type_malloc(3 * width, 0x100004077774924uLL);
    v12 = malloc_type_malloc(8 * width * height, 0x1000040BDFB0063uLL);
    fprintf(v8, "P6 %u %u 255\n", width, height);
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    memset(v28, 0, 24);
    v28[3] = width;
    v28[4] = height;
    v28[5] = 1;
    v27 = textureCopy;
    [textureCopy getBytes:v12 bytesPerRow:8 * width fromRegion:v28 mipmapLevel:0];
    if (height)
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (width)
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

          while (4 * width != v15);
        }

        fwrite(v11, 3uLL, width, v8);
        v14 += 8 * (width & 0x3FFFFFFF);
        ++v13;
      }

      while (v13 != height);
    }

    free(v11);
    free(v12);
    fclose(v8);
    textureCopy = v27;
  }
}

- (void)saveRGBA16FTexture:(id)texture AsF32File:(const char *)file
{
  textureCopy = texture;
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    width = [textureCopy width];
    height = [textureCopy height];
    v11 = malloc_type_malloc(16 * (width & 0x3FFFFFFF), 0x100004052888210uLL);
    v12 = malloc_type_malloc(8 * width * height, 0x1000040BDFB0063uLL);
    [(disparityDebugUtils *)self makeCoherent:textureCopy];
    memset(v23, 0, 24);
    v23[3] = width;
    v23[4] = height;
    v23[5] = 1;
    v22 = v12;
    [textureCopy getBytes:v12 bytesPerRow:8 * width fromRegion:v23 mipmapLevel:0];
    if (height)
    {
      for (i = 0; i != height; ++i)
      {
        if (width)
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

          while (4 * width != v15);
        }

        fwrite(v11, 0x10uLL, width, v8);
        v12 += 8 * (width & 0x3FFFFFFF);
      }
    }

    free(v11);
    free(v22);
    fclose(v8);
  }
}

- (void)saveRGB10A2Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v7 = sub_E01C(file);
  if (v7)
  {
    v8 = v7;
    if ([textureCopy pixelFormat] == &stru_20.maxprot + 2)
    {
      width = [textureCopy width];
      height = [textureCopy height];
      v11 = malloc_type_malloc(3 * width, 0x100004077774924uLL);
      v12 = malloc_type_malloc(4 * width * height, 0x100004052888210uLL);
      fprintf(v8, "P6 %u %u 255\n", width, height);
      [(disparityDebugUtils *)self makeCoherent:textureCopy];
      memset(v19, 0, 24);
      v19[3] = width;
      v19[4] = height;
      v19[5] = 1;
      v18 = v12;
      [textureCopy getBytes:v12 bytesPerRow:4 * width fromRegion:v19 mipmapLevel:0];
      if (height)
      {
        v13 = 0;
        v14 = 4 * width;
        do
        {
          if (width)
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

          fwrite(v11, 3uLL, width, v8);
          ++v13;
          v12 += v14;
        }

        while (v13 != height);
      }

      free(v11);
      free(v18);
    }

    fclose(v8);
  }
}

@end