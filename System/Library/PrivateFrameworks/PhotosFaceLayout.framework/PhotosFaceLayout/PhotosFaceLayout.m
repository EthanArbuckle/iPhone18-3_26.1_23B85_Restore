void PFLGeneratePhotosFace(void *a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CD9880]);
  v16[0] = *MEMORY[0x277CD9AE8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 addFetchPropertySets:v9];

  v10 = MEMORY[0x277CD97A8];
  v15 = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 fetchAssetsWithUUIDs:v11 options:v8];

  v13 = [v12 firstObject];

  if (v13)
  {
    PFLGeneratePhotosFaceCommon(v13, v6, 0, v7);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284075FD0 code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v14);
  }
}

void PFLGeneratePhotosFaceCommon(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = pfl_layout_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v7;
    v27 = 2080;
    v28 = [v8 fileSystemRepresentation];
    _os_log_impl(&dword_22D2ED000, v11, OS_LOG_TYPE_DEFAULT, "PFLGeneratePhotosFace: Calculate watch face layers for %@ in %s", buf, 0x16u);
  }

  v12 = +[PFLSegmentationCalculator sharedInstance];
  v13 = [[PFLJetsamInfoInterval alloc] initWithLabel:@"bestSegmentationForAsset (allPositions)"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __PFLGeneratePhotosFaceCommon_block_invoke;
  v19[3] = &unk_27875B970;
  v23 = v7;
  v24 = v10;
  v20 = v13;
  v21 = v8;
  v22 = v9;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v18 = v13;
  [v12 bestSegmentationForAsset:v14 completion:v19];
}

void PFLGeneratePhotosFaceWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __PFLGeneratePhotosFaceWithOptions_block_invoke;
  v9[3] = &unk_27875B948;
  v10 = v7;
  v8 = v7;
  PFLGeneratePhotosFaceCommon(a1, a2, a3, v9);
}

