void VUIRequireMainThread()
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v0 = MEMORY[0x277CBEAD8];
    v1 = *MEMORY[0x277CBE658];
    v2 = [MEMORY[0x277CCACC8] currentThread];
    [v0 raise:v1 format:{@"Running on %@ instead of main thread.", v2}];
  }
}

id VUICDefaultLogObject()
{
  if (VUICDefaultLogObject_onceToken != -1)
  {
    VUICDefaultLogObject_cold_1();
  }

  v1 = VUICDefaultLogObject_logger;

  return v1;
}

uint64_t __VUICDefaultLogObject_block_invoke()
{
  VUICDefaultLogObject_logger = os_log_create("com.apple.VideosUICore", "Default");

  return MEMORY[0x2821F96F8]();
}

id VUICImageLogObject()
{
  if (VUICImageLogObject_onceToken != -1)
  {
    VUICImageLogObject_cold_1();
  }

  v1 = VUICImageLogObject_logger;

  return v1;
}

uint64_t __VUICImageLogObject_block_invoke()
{
  VUICImageLogObject_logger = os_log_create("com.apple.VideosUICore", "Image");

  return MEMORY[0x2821F96F8]();
}

id sDefaultHandler_block_invoke(uint64_t a1, void *a2, __CFString *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = @"nil event";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v7 = [v4 logObject];

  if (v7)
  {
    v8 = [v4 logObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 name];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_270E6E000, v8, OS_LOG_TYPE_DEFAULT, "State machine named [%@] processed unhandled event [%@]", &v12, 0x16u);
    }
  }

  v10 = [v4 currentState];

  return v10;
}

void sub_270E7305C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E74550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_270E77F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VUIUserInterfaceStyleFromTheme(void *a1, uint64_t a2)
{
  v3 = a1;
  if (VUIUserInterfaceStyleFromTheme_onceToken != -1)
  {
    VUIUserInterfaceStyleFromTheme_cold_1();
  }

  if ([v3 length])
  {
    v4 = [VUIUserInterfaceStyleFromTheme_sTypeMap objectForKeyedSubscript:v3];

    if (v4)
    {
      v5 = [VUIUserInterfaceStyleFromTheme_sTypeMap objectForKeyedSubscript:v3];
      a2 = [v5 unsignedIntegerValue];
    }
  }

  return a2;
}

void __VUIUserInterfaceStyleFromTheme_block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"light";
  v2[1] = @"dark";
  v3[0] = &unk_2880E0A60;
  v3[1] = &unk_2880E0A78;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = VUIUserInterfaceStyleFromTheme_sTypeMap;
  VUIUserInterfaceStyleFromTheme_sTypeMap = v0;
}

double VUIRoundValue(double a1)
{
  if (VUIRoundValue_onceToken != -1)
  {
    VUIRoundValue_cold_1();
  }

  v2 = *&VUIRoundValue_sDisplayScale;
  if (*&VUIRoundValue_sDisplayScale == 0.0)
  {
    v2 = 1.0;
  }

  return round(v2 * a1) / v2;
}

void __VUIRoundValue_block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 vui_nativeScale];
  VUIRoundValue_sDisplayScale = v0;
}

double VUISnap(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 1.0;
  }

  if (a2 == 0.0)
  {
    a2 = 1.0;
  }

  return a2 * round(a3 * a1 / a2) / a3;
}

double VUICeilValue(double a1)
{
  if (VUICeilValue_onceToken != -1)
  {
    VUICeilValue_cold_1();
  }

  v2 = *&VUICeilValue_sDisplayScale;
  if (*&VUICeilValue_sDisplayScale == 0.0)
  {
    v2 = 1.0;
  }

  return ceil(v2 * a1) / v2;
}

void __VUICeilValue_block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 vui_nativeScale];
  VUICeilValue_sDisplayScale = v0;
}

double VUICeilSnap(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 1.0;
  }

  if (a2 == 0.0)
  {
    a2 = 1.0;
  }

  return a2 * ceil(a3 * a1 / a2) / a3;
}

double VUIFloorValue(double a1)
{
  if (VUIFloorValue_onceToken != -1)
  {
    VUIFloorValue_cold_1();
  }

  v2 = *&VUIFloorValue_sDisplayScale;
  if (*&VUIFloorValue_sDisplayScale == 0.0)
  {
    v2 = 1.0;
  }

  return floor(v2 * a1) / v2;
}

void __VUIFloorValue_block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 vui_nativeScale];
  VUIFloorValue_sDisplayScale = v0;
}

double VUIFloorSnap(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 1.0;
  }

  if (a2 == 0.0)
  {
    a2 = 1.0;
  }

  return a2 * floor(a3 * a1 / a2) / a3;
}

CGFloat VUIRectWithFlippedOriginRelativeToBoundingRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  v14 = a1 - CGRectGetMinX(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  return CGRectGetMaxX(v17) - v14 - a3;
}

