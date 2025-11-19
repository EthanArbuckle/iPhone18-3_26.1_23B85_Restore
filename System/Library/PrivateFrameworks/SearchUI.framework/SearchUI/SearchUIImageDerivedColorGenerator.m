@interface SearchUIImageDerivedColorGenerator
+ (id)colorsForImageRef:(CGImage *)a3;
+ (void)fetchColorsForImage:(id)a3 withCompletionHandler:(id)a4;
- (void)generateUIColorsForSFImage:(id)a3 isDark:(BOOL)a4 completionHandler:(id)a5;
- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SearchUIImageDerivedColorGenerator

+ (id)colorsForImageRef:(CGImage *)a3
{
  CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  if (Height <= 160.0)
  {
    v5 = Height;
  }

  else
  {
    v5 = 160.0;
  }

  v6 = v5;
  v7 = malloc_type_malloc(vcvtd_n_u64_f64(v5, 2uLL), 0xF9F8B49CuLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(v7, 1uLL, v5, 8uLL, 4uLL, DeviceRGB, 0x4001u);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 1.0;
  v27.size.height = v5;
  CGContextDrawImage(v9, v27, a3);
  CGContextRelease(v9);
  CGColorSpaceRelease(DeviceRGB);
  v10 = 0;
  if (v5)
  {
    v11 = v7 + 3;
    while (!*(v11 - 3) && !*(v11 - 2) && !*(v11 - 1) || !*v11)
    {
      ++v10;
      v11 += 4;
      if (v6 == v10)
      {
        v10 = v5;
        break;
      }
    }

    v12 = v6 - 1;
    if (v6 - 1 >= 0)
    {
      v13 = &v7[4 * v6 - 2];
      while (!*(v13 - 2) && !*(v13 - 1) && !*v13 || !v13[1])
      {
        --v6;
        v13 -= 4;
        if (v6 <= 0)
        {
          goto LABEL_19;
        }
      }

      v12 = v6 - 1;
    }
  }

  else
  {
LABEL_19:
    v12 = -1;
  }

  v14 = objc_opt_new();
  if (v12 > v10)
  {
    v15 = vcvtd_n_f64_u64(v12 - v10, 2uLL);
    v20 = vcvtpd_u64_f64(v15);
    v21 = &v7[4 * v10 + 3];
    do
    {
      LOBYTE(v15) = *(v21 - 3);
      LOBYTE(v16) = *(v21 - 2);
      LOBYTE(v17) = *(v21 - 1);
      LOBYTE(v18) = *v21;
      v22 = [MEMORY[0x1E69DC888] colorWithRed:*&v15 / 255.0 green:v16 / 255.0 blue:v17 / 255.0 alpha:v18 / 255.0];
      [v14 addObject:v22];

      v10 += v20;
      v21 += 4 * v20;
    }

    while (v10 < v12);
  }

  v23 = &v7[4 * v12];
  LOBYTE(v15) = *v23;
  LOBYTE(v16) = v23[1];
  LOBYTE(v17) = v23[2];
  LOBYTE(v19) = v23[3];
  v24 = [MEMORY[0x1E69DC888] colorWithRed:*&v15 / 255.0 green:v16 / 255.0 blue:v17 / 255.0 alpha:v19 / 255.0];
  [v14 addObject:v24];

  free(v7);

  return v14;
}

+ (void)fetchColorsForImage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__SearchUIImageDerivedColorGenerator_fetchColorsForImage_withCompletionHandler___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (fetchColorsForImage_withCompletionHandler__onceToken != -1)
  {
    dispatch_once(&fetchColorsForImage_withCompletionHandler__onceToken, block);
  }

  v8 = fetchColorsForImage_withCompletionHandler__queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SearchUIImageDerivedColorGenerator_fetchColorsForImage_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E85B28D8;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __80__SearchUIImageDerivedColorGenerator_fetchColorsForImage_withCompletionHandler___block_invoke()
{
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  v1 = v7;
  v2 = [v7 cStringUsingEncoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create(v2, v4);
  v6 = fetchColorsForImage_withCompletionHandler__queue;
  fetchColorsForImage_withCompletionHandler__queue = v5;
}

void __80__SearchUIImageDerivedColorGenerator_fetchColorsForImage_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hash];
  v3 = SearchUIGeneralLog();
  v4 = v3;
  v53 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA169000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "SearchUIImageDerivedColorFetchColors", "", &buf, 2u);
  }

  v5 = [*(a1 + 32) ioSurface];
  v55 = a1;
  if (v5)
  {
    [MEMORY[0x1E695F658] imageWithIOSurface:{v5, v2}];
  }

  else
  {
    [MEMORY[0x1E695F658] imageWithCGImage:{objc_msgSend(*(a1 + 32), "CGImage", v2)}];
  }
  v6 = ;
  [v6 extent];
  v8 = v7;
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x1E69845B8]);
  v12 = [v11 initWithCIImage:v6 options:MEMORY[0x1E695E0F8]];
  v13 = objc_opt_new();
  [v13 setRevision:2];
  v61[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v58 = 0;
  v52 = v12;
  v15 = [v12 performRequests:v14 error:&v58];
  v16 = v58;

  if (v16 || (v15 & 1) == 0)
  {
    v17 = SearchUIGeneralLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __80__SearchUIImageDerivedColorGenerator_fetchColorsForImage_withCompletionHandler___block_invoke_2_cold_1(v16, v17);
    }
  }

  v50 = v16;
  v51 = v13;
  v18 = [v13 results];
  v19 = [v18 firstObject];

  v49 = v19;
  v20 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:{objc_msgSend(v19, "pixelBuffer")}];
  [v20 extent];
  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v8 / v21, v10 / v22);
  v56 = buf;
  v23 = [v20 imageByApplyingTransform:&v56];
  v24 = [MEMORY[0x1E695F648] colorThresholdFilter];
  v48 = v23;
  [v24 setInputImage:v23];
  LODWORD(v25) = 0.5;
  [v24 setThreshold:v25];
  v26 = [v24 outputImage];
  v27 = [MEMORY[0x1E695F648] maskToAlphaFilter];
  v47 = v26;
  [v27 setInputImage:v26];
  v28 = [v27 outputImage];
  v29 = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
  v54 = v6;
  [v29 setInputImage:v6];
  [v29 setBackgroundImage:v28];
  v30 = [v29 outputImage];
  v59[0] = @"inputWidth";
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v59[1] = @"inputHeight";
  v60[0] = v31;
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v60[1] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v34 = [v30 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v33];

  if (!v34)
  {
    v34 = v30;
  }

  [v34 extent];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [MEMORY[0x1E695F620] context];
  v42 = [v41 createCGImage:v34 fromRect:{v36, v38, 8.0, v40}];

  v43 = [objc_opt_class() colorsForImageRef:v42];
  if (v42)
  {
    CGImageRelease(v42);
  }

  v44 = SearchUIGeneralLog();
  v45 = v44;
  if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    LOWORD(v56.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA169000, v45, OS_SIGNPOST_INTERVAL_END, spid, "SearchUIImageDerivedColorFetchColors", "", &v56, 2u);
  }

  (*(*(v55 + 40) + 16))();
}

- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SearchUIColorGenerator *)self sfColor];
  v8 = [v7 image];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = [v8 contactIdentifiers];
  if ([v9 count] != 1)
  {

LABEL_5:
    [(SearchUIImageDerivedColorGenerator *)self generateUIColorsForSFImage:v8 isDark:v4 completionHandler:v6];
    goto LABEL_6;
  }

  v10 = +[SearchUIContactCache sharedCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__SearchUIImageDerivedColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke;
  v11[3] = &unk_1E85B4450;
  v13 = v6;
  v11[4] = self;
  v12 = v8;
  v14 = v4;
  [v10 fetchContactsForIdentifiers:v9 completionHandler:v11];

LABEL_6:
}

void __79__SearchUIImageDerivedColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 contactImageBackgroundColors];

  if ([v4 count])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) generateUIColorsForSFImage:*(a1 + 40) isDark:*(a1 + 56) completionHandler:*(a1 + 48)];
  }
}

- (void)generateUIColorsForSFImage:(id)a3 isDark:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__SearchUIImageDerivedColorGenerator_generateUIColorsForSFImage_isDark_completionHandler___block_invoke;
  v12[3] = &unk_1E85B44A0;
  v13 = v8;
  v14 = self;
  v16 = a4;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [SearchUIUtilities dispatchMainIfNecessary:v12];
}

void __90__SearchUIImageDerivedColorGenerator_generateUIColorsForSFImage_isDark_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [SearchUIImage imageWithSFImage:*(a1 + 32)];
  [*(a1 + 40) setSfColor:0];
  [*(a1 + 40) setSearchUIImage:v2];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  v5 = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setRequiresImageDataToLoad:1];
  }

  if (v2 && ([v2 isTemplate] & 1) == 0)
  {
    v6 = *(a1 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__SearchUIImageDerivedColorGenerator_generateUIColorsForSFImage_isDark_completionHandler___block_invoke_2;
    v8[3] = &unk_1E85B4478;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    [v2 loadImageWithScale:v6 isDarkStyle:v8 completionHandler:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __90__SearchUIImageDerivedColorGenerator_generateUIColorsForSFImage_isDark_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [objc_opt_class() fetchColorsForImage:v3 withCompletionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __80__SearchUIImageDerivedColorGenerator_fetchColorsForImage_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Error performing VNGenerateObjectnessBasedSaliencyImageRequest in fetchColorsForImage: %@", &v2, 0xCu);
}

@end