void __PFLGeneratePhotosFaceWithOptions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v7 = v5;
  if (a2 && !v5)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __PFLGeneratePhotosFaceCommon_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pfl_layout_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [v5 count];
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_22D2ED000, v7, OS_LOG_TYPE_DEFAULT, "bestSegmentationForAsset returned %ld layouts, error == %@", buf, 0x16u);
  }

  [*(a1 + 32) logCurrentInterval];
  [*(a1 + 32) reset];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(*(a1 + 40), "fileSystemRepresentation")}];
    v61 = 0;
    [v8 createDirectoryIfNeededAtPath:v9 error:&v61];
    v10 = v61;

    if (v10)
    {
      (*(*(a1 + 64) + 16))();
LABEL_40:

      goto LABEL_41;
    }

    v11 = [*(a1 + 48) objectForKeyedSubscript:@"PFCLSaveFullsizeMask"];
    v53 = [v11 BOOLValue];

    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v59 = v5;
    v58 = v12;
    v14 = pfl_layout_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 localIdentifier];
      v16 = [v59 count];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      _os_log_impl(&dword_22D2ED000, v14, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: generating layers for %@, %ld layouts", buf, 0x16u);
    }

    v55 = canEncodeHEIC();
    v17 = MEMORY[0x277CD97A8];
    v18 = [v13 localIdentifier];
    v57 = [v17 uuidFromLocalIdentifier:v18];

    v19 = objc_opt_new();
    v20 = [v13 localIdentifier];
    [v19 setLocalIdentifier:v20];

    v21 = [v13 pfl_modificationDate];
    [v19 setModificationDate:v21];

    v22 = [v13 pfl_creationDate];
    [v19 setCreationDate:v22];

    [v19 setParallaxScale:*MEMORY[0x277D3B3B8]];
    [v19 setUserEdited:0];
    v60 = v13;
    v23 = objc_opt_new();
    [v23 setVersion:0];
    [v23 setDeliveryMode:1];
    [v23 setNetworkAccessAllowed:1];
    [v23 setSynchronous:1];
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy_;
    v76 = __Block_byref_object_dispose_;
    v77 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 1;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy_;
    v66 = __Block_byref_object_dispose_;
    v67 = 0;
    v24 = [MEMORY[0x277CD9898] defaultManager];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __imageDataForAsset_block_invoke;
    v79 = &unk_27875B9C0;
    v80 = &v72;
    v81 = &v68;
    v82 = &v62;
    [v24 requestImageDataAndOrientationForAsset:v60 options:v23 resultHandler:buf];

    v25 = v73[5];
    if (v25 && !v63[5])
    {
      v54 = *(v69 + 6);
      v28 = v25;
    }

    else
    {
      v26 = pfl_layout_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v60 localIdentifier];
        __PFLGeneratePhotosFaceCommon_block_invoke_cold_1(v27, &v63, v90, v26);
      }

      v25 = 0;
      v54 = 1;
    }

    v29 = v63[5];
    _Block_object_dispose(&v62, 8);

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v72, 8);

    v56 = v25;
    if (v29)
    {
      v30 = pfl_layout_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v60;
        _os_log_impl(&dword_22D2ED000, v30, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: no data for %@", buf, 0xCu);
      }

      v31 = v29;
      v32 = 0;
      goto LABEL_34;
    }

    v33 = [v59 objectAtIndexedSubscript:0];
    v34 = [v33 foregroundMask] == 0;

    if (v34)
    {
      v40 = 0;
    }

    else
    {
      v52 = [v59 objectAtIndexedSubscript:0];
      v35 = [v52 foregroundMask];
      v51 = [v59 objectAtIndexedSubscript:0];
      v36 = [v51 maskIsInverted];
      v37 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:v35];
      v50 = [MEMORY[0x277CBF740] context];
      space = CGColorSpaceCreateWithName(*MEMORY[0x277CBF440]);
      if (v36)
      {
        v38 = [MEMORY[0x277CBF750] filterWithName:@"CIColorInvert"];
        [v38 setValue:v37 forKey:*MEMORY[0x277CBFAF0]];
        v39 = [v38 outputImage];
        [v37 extent];
        v40 = [v50 createCGImage:v39 fromRect:*MEMORY[0x277CBF988] format:space colorSpace:?];
      }

      else
      {
        [v37 extent];
        v40 = [v50 createCGImage:v37 fromRect:*MEMORY[0x277CBF988] format:space colorSpace:?];
      }

      CGColorSpaceRelease(space);

      if (!v40)
      {
        v42 = pfl_layout_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2ED000, v42, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: cannot create a CGImage mask from CVPixelBuffer", buf, 2u);
        }

        goto LABEL_32;
      }

      if (v53)
      {
        v41 = pfl_layout_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_impl(&dword_22D2ED000, v41, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: also saving full size mask in %@", buf, 0xCu);
        }

        v42 = pngDataFromImage(v40);
        if (v42)
        {
          v43 = [v58 URLByAppendingPathComponent:@"FullSizeMask.png" isDirectory:0];
          v44 = saveDataToFile(v42, v43);
        }

LABEL_32:
      }
    }

    v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v59, "count", space)}];
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0xBFF0000000000000;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = -1;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __generateWatchLayers_block_invoke;
    v79 = &unk_27875B998;
    v85 = &v72;
    v86 = &v62;
    v87 = v40;
    v80 = v60;
    v81 = v56;
    v88 = v54;
    v82 = v58;
    v83 = v57;
    v89 = v55;
    v46 = v45;
    v84 = v46;
    [v59 enumerateObjectsUsingBlock:buf];
    CGImageRelease(v40);
    [v19 setLayouts:v46];
    [v19 setPreferredLayout:v63[3]];
    v32 = v19;

    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v72, 8);

LABEL_34:
    v47 = v29;
    [*(a1 + 32) logCurrentInterval];
    if (v29)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v48 = pfl_layout_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_impl(&dword_22D2ED000, v48, OS_LOG_TYPE_DEFAULT, "PFLGeneratePhotosFace: Returning photo %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }

    goto LABEL_40;
  }

  (*(*(a1 + 64) + 16))();
LABEL_41:
}

