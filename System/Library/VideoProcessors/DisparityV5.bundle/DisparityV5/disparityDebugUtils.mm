@interface disparityDebugUtils
+ (void)createPathIfNeeded:(id)needed;
- (disparityDebugUtils)initWithMetalContext:(id)context;
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
- (void)saveRGBATexture:(id)texture AsPPMFile:(const char *)file;
- (void)saveRGF16ShiftmapTexture:(id)texture AsPPMFileSx:(id)sx AsPPMFileSy:(id)sy;
- (void)saveRGF16Texture:(id)texture AsF32BinaryFile0:(id)file0 AsF32BinaryFile1:(id)file1;
- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveU16Texture:(id)texture AsPGMFile:(const char *)file;
- (void)saveU8Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file;
- (void)saveU8Texture:(id)texture AsPGMFile:(const char *)file;
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

  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v9, Width, Height, BaseAddress, file, v11, v12, v13);
}

- (void)saveF32FPBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file scale:(float)scale
{
  v11 = sub_295759628(file, a2, scale, buffer, file, v5, v6, v7, v8);
  if (v11)
  {
    v12 = v11;
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    v17 = malloc_type_malloc(3 * Width, 0x100004077774924uLL);
    __nitems = Width;
    fprintf(v12, "P6 %u %u 255\n", Width, Height);
    v25 = Height;
    if (Height)
    {
      v18 = 0;
      v19 = BytesPerRow & 0xFFFFFFFC;
      v20 = 4 * Width;
      do
      {
        v21 = v12;
        if (__nitems)
        {
          v22 = 0;
          v23 = 2;
          do
          {
            v24 = vcvtms_s32_f32(fmaxf(fminf(powf(*&BaseAddress[v22], scale) * 255.0, 255.0), 0.0));
            v17[v23 - 2] = v24;
            v17[v23 - 1] = v24;
            v17[v23] = v24;
            v23 += 3;
            v22 += 4;
          }

          while (v20 != v22);
        }

        v12 = v21;
        fwrite(v17, 3uLL, __nitems, v21);
        ++v18;
        BaseAddress += v19;
      }

      while (v18 != v25);
    }

    free(v17);

    fclose(v12);
  }
}

- (void)saveF16Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file scale:(float)scale
{
  v11 = sub_295759628(file, a2, scale, buffer, file, v5, v6, v7, v8);
  if (v11)
  {
    v12 = v11;
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    v17 = malloc_type_malloc(3 * Width, 0x100004077774924uLL);
    __nitems = Width;
    fprintf(v12, "P6 %u %u 255\n", Width, Height);
    v31 = Height;
    if (Height)
    {
      v18 = 0;
      v19 = BytesPerRow & 0xFFFFFFFE;
      v20 = 2 * Width;
      do
      {
        v21 = v12;
        if (__nitems)
        {
          v22 = 0;
          v23 = 2;
          do
          {
            _H0 = *&BaseAddress[v22];
            __asm { FCVT            S0, H0; float }

            v30 = vcvtms_s32_f32(fmaxf(fminf(powf(_S0, scale) * 255.0, 255.0), 0.0));
            v17[v23 - 2] = v30;
            v17[v23 - 1] = v30;
            v17[v23] = v30;
            v23 += 3;
            v22 += 2;
          }

          while (v20 != v22);
        }

        v12 = v21;
        fwrite(v17, 3uLL, __nitems, v21);
        ++v18;
        BaseAddress += v19;
      }

      while (v18 != v31);
    }

    free(v17);

    fclose(v12);
  }
}

- (void)saveF16Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v15 = sub_295759628(file, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v15)
  {
    v24 = v15;
    v25 = objc_msgSend_width(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
    v34 = objc_msgSend_height(textureCopy, v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = malloc_type_malloc(3 * v25, 0x100004077774924uLL);
    v36 = malloc_type_malloc(2 * v25 * v34, 0x1000040BDFB0063uLL);
    fprintf(v24, "P6 %u %u 255\n", v25, v34);
    objc_msgSend_makeCoherent_(self, v37, textureCopy, v38, v39, v40, v41, v42, v43);
    memset(v60, 0, 24);
    v60[3] = v25;
    v60[4] = v34;
    v60[5] = 1;
    v59 = v36;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v44, v36, 2 * v25, v60, 0, v45, v46, v47);
    if (v34)
    {
      v48 = 0;
      v49 = 2 * v25;
      do
      {
        if (v25)
        {
          v50 = 0;
          v51 = 2;
          do
          {
            _H0 = *&v36[v50];
            __asm { FCVT            S0, H0 }

            v58 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v35[v51 - 2] = v58;
            v35[v51 - 1] = v58;
            v35[v51] = v58;
            v51 += 3;
            v50 += 2;
          }

          while (v49 != v50);
        }

        fwrite(v35, 3uLL, v25, v24);
        ++v48;
        v36 += v49;
      }

      while (v48 != v34);
    }

    free(v35);
    free(v59);
    fclose(v24);
  }
}

- (void)saveF32Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v9 = malloc_type_malloc(4 * Width * Height, 0xDD18702AuLL);
  v17 = v9;
  if (Height)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = Width;
      v21 = v18;
      if (Width)
      {
        do
        {
          v22 = vdupq_n_s16((BaseAddress[v21] * 255.0));
          v22.i16[3] = 255;
          LODWORD(v16) = vmovn_s16(v22).u32[0];
          *(v9 + v21++) = v16;
          --v20;
        }

        while (v20);
      }

      ++v19;
      v18 += Width;
    }

    while (v19 != Height);
  }

  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @"%s", v11, v12, v13, v14, v15, v16, file);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v23, v44, v24, v25, v26, v27, v28, v29);
  v30 = v44;
  v39 = objc_msgSend_UTF8String(v44, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_295759C2C(Width, Height, 4 * Width, v17, v39, v40, v41, v42, v43);
  free(v17);
}

- (void)saveU8Buffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  v10 = malloc_type_malloc(4 * Width * Height, 0xBA44AB5AuLL);
  v18 = v10;
  if (Height)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = Width;
      v23 = v19;
      v24 = v20;
      if (Width)
      {
        do
        {
          v25 = vdupq_n_s16(BaseAddress[v23]);
          v25.i16[3] = 255;
          LODWORD(v17) = vmovn_s16(v25).u32[0];
          *(v10 + v24++) = v17;
          ++v23;
          --v22;
        }

        while (v22);
      }

      ++v21;
      v20 += Width;
      v19 += BytesPerRow;
    }

    while (v21 != Height);
  }

  v47 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v11, @"%s", v12, v13, v14, v15, v16, v17, file);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v26, v47, v27, v28, v29, v30, v31, v32);
  v33 = v47;
  v42 = objc_msgSend_UTF8String(v47, v34, v35, v36, v37, v38, v39, v40, v41);
  sub_295759C2C(Width, Height, 4 * Width, v18, v42, v43, v44, v45, v46);
  free(v18);
}

