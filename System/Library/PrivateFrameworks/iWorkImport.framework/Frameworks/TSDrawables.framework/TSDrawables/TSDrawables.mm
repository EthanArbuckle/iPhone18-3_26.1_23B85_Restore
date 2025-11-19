unint64_t TSDMaxPixelAreaForiOSImages()
{
  if (qword_280A4C000 != -1)
  {
    sub_27680844C();
  }

  return atomic_load(&qword_280A4A040);
}

void sub_276645FE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentCapabilities(TSDCapabilities, a2, a3);
  v6 = objc_msgSend_physicalMemory(v3, v4, v5);

  if (v6 >= 0x40000001)
  {
    if (v6 > 0x80000000)
    {
      return;
    }

    v7 = 0x1000000;
  }

  else
  {
    v7 = 0x400000;
  }

  atomic_store(v7, &qword_280A4A040);
}

id sub_276646084(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  objc_opt_class();
  v14 = TSUDynamicCast();
  objc_msgSend_naturalSize(v11, v15, v16);
  if (v19 <= a5)
  {
    objc_msgSend_naturalSize(v11, v17, v18);
    v20 = v22 > a6;
    if ((a4 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 1;
    if ((a4 & 4) != 0)
    {
LABEL_3:
      isOpaque = objc_msgSend_isOpaque(v14, v17, v18);
      goto LABEL_6;
    }
  }

  isOpaque = 0;
LABEL_6:
  v23 = objc_msgSend_imageData(v14, v17, v18);
  v24 = sub_27664626C(v23);

  if (v14 != 0 && !v20 && (isOpaque & 1) == 0 && v24)
  {
    goto LABEL_16;
  }

  v27 = objc_msgSend_stringByDeletingPathExtension(v12, v25, v26);
  v30 = v27;
  if (!v27 || !objc_msgSend_length(v27, v28, v29))
  {

    v30 = @"image";
  }

  v32 = objc_msgSend_stringByAppendingString_(v30, v31, @"-small");
  v33 = [TSDImageResamplingOperation alloc];
  v35 = objc_msgSend_initWithImageProvider_desiredSize_(v33, v34, v11, a5, a6);
  objc_msgSend_setDisplayName_(v35, v36, v32);
  objc_msgSend_setObjectContext_(v35, v37, v13);
  if (objc_msgSend_prefersHDRRendering(v11, v38, v39))
  {
    objc_msgSend_performResampleOperationWithResampleOptions_bitmapContextOptions_(v35, v40, a4, 73);
  }

  else
  {
    objc_msgSend_performResampleOperationWithResampleOptions_bitmapContextOptions_(v35, v40, a4, 9);
  }
  v41 = ;

  if (!v41)
  {
LABEL_16:
    v41 = objc_msgSend_imageData(v11, v25, v26);
  }

  return v41;
}

uint64_t sub_27664626C(void *a1)
{
  v1 = a1;
  if (sub_27664712C(v1))
  {
    if (objc_msgSend_isLengthLikelyToBeGreaterThan_(v1, v2, 0x4000000))
    {
      v5 = objc_msgSend_sharedPool(TSDImageProviderPool, v3, v4);
      v7 = objc_msgSend_temporaryProviderForData_shouldValidate_(v5, v6, v1, 0);

      objc_opt_class();
      v8 = TSUDynamicCast();
      v11 = objc_msgSend_CGImageSource(v8, v9, v10);
      if (v11)
      {
        v12 = CGImageSourceGetType(v11);
        v14 = v12;
        if (v12)
        {
          v15 = objc_msgSend_tsu_conformsToUTI_(v12, v13, *MEMORY[0x277D81478]) ^ 1;
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id TSDResampleImageData(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = a1;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSPData *TSDResampleImageData(TSPData *__strong, CGSize, TSDImageResampleOptions)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 235, 0, "invalid nil value for '%{public}s'", "sourceImageData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (a3 <= 0.0 || a4 <= 0.0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSPData *TSDResampleImageData(TSPData *__strong, CGSize, TSDImageResampleOptions)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 236, 0, "bogus size to resample");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = a3 > 0.0;
  if (a4 <= 0.0)
  {
    v23 = 0;
  }

  if (!v8)
  {
    v23 = 0;
  }

  if ((a2 & 0x80) == 0 && !v23)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v25 = objc_autoreleasePoolPush();
  v28 = objc_msgSend_sharedPool(TSDImageProviderPool, v26, v27);
  v30 = objc_msgSend_temporaryProviderForData_shouldValidate_(v28, v29, v8, 1);

  isError = objc_msgSend_isError(v30, v31, v32);
  if ((a2 & 2) == 0)
  {
    objc_opt_class();
    v36 = TSUDynamicCast();
    if (!v36)
    {
      goto LABEL_16;
    }

    v39 = v36;
    isValid = objc_msgSend_isValid(v36, v37, v38);

    if ((isValid & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v41 = objc_msgSend_filename(v8, v34, v35);
    v44 = objc_msgSend_context(v8, v42, v43);
    v24 = sub_276646084(v30, v41, v44, a2, a3, a4);

    goto LABEL_19;
  }

  if ((isError & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v24 = v8;
LABEL_19:

  objc_autoreleasePoolPop(v25);
LABEL_20:

  return v24;
}

void sub_2766465C4(void *a1, const char *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (objc_msgSend_count(a1, a2, a3))
    {
      v5 = objc_msgSend_objectAtIndex_(a1, v4, 0);
      v8 = objc_msgSend_pointerValue(v5, v6, v7);

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_2766485F8;
      v9[3] = &unk_27A6CC348;
      v9[4] = v8;
      sub_27664A414(1, 0, v9);
    }
  }
}

void TSDClearCGContextInfo(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = sub_2766485F8;
  v1[3] = &unk_27A6CC348;
  v1[4] = a1;
  sub_27664A414(1, 0, v1);
}

CGContext *sub_2766466F8(CGImageRef image, const char *a2, double a3, double a4)
{
  if (a3 == *MEMORY[0x277CBF3A8] && a4 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGContextRef _TSDBitmapContextCreateMatchingImageIfPossible(CGSize, CGImageRef, TSDBitmapContextOptions)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 292, 0, "TSDBitmapContextCreate: Input context size of CGSizeZero illegal.");
LABEL_14:

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v25, v26);
    return 0;
  }

  if (!image)
  {
    v22 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGContextRef _TSDBitmapContextCreateMatchingImageIfPossible(CGSize, CGImageRef, TSDBitmapContextOptions)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v24, v18, v20, 297, 0, "Cannot create a context matching a nil image.");
    goto LABEL_14;
  }

  v6 = a2;
  ColorSpace = CGImageGetColorSpace(image);
  if (!CGColorSpaceSupportsOutput(ColorSpace))
  {
    return 0;
  }

  TSUCeilSize();
  v9 = v8;
  v11 = v10;
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  BitsPerPixel = CGImageGetBitsPerPixel(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  v16 = 0;
  if (Model > kCGColorSpaceModelRGB)
  {
    if ((Model - 3) >= 5)
    {
      if (Model != kCGColorSpaceModelCMYK)
      {
        goto LABEL_24;
      }

      if (BitsPerPixel < 0x28)
      {
        v16 = 0;
        BitsPerComponent = 8;
        goto LABEL_24;
      }

      if (BitsPerPixel < 0x40)
      {
        v16 = 0;
        BitsPerComponent = 16;
        goto LABEL_24;
      }

      if (BitsPerPixel < 0x80)
      {
        v16 = 256;
        BitsPerComponent = 32;
        goto LABEL_24;
      }

      return 0;
    }

    goto LABEL_22;
  }

  if (Model == kCGColorSpaceModelUnknown)
  {
LABEL_22:
    v16 = 0;
LABEL_23:
    BitsPerComponent = 8;
    goto LABEL_24;
  }

  if (Model)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_24;
    }

    if (BitsPerPixel < 0x18)
    {
      v16 = 6;
      BitsPerComponent = 5;
      goto LABEL_24;
    }

    if (TSUColorSpaceIsHDR())
    {
      v34 = 4352;
      if ((v6 & 0x40) == 0)
      {
        BitsPerComponent = 16;
        if ((v6 & 0x20) != 0)
        {
          v35 = TSUP3ColorSpace();
        }

        else
        {
          v35 = TSUDeviceRGBColorSpace();
        }

        ColorSpace = v35;
        goto LABEL_60;
      }
    }

    else
    {
      if (BitsPerPixel < 0x28)
      {
        v34 = 0;
        BitsPerComponent = 8;
LABEL_60:
        AlphaInfo = CGImageGetAlphaInfo(image);
        if (((v6 & 2) != 0) | (0x1Eu >> AlphaInfo) & 1 | (AlphaInfo > kCGImageAlphaNoneSkipFirst))
        {
          v38 = 1;
        }

        else
        {
          v38 = 5;
        }

        v16 = v38 | v34;
        goto LABEL_24;
      }

      if (BitsPerPixel > 0x47)
      {
        if (BitsPerPixel > 0x87)
        {
          return 0;
        }

        v34 = 256;
        BitsPerComponent = 32;
        goto LABEL_60;
      }

      v34 = ((BitmapInfo << 23) >> 31) & 0x1100;
    }

    BitsPerComponent = 16;
    goto LABEL_60;
  }

  if (BitsPerPixel <= 0xF)
  {
    if ((BitmapInfo & 0x1F) != 0)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_23;
  }

  if (BitsPerPixel > 0x17)
  {
    if (BitsPerPixel >= 0x28)
    {
      return 0;
    }

    v16 = 256;
    BitsPerComponent = 32;
  }

  else
  {
    if ((BitmapInfo & 0x1F) != 0)
    {
      v36 = 1;
    }

    else
    {
      v36 = 5;
    }

    if (BitsPerComponent <= 8)
    {
      v16 = v36;
    }

    else
    {
      v16 = 0;
    }

    if (BitsPerComponent <= 8)
    {
      BitsPerComponent = 8;
    }

    else
    {
      BitsPerComponent = 16;
    }
  }

LABEL_24:
  AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
  releaseInfo = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = CGBitmapContextCreateWithData(0, v9, v11, BitsPerComponent, AlignedBytesPerRow, ColorSpace, v16, sub_2766465C4, releaseInfo);
  if (v27)
  {
    v32 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v31, v27);
    objc_msgSend_addObject_(releaseInfo, v33, v32);

    TSDSetCGContextInfoWithTileOffset(v27, 0, 0, 0, 0, 0, 1.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    if ((v6 & 8) != 0)
    {
      CGContextTranslateCTM(v27, 0.0, v11);
      CGContextScaleCTM(v27, 1.0, -1.0);
    }
  }

  return v27;
}

CGContext *TSDBitmapContextCreateWithColorSpace(CGColorSpace *a1, const char *a2, double a3, double a4)
{
  if (a3 == *MEMORY[0x277CBF3A8] && a4 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGContextRef TSDBitmapContextCreateWithColorSpace(CGColorSpaceRef, CGSize, TSDBitmapContextOptions)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 486, 0, "TSDBitmapContextCreate: Input context size of CGSizeZero illegal.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27);
    return 0;
  }

  else
  {
    v5 = a2;
    TSUCeilSize();
    v9 = v8;
    v11 = v10;
    if (v5)
    {
      if ((v5 & 0x40) != 0)
      {
        if ((v5 & 0x20) != 0)
        {
          v29 = TSUExtendedP3ColorSpace();
        }

        else
        {
          v29 = TSUExtendedSRGBColorSpace();
        }
      }

      else if ((v5 & 0x20) != 0)
      {
        v29 = TSUP3ColorSpace();
      }

      else
      {
        v29 = TSUDeviceRGBColorSpace();
      }

      v19 = v29;
      if ((v5 & 0x40) != 0)
      {
        v31 = 4357;
      }

      else
      {
        v31 = 8198;
      }

      v32 = 16;
      if ((v5 & 0x40) == 0)
      {
        v32 = 8;
      }

      if ((v5 & 4) != 0)
      {
        v31 = 4102;
        v32 = 5;
      }

      v33 = 16;
      if ((v5 & 0x10) != 0)
      {
        v34 = 8193;
      }

      else
      {
        v34 = 8194;
      }

      if ((v5 & 0x40) != 0)
      {
        v35 = 4353;
      }

      else
      {
        v35 = v34;
      }

      if ((v5 & 0x40) == 0)
      {
        v33 = 8;
      }

      if ((v5 & 2) != 0)
      {
        v20 = v35;
      }

      else
      {
        v20 = v31;
      }

      if ((v5 & 2) != 0)
      {
        v30 = v33;
      }

      else
      {
        v30 = v32;
      }
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v19 = 0;
        v20 = 7;
      }

      else
      {
        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "CGContextRef TSDBitmapContextCreateWithColorSpace(CGColorSpaceRef, CGSize, TSDBitmapContextOptions)");
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 553, 0, "Must include a color or alpha channel.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
        v19 = 0;
        v20 = 8194;
      }

      v30 = 8;
    }

    AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (a1)
    {
      v19 = a1;
    }

    releaseInfo = v37;
    v28 = CGBitmapContextCreateWithData(0, v9, v11, v30, AlignedBytesPerRow, v19, v20, sub_2766465C4, releaseInfo);
    if (v28)
    {
      v40 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v39, v28);
      objc_msgSend_addObject_(releaseInfo, v41, v40);

      TSDSetCGContextInfoWithTileOffset(v28, 0, 0, 0, 0, 0, 1.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      if ((v5 & 8) != 0)
      {
        CGContextTranslateCTM(v28, 0.0, v11);
        CGContextScaleCTM(v28, 1.0, -1.0);
      }
    }
  }

  return v28;
}

CGContext *sub_276646E58(CGImage *a1, const char *a2, double a3, double a4)
{
  result = sub_2766466F8(a1, a2, a3, a4);
  if (!result)
  {
    ColorSpace = CGImageGetColorSpace(a1);
    if (CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      v10 = (a2 | 0x20);
    }

    else
    {
      v10 = a2;
    }

    return TSDBitmapContextCreateWithColorSpace(0, v10, a3, a4);
  }

  return result;
}

void sub_276646ED8(CGContext *a1, CGImage *a2, int a3, double a4, double a5, double a6, double a7)
{
  CGImageGetContentHeadroom();
  v15 = v14;
  MaxHDRHeadroom = TSDCGContextGetMaxHDRHeadroom(a1);
  v21[1] = 3221225472;
  v21[0] = MEMORY[0x277D85DD0];
  v21[2] = sub_276648188;
  v21[3] = &unk_27A6CC2E0;
  v21[4] = a1;
  v21[5] = fmax(MaxHDRHeadroom, v15);
  sub_27664A414(1, 1, v21);
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (a3)
  {
    CGContextDrawTiledImage(a1, *&v17, a2);
  }

  else
  {
    CGContextDrawImage(a1, *&v17, a2);
  }
}

double TSDCGContextGetMaxHDRHeadroom(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x3FF0000000000000;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648F94;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_27664708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSDCGContextSetMaxHDRHeadroom(uint64_t a1, double a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276648188;
  v2[3] = &unk_27A6CC2E0;
  v2[4] = a1;
  *&v2[5] = a2;
  sub_27664A414(1, 1, v2);
}

uint64_t sub_27664712C(void *a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (objc_msgSend_isLengthLikelyToBeGreaterThan_(v1, v2, 0x4000000))
  {
    v5 = objc_msgSend_type(v1, v3, v4);
    v21[0] = *MEMORY[0x277D81478];
    v8 = objc_msgSend_identifier(*MEMORY[0x277CE1E10], v6, v7);
    v21[1] = v8;
    v11 = objc_msgSend_identifier(*MEMORY[0x277CE1E80], v9, v10);
    v21[2] = v11;
    v14 = objc_msgSend_identifier(*MEMORY[0x277CE1D88], v12, v13);
    v21[3] = v14;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v21, 4);
    v18 = objc_msgSend_tsu_conformsToAnyUTI_(v5, v17, v16);

    v19 = v18 ^ 1u;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

uint64_t sub_276647270(void *a1, char *a2)
{
  if (!objc_msgSend_isLengthLikelyToBeGreaterThan_(a1, a2, 0x4000000))
  {
    return 1;
  }

  v3 = CGImageSourceGetType(a2);
  v5 = objc_msgSend_tsu_conformsToUTI_(v3, v4, *MEMORY[0x277D81478]) ^ 1;

  return v5;
}

double sub_2766472D8(CGPDFPage *a1, uint64_t a2, CGFloat *a3, int a4)
{
  if (!a1)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGRect TSDComputeBoxTransformAndSizeForPDFPageIgnoringAngle(CGPDFPageRef, CGAffineTransform *, CGSize *, BOOL)");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 834, 0, "invalid nil value for '%{public}s'", "page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    return *MEMORY[0x277CBF3A0];
  }

  BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v41 = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
  v12 = v41.origin.x;
  v13 = v41.origin.y;
  v14 = v41.size.width;
  v15 = v41.size.height;
  v50 = CGPDFPageGetBoxRect(a1, kCGPDFArtBox);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v51 = CGRectIntersection(v42, v50);
  v43.origin.x = v12;
  v43.origin.y = v13;
  v43.size.width = v14;
  v43.size.height = v15;
  v44 = CGRectIntersection(v43, v51);
  v16 = v44.origin.x;
  v17 = v44.origin.y;
  v18 = v44.size.width;
  v19 = v44.size.height;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v16;
  v45.origin.y = v17;
  v45.size.width = v18;
  v45.size.height = v19;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = v16;
  v46.origin.y = v17;
  v46.size.width = v18;
  v46.size.height = v19;
  MaxX = CGRectGetMaxX(v46);
  v47.origin.x = v16;
  v47.origin.y = v17;
  v47.size.width = v18;
  v47.size.height = v19;
  MaxY = CGRectGetMaxY(v47);
  v48.origin.x = v16;
  v48.origin.y = v17;
  v48.size.width = v18;
  v48.size.height = v19;
  v22 = CGRectGetWidth(v48);
  v49.origin.x = v16;
  v49.origin.y = v17;
  v49.size.width = v18;
  v49.size.height = v19;
  v23 = CGRectGetHeight(v49);
  RotationAngle = CGPDFPageGetRotationAngle(a1);
  if (a4)
  {
    v25 = 0;
  }

  else
  {
    v25 = RotationAngle;
  }

  if (v25 != 90)
  {
    v26 = 0.0;
    if (v25 == 180)
    {
      v27 = xmmword_2768256B0;
      v28 = MaxY;
    }

    else
    {
      if (v25 == 270)
      {
        v27 = xmmword_2768256D0;
        v28 = -MinX;
        v26 = -1.0;
        MaxX = MaxY;
        goto LABEL_12;
      }

      MaxX = -MinX;
      v27 = xmmword_2768256E0;
      v28 = -MinY;
    }

    v36 = v22;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v27 = xmmword_2768256C0;
  v28 = MaxX;
  MaxX = -MinY;
  v26 = 1.0;
LABEL_12:
  v36 = v23;
  v23 = v22;
  if (a2)
  {
LABEL_16:
    *a2 = v27;
    *(a2 + 16) = v26;
    *(a2 + 24) = v27;
    *(a2 + 32) = MaxX;
    *(a2 + 40) = v28;
  }

LABEL_17:
  if (a3)
  {
    *a3 = v36;
    a3[1] = v23;
  }

  return v16;
}

__n128 TSDComputeDrawTransformForPDFPage@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>)
{
  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeTranslation(&v36, a3 * -0.5, a4 * -0.5);
  v16 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v16;
  *&t1.tx = a1[2];
  t2 = v36;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v17 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v17;
  a1[2] = *&v35.tx;
  v18 = a5;
  v17.n128_f64[0] = a6;
  v19 = a7;
  v20 = a8;
  tx = CGRectGetMinX(*(&v17 - 8));
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  Width = CGRectGetWidth(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  Height = CGRectGetHeight(v39);
  CGAffineTransformMakeScale(&v35, Width / a3, Height / a4);
  v36 = v35;
  v24 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v24;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v25 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v25;
  a1[2] = *&v35.tx;
  CGAffineTransformMakeTranslation(&v35, Width * 0.5, Height * 0.5);
  v36 = v35;
  v26 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v26;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v27 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v27;
  a1[2] = *&v35.tx;
  CGAffineTransformMakeTranslation(&v35, tx, MinY);
  v36 = v35;
  v28 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v28;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v29 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v29;
  a1[2] = *&v35.tx;
  v30 = a1[1];
  *a2 = *a1;
  a2[1] = v30;
  result = a1[2];
  a2[2] = result;
  return result;
}

void sub_2766477E4(uint64_t a1, double a2)
{
  TSDSetCGContextInfoWithTileOffset(a1, 0, 0, 0, 0, 0, 1.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_27664789C;
  v4[3] = &unk_27A6CC2E0;
  v4[4] = a1;
  *&v4[5] = a2;
  sub_27664A414(1, 1, v4);
}

void sub_27664789C(uint64_t a1, void *a2)
{
  v15 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 32));
  if (!v15)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSDSetCGContextInfoForShadowContext(CGContextRef, CGFloat)_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 972, 0, "invalid nil value for '%{public}s'", "dict");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = *(a1 + 40);
  *&v12 = v12;
  v13 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v3, v4, v12);
  objc_msgSend_setValue_forKey_(v15, v14, v13, @"TSDCGContextInfoDictionaryKeyShadowedLayoutAngle");
}

void sub_2766479AC(uint64_t a1, double a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276647A24;
  v2[3] = &unk_27A6CC2E0;
  v2[4] = a1;
  *&v2[5] = a2;
  sub_27664A414(1, 1, v2);
}

void sub_276647A24(uint64_t a1, void *a2)
{
  v15 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 32));
  if (!v15)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSDCGContextUpdateLayoutAngle(CGContextRef, CGFloat)_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 980, 0, "invalid nil value for '%{public}s'", "dict");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = *(a1 + 40);
  *&v12 = v12;
  v13 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v3, v4, v12);
  objc_msgSend_setValue_forKey_(v15, v14, v13, @"TSDCGContextInfoDictionaryKeyLayoutAngle");
}

void sub_276647B34(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276647BAC;
  v2[3] = &unk_27A6CC300;
  v2[4] = a1;
  v3 = a2;
  sub_27664A414(1, 1, v2);
}

void sub_276647BAC(uint64_t a1, void *a2)
{
  v13 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 32));
  if (!v13)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSDCGContextSetIsReflection(CGContextRef, BOOL)_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 988, 0, "invalid nil value for '%{public}s'", "dict");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v3, *(a1 + 40));
  objc_msgSend_setValue_forKey_(v13, v12, v11, @"TSDCGContextInfoDictionaryKeyIsReflection");
}

void TSDCGContextSetBitmapQualityInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276647D50;
  v5[3] = &unk_27A6CC328;
  v6 = v3;
  v7 = a1;
  v4 = v3;
  sub_27664A414(1, 1, v5);
}

void sub_276647D50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v3);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 1);
  }

  v9 = v6;
  objc_msgSend_setValue_forKey_(v6, v7, *(a1 + 32), @"TSDCGContextInfoDictionaryKeyBitmapQualityInfo");
  objc_msgSend_setObject_forKey_(v4, v8, v9, *(a1 + 40));
}

void TSDCGContextSetPdfTagger(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276647E84;
  v5[3] = &unk_27A6CC328;
  v6 = v3;
  v7 = a1;
  v4 = v3;
  sub_27664A414(1, 1, v5);
}

void sub_276647E84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v3);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 1);
  }

  v9 = v6;
  objc_msgSend_setValue_forKey_(v6, v7, *(a1 + 32), @"TSDCGContextInfoDictionaryKeyPdfTagger");
  objc_msgSend_setObject_forKey_(v4, v8, v9, *(a1 + 40));
}

void TSDCGContextSetIsExportingWithRenderingExporter(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276647F98;
  v2[3] = &unk_27A6CC300;
  v2[4] = a1;
  v3 = a2;
  sub_27664A414(1, 1, v2);
}

void sub_276647F98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v3);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 1);
  }

  v11 = v6;
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, *(a1 + 40));
  objc_msgSend_setValue_forKey_(v11, v9, v8, @"TSDCGContextInfoDictionaryKeyIsExportingWithRenderingExporter");

  objc_msgSend_setObject_forKey_(v4, v10, v11, *(a1 + 32));
}

void TSDCGContextSetShouldRenderHDRContent(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2766480CC;
  v2[3] = &unk_27A6CC300;
  v2[4] = a1;
  v3 = a2;
  sub_27664A414(1, 1, v2);
}

void sub_2766480CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v3);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 1);
  }

  v11 = v6;
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, *(a1 + 40));
  objc_msgSend_setValue_forKey_(v11, v9, v8, @"TSDCGContextInfoDictionaryKeyRenderHDRContent");

  objc_msgSend_setObject_forKey_(v4, v10, v11, *(a1 + 32));
}

void sub_276648188(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v3);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 1);
  }

  v12 = v6;
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, *(a1 + 40));
  objc_msgSend_setValue_forKey_(v12, v10, v9, @"TSDCGContextInfoDictionaryKeyMaxHDRHeadroom");

  objc_msgSend_setObject_forKey_(v4, v11, v12, *(a1 + 32));
}