void sub_22D2EF1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void __generateWatchLayers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 cropScore];
  if (v6 > *(*(*(a1 + 72) + 8) + 24))
  {
    [v5 cropScore];
    *(*(*(a1 + 72) + 8) + 24) = v7;
    *(*(*(a1 + 80) + 8) + 24) = a3;
  }

  if ([v5 usesMask])
  {
    v8 = *(a1 + 88);
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 96);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *(a1 + 100);
  v15 = v5;
  v16 = v12;
  v17 = v13;
  v18 = v9;
  v19 = v10;
  v20 = pfl_layout_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412290;
    v36 = v15;
    _os_log_impl(&dword_22D2ED000, v20, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayout: generating layout %@", &v35, 0xCu);
  }

  v21 = [v15 timePosition];
  [v15 visibleRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v15 timeRect];
  v34 = PFLGenerateWatchLayout(v19, v18, v11, v8, v21, v17, v16, v14, v23, v25, v27, v29, v30, v31, v32, v33);

  if (v34)
  {
    [*(a1 + 64) addObject:v34];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __imageDataForAsset_block_invoke(void *a1, void *a2, uint64_t a3, int a4, void *a5)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v13 = a2;
  v9 = a5;
  *(*(a1[5] + 8) + 24) = a4;
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id pfl_photo_log()
{
  if (pfl_photo_log_onceToken != -1)
  {
    pfl_photo_log_cold_1();
  }

  v1 = pfl_photo_log___logger;

  return v1;
}

uint64_t __pfl_photo_log_block_invoke()
{
  pfl_photo_log___logger = os_log_create("com.apple.photosfacelayout", "photo");

  return MEMORY[0x2821F96F8]();
}

id pfl_layout_log()
{
  if (pfl_layout_log_onceToken != -1)
  {
    pfl_layout_log_cold_1();
  }

  v1 = pfl_layout_log___logger;

  return v1;
}

uint64_t __pfl_layout_log_block_invoke()
{
  pfl_layout_log___logger = os_log_create("com.apple.photosfacelayout", "layout");

  return MEMORY[0x2821F96F8]();
}

id pfl_jetsam_log()
{
  if (pfl_jetsam_log_onceToken != -1)
  {
    pfl_jetsam_log_cold_1();
  }

  v1 = pfl_jetsam_log___logger;

  return v1;
}

uint64_t __pfl_jetsam_log_block_invoke()
{
  pfl_jetsam_log___logger = os_log_create("com.apple.photosfacelayout", "jetsam");

  return MEMORY[0x2821F96F8]();
}

void sub_22D2F2AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t getImageOrientationFromSource(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = 1;
  if (v1)
  {
    v3 = v1;
    Value = CFDictionaryGetValue(v1, *MEMORY[0x277CD3410]);
    valuePtr = 1;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        v2 = valuePtr;
      }

      else
      {
        v2 = 1;
      }
    }

    CFRelease(v3);
  }

  return v2;
}

uint64_t getImageOrientationFromData(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  ImageOrientationFromSource = getImageOrientationFromSource(v1);
  CFRelease(v1);
  return ImageOrientationFromSource;
}

__n128 makePresentationTransform@<Q0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result.n128_u64[0] = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        *a4 = 0x3FF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        return result;
      }

      if (a1 == 2)
      {
        result.n128_f64[0] = a2;
        *a4 = 0xBFF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
LABEL_9:
        *(a4 + 32) = result.n128_u64[0];
        return result;
      }

      goto LABEL_21;
    }

    if (a1 != 3)
    {
      result.n128_f64[0] = a3;
      *a4 = 0x3FF0000000000000;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0xBFF0000000000000;
      goto LABEL_15;
    }

    result.n128_f64[0] = a2;
    v9 = a3;
    *a4 = 0xBFF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 != 7)
    {
      if (a1 != 8)
      {
LABEL_21:
        v11 = MEMORY[0x277CBF2C0];
        v12 = *(MEMORY[0x277CBF2C0] + 16);
        *a4 = *MEMORY[0x277CBF2C0];
        *(a4 + 16) = v12;
        result = v11[2];
        *(a4 + 32) = result;
        return result;
      }

      result.n128_f64[0] = a2;
      *(a4 + 8) = xmmword_22D2F5DC0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
LABEL_15:
      *(a4 + 40) = result.n128_u64[0];
      return result;
    }

    result.n128_f64[0] = a3;
    v9 = a2;
    __asm { FMOV            V2.2D, #-1.0 }

    *(a4 + 8) = _Q2;
LABEL_20:
    *(a4 + 32) = result.n128_u64[0];
    *(a4 + 40) = v9;
    return result;
  }

  if (a1 != 5)
  {
    result.n128_f64[0] = a3;
    *(a4 + 8) = xmmword_22D2F5DD0;
    goto LABEL_9;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *(a4 + 8) = result;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  return result;
}

