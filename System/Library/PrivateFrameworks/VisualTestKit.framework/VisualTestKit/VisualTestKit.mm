uint64_t _VTKIsRecordModeEnabled()
{
  result = _recordModeEnabled;
  if ((_recordModeEnabled & 1) == 0)
  {
    return getenv(VTKRecordModeEnviromentVariable) != 0;
  }

  return result;
}

double VTKPixelSizeOfImage(void *a1)
{
  v1 = a1;
  [v1 size];
  v9 = v3;
  v10 = v2;
  [v1 scale];
  v5 = v4;
  [v1 scale];
  v7 = v6;

  CGAffineTransformMakeScale(&v11, v5, v7);
  *&result = *&vmlaq_n_f64(vmulq_n_f64(*&v11.c, v9), *&v11.a, v10);
  return result;
}

id VTKImageWithDrawItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 count];
  v6 = 0;
  if (v3 && v5)
  {
    [v3 scale];
    v8 = v7;
    [v3 size];
    v10 = v9;
    [v3 size];
    v12 = [VTKBitmapContext contextType:MGGetBoolAnswer() width:v10 height:v11 scale:v8];
    v13 = [v12 pixelWidth];
    v14 = [v12 pixelHeight];
    v15 = [v12 CGContext];
    v16 = [v3 CGImage];
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v13;
    v22.size.height = v14;
    CGContextDrawImage(v15, v22, v16);
    CGContextTranslateCTM([v12 CGContext], 0.0, objc_msgSend(v12, "pixelHeight"));
    CGContextScaleCTM([v12 CGContext], v8, -v8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __VTKImageWithDrawItems_block_invoke;
    v19[3] = &unk_C128;
    v20 = v12;
    v17 = v12;
    [v4 enumerateObjectsUsingBlock:v19];
    v6 = [v17 image];
  }

  return v6;
}

double VTKMainScreenScale()
{
  valuePtr = 0.0;
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"main-screen-scale");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
  }

  CFRelease(v1);
  return valuePtr;
}

id _NSStringFromVTKAssertID(void *a1)
{
  v1 = a1;
  v2 = [v1 vtkAssertName];
  v3 = [v1 vtkIDDecorationsMask] & 0x3F;
  v4 = [[NSMutableString alloc] initWithString:v2];
  if (v3)
  {
    v5 = 1;
    do
    {
      v6 = _StringExtensionForMask(v3 & v5);
      v7 = v6;
      if (v6)
      {
        [v4 appendFormat:@"-%@", v6];
      }

      v3 &= ~v5;
      v5 *= 2;
    }

    while (v3);
  }

  return v4;
}

id _StringExtensionForMask(uint64_t a1)
{
  v1 = 0;
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        v13 = +[NSLocale currentLocale];
        v14 = [v13 languageCode];
        v15 = [v13 countryCode];
        v1 = [NSString stringWithFormat:@"%@_%@", v14, v15];

        break;
      case 16:
        v13 = +[UIContentSizeCategoryPreference system];
        v14 = [v13 preferredContentSizeCategory];
        v1 = [NSString stringWithFormat:@"%@_PCSC", v14];
        break;
      case 32:
        v6 = MGGetBoolAnswer();
        v7 = @"wideGamut";
        if (!v6)
        {
          v7 = 0;
        }

        v8 = v7;
        goto LABEL_33;
      default:
        goto LABEL_34;
    }

    goto LABEL_34;
  }

  switch(a1)
  {
    case 1:
      v21 = 0;
      v9 = MGCopyAnswer();
      if (v9)
      {
        v10 = v9;
        Value = CFDictionaryGetValue(v9, @"main-screen-width");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &v21);
        }

        CFRelease(v10);
        v12 = v21;
      }

      else
      {
        v12 = 0;
      }

      [NSString stringWithFormat:@"%uw", v12];
      break;
    case 2:
      v22 = 0;
      v16 = MGCopyAnswer();
      if (v16)
      {
        v17 = v16;
        v18 = CFDictionaryGetValue(v16, @"main-screen-height");
        if (v18)
        {
          CFNumberGetValue(v18, kCFNumberIntType, &v22);
        }

        CFRelease(v17);
        v19 = v22;
      }

      else
      {
        v19 = 0;
      }

      [NSString stringWithFormat:@"%uh", v19];
      break;
    case 4:
      valuePtr = 0.0;
      v2 = MGCopyAnswer();
      if (v2)
      {
        v3 = v2;
        v4 = CFDictionaryGetValue(v2, @"main-screen-scale");
        if (v4)
        {
          CFNumberGetValue(v4, kCFNumberFloat32Type, &valuePtr);
        }

        CFRelease(v3);
        v5 = valuePtr;
      }

      else
      {
        v5 = 0.0;
      }

      [NSString stringWithFormat:@"%.0fx", *&v5];
      break;
    default:
      goto LABEL_34;
  }
  v8 = ;