void TSDCGContextMarkTonemappedHDRContentToSDR(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2766482BC;
  v2[3] = &unk_27A6CC300;
  v2[4] = a1;
  v3 = a2;
  sub_27664A414(1, 1, v2);
}

void sub_2766482BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v3);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 1);
  }

  v11 = v6;
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, *(a1 + 40));
  objc_msgSend_setValue_forKey_(v11, v9, v8, @"TSDCGContextInfoDictionaryKeyTonemappedHDRContentToSDR");

  objc_msgSend_setObject_forKey_(v4, v10, v11, *(a1 + 32));
}

void TSDSetCGContextInfoWithTileOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7, double a8, double a9)
{
  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, a2);
  v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v21, a3);
  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, a4);
  *&v25 = a7;
  v30 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, v25);
  if (a5)
  {
    objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v28, v29, a8, a9);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29);
  }
  v31 = ;
  v33 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, a6);
  v35 = objc_msgSend_initWithObjectsAndKeys_(v18, v34, v20, @"TSDCGContextInfoDictionaryKeyIsPrintContext", v22, @"TSDCGContextInfoDictionaryKeyIsPDFContext", v24, @"TSDCGContextInfoDictionaryKeyIsCALayerContext", v30, @"TSDCGContextInfoDictionaryKeyAssociatedScreenScale", v31, @"TSDCGContextInfoDictionaryKeyTileOffset", v33, @"TSDCGContextInfoDictionaryKeyHasBackgroundsSuppressed", 0);

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_276648578;
  v37[3] = &unk_27A6CC328;
  v38 = v35;
  v39 = a1;
  v36 = v35;
  sub_27664A414(1, 1, v37);
}

void sub_276648578(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v9, v3, *(a1 + 40));
  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = v4;
    objc_msgSend_addEntriesFromDictionary_(v4, v5, v6);
  }

  else
  {
    v7 = v6;
  }

  objc_msgSend_setObject_forKey_(v9, v8, v7, *(a1 + 40));
}

__CFString *sub_276648604(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"invalid CGLineCap";
  }

  else
  {
    return off_27A6CC408[a1];
  }
}

__CFString *sub_276648628(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"invalid CGLineJoin";
  }

  else
  {
    return off_27A6CC420[a1];
  }
}

double sub_27664864C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648718;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276648700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276648718(uint64_t a1, void *a2)
{
  v8 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v8, v3, @"TSDCGContextInfoDictionaryKeyShadowedLayoutAngle");
  objc_msgSend_floatValue(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

uint64_t TSDCGContextIsShadowContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648858;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276648840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276648858(uint64_t a1, void *a2)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v5, v3, @"TSDCGContextInfoDictionaryKeyShadowedLayoutAngle");
  *(*(*(a1 + 32) + 8) + 24) = v4 != 0;
}

uint64_t sub_2766488D0(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648994;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_27664897C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276648994(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyIsReflection");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

id TSDCGContextGetBitmapQualityInfo(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_276648B14;
  v8 = sub_276648B24;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648B2C;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_276648AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276648B14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276648B2C(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyBitmapQualityInfo");
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id TSDCGContextGetPdfTagger(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_276648B14;
  v8 = sub_276648B24;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648CA8;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_276648C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276648CA8(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyPdfTagger");
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t TSDCGContextIsExportingWithRenderingExporter(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648DE0;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276648DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276648DE0(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyIsExportingWithRenderingExporter");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

uint64_t TSDCGContextShouldRenderHDRContent(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276648F1C;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276648F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276648F1C(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyRenderHDRContent");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

void sub_276648F94(uint64_t a1, void *a2)
{
  v8 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v8, v3, @"TSDCGContextInfoDictionaryKeyMaxHDRHeadroom");
  objc_msgSend_floatValue(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

uint64_t TSDCGContextGetTonemappedHDRContentToSDR(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2766490D4;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_2766490BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2766490D4(uint64_t a1, void *a2)
{
  v8 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v8, v3, @"TSDCGContextInfoDictionaryKeyTonemappedHDRContentToSDR");
  objc_msgSend_floatValue(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) = v7 != 0.0;
}

double sub_276649154(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276649220;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276649208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276649220(uint64_t a1, void *a2)
{
  v8 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v8, v3, @"TSDCGContextInfoDictionaryKeyLayoutAngle");
  objc_msgSend_floatValue(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

uint64_t TSDCGContextIsPrintContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276649360;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276649348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276649360(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyIsPrintContext");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

uint64_t TSDCGContextHasBackgroundsSuppressed(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_27664949C;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_276649484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27664949C(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyHasBackgroundsSuppressed");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

uint64_t TSDCGContextIsPDFContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2766495D8;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_2766495C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2766495D8(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyIsPDFContext");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

uint64_t sub_276649650(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276649714;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_2766496FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276649714(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyIsCALayerContext");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

double TSDCGContextAssociatedScreenScale(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276649864;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  if (v5[3] == 0.0)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_27664984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276649864(uint64_t a1, void *a2)
{
  v8 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v8, v3, @"TSDCGContextInfoDictionaryKeyAssociatedScreenScale");
  objc_msgSend_floatValue(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

BOOL TSDCGContextHasTileOffset(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = *MEMORY[0x277CBF348];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_276648B14;
  v16 = sub_276648B24;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276649A0C;
  v11[3] = &unk_27A6CC370;
  v11[4] = &v12;
  v11[5] = a1;
  sub_27664A414(0, 0, v11);
  v5 = v13;
  if (a2)
  {
    v6 = v13[5];
    if (v6)
    {
      objc_msgSend_CGPointValue(v6, v3, v4);
      *a2 = v7;
      *(a2 + 8) = v8;
      v5 = v13;
    }
  }

  v9 = v5[5] != 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_2766499F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276649A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *(a1 + 40));

  v6 = objc_msgSend_objectForKeyedSubscript_(v10, v5, @"TSDCGContextInfoDictionaryKeyTileOffset");
  v7 = TSUDynamicCast();
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_276649AC4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276649B78;
  v7[3] = &unk_27A6CC398;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  sub_27664A414(1, 0, v7);
}

void sub_276649B78(uint64_t a1, void *a2)
{
  v14 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v14, v3, *(a1 + 32));
  if (!v6)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5);
    objc_msgSend_setObject_forKey_(v14, v7, v6, *(a1 + 32));
  }

  v10 = objc_msgSend_valueForKey_(v6, v4, *(a1 + 40));
  if (!v10)
  {
    v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
    objc_msgSend_setValue_forKey_(v6, v11, v10, *(a1 + 40));
  }

  v12 = objc_msgSend_set(MEMORY[0x277CBEB58], v8, v9);
  objc_msgSend_tsu_push_(v10, v13, v12);
}

void sub_276649C70(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276649D50;
    v8[3] = &unk_27A6CC3C0;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    sub_27664A414(1, 0, v8);
  }
}

void sub_276649D50(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, a1[4]);
  v5 = objc_msgSend_valueForKey_(v3, v4, a1[5]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addObject_(*(*(&v12 + 1) + 8 * v11++), v8, a1[6]);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v16, 16);
    }

    while (v9);
  }
}

void TSDCGContextAddDataRenderedNeedsDownload(void *a1, void *a2)
{
  v3 = a2;
  sub_276649C70(a1, @"TSDCGContextInfoDictionaryKeyRenderedWithMissingData", v3);
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5);
  sub_276649C70(v6, @"TSDCGContextInfoDictionaryKeyThreadRenderedWithMissingData", v3);
}

id sub_276649EE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_276648B14;
  v17 = sub_276648B24;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_27664A038;
  v9[3] = &unk_27A6CC3E8;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  sub_27664A414(1, 0, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_27664A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27664A038(uint64_t *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = objc_msgSend_objectForKey_(v3, v4, a1[4]);

  v23 = TSUDynamicCast();

  v7 = objc_msgSend_objectForKey_(v23, v6, a1[5]);
  v10 = objc_msgSend_tsu_pop(v7, v8, v9);
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(a1[6] + 8) + 40))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "NSSet<TSPData *> *TSDCGContextStopWatchingDatasNeedDownloadWithObservationContext(__strong id, NSString *__strong)_block_invoke");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1357, 0, "invalid nil value for '%{public}s'", "datas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if (!objc_msgSend_count(v7, v13, v14))
  {
    objc_msgSend_removeObjectForKey_(v23, v22, a1[5]);
  }
}

void TSDSetCGContextPrefersRasterRendering(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_27664A228;
  v2[3] = &unk_27A6CC300;
  v2[4] = a1;
  v3 = a2;
  sub_27664A414(1, 1, v2);
}

void sub_27664A228(uint64_t a1, void *a2)
{
  v10 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v10, v3, *(a1 + 32));
  if (!v6)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5);
    objc_msgSend_setObject_forKey_(v10, v7, v6, *(a1 + 32));
  }

  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, *(a1 + 40));
  objc_msgSend_setValue_forKey_(v6, v9, v8, @"TSDCGContextInfoDictionaryKeyPrefersRasterRendering");
}

uint64_t TSDCGContextPrefersRasterRendering(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_27664A39C;
  v3[3] = &unk_27A6CC370;
  v3[4] = &v4;
  v3[5] = a1;
  sub_27664A414(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_27664A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27664A39C(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *(a1 + 40));
  v4 = objc_msgSend_objectForKeyedSubscript_(v7, v3, @"TSDCGContextInfoDictionaryKeyPrefersRasterRendering");
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v4, v5, v6);
}

void sub_27664A414(int a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v10 = v5;
    if (qword_280A4C0D8 != -1)
    {
      sub_276808460();
    }

    if (a1)
    {
      pthread_rwlock_wrlock(&stru_280A4C010);
      v7 = qword_280A4C008;
      if (!qword_280A4C008 && a2)
      {
        v8 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], 0, v6);
        v9 = qword_280A4C008;
        qword_280A4C008 = v8;

        v7 = qword_280A4C008;
      }
    }

    else
    {
      pthread_rwlock_rdlock(&stru_280A4C010);
      v7 = qword_280A4C008;
    }

    if (v7)
    {
      v10[2]();
    }

    pthread_rwlock_unlock(&stru_280A4C010);
    v5 = v10;
  }
}

uint64_t sub_27664A4F8(void *a1)
{
  objc_opt_class();
  v4 = objc_msgSend_attributes(a1, v2, v3);
  v5 = TSUDynamicCast();

  shouldBeInterpretedAsGenericIfUntagged = objc_msgSend_shouldBeInterpretedAsGenericIfUntagged(v5, v6, v7);
  return shouldBeInterpretedAsGenericIfUntagged;
}

void sub_27664A564(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v7 = objc_msgSend_attributes(a1, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    ShouldBeInterpretedAsGenericIfUntagged = objc_msgSend_copyWithShouldBeInterpretedAsGenericIfUntagged_(v8, v9, a3);
  }

  else
  {
    v11 = [TSDImageDataAttributes alloc];
    ShouldBeInterpretedAsGenericIfUntagged = objc_msgSend_initWithShouldBeInterpretedAsGenericIfUntagged_(v11, v12, a3);
  }

  objc_msgSend_setAttributes_(a1, v10, ShouldBeInterpretedAsGenericIfUntagged);
}

uint64_t sub_27664AB34(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v7 = v5;
  if (!v4 || !v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSDGradient sortStopsArray:]_block_invoke");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 138, 0, "Passing in nil is invalid.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_opt_class();
  v15 = TSUCheckedDynamicCast();
  objc_opt_class();
  v16 = TSUCheckedDynamicCast();
  objc_msgSend_fraction(v15, v17, v18);
  v20 = v19;
  objc_msgSend_fraction(v16, v21, v22);
  v24 = -1;
  if (v20 >= v23)
  {
    v24 = v23 < v20;
  }

  v25 = v24;

  return v25;
}

void sub_27664D1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27664D1FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_msgSend_fraction(a2, a2, a3);
  v8 = v7;
  result = objc_msgSend_fraction(*(a1 + 32), v9, v10);
  if (v8 > v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_276652134()
{
  v0 = [TSDStrokePattern alloc];
  v2 = objc_msgSend_initWithPatternType_pattern_count_phase_(v0, v1, 1, 0, 0, 0.0);
  v3 = qword_280A4C0E8;
  qword_280A4C0E8 = v2;
}

void sub_2766521C8()
{
  v0 = [TSDStrokePattern alloc];
  v2 = objc_msgSend_initWithPatternType_pattern_count_phase_(v0, v1, 2, 0, 0, 0.0);
  v3 = qword_280A4C0F8;
  qword_280A4C0F8 = v2;
}

void sub_27665225C()
{
  v0 = [TSDStrokePattern alloc];
  v2 = objc_msgSend_initWithPattern_count_phase_(v0, v1, &unk_276825990, 2, 0.0);
  v3 = qword_280A4C108;
  qword_280A4C108 = v2;
}

void sub_2766522F0()
{
  v0 = [TSDStrokePattern alloc];
  v2 = objc_msgSend_initWithPattern_count_phase_(v0, v1, &unk_2768259A0, 2, 0.0);
  v3 = qword_280A4C118;
  qword_280A4C118 = v2;
}

void sub_276652384()
{
  v0 = [TSDStrokePattern alloc];
  v2 = objc_msgSend_initWithPattern_count_phase_(v0, v1, &unk_2768259B0, 2, 0.0);
  v3 = qword_280A4C128;
  qword_280A4C128 = v2;
}

void sub_276652418()
{
  v0 = [TSDStrokePattern alloc];
  v2 = objc_msgSend_initWithPattern_count_phase_(v0, v1, &unk_2768259C0, 2, 0.0);
  v3 = qword_280A4C138;
  qword_280A4C138 = v2;
}

void sub_276653508(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_i_newStroke(*(a1 + 32), a2, a3);
  v4 = qword_280A4C148;
  qword_280A4C148 = v3;
}

void sub_2766535E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_i_newEmptyStroke(*(a1 + 32), a2, a3);
  v4 = qword_280A4C158;
  qword_280A4C158 = v3;
}

void sub_276655F24()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276655F68()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276655FAC(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (*(a1 + 48) == 1)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v43, v49, 16);
    if (v10)
    {
      v11 = *v44;
      do
      {
        v12 = 0;
        do
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v43 + 1) + 8 * v12);
          v14 = objc_msgSend_documentRoot(*(a1 + 32), v8, v9);
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v13, v15, v14, *(a1 + 40));

          ++v12;
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v43, v49, 16);
      }

      while (v10);
    }
  }

  objc_storeStrong((*(a1 + 32) + 200), a2);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = *(*(a1 + 32) + 200);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v39, v48, 16);
  if (v18)
  {
    v19 = *v40;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        objc_opt_class();
        v21 = TSUDynamicCast();
        v23 = v21;
        if (v21)
        {
          objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(v21, v22, *(a1 + 32), *(a1 + 49));
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v24, &v39, v48, 16);
    }

    while (v18);
  }

  if (*(a1 + 48) == 1)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = *(*(a1 + 32) + 200);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v35, v47, 16);
    if (v29)
    {
      v30 = *v36;
      do
      {
        v31 = 0;
        do
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v35 + 1) + 8 * v31);
          v33 = objc_msgSend_documentRoot(*(a1 + 32), v27, v28, v35);
          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v32, v34, v33, *(a1 + 40));

          ++v31;
        }

        while (v29 != v31);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v35, v47, 16);
      }

      while (v29);
    }
  }
}

id sub_276656550(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 1u;
  v4 = *(v3 + 72);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v5);
    *(v3 + 72) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDGroupInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_276656874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_276656F84(uint64_t a1, void *a2)
{
  v13 = a2;
  v5 = objc_msgSend_object(v13, v3, v4);
  v6 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v5, v7, v6))
  {
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = *(v8 + 176);
    *(v8 + 176) = v9;
  }

  else
  {
    objc_opt_class();
    v11 = TSUCheckedDynamicCast();
    v12 = *(a1 + 32);
    v10 = *(v12 + 160);
    *(v12 + 160) = v11;
  }
}

void sub_276657070(uint64_t a1, void *a2)
{
  v13 = a2;
  v5 = objc_msgSend_object(v13, v3, v4);
  v6 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v5, v7, v6))
  {
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = *(v8 + 184);
    *(v8 + 184) = v9;
  }

  else
  {
    objc_opt_class();
    v11 = TSUCheckedClassAndProtocolCast();
    v12 = *(a1 + 32);
    v10 = *(v12 + 168);
    *(v12 + 168) = v11;
  }
}

void sub_276657170(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [TSDDrawableComment alloc];
  v5 = objc_msgSend_initWithParent_storage_(v3, v4, *(a1 + 32), v8);
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = v5;
}

void sub_276657208(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_2766572CC(uint64_t a1)
{
  v2 = objc_opt_class();
  v7 = objc_msgSend_wantsTitleAndCaptionUUIDs(v2, v3, v4);
  v8 = *(a1 + 32);
  v9 = v8[21];
  if (!v7)
  {
    if (v9)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDDrawableInfo(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_6");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
      v18 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v17, 189, 0, "Removing unexpected title on %{public}@ %p", v18, *(a1 + 32));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      v8 = *(a1 + 32);
    }

    else if (!v8[23] && !v8[20] && !v8[22])
    {
      goto LABEL_17;
    }

    if (v8[20])
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDDrawableInfo(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_6");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfoPersistenceAdditions.mm");
      v26 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v25, 190, 0, "Removing unexpected caption on %{public}@ %p", v26, *(a1 + 32));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      v8 = *(a1 + 32);
    }

    objc_msgSend_willModifyForUpgrade(v8, v5, v6);
    v30 = *(a1 + 32);
    v31 = *(v30 + 168);
    *(v30 + 168) = 0;

    v32 = *(a1 + 32);
    v33 = *(v32 + 184);
    *(v32 + 184) = 0;

    v34 = *(a1 + 32);
    v35 = *(v34 + 160);
    *(v34 + 160) = 0;

    v36 = *(a1 + 32);
    v12 = *(v36 + 176);
    *(v36 + 176) = 0;
    goto LABEL_16;
  }

  if (!v9 && !v8[23])
  {
    v10 = objc_msgSend_newObjectUUIDWithOffset_(v8, v5, 1);
    objc_msgSend_setTitleUUID_(*(a1 + 32), v11, v10);

    v8 = *(a1 + 32);
  }

  if (!v8[20] && !v8[22])
  {
    v12 = objc_msgSend_newObjectUUIDWithOffset_(v8, v5, 2);
    objc_msgSend_setCaptionUUID_(*(a1 + 32), v13, v12);
LABEL_16:
  }

LABEL_17:
  if (*(a1 + 40) == 1)
  {
    objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(a1 + 32) + 160), v5, *(a1 + 32), *(a1 + 41));
    v38 = *(a1 + 32);
    v39 = *(v38 + 168);
    v40 = *(a1 + 41);

    objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(v39, v37, v38, v40);
  }
}

_BYTE *sub_276658080(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276658138();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_276658150(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2766581AC(exception, a1);
  __cxa_throw(exception, off_27A6CC2B8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2766581AC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2766581E0(uint64_t a1, CFStringRef theString)
{
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v4 = (a1 + 128);
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v4[1] = CStringPtr;
  if (!CStringPtr)
  {
    maxBufLen = 0;
    Length = CFStringGetLength(theString);
    if (Length <= 30 && (v11.location = 0, v11.length = Length, CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, a1, 127, &maxBufLen) == Length))
    {
      *(a1 + maxBufLen) = 0;
      *(a1 + 136) = a1;
    }

    else if (!*(a1 + 136))
    {
      maxBufLen = 0;
      v12.location = 0;
      v12.length = Length;
      if (CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen) == Length)
      {
        v7 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
        *v4 = v7;
        if (v7)
        {
          usedBufLen = 0;
          v13.location = 0;
          v13.length = Length;
          CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, v7, maxBufLen, &usedBufLen);
          if (usedBufLen == maxBufLen)
          {
            *(*(a1 + 128) + usedBufLen) = 0;
            *(a1 + 136) = *(a1 + 128);
          }
        }
      }
    }
  }

  return a1;
}

NSString *sub_276660350()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

NSString *sub_27666037C()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

void sub_276661694(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_postNotificationName_object_(v5, v4, @"TSDLayoutsChangedForCanvasNotification", *(a1 + 32));
}

void sub_276664E24(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_276664EDC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_276666304(void *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = a3[2];
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = *(a3 + 2);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(a3 + 2) = v15 + 1;
          objc_msgSend_saveToArchive_archiver_(v13, v9, *&v14[2 * v15 + 2], v6, v21);
          goto LABEL_13;
        }

        if (v16 == *(a3 + 3))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3);
          v14 = a3[2];
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(*a3);
        v18 = *(a3 + 2);
        v19 = a3[2] + 8 * v18;
        *(a3 + 2) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_saveToArchive_archiver_(v13, v20, v17, v6, v21);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v21, v25, 16);
    }

    while (v10);
  }
}

uint64_t sub_2766664B4(void *a1, const char *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, v5);
  if (v5 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = [TSDInfoGeometry alloc];
      v11 = objc_msgSend_initWithArchive_(v9, v10, *(*(a3 + 16) + v8));
      objc_msgSend_addObject_(v7, v12, v11);

      v8 += 8;
      --v5;
    }

    while (v5);
  }

  v13 = objc_msgSend_initWithArray_(a1, v6, v7);

  return v13;
}

double TSDPointOnCurve(float64x2_t *a1, double a2)
{
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(*a1, 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

void sub_276667338(float64x2_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = 1.0 - a3;
  *a2 = sub_2766699B0(a1, 1.0 - a3, a3, 1.0 - a3, a3, 1.0 - a3, a3);
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_2766699B0(a1, v8, a3, v8, a3, 1.0 - a4, a4);
  *(a2 + 24) = v10;
  *(a2 + 32) = sub_2766699B0(a1, v8, a3, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 40) = v11;
  *(a2 + 48) = sub_2766699B0(a1, 1.0 - a4, a4, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 56) = v12;
}

uint64_t sub_27666740C(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a1[1];
  v6 = a1[2] - *a1;
  v7 = a1[3] - v5;
  v8 = a2[1];
  v9 = a2[2] - *a2;
  v10 = a2[3] - v8;
  v11 = (v7 * (*a2 - *a1) + (v5 - v8) * v6) / (v10 * v6 - v9 * v7);
  *a4 = v11;
  if (v11 >= 0.0)
  {
    v13 = v11 == 1.0;
    v12 = v11 >= 1.0;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (!v13 && v12)
  {
    return 0;
  }

  v14 = (v10 * (*a1 - *a2) + (a2[1] - a1[1]) * v9) / (v7 * v9 - v6 * v10);
  *a3 = v14;
  if (v14 >= 0.0)
  {
    v16 = v14 == 1.0;
    v15 = v14 >= 1.0;
  }

  else
  {
    v15 = 1;
    v16 = 0;
  }

  if (!v16 && v15)
  {
    return 0;
  }

  v17 = a1[1];
  *a5 = *a1 + v14 * v6;
  a5[1] = v17 + *a3 * v7;
  return 1;
}

double sub_2766674B8(double *a1, double a2, double a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 - a1[1];
  v6 = v4 - *a1;
  v7 = v6 * v6 + v5 * v5;
  v8 = (1.0 / sqrtf(v7));
  return a3 * -(v6 * v8) + v5 * v8 * a2 - (v3 * -(v6 * v8) + v5 * v8 * v4);
}

double sub_276667504(double *a1)
{
  if (*a1 == a1[2] && a1[1] == a1[3])
  {
    return 0.0;
  }

  TSUSubtractPoints();
  TSUSubtractPoints();
  TSUDotPoints();
  TSUDistanceSquared();

  TSUClamp();
  return result;
}

double sub_2766675CC(float64x2_t *a1, double a2, double a3, double a4)
{
  v14 = a4 * a4;
  v5 = 1.0;
  v6 = 0.0;
  while (1)
  {
    v7 = (v5 - v6) * 0.125;
    v8 = 0.0;
    if (v6 <= v5)
    {
      v9 = 3.40282347e38;
      v10 = v6;
      do
      {
        TSDPointOnCurve(a1, v10);
        TSUSubtractPoints();
        TSUPointSquaredLength();
        if (v11 < v9)
        {
          v9 = v11;
          v8 = v10;
        }

        v10 = v7 + v10;
      }

      while (v10 <= v5);
    }

    TSDPointOnCurve(a1, v6);
    TSDPointOnCurve(a1, v5);
    TSUSubtractPoints();
    TSUPointSquaredLength();
    if (v12 < v14)
    {
      break;
    }

    v6 = fmax(v8 - v7, 0.0);
    v5 = fmin(v7 + v8, 1.0);
  }

  return v8;
}

double sub_2766676F0(float64x2_t *a1, double *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v5 = a2[3];
  v7 = v5 - a2[1];
  v8 = v6 - *a2;
  v9 = v8 * v8 + v7 * v7;
  v10 = (1.0 / sqrtf(v9));
  v11 = v7 * v10;
  v12 = -(v8 * v10);
  v13 = v5 * v12 + v11 * v6;
  v14 = a1->f64[1] * v12 + v11 * a1->f64[0] - v13;
  v36.f64[0] = 0.0;
  v36.f64[1] = v14;
  v15 = a1[1].f64[1] * v12 + v11 * a1[1].f64[0] - v13;
  v37 = 0x3FD5555555555555;
  v38 = v15;
  v16 = a1[2].f64[1] * v12 + v11 * a1[2].f64[0] - v13;
  v39 = 0x3FE5555555555555;
  v40 = v16;
  v17 = v12 * a1[3].f64[1] + v11 * a1[3].f64[0] - v13;
  v41 = 0x3FF0000000000000;
  v42 = v17;
  v18 = v15 * 9.0 + v14 * -3.0 + v16 * -9.0 + v17 * 3.0;
  v19 = v15 * -12.0 + v14 * 6.0 + v16 * 6.0;
  v20 = sqrt((v15 * 3.0 + v14 * -3.0) * (v18 * -4.0) + v19 * v19);
  v21 = v18 + v18;
  v22 = (-v19 - v20) / v21;
  v23 = TSDPointOnCurve(&v36, (v20 - v19) / v21);
  v25 = v24;
  v26 = TSDPointOnCurve(&v36, v22);
  v27 = fabs(v25);
  v29 = fabs(v28);
  v31 = v26 > 1.0 || v27 < v29 || v26 < 0.0;
  if (!v31 || (v23 >= 0.0 ? (v32 = v23 > 1.0) : (v32 = 1), v32))
  {
    v33 = v26 < 0.0 || v26 > 1.0;
    v23 = v26;
    v27 = v29;
    if (v33)
    {
      return 3.40282347e38;
    }
  }

  *a3 = TSDPointOnCurve(a1, v23);
  *(a3 + 8) = v34;
  return v27;
}

uint64_t sub_2766678EC(const CGPath *a1)
{
  info = 0;
  CGPathApply(a1, &info, sub_276667928);
  return info;
}

uint64_t sub_276667938(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*result == v2)
  {
    *(result + 16) = *a2;
    *(result + 72) = *(*(a2 + 8) + 48);
    *(result + 56) = *(*(a2 + 8) + 32);
    *(result + 40) = *(*(a2 + 8) + 16);
    *(result + 24) = **(a2 + 8);
  }

  *(result + 8) = v2 + 1;
  return result;
}

uint64_t sub_276667988(const CGPath *a1, uint64_t a2, _OWORD *a3)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  info = a2;
  CGPathApply(a1, &info, sub_276667938);
  if (!a3)
  {
    return DWORD2(v7);
  }

  *a3 = v8;
  result = DWORD2(v7);
  if (DWORD2(v7) == 3)
  {
    v5 = v10;
    a3[1] = v9;
    a3[2] = v5;
  }

  return result;
}

__n128 sub_276667A04(void *a1, const char *a2, __n128 *a3, __n128 *a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_elementAtIndex_associatedPoints_(a1, a2, 0, a3);
  v9 = objc_msgSend_elementCount(a1, v7, v8);
  v11 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v10, v9 - 1, v14);
  v12 = v14;
  if (v11 == 2)
  {
    v12 = v15;
  }

  if (v11 == 3)
  {
    v12 = a3;
  }

  result = *v12;
  *a4 = *v12;
  return result;
}