double storedSizeForOrientation(int a1, double a2, double a3)
{
  memset(&v7, 0, sizeof(v7));
  makePresentationTransform(a1, 0, 0, &v6);
  CGAffineTransformInvert(&v7, &v6);
  *&result = *&vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*&v7.c, a3), *&v7.a, a2));
  return result;
}

double presentationSizeForOrientation(int a1, double a2, double a3)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  makePresentationTransform(a1, 0, 0, &v6);
  *&result = *&vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v7, a3), v6, a2));
  return result;
}

CGFloat uprightCTM@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = MEMORY[0x277CBF2C0];
  v7 = *MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_22D2F5DE0;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v10 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v10;
  *&t2.tx = *(a3 + 32);
  v11 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v11;
  *&v16.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v16);
  v12 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v12;
  *(a3 + 32) = *&t1.tx;
  v13 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v13;
  *&t2.tx = *(a3 + 32);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_22D2F5DE0;
  v16.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v16);
  v14 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v14;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

double flipYNormalizedRect(double a1, double a2, double a3, double a4)
{
  v5.b = 0.0;
  v5.c = 0.0;
  v5.a = 1.0;
  *&v5.d = xmmword_22D2F5DE0;
  v5.ty = 1.0;
  *&result = CGRectApplyAffineTransform(*&a1, &v5);
  return result;
}

id flipYNormalizedRects(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) rectValue];
          v17.a = 1.0;
          v17.b = 0.0;
          v17.c = 0.0;
          *&v17.d = xmmword_22D2F5DE0;
          v17.ty = 1.0;
          v12 = CGRectApplyAffineTransform(v21, &v17);
          v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v12 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    v2 = v11;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double renormalizeRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, a7, a8);
  v14 = v15;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  return a5 + COERCE_DOUBLE(CGRectApplyAffineTransform(v16, &v14));
}

double reduceRectToAspectRatio(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a4 * a5;
  if (a4 * a5 >= a3)
  {
    v6 = a3;
  }

  v7 = v6 * 0.5;
  if (a1 + v6 * 0.5 >= a6)
  {
    a6 = a1 + v6 * 0.5;
  }

  v8 = a1 + a3 - v7;
  if (v8 >= a6)
  {
    v8 = a6;
  }

  return v8 - v7;
}

uint64_t canEncodeHEIC()
{
  if (canEncodeHEIC_onceToken != -1)
  {
    canEncodeHEIC_cold_1();
  }

  return canEncodeHEIC_isSupported;
}

void __canEncodeHEIC_block_invoke()
{
  v1 = CGImageDestinationCopyTypeIdentifiers();
  v0 = [*MEMORY[0x277CE1D90] identifier];
  canEncodeHEIC_isSupported = [(__CFArray *)v1 containsObject:v0];
}

id saveDataToFile(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7 = 0;
  [a1 writeToURL:v3 options:0 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = pfl_layout_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_22D2ED000, v5, OS_LOG_TYPE_DEFAULT, "saveDataToFile: cannot save data to %@, error = %@\n", buf, 0x16u);
    }
  }

  return v4;
}

__CFData *pngDataFromImage(CGImage *a1)
{
  v2 = [MEMORY[0x277CBEB28] data];
  v3 = [*MEMORY[0x277CE1E10] identifier];
  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  if (v4)
  {
    CGImageDestinationAddImage(v4, a1, 0);
    CGImageDestinationFinalize(v4);
    CFRelease(v4);
  }

  else
  {
    v5 = pfl_layout_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2ED000, v5, OS_LOG_TYPE_DEFAULT, "pngDataFromImage: cannot create imageDestinationRef\n", buf, 2u);
    }
  }

  if (![(__CFData *)v2 length])
  {
    v6 = pfl_layout_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2ED000, v6, OS_LOG_TYPE_DEFAULT, "pngDataFromImage: cannot generate png data for image", v8, 2u);
    }

    v2 = 0;
  }

  return v2;
}