LABEL_33:
  v1 = v8;
LABEL_34:

  return v1;
}

double CIEDE2000DifferenceBetweenColor(double a1, double a2, long double a3, double a4, double a5, long double a6)
{
  v11 = a3 * a3;
  v12 = a6 * a6;
  v13 = pow((sqrt(a3 * a3 + a2 * a2) + sqrt(a6 * a6 + a5 * a5)) * 0.5, 7.0);
  v14 = (1.0 - sqrt(v13 / (v13 + 6103515620.0))) * 0.5 + 1.0;
  v15 = v14 * a2;
  v16 = v14 * a5;
  v17 = v11 + v15 * v15;
  if (a3 != 0.0 || (v18 = 0.0, v15 != 0.0))
  {
    v18 = atan2(a3, v15);
    if (v18 < 0.0)
    {
      v18 = v18 + 6.28318531;
    }
  }

  v19 = sqrt(v17);
  v20 = sqrt(v12 + v16 * v16);
  if (a6 != 0.0 || (v21 = 0.0, v16 != 0.0))
  {
    v21 = atan2(a6, v16);
    if (v21 < 0.0)
    {
      v21 = v21 + 6.28318531;
    }
  }

  if (v19 * v20 == 0.0)
  {
    v22 = v18 + v21;
    v23 = 0.0;
    goto LABEL_21;
  }

  v23 = v21 - v18;
  if (v21 - v18 >= -3.14159265)
  {
    if (v23 <= 3.14159265)
    {
      goto LABEL_16;
    }

    v24 = -6.28318531;
  }

  else
  {
    v24 = 6.28318531;
  }

  v23 = v23 + v24;
LABEL_16:
  v25 = v18 + v21;
  if (vabdd_f64(v18, v21) <= 3.14159265)
  {
    v22 = v25 * 0.5;
  }

  else
  {
    v26 = 6.28318531;
    if (v25 >= 6.28318531)
    {
      v26 = -6.28318531;
    }

    v22 = (v25 + v26) * 0.5;
  }

LABEL_21:
  v27 = (v19 + v20) * 0.5;
  v28 = sqrt(v19 * v20);
  v38 = (v28 + v28) * sin(v23 * 0.5);
  v29 = cos(v22 + -0.523598776) * -0.17 + 1.0;
  v30 = v29 + cos(v22 + v22) * 0.24;
  v31 = v30 + cos(v22 * 3.0 + 0.104719755) * 0.32;
  v32 = v31 + cos(v22 * 4.0 + -1.09955743) * -0.2;
  v33 = exp(-((v22 + -4.79965544) / 0.436332313 * ((v22 + -4.79965544) / 0.436332313))) * -0.523598776;
  v34 = pow(v27, 7.0);
  v35 = sqrt(v34 / (v34 + 6103515620.0));
  v36 = ((a1 + a4) * 0.5 + -50.0) * ((a1 + a4) * 0.5 + -50.0) * 0.015 / sqrt(((a1 + a4) * 0.5 + -50.0) * ((a1 + a4) * 0.5 + -50.0) + 20.0) + 1.0;
  return sqrt((a4 - a1) / v36 * ((a4 - a1) / v36) + (v20 - v19) / (v27 * 0.045 + 1.0) * ((v20 - v19) / (v27 * 0.045 + 1.0)) + v38 / (v27 * 0.015 * v32 + 1.0) * (v38 / (v27 * 0.015 * v32 + 1.0)) + (v20 - v19) / (v27 * 0.045 + 1.0) * ((v35 + v35) * sin(v33 + v33)) * (v38 / (v27 * 0.015 * v32 + 1.0)));
}

void __VTKSetReferenceImagesDirectory(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 VisualTestKitConfiguration];
  [v4 setReferenceImagesDirectory:v3];
}

void __VTKAddVerticalGuideAt(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = [a2 VisualTestKitConfiguration];
  [v6 addVerticalGuideAt:v5 withColor:a3];
}

void __VTKAddHorizontalGuideAt(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = [a2 VisualTestKitConfiguration];
  [v6 addHorozontalGuideAt:v5 withColor:a3];
}

void __VTKAddSqureGuideAt(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = [a2 VisualTestKitConfiguration];
  [v12 addSquareGuideAt:v11 withColor:{a3, a4, a5, a6}];
}

void __VTKAddExclusionAreaAt(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 VisualTestKitConfiguration];
  [v9 addExclusionAreaAt:{a2, a3, a4, a5}];
}