void sub_276667AAC(void *a1, uint64_t a2, void *a3, void *a4, char a5, int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v52 = objc_msgSend_count(v10, v11, v12);
  v56 = a1;
  v15 = objc_msgSend_elementCount(a1, v13, v14);
  v18 = objc_msgSend_elementCount(v9, v16, v17);
  if (v15 < 2)
  {
    goto LABEL_46;
  }

  v20 = v18;
  if (v18 < 2)
  {
    goto LABEL_46;
  }

  v21 = a6 == 0;
  if (a6)
  {
    v22 = v15 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v15;
  }

  else
  {
    v23 = -1;
  }

  v24 = -1;
  if (v21)
  {
    v24 = 1;
  }

  v54 = v24;
  v55 = v23;
  while (2)
  {
    v25 = objc_msgSend_elementAtIndex_allPoints_(v56, v19, v22, &v61);
    if (!v25)
    {
      goto LABEL_45;
    }

    if (v25 == 2)
    {
      if (TSUNearlyCollinearPoints() && TSUNearlyCollinearPoints() && (TSURectWithPoints(), TSUPointInRectInclusive()) && TSUPointInRectInclusive())
      {
        v26 = 0;
        v62 = v64;
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 0;
    do
    {
      v28 = objc_msgSend_elementAtIndex_allPoints_(v9, v19, v27, &v57);
      if (!v28)
      {
        goto LABEL_42;
      }

      if (v28 == 2)
      {
        if (TSUNearlyCollinearPoints() && TSUNearlyCollinearPoints() && (TSURectWithPoints(), TSUPointInRectInclusive()) && TSUPointInRectInclusive())
        {
          v30 = 0;
          v58 = v60;
          if (!v26)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v30 = 1;
          if (!v26)
          {
LABEL_37:
            if (v30)
            {
              v47 = &v57;
              v48 = &v61;
              v49 = v27;
              v50 = v22;
              v51 = 1;
LABEL_40:
              sub_276667EE0(v47->f64, v48->f64, v49, v50, v51, v10);
              goto LABEL_42;
            }

            sub_276668200(v61.f64, &v57, v22, v27, v10);
            goto LABEL_42;
          }
        }
      }

      else
      {
        v30 = 0;
        if (!v26)
        {
          goto LABEL_37;
        }
      }

      if (!v30)
      {
        v47 = &v61;
        v48 = &v57;
        v49 = v22;
        v50 = v27;
        v51 = 0;
        goto LABEL_40;
      }

      v31 = v10;
      v34 = objc_msgSend_count(v31, v32, v33);
      v66[0] = v61;
      v66[1] = v62;
      v66[2] = v63;
      v66[3] = v64;
      v65[0] = v57;
      v65[1] = v58;
      v65[2] = v59;
      v65[3] = v60;
      sub_27666B52C(v66, v65, v22, v27, 0, v31, 1.0, 0.0, 1.0, 0.0);
      v37 = objc_msgSend_count(v31, v35, v36);
      if (v34 < v37)
      {
        v39 = v37;
        do
        {
          v40 = objc_msgSend_objectAtIndex_(v31, v38, v34);
          objc_msgSend_t(v40, v41, v42);
          v44 = TSDPointOnCurve(&v61, v43);
          objc_msgSend_setPoint_(v40, v45, v46, v44);

          ++v34;
        }

        while (v39 != v34);
      }

LABEL_42:
      ++v27;
    }

    while (v27 != v20);
    if ((a5 & 1) != 0 || v52 >= objc_msgSend_count(v10, v19, v29))
    {
LABEL_45:
      v22 += v54;
      if (v22 == v55)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_46:
}

void sub_276667EE0(double *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = *a1;
  v13 = a1[2];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v19 = a2[2];
  v18 = a2[3];
  v20 = v18 - a2[1];
  v21 = v19 - *a2;
  v22 = v21 * v21 + v20 * v20;
  v23 = (1.0 / sqrtf(v22));
  v24 = v20 * v23;
  v25 = -(v21 * v23);
  v26 = v18 * v25 + v24 * v19;
  v61 = a1[3];
  v62 = a1[1];
  v63.f64[0] = 0.0;
  v63.f64[1] = v62 * v25 + v24 * v12 - v26;
  v64 = 0x3FD5555555555555;
  v65 = v61 * v25 + v24 * v13 - v26;
  v59 = v17;
  v60 = v15;
  v66 = 0x3FE5555555555555;
  v67 = v15 * v25 + v24 * v14 - v26;
  v68 = 0x3FF0000000000000;
  v69 = v17 * v25 + v24 * v16 - v26;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sub_27666BB0C(&v63, &v63, v27, 1.0);
  v30 = objc_msgSend_count(v27, v28, v29);
  if (v30 >= 1)
  {
    v32 = v30;
    v33 = 0;
    v58 = v14;
    do
    {
      v34 = objc_msgSend_objectAtIndex_(v27, v31, v33);
      objc_msgSend_doubleValue(v34, v35, v36);
      v38 = v37;

      v40 = v38 * (v38 * (v16 * v38 + (1.0 - v38) * v14) + (1.0 - v38) * (v14 * v38 + (1.0 - v38) * v13)) + (1.0 - v38) * (v38 * (v14 * v38 + (1.0 - v38) * v13) + (1.0 - v38) * (v13 * v38 + (1.0 - v38) * v12));
      v41 = a2[2] - *a2;
      v42 = v40 - *a2;
      if (v41 * v42 > -0.001)
      {
        v39 = 1.0 - v38;
        v43 = v38 * (v38 * (v59 * v38 + v39 * v60) + v39 * (v60 * v38 + v39 * v61)) + v39 * (v38 * (v60 * v38 + v39 * v61) + v39 * (v61 * v38 + v39 * v62));
        v44 = a2[1];
        v45 = a2[3] - v44;
        v46 = v45 * v45 + v41 * v41;
        v47 = (v43 - v44) * (v43 - v44) + v42 * v42;
        if (v45 * (v43 - v44) > -0.001 && v47 <= v46)
        {
          if (!v11)
          {
            break;
          }

          v49 = v13;
          v50 = v16;
          v51 = v12;
          v52 = sqrt(v47) / sqrt(v46);
          v53 = [TSDPathIntersection alloc];
          if (a5)
          {
            v55 = objc_msgSend_initWithSegment_atT_onSegmentB_atT_atPoint_(v53, v54, a4, a3, v52, v38, v40, v43);
          }

          else
          {
            v55 = objc_msgSend_initWithSegment_atT_onSegmentB_atT_atPoint_(v53, v54, a3, a4, v38, v52, v40, v43);
          }

          v57 = v55;
          objc_msgSend_addObject_(v11, v56, v55);

          v12 = v51;
          v16 = v50;
          v13 = v49;
          v14 = v58;
        }
      }

      ++v33;
    }

    while (v32 != v33);
  }
}

void sub_276668200(double *a1, double *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = 0.0;
  v15 = 0.0;
  v13 = *MEMORY[0x277CBF348];
  if (sub_27666740C(a1, a2, &v15, &v14, &v13))
  {
    v8 = a5;
    v9 = [TSDPathIntersection alloc];
    v12 = objc_msgSend_initWithSegment_atT_onSegmentB_atT_atPoint_(v9, v10, a3, a4, v15, v14, v13);
    objc_msgSend_addObject_(v8, v11, v12);
  }
}

void sub_2766682D4(void *a1, uint64_t a2, double *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v15 = *MEMORY[0x277CBF348];
  v9 = objc_msgSend_elementCount(a1, v7, v8);
  if (v9)
  {
    v11 = v9;
    for (i = 0; v11 != i; ++i)
    {
      v13 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v10, i, v17, v15, v16);
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          sub_276667EE0(&v16, a3, i, -1, 0, v6);
          v14 = v17[2];
          goto LABEL_13;
        }

        if (v13 == 3)
        {
          v17[0] = v15;
          goto LABEL_10;
        }
      }

      else
      {
        if (v13)
        {
          if (v13 != 1)
          {
            continue;
          }

LABEL_10:
          sub_276668200(&v16, a3, i, -1, v6);
          v14 = v17[0];
LABEL_13:
          v16 = v14;
          continue;
        }

        v15 = v17[0];
        v16 = v17[0];
      }
    }
  }
}

uint64_t sub_27666840C(uint64_t result, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a4 < a5)
  {
    v6 = a4;
    v8 = result;
    do
    {
      result = objc_msgSend_elementAtIndex_associatedPoints_(a3, a2, v6, &v10);
      if (result > 1)
      {
        if (result == 2)
        {
          result = objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v8, a2, v9, v14, v15, v10, v11, v12, v13);
        }

        else if (result == 3)
        {
          result = objc_msgSend_closePath(v8, a2, v9);
        }
      }

      else if (result)
      {
        if (result == 1)
        {
          result = objc_msgSend_lineToPoint_(v8, a2, v9, v10, v11);
        }
      }

      else
      {
        result = objc_msgSend_moveToPoint_(v8, a2, v9, v10, v11);
      }

      ++v6;
    }

    while (a5 != v6);
  }

  return result;
}

void sub_2766684FC(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v37 = a2;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v15 = objc_msgSend_elementCount(v12, v13, v14);
  v17 = v15;
  v19 = a6 < 1 || v15 <= a6;
  if (v19)
  {
    v20 = -1;
  }

  else
  {
    v20 = a6;
  }

  if (a7 <= 0)
  {
    a7 = v15 + 1;
  }

  if (v20 != a7)
  {
    if (v19)
    {
      goto LABEL_41;
    }

    v25 = objc_msgSend_elementAtIndex_allPoints_(v12, v16, a6, &v47);
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        sub_276667338(&v47, &v39, v37, 1.0);
        if ((a8 & 1) == 0)
        {
          objc_msgSend_moveToPoint_(a1, v29, v30, v39, v40);
        }

        objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(a1, v29, v30, v45, v46, v41, v42, v43, v44, *&v37);
        goto LABEL_41;
      }

      if (v25 != 3)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (!v25)
      {
        if ((a8 & 1) == 0)
        {
          objc_msgSend_moveToPoint_(a1, v16, v26, *&v47);
        }

        goto LABEL_41;
      }

      if (v25 != 1)
      {
LABEL_41:
        if (a7 >= v17)
        {
          v31 = v17;
        }

        else
        {
          v31 = a7;
        }

        v32 = v20 + 1;
        if (v32 >= v31)
        {
LABEL_59:
          if (a7 < 1 || a7 >= v17)
          {
            goto LABEL_67;
          }

          v36 = objc_msgSend_elementAtIndex_allPoints_(v12, v16, a7, &v47);
          if (v36 != 3)
          {
            if (v36 == 2)
            {
              sub_276667338(&v47, &v39, 0.0, a3);
LABEL_66:
              objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(a1, v27, v28, v45, v46, v41, v42, v43, v44, *&v37);
              goto LABEL_67;
            }

            if (v36 != 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          objc_msgSend_lineToPoint_(a1, v23, v24, vmlaq_n_f64(vmulq_n_f64(v48, a3), v47, 1.0 - a3), *&v37);
          goto LABEL_67;
        }

        v33 = 0;
        while (1)
        {
          v34 = objc_msgSend_elementAtIndex_associatedPoints_(v12, v16, v32, &v47, *&v37);
          if (v34 <= 1)
          {
            break;
          }

          if (v34 == 2)
          {
            objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(a1, v16, v35, v49, v50, *&v47, *&v48);
            goto LABEL_58;
          }

          if (v34 == 3)
          {
            if ((v33 & 1) == 0)
            {
              objc_msgSend_lineToPoint_(a1, v16, v35, *&v47);
              v33 = 0;
              goto LABEL_58;
            }

            objc_msgSend_closePath(a1, v16, v35);
            goto LABEL_55;
          }

LABEL_58:
          if (v31 == ++v32)
          {
            goto LABEL_59;
          }
        }

        if (v34)
        {
          if (v34 == 1)
          {
            objc_msgSend_lineToPoint_(a1, v16, v35, *&v47);
          }

          goto LABEL_58;
        }

        objc_msgSend_moveToPoint_(a1, v16, v35, *&v47);
LABEL_55:
        v33 = 1;
        goto LABEL_58;
      }
    }

    if ((a8 & 1) == 0)
    {
      objc_msgSend_moveToPoint_(a1, v16, v26, vmlaq_n_f64(vmulq_n_f64(v48, v37), v47, 1.0 - v37));
    }

    objc_msgSend_lineToPoint_(a1, v16, v26, *&v48, *&v37);
    goto LABEL_41;
  }

  if (a3 < v37 || v20 >= v15)
  {
    LOBYTE(v19) = 1;
  }

  if (v19)
  {
    goto LABEL_67;
  }

  v22 = objc_msgSend_elementAtIndex_allPoints_(v12, v16, v20, &v47, v37, a3);
  switch(v22)
  {
    case 3:
      goto LABEL_22;
    case 2:
      sub_276667338(&v47, &v39, v37, a3);
      if ((a8 & 1) == 0)
      {
        objc_msgSend_moveToPoint_(a1, v27, v28, v39, v40);
      }

      goto LABEL_66;
    case 1:
LABEL_22:
      if ((a8 & 1) == 0)
      {
        objc_msgSend_moveToPoint_(a1, v23, v24, vmlaq_n_f64(vmulq_n_f64(v48, v37), v47, 1.0 - v37));
      }

      goto LABEL_64;
  }

LABEL_67:
}

id sub_27666883C(void *a1, double a2, double a3, uint64_t a4, int a5, int a6)
{
  v11 = objc_alloc_init(objc_opt_class());
  objc_msgSend_appendBezierPath_fromSegment_t_toSegment_t_withoutMove_(v11, v12, a1, a5, a6, 0, a2, a3);
  v15 = objc_msgSend_windingRule(a1, v13, v14);
  objc_msgSend_setWindingRule_(v11, v16, v15);
  v19 = objc_msgSend_lineCapStyle(a1, v17, v18);
  objc_msgSend_setLineCapStyle_(v11, v20, v19);
  v23 = objc_msgSend_lineJoinStyle(a1, v21, v22);
  objc_msgSend_setLineJoinStyle_(v11, v24, v23);
  objc_msgSend_lineWidth(a1, v25, v26);
  objc_msgSend_setLineWidth_(v11, v27, v28);
  return v11;
}

double sub_2766688F4(void *a1, const char *a2, double *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v23 = *MEMORY[0x277CBF348];
  v6 = objc_msgSend_elementCount(a1, a2, a3);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 3.40282347e38;
    while (1)
    {
      v11 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v7, v9, v25);
      if (v11 == 2)
      {
        break;
      }

      if (v11 == 3)
      {
        v12 = v23;
LABEL_9:
        v25[0] = v12;
        v11 = 2;
      }

      v15 = a3[2];
      v14 = a3[3];
      v16 = v14 - a3[1];
      v17 = v15 - *a3;
      v18 = v17 * v17 + v16 * v16;
      v19 = (1.0 / sqrtf(v18));
      v20 = vabdd_f64(*(v25 + 1) * -(v17 * v19) + v16 * v19 * *v25, v14 * -(v17 * v19) + v16 * v19 * v15);
      if (v20 < v10)
      {
        v10 = v20;
        v5 = *v25;
      }

      v24 = v25[0];
      if (!v11)
      {
        v23 = v25[0];
      }

      if (v8 == ++v9)
      {
        return v5;
      }
    }

    v22[0] = 0.0;
    v22[1] = 0.0;
    v13 = sub_2766676F0(&v24, a3, v22);
    if (v13 < v10)
    {
      v10 = v13;
      v5 = v22[0];
    }

    v12 = v25[2];
    goto LABEL_9;
  }

  return v5;
}

double sub_276668A7C(void *a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v18 = *MEMORY[0x277CBF348];
  v6 = objc_msgSend_elementCount(a1, a2, a3);
  if (v6)
  {
    v7 = v6;
    TSUSubtractPoints();
    TSUNormalizePoint();
    v9 = 0;
    v10 = -2.0;
    do
    {
      v11 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v8, v9, v20);
      v12 = v11;
      if (v11 == 2)
      {
        v17[0] = 0.0;
        v17[1] = 0.0;
        sub_276668C20(&v19, a3, v17);
        if (v13 > v10)
        {
          v10 = v13;
          v5 = v17[0];
        }

        v20[0] = v20[2];
      }

      else if (v11 == 3)
      {
        v20[0] = v18;
        v12 = 2;
      }

      v14 = *v20;
      TSUSubtractPoints();
      TSUNormalizePoint();
      TSUDotPoints();
      if (v15 > v10)
      {
        v10 = v15;
        v5 = v14;
      }

      v19 = v20[0];
      if (!v12)
      {
        v18 = v20[0];
      }

      ++v9;
    }

    while (v7 != v9);
  }

  return v5;
}

void sub_276668C20(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUDotPoints();
  v6 = v5;
  v26.f64[0] = 0.0;
  v26.f64[1] = v5;
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUDotPoints();
  v8 = v7;
  v27 = 0x3FD5555555555555;
  v28 = v7;
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUDotPoints();
  v10 = v9;
  v29 = 0x3FE5555555555555;
  v30 = v9;
  TSUSubtractPoints();
  TSUNormalizePoint();
  TSUDotPoints();
  v31 = 0x3FF0000000000000;
  v32 = v11;
  v12 = v8 * 9.0 + v6 * -3.0 + v10 * -9.0 + v11 * 3.0;
  v13 = v8 * -12.0 + v6 * 6.0 + v10 * 6.0;
  v14 = sqrt((v8 * 3.0 + v6 * -3.0) * (v12 * -4.0) + v13 * v13);
  v15 = (-v13 - v14) / (v12 + v12);
  v16 = TSDPointOnCurve(&v26, (v14 - v13) / (v12 + v12));
  v18 = v17;
  v19 = TSDPointOnCurve(&v26, v15);
  if ((v19 < 0.0 || v18 > v20 || v19 > 1.0) && v16 >= 0.0 && v16 <= 1.0)
  {
    goto LABEL_19;
  }

  if (v19 >= 0.0 && v19 <= 1.0)
  {
    v16 = v19;
LABEL_19:
    *a3 = TSDPointOnCurve(a1, v16);
    *(a3 + 8) = v25;
  }
}

uint64_t sub_276668E90(void *a1, const char *a2, double *a3, uint64_t a4, double a5, double a6)
{
  objc_msgSend_length(a1, a2, a3);
  if (v13 <= 0.0 || (v14 = v13, objc_msgSend_elementCount(a1, v11, v12) <= 0))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSUBezierPath(Distortion) elementPercentage:forOverallPercentage:startingElementIndex:lengthToStartingElement:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathDistortion.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1284, 0, "Can't calculate a percentage of a path with no length or elements.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v29, v30);
    a4 = 0;
    v31 = 0.0;
  }

  else
  {
    v16 = v14 * a5;
    if (a5 <= 0.0)
    {
      if (objc_msgSend_elementCount(a1, v11, v15) < 1)
      {
        a4 = 0;
      }

      else
      {
        a4 = 0;
        do
        {
          objc_msgSend_lengthOfElement_(a1, v33, a4);
          if (v35 > 0.0)
          {
            break;
          }

          ++a4;
        }

        while (a4 < objc_msgSend_elementCount(a1, v33, v34));
      }

      objc_msgSend_lengthOfElement_(a1, v33, a4);
      v31 = v16 / v36;
    }

    else
    {
      v17 = v16 - a6;
      v19 = objc_msgSend_elementCount(a1, v11, v15);
      if (v19 <= a4)
      {
        do
        {
LABEL_7:
          if (v19-- < 1)
          {
            break;
          }

          objc_msgSend_lengthOfElement_(a1, v18, v19);
        }

        while (v22 <= 0.0);
        objc_msgSend_lengthOfElement_(a1, v18, v19);
        v23 = v17 + v20;
        a4 = v19;
      }

      else
      {
        while (1)
        {
          objc_msgSend_lengthOfElement_(a1, v18, a4);
          v17 = v17 - v20;
          if (v17 < 0.0)
          {
            break;
          }

          if (v19 == ++a4)
          {
            goto LABEL_7;
          }
        }

        v23 = v20 + v17;
      }

      v31 = v23 / v20;
    }
  }

  *a3 = v31;
  return a4;
}

float64_t sub_27666905C(void *a1, const char *a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277CBF348];
  v6 = objc_msgSend_elementAtIndex_allPoints_(a1, a2, a3, &v21);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v10 = a4;
      if (a4 < 0.0 || a4 > 1.0)
      {
        objc_msgSend_rawGradientAt_fromElement_(a1, v7, a3, a4);
        TSUMultiplyPointScalar();
        TSUAddPoints();
        return v13;
      }

      __asm { FMOV            V3.2D, #3.0 }

      v12 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(v22, _Q3), a4), 1.0 - a4), 1.0 - a4), vmulq_n_f64(vmulq_n_f64(v21, 1.0 - a4), 1.0 - a4), 1.0 - a4), vmulq_n_f64(vmulq_n_f64(vmulq_f64(v23, _Q3), a4), a4), 1.0 - a4);
      v11 = vmulq_n_f64(vmulq_n_f64(v24, a4), a4);
      goto LABEL_9;
    }

    _ZF = v6 == 3;
  }

  else
  {
    if (!v6)
    {
      return v21.f64[0];
    }

    _ZF = v6 == 1;
  }

  v9 = *&v19;
  if (!_ZF)
  {
    return v9;
  }

  v10 = 1.0 - a4;
  v11 = v21;
  v12 = vmulq_n_f64(v22, a4);
LABEL_9:
  *&v9 = *&vmlaq_n_f64(v12, v11, v10);
  return v9;
}

uint64_t sub_2766691D8(void *a1, const char *a2, uint64_t a3, double a4)
{
  objc_msgSend_length(a1, a2, a3);
  if (v8 <= 0.0)
  {
    if (objc_msgSend_isEmpty(a1, v6, v7))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSUBezierPath(Distortion) pointAt:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathDistortion.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1364, 0, "Can't get a point on an empty path.");

      return objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v19, v20);
    }

    else
    {
      return objc_msgSend_currentPoint(a1, v12, v13);
    }
  }

  else
  {
    v21 = 0.0;
    v9 = objc_msgSend_elementPercentage_forOverallPercentage_(a1, v6, &v21, a4);
    return objc_msgSend_pointAt_fromElement_(a1, v10, v9, v21);
  }
}