id _rectAsString(double a1, double a2, double a3, double a4)
{
  if (fmax(a3, a4) <= 1.0)
  {
    v4 = @"{ %.5f, %.5f, %.5f, %.5f }";
  }

  else
  {
    v4 = @"{ %.1f, %.1f, %.1f, %.1f }";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, *&a1, *&a2, *&a3, *&a4];

  return v5;
}

id PFLGenerateWatchLayout(void *a1, void *a2, uint64_t a3, CGImage *a4, unint64_t a5, void *a6, void *a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, double a15, double a16)
{
  v173 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v32 = a2;
  v163 = a6;
  v158 = a7;
  v33 = @"jpg";
  if (a8)
  {
    v33 = @"heic";
    v34 = MEMORY[0x277CE1D90];
  }

  else
  {
    v34 = MEMORY[0x277CE1DC0];
  }

  v157 = v33;
  v35 = *v34;
  v36 = objc_opt_new();
  [v36 setTimePosition:a5];
  [v36 setTimeRect:{a13, a14, a15, a16}];
  [v36 setBackgroundZorder:0.0];
  [v36 setTimeElementZorder:1.0];
  v37 = 2.0;
  if (!a4)
  {
    v37 = 0.0;
  }

  [v36 setForegroundZorder:v37];
  v161 = [v31 pixelWidth];
  v155 = v31;
  v38 = [v31 pixelHeight];
  CGAffineTransformMakeScale(&t2, v161, v38);
  v175.origin.x = a9;
  v175.origin.y = a10;
  v175.size.width = a11;
  v175.size.height = a12;
  v176 = CGRectApplyAffineTransform(v175, &t2);
  x = v176.origin.x;
  y = v176.origin.y;
  v41 = v176.size.width;
  height = v176.size.height;
  v43 = *MEMORY[0x277D3B3B8] + 1.0;
  v44 = v176.origin.x + v176.size.width * 0.5;
  v45 = v176.origin.y + v176.size.height * 0.5;
  CGAffineTransformMakeTranslation(&t2, -v44, -v45);
  v177.origin.x = x;
  v177.origin.y = y;
  v177.size.width = v41;
  v177.size.height = height;
  v178 = CGRectApplyAffineTransform(v177, &t2);
  v46 = v178.origin.x;
  v47 = v178.origin.y;
  v48 = v178.size.width;
  v49 = v178.size.height;
  CGAffineTransformMakeScale(&t2, v43, v43);
  v179.origin.x = v46;
  v179.origin.y = v47;
  v179.size.width = v48;
  v179.size.height = v49;
  v180 = CGRectApplyAffineTransform(v179, &t2);
  v50 = v180.origin.x;
  v51 = v180.origin.y;
  v52 = v180.size.width;
  v53 = v180.size.height;
  CGAffineTransformMakeTranslation(&t2, v44, v45);
  v181.origin.x = v50;
  v181.origin.y = v51;
  v181.size.width = v52;
  v181.size.height = v53;
  v182 = CGRectApplyAffineTransform(v181, &t2);
  v54 = v182.origin.x;
  v55 = v182.origin.y;
  v56 = v182.size.height * (v38 / v182.size.height);
  if (v182.size.width > v161)
  {
    v57 = v161;
  }

  else
  {
    v56 = v182.size.height;
    v57 = v182.size.width;
  }

  if (v182.size.height > v38)
  {
    v58 = v38;
  }

  else
  {
    v58 = v56;
  }

  if (v182.size.height > v38)
  {
    v59 = v161 / v182.size.width * v57;
  }

  else
  {
    v59 = v57;
  }

  v60 = 0.0;
  if (v54 < 0.0 || (v60 = v54, v54 + v182.size.width > v161))
  {
    if (v60 >= v161 - v182.size.width)
    {
      v54 = v161 - v182.size.width;
    }

    else
    {
      v54 = v60;
    }
  }

  v61 = 0.0;
  if (v55 < 0.0 || (v61 = v55, v55 + v182.size.height > v38))
  {
    if (v61 >= v38 - v182.size.height)
    {
      v55 = v38 - v182.size.height;
    }

    else
    {
      v55 = v61;
    }
  }

  v62 = MEMORY[0x277CCACA8];
  v63 = v163;
  v159 = [v62 stringWithUTF8String:{objc_msgSend(v163, "fileSystemRepresentation")}];
  v64 = MEMORY[0x277CCACA8];
  v153 = timePosition2String(a5);
  v160 = [v64 stringWithFormat:@"base_%s_%@.%@", v153, v158, v157];
  v156 = [v159 stringByAppendingPathComponent:v160];
  v65 = [MEMORY[0x277CBEBC0] fileURLWithPath:v156];
  v66 = v32;
  v67 = v35;
  v68 = v65;
  v69 = [PFLImageDataScaler alloc];
  v70 = *MEMORY[0x277D3B3C0];
  v71 = *(MEMORY[0x277D3B3C0] + 8);
  v72 = (rint(v54) & ((a4 != 0) | 0xFFFFFFFFFFFFFFFELL));
  v73 = (rint(v55) & ((a4 != 0) | 0xFFFFFFFFFFFFFFFELL));
  v74 = [(PFLImageDataScaler *)v69 initWithSize:v66 crop:a3 data:v67 orientation:v161 type:v38 outputSize:v72, v73, v59, v58, *MEMORY[0x277D3B3C0], v71];
  v75 = 1;
  if (v74)
  {
    t1.a = 0.0;
    *&t1.b = &t1;
    *&t1.c = 0x3032000000;
    *&t1.d = __Block_byref_object_copy__1;
    *&t1.tx = __Block_byref_object_dispose__1;
    t1.ty = 0.0;
    transform.a = 0.0;
    *&transform.b = &transform;
    *&transform.c = 0x2020000000;
    LODWORD(transform.d) = 1;
    v76 = dispatch_semaphore_create(0);
    *&t2.a = MEMORY[0x277D85DD0];
    *&t2.b = 3221225472;
    *&t2.c = __cropScaleSaveToFile_block_invoke;
    *&t2.d = &unk_27875BB68;
    *&t2.tx = v68;
    p_t1 = &t1;
    p_transform = &transform;
    v77 = v76;
    *&t2.ty = v77;
    [(PFLImageDataScaler *)v74 cropAndScaleWithCompletion:&t2];
    dispatch_semaphore_wait(v77, 0xFFFFFFFFFFFFFFFFLL);
    v75 = *(*&transform.b + 24);
    v162 = *(*&t1.b + 40);

    _Block_object_dispose(&transform, 8);
    _Block_object_dispose(&t1, 8);
  }

  else
  {
    v162 = 0;
  }

  v78 = pfl_layout_log();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(t2.a) = 138412546;
    *(&t2.a + 4) = v68;
    WORD2(t2.b) = 2112;
    *(&t2.b + 6) = v162;
    _os_log_impl(&dword_22D2ED000, v78, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: saved base image to %@, error == %@", &t2, 0x16u);
  }

  if (v162)
  {
    goto LABEL_31;
  }

  [v36 setBaseImageName:v160];
  [v36 setOriginalCrop:{v72, v73, v59, v58}];
  [v36 setMaskImageName:0];
  if (a4)
  {
    v80 = CGImageRetain(a4);
    v81 = v80;
    if (v75 == 1)
    {
      v82 = v80;
    }

    else
    {
      v83 = pfl_layout_log();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(t2.a) = 134218240;
        *(&t2.a + 4) = 1;
        WORD2(t2.b) = 2048;
        *(&t2.b + 6) = v75;
        _os_log_impl(&dword_22D2ED000, v83, OS_LOG_TYPE_DEFAULT, "saved photo has changed orientation; adjusting the mask from %ld to %ld", &t2, 0x16u);
      }

      if (!v81 || ((v84 = CGImageGetWidth(v81), v85 = CGImageGetHeight(v81), v86 = presentationSizeForOrientation(1, v84, v85), v88 = storedSizeForOrientation(v75, v86, v87), v90 = v89, ColorSpace = CGImageGetColorSpace(v81), NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace), memset(&v167.c, 0, 32), (NumberOfComponents & 0x10000000) == 0) ? (v93 = (8 * NumberOfComponents) | 7) : (v93 = 8 * NumberOfComponents + 14), *&v167.a = 0uLL, makePresentationTransform(1, v84, v85, &v167), memset(&v166, 0, sizeof(v166)), imagea = v90, widtha = v88, makePresentationTransform(v75, widtha, imagea, &v166), v165 = v167, t1 = v166, CGAffineTransformInvert(&t2, &t1), t1 = v167, CGAffineTransformConcat(&v165, &t1, &t2), valuea = (v93 >> 3) * v88, [MEMORY[0x277CBEB28] dataWithLength:valuea * v90], v150 = objc_claimAutoreleasedReturnValue(), v94 = v150, v95 = objc_msgSend(v150, "mutableBytes"), BitsPerComponent = CGImageGetBitsPerComponent(v81), shouldInterpolate = CGImageGetColorSpace(v81), AlphaInfo = CGImageGetAlphaInfo(v81), v99 = CGBitmapContextCreate(v95, widtha, imagea, BitsPerComponent, valuea, shouldInterpolate, AlphaInfo), v164 = v165, CGContextSaveGState(v99), memset(&t2, 0, sizeof(t2)), t1 = v164, uprightCTM(v81, &t1, &t2), memset(&t1, 0, sizeof(t1)), transform = t2, CGAffineTransformInvert(&t1, &transform), transform = t2, CGContextConcatCTM(v99, &transform), transform = t1, v183.origin.x = 0.0, v183.origin.y = 0.0, v183.size.width = v88, v183.size.height = v90, v184 = CGRectApplyAffineTransform(v183, &transform), CGContextDrawImage(v99, v184, v81), CGContextRestoreGState(v99), CGContextRelease(v99), v100 = v150, v150, v142 = v150, v151 = CGDataProviderCreateWithCFData(v142), v143 = CGImageGetBitsPerComponent(v81), BitsPerPixel = CGImageGetBitsPerPixel(v81), v140 = CGImageGetColorSpace(v81), LODWORD(BitsPerComponent) = CGImageGetBitmapInfo(v81), decode = CGImageGetDecode(v81), LOBYTE(shouldInterpolate) = CGImageGetShouldInterpolate(v81), RenderingIntent = CGImageGetRenderingIntent(v81), v82 = CGImageCreate(widtha, imagea, v143, BitsPerPixel, valuea, v140, BitsPerComponent, v151, decode, shouldInterpolate, RenderingIntent), CGDataProviderRelease(v151), v142, !v82))
      {
        v103 = pfl_layout_log();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          PFLGenerateWatchLayout_cold_1(v81, v75, v103);
        }

        v82 = 0;
      }

      CGImageRelease(v81);
    }

    if (v82)
    {
      v104 = CGImageGetWidth(a4);
      v105 = [v155 pixelWidth];
      CGAffineTransformMakeScale(&t2, v104 / v105, v104 / v105);
      v185.origin.x = v72;
      v185.origin.y = v73;
      v185.size.width = v59;
      v185.size.height = v58;
      v186 = CGRectApplyAffineTransform(v185, &t2);
      v106 = v186.origin.x;
      v107 = v186.origin.y;
      v108 = v186.size.width;
      v109 = v186.size.height;
      v110 = pfl_layout_log();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v111 = _rectAsString(v106, v107, v108, v109);
        LODWORD(t2.a) = 138412290;
        *(&t2.a + 4) = v111;
        _os_log_impl(&dword_22D2ED000, v110, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: mask crop rect == %@", &t2, 0xCu);
      }

      v152 = [MEMORY[0x277CCACA8] stringWithFormat:@"mask_%s_%@.png", v153, v158];
      width = [v159 stringByAppendingPathComponent:v152];
      v154 = [MEMORY[0x277CBEBC0] fileURLWithPath:width];
      v112 = reduceRectToAspectRatioAndCenter(v106, v107, v108, v109, v70 / v71);
      v114 = v113;
      v117 = v115 <= v116;
      v118 = rint(v116);
      v119 = ceil(v70 * v118 / v71);
      v120 = rint(v115);
      v121 = ceil(v71 * v120 / v70);
      if (v117)
      {
        v122 = v118;
      }

      else
      {
        v122 = v121;
      }

      if (v117)
      {
        v123 = v119;
      }

      else
      {
        v123 = v120;
      }

      v124 = CGImageGetWidth(v82);
      v125 = CGImageGetHeight(v82);
      memset(&t2, 0, sizeof(t2));
      makePresentationTransform(v75, v124, v125, &t1);
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      v187.origin.x = rint(v112);
      v187.origin.y = rint(v114);
      v187.size.width = v123;
      v187.size.height = v122;
      v188 = CGRectApplyAffineTransform(v187, &t1);
      image = CGImageCreateWithImageInRect(v82, v188);
      if (image)
      {
        v126 = [MEMORY[0x277CBEB28] data];
        v127 = [*MEMORY[0x277CE1E10] identifier];
        v128 = CGImageDestinationCreateWithData(v126, v127, 1uLL, 0);

        if (v128)
        {
          Mutable = CGImageMetadataCreateMutable();
          if (Mutable)
          {
            value = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v75];
            CGImageMetadataSetValueWithPath(Mutable, 0, @"tiff:Orientation", value);
            if (v70 >= v71)
            {
              v130 = v70;
            }

            else
            {
              v130 = v71;
            }

            transform.a = *MEMORY[0x277CD2D40];
            v131 = [MEMORY[0x277CCABB0] numberWithDouble:v130];
            transform.b = *MEMORY[0x277CD2D78];
            *&t1.a = v131;
            *&t1.b = MEMORY[0x277CBEC38];
            v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&t1 forKeys:&transform count:2];

            CGImageDestinationAddImageAndMetadata(v128, image, Mutable, v132);
            CGImageDestinationFinalize(v128);
            CFRelease(Mutable);

            v133 = value;
          }

          else
          {

            v133 = pfl_photo_log();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(t1.a) = 0;
              _os_log_impl(&dword_22D2ED000, v133, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create metadataRef", &t1, 2u);
            }

            v126 = 0;
          }

          CFRelease(v128);
        }

        else
        {

          v135 = pfl_photo_log();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(t1.a) = 0;
            _os_log_impl(&dword_22D2ED000, v135, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create imageDestinationRef", &t1, 2u);
          }

          v126 = 0;
        }

        CFRelease(image);
      }

      else
      {
        v134 = pfl_photo_log();
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(t1.a) = 0;
          _os_log_impl(&dword_22D2ED000, v134, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create croppedImageRef", &t1, 2u);
        }

        v126 = 0;
      }

      v136 = pfl_layout_log();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v137 = [(__CFData *)v126 length];
        LODWORD(t2.a) = 134218242;
        *(&t2.a + 4) = v137;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v154;
        _os_log_impl(&dword_22D2ED000, v136, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayout: saving %ld bytes of mask data to %@", &t2, 0x16u);
      }

      v138 = saveDataToFile(v126, v154);
      if (v138)
      {

LABEL_31:
        v79 = 0;
        goto LABEL_79;
      }

      [v36 setMaskImageName:v152];
      CGImageRelease(v82);
    }
  }

  [v36 setImageAOTBrightness:0.0];
  [v36 setUserEdited:0];
  v79 = v36;
LABEL_79:

  return v79;
}

void sub_22D2F4ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 224), 8);
  _Unwind_Resume(a1);
}

const char *timePosition2String(unint64_t a1)
{
  if (a1 > 8)
  {
    return "HM";
  }

  else
  {
    return off_27875BB88[a1];
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cropScaleSaveToFile_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pfl_layout_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 length];
      v7 = *(a1 + 32);
      v14 = 134218242;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "cropScaleSaveToFile: saving %ld bytes to %@", &v14, 0x16u);
    }

    v8 = saveDataToFile(v3, *(a1 + 32));
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *(*(*(a1 + 56) + 8) + 24) = getImageOrientationFromData(v3);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "cropScaleSaveToFile: failed to crop", &v14, 2u);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284075FD0 code:3 userInfo:0];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __PFLGeneratePhotosFaceCommon_block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_22D2ED000, log, OS_LOG_TYPE_ERROR, "Couldn't retrieve image data for asset %@, error == %@", buf, 0x16u);
}

void PFLGenerateWatchLayout_cold_1(uint64_t a1, unsigned int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2048;
  v6 = 1;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_22D2ED000, log, OS_LOG_TYPE_ERROR, "cannot reorient mask image %@ from %ld to %ld", &v3, 0x20u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}