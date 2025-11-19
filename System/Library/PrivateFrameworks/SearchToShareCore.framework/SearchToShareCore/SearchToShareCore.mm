void sub_264E9710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264E97EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_264E982F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264E98EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264E996E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id animatedImageWithAnimatedGIFReleasingImageSource(CGImageSource *a1)
{
  if (a1)
  {
    v2 = animatedImageWithAnimatedGIFImageSource(a1);
    CFRelease(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id animatedImageWithAnimatedGIFImageSource(CGImageSource *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  Count = CGImageSourceGetCount(a1);
  v36[1] = v36;
  MEMORY[0x28223BE20]();
  v4 = (v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  MEMORY[0x28223BE20]();
  v7 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Count)
  {
    v8 = 0;
    v39 = *MEMORY[0x277CD31C8];
    v38 = *MEMORY[0x277CD31E8];
    v37 = *MEMORY[0x277CD31C0];
    v9 = rint(10.0);
    do
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, v8, 0);
      v4[v8] = createNonAlphaImageFromImage(ImageAtIndex);
      CFRelease(ImageAtIndex);
      v11 = CGImageSourceCopyPropertiesAtIndex(a1, v8, 0);
      if (v11)
      {
        v12 = v11;
        Value = CFDictionaryGetValue(v11, v39);
        LODWORD(v14) = v9;
        if (Value)
        {
          v15 = Value;
          v16 = CFDictionaryGetValue(Value, v38);
          v17 = v16;
          if (!v16 || ([v16 doubleValue], v18 == 0.0))
          {
            v19 = CFDictionaryGetValue(v15, v37);

            v17 = v19;
          }

          [v17 doubleValue];
          if (v20 <= 0.0)
          {
            LODWORD(v14) = 50;
          }

          else
          {
            [v17 doubleValue];
            v14 = rint(v21 * 100.0);
          }
        }

        CFRelease(v12);
      }

      else
      {
        LODWORD(v14) = 50;
      }

      v7[v8++] = v14;
    }

    while (Count != v8);
    v22 = 0;
    v23 = v7;
    v24 = Count;
    do
    {
      v25 = *v23++;
      v22 += v25;
      --v24;
    }

    while (v24);
  }

  else
  {
    v22 = 0;
  }

  v26 = frameArray(Count, v4, v7, v22);
  if ([v26 count] < 0x33)
  {
    v28 = v26;
  }

  else
  {
    v27 = [v26 count] / 0x32uLL;
    v28 = objc_opt_new();
    v29 = [v26 objectAtIndex:0];
    [v28 addObject:v29];

    v30 = 49;
    v31 = v27;
    do
    {
      if (v31 >= [v26 count])
      {
        [v26 lastObject];
      }

      else
      {
        [v26 objectAtIndex:v31];
      }
      v32 = ;
      [v28 addObject:v32];

      v31 += v27;
      --v30;
    }

    while (v30);
  }

  for (i = [MEMORY[0x277D755B8] animatedImageWithImages:v28 duration:v22 / 100.0];
  {
    v34 = *v4++;
    CGImageRelease(v34);
  }

  return i;
}

id frameArray(unint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (a1 >= 2)
  {
    for (i = 1; i != a1; ++i)
    {
      v9 = a3[i];
      v10 = v7;
      do
      {
        v11 = v10;
        v10 = v9;
        v9 = v11;
      }

      while (v10 < v11);
      do
      {
        v7 = v11;
        v11 = (v10 % v11);
        LODWORD(v10) = v7;
      }

      while (v11);
    }
  }

  if (v7 < 1)
  {
    v22 = 0;
  }

  else
  {
    v27 = &v25;
    v26 = a4 / v7;
    MEMORY[0x28223BE20]();
    v13 = &v25 - v12;
    bzero(&v25 - v12, v14);
    if (a1)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [MEMORY[0x277D755B8] imageWithCGImage:*(a2 + 8 * v16)];
        v18 = a3[v16] / v7;
        if (v18)
        {
          v19 = v18;
          v20 = &v13[8 * v15];
          v15 += v18;
          do
          {
            objc_storeStrong(v20++, v17);
            --v19;
          }

          while (v19);
        }

        ++v16;
      }

      while (v16 != a1);
    }

    v21 = v26;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:v26];
    if (v21)
    {
      v23 = 8 * v21;
      do
      {

        v23 -= 8;
      }

      while (v23);
    }
  }

  return v22;
}

void sub_264EA11E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  objc_destroyWeak((v32 + 64));
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v33 - 184), 8);
  objc_destroyWeak((v33 - 136));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264EA2BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264EA45F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_264EA49B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_264EA6928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_264EA8968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  objc_destroyWeak((v29 + 80));
  objc_destroyWeak((v28 + 56));
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v30 - 160), 8);
  objc_destroyWeak((v30 - 168));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264EA9FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, char a37)
{
  objc_destroyWeak((v37 + 80));
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a36);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v38 - 208), 8);
  objc_destroyWeak((v38 - 160));
  _Unwind_Resume(a1);
}

void sub_264EAA164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264EAC858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_264EB0AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGImageRef createNonAlphaImageFromImage(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  v7 = CGBitmapContextCreate(0, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, 0x2006u);
  v8 = Width;
  v9 = Height;
  CGContextSetRGBFillColor(v7, 1.0, 1.0, 1.0, 1.0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v8;
  v12.size.height = v9;
  CGContextFillRect(v7, v12);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v8;
  v13.size.height = v9;
  CGContextDrawImage(v7, v13, a1);
  Image = CGBitmapContextCreateImage(v7);
  CGContextRelease(v7);
  return Image;
}

void sub_264EBB860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264EBCAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264EBCCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264EBCEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t STSIsInternalInstall()
{
  if (STSIsInternalInstall_onceToken != -1)
  {
    STSIsInternalInstall_cold_1();
  }

  return STSIsInternalInstall_sIsInternal;
}

uint64_t __STSIsInternalInstall_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  STSIsInternalInstall_sIsInternal = result;
  return result;
}

id STSLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:0 table:0];

  return v4;
}

float64x2_t UISizeAspectFitSizeInSizeScale(float64_t a1, float64_t a2, double a3, double a4, double a5)
{
  v5.f64[0] = a1;
  v6 = a1 <= 0.0;
  result = *MEMORY[0x277CBF3A8];
  if (!v6 && a2 > 0.0)
  {
    v8 = a3 / v5.f64[0];
    if (a3 / v5.f64[0] >= a4 / a2)
    {
      v8 = a4 / a2;
    }

    if (a5 == 0.0)
    {
      v14 = v5.f64[0];
      v12 = v8;
      v13 = a2;
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 scale];
      v11 = v10;

      a5 = v11;
      v8 = v12;
      a2 = v13;
      v5.f64[0] = v14;
    }

    v5.f64[1] = a2;
    return vdivq_f64(vrndmq_f64(vmulq_n_f64(vmulq_n_f64(v5, v8), a5)), vdupq_lane_s64(*&a5, 0));
  }

  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}