- (void)saveVUYA4444Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = malloc_type_malloc(4 * v15 * v24, 0x100004077774924uLL);
  objc_msgSend_makeCoherent_(self, v26, textureCopy, v27, v28, v29, v30, v31, v32);
  memset(v45, 0, 24);
  v45[3] = v15;
  v45[4] = v24;
  v45[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v33, v25, 4 * v15, v45, 0, v34, v35, v36);

  objc_msgSend_convertVUYA444_rbs_ToRGBA_ofSize_(self, v37, v25, 4 * v15, v25, v38, v39, v40, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v15)), v24);
  sub_295759C2C(v15, v24, 4 * v15, v25, file, v41, v42, v43, v44);
  free(v25);
}

- (void)saveVUYA4444Texture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = malloc_type_malloc(4 * v15 * v24, 0x12E7F8D9uLL);
  objc_msgSend_makeCoherent_(self, v26, textureCopy, v27, v28, v29, v30, v31, v32);
  memset(v42, 0, 24);
  v42[3] = v15;
  v42[4] = v24;
  v42[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v33, v25, 4 * v15, v42, 0, v34, v35, v36);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v37, v25, 4 * v15 * v24, file, v38, v39, v40, v41);
  free(v25);
}

- (void)saveVUYA4444PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFile:(const char *)file
{
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  v14 = malloc_type_malloc(4 * Width * Height, 0x85AD6BAFuLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  objc_msgSend_convertVUYA444_rbs_ToRGBA_ofSize_(self, v16, BaseAddress, BytesPerRow, v14, v17, v18, v19, COERCE_FLOAT(COERCE_UNSIGNED_INT64(Width)), Height);
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

  sub_295759C2C(out_widthCopy, out_heightCopy, 4 * Width, v14, file, v20, v21, v22, v23);

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
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, v7, v17, v18);
  }

  else
  {
    v7 = Height;
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, Height, v17, v18);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  sub_295759C2C(v8, v7, (4 * v8), v14, file, v19, v20, v21, v22);

  free(v14);
}

- (void)saveRGB10A2PixelBuffer:(__CVBuffer *)buffer out_width:(unsigned int)out_width out_height:(unsigned int)out_height AsPPMFileWithAlpha:(const char *)alpha
{
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

  if (out_height)
  {
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, out_height, v17, v18);
  }

  else
  {
    out_height = Height;
    objc_msgSend_convertRGB10A2ToRGBA8_rbs_ToRGBA_outWidth_outHeight_(self, v15, BaseAddress, BytesPerRow, v14, v8, Height, v17, v18);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  v27 = sub_295759628(alpha, v19, v26, v20, v21, v22, v23, v24, v25);
  if (v27)
  {
    v28 = v27;
    v29 = malloc_type_malloc((4 * v8), 0x100004077774924uLL);
    if (v29)
    {
      v30 = v29;
      fprintf(v28, "P7\nWIDTH %u\nHEIGHT %u\nDEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR", v8, out_height);
      if (out_height)
      {
        v31 = 0;
        v32 = v14;
        do
        {
          if (v8)
          {
            v33 = 0;
            v34 = v8;
            do
            {
              v35 = &v30[v33];
              *v35 = v32[v33];
              v35[1] = v32[v33 + 1];
              v35[2] = v32[v33 + 2];
              v35[3] = v32[v33 + 3];
              v33 += 4;
              --v34;
            }

            while (v34);
          }

          fwrite(v30, 4uLL, v8, v28);
          v32 += (4 * v8);
          ++v31;
        }

        while (v31 != out_height);
      }

      free(v30);
    }

    fclose(v28);
  }

  free(v14);
}

- (void)save420CVPixelBuffer:(__CVBuffer *)buffer to:(const char *)to
{
  v10 = sub_295759628(to, a2, v8, buffer, to, v4, v5, v6, v7);
  if (v10)
  {
    v11 = v10;
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
    if (Height)
    {
      v16 = BytesPerRowOfPlane;
      v17 = Height;
      do
      {
        fwrite(BaseAddressOfPlane, 1uLL, Width, v11);
        BaseAddressOfPlane += v16;
        --v17;
      }

      while (v17);
    }

    v18 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
    v19 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
    if (Height)
    {
      v20 = 0;
      v21 = v19;
      do
      {
        fwrite(v18, 1uLL, Width, v11);
        v18 += v21;
        v20 += 2;
      }

      while (v20 < Height);
    }

    fclose(v11);

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  }
}

- (void)saveLumaTexture:(id)texture to:(const char *)to
{
  textureCopy = texture;
  v15 = sub_295759628(to, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v15)
  {
    v24 = v15;
    v25 = objc_msgSend_width(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
    v34 = objc_msgSend_height(textureCopy, v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = malloc_type_malloc(v34 * v25, 0x4EAF6647uLL);
    objc_msgSend_makeCoherent_(self, v36, textureCopy, v37, v38, v39, v40, v41, v42);
    v43 = v25;
    memset(v49, 0, 24);
    v49[3] = v25;
    v49[4] = v34;
    v49[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v44, v35, v25, v49, 0, v45, v46, v47);
    fwrite(v35, 1uLL, v34 * v25, v24);
    bzero(v35, v25);
    if (v34)
    {
      for (i = 0; i < v34; i += 2)
      {
        fwrite(v35, 1uLL, v43, v24);
      }
    }

    free(v35);
    fclose(v24);
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
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = malloc_type_malloc(4 * v15 * v24, 0xF858F8E4uLL);
  objc_msgSend_makeCoherent_(self, v26, textureCopy, v27, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_width(textureCopy, v33, v34, v35, v36, v37, v38, v39, v40);
  memset(v75, 0, 24);
  v75[3] = v15;
  v75[4] = v24;
  v75[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v42, v25, 4 * v41, v75, 0, v43, v44, v45);

  v53 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v46, @"%s", v47, v48, v49, v50, v51, v52, file);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v54, v53, v55, v56, v57, v58, v59, v60);
  v61 = v53;
  v70 = objc_msgSend_UTF8String(v61, v62, v63, v64, v65, v66, v67, v68, v69);
  sub_295759C2C(v15, v24, 4 * v15, v25, v70, v71, v72, v73, v74);
  free(v25);
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
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v22, Width, Height, v12, file, v23, v24, v25);

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

            v25 = &unk_29577A92C + 3 * ((((fmaxf(min, fminf(max, _S3)) - min) / (max - min)) * 1024.0) + -0.49);
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

    CVPixelBufferUnlockBaseAddress(turbo, 1uLL);
    sub_295759C2C(Width, Height, 4 * Width, v15, file, v26, v27, v28, v29);

    free(v15);
  }
}