double __VTKExclusionAreaStatusBar()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v1 = +[UIApplication sharedApplication];
  [v1 statusBarFrame];

  return 0.0;
}

void __VTKSetReferenceItemSourceType(uint64_t a1, void *a2)
{
  v3 = [a2 VisualTestKitConfiguration];
  [v3 setReferenceItemsSourceType:a1];
}

void __VTKSetImageComparatorStrategy(uint64_t a1, void *a2)
{
  v3 = [a2 VisualTestKitConfiguration];
  [v3 setImageComparatorStrategy:a1];
}

void __VTKSetImageComparisonOptions(uint64_t a1, void *a2)
{
  v3 = [a2 VisualTestKitConfiguration];
  [v3 setComparisonOptions:a1];
}

double pixelMatchDifferenceBetweenColor(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a2 * 0.58662247 + a1 * 0.29889531 + a3 * 0.11448223 - (a5 * 0.58662247 + a4 * 0.29889531 + a6 * 0.11448223);
  v7 = a2 * -0.2741761 + a1 * 0.59597799 - a3 * 0.32180189 - (a5 * -0.2741761 + a4 * 0.59597799 - a6 * 0.32180189);
  v8 = a2 * -0.52261711 + a1 * 0.21147017 + a3 * 0.31114694 - (a5 * -0.52261711 + a4 * 0.21147017 + a6 * 0.31114694);
  return v7 * (v7 * 0.299) + v6 * 0.5053 * v6 + v8 * 0.1957 * v8;
}

double rgbToXYZr(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 <= 0.04045)
  {
    v11 = a4 / 12.92;
  }

  else
  {
    v11 = pow((a4 + 0.055) / 1.055, 2.4);
  }

  if (a5 <= 0.04045)
  {
    v12 = a5 / 12.92;
  }

  else
  {
    v12 = pow((a5 + 0.055) / 1.055, 2.4);
  }

  if (a6 <= 0.04045)
  {
    v13 = a6 / 12.92;
  }

  else
  {
    v13 = pow((a6 + 0.055) / 1.055, 2.4);
  }

  v14 = v13 * 100.0;
  *a1 = v12 * 100.0 * 0.3576 + v11 * 100.0 * 0.4124 + v14 * 0.1805;
  *a2 = v12 * 100.0 * 0.7152 + v11 * 100.0 * 0.2126 + v14 * 0.0722;
  result = v12 * 100.0 * 0.1192 + v11 * 100.0 * 0.0193 + v14 * 0.9505;
  *a3 = result;
  return result;
}

double xyzToLabx(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  v10 = a4 / 95.047;
  v11 = a5 / 100.0;
  if (v10 <= 0.008856)
  {
    v12 = v10 * 7.787 + 0.137931034;
  }

  else
  {
    v12 = pow(v10, 0.333333333);
  }

  v13 = a6 / 108.883;
  if (v11 <= 0.008856)
  {
    v14 = v11 * 7.787 + 0.137931034;
  }

  else
  {
    v14 = pow(v11, 0.333333333);
  }

  if (v13 <= 0.008856)
  {
    v15 = v13 * 7.787 + 0.137931034;
  }

  else
  {
    v15 = pow(v13, 0.333333333);
  }

  *a1 = v14 * 116.0 + -16.0;
  *a2 = (v12 - v14) * 500.0;
  result = (v14 - v15) * 200.0;
  *a3 = result;
  return result;
}

void sub_3D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VTKTransverseContexs(void *a1, void *a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 pixelHeight])
  {
    v10 = 0;
    do
    {
      v11 = [v8 pixelWidth];
      v12 = v15;
      if (v11)
      {
        for (i = 0; i < v14; ++i)
        {
          v9[2](v9, i, v10, [v12 dataAtPixel:{i, v10}], objc_msgSend(v7, "dataAtPixel:", i, v10), objc_msgSend(v8, "dataAtPixel:", i, v10));
          v14 = [v8 pixelWidth];
          v12 = v15;
        }
      }

      ++v10;
    }

    while (v10 < [v8 pixelHeight]);
  }
}

void __VTKAssertView(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a2;
  v11 = a1;
  v12 = [a3 VisualTestKitAssert];
  [v12 assertView:v11 identifier:v10 filePath:v9 lineNumber:a5];
}

void sub_5EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _saveItemsRootURLWithItemsDirectory(__CFString *a1)
{
  v1 = &stru_104C0;
  if (a1)
  {
    v1 = a1;
  }

  v2 = v1;
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];

  v5 = [@"VisualTestKit/assertViews/" stringByAppendingPathComponent:v2];

  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

VTKAssertID *VTKID(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[VTKAssertID alloc] initWithName:v3 decorationMask:a2];

  return v4;
}