uint64_t sub_2766692D8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_rawGradientAt_fromElement_(a1, a2, a3);

  return TSUNormalizePoint();
}

uint64_t sub_276669300(void *a1, const char *a2)
{
  v6 = 0.0;
  v3 = objc_msgSend_elementPercentage_forOverallPercentage_(a1, a2, &v6);
  return objc_msgSend_gradientAt_fromElement_(a1, v4, v3, v6);
}

double sub_276669344(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, double *a6, double a7, double a8)
{
  v29 = 0.0;
  v15 = objc_msgSend_elementPercentage_forOverallPercentage_(a1, a2, &v29);
  if (v15 < a3)
  {
    objc_msgSend_elementPercentageFromElement_forOverallPercentage_(a1, v16, a3, a7);
    v29 = v17;
LABEL_6:
    objc_msgSend_pointAt_fromElement_(a1, v16, a3);
    goto LABEL_7;
  }

  if (v15 <= a4)
  {
    a3 = v15;
    goto LABEL_6;
  }

  objc_msgSend_elementPercentageFromElement_forOverallPercentage_(a1, v16, a4, a7);
  v29 = v18;
  a3 = a4;
  objc_msgSend_pointAt_fromElement_(a1, v19, a4);
LABEL_7:
  v22 = v21;
  objc_msgSend_gradientAt_fromElement_(a1, v20, a3, v29);
  v24 = v23;
  objc_msgSend_lineWidth(a1, v25, v26);
  result = v22 - v24 * (a8 * v27);
  *a5 = a3;
  *a6 = v29;
  return result;
}

double sub_276669450(void *a1, const char *a2, uint64_t a3, double a4)
{
  objc_msgSend_length(a1, a2, a3);
  v9 = v8;
  if (a3 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      objc_msgSend_lengthOfElement_(a1, v7, v10);
      v11 = v11 + v12;
      ++v10;
    }

    while (a3 != v10);
  }

  objc_msgSend_lengthOfElement_(a1, v7, a3);
  return (v9 * a4 - v11) / v13;
}

uint64_t sub_2766694E4(void *a1, const char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  result = objc_msgSend_elementAtIndex_allPoints_(a1, a2, a3, &v18);
  if (result > 1)
  {
    if (result == 2)
    {
      __asm
      {
        FMOV            V4.2D, #-3.0
        FMOV            V5.2D, #3.0
      }
    }
  }

  else if (!result)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSUBezierPath(Distortion) rawGradientAt:fromElement:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathDistortion.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1449, 0, "-rawGradientAt:fromElement: can't handle move to.");

    return objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return result;
}

uint64_t sub_276669694(void *a1, const char *a2)
{
  v9 = 0.0;
  v3 = objc_msgSend_elementPercentage_forOverallPercentage_(a1, a2, &v9);
  objc_msgSend_rawGradientAt_fromElement_(a1, v4, v3, v9);
  objc_msgSend_length(a1, v5, v6);
  objc_msgSend_lengthOfElement_(a1, v7, v3);
  return TSUMultiplyPointScalar();
}

uint64_t sub_27666971C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_rawGradientAt_fromElement_(a1, a2, a3);
  objc_msgSend_length(a1, v5, v6);
  objc_msgSend_lengthOfElement_(a1, v7, a3);

  return TSUMultiplyPointScalar();
}

double sub_276669790(void *a1, const char *a2)
{
  v8 = 0.0;
  v3 = objc_msgSend_elementPercentage_forOverallPercentage_(a1, a2, &v8);
  objc_msgSend_curvatureAt_fromElement_(a1, v4, v3, v8);
  v6 = -0.5;
  if (v5 >= -0.5)
  {
    v6 = v5;
  }

  if (v5 <= 0.5)
  {
    return v6;
  }

  else
  {
    return 0.5;
  }
}

double sub_2766697EC(void *a1, const char *a2, uint64_t a3, double a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_elementAtIndex_allPoints_(a1, a2, a3, &v20);
  if (v5 == 2)
  {
    v15 = 0.01;
    if (a4 >= 0.01)
    {
      v15 = a4;
    }

    if (v15 > 0.99)
    {
      v15 = 0.99;
    }

    v16 = (v15 * (v15 * (v26 - v24) + (1.0 - v15) * (v24 - v22)) + (1.0 - v15) * (v15 * (v24 - v22) + (1.0 - v15) * (v22 - v20))) * 3.0;
    v17 = (v15 * (v15 * (v27 - v25) + (1.0 - v15) * (v25 - v23)) + (1.0 - v15) * (v15 * (v25 - v23) + (1.0 - v15) * (v23 - v21))) * 3.0;
    v18 = v16 * ((v15 * (v27 - v25 - (v25 - v23)) + (1.0 - v15) * (v25 - v23 - (v23 - v21))) * 6.0) - v17 * ((v15 * (v26 - v24 - (v24 - v22)) + (1.0 - v15) * (v24 - v22 - (v22 - v20))) * 6.0);
    return v18 / pow(v17 * v17 + v16 * v16, 1.5);
  }

  else
  {
    v7 = 0.0;
    if (!v5)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSUBezierPath(Distortion) curvatureAt:fromElement:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathDistortion.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1500, 0, "-curvatureAt:fromElement: can't handle move to.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
    }
  }

  return v7;
}

double sub_2766699B0(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_n_f64(vmulq_n_f64(v8, a7), v7, a6);
  *&result = *&vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a7), v8, a6), a5), v9, a4), a3), vmlaq_n_f64(vmulq_n_f64(v9, a5), vmlaq_n_f64(vmulq_n_f64(v7, a7), *a1, a6), a4), a2);
  return result;
}

void sub_2766699F4(float64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v67 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a5;
  v56 = 0;
  v57 = 0.0;
  objc_msgSend_transformedTotalCoordinate_betweenElement_andElement_getElement_getPercentage_(v13, v15, a3, a4, &v56, &v57, a1->f64[0], a1->f64[1]);
  v54 = v16;
  v55 = v17;
  v60.f64[0] = v16;
  v60.f64[1] = v17;
  objc_msgSend_curvatureAt_fromElement_(v13, v18, v56, v57);
  objc_msgSend_myGradientAt_fromElement_(v13, v19, v56, v57);
  objc_msgSend_transformedTotalCoordinate_betweenElement_andElement_getElement_getPercentage_(v13, v20, a3, a4, &v56, &v57, a1[3].f64[0], a1[3].f64[1]);
  v52 = v21;
  v53 = v22;
  v65 = v21;
  v66 = v22;
  objc_msgSend_curvatureAt_fromElement_(v13, v23, v56, v57);
  objc_msgSend_myGradientAt_fromElement_(v13, v24, v56, v57);
  objc_msgSend_lineWidth(v13, v25, v26);
  TSUMultiplyPointScalar();
  TSUNormalizePoint();
  TSUAddPoints();
  v50 = v28;
  v51 = v27;
  v61 = v27;
  v62 = v28;
  TSUMultiplyPointScalar();
  TSUNormalizePoint();
  TSUAddPoints();
  v32 = v31;
  v34 = v33;
  v63 = v31;
  v64 = v33;
  if (a6 && (a6 > 19 || (TSUSubtractPoints(), TSUPointSquaredLength(), v35 <= 0.5)) || (TSDPointOnCurve(&v60, 0.33), v36 = TSDPointOnCurve(a1, 0.33), objc_msgSend_transformedTotalCoordinate_betweenElement_andElement_getElement_getPercentage_(v13, v37, a3, a4, &v56, &v57, v36), TSUSubtractPoints(), TSUPointSquaredLength(), v39 = v38 + 0.0, TSDPointOnCurve(&v60, 0.5), v40 = TSDPointOnCurve(a1, 0.5), objc_msgSend_transformedTotalCoordinate_betweenElement_andElement_getElement_getPercentage_(v13, v41, a3, a4, &v56, &v57, v40), TSUSubtractPoints(), TSUPointSquaredLength(), v43 = v39 + v42, TSDPointOnCurve(&v60, 0.66), v44 = TSDPointOnCurve(a1, 0.66), objc_msgSend_transformedTotalCoordinate_betweenElement_andElement_getElement_getPercentage_(v13, v45, a3, a4, &v56, &v57, v44), TSUSubtractPoints(), TSUPointSquaredLength(), v43 + v46 <= 0.2))
  {
    if (a7)
    {
      objc_msgSend_moveToPoint_(v14, v29, v30, v54, v55);
    }

    else
    {
      objc_msgSend_currentPoint(v14, v29, v30);
      TSUSubtractPoints();
      TSUPointSquaredLength();
      if (v49 > 1.0)
      {
        objc_msgSend_lineToPoint_(v14, v47, v48, v54, v55);
      }
    }

    objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v14, v47, v48, v52, v53, v51, v50, v32, v34, *&v50, *&v51);
  }

  else
  {
    sub_276667338(a1, v59, 0.0, 0.5);
    sub_276667338(a1, v58, 0.5, 1.0);
    sub_2766699F4(v59, v13, a3, a4, v14, (a6 + 1), a7);
    sub_2766699F4(v58, v13, a3, a4, v14, (a6 + 1), 0);
  }
}

void sub_276669E7C(float64x2_t *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v174 = *MEMORY[0x277D85DE8];
  v169 = a2;
  v9 = a3;
  v10 = a5;
  v13 = objc_msgSend_count(v10, v11, v12);
  v16 = v13 - 1;
  if ((v13 - 1) < 2)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v166 = v13 - 1;
  v162 = v9;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = a1[1].f64[0];
  v21 = a1[2].f64[0];
  v22 = a1[3].f64[0];
  v23 = fmin(a1->f64[0], fmin(v20, fmin(v21, v22)));
  v24 = 2 - v13;
  v25 = fmax(a1->f64[0], fmax(v20, fmax(v21, v22)));
  v26 = 1;
  do
  {
    v27 = objc_msgSend_objectAtIndex_(v10, v14, v26);
    objc_msgSend_t(v27, v28, v29);
    v31 = v30;
    if (v30 > v23 && v30 < v25)
    {
      if (!v17)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v170.f64[0] = v31;
      v170.f64[1] = -100.0;
      v171.f64[0] = v31;
      v171.f64[1] = 100.0;
      sub_276667EE0(a1->f64, v170.f64, v26, v26, 0, v17);
    }

    v33 = a1[3].f64[0];
    if (v31 < v33)
    {
      v18 = v26;
    }

    if (v31 > v33)
    {
      v34 = v26;
    }

    else
    {
      v34 = 0;
    }

    if (!v19)
    {
      v19 = v34;
    }

    ++v26;
  }

  while (v24 + v26 != 1);
  v9 = v162;
  v16 = v166;
  if (!v19)
  {
LABEL_23:
    v19 = v16;
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  if (!v17)
  {
LABEL_37:
    v112 = objc_msgSend_objectAtIndex_(v10, v14, v18);
    v114 = objc_msgSend_objectAtIndex_(v10, v113, v19);
    objc_msgSend_t(v112, v115, v116);
    v168 = v117;
    objc_msgSend_t(v114, v118, v119);
    v121 = v120;
    objc_msgSend_skew(v112, v122, v123);
    v125 = v124;
    objc_msgSend_skew(v114, v126, v127);
    v129 = v128;
    objc_msgSend_lineWidth(v169, v130, v131);
    v133 = v132;
    objc_msgSend_length(v169, v134, v135);
    v138 = 0;
    v139 = vdupq_n_s64(0x7FF0000000000000uLL);
    v140 = vdupq_lane_s64(v168, 0);
    v141 = vdupq_lane_s64(COERCE__INT64(v121 - *&v168), 0);
    v142 = vdupq_lane_s64(COERCE__INT64(v125 + v129), 0);
    v143 = vdupq_lane_s64(COERCE__INT64(-v125), 0);
    v144.f64[0] = NAN;
    v144.f64[1] = NAN;
    v145 = vnegq_f64(v144);
    __asm
    {
      FMOV            V7.2D, #0.5
      FMOV            V16.2D, #1.0
    }

    v149 = v133 / v148;
    do
    {
      f64 = a1[v138].f64;
      v177 = vld2q_f64(f64);
      v151 = vdivq_f64(vsubq_f64(v177.val[0], v140), v141);
      v177.val[0] = vmlaq_f64(v177.val[0], v177.val[1], vmulq_n_f64(vmlaq_f64(v143, v142, vmaxnmq_f64(vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v151, v145), v139), _Q7, v151), _Q16), 0)), v149));
      *f64 = v177.val[0].f64[0];
      a1[v138 + 1].f64[0] = v177.val[0].f64[1];
      v138 += 2;
    }

    while (v138 != 4);
    v152 = objc_msgSend_segment(v112, v136, v137);
    v155 = objc_msgSend_segment(v114, v153, v154);
    sub_2766699F4(a1, v169, v152 + 1, v155, v9, 0, a4);

    goto LABEL_40;
  }

LABEL_24:
  if (!objc_msgSend_count(v17, v14, v15))
  {
    goto LABEL_37;
  }

  v163 = v9;
  objc_msgSend_sortUsingSelector_(v17, v14, sel_compareT_);
  v35 = [TSDPathIntersection alloc];
  v167 = 0.0;
  v156 = objc_msgSend_initWithSegment_atT_atPoint_(v35, v36, v18, 1.0, 1000.0, 0.0);
  objc_msgSend_addObject_(v17, v37, v156);
  v161 = objc_msgSend_count(v17, v38, v39);
  if (v161)
  {
    v41 = 0;
    v157 = v161 - 1;
    v42.f64[0] = NAN;
    v42.f64[1] = NAN;
    v159 = vdupq_n_s64(0x7FF0000000000000uLL);
    v160 = vnegq_f64(v42);
    __asm { FMOV            V0.2D, #0.5 }

    v158 = _Q0;
    do
    {
      v47 = objc_msgSend_objectAtIndex_(v17, v40, v41);
      objc_msgSend_t(v47, v48, v49);
      v50 = a1[1];
      v170 = *a1;
      v171 = v50;
      v51 = a1[3];
      v172 = a1[2];
      v173 = v51;
      v52 = vmlaq_n_f64(vmulq_n_f64(v172, v167), v171, 1.0 - v167);
      v164 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v51, v167), v172, 1.0 - v167), v167), v52, 1.0 - v167), v167), vmlaq_n_f64(vmulq_n_f64(v52, v167), vmlaq_n_f64(vmulq_n_f64(v171, v167), v170, 1.0 - v167), 1.0 - v167), 1.0 - v167);
      v54 = vmlaq_n_f64(vmulq_n_f64(v171, v53), v170, 1.0 - v53);
      v55 = vmlaq_n_f64(vmulq_n_f64(v172, v53), v171, 1.0 - v53);
      v56 = vmlaq_n_f64(vmulq_n_f64(v173, v53), v172, 1.0 - v53);
      v170 = v164;
      v171 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v56, v167), v55, 1.0 - v167), v167), vmlaq_n_f64(vmulq_n_f64(v55, v167), v54, 1.0 - v167), 1.0 - v167);
      v57 = vmlaq_n_f64(vmulq_n_f64(v55, v53), v54, 1.0 - v53);
      v58 = vmlaq_n_f64(vmulq_n_f64(v56, v53), v55, 1.0 - v53);
      v59 = vmlaq_n_f64(vmulq_n_f64(v58, v167), v57, 1.0 - v167);
      v167 = v53;
      v172 = v59;
      v173 = vmlaq_n_f64(vmulq_n_f64(v58, v53), v57, 1.0 - v53);
      objc_msgSend_point(v47, v60, v61);
      v63 = v62;
      v66 = objc_msgSend_segment(v47, v64, v65);
      v69 = objc_msgSend_segment(v47, v67, v68);
      if (v164.f64[0] <= v63)
      {
        if (v41 == v157)
        {
          v71 = v69 + 1;
        }

        else
        {
          v71 = v69;
        }

        v66 -= v41 != v157;
      }

      else
      {
        v71 = v69 + 1;
      }

      v72 = objc_msgSend_objectAtIndex_(v10, v70, v66, v164.f64[0]);
      v74 = objc_msgSend_objectAtIndex_(v10, v73, v71);
      objc_msgSend_t(v72, v75, v76);
      v165 = v77;
      objc_msgSend_t(v74, v78, v79);
      v81 = v80;
      objc_msgSend_skew(v72, v82, v83);
      v85 = v84;
      objc_msgSend_skew(v74, v86, v87);
      v89 = v88;
      objc_msgSend_lineWidth(v169, v90, v91);
      v93 = v92;
      objc_msgSend_length(v169, v94, v95);
      v98 = 0;
      v99 = vdupq_lane_s64(v165, 0);
      v100 = vdupq_lane_s64(COERCE__INT64(v81 - *&v165), 0);
      v101 = vdupq_lane_s64(COERCE__INT64(v85 + v89), 0);
      v102 = vdupq_lane_s64(COERCE__INT64(-v85), 0);
      v104 = v93 / v103;
      do
      {
        v105 = &v170.f64[v98];
        v176 = vld2q_f64(v105);
        v106 = vdivq_f64(vsubq_f64(v176.val[0], v99), v100);
        __asm { FMOV            V17.2D, #1.0 }

        v176.val[0] = vmlaq_f64(v176.val[0], v176.val[1], vmulq_n_f64(vmlaq_f64(v102, v101, vmaxnmq_f64(vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v106, v160), v159), v158, v106), _Q17), 0)), v104));
        *v105 = v176.val[0].f64[0];
        *(&v170 + v98 * 8 + 16) = v176.val[0].f64[1];
        v98 += 4;
      }

      while (v98 != 8);
      v108 = objc_msgSend_segment(v72, v96, v97);
      v111 = objc_msgSend_segment(v74, v109, v110);
      sub_2766699F4(&v170, v169, v108 + 1, v111, v163, 0, a4 & 1);

      LOBYTE(a4) = 0;
      ++v41;
    }

    while (v41 != v161);
  }

  v9 = v163;
LABEL_40:
}

void sub_27666A4B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v11 = a3;
  v9 = objc_msgSend_elementCount(v11, v7, v8);
  objc_msgSend_recursiveSubdivideOntoPath_withScaling_inElementRange_into_(a1, v10, v11, 0, v9 - 1, v6, 0.0, 1.0);
}

void sub_27666A530(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v15 = a5;
  v13 = objc_msgSend_elementCount(v15, v11, v12);
  objc_msgSend_recursiveSubdivideOntoPath_withScaling_inElementRange_into_(a1, v14, v15, 0, v13 - 1, v10, a2, a3);
}

void sub_27666A5C0(void *a1, double a2, double a3, uint64_t a4, void *a5, NSUInteger a6, NSUInteger a7, void *a8)
{
  v124 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a8;
  if ((objc_msgSend_isEmpty(v14, v16, v17) & 1) == 0 && a7)
  {
    v20 = a6 + a7;
    if (a6 + a7 <= objc_msgSend_elementCount(v14, v18, v19))
    {
      v114 = a2;
      v115 = a3;
      v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v34 = [TSDPathCut alloc];
      objc_msgSend_lengthToElement_(v14, v35, a6);
      v37 = v36;
      objc_msgSend_length(v14, v38, v39);
      v42 = objc_msgSend_initWithSegment_atT_withSkew_(v34, v41, a6, v37 / v40, 0.0);
      objc_msgSend_addObject_(v33, v43, v42);

      objc_msgSend_miterLimit(v14, v44, v45);
      v48 = a6 + 1;
      if (v48 < v20)
      {
        v113 = v47 * 0.995;
        v49 = a7 - 1;
        do
        {
          v50 = v48 + 1;
          objc_msgSend_lengthOfElement_(v14, v46, v48 + 1);
          if (v51 >= 0.1)
          {
            objc_msgSend_lengthOfElement_(v14, v46, v48);
            if (v52 >= 0.1)
            {
              objc_msgSend_gradientAt_fromElement_(v14, v46, v48, 1.0);
              TSUNormalizePoint();
              objc_msgSend_gradientAt_fromElement_(v14, v53, v48 + 1, 0.0);
              TSUNormalizePoint();
              TSUDotPoints();
              if (v54 < 0.99)
              {
                v55 = v54;
                objc_msgSend_lengthToElement_(v14, v46, v48 + 1);
                v116 = v56;
                objc_msgSend_length(v14, v57, v58);
                v60 = v59;
                v61 = 0.0;
                if (v50 < v20)
                {
                  TSUMultiplyPointScalar();
                  TSUAddPoints();
                  TSUDotPoints();
                  v63 = -v62;
                  TSURotatePoint90Degrees();
                  TSUDotPoints();
                  v65 = v63 / v64;
                  v66 = acos(fmin(fmax(-v55, -1.0), 1.0));
                  if (1.0 / sin(v66 * 0.5) <= v113)
                  {
                    v61 = v65;
                  }

                  else
                  {
                    v61 = 0.0;
                  }
                }

                v67 = [TSDPathCut alloc];
                v69 = objc_msgSend_initWithSegment_atT_withSkew_(v67, v68, v48, v116 / v60, v61);
                objc_msgSend_addObject_(v33, v70, v69);
              }
            }
          }

          v48 = v50;
          --v49;
        }

        while (v49);
      }

      if (v20 < 1)
      {
LABEL_21:
        objc_msgSend_lengthToElement_(v14, v46, v20);
        v74 = v73;
        objc_msgSend_lengthOfElement_(v14, v75, v20);
        v77 = v74 + v76;
        objc_msgSend_length(v14, v78, v79);
        v81 = v77 / v80;
        v82 = [TSDPathCut alloc];
        v84 = objc_msgSend_initWithSegment_atT_withSkew_(v82, v83, v20, v81, 0.0);
        objc_msgSend_addObject_(v33, v85, v84);
      }

      else
      {
        while (1)
        {
          objc_msgSend_lengthOfElement_(v14, v46, v20);
          if (v71 >= 0.1)
          {
            break;
          }

          if (v20-- <= 1)
          {
            v20 = 0;
            goto LABEL_21;
          }
        }

        objc_msgSend_lengthToElement_(v14, v46, v20);
        v87 = v86;
        objc_msgSend_lengthOfElement_(v14, v88, v20);
        v90 = v87 + v89;
        objc_msgSend_length(v14, v91, v92);
        v94 = v90 / v93;
        v95 = [TSDPathCut alloc];
        v97 = objc_msgSend_initWithSegment_atT_withSkew_(v95, v96, v20, v94, 0.0);
        objc_msgSend_addObject_(v33, v98, v97);

        v120 = *MEMORY[0x277D814D0];
        v121 = v120;
        v122 = v120;
        v123 = v120;
        v119 = *MEMORY[0x277CBF348];
        if (objc_msgSend_elementCount(a1, v99, v100) >= 1)
        {
          v102 = 0;
          v103 = 0;
          do
          {
            v104 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v101, v102, &v121);
            v107 = v104 == 0;
            if (v104)
            {
              v108 = v104;
              if (v104 == 2)
              {
                v121.f64[0] = v114 + v121.f64[0] * v115;
                v122.f64[0] = v114 + v122.f64[0] * v115;
                v123.f64[0] = v114 + v123.f64[0] * v115;
                v117 = v123;
                sub_276669E7C(&v120, v14, v15, v103, v33);
                v120 = v117;
              }

              else
              {
                if (v104 == 3)
                {
                  v121 = v119;
                }

                else
                {
                  v121.f64[0] = v114 + v121.f64[0] * v115;
                }

                TSUSubtractPoints();
                v123 = v121;
                TSUMultiplyPointScalar();
                TSUAddPoints();
                v121.f64[0] = v109;
                v121.f64[1] = v110;
                TSUMultiplyPointScalar();
                TSUAddPoints();
                v122.f64[0] = v111;
                v122.f64[1] = v112;
                v118 = v123;
                sub_276669E7C(&v120, v14, v15, v103, v33);
                v120 = v118;
                if (v108 == 3)
                {
                  objc_msgSend_closePath(v15, v105, v106);
                }
              }
            }

            else
            {
              v121.f64[0] = v114 + v121.f64[0] * v115;
              v119 = v121;
              v120 = v121;
            }

            ++v102;
            v103 = v107;
          }

          while (v102 < objc_msgSend_elementCount(a1, v105, v106));
        }
      }
    }

    else
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSUBezierPath(Distortion) recursiveSubdivideOntoPath:withScaling:inElementRange:into:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathDistortion.m");
      v125.location = a6;
      v125.length = a7;
      v26 = NSStringFromRange(v125);
      v29 = objc_msgSend_elementCount(v14, v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v30, v23, v25, 1738, 0, "Asked to recursively subdivide using a range (%@) beyond the end of a path with element count %zd", v26, v29);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v31, v32);
    }
  }
}