- (void)saveF16DisparityBufferAsTurbo:(__CVBuffer *)turbo AsPPMFile:(const char *)file WithDisparityScale:(float)scale AndPercentile:(float)percentile
{
  v19 = 0;
  objc_msgSend_computeRobustMinMaxForF16DisparityBuffer_WithDisparityScale_AndPercentile_OutSignalMin_OutSignalMax_(self, a2, turbo, &v19 + 4, &v19, v6, v7, v8, scale);
  *&v13 = *&v19 * scale;
  objc_msgSend_saveF16DisparityBufferAsTurbo_AsPPMFile_WithMin_WithMax_(self, v14, turbo, file, v15, v16, v17, v18, *(&v19 + 1) * scale, v13);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsGrayScalePPMFile:(const char *)file range:
{
  v42 = v4;
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
  v25 = *&v42 != 0.0;
  v26 = *(&v42 + 1) != 0.0;
  v27 = v25 && v26;
  if (v25 && v26)
  {
    _S9 = *&v42;
  }

  v28 = malloc_type_malloc(4 * Height * Width, 0x9831DB2CuLL);
  v33 = v28;
  v34 = 4 * Width;
  if (Height)
  {
    v35 = 0;
    if (v27)
    {
      v36 = *(&v42 + 1);
    }

    else
    {
      v36 = v21;
    }

    v32 = v36 - _S9;
    v37 = 3;
    v38 = v12;
    do
    {
      if (Width)
      {
        v39 = 0;
        v40 = v37;
        do
        {
          v41 = ~(((v38[v39] - _S9) / v32) * 255.0);
          *(v28 + v40 - 3) = v41;
          *(v28 + v40 - 2) = v41;
          *(v28 + v40 - 1) = v41;
          *(v28 + v40) = -1;
          ++v39;
          v40 += 4;
        }

        while (Width != v39);
      }

      ++v35;
      v38 += Width;
      v37 += v34;
    }

    while (v35 != Height);
  }

  sub_295759C2C(Width, Height, v34, v28, file, v29, v30, v31, v32);
  free(v33);

  free(v12);
}

- (void)saveF16DisparityTexture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = v15;
  v26 = 2 * v15;
  objc_msgSend_makeCoherent_(self, v27, textureCopy, v28, v29, v30, v31, v32, v33);
  v34 = malloc_type_malloc(v26 * v24, 0x1000040BDFB0063uLL);
  memset(v44, 0, 24);
  v44[3] = v25;
  v44[4] = v24;
  v44[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v35, v34, v26, v44, 0, v36, v37, v38);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v39, v34, v26 * v24, file, v40, v41, v42, v43);
  free(v34);
}

- (void)saveF16Texture:(id)texture AsGrayScalePPMFile:(const char *)file range:
{
  v71 = v4;
  textureCopy = texture;
  objc_msgSend_makeCoherent_(self, v8, textureCopy, v9, v10, v11, v12, v13, v14);
  v23 = objc_msgSend_width(textureCopy, v15, v16, v17, v18, v19, v20, v21, v22);
  v32 = objc_msgSend_height(textureCopy, v24, v25, v26, v27, v28, v29, v30, v31);
  v33 = malloc_type_malloc(2 * v23 * v32, 0x1000040BDFB0063uLL);
  memset(v72, 0, 24);
  v72[3] = v23;
  v72[4] = v32;
  v72[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v34, v33, 2 * v23, v72, 0, v35, v36, v37);
  v38 = malloc_type_malloc(4 * v32 * v23, 0x100004052888210uLL);
  v39 = v38;
  v40 = 4 * v23;
  if (v32)
  {
    v41 = 0;
    v42 = 3.4028e38;
    v43 = 1.1755e-38;
    v44 = v38;
    v45 = v33;
    do
    {
      if (v23)
      {
        for (i = 0; i != v23; v44[i++] = _S1)
        {
          _H1 = *&v45[2 * i];
          __asm { FCVT            S1, H1 }

          v43 = fmaxf(v43, _S1);
          v42 = fminf(v42, _S1);
        }
      }

      ++v41;
      v45 += 2 * v23;
      v44 = (v44 + v40);
    }

    while (v41 != v32);
  }

  else
  {
    v43 = 1.1755e-38;
    v42 = 3.4028e38;
  }

  v53 = *&v71 != 0.0;
  v54 = *(&v71 + 1) != 0.0;
  v55 = v53 && v54;
  if (v53 && v54)
  {
    v56 = *&v71;
  }

  else
  {
    v56 = v42;
  }

  v57 = malloc_type_malloc(4 * v32 * v23, 0x4509B403uLL);
  v62 = v57;
  v63 = 4 * v23;
  if (v32)
  {
    v64 = 0;
    if (v55)
    {
      v65 = *(&v71 + 1);
    }

    else
    {
      v65 = v43;
    }

    v61 = v65 - v56;
    v66 = 3;
    v67 = v39;
    do
    {
      if (v23)
      {
        v68 = 0;
        v69 = v66;
        do
        {
          v70 = ~(((v67[v68] - v56) / v61) * 255.0);
          *(v57 + v69 - 3) = v70;
          *(v57 + v69 - 2) = v70;
          *(v57 + v69 - 1) = v70;
          *(v57 + v69) = -1;
          ++v68;
          v69 += 4;
        }

        while (v23 != v68);
      }

      ++v64;
      v67 = (v67 + v40);
      v66 += v63;
    }

    while (v64 != v32);
  }

  sub_295759C2C(v23, v32, v63, v57, file, v58, v59, v60, v61);
  free(v62);
  free(v33);
  free(v39);
}

- (void)saveF16DisparityBuffer:(__CVBuffer *)buffer AsBinaryFile:(const char *)file
{
  v11 = sub_295759628(file, a2, v8, buffer, file, v4, v5, v6, v7);
  if (v11)
  {
    v12 = v11;
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    if (Height)
    {
      v17 = BaseAddress;
      do
      {
        fwrite(v17, 2uLL, Width, v12);
        v17 += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);

    fclose(v12);
  }

  else
  {
    if (qword_2A18B9750 != -1)
    {
      sub_29576D954();
    }

    v18 = qword_2A18B9760;
    if (os_log_type_enabled(qword_2A18B9760, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      fileCopy = file;
      _os_log_impl(&dword_295749000, v18, OS_LOG_TYPE_DEFAULT, "Could not write %s", &v19, 0xCu);
    }
  }
}

- (void)saveU8Texture:(id)texture AsPGMFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = v15;
  v26 = malloc_type_malloc(v24 * v15 + 4096, 0x2D19AE8DuLL);
  objc_msgSend_makeCoherent_(self, v27, textureCopy, v28, v29, v30, v31, v32, v33);
  memset(v49, 0, 24);
  v49[3] = v15;
  v49[4] = v24;
  v49[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v34, v26, v15, v49, 0, v35, v36, v37);
  v46 = sub_295759628(file, v38, v45, v39, v40, v41, v42, v43, v44);
  if (v46)
  {
    v47 = v46;
    fprintf(v46, "P5 %u %u 255\n", v15, v24);
    if (v24)
    {
      v48 = v26;
      do
      {
        fwrite(v48, 1uLL, v25, v47);
        v48 += v25;
        --v24;
      }

      while (v24);
    }

    fclose(v47);
  }

  free(v26);
}

- (void)saveU16Texture:(id)texture AsPGMFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = malloc_type_malloc(2 * v15 * v24, 0x14ADE848uLL);
  objc_msgSend_makeCoherent_(self, v26, textureCopy, v27, v28, v29, v30, v31, v32);
  memset(v51, 0, 24);
  v51[3] = v15;
  v51[4] = v24;
  v51[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v33, v25, 2 * v15, v51, 0, v34, v35, v36);
  v45 = sub_295759628(file, v37, v44, v38, v39, v40, v41, v42, v43);
  if (v45)
  {
    v46 = v45;
    fprintf(v45, "P5 %u %u 65535\n", v15, v24);
    if (v24)
    {
      v47 = 0;
      v48 = 2 * v15;
      v49 = v25;
      do
      {
        if (v15)
        {
          v50 = 0;
          do
          {
            fprintf(v46, "%u ", *&v49[v50]);
            v50 += 2;
          }

          while (v48 != v50);
        }

        fputc(10, v46);
        ++v47;
        v49 += v48;
      }

      while (v47 != v24);
    }

    fclose(v46);
  }

  free(v25);
}