CGFloat VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    v15 = a2 - CGRectGetMinX(v17);
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMaxX(v18) - v15 - a4;
  }

  return a2;
}

CGFloat VUIRectMakeWithDirectionalOriginRelativeToBoundingRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    v15 = a2 - CGRectGetMinX(v17);
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMaxX(v18) - v15 - a4;
  }

  return a2;
}

double VUIMakeLargestSizeWithGivenSizeAndAspectRatio(double result, double a2, double a3)
{
  if (result < a2)
  {
    result = a2;
  }

  v3 = a3 <= 1.0;
  v4 = result * a3;
  if (!v3)
  {
    return v4;
  }

  return result;
}

__CFString *VUIBoolLogString(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

void sub_270E7FED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270E82E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 128));
  objc_destroyWeak((v1 - 120));
  _Unwind_Resume(a1);
}

CGImage *VUICompositeBitmapImageOfSizeForImages(void *a1, int a2, int a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = [v11 count];
  v13 = a6 <= 0.0 && v12 == 1;
  if (!v13 || ((v14 = [v11 firstObject], Width = CGImageGetWidth(v14), Height = CGImageGetHeight(v14), v17 = round(a4), round(a5) == Height) ? (v18 = v17 == Width) : (v18 = 0), !v18 ? (v19 = a3 == 0) : (v19 = 0), v19))
  {
    if ([v11 count])
    {
      v21 = [v11 firstObject];
      if ([v11 count] > 1)
      {
        +[VUIGraphicsImageRenderer preferredFormat];
      }

      else
      {
        [VUIGraphicsImageRenderer formatWithCGImage:v21];
      }
      v22 = ;
      [v22 setOpaque:0];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __VUICompositeBitmapImageOfSizeForImages_block_invoke;
      v25[3] = &unk_279E21738;
      v27 = a6;
      v28 = a4;
      v29 = a5;
      v26 = v11;
      v30 = a2;
      v23 = [VUIGraphicsImageRenderer imageWithSize:v22 format:v25 cgContextActions:a4, a5];
      v20 = [v23 CGImage];
      CGImageRetain(v20);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = CGImageRetain(v14);
  }

  return v20;
}

void __VUICompositeBitmapImageOfSizeForImages_block_invoke(uint64_t a1, CGContextRef c)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) > 0.0)
  {
    [VUICoreUtilities radiiFromRadius:?];
    v4 = [VUICoreUtilities createPathForRadii:"createPathForRadii:inRect:isContinuous:" inRect:1 isContinuous:?];
    CGContextAddPath(c, v4);
    CGPathRelease(v4);
    CGContextClip(c);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(c);
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = CGImageGetWidth(v14);
        v16 = CGImageGetHeight(v14);
        v17 = *(a1 + 48) / v15;
        v18 = v16;
        if (v17 < *(a1 + 56) / v16)
        {
          v17 = *(a1 + 56) / v16;
        }

        CGAffineTransformMakeScale(&v24, v17, v17);
        v32.origin.x = 0.0;
        v32.origin.y = 0.0;
        v32.size.width = v15;
        v32.size.height = v18;
        v33 = CGRectApplyAffineTransform(v32, &v24);
        v19 = v33.origin.x;
        v20 = v33.origin.y;
        v21 = v33.size.width;
        v22 = v33.size.height;
        CGContextSaveGState(c);
        v23 = *(a1 + 64);
        if (v23)
        {
          CGContextSetBlendMode(c, v23);
        }

        [VUICoreUtilities centerRect:v19 inRect:v20, v21, v22, x, y, width, height];
        CGContextDrawImage(c, v34, v14);
        CGContextRestoreGState(c);
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

void sub_270E84178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E84B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E85168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E89A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void VUIDeferredRelease(void *a1)
{
  v1 = a1;
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __VUIDeferredRelease_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v2, block);
}

void VUIRequireKeyedCoder(void *a1)
{
  v1 = a1;
  if (([v1 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The coder %@ does not allow keyed coding.", v1}];
  }
}

void VUIWaitForDebugger()
{
  v0 = [MEMORY[0x277CBEAA8] distantFuture];
}

unint64_t VUIUIViewContentModeFromVUIContentMode(unint64_t result)
{
  if (result >= 0xD)
  {
    return 1;
  }

  return result;
}

unint64_t VUIViewContentModeFromUIContentMode(unint64_t result)
{
  if (result >= 0xD)
  {
    return 1;
  }

  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270E8DBA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 136));
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_270E8F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270E92B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270E943F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_270E95024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v17 - 104));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL VUIErrorIsErrorDomainAndCode(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = [v5 code] == a3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id VUIErrorWithDomain(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a1;
  v8 = objc_alloc_init(v6);
  if (v5)
  {
    v9 = [v5 copy];
    [v8 setObject:v9 forKey:*MEMORY[0x277CCA7E8]];
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a2 userInfo:v8];

  return v10;
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x282138708](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
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

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}