id sub_27666AC20(void *a1, const char *a2, uint64_t a3)
{
  v130 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  objc_msgSend_lineWidth(a1, v5, v6);
  v8 = v7 * 0.5;
  v11 = objc_msgSend_elementCount(a1, v9, v10);
  if (!v11)
  {
    v15 = 1;
    v63 = -1;
    goto LABEL_59;
  }

  v13 = v11;
  v14 = 0;
  v15 = 1;
  v16 = 9.0;
  v17 = -9.0;
  do
  {
    v18 = v15;
    v19 = objc_msgSend_elementAtIndex_allPoints_(a1, v12, v14, &v123);
    v15 = v19 == 0;
    if (!v19)
    {
      goto LABEL_55;
    }

    v20 = v19;
    objc_msgSend_rawGradientAt_fromElement_(a1, v12, v14, 0.0);
    if (v23 <= 0.0)
    {
      v24 = -v8;
    }

    else
    {
      v24 = v8;
    }

    if (v20 == 2)
    {
      v25 = v124 * v16 + v123.f64[0] * -3.0 + v126 * v17 + v128 * 3.0;
      v26 = v124 * -12.0 + v123.f64[0] * 6.0 + v126 * 6.0;
      v27 = v124 * 3.0 + v123.f64[0] * -3.0;
      v28 = v27 * (v25 * -4.0) + v26 * v26;
      if (v28 > 0.0)
      {
        v29 = v28;
        v30 = sqrtf(v29);
        v31 = (-v26 - v30) / (v25 + v25);
        v32 = (v30 - v26) / (v25 + v25);
        if (v32 >= v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = v31;
        }

        if (v32 < v31)
        {
          v31 = v32;
        }

        v34 = fabs(v25);
        if (v34 <= 0.001)
        {
          v35 = 10.0;
        }

        else
        {
          v35 = v33;
        }

        if (v34 <= 0.001)
        {
          v36 = -v27 / v26;
        }

        else
        {
          v36 = v31;
        }

        if (v36 > 0.0 && v36 < 1.0)
        {
          sub_276667338(&v123, &v115, 0.0, v36);
          v46 = v24 + v116;
          if (v18)
          {
            objc_msgSend_moveToPoint_(v4, v44, v45, v115, v46);
          }

          else
          {
            objc_msgSend_lineToPoint_(v4, v44, v45, v115, v46);
          }

          objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v47, v48, v121, v24 + v122, v117, v24 + v118, v119, v24 + v120);
          objc_msgSend_rawGradientAt_fromElement_(a1, v49, v14, v36 + 0.01);
          v18 = 0;
          if (v50 <= 0.0)
          {
            v24 = -v8;
          }

          else
          {
            v24 = v8;
          }
        }

        else
        {
          v36 = 0.0;
        }

        if (v35 > 0.0 && v35 < 1.0)
        {
          sub_276667338(&v123, &v115, v36, v35);
          v58 = v24 + v116;
          if (v18)
          {
            objc_msgSend_moveToPoint_(v4, v56, v57, v115, v58);
          }

          else
          {
            objc_msgSend_lineToPoint_(v4, v56, v57, v115, v58);
          }

          v16 = 9.0;
          objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v59, v60, v121, v24 + v122, v117, v24 + v118, v119, v24 + v120);
          objc_msgSend_rawGradientAt_fromElement_(a1, v61, v14, v35 + 0.01);
          if (v62 <= 0.0)
          {
            v24 = -v8;
          }

          else
          {
            v24 = v8;
          }

          sub_276667338(&v123, &v115, v35, 1.0);
        }

        else
        {
          sub_276667338(&v123, &v115, v36, 1.0);
          if (v18)
          {
            objc_msgSend_moveToPoint_(v4, v52, v53, v115, v24 + v116);
            v16 = 9.0;
            v17 = -9.0;
LABEL_54:
            objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v54, v55, v121, v24 + v122, v117, v24 + v118, v119, v24 + v120);
            goto LABEL_55;
          }

          v16 = 9.0;
        }

        v17 = -9.0;
        objc_msgSend_lineToPoint_(v4, v52, v53, v115, v24 + v116);
        goto LABEL_54;
      }

      v41 = v24 + v123.f64[1];
      if (v18)
      {
        objc_msgSend_moveToPoint_(v4, v21, v22, v123.f64[0], v41);
      }

      else
      {
        objc_msgSend_lineToPoint_(v4, v21, v22, v123.f64[0], v41);
      }

      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v42, v43, v128, v24 + v129, v124, v24 + v125, v126, v24 + v127);
    }

    else
    {
      v38 = v24 + v123.f64[1];
      if (v18)
      {
        objc_msgSend_moveToPoint_(v4, v21, v22, v123.f64[0], v38);
      }

      else
      {
        objc_msgSend_lineToPoint_(v4, v21, v22, v123.f64[0], v38);
      }

      objc_msgSend_lineToPoint_(v4, v39, v40, v124, v24 + v125);
    }

LABEL_55:
    ++v14;
  }

  while (v13 != v14);
  v63 = v13 - 1;
  if (v63)
  {
LABEL_59:
    if (*MEMORY[0x277CBF348] >= 0.0)
    {
      v64 = -v8;
    }

    else
    {
      v64 = v8;
    }

    v65 = 9.0;
    v66 = -3.0;
    while (1)
    {
      v67 = objc_msgSend_elementAtIndex_allPoints_(a1, v12, v63, &v123);
      v70 = v67 == 0;
      if (v67)
      {
        break;
      }

      objc_msgSend_lineToPoint_(v4, v68, v69, v123.f64[0], v123.f64[1] - v64);
LABEL_116:
      v15 = v70;
      if (!--v63)
      {
        goto LABEL_117;
      }
    }

    v71 = v67;
    objc_msgSend_rawGradientAt_fromElement_(a1, v68, v63, 1.0);
    if (v74 >= 0.0)
    {
      v75 = -v8;
    }

    else
    {
      v75 = v8;
    }

    if (v71 != 2)
    {
      v89 = v75 + v125;
      if (v15)
      {
        objc_msgSend_moveToPoint_(v4, v72, v73, v124, v89);
      }

      else
      {
        objc_msgSend_lineToPoint_(v4, v72, v73, v124, v89);
      }

      objc_msgSend_lineToPoint_(v4, v90, v91, v123.f64[0], v75 + v123.f64[1]);
      goto LABEL_116;
    }

    v76 = v124 * v65 + v123.f64[0] * v66 + v126 * -9.0 + v128 * 3.0;
    v77 = v124 * -12.0 + v123.f64[0] * 6.0 + v126 * 6.0;
    v78 = v124 * 3.0 + v123.f64[0] * v66;
    v79 = v78 * (v76 * -4.0) + v77 * v77;
    if (v79 <= 0.0)
    {
      v92 = v75 + v129;
      if (v15)
      {
        objc_msgSend_moveToPoint_(v4, v72, v73, v128, v92);
      }

      else
      {
        objc_msgSend_lineToPoint_(v4, v72, v73, v128, v92);
      }

      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v93, v94, v123.f64[0], v75 + v123.f64[1], v126, v75 + v127, v124, v75 + v125);
      goto LABEL_116;
    }

    v80 = v79;
    v81 = sqrtf(v80);
    v82 = (-v77 - v81) / (v76 + v76);
    v83 = (v81 - v77) / (v76 + v76);
    if (v83 <= v82)
    {
      v84 = v83;
    }

    else
    {
      v84 = v82;
    }

    if (v83 > v82)
    {
      v82 = v83;
    }

    v85 = fabs(v76);
    if (v85 <= 0.001)
    {
      v86 = 10.0;
    }

    else
    {
      v86 = v84;
    }

    if (v85 <= 0.001)
    {
      v87 = -v78 / v77;
    }

    else
    {
      v87 = v82;
    }

    if (v87 > 0.0 && v87 < 1.0)
    {
      sub_276667338(&v123, &v115, v87, 1.0);
      v97 = v75 + v122;
      if (v15)
      {
        objc_msgSend_moveToPoint_(v4, v95, v96, v121, v97);
      }

      else
      {
        objc_msgSend_lineToPoint_(v4, v95, v96, v121, v97);
      }

      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v98, v99, v115, v75 + v116, v119, v75 + v120, v117, v75 + v118);
      objc_msgSend_rawGradientAt_fromElement_(a1, v100, v63, v87 + -0.01);
      v15 = 0;
      if (v101 >= 0.0)
      {
        v75 = -v8;
      }

      else
      {
        v75 = v8;
      }
    }

    else
    {
      v87 = 1.0;
    }

    if (v86 > 0.0 && v86 < 1.0)
    {
      sub_276667338(&v123, &v115, v86, v87);
      v109 = v75 + v122;
      if (v15)
      {
        objc_msgSend_moveToPoint_(v4, v107, v108, v121, v109);
      }

      else
      {
        objc_msgSend_lineToPoint_(v4, v107, v108, v121, v109);
      }

      v66 = -3.0;
      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v110, v111, v115, v75 + v116, v119, v75 + v120, v117, v75 + v118);
      objc_msgSend_rawGradientAt_fromElement_(a1, v112, v63, v86 + -0.01);
      if (v113 >= 0.0)
      {
        v75 = -v8;
      }

      else
      {
        v75 = v8;
      }

      sub_276667338(&v123, &v115, 0.0, v86);
      v65 = 9.0;
    }

    else
    {
      sub_276667338(&v123, &v115, 0.0, v87);
      if (v15)
      {
        objc_msgSend_moveToPoint_(v4, v103, v104, v121, v75 + v122);
        v65 = 9.0;
        v66 = -3.0;
LABEL_115:
        objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v105, v106, v115, v75 + v116, v119, v75 + v120, v117, v75 + v118);
        goto LABEL_116;
      }

      v65 = 9.0;
      v66 = -3.0;
    }

    objc_msgSend_lineToPoint_(v4, v103, v104, v121, v75 + v122);
    goto LABEL_115;
  }

LABEL_117:

  return v4;
}

double sub_27666B350(const CGPath *a1, uint64_t a2)
{
  TSUSubtractPoints();
  TSUNormalizePoint();
  v7[0] = a2;
  v7[1] = 0xC000000000000000;
  v8 = *MEMORY[0x277CBF348];
  v9 = v4;
  v10 = v5;
  sub_2767B2D8C(a1, v7, sub_27666B3C8);
  return *&v8;
}

uint64_t sub_27666B3C8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    v5 = *(a2 + 8);
    v17 = *(v5 + 48);
    v19 = *MEMORY[0x277CBF348];
    sub_276668C20(v5, *a1, &v19);
    if (v6 > *(a1 + 8))
    {
      *(a1 + 16) = v19;
      *(a1 + 8) = v6;
    }

    v4 = v17;
  }

  else if (*a2 == 1)
  {
    v4 = *(*(a2 + 8) + 16);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSDPathNearestAngleOnPathToLineApplier(void * _Nonnull, const TSDPathSegment * _Nonnull)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathDistortion.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 2093, 0, "TSDPathAddIntersectionsWithLine doesn't handle quad curves or some other element type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v4 = *(*(a2 + 8) + 32);
  }

  v14 = *(&v4 + 1);
  v18 = v4;
  TSUSubtractPoints();
  TSUNormalizePoint();
  result = TSUDotPoints();
  if (v16 > *(a1 + 8))
  {
    *(a1 + 16) = v18;
    *(a1 + 24) = v14;
    *(a1 + 8) = v16;
  }

  return result;
}

void sub_27666B52C(float64x2_t *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v37 = a6;
  v40 = 0.0;
  v41 = 0.0;
  sub_27666B7DC(a1->f64, a2, &v41, &v40);
  v19 = v41;
  if (v41 <= 1.0)
  {
    v20 = v40;
    if (v40 >= 0.0)
    {
      if ((v40 - v41) * a7 >= 0.0001)
      {
        if (v40 - v41 >= 0.8)
        {
          v35 = (v41 + v40) * 0.5;
          sub_276667338(a1, v42, v41, v35);
          sub_27666B52C(a2, v42, a4, a3, a5 ^ 1u, v37, a9, a10, (v20 - v35) * a7, a8 + v19 * a7);
          sub_276667338(a1, v42, (v19 + v20) * 0.5, v20);
          v28 = a8 + v35 * a7;
          v29 = a5 ^ 1u;
          v30 = a2;
          v31 = a9;
          v32 = a10;
          v33 = a4;
          v34 = (v20 - v35) * a7;
        }

        else
        {
          sub_276667338(a1, v42, v41, v40);
          v28 = a8 + v19 * a7;
          v29 = a5 ^ 1u;
          v30 = a2;
          v31 = a9;
          v32 = a10;
          v33 = a4;
          v34 = (v20 - v19) * a7;
        }

        sub_27666B52C(v30, v42, v33, a3, v29, v37, v31, v32, v34, v28);
      }

      else
      {
        v38 = 0.0;
        v39 = 0.0;
        sub_276667338(a1, v42, v41, v40);
        sub_27666B7DC(a2, v42, &v39, &v38);
        if ((v38 - v39) * a9 < 0.1)
        {
          v21 = (v38 + v39) * a9 * 0.5 + a10;
          v22 = [TSDPathIntersection alloc];
          v24 = *MEMORY[0x277CBF348];
          v25 = *(MEMORY[0x277CBF348] + 8);
          if (a5)
          {
            v26 = objc_msgSend_initWithSegment_atT_onSegmentB_atT_atPoint_(v22, v23, a4, a3, v21, (v19 + v20) * a7 * 0.5 + a8, v24, v25, v37);
          }

          else
          {
            v26 = objc_msgSend_initWithSegment_atT_onSegmentB_atT_atPoint_(v22, v23, a3, a4, (v19 + v20) * a7 * 0.5 + a8, v21, v24, v25, v37);
          }

          v36 = v26;
          objc_msgSend_addObject_(v37, v27, v26);
        }
      }
    }
  }
}

double *sub_27666B7DC(double *a1, double *a2, double *a3, double *a4)
{
  v36[8] = *MEMORY[0x277D85DE8];
  v6 = a2[6];
  v7 = a2[7];
  v8 = v7 - a2[1];
  v9 = v6 - *a2;
  v10 = v9 * v9 + v8 * v8;
  v11 = (1.0 / sqrtf(v10));
  v12 = v8 * v11;
  v13 = -(v9 * v11);
  v14 = v7 * v13 + v12 * v6;
  v15 = a1[1] * v13 + v12 * *a1 - v14;
  v36[0] = 0;
  *&v36[1] = v15;
  v16 = a1[3] * v13 + v12 * a1[2] - v14;
  v36[2] = 0x3FD5555555555555;
  *&v36[3] = v16;
  v17 = v13 * a1[5] + v12 * a1[4] - v14;
  v36[4] = 0x3FE5555555555555;
  *&v36[5] = v17;
  v18 = v13 * a1[7] + v12 * a1[6] - v14;
  v36[6] = 0x3FF0000000000000;
  *&v36[7] = v18;
  v20 = a2[2];
  v19 = a2[3];
  v21 = v13 * v19 + v12 * v20 - v14;
  v22 = v13 * a2[5] + v12 * a2[4] - v14;
  v23 = fmin(v22, 0.0);
  v24 = fmin(v21, v23);
  v25 = fmax(v22, 0.0);
  v26 = fmax(v21, v25);
  if (v24 == v26)
  {
    v27 = sqrt(v8 * v8 + v9 * v9);
    v28 = v20 + v8 / v27 * 1.0e-10;
    v29 = v19 + v9 / v27 * 1.0e-10;
    a2[2] = v28;
    a2[3] = v29;
    v30 = v13 * v29 + v12 * v28 - v14;
    v24 = fmin(v30, v23);
    v26 = fmax(v30, v25);
  }

  if (v24 == v26 && qword_280A4CEB0 != -1)
  {
    sub_27680853C();
  }

  *a3 = 2.0;
  *a4 = -1.0;
  sub_27666BA48(a3, a4, v36, v24);
  result = sub_27666BA48(a3, a4, v36, v26);
  for (i = 0; i != 8; i += 2)
  {
    v33 = *&v36[i + 1];
    if (v33 > v24 && v33 < v26)
    {
      v35 = *&v36[i];
      *a3 = fmin(*a3, v35);
      *a4 = fmax(*a4, v35);
    }
  }

  return result;
}

void sub_27666BA08()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4AA08;
  qword_280A4AA08 = v0;
}

double *sub_27666BA48(double *result, double *a2, uint64_t a3, double a4)
{
  v4 = 0;
  v5 = (a3 + 24);
  v6 = 3;
  do
  {
    if (v4 <= 2)
    {
      v7 = (a3 + 16 * v4);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v7[1];
        if ((v10 <= a4 || *v9 <= a4) && (v10 >= a4 || *v9 >= a4))
        {
          v11 = *v7;
          v12 = *(v9 - 1) - *v7;
          if (v12 != 0.0)
          {
            v11 = v12 * (a4 - (v10 - v11 * (*v9 - v10) / v12)) / (*v9 - v10);
          }

          if (v11 < *result)
          {
            *result = v11;
          }

          if (v11 > *a2)
          {
            *a2 = v11;
          }
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    ++v4;
    v5 += 2;
    --v6;
  }

  while (v4 != 4);
  return result;
}

void sub_27666BB0C(float64x2_t *a1, uint64_t a2, void *a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 2.0;
  v16 = a3;
  v17 = -1.0;
  sub_27666BA48(&v18, &v17, a2, 0.0);
  v9 = v18;
  if (v18 <= 1.0)
  {
    v10 = v17;
    if (v17 >= 0.0)
    {
      if (v17 - v18 >= 0.00005)
      {
        if (v17 - v18 >= a4 * 0.8)
        {
          v15 = (v18 + v17) * 0.5;
          sub_276667338(a1, v19, v18, v15);
          sub_27666BB0C(a1, v19, v16, v15 - v9);
          sub_276667338(a1, v19, (v9 + v10) * 0.5, v10);
          v14 = v10 - v15;
          v13 = a1;
        }

        else
        {
          sub_276667338(a1, v19, v18, v17);
          v13 = a1;
          v14 = v10 - v9;
        }

        sub_27666BB0C(v13, v19, v16, v14);
      }

      else
      {
        v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, (v18 + v17) * 0.5);
        objc_msgSend_addObject_(v16, v12, v11);
      }
    }
  }
}

void sub_27666F6C8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2766702F0(uint64_t a1, const char *a2)
{
  objc_msgSend_setStyle_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return objc_msgSend_setPathSource_(v5, v3, v4);
}

void sub_276671C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276671CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v12 = TSUDynamicCast();

  v6 = objc_msgSend_path(v12, v4, v5);
  objc_msgSend_bounds(v6, v7, v8);
  v9 = *(*(a1 + 32) + 8);
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
}

void sub_276672378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276672390(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();

  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_isTailEndOnLeft(v6, v4, v5);
}

uint64_t sub_276672F30(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (v6 && !(*(v6 + 16))(v6, v5))
  {
    v8 = 0;
  }

  else
  {
    v7 = objc_msgSend_blockToExcludeCaptionsAndDescendantsOfCaptions(*(a1 + 32), v3, v4);
    v8 = (v7)[2](v7, v5);
  }

  return v8;
}

uint64_t sub_276672FB4(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (v6 && !(*(v6 + 16))(v6, v5))
  {
    v8 = 0;
  }

  else
  {
    v7 = objc_msgSend_blockToExcludeCaptionsAndDescendantsOfCaptions(*(a1 + 32), v3, v4);
    v8 = (v7)[2](v7, v5) ^ 1;
  }

  return v8;
}

id sub_276678708(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = TSDShapeLayout;
  return objc_msgSendSuper2(&v2, sel_offsetGeometryBy_, *(a1 + 40), *(a1 + 48));
}

id sub_276678C80(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = TSDShapeLayout;
  return objc_msgSendSuper2(&v2, sel_validate);
}

void sub_27667A0DC(uint64_t a1)
{
  objc_opt_class();
  v4 = objc_msgSend_stroke(*(a1 + 32), v2, v3);
  v11 = TSUDynamicCast();

  if (v11)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v5, v6);
    objc_msgSend_deprecatedPatternOffsetDistance(v11, v7, v8);
    objc_msgSend_setStrokePatternOffsetDistance_(*(a1 + 32), v9, v10);
  }
}

void sub_27667A1BC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3);
  v37 = objc_msgSend_documentRoot(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_stylesheet(v37, v6, v7);

  v38 = v8;
  v11 = objc_msgSend_style(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_rootAncestor(v11, v12, v13);
  v17 = objc_msgSend_stylesheet(v14, v15, v16);

  if (v17 == v38)
  {
    isLocked = 0;
    v19 = v38;
  }

  else if (objc_msgSend_isAncestorOf_(v17, v38, v38))
  {
    isLocked = 0;
    v19 = v38;
  }

  else
  {
    v19 = v17;

    isLocked = objc_msgSend_isLocked(v19, v20, v21);
    objc_msgSend_setIsLocked_(v19, v22, 0);
  }

  v23 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v25 = v23;
  v26 = *(a1 + 40);
  if (v26)
  {
    objc_msgSend_setObject_forProperty_(v23, v24, v26, 522);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    objc_msgSend_setObject_forProperty_(v25, v24, v27, 523);
  }

  v28 = objc_msgSend_variationOfStyle_propertyMap_(v19, v24, v11, v25);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSDShapeInfo(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_4");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 109, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  if (isLocked)
  {
    objc_msgSend_setIsLocked_(v19, v29, 1);
  }

  objc_msgSend_setStyle_(*(a1 + 32), v29, v28);
}

uint64_t sub_27667A464(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 < 0x2CBE9F279)
  {
    result = objc_msgSend_p_correctLineSegmentGeometry(*(result + 32), a2, a3);
    v4 = *(v3 + 40);
  }

  if (v4 < 0x7741198F8)
  {
    v5 = *(v3 + 32);

    return MEMORY[0x2821F9670](v5, sel_p_correctNearZeroWidthLines, a3);
  }

  return result;
}

id sub_27667AC50(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDShapeInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

uint64_t sub_27667C3B8(uint64_t a1, const char *a2)
{
  objc_msgSend_setStyle_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(a1 + 48);
  if (v4)
  {
    objc_msgSend_setImageDataNonnull_(*(a1 + 32), v3, v4);
  }

  objc_msgSend_defaultOriginalSize(*(a1 + 32), v3, v4);
  objc_msgSend_setOriginalSize_(*(a1 + 32), v5, v6);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);

  return MEMORY[0x2821F9670](v8, sel_setOriginalImageData_, v7);
}

uint64_t sub_27667C5E8(uint64_t a1, const char *a2)
{
  objc_msgSend_setImageData_thumbnailData_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));
  objc_msgSend_setImageAdjustments_(*(a1 + 32), v3, *(a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);

  return MEMORY[0x2821F9670](v4, sel_setAdjustedImageData_thumbnailData_, v5);
}

void sub_27667D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27667D158(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v12 = TSUDynamicCast();

  v6 = objc_msgSend_imageGeometry(v12, v4, v5);
  objc_msgSend_size(v6, v7, v8);
  TSUCeilSize();
  v9 = *(*(a1 + 32) + 8);
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
}

void sub_27667D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27667D75C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_setThumbnailImageData_(WeakRetained, v4, v3);
  }
}

void sub_27667D904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_27667D920(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_setThumbnailImageData_(WeakRetained, v4, v3);
  }
}

void sub_27667E3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27667E400(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_setThumbnailAdjustedImageData_(WeakRetained, v4, v3);
  }
}

void sub_27667EF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27667EF98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27667EFB0(uint64_t *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [TSDImager alloc];
  v4 = objc_msgSend_initWithDocumentRoot_(v2, v3, a1[4]);
  v13[0] = a1[5];
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v13, 1);
  objc_msgSend_setInfos_(v4, v7, v6);

  v10 = objc_msgSend_pdfData(v4, v8, v9);
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_276681E3C(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 264);
  *(v6 + 264) = v5;
}

void sub_276681ED0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 336), a2);
  v5 = a2;
  objc_msgSend_setParentInfoDuringUnarchiving_inDocument_(*(*(a1 + 32) + 336), v4, *(a1 + 32), *(a1 + 40));
}

void sub_276681F5C(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 272);
  *(v6 + 272) = v5;
}

void sub_276681FD8(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 280);
  *(v6 + 280) = v5;
}

void sub_276682054(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 280))
  {
    v5 = objc_msgSend_type(*(v4 + 280), a2, a3);
    v7 = objc_msgSend_tsu_conformsToUTI_(v5, v6, *MEMORY[0x277D81480]);

    v10 = objc_msgSend_type(*(*(a1 + 32) + 280), v8, v9);
    v13 = objc_msgSend_identifier(*MEMORY[0x277CE1E68], v11, v12);
    v15 = objc_msgSend_tsu_conformsToUTI_(v10, v14, v13);

    v4 = *(a1 + 32);
    if (((v7 | v15) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgradeWithOptions_(v4, a2, 2);
      v16 = *(a1 + 32);
      v17 = *(v16 + 280);
      *(v16 + 280) = 0;

      v4 = *(a1 + 32);
    }
  }

  if (*(v4 + 264))
  {
    v18 = [TSDImageDataHelper alloc];
    v20 = objc_msgSend_initWithImageData_(v18, v19, *(*(a1 + 32) + 264));
    v21 = *(a1 + 32);
    v22 = *(v21 + 256);
    *(v21 + 256) = v20;

    v4 = *(a1 + 32);
  }

  if (*(v4 + 296))
  {
    v23 = [TSDImageDataHelper alloc];
    v25 = objc_msgSend_initWithImageData_(v23, v24, *(*(a1 + 32) + 296));
    v26 = *(a1 + 32);
    v27 = *(v26 + 312);
    *(v26 + 312) = v25;

    v4 = *(a1 + 32);
  }

  if (*(v4 + 232))
  {
    v28 = *MEMORY[0x277CBF3A8];
    v29 = *(MEMORY[0x277CBF3A8] + 8);
    objc_msgSend_naturalSize(v4, a2, a3);
    if (v28 == v33 && v29 == v32)
    {
      v35 = objc_msgSend_imageData(*(a1 + 32), v30, v31);

      if (!v35)
      {
        v37 = MEMORY[0x277D81150];
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSDImageInfo(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_6");
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfoPersistenceAdditions.mm");
        v43 = objc_msgSend_geometry(*(a1 + 32), v41, v42);
        objc_msgSend_size(v43, v44, v45);
        v46 = NSStringFromCGSize(v54);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v47, v38, v40, 253, 0, "Throwing out instant alpha path for malformed image info with no data or natural size. Geometry size %@", v46);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
        objc_msgSend_willModifyForUpgradeWithOptions_(*(a1 + 32), v50, 2);
        v51 = *(a1 + 32);
        v52 = *(v51 + 232);
        *(v51 + 232) = 0;
      }
    }
  }
}