- (void)saveF16RGTexture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = v15;
  v26 = 4 * v15;
  objc_msgSend_makeCoherent_(self, v27, textureCopy, v28, v29, v30, v31, v32, v33);
  v34 = malloc_type_malloc(v26 * v24, 0x1000040BDFB0063uLL);
  memset(v44, 0, 24);
  v44[3] = v25;
  v44[4] = v24;
  v44[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v35, v34, v26, v44, 0, v36, v37, v38);

  objc_msgSend_WriteBinDataToFile_length_fileFullPath_(self, v39, v34, v26 * v24, file, v40, v41, v42, v43);
  free(v34);
}

- (void)saveF16DisparityTexture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  objc_msgSend_makeCoherent_(self, v25, textureCopy, v26, v27, v28, v29, v30, v31);
  v32 = malloc_type_malloc((2 * v15 * v24), 0x1000040BDFB0063uLL);
  v33 = malloc_type_malloc(4 * (v15 * v24), 0x100004052888210uLL);
  memset(v52, 0, 24);
  v52[3] = v15;
  v52[4] = v24;
  v52[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v34, v32, (2 * v15), v52, 0, v35, v36, v37);
  if (v24)
  {
    v38 = 0;
    v39 = v33;
    v40 = v32;
    do
    {
      if (v15)
      {
        v41 = 0;
        do
        {
          _H0 = *&v40[2 * v41];
          __asm { FCVT            S0, H0 }

          *&v39[4 * v41++] = _S0;
        }

        while (v15 != v41);
      }

      ++v38;
      v40 += 2 * v15;
      v39 += 4 * v15;
    }

    while (v38 != v24);
  }

  free(v32);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(self, v48, v15, v24, v33, file, v49, v50, v51);
  free(v33);
}

- (void)saveRGF16ShiftmapTexture:(id)texture AsPPMFileSx:(id)sx AsPPMFileSy:(id)sy
{
  textureCopy = texture;
  sxCopy = sx;
  syCopy = sy;
  v18 = objc_msgSend_width(textureCopy, v10, v11, v12, v13, v14, v15, v16, v17);
  v27 = objc_msgSend_height(textureCopy, v19, v20, v21, v22, v23, v24, v25, v26);
  selfCopy = self;
  objc_msgSend_makeCoherent_(self, v28, textureCopy, v29, v30, v31, v32, v33, v34);
  v35 = malloc_type_malloc((2 * v27 * 4 * v18), 0x1000040BDFB0063uLL);
  v36 = malloc_type_malloc(4 * (v18 * v27), 0x100004052888210uLL);
  v37 = malloc_type_malloc(4 * (v18 * v27), 0x100004052888210uLL);
  memset(v84, 0, 24);
  v84[3] = v18;
  v84[4] = v27;
  v84[5] = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v38, v35, (4 * v18), v84, 0, v39, v40, v41);
  if (v27)
  {
    v42 = 0;
    v43 = v37;
    v44 = v36;
    v45 = v35;
    do
    {
      for (i = v18; i; --i)
      {
        _H0 = *v45;
        __asm { FCVT            S0, H0 }

        *v44++ = _S0;
        LOWORD(_S0) = v45[1];
        __asm { FCVT            S0, H0 }

        *v43++ = _S0;
        v45 += 2;
      }

      ++v42;
    }

    while (v42 != v27);
  }

  free(v35);
  v54 = sxCopy;
  v63 = objc_msgSend_UTF8String(v54, v55, v56, v57, v58, v59, v60, v61, v62);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(selfCopy, v64, v18, v27, v36, v63, v65, v66, v67);
  free(v36);
  v68 = syCopy;
  v77 = objc_msgSend_UTF8String(v68, v69, v70, v71, v72, v73, v74, v75, v76);
  objc_msgSend_ApplyColorWheelAndWrite_height_data_fileFullPath_(selfCopy, v78, v18, v27, v37, v77, v79, v80, v81);
  free(v37);
}

- (void)saveRGF16Texture:(id)texture AsF32BinaryFile0:(id)file0 AsF32BinaryFile1:(id)file1
{
  textureCopy = texture;
  file0Copy = file0;
  file1Copy = file1;
  v11 = file0Copy;
  v20 = objc_msgSend_UTF8String(v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v29 = sub_295759628(v20, v21, v28, v22, v23, v24, v25, v26, v27);
  if (v29)
  {
    v30 = v29;
    v31 = file1Copy;
    v40 = objc_msgSend_UTF8String(v31, v32, v33, v34, v35, v36, v37, v38, v39);
    __stream = sub_295759628(v40, v41, v48, v42, v43, v44, v45, v46, v47);
    if (!__stream)
    {
      v99 = v30;
LABEL_17:
      fclose(v99);
      goto LABEL_18;
    }

    v57 = objc_msgSend_width(textureCopy, v49, v50, v51, v52, v53, v54, v55, v56);
    v66 = objc_msgSend_height(textureCopy, v58, v59, v60, v61, v62, v63, v64, v65);
    v67 = 4 * v57;
    objc_msgSend_makeCoherent_(self, v68, textureCopy, v69, v70, v71, v72, v73, v74);
    v75 = malloc_type_malloc(v67 * v66, 0x1000040BDFB0063uLL);
    v76 = v75;
    if (!v75)
    {
      sub_29576DA28();
      v81 = 0;
      v77 = 0;
      goto LABEL_16;
    }

    v102 = v75;
    v77 = malloc_type_malloc(4 * (v57 & 0x3FFFFFFF), 0x100004052888210uLL);
    if (v77)
    {
      v81 = malloc_type_malloc(4 * (v57 & 0x3FFFFFFF), 0x100004052888210uLL);
      if (v81)
      {
        v101 = file1Copy;
        memset(v104, 0, 24);
        v104[3] = v57;
        v104[4] = v66;
        v104[5] = 1;
        v83 = textureCopy;
        v84 = textureCopy;
        v85 = v102;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v83, v78, v102, 4 * v57, v104, 0, v79, v80, v82);
        if (!v66)
        {
          v76 = v102;
          textureCopy = v84;
          file1Copy = v101;
          goto LABEL_16;
        }

        v100 = v84;
        v86 = 0;
        v87 = v67 >> 1;
        do
        {
          if (v57)
          {
            v88 = 0;
            v89 = v81;
            v90 = v77;
            do
            {
              _H0 = *(v85 + 2 * v88);
              __asm { FCVT            S0, H0 }

              _H1 = *(v85 + 2 * (v88 + 1));
              __asm { FCVT            S1, H1 }

              *v90++ = _S0;
              *v89++ = _S1;
              v88 += 2;
            }

            while (2 * v57 != v88);
          }

          fwrite(v77, 4uLL, v57, v30);
          fwrite(v81, 4uLL, v57, __stream);
          v85 += 2 * v87;
          ++v86;
        }

        while (v86 != v66);
        textureCopy = v100;
        file1Copy = v101;
      }

      else
      {
        sub_29576D968();
      }
    }

    else
    {
      sub_29576D9C8();
      v81 = 0;
    }

    v76 = v102;
LABEL_16:
    free(v77);
    free(v81);
    free(v76);
    fclose(v30);
    v99 = __stream;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)saveRGBA8Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = malloc_type_malloc(4 * v15 * v24, 0xD13A6CE5uLL);
  if (v25)
  {
    v33 = v25;
    objc_msgSend_makeCoherent_(self, v26, textureCopy, v27, v28, v29, v30, v31, v32);
    memset(v43, 0, 24);
    v43[3] = v15;
    v43[4] = v24;
    v43[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v34, v33, 4 * v15, v43, 0, v35, v36, v37);
    sub_295759C2C(v15, v24, 4 * v15, v33, file, v38, v39, v40, v41);
    free(v33);
  }

  else
  {
    if (qword_2A18B9750 != -1)
    {
      sub_29576D954();
    }

    v42 = qword_2A18B9760;
    if (os_log_type_enabled(qword_2A18B9760, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v43[0]) = 0;
      _os_log_impl(&dword_295749000, v42, OS_LOG_TYPE_DEFAULT, "Could not allocate rgbaImagesData", v43, 2u);
    }
  }
}

- (void)saveRGBA8Texture:(id)texture AsBinaryFile:(const char *)file
{
  textureCopy = texture;
  v15 = objc_msgSend_width(textureCopy, v7, v8, v9, v10, v11, v12, v13, v14);
  v24 = objc_msgSend_height(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
  v32 = malloc_type_malloc(4 * v15 * v24, 0xABE21FF2uLL);
  if (v32)
  {
    v34 = sub_295759628(file, v25, v33, v26, v27, v28, v29, v30, v31);
    if (v34)
    {
      v42 = v34;
      objc_msgSend_makeCoherent_(self, v35, textureCopy, v36, v37, v38, v39, v40, v41);
      memset(v47, 0, 24);
      v47[3] = v15;
      v47[4] = v24;
      v47[5] = 1;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v43, v32, 4 * v15, v47, 0, v44, v45, v46);
      fwrite(v32, 4 * v15 * v24, 1uLL, v42);
      fclose(v42);
    }

    else
    {
      sub_29576DA88();
    }
  }

  else
  {
    sub_29576DAE8();
  }

  free(v32);
}