uint64_t sub_27668234C(uint64_t a1, const char *a2)
{
  objc_msgSend_tsd_setShouldBeInterpretedAsGenericIfUntagged_(*(*(a1 + 32) + 264), a2, *(a1 + 40));
  objc_msgSend_tsd_setShouldBeInterpretedAsGenericIfUntagged_(*(*(a1 + 32) + 280), v3, *(a1 + 40));
  v5 = *(*(a1 + 32) + 296);
  v6 = *(a1 + 40);

  return objc_msgSend_tsd_setShouldBeInterpretedAsGenericIfUntagged_(v5, v4, v6);
}

uint64_t sub_2766823CC(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 < 0x2CBDBE661)
  {
    result = objc_msgSend_p_upgradeImageGeometry(*(result + 32), a2, a3);
    v4 = *(v3 + 40);
  }

  if (v4 < 0x2CBDA37E8)
  {
    objc_msgSend_willModifyForUpgrade(*(v3 + 32), a2, a3);
    result = objc_msgSend_defaultOriginalSize(*(v3 + 32), v5, v6);
    v7 = *(v3 + 32);
    v4 = *(v3 + 40);
    *(v7 + 200) = v8;
    *(v7 + 208) = v9;
  }

  if (v4 < 0x2CBEA6DE9)
  {
    v10 = *(v3 + 32);

    return MEMORY[0x2821F9670](v10, sel_p_upgradeImageThumbnail, a3);
  }

  return result;
}

void sub_276682480(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend_thumbnailImageDataForImageData_(TSDImageDataHelper, a2, *(*(a1 + 32) + 296));
  if (v5)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(*(a1 + 32), v3, 2);
    objc_msgSend_setThumbnailAdjustedImageData_(*(a1 + 32), v4, v5);
  }
}

id sub_276682F6C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 1u;
  v4 = *(v3 + 48);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v5);
    *(v3 + 48) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDImageInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_2766831E0(uint64_t a1, double *a2, void *a3)
{
  v4 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v17 = v4;
  if (!objc_msgSend_elementCount(v4, v13, v14))
  {
    objc_msgSend_moveToPoint_(v17, v15, v16, v5, v6);
  }

  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v17, v15, v16, v11, v12, v7, v8, v9, v10);
}

void sub_276683408(uint64_t a1, uint64_t a2, uint64_t a3, double ***a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, double a9)
{
  while (1)
  {
    v9 = a4;
    v81 = a8;
    v82 = a7;
    v10 = a3;
    v11 = a2;
    v12 = a1;
    v94[2] = *MEMORY[0x277D85DE8];
    v13 = a3 - a2;
    v83 = a6;
    v84 = a5;
    if (a3 - a2 == 1)
    {
      break;
    }

    v25 = a9;
    v26 = malloc_type_calloc((v13 + 1), 8uLL, 0x100004000313F17uLL);
    v27 = v26;
    v87 = v11;
    if (v10 > v11)
    {
      v28 = v26 + 1;
      v29 = *v26;
      v30 = (v12 + 16 * v11 + 16);
      v31 = v13;
      do
      {
        v29 = v29 + sqrt((v30[1] - *(v30 - 1)) * (v30[1] - *(v30 - 1)) + (*v30 - *(v30 - 2)) * (*v30 - *(v30 - 2)));
        *v28++ = v29;
        v30 += 2;
        --v31;
      }

      while (v31);
      v32 = v26 + 1;
      v33 = v13;
      do
      {
        *v32 = *v32 / v26[v13];
        ++v32;
        --v33;
      }

      while (v33);
    }

    v89 = 0;
    sub_276683E48(v12, v11, v10, v26, v9, v84.n128_f64[0], v83.n128_f64[0], v82.n128_f64[0], v81.n128_f64[0]);
    v35 = v34;
    v36.n128_f64[0] = sub_276684194(v12, v11, v10, v34, v27, &v89, v9);
    if (v36.n128_f64[0] < v25)
    {
      sub_2766839DC(v35, v9, v36);
      v37 = v27;
LABEL_36:
      free(v37);
      v24 = v35;
      goto LABEL_37;
    }

    v86 = v12;
    v79 = v9;
    if (v36.n128_f64[0] < v25 * v25)
    {
      v38 = 0;
      __asm { FMOV            V0.2D, #3.0 }

      v85 = _Q0;
      while (1)
      {
        v80 = v38;
        v44 = malloc_type_calloc(v13 + 1, 8uLL, 0x100004000313F17uLL);
        v45 = v11;
        if (v10 >= v11)
        {
          v46 = v11;
          do
          {
            v47 = (v86 + 16 * v46);
            v48 = v46 - v45;
            v49 = v27[v48];
            v50 = *v47;
            v51 = v47[1];
            v52 = sub_276684314(3, v35, v49);
            v54 = v53;
            v55 = 0;
            v56 = *v35;
            do
            {
              v57 = v35[v55 + 1];
              v92[v55++] = vmulq_f64(vsubq_f64(v57, v56), v85);
              v56 = v57;
            }

            while (v55 != 3);
            v58 = v90;
            v59 = 1;
            v60 = v92[0];
            v61 = &v93;
            do
            {
              v62 = v59;
              v63 = *v61;
              v64 = vsubq_f64(*v61, v60);
              *v58 = vaddq_f64(v64, v64);
              v58 = &v91;
              v61 = v94;
              v60 = v63;
              v59 = 0;
            }

            while ((v62 & 1) != 0);
            v65 = sub_276684314(2, v92, v49);
            v67 = v66;
            v68 = sub_276684314(1, v90, v49);
            v70 = v67 * v67 + v65 * v65 + (v52 - v50) * v68 + (v54 - v51) * v69;
            if (v70 != 0.0)
            {
              v49 = v49 - ((v54 - v51) * v67 + (v52 - v50) * v65) / v70;
            }

            v44[v48] = v49;
            _ZF = v46++ == v10;
            v45 = v11;
          }

          while (!_ZF);
        }

        free(v35);
        sub_276683E48(v86, v45, v10, v44, v79, v84.n128_f64[0], v83.n128_f64[0], v82.n128_f64[0], v81.n128_f64[0]);
        v35 = v71;
        v72.n128_f64[0] = sub_276684194(v86, v45, v10, v71, v44, &v89, v79);
        if (v72.n128_f64[0] < v25)
        {
          break;
        }

        free(v27);
        v27 = v44;
        v38 = v80 + 1;
        if (v80 == 3)
        {
          goto LABEL_30;
        }
      }

      sub_2766839DC(v35, v79, v72);
      free(v27);
      v37 = v44;
      goto LABEL_36;
    }

    v44 = v27;
LABEL_30:
    free(v44);
    free(v35);
    v73 = v89;
    __asm { FMOV            V1.2D, #0.5 }

    v75 = vmulq_f64(vaddq_f64(vsubq_f64(*(v86 + 16 * v89 - 16), *(v86 + 16 * v89)), vsubq_f64(*(v86 + 16 * v89), *(v86 + 16 * v89 + 16))), _Q1);
    v76 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*&v75, *&v75).f64[1]) + v75.n128_f64[0] * v75.n128_f64[0]);
    if (v76 != 0.0)
    {
      v75 = vdivq_f64(v75, vdupq_lane_s64(*&v76, 0));
    }

    v77 = v75.n128_f64[1];
    v78 = v87;
    v88 = v75;
    sub_276683408(v86, v78, v89, v79, v84, v83, v75, v75.n128_f64[1], v25);
    a5.n128_u64[1] = v88.n128_u64[1];
    a5.n128_f64[0] = -v88.n128_f64[0];
    a6.n128_f64[0] = -v77;
    a1 = v86;
    a2 = v73;
    a3 = v10;
    a8 = v81;
    a7 = v82;
    a9 = v25;
    a4 = v79;
  }

  v14 = (a1 + 16 * a3);
  v15 = (a1 + 16 * a2);
  v16 = sqrt((v14[1] - v15[1]) * (v14[1] - v15[1]) + (*v14 - *v15) * (*v14 - *v15)) / 3.0;
  v17 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
  v18 = v17;
  *v17 = *v15;
  v17[3] = *v14;
  *&v20.f64[0] = v84.n128_u64[0];
  v19 = sqrt(v83.n128_f64[0] * v83.n128_f64[0] + v20.f64[0] * v20.f64[0]);
  *&v20.f64[1] = v83.n128_u64[0];
  if (v19 != 0.0)
  {
    v20 = vmulq_n_f64(v20, v16 / v19);
  }

  v17[1] = vaddq_f64(v20, *v17);
  *&v22.f64[0] = v82.n128_u64[0];
  v21 = sqrt(v81.n128_f64[0] * v81.n128_f64[0] + v22.f64[0] * v22.f64[0]);
  *&v22.f64[1] = v81.n128_u64[0];
  if (v21 != 0.0)
  {
    v22 = vmulq_n_f64(v22, v16 / v21);
  }

  v23 = vaddq_f64(v22, v17[3]);
  v17[2] = v23;
  sub_2766839DC(v17, v9, v23);
  v24 = v18;
LABEL_37:

  free(v24);
}

uint64_t sub_2766839DC(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = *(a1 + 56);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);

  return v4(3, a1, v3, a3);
}

double sub_276683E48(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double ***a5, double a6, double a7, double a8, double a9)
{
  v15 = *a5;
  v16 = malloc_type_calloc(4uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  v17 = (a1 + 16 * a3);
  v18 = (a1 + 16 * a2);
  if (a3 >= a2)
  {
    v24.f64[0] = a6;
    v25 = a7;
    v26 = sqrt(v25 * v25 + v24.f64[0] * v24.f64[0]);
    v27 = a3 - a2 + 1;
    v28 = v27;
    v29 = a4;
    v30 = v15;
    v31 = sqrt(a9 * a9 + a8 * a8);
    do
    {
      v32 = 1.0 - *v29;
      v33 = *v29 * 3.0;
      v34 = a6;
      v35 = a7;
      if (v26 != 0.0)
      {
        v36 = v33 * (v32 * v32) / v26;
        v34 = a6 * v36;
        v35 = a7 * v36;
      }

      v37 = a8;
      v38 = a9;
      if (v31 != 0.0)
      {
        v39 = v32 * (*v29 * v33) / v31;
        v37 = a8 * v39;
        v38 = a9 * v39;
      }

      v40 = *v30++;
      *v40 = v34;
      v40[1] = v35;
      v40[2] = v37;
      v40[3] = v38;
      ++v29;
      --v28;
    }

    while (v28);
    v41 = v18 + 1;
    v23 = 0.0;
    v22 = 0.0;
    v21 = 0.0;
    v20 = 0.0;
    v19 = 0.0;
    do
    {
      v42 = *v15++;
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[2];
      v46 = v42[3];
      v47 = v44 * v46 + *v42 * v45;
      v48 = *a4++;
      v49 = 1.0 - v48;
      v50 = v49 * (v49 * v49);
      v51 = v48 * 3.0 * (v49 * v49);
      v21 = v21 + v44 * v44 + v43 * v43;
      v52 = (1.0 - v48) * (v48 * (v48 * 3.0));
      v22 = v22 + v47;
      v53 = v48 * (v48 * v48);
      v23 = v23 + v46 * v46 + v45 * v45;
      v54 = *(v41 - 1) - (*v18 * v50 + *v18 * v51 + *v17 * v52 + v53 * *v17);
      v55 = *v41 - (v18[1] * v50 + v18[1] * v51 + v52 * v17[1] + v53 * v17[1]);
      v19 = v19 + v44 * v55 + v43 * v54;
      v20 = v20 + v46 * v55 + v45 * v54;
      v41 += 2;
      --v27;
    }

    while (v27);
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24.f64[0] = a6;
    v25 = a7;
  }

  v56 = v21 * v23 - v22 * v22;
  v57 = v19 * v23 - v20 * v22;
  v58 = v21 * v23 * 1.0e-11;
  if (v56 == 0.0)
  {
    v56 = v58;
  }

  if (v57 / v56 < 0.000001 || (v59 = (v21 * v20 - v22 * v19) / v56, v59 < 0.000001))
  {
    v59 = sqrt((v17[1] - v18[1]) * (v17[1] - v18[1]) + (*v17 - *v18) * (*v17 - *v18)) / 3.0;
    *v16 = *v18;
    v16[3] = *v17;
    v62 = sqrt(v25 * v25 + v24.f64[0] * v24.f64[0]);
    v24.f64[1] = v25;
    if (v62 == 0.0)
    {
      goto LABEL_20;
    }

    v61 = v59 / v62;
  }

  else
  {
    *v16 = *v18;
    v16[3] = *(a1 + 16 * a3);
    v60 = sqrt(v25 * v25 + v24.f64[0] * v24.f64[0]);
    v24.f64[1] = v25;
    if (v60 == 0.0)
    {
      goto LABEL_20;
    }

    v61 = v57 / v56 / v60;
  }

  v24 = vmulq_n_f64(v24, v61);
LABEL_20:
  v16[1] = vaddq_f64(v24, *v16);
  v63 = sqrt(a9 * a9 + a8 * a8);
  if (v63 != 0.0)
  {
    v64 = v59 / v63;
    a8 = a8 * v64;
    a9 = a9 * v64;
  }

  result = a8 + v16[3].f64[0];
  v66 = a9 + v16[3].f64[1];
  v16[2].f64[0] = result;
  v16[2].f64[1] = v66;
  return result;
}

double sub_276684194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *a6 = (a3 - a2 + 1) / 2;
  v7 = a2 + 1;
  v8 = 0.0;
  if (a2 + 1 < a3)
  {
    v13 = *(a7 + 16);
    v14 = a2;
    do
    {
      v15 = v7;
      if (v13 <= 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v16 = (a1 + 16 * v7);
        v17 = 0.0;
        v18 = 1;
        v19 = 0.0;
        v20 = (a1 + 16 * v14);
        do
        {
          v21 = 1.0 - v17 / v13;
          v22 = *v20 + (*v16 - *v20) * v21;
          v23 = v20[1] + (v16[1] - v20[1]) * v21;
          v24 = sub_276684314(3, a4, *(a5 + 8 * (v15 - a2) - 8) + (*(a5 + 8 * (v15 - a2)) - *(a5 + 8 * (v15 - a2) - 8)) * v21);
          v19 = v19 + (v25 - v23) * (v25 - v23) + (v24 - v22) * (v24 - v22);
          v17 = v18;
          v13 = *(a7 + 16);
          ++v18;
        }

        while (v13 > v17);
      }

      if (v19 / v13 >= v8)
      {
        *a6 = v15;
        v8 = v19 / v13;
      }

      v7 = v15 + 1;
      v14 = v15;
    }

    while (v15 + 1 != a3);
  }

  return v8;
}

double sub_276684314(int a1, uint64_t a2, double a3)
{
  v5 = malloc_type_malloc((16 * a1 + 16), 0x1000040451B5BE8uLL);
  if ((a1 & 0x80000000) == 0)
  {
    v6 = 0;
    do
    {
      v5[v6] = *(a2 + v6 * 16);
      ++v6;
    }

    while (a1 + 1 != v6);
    if (a1)
    {
      v7 = vdupq_lane_s64(COERCE__INT64(1.0 - a3), 0);
      v8 = 1;
      v9 = a1;
      do
      {
        if (v8 <= a1)
        {
          v10 = *v5;
          v11 = v9;
          v12 = v5 + 1;
          do
          {
            v13 = *v12;
            v12[-1] = vmlaq_f64(vmulq_n_f64(*v12, a3), v10, v7);
            ++v12;
            v10 = v13;
            --v11;
          }

          while (v11);
        }

        --v9;
      }

      while (v8++ != a1);
    }
  }

  v15 = v5->f64[0];
  free(v5);
  return v15;
}

void sub_2766882B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276688300(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276688318(void *a1, const char *a2)
{
  v3 = *(*(a1[4] + 8) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(TSDBezierSubpath);
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_msgSend_addObject_(*(*(a1[5] + 8) + 40), v7, *(*(a1[4] + 8) + 40));
    v3 = *(*(a1[4] + 8) + 40);
  }

  objc_msgSend_addNode_(v3, a2, *(*(a1[6] + 8) + 40));
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

double sub_27668D444(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  TSUSubtractPoints();
  TSUDotPoints();
  v17 = sub_2766674B8(a1, a4, a5) * a10 / v16;
  *a2 = fmax(*a2, v17);
  result = fmin(*a3, v17);
  *a3 = result;
  return result;
}

void *sub_27668E880(size_t a1)
{
  pthread_once(&stru_280A4AE38, sub_27668E928);
  pthread_mutex_lock(&stru_280A4C168);
  if (a1 <= 0x20 && qword_280A4C1A8)
  {
    v2 = (qword_280A4C1A8 + 8);
    qword_280A4C1A8 = *qword_280A4C1A8;
    pthread_mutex_unlock(&stru_280A4C168);
  }

  else
  {
    v2 = malloc_type_malloc(a1, 0xCE347681uLL);
    pthread_mutex_unlock(&stru_280A4C168);
    if (!v2)
    {
      NSLog(&cfstr_GpcMallocAlloc.isa);
    }
  }

  return v2;
}

uint64_t sub_27668E928()
{
  result = pthread_mutex_init(&stru_280A4C168, 0);
  if (!qword_280A4C1B0)
  {
    result = malloc_type_malloc(0x28000uLL, 0x102004065753CD5uLL);
    qword_280A4C1B0 = result;
    if (!result)
    {
      abort();
    }

    qword_280A4C1A8 = result;
    v1 = result + 40;
    v2 = 4096;
    do
    {
      *(v1 - 40) = v1;
      v1 += 40;
      --v2;
    }

    while (v2);
    *(result + 163800) = 0;
  }

  return result;
}

void sub_27668E9B4(void *a1)
{
  if (a1)
  {
    if (qword_280A4C1B0 <= a1 && qword_280A4C1B0 + 163840 > a1)
    {
      pthread_mutex_lock(&stru_280A4C168);
      *(a1 - 1) = qword_280A4C1A8;
      qword_280A4C1A8 = (a1 - 1);

      pthread_mutex_unlock(&stru_280A4C168);
    }

    else
    {

      free(a1);
    }
  }
}

id sub_27668F708(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C9BB30](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDShapeStyle;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

unint64_t sub_27668F790(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_overrideCount(*(a1 + 32), a2, a3);
  if (result)
  {
    v6 = *(a1 + 48);
    if (HIDWORD(result))
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDShapeStyle(PersistenceAdditions) saveToArchive:archiver:]_block_invoke_2");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStylePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 94, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      v7 = *(a1 + 48);
      LODWORD(result) = -1;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    *(v6 + 16) |= 4u;
    *(v6 + 40) = result;
    *(v7 + 16) |= 2u;
    if (!*(v7 + 32))
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v7 + 32) = google::protobuf::Arena::CreateMaybeMessage<TSD::ShapeStylePropertiesArchive>(v8);
    }

    v9 = objc_opt_class();
    v10 = *(*(a1 + 32) + *MEMORY[0x277D80AF0]);

    return MEMORY[0x2821F9670](v9, sel_saveShapeStylePropertyMap_toArchive_archiver_, v10);
  }

  return result;
}

void sub_27668F9A8()
{
  v0 = objc_alloc_init(TSDStroke);
  v1 = qword_280A4C1B8;
  v10 = v0;
  qword_280A4C1B8 = v0;

  if (!qword_280A4C1B8)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "+[TSDShapeStyle initialize]_block_invoke");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 46, 0, "invalid nil value for '%{public}s'", "sDefaultStroke");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }
}

void sub_27668FA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3);
  objc_storeStrong(&qword_280A4C1C0, v11);
  if (!qword_280A4C1C0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSDShapeStyle initialize]_block_invoke_2");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 53, 0, "invalid nil value for '%{public}s'", "sNSNullNull");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }
}

void sub_27668FBEC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 516, 517, 518, 519, 520, 522, 523, 0);
  v3 = qword_280A4C1D8;
  v12 = v2;
  qword_280A4C1D8 = v2;

  if (!qword_280A4C1D8)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSDShapeStyle properties]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 90, 0, "invalid nil value for '%{public}s'", "sProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }
}

void sub_27668FFA8()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 516, 519, 520, 522, 523, 0);
  v3 = qword_280A4C1E8;
  v12 = v2;
  qword_280A4C1E8 = v2;

  if (!qword_280A4C1E8)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSDShapeStyle propertiesAllowingNSNull]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 159, 0, "invalid nil value for '%{public}s'", "sNullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }
}

void sub_276690540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276690558(uint64_t a1, const char *a2, _BYTE *a3)
{
  v11 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2);
  v7 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v6, a2);
  v8 = TSDMixingTypeWithObjects(v11, v7, *(a1 + 48));
  if (v8 == 1 && a2 == 516)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8;
  }

  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes(*(*(*(a1 + 56) + 8) + 24), v10);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2766907A4(uint64_t a1, const char *a2)
{
  v9 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v4, a2);
  if (v9)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = TSDMixingMixedObjectWithFraction(v9, v5, *(a1 + 56));
    objc_msgSend_setBoxedValue_forProperty_(*(a1 + 48), v8, v7, a2);
  }
}

void sub_2766913B8()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = qword_280A4C200;
  qword_280A4C200 = v0;
}

void sub_276691DEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_data(a2, a2, a3);
  objc_msgSend_p_setImageData_(*(a1 + 32), v4, v5);
}

void sub_276691E58(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v5 = objc_msgSend_p_imageData(*(a1 + 32), a2, a3);
  objc_msgSend_tsd_setShouldBeInterpretedAsGenericIfUntagged_(v5, v4, v3);
}

uint64_t sub_276691EC0(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_i_updateStoredReferenceColorIfNeeded(*(a1 + 32), a2, a3);
  result = objc_msgSend_p_fillSize(*(a1 + 32), v4, v5);
  if (v10 == *MEMORY[0x277CBF3A8] && v9 == *(MEMORY[0x277CBF3A8] + 8))
  {
    objc_msgSend_fillSize(*(a1 + 32), v7, v8);
    result = objc_msgSend_p_setFillSize_(*(a1 + 32), v12, v13);
  }

  if (*(a1 + 40) == 1)
  {
    v14 = *(a1 + 32);

    return objc_msgSend_i_updateStoredReferenceColorIfNeeded(v14, v7, v8);
  }

  return result;
}

void sub_2766926CC(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276658138();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2766927C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27669435C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v14)
  {
    objc_msgSend_setGeometry_(v8, v14, a2);
    v11 = objc_msgSend_maskInfo(*(a1 + 32), v9, v10);
    objc_msgSend_setGeometry_(v11, v12, v14);
    objc_msgSend_setPathSource_(v11, v13, v7);
  }

  else
  {
    objc_msgSend_setPrimitiveGeometry_(v8, 0, a2);
  }
}

void sub_2766967D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSDPencilAnnotationStorage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276697CE4(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_msgSend_setSubStorages_(*(a1 + 32), a2, a2);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 184);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v9, v13, 16);
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setParentStorage_(*(*(&v9 + 1) + 8 * v8++), v5, *(a1 + 32), v9);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v9, v13, 16);
    }

    while (v6);
  }
}

void sub_276697E10(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_msgSend_setSubStorages_(*(a1 + 32), a2, a2);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 184);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v9, v13, 16);
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setParentStorage_(*(*(&v9 + 1) + 8 * v8++), v5, *(a1 + 32), v9);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v9, v13, 16);
    }

    while (v6);
  }
}

void sub_276699404(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2766999BC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 517, 518, 519, 520, 0);
  v3 = qword_280A4C210;
  qword_280A4C210 = v2;

  if (!qword_280A4C210)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSDMediaStyle properties]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 105, 0, "invalid nil value for '%{public}s'", "sProperties");

    v12 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v12, v10, v11);
  }
}

void sub_276699B80()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 519, 520, 0);
  v3 = qword_280A4C220;
  v12 = v2;
  qword_280A4C220 = v2;

  if (!qword_280A4C220)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSDMediaStyle propertiesAllowingNSNull]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 155, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }
}