- (void)saveRgbaF32PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  v11 = sub_295759628(file, a2, v8, buffer, file, v4, v5, v6, v7);
  if (v11)
  {
    v12 = v11;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v15 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    fprintf(v12, "P6 %u %u 255\n", Width, Height);
    if (Height)
    {
      v18 = 0;
      v19 = BytesPerRow >> 2;
      do
      {
        if (Width)
        {
          v20 = 0;
          v21 = 2;
          do
          {
            v15[v21 - 2] = vcvtms_s32_f32(BaseAddress[v20] * 255.0);
            v15[v21 - 1] = vcvtms_s32_f32(BaseAddress[(v20 + 1)] * 255.0);
            v15[v21] = vcvtms_s32_f32(BaseAddress[(v20 + 2)] * 255.0);
            v21 += 3;
            v20 += 4;
          }

          while (4 * Width != v20);
        }

        fwrite(v15, 3uLL, Width, v12);
        BaseAddress += v19;
        ++v18;
      }

      while (v18 != Height);
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    fclose(v12);

    free(v15);
  }

  else
  {
    if (qword_2A18B9750 != -1)
    {
      sub_29576D954();
    }

    v22 = qword_2A18B9760;
    if (os_log_type_enabled(qword_2A18B9760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      fileCopy = file;
      _os_log_impl(&dword_295749000, v22, OS_LOG_TYPE_DEFAULT, "Could not create %s", buf, 0xCu);
    }
  }
}

- (void)save32BGRAPixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  v10 = sub_295759628(file, a2, v8, buffer, file, v4, v5, v6, v7);
  if (v10)
  {
    v11 = v10;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v14 = malloc_type_malloc(4 * (Width & 0x3FFFFFFF), 0x100004077774924uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    fprintf(v11, "P6 %u %u 255\n", Width, Height);
    if (Height)
    {
      for (i = 0; i != Height; ++i)
      {
        if (Width)
        {
          v18 = 0;
          v19 = 2;
          do
          {
            v14[v19 - 2] = BaseAddress[(v18 + 2)];
            v14[v19 - 1] = BaseAddress[(v18 + 1)];
            v14[v19] = BaseAddress[v18];
            v19 += 3;
            v18 += 4;
          }

          while (4 * Width != v18);
        }

        fwrite(v14, 3uLL, Width, v11);
        BaseAddress += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    fclose(v11);

    free(v14);
  }
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer AsPPMFile:(const char *)file
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  MEMORY[0x2A1C70FE8](self, sel_saveRGBAF16PixelBuffer_out_width_out_height_AsPPMFile_, buffer, Width, Height, file, v9, v10, v11);
}

- (void)saveRGBAF16PixelBuffer:(__CVBuffer *)buffer AsPPMFileWithAlpha:(const char *)alpha
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  MEMORY[0x2A1C70FE8](self, sel_saveRGBAF16PixelBuffer_out_width_out_height_AsPPMFileWithAlpha_, buffer, Width, Height, alpha, v9, v10, v11);
}

- (void)saveF16Texture:(id)texture AsF32BinaryFile:(const char *)file
{
  textureCopy = texture;
  v15 = sub_295759628(file, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v15)
  {
    v24 = v15;
    v25 = objc_msgSend_width(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
    v34 = objc_msgSend_height(textureCopy, v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = 2 * v25;
    v36 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
    v37 = malloc_type_malloc(v35 * v34, 0x1000040BDFB0063uLL);
    objc_msgSend_makeCoherent_(self, v38, textureCopy, v39, v40, v41, v42, v43, v44);
    memset(v58, 0, 24);
    v58[3] = v25;
    v58[4] = v34;
    v58[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v45, v37, v35, v58, 0, v46, v47, v48);
    if (v34)
    {
      v49 = 0;
      v50 = v37;
      do
      {
        if (v25)
        {
          for (i = 0; i != v25; v36[i++] = _S0)
          {
            _H0 = *&v50[2 * i];
            __asm { FCVT            S0, H0 }
          }
        }

        fwrite(v36, 4uLL, v25, v24);
        ++v49;
        v50 += v35;
      }

      while (v49 != v34);
    }

    free(v36);
    free(v37);
    fclose(v24);
  }
}

- (void)saveNCCOutputFrom:(id)from asBinaryFiles:(const char *)files
{
  fromCopy = from;
  objc_msgSend_waitForIdle(self->_metalContext, v7, v8, v9, v10, v11, v12, v13, v14);
  objc_msgSend_makeCoherent_(self, v15, fromCopy, v16, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_width(fromCopy, v22, v23, v24, v25, v26, v27, v28, v29);
  v39 = objc_msgSend_height(fromCopy, v31, v32, v33, v34, v35, v36, v37, v38);
  v48 = objc_msgSend_bufferBytesPerRow(fromCopy, v40, v41, v42, v43, v44, v45, v46, v47);
  v49 = malloc_type_malloc(v48 * v39, 0x885D3F11uLL);
  v50 = vabd_s32(vdup_n_s32(v48), vshl_u32(vdup_n_s32(v30), 0x400000003));
  v51 = vcgt_u32(vdup_lane_s32(v50, 1), v50).u8[0];
  v52 = @"f32";
  if (v51)
  {
    v52 = @"f16";
  }

  v53 = v52;
  memset(v223, 0, 24);
  v223[3] = v30;
  v216 = v30;
  v223[4] = v39;
  v223[5] = 1;
  v209 = v49;
  v214 = v48;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(fromCopy, v54, v49, v48, v223, 0, v55, v56, v57);
  v65 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v58, @"%s_L_%dx%d.%@", v59, v60, v61, v62, v63, v64, files, v30, v39, v53);
  v73 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v66, @"%s_R_%dx%d.%@", v67, v68, v69, v70, v71, v72, files, v30, v39, v53);
  v81 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v74, @"%s_C_%dx%d.%@", v75, v76, v77, v78, v79, v80, files, v30, v39, v53);
  v217 = v30;
  filesCopy = files;
  v89 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v82, @"%s_F_%dx%d.%@", v83, v84, v85, v86, v87, v88, files, v30, v39, v53);
  v90 = v65;
  v99 = objc_msgSend_UTF8String(v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v108 = sub_295759628(v99, v100, v107, v101, v102, v103, v104, v105, v106);
  v109 = v73;
  v118 = objc_msgSend_UTF8String(v109, v110, v111, v112, v113, v114, v115, v116, v117);
  v127 = sub_295759628(v118, v119, v126, v120, v121, v122, v123, v124, v125);
  v128 = v81;
  v208 = v81;
  v137 = objc_msgSend_UTF8String(v128, v129, v130, v131, v132, v133, v134, v135, v136);
  v220 = sub_295759628(v137, v138, v145, v139, v140, v141, v142, v143, v144);
  v146 = v89;
  v155 = objc_msgSend_UTF8String(v146, v147, v148, v149, v150, v151, v152, v153, v154);
  v164 = sub_295759628(v155, v156, v163, v157, v158, v159, v160, v161, v162);
  v165 = 0;
  v218 = v164;
  __stream = v108;
  if (!v108)
  {
    v210 = 0;
    v166 = v127;
    goto LABEL_37;
  }

  v166 = v127;
  if (!v127)
  {
    v210 = 0;
LABEL_37:
    v167 = v220;
    goto LABEL_38;
  }

  v167 = v220;
  if (!v220)
  {
    v210 = 0;
    goto LABEL_38;
  }

  v210 = 0;
  if (!v164)
  {
    goto LABEL_38;
  }

  v215 = v39;
  v205 = v73;
  v206 = v65;
  v207 = fromCopy;
  v168 = 4;
  if (v51)
  {
    v168 = 2;
  }

  __size = v168;
  v169 = 1;
  if ((v51 & 1) == 0)
  {
    v169 = 2;
  }

  v170 = v216 << v169;
  v171 = malloc_type_malloc(v216 << v169, 0x24B2F1B5uLL);
  v172 = malloc_type_malloc(v170, 0x311604CEuLL);
  v173 = malloc_type_malloc(v170, 0x9916A70BuLL);
  v180 = malloc_type_malloc(v170, 0x83896B1uLL);
  v213 = v166;
  if (v51)
  {
    v165 = 0;
    v210 = 0;
    if (!v215)
    {
      goto LABEL_23;
    }

LABEL_15:
    v182 = 0;
    v183 = 0;
    v184 = v209;
    v211 = v51;
    do
    {
      v222 = v183;
      if (v217)
      {
        v185 = 0;
        v186 = 0;
        do
        {
          v187 = (v186 + 1);
          v188 = (v186 + 2);
          v189 = (v186 + 3);
          if (v51)
          {
            *&v171[v185] = *&v184[2 * v186];
            *&v172[v185] = *&v184[2 * v187];
            *&v173[v185] = *&v184[2 * v188];
            *&v180[v185] = *&v184[2 * v189];
          }

          else
          {
            *&v171[v186] = *&v184[4 * v186];
            *&v172[v186] = *&v184[4 * v187];
            *&v173[v186] = *&v184[4 * v188];
            *&v180[v186] = *&v184[4 * v189];
            v190 = fmaxf(fminf(*&v184[4 * v186] * 25500.0, 255.0), 0.0);
            v165[(v182 + v186 + 2)] = v190;
            v165[(v182 + v186 + 1)] = v190;
            v165[(v182 + v186)] = v190;
            v165[(v182 + v186 + 3)] = -1;
          }

          v186 += 4;
          v185 += 2;
        }

        while (4 * v216 != v186);
      }

      fwrite(v171, __size, v216, __stream);
      fwrite(v172, __size, v216, v213);
      fwrite(v173, __size, v216, v220);
      v51 = v211;
      fwrite(v180, __size, v216, v218);
      v184 += v214;
      v183 = v222 + 1;
      v182 += 4 * v217;
    }

    while (v222 + 1 != v215);
    goto LABEL_23;
  }

  v210 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v174, @"%s_L_%dx%d.ppm", v175, v176, v177, v178, v179, v181, filesCopy, v217, v215);
  v165 = malloc_type_malloc((4 * v217 * v215), 0x72A3BA2BuLL);
  if (v215)
  {
    goto LABEL_15;
  }

LABEL_23:
  if ((v51 & 1) == 0)
  {
    v191 = v210;
    v200 = objc_msgSend_UTF8String(v191, v192, v193, v194, v195, v196, v197, v198, v199);
    sub_295759C2C(v217, v215, (4 * v217), v165, v200, v201, v202, v203, v204);
  }

  v166 = v213;
  v167 = v220;
  if (v171)
  {
    free(v171);
  }

  if (v172)
  {
    free(v172);
  }

  fromCopy = v207;
  if (v173)
  {
    free(v173);
  }

  v65 = v206;
  if (v180)
  {
    free(v180);
  }

  v73 = v205;
LABEL_38:
  if (v209)
  {
    free(v209);
  }

  if (v165)
  {
    free(v165);
  }

  if (__stream)
  {
    fclose(__stream);
  }

  if (v166)
  {
    fclose(v166);
  }

  if (v167)
  {
    fclose(v167);
  }

  if (v218)
  {
    fclose(v218);
  }
}

- (void)savePixelBuffer:(__CVBuffer *)buffer AsBinaryFile:(const char *)file
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v7, @"%s.%c%c%c%c", v8, v9, v10, v11, v12, v13, file, HIBYTE(PixelFormatType), BYTE2(PixelFormatType), BYTE1(PixelFormatType), PixelFormatType);
  objc_msgSend_createPathIfNeeded_(disparityDebugUtils, v14, v31, v15, v16, v17, v18, v19, v20);
  v21 = v31;
  v30 = objc_msgSend_UTF8String(v31, v22, v23, v24, v25, v26, v27, v28, v29);
  MEMORY[0x29C251510](v30, buffer);
}

+ (void)createPathIfNeeded:(id)needed
{
  v9 = objc_msgSend_stringByDeletingLastPathComponent(needed, a2, needed, v3, v4, v5, v6, v7, v8);
  v18 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v10, v11, v12, v13, v14, v15, v16, v17);
  v30 = 0;
  DirectoryAtPath_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v18, v19, v9, 1, 0, &v30, v20, v21, v22);
  v24 = v30;
  if ((DirectoryAtPath_withIntermediateDirectories_attributes_error & 1) == 0)
  {
    if (qword_2A18B9750 != -1)
    {
      sub_29576D92C();
    }

    v25 = qword_2A18B9760;
    if (os_log_type_enabled(qword_2A18B9760, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v9;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_295749000, v25, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", &v26, 0x16u);
    }
  }
}

- (void)saveAccumulationFrom:(id)from asBinaryFiles:(const char *)files forSize:(CGSize)size costLineSize:(unsigned __int16)lineSize
{
  lineSizeCopy = lineSize;
  height = size.height;
  width = size.width;
  fromCopy = from;
  objc_msgSend_waitForIdle(self->_metalContext, v10, v11, v12, v13, v14, v15, v16, v17);
  objc_msgSend_makeCoherent_(self, v18, fromCopy, v19, v20, v21, v22, v23, v24);
  v192 = width;
  v25 = malloc_type_malloc(4 * v192, 0x100004052888210uLL);
  v26 = malloc_type_malloc(4 * v192, 0x100004052888210uLL);
  v27 = malloc_type_malloc(4 * v192, 0x100004052888210uLL);
  v28 = malloc_type_malloc(4 * v192, 0x100004052888210uLL);
  v29 = fromCopy;
  v38 = objc_msgSend_contents(fromCopy, v30, v31, v32, v33, v34, v35, v36, v37);
  v46 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v39, @"%s_L.f32", v40, v41, v42, v43, v44, v45, files);
  v54 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v47, @"%s_R.f32", v48, v49, v50, v51, v52, v53, files);
  v62 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v55, @"%s_C.f32", v56, v57, v58, v59, v60, v61, files);
  v70 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v63, @"%s_W.f32", v64, v65, v66, v67, v68, v69, files);
  v182 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v71, @"%s_L.ppm", v72, v73, v74, v75, v76, v77, files);
  v78 = v46;
  v181 = v46;
  v87 = objc_msgSend_UTF8String(v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v96 = sub_295759628(v87, v88, v95, v89, v90, v91, v92, v93, v94);
  v97 = v54;
  v106 = objc_msgSend_UTF8String(v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v115 = sub_295759628(v106, v107, v114, v108, v109, v110, v111, v112, v113);
  v116 = v62;
  v125 = objc_msgSend_UTF8String(v116, v117, v118, v119, v120, v121, v122, v123, v124);
  v189 = sub_295759628(v125, v126, v133, v127, v128, v129, v130, v131, v132);
  v134 = v70;
  v143 = objc_msgSend_UTF8String(v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v152 = sub_295759628(v143, v144, v151, v145, v146, v147, v148, v149, v150);
  v153 = v96;
  v154 = 0;
  v187 = v152;
  v188 = v115;
  if (!v153 || !v115)
  {
LABEL_12:
    v155 = v189;
    goto LABEL_13;
  }

  v155 = v189;
  if (v189 && v152)
  {
    __stream = v153;
    v179 = v70;
    v180 = v54;
    v156 = malloc_type_malloc(4 * height * v192, 0x1DEA816FuLL);
    v157 = width;
    v154 = v156;
    v185 = height;
    if (height)
    {
      v158 = 0;
      v159 = 0;
      v184 = lineSizeCopy;
      do
      {
        v191 = v159;
        if (v157)
        {
          v160 = 0;
          do
          {
            v161 = *(v38 + 4 * v160);
            *&v25[v160] = v161;
            v162 = fmaxf(fminf(v161 * 25500.0, 255.0), 0.0);
            v154[(v158 + v160 + 2)] = v162;
            v154[(v158 + v160 + 1)] = v162;
            v154[(v158 + v160)] = v162;
            v154[(v158 + v160 + 3)] = -1;
            *&v26[v160] = *(v38 + 4 * (v160 + 1));
            *&v27[v160] = *(v38 + 4 * (v160 + 2));
            *&v28[v160] = *(v38 + 4 * (v160 + 3));
            v160 += 4;
          }

          while (4 * v192 != v160);
        }

        fwrite(v25, 4uLL, v192, __stream);
        fwrite(v26, 4uLL, v192, v188);
        fwrite(v27, 4uLL, v192, v189);
        fwrite(v28, 4uLL, v192, v187);
        v157 = width;
        v38 += 4 * v184;
        v159 = v191 + 1;
        v158 += 4 * v192;
      }

      while (v191 + 1 != v185);
    }

    v163 = 4 * v157;
    v164 = v157;
    v165 = v182;
    v174 = objc_msgSend_UTF8String(v165, v166, v167, v168, v169, v170, v171, v172, v173);
    sub_295759C2C(v164, v185, v163, v154, v174, v175, v176, v177, v178);
    v54 = v180;
    v70 = v179;
    v153 = __stream;
    goto LABEL_12;
  }

LABEL_13:
  if (v153)
  {
    fclose(v153);
  }

  if (v188)
  {
    fclose(v188);
  }

  if (v155)
  {
    fclose(v155);
  }

  if (v187)
  {
    fclose(v187);
  }

  free(v154);
  free(v25);
  free(v26);
  free(v27);
  free(v28);
}

- (void)saveF32Texture:(id)texture AsF32BinaryFile:(const char *)file
{
  textureCopy = texture;
  v22 = sub_295759628(file, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v22)
  {
    v24 = objc_msgSend_width(textureCopy, v15, v16, v17, v18, v19, v20, v21, v23);
    v33 = objc_msgSend_height(textureCopy, v25, v26, v27, v28, v29, v30, v31, v32);
    v34 = v24;
    v35 = 4 * v24;
    v36 = malloc_type_malloc(v35, 0x100004052888210uLL);
    if (v36)
    {
      v43 = malloc_type_malloc((v35 * v33) & 0xFFFFFFFC, 0x100004052888210uLL);
      if (v43)
      {
        objc_msgSend_makeCoherent_(self, v37, textureCopy, v38, v39, v40, v41, v42, v44);
        memset(v52, 0, 24);
        v52[3] = v34;
        v52[4] = v33;
        v52[5] = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v45, v43, v35 & 0xFFFFFFFC, v52, 0, v46, v47, v48);
        if (v33)
        {
          v49 = 0;
          v50 = v43;
          do
          {
            if (v34)
            {
              v51 = 0;
              do
              {
                *&v36[v51] = *&v50[v51];
                v51 += 4;
              }

              while (v35 != v51);
            }

            fwrite(v36, 4uLL, v34, v22);
            ++v49;
            v50 += v35 & 0xFFFFFFFC;
          }

          while (v49 != v33);
        }
      }

      else
      {
        sub_29576DB48();
      }
    }

    else
    {
      sub_29576DBA8();
      v43 = 0;
    }
  }

  else
  {
    sub_29576DC08();
    v43 = 0;
    v36 = 0;
  }

  free(v36);
  free(v43);
  fclose(v22);
}

- (void)saveRGBA16FTexture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v15 = sub_295759628(file, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v15)
  {
    v24 = v15;
    v25 = objc_msgSend_width(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
    v34 = objc_msgSend_height(textureCopy, v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = malloc_type_malloc(3 * v25, 0x100004077774924uLL);
    v36 = malloc_type_malloc(8 * v25 * v34, 0x1000040BDFB0063uLL);
    fprintf(v24, "P6 %u %u 255\n", v25, v34);
    objc_msgSend_makeCoherent_(self, v37, textureCopy, v38, v39, v40, v41, v42, v43);
    memset(v63, 0, 24);
    v63[3] = v25;
    v63[4] = v34;
    v63[5] = 1;
    v62 = textureCopy;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v44, v36, 8 * v25, v63, 0, v45, v46, v47);
    if (v34)
    {
      v48 = 0;
      v49 = v36;
      do
      {
        if (v25)
        {
          v50 = 0;
          v51 = 2;
          do
          {
            _H0 = *&v49[2 * v50];
            __asm { FCVT            S0, H0 }

            v58 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v49[2 * (v50 + 1)];
            __asm { FCVT            S0, H0 }

            v60 = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            LOWORD(_S0) = *&v49[2 * (v50 + 2)];
            __asm { FCVT            S0, H0 }

            v35[v51 - 2] = v58;
            v35[v51 - 1] = v60;
            v35[v51] = vcvtms_s32_f32(fmaxf(fminf(_S0, 1.0), 0.0) * 255.0);
            v51 += 3;
            v50 += 4;
          }

          while (4 * v25 != v50);
        }

        fwrite(v35, 3uLL, v25, v24);
        v49 += 8 * (v25 & 0x3FFFFFFF);
        ++v48;
      }

      while (v48 != v34);
    }

    free(v35);
    free(v36);
    fclose(v24);
    textureCopy = v62;
  }
}

- (void)saveRGBA16FTexture:(id)texture AsF32File:(const char *)file
{
  textureCopy = texture;
  v15 = sub_295759628(file, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v15)
  {
    v24 = v15;
    v25 = objc_msgSend_width(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23);
    v34 = objc_msgSend_height(textureCopy, v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = malloc_type_malloc(16 * (v25 & 0x3FFFFFFF), 0x100004052888210uLL);
    v36 = malloc_type_malloc(8 * v25 * v34, 0x1000040BDFB0063uLL);
    objc_msgSend_makeCoherent_(self, v37, textureCopy, v38, v39, v40, v41, v42, v43);
    memset(v58, 0, 24);
    v58[3] = v25;
    v58[4] = v34;
    v58[5] = 1;
    v57 = v36;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v44, v36, 8 * v25, v58, 0, v45, v46, v47);
    if (v34)
    {
      for (i = 0; i != v34; ++i)
      {
        if (v25)
        {
          v50 = 0;
          do
          {
            _H0 = *&v36[2 * (v50 + 2)];
            __asm { FCVT            S0, H0 }

            v48.i32[0] = *&v36[2 * v50];
            v48 = vcvtq_f32_f16(v48).u64[0];
            *&v35[v50] = v48;
            v35[(v50 + 2)] = _S0;
            v35[(v50 + 3)] = 0;
            v50 += 4;
          }

          while (4 * v25 != v50);
        }

        fwrite(v35, 0x10uLL, v25, v24);
        v36 += 8 * (v25 & 0x3FFFFFFF);
      }
    }

    free(v35);
    free(v57);
    fclose(v24);
  }
}

- (void)saveRGB10A2Texture:(id)texture AsPPMFile:(const char *)file
{
  textureCopy = texture;
  v15 = sub_295759628(file, v7, v14, v8, v9, v10, v11, v12, v13);
  if (v15)
  {
    v24 = v15;
    if (objc_msgSend_pixelFormat(textureCopy, v16, v17, v18, v19, v20, v21, v22, v23) == 90)
    {
      v33 = objc_msgSend_width(textureCopy, v25, v26, v27, v28, v29, v30, v31, v32);
      v42 = objc_msgSend_height(textureCopy, v34, v35, v36, v37, v38, v39, v40, v41);
      v43 = malloc_type_malloc(3 * v33, 0x100004077774924uLL);
      v44 = malloc_type_malloc(4 * v33 * v42, 0x100004052888210uLL);
      fprintf(v24, "P6 %u %u 255\n", v33, v42);
      objc_msgSend_makeCoherent_(self, v45, textureCopy, v46, v47, v48, v49, v50, v51);
      memset(v62, 0, 24);
      v62[3] = v33;
      v62[4] = v42;
      v62[5] = 1;
      v61 = v44;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(textureCopy, v52, v44, 4 * v33, v62, 0, v53, v54, v55);
      if (v42)
      {
        v56 = 0;
        v57 = 4 * v33;
        do
        {
          if (v33)
          {
            v58 = 0;
            v59 = 2;
            do
            {
              v60 = *&v44[v58];
              v43[v59 - 2] = vcvtms_s32_f32(((v60 & 0x3FF) / 1023.0) * 255.0);
              v43[v59 - 1] = vcvtms_s32_f32((((v60 >> 10) & 0x3FF) / 1023.0) * 255.0);
              v43[v59] = vcvtms_s32_f32((((v60 >> 20) & 0x3FF) / 1023.0) * 255.0);
              v59 += 3;
              v58 += 4;
            }

            while (v57 != v58);
          }

          fwrite(v43, 3uLL, v33, v24);
          ++v56;
          v44 += v57;
        }

        while (v56 != v42);
      }

      free(v43);
      free(v61);
    }

    fclose(v24);
  }
}

@end