void sub_27669A17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27669A194(uint64_t a1, const char *a2, _BYTE *a3)
{
  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2);
  v7 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v6, a2);
  v8 = *(*(*(a1 + 56) + 8) + 24);
  v9 = TSDMixingTypeWithObjects(v10, v7, *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes(v8, v9);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_27669A3D0(uint64_t a1, const char *a2)
{
  v8 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v4, a2);
  v6 = TSDMixingMixedObjectWithFraction(v8, v5, *(a1 + 56));
  objc_msgSend_setBoxedValue_forProperty_(*(a1 + 48), v7, v6, a2);
}

void sub_27669A788(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_27669B184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_27669EB38(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDMaskInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_2766A0160(int a1, int a2, CGPathRef path, CGContext *a4)
{
  PathBoundingBox = CGPathGetPathBoundingBox(path);

  sub_2766A019C(a4, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height);
}

void sub_2766A019C(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!CGRectIsNull(*&a2))
  {
    CGContextSaveGState(a1);
    v12 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v10, v11);
    v15 = objc_msgSend_CGColor(v12, v13, v14);
    CGContextSetFillColorWithColor(a1, v15);

    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    CGContextFillRect(a1, v27);
    CGContextSetLineWidth(a1, 1.0);
    v18 = objc_msgSend_redColor(MEMORY[0x277D81180], v16, v17);
    v21 = objc_msgSend_colorWithAlphaComponent_(v18, v19, v20, 0.38);
    v24 = objc_msgSend_CGColor(v21, v22, v23);
    CGContextSetStrokeColorWithColor(a1, v24);

    Mutable = CGPathCreateMutable();
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetMinX(v28);
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetMaxY(v29);
    CGPathMoveToPointSafe();
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetMaxX(v30);
    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    CGRectGetMinY(v31);
    CGPathAddLineToPointSafe();
    CGContextAddPathSafe();
    CGContextStrokePath(a1);
    CGPathRelease(Mutable);

    CGContextRestoreGState(a1);
  }
}

void sub_2766A0C00(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_280A4C230;
  qword_280A4C230 = v1;

  if (!qword_280A4C230)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSDImageProviderPool sharedPool]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProviderPool.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 74, 0, "invalid nil value for '%{public}s'", "instance");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v9, v10);
  }
}

void sub_2766A119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2766A11B8()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

uint64_t sub_2766A11F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = 5;
  while (1)
  {
    result = objc_msgSend_readToBuffer_size_(a2, a2, v4, v5);
    v5 -= result;
    if (v5 == 5)
    {
      break;
    }

    v4 += v5;
    if (!v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return result;
    }
  }

  return result;
}

void sub_2766A1260()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A12A0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A15B4()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A15F4()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A1634()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A1674()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A16B4()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A1D30()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A1EC4()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B090;
  qword_280A4B090 = v0;
}

void sub_2766A24D0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A2510()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A2550()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A2590()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A25D0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A2610()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A2650()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B088;
  qword_280A4B088 = v0;
}

void sub_2766A2FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2766A3110(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

intptr_t sub_2766A34A0(uint64_t a1)
{
  CGPDFDocumentRelease(*(*(a1 + 32) + 48));
  *(*(a1 + 32) + 48) = 0;
  if (objc_msgSend_i_loadState(*(a1 + 32), v2, v3) == 1)
  {
    objc_msgSend_setI_loadState_(*(a1 + 32), v4, 0);
  }

  dispatch_semaphore_wait(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 32) + 80) = 0;
  v5 = *(*(a1 + 32) + 72);

  return dispatch_semaphore_signal(v5);
}

void *sub_2766A35B4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (!result[6])
  {
    result = objc_msgSend_i_loadState(result, a2, a3);
    if (result != 2)
    {
      v7 = objc_msgSend_p_load(*(a1 + 32), v5, v6);
      *(*(a1 + 32) + 48) = v7;
      if (v7)
      {
        objc_msgSend_setI_loadState_(*(a1 + 32), v8, 1);
      }

      else
      {
        objc_msgSend_setI_loadState_(*(a1 + 32), v8, 2);
      }

      dispatch_semaphore_wait(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL);
      *(*(a1 + 32) + 80) = 1;
      v9 = *(*(a1 + 32) + 72);

      return dispatch_semaphore_signal(v9);
    }
  }

  return result;
}

void sub_2766A4088(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v7 = objc_msgSend_null(MEMORY[0x277D80828], v2, v3);
  v5 = objc_msgSend_initWithImageData_(v1, v4, v7);
  v6 = qword_280A4C240;
  qword_280A4C240 = v5;
}

void sub_2766A4584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D80828];
  v4 = sub_2767B590C(a1, a2, a3);
  v6 = objc_msgSend_URLForResource_withExtension_(v4, v5, @"TSDErrorImageIcon", @"pdf");
  v12 = objc_msgSend_readOnlyDataFromURL_(v3, v7, v6);

  v8 = [TSDPDFImageProvider alloc];
  v10 = objc_msgSend_initWithImageData_(v8, v9, v12);
  v11 = qword_280A4C250;
  qword_280A4C250 = v10;
}

uint64_t sub_2766A4BE4(void *a1, uint64_t a2, _OWORD *a3)
{
  if ((TSURectHasNaNComponents() & 1) != 0 || (v6 = a3[1], *&t1.a = *a3, *&t1.c = v6, *&t1.tx = a3[2], TSUTransformHasNaNComponents()))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[CALayer(TSDAdditions) setIfDifferentFrame:orTransform:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CALayerAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 34, 0, "Attempting to set frame or transform on layer with NaN values.");

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  else
  {
    objc_msgSend_anchorPoint(a1, v5, v7);
    TSUPointFromNormalizedRect();
    v17 = v16;
    v19 = v18;
    TSURectWithSize();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    objc_msgSend_position(a1, v28, v29);
    if (v33 != v17 || v32 != v19)
    {
      objc_msgSend_setPosition_(a1, v30, v31, v17, v19);
    }

    objc_msgSend_bounds(a1, v30, v31);
    v42.origin.x = v21;
    v42.origin.y = v23;
    v42.size.width = v25;
    v42.size.height = v27;
    if (!CGRectEqualToRect(v41, v42))
    {
      objc_msgSend_setBounds_(a1, v34, v35, v21, v23, v25, v27);
    }

    objc_msgSend_affineTransform(a1, v34, v35);
    v36 = a3[1];
    *&v39.a = *a3;
    *&v39.c = v36;
    *&v39.tx = a3[2];
    result = CGAffineTransformEqualToTransform(&t1, &v39);
    if ((result & 1) == 0)
    {
      v38 = a3[1];
      *&t1.a = *a3;
      *&t1.c = v38;
      *&t1.tx = a3[2];
      return objc_msgSend_setAffineTransform_(a1, v37, &t1);
    }
  }

  return result;
}

void sub_2766A4DBC(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = objc_msgSend_valueForKey_(v12, v3, @"kTSDLayerToRemove");

  if (v4)
  {
    v6 = objc_msgSend_valueForKey_(v12, v5, @"kTSDLayerToRemove");
    v9 = objc_msgSend_nonretainedObjectValue(v6, v7, v8);

    objc_msgSend_removeFromSuperlayer(v9, v10, v11);
  }
}

double sub_2766A4E4C(void *a1, const char *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  objc_msgSend_frame(a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((objc_msgSend_masksToBounds(a1, v12, v13) & 1) == 0)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = objc_msgSend_sublayers(a1, v14, v15);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v59, v63, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v60;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v60 != v22)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_frameIncludingSublayers(*(*(&v59 + 1) + 8 * i), v19, v20);
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v34 = objc_msgSend_superlayer(a1, v32, v33);

          if (v34)
          {
            v37 = objc_msgSend_superlayer(a1, v35, v36);
            objc_msgSend_convertRect_fromLayer_(v37, v38, a1, v25, v27, v29, v31);
            x = v39;
            y = v41;
            width = v43;
            height = v45;
          }

          else
          {
            objc_msgSend_frame(a1, v35, v36);
            v58 = v5;
            v47 = v7;
            v48 = v9;
            v49 = v11;
            v51 = v50;
            objc_msgSend_frame(a1, v52, v53);
            v55 = v54;
            v65.origin.x = v25;
            v65.origin.y = v27;
            v65.size.width = v29;
            v65.size.height = v31;
            v56 = v51;
            v11 = v49;
            v9 = v48;
            v7 = v47;
            v5 = v58;
            v66 = CGRectOffset(v65, v56, v55);
            x = v66.origin.x;
            y = v66.origin.y;
            width = v66.size.width;
            height = v66.size.height;
          }

          v67.origin.x = v5;
          v67.origin.y = v7;
          v67.size.width = v9;
          v67.size.height = v11;
          v69.origin.x = x;
          v69.origin.y = y;
          v69.size.width = width;
          v69.size.height = height;
          v68 = CGRectUnion(v67, v69);
          v5 = v68.origin.x;
          v7 = v68.origin.y;
          v9 = v68.size.width;
          v11 = v68.size.height;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v59, v63, 16);
      }

      while (v21);
    }
  }

  return v5;
}

uint64_t sub_2766A5090(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_frameIncludingSublayers(a1, a2, a3);

  return objc_msgSend_newRasterizedImageRefForLayerRect_(a1, v4, v5);
}

void *sub_2766A50C8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  objc_msgSend_frame(v9, v10, v11);
  v153.origin.x = v12;
  v153.origin.y = v13;
  v153.size.width = v14;
  v153.size.height = v15;
  v140.origin.x = a2;
  v140.origin.y = a3;
  v140.size.width = a4;
  v140.size.height = a5;
  v18 = v9;
  if (CGRectEqualToRect(v140, v153))
  {
    v19 = objc_msgSend_sublayers(v9, v16, v17);
    v22 = objc_msgSend_count(v19, v20, v21);

    v18 = v9;
    if (v22 <= 1)
    {
      v23 = v9;
      while (1)
      {
        objc_msgSend_borderWidth(v23, v16, v17);
        if (v24 != 0.0)
        {
          goto LABEL_20;
        }

        v27 = objc_msgSend_mask(v23, v16, v17);
        if (v27)
        {
          break;
        }

        objc_msgSend_opacity(v23, v25, v26);
        if (v30 != 1.0)
        {
          break;
        }

        objc_msgSend_cornerRadius(v23, v28, v29);
        if (v33 != 0.0)
        {
          break;
        }

        objc_msgSend_shadowOpacity(v23, v31, v32);
        if (v36 != 0.0 || objc_msgSend_backgroundColor(v23, v34, v35))
        {
          break;
        }

        if (v23)
        {
          objc_msgSend_transform(v23, v37, v38);
        }

        else
        {
          memset(&v139, 0, sizeof(v139));
        }

        if (!CATransform3DIsIdentity(&v139))
        {
          break;
        }

        objc_msgSend_contentsRect(v23, v39, v40);
        v154.origin.x = 0.0;
        v154.origin.y = 0.0;
        v154.size.width = 1.0;
        v154.size.height = 1.0;
        if (!CGRectEqualToRect(v141, v154))
        {
          goto LABEL_20;
        }

        v41 = objc_msgSend_sublayers(v23, v16, v17);
        v44 = objc_msgSend_count(v41, v42, v43);

        if (v44 != 1)
        {
          v133 = objc_msgSend_contents(v23, v45, v46);

          if (v133)
          {
            Image = objc_msgSend_contents(v23, v16, v17);

            CGImageRetain(Image);
            v18 = v23;
            goto LABEL_36;
          }

LABEL_20:
          v18 = v23;
          goto LABEL_21;
        }

        objc_msgSend_bounds(v23, v45, v46);
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v57 = objc_msgSend_sublayers(v23, v55, v56);
        v60 = objc_msgSend_lastObject(v57, v58, v59);
        objc_msgSend_bounds(v60, v61, v62);
        v155.origin.x = v63;
        v155.origin.y = v64;
        v155.size.width = v65;
        v155.size.height = v66;
        v142.origin.x = v48;
        v142.origin.y = v50;
        v142.size.width = v52;
        v142.size.height = v54;
        v67 = CGRectEqualToRect(v142, v155);

        if (!v67)
        {
          goto LABEL_20;
        }

        v68 = objc_msgSend_sublayers(v23, v16, v17);
        v18 = objc_msgSend_lastObject(v68, v69, v70);

        v73 = objc_msgSend_sublayers(v18, v71, v72);
        v76 = objc_msgSend_count(v73, v74, v75);

        v23 = v18;
        if (v76 > 1)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_21:
  objc_msgSend_frameIncludingSublayers(v9, v16, v17);
  x = v143.origin.x;
  y = v143.origin.y;
  width = v143.size.width;
  height = v143.size.height;
  v144 = CGRectInset(v143, -1.0, -1.0);
  v156.origin.x = a2;
  v156.origin.y = a3;
  v156.size.width = a4;
  v156.size.height = a5;
  if (!CGRectContainsRect(v144, v156))
  {
    v82 = MEMORY[0x277D81150];
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[CALayer(TSDAdditions) newRasterizedImageRefForLayerRect:]");
    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/CALayerAdditions.m");
    v145.origin.x = a2;
    v145.origin.y = a3;
    v145.size.width = a4;
    v145.size.height = a5;
    v86 = NSStringFromCGRect(v145);
    v146.origin.x = x;
    v146.origin.y = y;
    v146.size.width = width;
    v146.size.height = height;
    v87 = NSStringFromCGRect(v146);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v88, v83, v85, 461, 0, "Specified rect %@ exceeds layer's frame including sublayers %@", v86, v87);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90);
  }

  v147.origin.x = x;
  v147.origin.y = y;
  v147.size.width = width;
  v147.size.height = height;
  v157.origin.x = a2;
  v157.origin.y = a3;
  v157.size.width = a4;
  v157.size.height = a5;
  v148 = CGRectIntersection(v147, v157);
  v91 = v148.origin.x;
  v92 = v148.origin.y;
  v93 = v148.size.width;
  v94 = v148.size.height;
  objc_msgSend_frame(v9, v95, v96);
  MinX = CGRectGetMinX(v149);
  v150.origin.x = v91;
  v150.origin.y = v92;
  v150.size.width = v93;
  v150.size.height = v94;
  v134 = CGRectGetMinX(v150);
  objc_msgSend_frame(v9, v97, v98);
  MinY = CGRectGetMinY(v151);
  v152.origin.x = v91;
  v152.origin.y = v92;
  v152.size.width = v93;
  v152.size.height = v94;
  v100 = CGRectGetMinY(v152);
  objc_msgSend_contentsScale(v9, v101, v102);
  v104 = v103;
  TSUMultiplySizeScalar();
  v106 = v105;
  v108 = v107;
  v109 = TSDMaxPixelAreaForiOSImages();
  v112 = v108 * v106;
  if (v108 * v106 > v109)
  {
    TSUShrinkSizeToFitInArea();
    TSUFlooredSize();
    v106 = v112;
    v108 = v113;
    v104 = v112 / v93;
  }

  if (objc_msgSend_wantsExtendedDynamicRangeContent(v18, v110, v111, v112))
  {
    v114 = 107;
  }

  else
  {
    v114 = 11;
  }

  v115 = TSDBitmapContextCreate(v114, v106, v108);
  if (v115)
  {
    v116 = v115;
    CGAffineTransformMakeScale(&v139, v104, v104);
    CGContextConcatCTM(v116, &v139);
    if (v18)
    {
      objc_msgSend_transform(v18, v117, v118);
    }

    else
    {
      memset(&v139, 0, sizeof(v139));
    }

    if (!CATransform3DIsIdentity(&v139))
    {
      v120 = *(MEMORY[0x277CBF2C0] + 16);
      *&v139.m11 = *MEMORY[0x277CBF2C0];
      *&v139.m13 = v120;
      *&v139.m21 = *(MEMORY[0x277CBF2C0] + 32);
      *&transform.a = *&v139.m11;
      *&transform.c = v120;
      *&transform.tx = *&v139.m21;
      CGAffineTransformTranslate(&v139, &transform, -v91, -v92);
      objc_msgSend_anchorPoint(v9, v121, v122);
      objc_msgSend_bounds(v9, v123, v124);
      TSUMultiplyPointBySize();
      v126 = v125;
      v128 = v127;
      *&t1.a = *&v139.m11;
      *&t1.c = *&v139.m13;
      *&t1.tx = *&v139.m21;
      CGAffineTransformTranslate(&transform, &t1, v125, v127);
      *&v139.m11 = *&transform.a;
      *&v139.m13 = *&transform.c;
      *&v139.m21 = *&transform.tx;
      objc_msgSend_affineTransform(v9, v129, v130);
      *&t2.a = *&v139.m11;
      *&t2.c = *&v139.m13;
      *&t2.tx = *&v139.m21;
      CGAffineTransformConcat(&transform, &t1, &t2);
      *&v139.m13 = *&transform.c;
      *&v139.m21 = *&transform.tx;
      *&v139.m11 = *&transform.a;
      t1 = transform;
      CGAffineTransformTranslate(&transform, &t1, -v126, -v128);
      *&v139.m13 = *&transform.c;
      *&v139.m21 = *&transform.tx;
      *&v139.m11 = *&transform.a;
      CGContextConcatCTM(v116, &transform);
    }

    CGAffineTransformMakeTranslation(&v139, MinX - v134, MinY - v100);
    CGContextConcatCTM(v116, &v139);
    objc_msgSend_renderInContext_(v9, v131, v116);
    Image = CGBitmapContextCreateImage(v116);
    CGContextRelease(v116);
  }

  else
  {
    Image = 0;
  }

LABEL_36:

  return Image;
}

uint64_t sub_2766A571C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_frameIncludingSublayers(a1, a2, a3);

  return MEMORY[0x2821F9670](a1, sel_bakedLayerForLayerRect_, v4);
}

id sub_2766A5754(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_newRasterizedImageRefForLayerRect_(a1, a2, a3);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v5, v6);
    objc_msgSend_contentsScale(a1, v9, v10);
    objc_msgSend_setContentsScale_(v8, v11, v12);
    objc_msgSend_frameIncludingSublayers(a1, v13, v14);
    objc_msgSend_setFrame_(v8, v15, v16);
    objc_msgSend_setContents_(v8, v17, v7);
    CGImageRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFString *sub_2766A57EC(uint64_t a1, const char *a2)
{
  switch(a1)
  {
    case 0:
      result = @"unknown";
      break;
    case 1:
      result = @"background";
      break;
    case 2:
      result = @"shadow";
      break;
    case 3:
      result = @"contact shadow";
      break;
    case 4:
      result = @"grouped shadow";
      break;
    case 5:
      result = @"object";
      break;
    case 6:
      result = @"text";
      break;
    case 7:
      result = @"parameterizedStroke";
      break;
    case 8:
      result = @"stroke";
      break;
    case 9:
      result = @"strokeLineEndForHead";
      break;
    case 10:
      result = @"strokeLineEndForTail";
      break;
    case 11:
      result = @"reflection";
      break;
    case 12:
      result = @"frame mask";
      break;
    case 13:
      result = @"reflection mask";
      break;
    case 14:
      result = @"video background fill";
      break;
    case 15:
      result = @"title";
      break;
    case 16:
      result = @"caption";
      break;
    case 17:
      v3 = MEMORY[0x277D81150];
      v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString * _Nonnull TSDStringFromTextureType(TSDTextureType)");
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 121, 0, "Invalid texture type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
      result = @"ERROR";
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_2766A6AB0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4C268;
  qword_280A4C268 = v0;
}

void sub_2766A7EC8(uint64_t a1, char *data, size_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v7 * v6 > a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], data, "[TSDTexturedRectangle p_rasterizationBlockWithBitmapSize:]_block_invoke");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 991, 0, "Insufficient memory for texture rasterization (%lu > %lu)", *(a1 + 64) * *(a1 + 56), a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
  }

  v15 = CGBitmapContextCreate(data, *(a1 + 72), v6, *(a1 + 80), v7, *(a1 + 88), *(a1 + 152));
  TSDSetCGContextInfo(v15, 0, 0, 0, 0, 1.0);
  v18 = objc_msgSend_currentCapabilities(TSDCapabilities, v16, v17);
  isHDRCapable = objc_msgSend_isHDRCapable(v18, v19, v20);

  if (isHDRCapable)
  {
    if (objc_msgSend_p_shouldUseFloatTextures(*(a1 + 32), v22, v23))
    {
      v24 = TSUColorSpaceSupportsHDR();
    }

    else
    {
      v24 = 0;
    }

    TSDCGContextSetShouldRenderHDRContent(v15, v24);
  }

  CGContextScaleCTM(v15, 1.0, -1.0);
  CGContextTranslateCTM(v15, 0.0, -*(a1 + 56));
  v25 = *(a1 + 72);
  v26 = *(a1 + 56);
  if (*(a1 + 40))
  {
    CGContextSaveGState(v15);
    v29 = objc_msgSend_CGColor(*(a1 + 40), v27, v28);
    CGContextSetFillColorWithColor(v15, v29);
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v46.size.width = v25;
    v46.size.height = v26;
    CGContextFillRect(v15, v46);
    CGContextRestoreGState(v15);
  }

  else
  {
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = *(a1 + 72);
    v47.size.height = *(a1 + 56);
    CGContextClearRect(v15, v47);
  }

  CGContextScaleCTM(v15, *(a1 + 96), *(a1 + 104));
  if (objc_msgSend_textureType(*(a1 + 32), v30, v31) == 7)
  {
    CGContextSetInterpolationQuality(v15, kCGInterpolationNone);
  }

  if (*(a1 + 112))
  {
    CGContextTranslateCTM(v15, 0.0, *(a1 + 144));
    CGContextScaleCTM(v15, 1.0, -1.0);
    TSDCGContextDrawImageRecordingMaxHeadroom(v15, *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
  }

  else
  {
    v33 = *(a1 + 48);
    if (v33)
    {
      (*(v33 + 16))(v33, v15);
    }

    else
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSDTexturedRectangle p_rasterizationBlockWithBitmapSize:]_block_invoke");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1027, 0, "%p - Nothing to render from", *(a1 + 32));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
    }
  }

  MaxHDRHeadroom = TSDCGContextGetMaxHDRHeadroom(v15);
  objc_msgSend_setHdrHeadroom_(*(a1 + 32), v42, v43, MaxHDRHeadroom);
  TSDClearCGContextInfo(v15);
  CGContextRelease(v15);
  if (*(a1 + 156) == 1)
  {
    v44 = *(a1 + 112);

    CGImageRelease(v44);
  }
}

void sub_2766AC66C(uint64_t a1, CGContextRef c)
{
  v28 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(c);
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v23, v27, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        objc_msgSend_begin(MEMORY[0x277CD9FF0], v7, v8, v23);
        objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v13, 1);
        v14 = MEMORY[0x277CD9FF0];
        isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v15, v16);
        objc_msgSend_activateBackground_(v14, v18, isMainThread ^ 1u);
        v19 = objc_autoreleasePoolPush();
        objc_msgSend_renderIntoContext_shouldApplyAlpha_shouldIgnoreLayerVisibility_(v12, v20, c, 1, 1);
        objc_autoreleasePoolPop(v19);
        objc_msgSend_commit(MEMORY[0x277CD9FF0], v21, v22);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v23, v27, 16);
    }

    while (v9);
  }

  CGContextRestoreGState(c);
}

void sub_2766AE010(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = v6;
  v10 = *(a1 + 65);
  if (*(a1 + 64) == 1)
  {
    v11 = v10 ^ 1;
LABEL_4:
    v13 = *(MEMORY[0x277CD9DE8] + 80);
    v33[4] = *(MEMORY[0x277CD9DE8] + 64);
    v33[5] = v13;
    v14 = *(MEMORY[0x277CD9DE8] + 112);
    v33[6] = *(MEMORY[0x277CD9DE8] + 96);
    v33[7] = v14;
    v15 = *(MEMORY[0x277CD9DE8] + 16);
    v33[0] = *MEMORY[0x277CD9DE8];
    v33[1] = v15;
    v16 = *(MEMORY[0x277CD9DE8] + 48);
    v33[2] = *(MEMORY[0x277CD9DE8] + 32);
    v33[3] = v16;
    objc_msgSend_setTransform_(v6, v7, v33);
    v12 = v11;
    goto LABEL_5;
  }

  v11 = 0;
  v12 = 0;
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((v12 & 1) == 0 && (*(a1 + 66) & 1) == 0 && *(a1 + 67) == 1)
  {
    if (*(a1 + 68) != 1 || (objc_msgSend_valueForKey_(v9, v7, @"apple:action-rotation"), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, *(a1 + 40));
      objc_msgSend_setValue_forKeyPath_(v9, v19, v18, @"transform.rotation.z");
    }
  }

  v20 = *(a1 + 48);
  if ((*(a1 + 69) & 1) == 0 && *(a1 + 70) == 1)
  {
    if (*(a1 + 68) != 1 || (objc_msgSend_valueForKey_(v9, v7, @"apple:action-scale"), v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
      objc_msgSend_bakedScale(v5, v7, v8);
      if (v24 != 0.0 && (*(a1 + 65) & 1) == 0 && (*(a1 + 64) & 1) == 0)
      {
        v20 = *(a1 + 48) / v24;
      }

      v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v20);
      objc_msgSend_setValue_forKeyPath_(v9, v26, v25, @"transform.scale.xy");
    }
  }

  if (v5)
  {
    v27 = *(a1 + 32);
    if (*(v27 + 112) != v9)
    {
      objc_msgSend_adjustAnchorRelativeToCenterOfRotation_atEventIndex_(v5, v7, *(a1 + 56), *(v27 + 200), *(v27 + 208));
      if ((v12 | *(a1 + 65)))
      {
        if ((*(a1 + 70) & 1) != 0 || (*(a1 + 66) & 1) == 0)
        {
          v30 = 0.0;
          if (*(a1 + 65) && (*(a1 + 66) & 1) == 0)
          {
            v30 = *(a1 + 40);
          }

          objc_msgSend_bakeLayerWithAngle_scale_layer_(v5, v28, v9, v30, v20);
        }

        if ((v12 & 1) != 0 && (*(a1 + 66) & 1) == 0 && (*(a1 + 65) & 1) == 0 && *(a1 + 67) == 1)
        {
          v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, *(a1 + 40));
          objc_msgSend_setValue_forKeyPath_(v9, v32, v31, @"transform.rotation.z");
        }
      }
    }
  }
}

void sub_2766AFD9C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v93 = objc_msgSend_fileFormatVersion(v4, v6, v7);
  v94 = v4;
  v9 = 0x277CBE000uLL;
  v10 = *(Message + 24);
  if (v10 < 1)
  {
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = sub_2766B0768;
    v106[3] = &unk_27A6CC790;
    v106[4] = a1;
    objc_msgSend_addFinalizeHandler_(v4, v8, v106);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_initWithCapacity_(v11, v12, v10);
    v15 = 8;
    do
    {
      v16 = objc_msgSend_instanceWithArchive_unarchiver_(TSDFill, v13, *(*(Message + 32) + v15), v4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_addObject_(v14, v17, v16);
      }

      else
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSSTheme(TSDArchiving) tsdLoadFromArchive:unarchiver:]");
        v20 = v14;
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSTheme_TSDArchiving.mm");
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v19, v22, 56, 0, "Read gradient preset of class %@.", v24);

        v14 = v20;
        v4 = v94;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }

      v15 += 8;
      --v10;
    }

    while (v10);
    objc_msgSend_setPresets_ofKind_(a1, v13, v14, *MEMORY[0x277D80B28]);

    v9 = 0x277CBE000;
  }

  v29 = *(Message + 48);
  if (v29 < 1)
  {
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = sub_2766B0814;
    v105[3] = &unk_27A6CC790;
    v105[4] = a1;
    objc_msgSend_addFinalizeHandler_(v4, v28, v105);
  }

  else
  {
    v30 = objc_alloc(*(v9 + 2840));
    v95 = objc_msgSend_initWithCapacity_(v30, v31, v29);
    v33 = 8;
    do
    {
      v34 = objc_msgSend_instanceWithArchive_unarchiver_(TSDFill, v32, *(*(Message + 56) + v33), v4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = objc_msgSend_context(a1, v35, v36);
        v39 = objc_msgSend_imageFillFromColorFill_objContext_(TSDQuicklookPersistenceAdditions, v38, v34, v37);

        v34 = v39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_addObject_(v95, v40, v34);
      }

      else
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSSTheme(TSDArchiving) tsdLoadFromArchive:unarchiver:]");
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSTheme_TSDArchiving.mm");
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v44, 83, 0, "Read image fill preset of class %@.", v46);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
      }

      v33 += 8;
      --v29;
    }

    while (v29);
    objc_msgSend_setPresets_ofKind_(a1, v32, v95, *MEMORY[0x277D80B30]);

    v9 = 0x277CBE000;
  }

  v52 = *(Message + 72);
  v55 = objc_msgSend_array(*(v9 + 2840), v50, v51);
  if (v52 >= 1)
  {
    v56 = 8;
    do
    {
      v57 = objc_msgSend_instanceWithArchive_unarchiver_(TSDShadow, v53, *(*(Message + 80) + v56), v4);
      objc_msgSend_addObject_(v55, v58, v57);

      v56 += 8;
      --v52;
    }

    while (v52);
  }

  if (objc_msgSend_sourceType(v4, v53, v54) == 1)
  {
    v60 = objc_opt_class();
    v62 = objc_msgSend_p_prepareShadowPresetsFromRawUnarchivedList_fromVersion_(v60, v61, v55, v93);
    v65 = objc_msgSend_second(v62, v63, v64);
    v68 = objc_msgSend_BOOLValue(v65, v66, v67);

    if (v68)
    {
      objc_msgSend_willModifyForUpgrade(a1, v69, v70);
    }

    v71 = objc_msgSend_first(v62, v69, v70);
    objc_msgSend_setPresets_ofKind_(a1, v72, v71, *MEMORY[0x277D80B80]);
  }

  else
  {
    objc_msgSend_setPresets_ofKind_(a1, v59, v55, *MEMORY[0x277D80B80]);
  }

  if (*(Message + 96) >= 1)
  {
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = sub_2766B08C0;
    v104[3] = &unk_27A6CC598;
    v104[4] = a1;
    v74 = v4;
    v75 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v74, v76, Message + 88, v75, 0, v104);
  }

  if (*(Message + 120) >= 1)
  {
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = sub_2766B08D8;
    v103[3] = &unk_27A6CC598;
    v103[4] = a1;
    v77 = v4;
    v78 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v77, v79, Message + 112, v78, 0, v103);
  }

  if (*(Message + 144) >= 1)
  {
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_2766B08F0;
    v102[3] = &unk_27A6CC598;
    v102[4] = a1;
    v80 = v4;
    v81 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v80, v82, Message + 136, v81, 0, v102);
  }

  if (*(Message + 168) >= 1)
  {
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = sub_2766B0908;
    v101[3] = &unk_27A6CC598;
    v101[4] = a1;
    v83 = v4;
    v84 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v83, v85, Message + 160, v84, 0, v101);
  }

  if (*(Message + 192) < 1)
  {
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_2766B0938;
    v99[3] = &unk_27A6CC790;
    v99[4] = a1;
    objc_msgSend_addFinalizeHandler_(v4, v73, v99);
  }

  else
  {
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = sub_2766B0920;
    v100[3] = &unk_27A6CC598;
    v100[4] = a1;
    v86 = v4;
    v87 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v86, v88, Message + 184, v87, 0, v100);
  }

  if (*(Message + 216) < 1)
  {
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_2766B09D0;
    v97[3] = &unk_27A6CC790;
    v97[4] = a1;
    objc_msgSend_addFinalizeHandler_(v4, v89, v97);
  }

  else
  {
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = sub_2766B09B8;
    v98[3] = &unk_27A6CC598;
    v98[4] = a1;
    v90 = v4;
    v91 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v90, v92, Message + 208, v91, 0, v98);
  }
}

uint64_t sub_2766B0768()
{
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_2768087BC();
  }

  v0 = *MEMORY[0x277D80B28];

  return MEMORY[0x2821F9670](TSDGradient, sel_bootstrapPresetsOfKind_inTheme_alternate_, v0);
}

void sub_2766B07D0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_2766B0814()
{
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_2768087D0();
  }

  v0 = *MEMORY[0x277D80B30];

  return MEMORY[0x2821F9670](TSDImageFill, sel_bootstrapPresetsOfKind_inTheme_alternate_, v0);
}

void sub_2766B087C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_2766B0938(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2766B09AC;
  v4[3] = &unk_27A6CCBB0;
  v4[4] = v2;
  return objc_msgSend_upgradeStylesWithBlock_(v2, a2, v4);
}

uint64_t sub_2766B09D0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2766B0A44;
  v4[3] = &unk_27A6CCBB0;
  v4[4] = v2;
  return objc_msgSend_upgradeStylesWithBlock_(v2, a2, v4);
}

id sub_2766B0A54(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = a3;
  v9 = v6;
  if (a4 >= 0xA000000000001 || objc_msgSend_count(v6, v7, v8) >= 8)
  {
    if (objc_msgSend_count(v9, v7, v8))
    {
      v11 = objc_msgSend_p_prepareUnarchivedShadowPresetsByRemovingHiddenPresets_duringUpgrade_(a1, v10, v9, a4 < 0xA000000000001);
      goto LABEL_8;
    }

    objc_msgSend_p_prepareDefaultShadowPresetsForUpgrade_(a1, v10, 0);
  }

  else
  {
    objc_msgSend_p_prepareDefaultShadowPresetsForUpgrade_(a1, v7, 1);
  }
  v11 = ;
LABEL_8:
  v12 = v11;

  return v12;
}

id sub_2766B0B18(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((a3 & 1) == 0 && *MEMORY[0x277D81408] != -1)
  {
    sub_2768087E4();
  }

  v3 = MEMORY[0x277D812A8];
  v4 = objc_msgSend_defaultShadowPresets(TSDShadow, a2, a3);
  v6 = objc_msgSend_pairWithFirst_second_(v3, v5, v4, MEMORY[0x277CBEC38]);

  return v6;
}

void sub_2766B0BB4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

id sub_2766B0BF8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (objc_msgSend_count(v6, v7, v8) < 2)
  {
    v30 = 0;
    v24 = v6;
  }

  else
  {
    v10 = objc_msgSend_p_filteredShadowPresetListFromOriginalList_currentList_attemptingToRemovePresetAtOriginalIndex_duringUpgrade_(a1, v9, v6, v6, 2, a4);
    v13 = objc_msgSend_first(v10, v11, v12);

    v16 = objc_msgSend_second(v10, v14, v15);
    v19 = objc_msgSend_BOOLValue(v16, v17, v18);

    v21 = objc_msgSend_p_filteredShadowPresetListFromOriginalList_currentList_attemptingToRemovePresetAtOriginalIndex_duringUpgrade_(a1, v20, v6, v13, 3, a4);
    v24 = objc_msgSend_first(v21, v22, v23);

    v27 = objc_msgSend_second(v21, v25, v26);
    v30 = v19 | objc_msgSend_BOOLValue(v27, v28, v29);
  }

  v31 = MEMORY[0x277D812A8];
  v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, v30);
  v34 = objc_msgSend_pairWithFirst_second_(v31, v33, v24, v32);

  return v34;
}

void sub_2766B0D68(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_2766B0DE0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v9 = a3;
  v12 = objc_msgSend_mutableCopy(a4, v10, v11);
  if (objc_msgSend_count(v9, v13, v14) >= (a5 + 1))
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(v9, v15, a5);
    v28 = objc_opt_class();
    v30 = objc_msgSend_p_hiddenShadowAtIndex_(v28, v29, a5);
    isEqual = objc_msgSend_isEqual_(v27, v31, v30);

    if ((isEqual | a6))
    {
      v26 = isEqual ^ 1u;
    }

    else
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSSTheme(TSDArchiving) p_filteredShadowPresetListFromOriginalList:currentList:attemptingToRemovePresetAtOriginalIndex:duringUpgrade:]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSTheme_TSDArchiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 243, 0, "Shadow preset at index %zu does not match the expected value for the dummy hidden shadow.", a5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      v26 = 1;
    }

    objc_msgSend_removeObject_(v12, v33, v27);
  }

  else
  {
    if ((a6 & 1) == 0)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSSTheme(TSDArchiving) p_filteredShadowPresetListFromOriginalList:currentList:attemptingToRemovePresetAtOriginalIndex:duringUpgrade:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSTheme_TSDArchiving.mm");
      v22 = objc_msgSend_count(v9, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v17, v19, 250, 0, "Shadow preset list with %zu presets does not have dummy shadow preset at index %zu.", v22, a5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = 1;
  }

  v41 = MEMORY[0x277D812A8];
  v42 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, v26);
  v44 = objc_msgSend_pairWithFirst_second_(v41, v43, v12, v42);

  return v44;
}

void sub_2766B1060(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a4;
  TSD::ThemePresetsArchive::default_instance(v5);
  v6 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v9 = objc_msgSend_presetsOfKind_(a1, v7, *MEMORY[0x277D80B18]);
  if (v9)
  {
    objc_msgSend_setStrongReferenceArray_message_(v5, v8, v9, v6 + 208);
  }

  v10 = objc_msgSend_presetsOfKind_(a1, v8, *MEMORY[0x277D80B28]);

  if (v10)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v12 = v10;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v80, v86, 16);
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = *v81;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v80 + 1) + 8 * v17);
        v19 = *(v6 + 32);
        if (!v19)
        {
          goto LABEL_14;
        }

        v20 = *(v6 + 24);
        v21 = *v19;
        if (v20 < *v19)
        {
          *(v6 + 24) = v20 + 1;
          objc_msgSend_saveToArchive_archiver_(v18, v14, *&v19[2 * v20 + 2], v5);
          goto LABEL_16;
        }

        if (v21 == *(v6 + 28))
        {
LABEL_14:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 16));
          v19 = *(v6 + 32);
          v21 = *v19;
        }

        *v19 = v21 + 1;
        v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(*(v6 + 16));
        v23 = *(v6 + 24);
        v24 = *(v6 + 32) + 8 * v23;
        *(v6 + 24) = v23 + 1;
        *(v24 + 8) = v22;
        objc_msgSend_saveToArchive_archiver_(v18, v25, v22, v5);
LABEL_16:
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v80, v86, 16);
      if (!v15)
      {
LABEL_18:

        break;
      }
    }
  }

  v26 = objc_msgSend_presetsOfKind_(a1, v11, *MEMORY[0x277D80B30]);

  if (!v26)
  {
    goto LABEL_35;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v29 = v26;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v76, v85, 16);
  if (!v32)
  {
    goto LABEL_34;
  }

  v33 = *v77;
  do
  {
    v34 = 0;
    do
    {
      if (*v77 != v33)
      {
        objc_enumerationMutation(v29);
      }

      v35 = *(*(&v76 + 1) + 8 * v34);
      v36 = *(v6 + 56);
      if (!v36)
      {
        goto LABEL_30;
      }

      v37 = *(v6 + 48);
      v38 = *v36;
      if (v37 < *v36)
      {
        *(v6 + 48) = v37 + 1;
        objc_msgSend_saveToArchive_archiver_(v35, v31, *&v36[2 * v37 + 2], v5);
        goto LABEL_32;
      }

      if (v38 == *(v6 + 52))
      {
LABEL_30:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 40));
        v36 = *(v6 + 56);
        v38 = *v36;
      }

      *v36 = v38 + 1;
      v39 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(*(v6 + 40));
      v40 = *(v6 + 48);
      v41 = *(v6 + 56) + 8 * v40;
      *(v6 + 48) = v40 + 1;
      *(v41 + 8) = v39;
      objc_msgSend_saveToArchive_archiver_(v35, v42, v39, v5);
LABEL_32:
      ++v34;
    }

    while (v32 != v34);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v76, v85, 16);
  }

  while (v32);
LABEL_34:

LABEL_35:
  if (objc_msgSend_targetType(v5, v27, v28))
  {
    objc_msgSend_presetsOfKind_(a1, v43, *MEMORY[0x277D80B80]);
  }

  else
  {
    objc_msgSend_p_shadowPresetsToArchive(a1, v43, v44);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v45 = v73 = 0u;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v72, v84, 16);
  if (v48)
  {
    v49 = *v73;
    do
    {
      v50 = 0;
      do
      {
        if (*v73 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v72 + 1) + 8 * v50);
        v52 = *(v6 + 80);
        if (!v52)
        {
          goto LABEL_48;
        }

        v53 = *(v6 + 72);
        v54 = *v52;
        if (v53 < *v52)
        {
          *(v6 + 72) = v53 + 1;
          objc_msgSend_saveToArchive_archiver_(v51, v47, *&v52[2 * v53 + 2], v5, v72);
          goto LABEL_50;
        }

        if (v54 == *(v6 + 76))
        {
LABEL_48:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 64));
          v52 = *(v6 + 80);
          v54 = *v52;
        }

        *v52 = v54 + 1;
        v55 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(*(v6 + 64));
        v56 = *(v6 + 72);
        v57 = *(v6 + 80) + 8 * v56;
        *(v6 + 72) = v56 + 1;
        *(v57 + 8) = v55;
        objc_msgSend_saveToArchive_archiver_(v51, v58, v55, v5, v72);
LABEL_50:
        ++v50;
      }

      while (v48 != v50);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v72, v84, 16);
    }

    while (v48);
  }

  v60 = objc_msgSend_presetsOfKind_(a1, v59, *MEMORY[0x277D80B50]);

  if (v60)
  {
    objc_msgSend_setStrongReferenceArray_message_(v5, v61, v60, v6 + 88);
  }

  v62 = objc_msgSend_presetsOfKind_(a1, v61, *MEMORY[0x277D80B88], v72);

  v64 = v62;
  if (v62)
  {
    objc_msgSend_setStrongReferenceArray_message_(v5, v63, v62, v6 + 112);
  }

  v65 = objc_msgSend_presetsOfKind_(a1, v63, *MEMORY[0x277D80BB8]);

  v67 = v65;
  if (v65)
  {
    objc_msgSend_setStrongReferenceArray_message_(v5, v66, v65, v6 + 136);
  }

  v68 = objc_msgSend_presetsOfKind_(a1, v66, *MEMORY[0x277D80B38]);

  if (v68)
  {
    objc_msgSend_setStrongReferenceArray_message_(v5, v69, v68, v6 + 160);
  }

  v70 = objc_msgSend_presetsOfKind_(a1, v69, *MEMORY[0x277D80B68]);

  if (v70)
  {
    objc_msgSend_setStrongReferenceArray_message_(v5, v71, v70, v6 + 184);
  }
}

id sub_2766B168C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v6 = objc_msgSend_presetsOfKind_(a1, v5, *MEMORY[0x277D80B80]);
  objc_msgSend_addObjectsFromArray_(v4, v7, v6);

  if (objc_msgSend_count(v4, v8, v9) >= 2)
  {
    v10 = objc_opt_class();
    v12 = objc_msgSend_p_hiddenShadowAtIndex_(v10, v11, 2);
    objc_msgSend_insertObject_atIndex_(v4, v13, v12, 2);

    v14 = objc_opt_class();
    v16 = objc_msgSend_p_hiddenShadowAtIndex_(v14, v15, 3);
    objc_msgSend_insertObject_atIndex_(v4, v17, v16, 3);
  }

  return v4;
}

id sub_2766B1794(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 == 3)
  {
    v10 = [TSDDropShadow alloc];
    v7 = objc_msgSend_blackColor(MEMORY[0x277D81180], v11, v12);
    v9 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v10, v13, v7, 1, 45.0, 0.0, 10.0, 0.75);
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v4 = [TSDDropShadow alloc];
    v7 = objc_msgSend_blackColor(MEMORY[0x277D81180], v5, v6);
    v9 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v4, v8, v7, 1, 90.0, 8.0, 10.0, 0.5);
LABEL_5:
    v14 = v9;

    goto LABEL_7;
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSSTheme(TSDArchiving) p_hiddenShadowAtIndex:]");
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSTheme_TSDArchiving.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 338, 0, "Unexpected hidden shadow index (%zu).", a3);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  v14 = objc_msgSend_defaultShadow(TSDShadow, v22, v23);
LABEL_7:

  return v14;
}

uint64_t sub_2766B20DC(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setStyle_(*(a1 + 32), a2, *(a1 + 40));
  *(*(a1 + 32) + 304) = 1065353216;
  return result;
}

uint64_t sub_2766B221C(uint64_t a1, const char *a2)
{
  objc_msgSend_setMovieData_(*(a1 + 32), a2, *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return MEMORY[0x2821F9670](v3, sel_p_setPropertiesFromLoadedAsset_, v4);
}

uint64_t sub_2766B2360(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 312);
  *(v5 + 312) = v4;

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);

  return MEMORY[0x2821F9670](v7, sel_p_setPropertiesFromLoadedAsset_, v8);
}

uint64_t sub_2766B4630(uint64_t a1, const char *a2)
{

  return objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, a2, v3, v4, 796, 0);
}

void sub_2766B4DB0(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 232);
  *(v6 + 232) = v5;
}

void sub_2766B4E2C(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 328);
  *(v6 + 328) = v5;
}

void sub_2766B4EA8(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_data(v8, v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 264);
  *(v6 + 264) = v5;
}

void sub_2766B4F3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if ((*(v4 + 256) & 1) == 0 && (*(v4 + 361) & 1) == 0)
  {
    v5 = *(v4 + 232);
    if (v5)
    {
      v6 = objc_msgSend_needsDownload(v5, a2, a3);
      v4 = *(a1 + 32);
      if ((v6 & 1) == 0 && !*(v4 + 328))
      {
        v51 = objc_msgSend_context(*(a1 + 32), a2, a3);
        v8 = objc_msgSend_synchronouslyGenerateDefaultPosterImageForContext_(v4, v7, v51);
        objc_msgSend_setPosterImageData_(*(a1 + 32), v9, v8);

        v4 = *(a1 + 32);
      }
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && *(v4 + 328))
  {
    objc_opt_class();
    v12 = objc_msgSend_attributes(*(*(a1 + 32) + 328), v10, v11);
    v52 = TSUDynamicCast();

    if (v52 && objc_msgSend_hasPixelSize(v52, v13, v14))
    {
      objc_msgSend_pixelSize(v52, v13, v14);
      v15 = (*(a1 + 32) + 344);
      *v15 = v16;
      v15[1] = v17;
    }

    else
    {
      v18 = objc_msgSend_sharedPool(TSDImageProviderPool, v13, v14);
      v20 = objc_msgSend_providerForData_shouldValidate_(v18, v19, *(*(a1 + 32) + 328), 1);

      if ((objc_msgSend_isError(v20, v21, v22) & 1) == 0)
      {
        objc_msgSend_naturalSize(v20, v23, v24);
        v25 = (*(a1 + 32) + 344);
        *v25 = v26;
        v25[1] = v27;
      }
    }

    v4 = *(a1 + 32);
  }

  if (!*(v4 + 368))
  {
    v28 = objc_msgSend_documentRoot(v4, a2, a3);
    v53 = objc_msgSend_theme(v28, v29, v30);

    v33 = objc_msgSend_documentRoot(*(a1 + 32), v31, v32);
    v36 = objc_msgSend_stylesheet(v33, v34, v35);
    objc_msgSend_installMoviePresetsInStylesheet_(v53, v37, v36);

    objc_opt_class();
    v39 = objc_msgSend_presetOfKind_index_(v53, v38, *MEMORY[0x277D80B68], 0);
    v40 = TSUDynamicCast();

    if (!v40)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSDMovieInfo(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_5");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfoPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 219, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    }

    v49 = *(a1 + 32);
    v50 = *(v49 + 368);
    *(v49 + 368) = v40;
  }
}

void sub_2766B5A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2766B5A68(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 4u;
  v4 = *(v3 + 64);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v5);
    *(v3 + 64) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDMovieInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_2766B5EB0(void *a1, double *a2, double *a3, double *a4, double *a5, void *a6, double a7)
{
  v35 = a1;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  if (objc_msgSend_i_hasImages(v35, v13, v14))
  {
    objc_msgSend_i_leftWidth(v35, v15, v16);
    *&v21 = v21 * a7;
    v20 = ceilf(*&v21);
    objc_msgSend_i_rightWidth(v35, v22, v23);
    *&v24 = v24 * a7;
    v19 = ceilf(*&v24);
    objc_msgSend_i_topHeight(v35, v25, v26);
    *&v27 = v27 * a7;
    v18 = ceilf(*&v27);
    objc_msgSend_i_bottomHeight(v35, v28, v29);
    *&v30 = v30 * a7;
    v17 = ceilf(*&v30);
  }

  if (!objc_msgSend_i_hasAdornment(v35, v15, v16))
  {
    v33 = *MEMORY[0x277CBF3A8];
    v34 = *(MEMORY[0x277CBF3A8] + 8);
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  objc_msgSend_i_adornmentSize(v35, v31, v32);
  TSUMultiplySizeScalar();
  if (a2)
  {
LABEL_7:
    *a2 = v20;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v19;
  }

  if (a4)
  {
    *a4 = v18;
  }

  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v33;
    a6[1] = v34;
  }
}

uint64_t sub_2766B7E1C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = [TSDExteriorTextWrap alloc];
      v13 = objc_msgSend_initWithArchive_(v11, v12, *(*(a3 + 16) + v10));
      objc_msgSend_addObject_(v9, v14, v13);

      v10 += 8;
      --v5;
    }

    while (v5);
  }

  v15 = objc_msgSend_initWithArray_(a1, v8, v9);

  return v15;
}

uint64_t sub_2766B7ED0(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v20, v24, 16);
  if (result)
  {
    v9 = result;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(a1);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = a3[2];
        if (!v13)
        {
          goto LABEL_11;
        }

        v14 = *(a3 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a3 + 2) = v14 + 1;
          objc_msgSend_saveToArchive_archiver_(v12, v8, *&v13[2 * v14 + 2], a4);
          goto LABEL_13;
        }

        if (v15 == *(a3 + 3))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3);
          v13 = a3[2];
          v15 = *v13;
        }

        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::ExteriorTextWrapArchive>(*a3);
        v17 = *(a3 + 2);
        v18 = a3[2] + 8 * v17;
        *(a3 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_saveToArchive_archiver_(v12, v19, v16, a4);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v8, &v20, v24, 16);
      v9 = result;
    }

    while (result);
  }

  return result;
}