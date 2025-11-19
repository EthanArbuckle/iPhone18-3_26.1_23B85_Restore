void UIGraphicsAddPDFContextDestinationAtPoint(NSString *name, CGPoint point)
{
  y = point.y;
  x = point.x;
  namea = name;
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1)
  {
    v5 = &ContextStack[3 * (*ContextStack - 1)];
    if (*(v5 + 4) == 2)
    {
      v6 = v5[1];
      if (v6)
      {
        v9.x = x;
        v9.y = y;
        CGPDFContextAddDestinationAtPoint(v6, namea, v9);
      }
    }
  }
}

void UIGraphicsSetPDFContextDestinationForRect(NSString *name, CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  namea = name;
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1)
  {
    v7 = &ContextStack[3 * (*ContextStack - 1)];
    if (*(v7 + 4) == 2)
    {
      v8 = v7[1];
      if (v8)
      {
        v11.origin.x = x;
        v11.origin.y = y;
        v11.size.width = width;
        v11.size.height = height;
        CGPDFContextSetDestinationForRect(v8, namea, v11);
      }
    }
  }
}

void sub_18999C158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18999C2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18999C46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGColorSpaceRef __PQColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
  qword_1ED49A708 = result;
  return result;
}

CGColorSpaceRef __HLGColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F170]);
  qword_1ED49A718 = result;
  return result;
}

CGColorSpaceRef __StandardGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  qword_1ED49A738 = result;
  return result;
}

void sub_18999E81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIDocumentCarouselViewItemWidth(void *a1)
{
  [a1 bounds];
  CGRectGetWidth(v3);
  [a1 layoutMargins];
  [a1 layoutMargins];
  _UIDocumentCarouselViewRevealDimension(a1);

  UIRoundToViewScale(a1);
}

void _UIDocumentCarouselViewRevealDimension(void *a1)
{
  [a1 bounds];
  CGRectGetWidth(v3);

  UIRoundToViewScale(a1);
}

void sub_1899A0060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t _UIDocumentCarouselViewAnimateWithTracking(char a1, uint64_t a2, uint64_t a3)
{
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIDocumentCarouselViewAnimateWithTracking_block_invoke;
  v7[3] = &unk_1E710BF10;
  v8 = a1;
  v7[4] = a2;
  v7[5] = a3;
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048633 updateReason:v7 animations:*&v9.minimum, *&v9.maximum, *&v9.preferred];
}

void sub_1899A05B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 40));
  _Unwind_Resume(a1);
}

uint64_t _UIImageIsCustomSymbol(void *a1)
{
  v1 = a1;
  if ([v1 isSymbolImage])
  {
    v2 = _UIIsSystemSymbolImage(v1) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFTypeRef _UIImageGetCGImageRepresentation(void *a1)
{
  v1 = [a1 _rasterizedImage];
  v2 = CGImageRetain([v1 CGImage]);
  v3 = CFAutorelease(v2);

  return v3;
}

id _UIImageSystemSymbolNames()
{
  v0 = _UIKitCoreGlyphsManager();
  v1 = [v0 _allImageNames];

  return v1;
}

id LoadImageSequence(void *a1, void *a2, void *a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__109;
  v41 = __Block_byref_object_dispose__109;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __LoadImageSequence_block_invoke;
  aBlock[3] = &unk_1E710C0A0;
  v35 = a4;
  *&aBlock[5] = a6;
  *&aBlock[6] = a7;
  *&aBlock[7] = a8;
  *&aBlock[8] = a9;
  v36 = a5 == 1;
  aBlock[4] = &v37;
  v20 = _Block_copy(aBlock);
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@0", v17];
  v22 = [UIImage imageNamed:v21 inBundle:v18 compatibleWithTraitCollection:v19];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@1", v17];
  v24 = [UIImage imageNamed:v23 inBundle:v18 compatibleWithTraitCollection:v19];
  v32 = v19;
  v33 = v18;

  if (v22 | v24)
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v26 = v38[5];
    v38[5] = v25;

    v20[2](v20, v22);
    v20[2](v20, v24);
    v27 = 2;
    do
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", v17, v27, v32, v33];
      v29 = [UIImage imageNamed:v28];

      if (!v29)
      {
        break;
      }

      v20[2](v20, v29);

      v27 = (v27 + 1);
    }

    while (v27 != 1025);
  }

  v30 = v38[5];

  _Block_object_dispose(&v37, 8);

  return v30;
}

void sub_1899ABB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIImageDeviceSpecificName()
{
  if (qword_1ED498D40[0] != -1)
  {
    dispatch_once(qword_1ED498D40, &__block_literal_global_1249);
  }

  v1 = qword_1ED498D38;

  return v1;
}

double *__RGBtoHSV(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = a5;
  }

  if (v6 < a6)
  {
    v6 = a6;
  }

  v7 = v6;
  v8 = v7;
  *a3 = v7;
  if (v7 == 0.0)
  {
    *result = NAN;
    *a2 = 0.0;
    *a3 = 0.0;
  }

  else
  {
    if (a4 <= a5)
    {
      v9 = a4;
    }

    else
    {
      v9 = a5;
    }

    if (v9 > a6)
    {
      v9 = a6;
    }

    v10 = v9;
    v11 = v7 - v10;
    *a2 = (v11 / v7);
    v12 = v11;
    if (v8 == a4)
    {
      v13 = (a5 - a6) / v12;
    }

    else
    {
      v14 = v8 == a5;
      v15 = (a4 - a5) / v12 + 4.0;
      v13 = (a6 - a4) / v12 + 2.0;
      if (!v14)
      {
        v13 = v15;
      }
    }

    v16 = v13 * 60.0;
    if (v16 < 0.0)
    {
      v16 = v16 + 360.0;
    }

    *result = v16;
  }

  return result;
}

void compositeCGImageRefInRect(CGImage *a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, CGFloat a12)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v27);
  CGContextSetAlpha(v27, a12);
  CGContextSetCompositeOperation();
  CGContextTranslateCTM(v27, a2, a3 + a5);
  v28 = -a5;
  CGContextScaleCTM(v27, a4 / a8, -a5 / a9);
  if (a5 > 0.0 && a4 > 0.0 && a11)
  {
    v29 = xmmword_18A67CAC0;
    v30 = -1.0;
    if (a11 <= 3)
    {
      switch(a11)
      {
        case 1:
LABEL_21:
          v31 = 0.0;
          goto LABEL_25;
        case 2:
          v31 = a5 / a4;
          *(&v29 + 1) = 0;
          *&v29 = -a4 / a5;
          a5 = 0.0;
          goto LABEL_24;
        case 3:
          v31 = v28 / a4;
          *(&v29 + 1) = 0;
          *&v29 = a4 / a5;
LABEL_18:
          a4 = 0.0;
LABEL_24:
          v30 = 0.0;
          goto LABEL_25;
      }
    }

    else
    {
      if (a11 <= 5)
      {
        if (a11 == 4)
        {
          v29 = xmmword_18A64B720;
          a5 = 0.0;
        }

        else
        {
          v30 = 1.0;
          a4 = 0.0;
        }

        goto LABEL_21;
      }

      if (a11 == 6)
      {
        v31 = v28 / a4;
        *(&v29 + 1) = 0;
        *&v29 = -a4 / a5;
        goto LABEL_24;
      }

      if (a11 == 7)
      {
        v31 = a5 / a4;
        *(&v29 + 1) = 0;
        *&v29 = a4 / a5;
        a5 = 0.0;
        goto LABEL_18;
      }
    }

    v30 = *MEMORY[0x1E695EFD0];
    v31 = *(MEMORY[0x1E695EFD0] + 8);
    v29 = *(MEMORY[0x1E695EFD0] + 16);
    a4 = *(MEMORY[0x1E695EFD0] + 32);
    a5 = *(MEMORY[0x1E695EFD0] + 40);
LABEL_25:
    transform.a = v30;
    transform.b = v31;
    *&transform.c = v29;
    transform.tx = a4;
    transform.ty = a5;
    CGContextConcatCTM(v27, &transform);
  }

  v34.origin.y = a7;
  v34.origin.x = a6;
  v34.size.width = a8;
  v34.size.height = a9;
  v35 = CGRectOffset(v34, -a6, -a7);
  CGContextDrawImage(v27, v35, a1);
  CGContextRestoreGState(v27);
}

void compositeCGImageRef(CGImage *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v20);
  CGContextSetAlpha(v20, a8);
  CGContextSetCompositeOperation();
  CGContextTranslateCTM(v20, a2 - a4, a5 + a3 + a7);
  CGContextScaleCTM(v20, 1.0, -1.0);
  if (a7 > 0.0 && a6 > 0.0 && a10)
  {
    v21 = xmmword_18A67CAC0;
    v22 = -1.0;
    if (a10 <= 3)
    {
      if (a10 != 1)
      {
        if (a10 == 2)
        {
          v25 = a7 / a6;
          *(&v21 + 1) = 0;
          *&v21 = -a6 / a7;
          v24 = 0.0;
          v23 = a6;
          goto LABEL_25;
        }

        if (a10 == 3)
        {
          v25 = -a7 / a6;
          *(&v21 + 1) = 0;
          *&v21 = a6 / a7;
          v23 = 0.0;
          v24 = a7;
LABEL_25:
          v22 = 0.0;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v25 = 0.0;
    }

    else
    {
      if (a10 <= 5)
      {
        if (a10 == 4)
        {
          v21 = xmmword_18A64B720;
          v24 = 0.0;
          v23 = a6;
        }

        else
        {
          v22 = 1.0;
          v23 = 0.0;
          v24 = a7;
        }

        v25 = 0.0;
        goto LABEL_26;
      }

      if (a10 != 6)
      {
        if (a10 == 7)
        {
          v25 = a7 / a6;
          *(&v21 + 1) = 0;
          *&v21 = a6 / a7;
          v24 = 0.0;
          v23 = 0.0;
          goto LABEL_25;
        }

LABEL_19:
        v22 = *MEMORY[0x1E695EFD0];
        v25 = *(MEMORY[0x1E695EFD0] + 8);
        v21 = *(MEMORY[0x1E695EFD0] + 16);
        v23 = *(MEMORY[0x1E695EFD0] + 32);
        v24 = *(MEMORY[0x1E695EFD0] + 40);
LABEL_26:
        v26.a = v22;
        v26.b = v25;
        *&v26.c = v21;
        v26.tx = v23;
        v26.ty = v24;
        CGContextConcatCTM(v20, &v26);
        goto LABEL_27;
      }

      v25 = -a7 / a6;
      *(&v21 + 1) = 0;
      *&v21 = -a6 / a7;
      v22 = 0.0;
    }

    v24 = a7;
    v23 = a6;
    goto LABEL_26;
  }

LABEL_27:
  v27.origin.x = a4;
  v27.origin.y = a5;
  v27.size.width = a6;
  v27.size.height = a7;
  CGContextDrawImage(v20, v27, a1);
  CGContextRestoreGState(v20);
}

BOOL _UIImageIsFilledSystemSymbolImage(void *a1)
{
  v1 = a1;
  if (_UIIsSystemSymbolImage(v1))
  {
    v2 = _UIImageName(v1);
    v3 = _UIIsPrivateSystemSymbolImage(v1);
    v4 = MEMORY[0x1E69C8720];
    if (!v3)
    {
      v4 = MEMORY[0x1E69C8718];
    }

    v5 = [*v4 allKeysForObject:v2];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1899B2C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIImageVariantName(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 length] < 6)
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_27;
    }

LABEL_36:
    v24 = v3;
    goto LABEL_43;
  }

  v4 = _UIImageVariantValueForName(v3);
  v5 = v3;
  v3 = v5;
  if ([v5 length] >= 6)
  {
    v26 = v5;
    v27 = v4;
    v6 = [v5 componentsSeparatedByString:@"."];
    v7 = objc_opt_new();
    v8 = [v6 count];
    if (v8 - 1 >= 1)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [v6 objectAtIndexedSubscript:--v9];
        v14 = v13;
        if (v10 & 1) == 0 && (([v13 isEqualToString:@"circle"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"square") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"rectangle")))
        {
          v10 = 1;
        }

        else if ((v12 & 1) != 0 || ([v14 isEqualToString:@"fill"] & 1) == 0)
        {
          if (v11)
          {
            v11 = 1;
            goto LABEL_19;
          }

          if (![v14 isEqualToString:@"slash"])
          {
            v11 = 0;
            goto LABEL_19;
          }

          v11 = 1;
        }

        else
        {
          v12 = 1;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        [v7 addObject:v15];

LABEL_19:
      }

      while (v9 > 1);
    }

    v5 = v26;
    v4 = v27;
    v3 = v26;
    if ([v7 count])
    {
      v16 = [v6 mutableCopy];
      if ([v7 count])
      {
        v17 = 0;
        do
        {
          v18 = [v7 objectAtIndexedSubscript:v17];
          [v16 removeObjectAtIndex:{objc_msgSend(v18, "integerValue")}];

          ++v17;
        }

        while (v17 < [v7 count]);
      }

      v3 = [v16 componentsJoinedByString:@"."];
    }
  }

  if (!a2)
  {
    goto LABEL_36;
  }

LABEL_27:
  v19 = v4 & 0xFFFFFFF1;
  if ((a2 & 0xE) == 0)
  {
    v19 = v4;
  }

  v20 = v19 | a2;
  v21 = [v3 mutableCopy];
  v22 = v21;
  if ((v20 & 0x10000) != 0)
  {
    [v21 appendString:@".slash"];
  }

  if ((v20 & 2) != 0)
  {
    v23 = @".circle";
    goto LABEL_39;
  }

  if ((v20 & 4) != 0)
  {
    v23 = @".square";
    goto LABEL_39;
  }

  if ((v20 & 8) != 0)
  {
    v23 = @".rectangle";
LABEL_39:
    [v22 appendString:v23];
  }

  if ((v20 & 0x40000000) != 0)
  {
    [v22 appendString:@".fill"];
  }

  v24 = [v22 copy];

LABEL_43:

  return v24;
}

uint64_t _UIImageVariantValueForName(void *a1)
{
  v1 = a1;
  if ([v1 length] < 6)
  {
    v5 = 0;
  }

  else
  {
    v2 = [v1 componentsSeparatedByString:@"."];
    v3 = [v2 count];
    if (v3 - 1 >= 1)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = [v2 objectAtIndexedSubscript:--v4];
        v10 = v9;
        if (v8)
        {
          break;
        }

        if ([v9 isEqualToString:@"circle"])
        {
          v5 |= 2uLL;
        }

        else if ([v10 isEqualToString:@"square"])
        {
          v5 |= 4uLL;
        }

        else
        {
          if (![v10 isEqualToString:@"rectangle"])
          {
            break;
          }

          v5 |= 8uLL;
        }

        v8 = 1;
LABEL_20:

        if (v4 <= 1)
        {
          goto LABEL_24;
        }
      }

      if ((v7 & 1) != 0 || ![v10 isEqualToString:@"fill"])
      {
        if (v6)
        {
          v6 = 1;
        }

        else
        {
          v11 = [v10 isEqualToString:@"slash"];
          v6 = v11;
          if (v11)
          {
            v5 |= 0x10000uLL;
          }
        }
      }

      else
      {
        v5 |= 0x40000000uLL;
        v7 = 1;
      }

      goto LABEL_20;
    }

    v5 = 0;
LABEL_24:
  }

  return v5;
}

id UIImageGetLCDBackground()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v2 = @"UILCDBackgroundT.png";
  }

  else
  {
    v2 = @"UILCDBackground.png";
  }

  return _UIImageWithName(v2);
}

id UIImageGetTableSelectionBackground()
{
  v0 = UIImageGetTableSelectionBackground_selectedBackgroundImage;
  if (!UIImageGetTableSelectionBackground_selectedBackgroundImage)
  {
    _UIGraphicsBeginImageContextWithOptions(1, 0, 1.0, 1.0, 1.0);
    v1 = +[UIColor tableCellDefaultSelectionTintColor];
    [v1 set];

    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    v8.origin.x = 0.0;
    v8.origin.y = 0.0;
    v8.size.width = 1.0;
    v8.size.height = 1.0;
    CGContextFillRect(v3, v8);
    v4 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v5 = UIImageGetTableSelectionBackground_selectedBackgroundImage;
    UIImageGetTableSelectionBackground_selectedBackgroundImage = v4;

    v0 = UIImageGetTableSelectionBackground_selectedBackgroundImage;
  }

  return v0;
}

void __LoadImageSequence_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (*(a1 + 72) == 1)
    {
      v6 = v3;
      v5 = [v3 resizableImageWithCapInsets:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

      [v5 _setAlwaysStretches:*(a1 + 73)];
      v4 = v5;
    }

    v7 = v4;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

void Draw3PartSlice(CGContext *a1, CGImage *a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, CGFloat a14, double a15, CGFloat a16)
{
  v59.origin.x = a9;
  remainder.origin.x = a9;
  remainder.origin.y = a10;
  remainder.size.width = a11;
  remainder.size.height = a12;
  memset(&slice, 0, sizeof(slice));
  memset(&v56, 0, sizeof(v56));
  memset(&v55, 0, sizeof(v55));
  v59.origin.y = a10;
  v59.size.width = a11;
  v59.size.height = a12;
  CGRectDivide(v59, &slice, &remainder, a14, CGRectMinXEdge);
  CGRectDivide(remainder, &v55, &v56, a16, CGRectMaxXEdge);
  v27 = a6 * a3;
  v28 = a7 * a3;
  v29 = a8 * a3;
  v30 = a16 * a3;
  DrawImageRegion(a1, a2, a4, a3, 0.0, v27, a14 * a3, v29, v36, v37, v38, v31, v32, v33, v34, v35, slice.origin.x, slice.origin.y, slice.size);
  DrawImageRegion(a1, a2, a4, a3, a14 * a3, v27, v28 - a14 * a3 - v30, v29, v44, v45, v46, v39, v40, v41, v42, v43, v56.origin.x, v56.origin.y, v56.size);
  DrawImageRegion(a1, a2, a4, a3, v28 - v30, v27, v30, v29, v52, v53, v54, v47, v48, v49, v50, v51, v55.origin.x, v55.origin.y, v55.size);
}

void DrawImageRegion(CGContext *a1, CGImage *a2, int a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGFloat a17, double a18, CGSize a19)
{
  v31.size = a19;
  v31.origin.x = a17;
  v31.origin.y = a18;
  if (!CGRectIsEmpty(v31))
  {
    v32.origin.x = a5;
    v32.origin.y = a6;
    v32.size.width = a7;
    v32.size.height = a8;
    if (!CGRectIsEmpty(v32))
    {
      if (a3 && (CGContextGetCTM(&v29, a1), CGAffineTransformInvert(&v30, &v29), v22 = vmovn_s64(vmvnq_s8(vceqq_f64(vaddq_f64(vmulq_n_f64(*&v30.a, a7), vmulq_n_f64(*&v30.c, a8)), a19))), ((v22.i32[0] | v22.i32[1]) & 1) != 0))
      {
        CGContextSaveGState(a1);
        v33.origin.x = a17;
        v33.origin.y = a18;
        v33.size = a19;
        CGContextClipToRect(a1, v33);
        v34.origin.x = a5;
        v34.origin.y = a6;
        v34.size.width = a7;
        v34.size.height = a8;
        v23 = CGImageCreateWithImageInRect(a2, v34);
        if (v23)
        {
          v24 = v23;
          v35.origin.y = a18 + a19.height;
          v35.size.width = a7 / a4;
          v35.size.height = a8 / a4;
          v35.origin.x = a17;
          CGContextDrawTiledImage(a1, v35, v23);
          CGImageRelease(v24);
        }

        CGContextRestoreGState(a1);
      }

      else
      {
        v36.origin.x = a5;
        v36.origin.y = a6;
        v36.size.width = a7;
        v36.size.height = a8;
        v25 = CGImageCreateWithImageInRect(a2, v36);
        if (v25)
        {
          v26 = v25;
          v37.origin.x = a17;
          v37.origin.y = a18;
          v37.size = a19;
          CGContextDrawImage(a1, v37, v25);
          CGImageRelease(v26);
        }
      }
    }
  }
}

void draw9PartSlice(void *a1, double *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  remainder.origin.x = a4;
  remainder.origin.y = a5;
  remainder.size.width = a6;
  remainder.size.height = a7;
  memset(&slice, 0, sizeof(slice));
  v15 = a2[2];
  v16 = a1;
  v37.origin.x = a4;
  v37.origin.y = a5;
  v37.size.width = a6;
  v37.size.height = a7;
  CGRectDivide(v37, &slice, &remainder, v15, CGRectMinXEdge);
  draw9PartPart(v16, a3, *a2, a2[1], a2[2], a2[3], slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, v17, v18, v19, v20, v21, v22, *&a8);
  CGRectDivide(remainder, &slice, &remainder, a2[10], CGRectMaxXEdge);
  draw9PartPart(v16, a3, a2[4], a2[5], a2[6], a2[7], remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v23, v24, v25, v26, v27, v28, *&a8);
  draw9PartPart(v16, a3, a2[8], a2[9], a2[10], a2[11], slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, v29, v30, v31, v32, v33, v34, *&a8);
}

void draw9PartPart(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v25 = a1;
  v26 = a5 == 1.0 || a6 == 1.0;
  v36 = v25;
  if (v26)
  {
    [v25 compositeToRect:2 fromRect:a7 operation:a8 fraction:{a9, a10, a3, a4, a5, a6, a17}];
  }

  else
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v28);
    v35 = a7;
    v38.origin.x = a7;
    v38.origin.y = a8;
    v29 = a9;
    v38.size.width = a9;
    v30 = a10;
    v38.size.height = a10;
    CGContextClipToRect(v28, v38);
    v34 = a8 + a10;
    if (a8 < a8 + v30)
    {
      v31 = v35 + v29;
      do
      {
        if (v35 < v31)
        {
          v32 = v35;
          do
          {
            [v36 compositeToRect:a2 fromRect:v32 operation:a8 fraction:{a5, a6, a3, a4, a5, a6, a17}];
            v32 = a5 + v32;
          }

          while (v32 < v31);
        }

        a8 = a6 + a8;
      }

      while (a8 < v34);
    }

    CGContextRestoreGState(v28);
  }
}

void __destructor_8_sb8_sb16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

__CFString *_UIDataSourceUpdateActionDescription(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unhandled action: %ld)", a1];
  }

  else
  {
    v2 = off_1E710C198[a1 - 1];
  }

  return v2;
}

__CFString *_UISceneLifecycleActionDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E710C1D8[a1];
  }
}

id _UISceneLifecycleCompositeActionMaskComponentDescriptionComponents(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__110;
  v9 = __Block_byref_object_dispose__110;
  v10 = [MEMORY[0x1E695DF70] array];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UISceneLifecycleCompositeActionMaskComponentDescriptionComponents_block_invoke;
  v4[3] = &unk_1E710C1B8;
  v4[4] = &v5;
  _UIScenePerformActionsWithLifecycleActionMask(a1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1899B76C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899B9314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1899B9B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899BA718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIUserInterfaceSizeClassForHeightAndUserInterfaceIdiom(unint64_t a1, double a2)
{
  if (a1 > 8)
  {
    return 0;
  }

  if (((1 << a1) & 0x126) != 0)
  {
    return 2;
  }

  if (a1)
  {
    return 0;
  }

  _UIScreenReferenceBoundsSizeForType(1uLL);
  if (v4 > a2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _UIUserInterfaceStyleInverted(uint64_t a1)
{
  v1 = 1;
  if (a1 != 2)
  {
    v1 = a1;
  }

  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

unint64_t _UISSlotAccessibilityContrastFromAccessibilityContrast(unint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 >= 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected accessibility contrast for slot: %ld", &v5, 0xCu);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotAccessibilityContrastFromAccessibilityContrast___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Unexpected accessibility contrast for slot: %ld", &v5, 0xCu);
      }
    }

    return 0;
  }

  return v1;
}

uint64_t _UISSlotDisplayRangeFromDisplayGamut(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      return 2;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected display gamut for slot: %ld", &v5, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotDisplayRangeFromDisplayGamut___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected display gamut for slot: %ld", &v5, 0xCu);
      }
    }
  }

  return 1;
}

uint64_t _UISSlotDisplayScaleFromDisplayScale(double a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = llround(a1);
  if (v1 >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = v1;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (v3 != v1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 134217984;
        v9 = a1;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unexpected display scale for slot: %f", &v8, 0xCu);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotDisplayScaleFromDisplayScale___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 134217984;
        v9 = a1;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unexpected display scale for slot: %f", &v8, 0xCu);
      }
    }
  }

  return v3;
}

unint64_t _UISSlotLayoutDirectionFromTraitEnvironmentLayoutDirection(unint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 >= 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected layout direction for slot: %ld", &v5, 0xCu);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotLayoutDirectionFromTraitEnvironmentLayoutDirection___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Unexpected layout direction for slot: %ld", &v5, 0xCu);
      }
    }

    return 0;
  }

  return v1;
}

unint64_t _UISSlotLegibilityWeightFromLegibilityWeight(unint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 >= 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected legibility weight for slot: %ld", &v5, 0xCu);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotLegibilityWeightFromLegibilityWeight___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Unexpected legibility weight for slot: %ld", &v5, 0xCu);
      }
    }

    return 0;
  }

  return v1;
}

uint64_t _UISSlotUserInterfaceStyleFromUserInterfaceStyle(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return 1;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected user interface style for slot: %ld", &v5, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotUserInterfaceStyleFromUserInterfaceStyle___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected user interface style for slot: %ld", &v5, 0xCu);
      }
    }
  }

  return 0;
}

UIImage *_UIImageForView(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a1 && (v13[0] = @"src-rect", v1 = MEMORY[0x1E696B098], v2 = a1, [v2 bounds], v12[0] = v3, v12[1] = v4, v12[2] = v5, v12[3] = v6, objc_msgSend(v1, "valueWithBytes:objCType:", v12, "{CGRect={CGPoint=dd}{CGSize=dd}}"), v7 = objc_claimAutoreleasedReturnValue(), v13[1] = @"dst-gamut", v14[0] = v7, v14[1] = &unk_1EFE30BE0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 2), v8 = objc_claimAutoreleasedReturnValue(), v9 = _UIRenderView(v2, v8, &__block_literal_global_495), v2, v8, v7, v9))
  {
    v10 = [[UIImage alloc] initWithIOSurface:v9];
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _UIBezierPathAroundViewAlpha(void *a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v32[0] = @"src-rect", v3 = MEMORY[0x1E696B098], [v1 bounds], v31.a = v4, v31.b = v5, v31.c = v6, v31.d = v7, objc_msgSend(v3, "valueWithBytes:objCType:", &v31, "{CGRect={CGPoint=dd}{CGSize=dd}}"), v8 = objc_claimAutoreleasedReturnValue(), v32[1] = @"dst-gamut", v33[0] = v8, v33[1] = &unk_1EFE30BE0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v33, v32, 2), v9 = objc_claimAutoreleasedReturnValue(), v10 = _UIRenderView(v2, v9, &__block_literal_global_495), v9, v8, v10) && (v11 = _UICreateCGImageFromIOSurfaceWithOptions(v10, 0), CFRelease(v10), v11))
  {
    Width = CGImageGetWidth(v11);
    Height = CGImageGetHeight(v11);
    v14 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
    v16 = Width;
    v17 = Height;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v19 = CGBitmapContextCreate(0, Width, Height, 8uLL, Width, DeviceGray, 0);
    v20 = +[UIColor blackColor];
    CGContextSetFillColorWithColor(v19, [v20 CGColor]);

    v35.origin.x = v14;
    v35.origin.y = v15;
    v35.size.width = v16;
    v35.size.height = v17;
    CGContextFillRect(v19, v35);
    v36.origin.x = v14;
    v36.origin.y = v15;
    v36.size.width = v16;
    v36.size.height = v17;
    CGContextClipToMask(v19, v36, v11);
    v21 = +[UIColor whiteColor];
    CGContextSetFillColorWithColor(v19, [v21 CGColor]);

    v37.origin.x = v14;
    v37.origin.y = v15;
    v37.size.width = v16;
    v37.size.height = v17;
    CGContextFillRect(v19, v37);
    Image = CGBitmapContextCreateImage(v19);
    CGContextRelease(v19);
    CGColorSpaceRelease(DeviceGray);
    v23 = CGPathCreateWithThresholdedImage();
    if (v23)
    {
      v24 = v23;
      v25 = [UIBezierPath bezierPathWithCGPath:v23];
      [v2 bounds];
      v26 = CGRectGetWidth(v38);
      v27 = v26 / CGImageGetWidth(v11);
      [v2 bounds];
      v28 = CGRectGetHeight(v39);
      v29 = CGImageGetHeight(v11);
      CGAffineTransformMakeScale(&v31, v27, v28 / v29);
      [v25 applyTransform:&v31];
      CGPathRelease(v24);
    }

    else
    {
      v25 = 0;
    }

    CFRelease(Image);
    CFRelease(v11);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id GetTintedToolbarBackgroundImage(int a1, void *a2)
{
  v2 = 0;
  if (a1 >= 1 && a2)
  {
    v3 = a1;
    v4 = a2;
    _UIGraphicsBeginImageContextWithOptions(0, 0, 1.0, v3, 0.0);
    v5 = [v4 colorWithAlphaComponent:1.0];

    [v5 setFill];
    UIRectFillUsingOperation(1, 0.0, 0.0, 1.0, v3);
    v2 = _UIGraphicsGetImageFromCurrentImageContext(0);
    ContextStack = GetContextStack(0);
    PopContextFromStack(ContextStack);
  }

  return v2;
}

id GetTintedPromptTextColor(void *a1)
{
  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v7 = 0.0;
  if (a1)
  {
    [a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
    v1 = v7;
    v2 = v10 * 0.4;
    v3 = v9 * 0.4;
    v4 = v8 * 0.4;
  }

  else
  {
    v1 = 0.0;
    v4 = 0.0;
    v3 = 0.0;
    v2 = 0.0;
  }

  v5 = [UIColor colorWithRed:v2 green:v3 blue:v4 alpha:v1, *&v7, *&v8, *&v9, *&v10];

  return v5;
}

id _GetLightenedTintColor(void *a1)
{
  if (a1)
  {
    var8[0] = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v3 = 0;
    [a1 getRed:var8 green:&v5 blue:&v4 alpha:&v3];
    var8[0] = var8[0] * 0.6 + 0.4;
    v4 = v4 * 0.6 + 0.4;
    v5 = v5 * 0.6 + 0.4;
    a1 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
    v1 = var8[2];
  }

  return a1;
}

id _UIImagePressedTintColor(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v17 = v3;
    goto LABEL_28;
  }

  v39 = 0.0;
  v37 = 0;
  v38 = 0uLL;
  if (v3)
  {
    [v3 getRed:&v39 green:&v38.f64[1] blue:&v38 alpha:&v37];
    v5 = v39;
    v6 = v38;
  }

  else
  {
    v6 = 0uLL;
    v5 = 0.0;
  }

  v7 = v5 + v6.f64[1] + v6.f64[0];
  v8 = 3.0 - v7;
  if (3.0 - v7 < 0.3)
  {
    v8 = 0.3;
  }

  _ZF = a2 == 3 || a2 == 1;
  v10 = v8 * 0.1;
  if (_ZF)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v5 / v7 * v11;
  if (v11 >= v12)
  {
    v12 = v11;
  }

  v13 = vdupq_lane_s64(*&v11, 0);
  v14 = vmulq_n_f64(vdivq_f64(v6, vdupq_lane_s64(*&v7, 0)), v11);
  v15 = vbslq_s8(vcgtq_f64(v14, v13), v14, v13);
  switch(a2)
  {
    case 1:
      v39 = fmax(v5 - v12, 0.0);
      v16 = vmaxnmq_f64(vsubq_f64(v6, v15), 0);
LABEL_26:
      v38 = v16;
      break;
    case 2:
      v18 = v5 * 0.6;
      v19 = (1.0 - v5) / 0.56;
      v20 = v18 + (1.0 - fminf(v19, 1.0)) * 0.4 - v12;
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      v39 = v20;
      v21 = vmulq_f64(v6, vdupq_n_s64(0x3FE3333333333333uLL));
      __asm
      {
        FMOV            V4.2D, #1.0
        FMOV            V5.2S, #1.0
      }

      v27 = vsubq_f64(_Q4, vcvtq_f64_f32(vminnm_f32(vcvt_f32_f64(vdivq_f64(vsubq_f64(_Q4, v6), vdupq_n_s64(0x3FE1EB851EB851ECuLL))), _D5)));
      v28 = 0x3FD999999999999ALL;
LABEL_25:
      v34 = vsubq_f64(vaddq_f64(v21, vmulq_f64(v27, vdupq_n_s64(v28))), v15);
      v16 = vbicq_s8(v34, vcltzq_f64(v34));
      goto LABEL_26;
    case 3:
      v29 = v5 * 0.3;
      v30 = (1.0 - v5) / 0.46;
      v31 = v29 + (1.0 - fminf(v30, 1.0)) * 0.7 - v12;
      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      v39 = v31;
      v21 = vmulq_f64(v6, vdupq_n_s64(0x3FD3333333333334uLL));
      __asm
      {
        FMOV            V4.2D, #1.0
        FMOV            V5.2S, #1.0
      }

      v27 = vsubq_f64(_Q4, vcvtq_f64_f32(vminnm_f32(vcvt_f32_f64(vdivq_f64(vsubq_f64(_Q4, v6), vdupq_n_s64(0x3FDD70A3D70A3D70uLL))), _D5)));
      v28 = 0x3FE6666666666666;
      goto LABEL_25;
  }

  v17 = [UIColor colorWithRed:v37 green:*&v38 blue:*&v39 alpha:?];
LABEL_28:
  v35 = v17;

  return v35;
}

void sub_1899BD8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _DecrementImageUsage(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (qword_1EA963C18 != -1)
    {
      dispatch_once(&qword_1EA963C18, &__block_literal_global_433);
    }

    [qword_1EA963C10 removeObject:v1];
    if (qword_1EA963C18 != -1)
    {
      dispatch_once(&qword_1EA963C18, &__block_literal_global_433);
    }

    result = [qword_1EA963C10 containsObject:v1];
    if ((result & 1) == 0)
    {
      if (qword_1EA963C28 != -1)
      {
        dispatch_once(&qword_1EA963C28, &__block_literal_global_436_1);
      }

      [qword_1EA963C20 removeObjectForKey:v1];
      if (qword_1EA963C38 != -1)
      {
        dispatch_once(&qword_1EA963C38, &__block_literal_global_439);
      }

      v2 = qword_1EA963C30;

      return [v2 removeObjectForKey:v1];
    }
  }

  return result;
}

uint64_t isRectInBoundingPathCornerWithMinimumPadding(__int128 *a1, int64x2_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = a6;
  v14 = a4 + a6;
  v15 = vdupq_lane_s64(*&a8, 0);
  v16 = vdupq_n_s64(0x3FF921FB54442D18uLL);
  v17 = vmulq_f64(vaddq_f64(v15, vcvtq_f64_s64(*a2)), v16);
  v18 = a5 + a7;
  v19 = vmulq_f64(vaddq_f64(v15, vcvtq_f64_s64(a2[1])), v16);
  v20 = ceil(0.5 * vaddq_f64(vaddq_f64(vaddq_f64(v17, vdupq_laneq_s64(v17, 1)), v19), vdupq_laneq_s64(v19, 1)).f64[0]);
  if (v20 < 8.0)
  {
    v20 = 8.0;
  }

  v21 = vcvtd_n_f64_u64(v20, 3uLL);
  v22 = vcvtpd_u64_f64(v21);
  if (!v22)
  {
LABEL_22:
    if (a3 > 3)
    {
      if (a3 == 8)
      {
        LOBYTE(a3) = 0;
        v55 = 12;
        goto LABEL_32;
      }

      if (a3 == 4)
      {
        LOBYTE(a3) = 1;
        v55 = 6;
        goto LABEL_32;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v55 = 3;
        goto LABEL_32;
      }

      if (a3 == 2)
      {
        LOBYTE(a3) = 0;
        v55 = 9;
LABEL_32:
        v87 = *a1;
        v88 = a1[1];
        v89 = a1[2];
        v90 = *(a1 + 6);
        v59 = a2->i64[0];
        v58 = a2->i64[1];
        v60 = a2[1].i64[0];
        v61 = a2[1].i64[1];
        if (v11 > 0.0)
        {
          if (v55)
          {
            v63 = llround(a4 + v59);
            v64 = llround(a5 - a8);
            v65 = llround(v14 - v61);
            while (v63 <= v65)
            {
              v91 = v87;
              v92 = v88;
              v93 = v89;
              v94 = v90;
              v66 = _UIBoundingPathBitmapDataRowHitTest(&v91, v63, v64);
              v63 += v67;
              if ((v66 & 1) == 0)
              {
                return 0;
              }
            }
          }

          if ((v55 & 4) != 0)
          {
            v72 = llround(a4 + v58);
            v73 = llround(v18 + a8);
            v74 = llround(v14 - v60);
            while (v72 <= v74)
            {
              v91 = v87;
              v92 = v88;
              v93 = v89;
              v94 = v90;
              v75 = _UIBoundingPathBitmapDataRowHitTest(&v91, v72, v73);
              v72 += v76;
              if ((v75 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        if (a7 <= 0.0)
        {
          return 1;
        }

        if ((v55 & 2) != 0)
        {
          v68 = llround(a4 - a8);
          v69 = llround(a5 + v59);
          v70 = llround(v18 - v58);
          while (v69 <= v70)
          {
            v91 = v87;
            v92 = v88;
            v93 = v89;
            v94 = v90;
            v71 = _UIBoundingPathBitmapDataRowHitTest(&v91, v68, v69++);
            if ((v71 & 1) == 0)
            {
              return 0;
            }
          }
        }

        if (a3)
        {
          return 1;
        }

        v78 = llround(v14 + a8);
        v79 = llround(a5 + v61);
        v80 = llround(v18 - v60);
        do
        {
          v62 = v79 > v80;
          if (v79 > v80)
          {
            break;
          }

          v91 = v87;
          v92 = v88;
          v93 = v89;
          v94 = v90;
          v81 = _UIBoundingPathBitmapDataRowHitTest(&v91, v78, v79++);
        }

        while ((v81 & 1) != 0);
        return v62;
      }
    }

    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIRectEdge edgesForCorner(const UIRectCorner)"];
    [v56 handleFailureInFunction:v57 file:@"_UIComplexBoundingPath.m" lineNumber:715 description:{@"Invalid UIRectCorner value (%ld)", a3}];

    v55 = 0;
    LOBYTE(a3) = 1;
    goto LABEL_32;
  }

  v23 = 0;
  v24 = 0.785398163 / ceil(v21);
  v83 = v11;
  v84 = a7;
  v82 = v24;
LABEL_5:
  v25 = v24 * v23;
  if (a3 == 1)
  {
    v26 = 0;
    goto LABEL_7;
  }

  v34 = 0.0;
  v35 = 1;
  while (1)
  {
    v36 = v35;
    v37 = a2[1].i64[0];
    v38 = v14 - v37;
    v39 = v18 - v37;
    v40 = v37 + a8;
    v41 = __sincos_stret(v25 + v34);
    v42 = a1[1];
    v91 = *a1;
    v92 = v42;
    v93 = a1[2];
    v94 = *(a1 + 6);
    if ((_UIBoundingPathBitmapDataRowHitTest(&v91, llround(v38 + v41.__cosval * v40), llround(v39 + v41.__sinval * v40)) & 1) == 0)
    {
      return 0;
    }

    v35 = 0;
    v34 = 0.785398163;
    if ((v36 & 1) == 0)
    {
      v26 = 2;
      v33 = 2;
      if (a3 == 2)
      {
        goto LABEL_15;
      }

LABEL_7:
      while (1)
      {
        v27 = a2->i64[1];
        v28 = a4 + v27;
        v29 = v18 - v27;
        v30 = v27 + a8;
        v31 = __sincos_stret(v25 + v26 * 0.785398163);
        v32 = a1[1];
        v91 = *a1;
        v92 = v32;
        v93 = a1[2];
        v94 = *(a1 + 6);
        if ((_UIBoundingPathBitmapDataRowHitTest(&v91, llround(v28 + v30 * v31.__cosval), llround(v29 + v30 * v31.__sinval)) & 1) == 0)
        {
          return 0;
        }

        if (++v26 == 4)
        {
          v33 = 4;
          if (a3 == 8)
          {
            goto LABEL_19;
          }

LABEL_15:
          while (1)
          {
            v43 = a2->i64[0];
            v44 = a4 + v43;
            v45 = a5 + v43;
            v46 = v43 + a8;
            v47 = __sincos_stret(v25 + v33 * 0.785398163);
            v48 = a1[1];
            v91 = *a1;
            v92 = v48;
            v93 = a1[2];
            v94 = *(a1 + 6);
            if ((_UIBoundingPathBitmapDataRowHitTest(&v91, llround(v44 + v46 * v47.__cosval), llround(v45 + v46 * v47.__sinval)) & 1) == 0)
            {
              return 0;
            }

            if (++v33 == 6)
            {
              if (a3 != 4)
              {
                v26 = 6;
LABEL_19:
                do
                {
                  v49 = a2[1].i64[1];
                  v50 = v14 - v49;
                  v51 = a5 + v49;
                  v52 = v49 + a8;
                  v53 = __sincos_stret(v25 + v26 * 0.785398163);
                  v54 = a1[1];
                  v91 = *a1;
                  v92 = v54;
                  v93 = a1[2];
                  v94 = *(a1 + 6);
                  if ((_UIBoundingPathBitmapDataRowHitTest(&v91, llround(v50 + v52 * v53.__cosval), llround(v51 + v52 * v53.__sinval)) & 1) == 0)
                  {
                    return 0;
                  }
                }

                while (++v26 != 8);
              }

              ++v23;
              v11 = v83;
              a7 = v84;
              v24 = v82;
              if (v23 != v22)
              {
                goto LABEL_5;
              }

              goto LABEL_22;
            }
          }
        }
      }
    }
  }
}

double pointOnRectClosestToCorner(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      MinX = CGRectGetMinX(*&a2);
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_8;
      }

      MinX = CGRectGetMaxX(*&a2);
    }

    v14 = MinX;
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMaxY(v17);
    return v14;
  }

  if (a1 == 1)
  {
    MaxX = CGRectGetMinX(*&a2);
    goto LABEL_10;
  }

  if (a1 == 2)
  {
    MaxX = CGRectGetMaxX(*&a2);
LABEL_10:
    v14 = MaxX;
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectGetMinY(v16);
    return v14;
  }

LABEL_8:
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint pointOnRectClosestToCorner(CGRect, UIRectCorner)"}];
  [v12 handleFailureInFunction:v13 file:@"_UIComplexBoundingPath.m" lineNumber:843 description:{@"Invalid UIRectCorner value (%ld)", a1}];

  return *MEMORY[0x1E695EFF8];
}

double _scrollRange(void *a1)
{
  v1 = a1;
  [v1 contentInset];
  v3 = -v2;
  [v1 contentSize];
  [v1 bounds];

  return v3;
}

unint64_t _UIRectCornerConvertedFromOrientationToPortrait(unint64_t result, uint64_t a2)
{
  if (result != -1)
  {
    v2 = (4 * result) & 8 | (2 * (result & 1)) | (result >> 2) & 1 | (result >> 1) & 4;
    v3 = (result >> 1) & 1 | (4 * (result & 1)) & 0xF7 | (8 * ((result >> 2) & 1)) | (result >> 2) & 2;
    if (a2 != 4)
    {
      v3 = 0;
    }

    if (a2 != 3)
    {
      v2 = v3;
    }

    v4 = __rbit32(result) >> 28;
    if (a2 != 2)
    {
      v4 = 0;
    }

    if (a2 < 2)
    {
      v4 = result;
    }

    if (a2 <= 2)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

void _UIAspectRatioConvertedFromOrientationToPortrait(double a1)
{
  if (a1 == 0.0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UIAspectRatioConvertedFromOrientationToPortrait(CGFloat, UIInterfaceOrientation)"}];
    [v1 handleFailureInFunction:v2 file:@"_UIBoundingPath.m" lineNumber:82 description:@"Cannot convert an aspect ratio of zero."];
  }
}

double _UIDirectionVectorForCorner(uint64_t a1)
{
  result = 1.0;
  if (a1 > 3)
  {
    if (a1 != 8)
    {
      if (a1 == 4)
      {
        return result;
      }

      goto LABEL_7;
    }

    return -1.0;
  }

  else if (a1 != 1)
  {
    if (a1 == 2)
    {
      return -1.0;
    }

LABEL_7:
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGVector _UIDirectionVectorForCorner(const UIRectCorner)"];
    [v3 handleFailureInFunction:v4 file:@"_UIBoundingPath.m" lineNumber:150 description:{@"Invalid UIRectCorner value (%ld)", a1}];

    return 0.0;
  }

  return result;
}

void _UIBoundingPathLargestInscribedRectWithAspectRatioAndCenter(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  v14.x = a6;
  v14.y = a7;
  if (CGRectContainsPoint(v15, v14))
  {
    if (a1 <= 0.0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIBoundingPathLargestInscribedRectWithAspectRatioAndCenter(const CGFloat, const CGRect, const CGPoint)"}];
      [v12 handleFailureInFunction:v13 file:@"_UIBoundingPath.m" lineNumber:279 description:@"Invalid aspect ratio."];
    }

    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectGetMinX(v16);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetMaxY(v19);
  }
}

uint64_t _UIComputeSkipRegionForBoundingPathData(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v7 = 0;
    v8 = 1;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = v7;
    goto LABEL_22;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = a2;
  do
  {
    if (a1)
    {
      v11 = 0;
      do
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v7;
        }

        else
        {
          v12 = v10;
        }

        v13 = v6 - v12;
        if ((v8 & 1) == 0)
        {
          v12 = v10;
          v13 = v9;
        }

        if (v6 != v7)
        {
          v10 = v12;
          v9 = v13;
          v8 = 1;
        }

        if ((v5[2](v5, v11, v6) & 1) == 0)
        {
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_27;
          }

          v8 = 0;
        }

        ++v11;
        v7 = v6;
      }

      while (a1 != v11);
      v7 = v6;
      a2 = v17;
    }

    ++v6;
  }

  while (v6 != a2);
  v14 = v10;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

LABEL_22:
  v15 = a2 - v14;
  if ((v8 & 1) == 0)
  {
    v14 = v10;
    v15 = v9;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = v14;
  }

LABEL_27:

  return v10;
}

void _UICreateBoundingPathBitmapData(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unint64_t *a6@<X8>)
{
  v9 = a5;
  v47 = v9;
  if (a1 < 1 || a2 < 1)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapData _UICreateBoundingPathBitmapData(const _UIIntegralSize, const _UIBoundingPathBitmapDataSkipRegion, BOOL (^__strong _Nonnull)(_UIIntegralPoint))"}];
    [v35 handleFailureInFunction:v36 file:@"_UIBoundingPathBitmapData.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"size.width > 0 && size.height > 0"}];

    v37 = v47;
    if (!a2)
    {
      v11 = 0;
      v13 = v47;
      goto LABEL_19;
    }
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  v12 = 0;
  v13 = v47;
  do
  {
    if (v12 < a3 || v12 >= a3 + a4)
    {
      v14 = v11;
      v15 = 0;
      if (a1)
      {
        v16 = 0;
        do
        {
          v17 = (v13)[2](v47, v16, v12);
          v13 = v47;
          if (++v16 < a1)
          {
            while (v17 == v13[2](v13, v16, v12))
            {
              ++v16;
              v13 = v47;
              if (a1 == v16)
              {
                ++v15;
                goto LABEL_15;
              }
            }

            v13 = v47;
          }

          ++v15;
        }

        while (v16 < a1);
      }

LABEL_15:
      if (v15 <= v14)
      {
        v11 = v14;
      }

      else
      {
        v11 = v15;
      }
    }

    ++v12;
  }

  while (v12 != a2);
LABEL_19:

  v38 = v11 * (a2 - a4);
  v40 = malloc_type_calloc(v38, 2uLL, 0x1000040BDFB0063uLL);
  if (!v40)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapData _UICreateBoundingPathBitmapData(const _UIIntegralSize, const _UIBoundingPathBitmapDataSkipRegion, BOOL (^__strong _Nonnull)(_UIIntegralPoint))"}];
    [v33 handleFailureInFunction:v34 file:@"_UIBoundingPathBitmapData.m" lineNumber:107 description:@"Failed to allocate memory for storing the bitmap data."];
  }

  v18 = v47;
  if (a2)
  {
    v19 = 0;
    v43 = a3;
    v44 = a3 + a4;
    v45 = -a1;
    v42 = a2;
    v46 = a1;
    do
    {
      if ((v19 >= v44 || v19 < a3) && a1 != 0)
      {
        v22 = 0;
        v23 = 0;
        v24 = a4;
        if (v19 < v44)
        {
          v24 = 0;
        }

        v25 = &v40[2 * (v19 - v24) * v11];
        do
        {
          if (v22 >= v11)
          {
            v29 = [MEMORY[0x1E696AAA8] currentHandler];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapData _UICreateBoundingPathBitmapData(const _UIIntegralSize, const _UIBoundingPathBitmapDataSkipRegion, BOOL (^__strong _Nonnull)(_UIIntegralPoint))"}];
            [v29 handleFailureInFunction:v30 file:@"_UIBoundingPathBitmapData.m" lineNumber:127 description:@"maximumNodesPerRow was computed incorrectly (too small)"];

            v18 = v47;
          }

          v26 = v18[2](v18, v23, v19);
          if (v23 + 1 >= a1)
          {
            ++v23;
            LOWORD(v27) = 1;
            v18 = v47;
          }

          else
          {
            v27 = 1;
            while (v26 == (*(v47 + 2))(v47, v23 + v27, v19))
            {
              ++v27;
              if (!(v45 + v23 + v27))
              {
                v27 = a1 - v23;
                v23 = v46;
                goto LABEL_45;
              }
            }

            v23 += v27;
LABEL_45:
            if (v27 >= 0x8000)
            {
              v31 = [MEMORY[0x1E696AAA8] currentHandler];
              v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataNode _UIBoundingPathBitmapDataNodeMake(BOOL, size_t)"}];
              [v31 handleFailureInFunction:v32 file:@"_UIBoundingPathBitmapData.h" lineNumber:105 description:{@"columns value %lu is too large to be stored in available space", v27}];
            }

            a1 = v46;
            v18 = v47;
          }

          v28 = v27 | 0x8000;
          if (!v26)
          {
            v28 = v27;
          }

          *&v25[2 * v22++] = v28;
        }

        while (v23 < a1);
      }

      ++v19;
      a2 = v42;
      a3 = v43;
    }

    while (v19 != v42);
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = v38;
  a6[5] = v11;
  a6[6] = v40;
}

void _createRowsNodes(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;
  if (!a5)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _createRowsNodes(const _UIBoundingPathBitmapData, const _UIBoundingPathBitmapDataRoundRect, const size_t, const size_t, _UIBoundingPathBitmapData *)"}];
    [v44 handleFailureInFunction:v45 file:@"_UIBoundingPathBitmapData.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"outBitmapData != NULL"}];
  }

  v10 = *v5;
  v9 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v14 = v5[4];
  v13 = v5[5];
  v15 = malloc_type_calloc(v14, 2uLL, 0x1000040BDFB0063uLL);
  v55 = v15;
  v56 = v12;
  if (!v15)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v46 = v52 = v9;
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _createRowsNodes(const _UIBoundingPathBitmapData, const _UIBoundingPathBitmapDataRoundRect, const size_t, const size_t, _UIBoundingPathBitmapData *)"}];
    v48 = v47 = a1;
    [v46 handleFailureInFunction:v48 file:@"_UIBoundingPathBitmapData.m" lineNumber:235 description:@"Failed to allocate memory to store rows for new bitmap data"];

    a1 = v47;
    v12 = v56;

    v15 = 0;
    v9 = v52;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___createRowsNodes_block_invoke;
  aBlock[3] = &__block_descriptor_384_e11_Q24__0Q8Q16l;
  aBlock[4] = v9;
  aBlock[5] = v11;
  aBlock[6] = v12;
  v54 = v13;
  aBlock[7] = v13;
  v16 = a2[11];
  v95 = a2[10];
  v96 = v16;
  v17 = a2[13];
  v97 = a2[12];
  v98 = v17;
  v18 = a2[7];
  v91 = a2[6];
  v92 = v18;
  v19 = a2[9];
  v93 = a2[8];
  v94 = v19;
  v20 = a2[3];
  v87 = a2[2];
  v88 = v20;
  v21 = a2[5];
  v89 = a2[4];
  v90 = v21;
  v22 = a2[1];
  v85 = *a2;
  v86 = v22;
  v23 = a1[1];
  v99 = *a1;
  v100 = v23;
  v101 = a1[2];
  v53 = a1;
  v102 = *(a1 + 6);
  v103 = v14;
  v104 = v15;
  v105 = v10;
  v106 = a3;
  v24 = a4;
  v107 = a4;
  v25 = _Block_copy(aBlock);
  if (v14 >> 6 <= 0x7C)
  {
    v80 = 0;
    v81 = &v80;
    v82 = 0x2020000000;
    v83 = 0;
  }

  else
  {
    [MEMORY[0x1E696AE30] processInfo];
    v26 = v51 = v9;
    v27 = [v26 activeProcessorCount];

    v9 = v51;
    v80 = 0;
    v81 = &v80;
    if (v27 >= v14 / 0xFA0)
    {
      v28 = v14 / 0xFA0;
    }

    else
    {
      v28 = v27;
    }

    v82 = 0x2020000000;
    v83 = 0;
    if (v28 > 1)
    {
      v49 = a3;
      v50 = v5;
      *&v58 = 0;
      *(&v58 + 1) = &v58;
      *&v59 = 0x2810000000;
      *(&v59 + 1) = "";
      LODWORD(v60) = 0;
      v29 = dispatch_group_create();
      v30 = dispatch_get_global_queue(33, 0);
      v31 = 0;
      v32 = MEMORY[0x1E69E9820];
      do
      {
        block[0] = v32;
        block[1] = 3221225472;
        block[2] = ___createRowsNodes_block_invoke_2;
        block[3] = &unk_1E710C4C8;
        v33 = v25;
        v78 = v31;
        v79 = v28;
        v75 = v33;
        v76 = &v58;
        v77 = &v80;
        dispatch_group_async(v29, v30, block);

        ++v31;
      }

      while (v28 != v31);
      dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

      _Block_object_dispose(&v58, 8);
      v34 = v81[3];
      a3 = v49;
      v5 = v50;
      v24 = a4;
      v9 = v51;
      goto LABEL_15;
    }
  }

  v34 = (*(v25 + 2))(v25, 0, 1);
  v81[3] = v34;
LABEL_15:
  if (v34 <= v54)
  {
    v5[6] = v55;
  }

  else
  {
    free(v55);
    v35 = v81[3];
    v5[4] = v35 * (v9 - v56);
    v5[5] = v35;
    v36 = v53[1];
    v72[0] = *v53;
    v72[1] = v36;
    v72[2] = v53[2];
    v73 = *(v53 + 6);
    v37 = a2[11];
    v68 = a2[10];
    v69 = v37;
    v38 = a2[13];
    v70 = a2[12];
    v71 = v38;
    v39 = a2[7];
    v64 = a2[6];
    v65 = v39;
    v40 = a2[9];
    v66 = a2[8];
    v67 = v40;
    v41 = a2[3];
    v60 = a2[2];
    v61 = v41;
    v42 = a2[5];
    v62 = a2[4];
    v63 = v42;
    v43 = a2[1];
    v58 = *a2;
    v59 = v43;
    _createRowsNodes(v72, &v58, a3, v24, v5);
  }

  _Block_object_dispose(&v80, 8);
}

void _UIBoundingPathBitmapDataAssertValid(__int128 *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
    [v31 handleFailureInFunction:v32 file:@"_UIBoundingPathBitmapData.m" lineNumber:508 description:{@"Invalid parameter not satisfying: %@", @"extraInfoString != NULL"}];

    v3 = 0;
  }

  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v4 + v5;
  if (v5 >= v6 && v4 != 0)
  {
    v61 = v3;
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
    v35 = (*(v61 + 2))(v61);
    v36 = a1[1];
    v65 = *a1;
    v66 = v36;
    v67 = a1[2];
    v68 = *(a1 + 6);
    v37 = _UIBoundingPathBitmapDataDescription(&v65);
    [v33 handleFailureInFunction:v34 file:@"_UIBoundingPathBitmapData.m" lineNumber:513 description:{@"UIKit internal inconsistency: skip region minY %lu out of bounds. %@ %@", v5, v35, v37}];

    v3 = v61;
    v6 = *(a1 + 1);
  }

  if (v7 > v6)
  {
    v62 = v3;
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
    v40 = (*(v62 + 2))(v62);
    v41 = a1[1];
    v65 = *a1;
    v66 = v41;
    v67 = a1[2];
    v68 = *(a1 + 6);
    v42 = _UIBoundingPathBitmapDataDescription(&v65);
    [v38 handleFailureInFunction:v39 file:@"_UIBoundingPathBitmapData.m" lineNumber:514 description:{@"UIKit internal inconsistency: skip region maxY %lu out of bounds. %@ %@", v7, v40, v42}];

    v3 = v62;
  }

  v9 = *(a1 + 4);
  if (v9)
  {
    v10 = *(a1 + 5);
    if (!v10)
    {
      v63 = v3;
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
      v45 = (*(v63 + 2))(v63);
      v46 = a1[1];
      v65 = *a1;
      v66 = v46;
      v67 = a1[2];
      v68 = *(a1 + 6);
      v47 = _UIBoundingPathBitmapDataDescription(&v65);
      [v43 handleFailureInFunction:v44 file:@"_UIBoundingPathBitmapData.m" lineNumber:518 description:{@"UIKit internal inconsistency: maximum nodes per row must be nonzero. %@ %@", v45, v47}];

      v3 = v63;
      v9 = *(a1 + 4);
      v10 = *(a1 + 5);
    }

    v11 = *(a1 + 1);
    v12 = *(a1 + 3);
    v13 = v11 - v12;
    v14 = (v11 - v12) * v10;
    if (v9 != v14)
    {
      v64 = v3;
      v48 = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
      v50 = *(a1 + 4);
      v51 = (*(v64 + 2))(v64);
      v52 = a1[1];
      v65 = *a1;
      v66 = v52;
      v67 = a1[2];
      v68 = *(a1 + 6);
      v53 = _UIBoundingPathBitmapDataDescription(&v65);
      [v48 handleFailureInFunction:v49 file:@"_UIBoundingPathBitmapData.m" lineNumber:520 description:{@"UIKit internal inconsistency: node count %lu does not match expected node count %lu. %@ %@", v50, v14, v51, v53}];

      v3 = v64;
      v11 = *(a1 + 1);
      v12 = *(a1 + 3);
      v13 = v11 - v12;
    }

    if (v11 != v12)
    {
      v15 = 0;
      v16 = 0;
      v17 = v3 + 16;
      v18 = 0x1E696A000uLL;
      do
      {
        v19 = *(a1 + 5);
        if (v19)
        {
          v20 = 0;
          v21 = 0;
          v22 = v19 * v15;
          v23 = v19 * v16;
          do
          {
            if (v21 >= *a1)
            {
              break;
            }

            if (v23 + v20 >= *(a1 + 4))
            {
              v59 = v3;
              v58 = [*(v18 + 2728) currentHandler];
              v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
              (*(v59 + 2))(v59);
              v54 = v56 = v17;
              v24 = a1[1];
              v65 = *a1;
              v66 = v24;
              v67 = a1[2];
              v68 = *(a1 + 6);
              v25 = _UIBoundingPathBitmapDataDescription(&v65);
              [v58 handleFailureInFunction:v55 file:@"_UIBoundingPathBitmapData.m" lineNumber:527 description:{@"UIKit internal inconsistency: node count is invalid. %@ %@", v54, v25}];

              v17 = v56;
              v18 = 0x1E696A000;
              v3 = v59;
              v19 = *(a1 + 5);
            }

            v21 += *(*(a1 + 6) + v22 + 2 * v20++) & 0x7FFF;
          }

          while (v20 < v19);
        }

        else
        {
          v21 = 0;
        }

        if (v21 < *a1)
        {
          v60 = v3;
          v26 = [*(v18 + 2728) currentHandler];
          v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIBoundingPathBitmapDataAssertValid(const _UIBoundingPathBitmapData, NSString *(^__strong _Nonnull)(void))"}];
          (*(v60 + 2))(v60);
          v28 = v57 = v17;
          v29 = a1[1];
          v65 = *a1;
          v66 = v29;
          v67 = a1[2];
          v68 = *(a1 + 6);
          v30 = _UIBoundingPathBitmapDataDescription(&v65);
          [v26 handleFailureInFunction:v27 file:@"_UIBoundingPathBitmapData.m" lineNumber:532 description:{@"UIKit internal inconsistency: rows index %lu contains insufficient columns (%lu). %@ %@", v16, v21, v28, v30}];

          v17 = v57;
          v18 = 0x1E696A000;
          v3 = v60;
        }

        ++v16;
        v15 += 2;
      }

      while (v16 != v13);
    }
  }
}

id _UIBoundingPathBitmapDataDescription(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"<_UIBoundingPathBitmapData width=%lu; height=%lu; skipRegionY=%lu; skipRegionHeight=%lu; nodeCount=%lu; maximumNodesPerRow=%lu>", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]];
  [v2 appendString:@" Bitmap data:\n[\n"];
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    for (i = 0; i < v3; ++i)
    {
      v6 = a1[2];
      if (i < v6 || i >= a1[3] + v6)
      {
        [v2 appendString:@"    [ "];
        if (i >= a1[3] + a1[2])
        {
          v9 = a1[3];
        }

        else
        {
          v9 = 0;
        }

        v10 = a1[5];
        if (v10)
        {
          v11 = 0;
          v12 = v10 * (i - v9);
          do
          {
            if (v12 + v11 >= a1[4])
            {
              v17 = [MEMORY[0x1E696AAA8] currentHandler];
              v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _UIBoundingPathBitmapDataDescription(const _UIBoundingPathBitmapData)"];
              [v17 handleFailureInFunction:v16 file:@"_UIBoundingPathBitmapData.m" lineNumber:566 description:{@"Out of bounds rows memory read: %@", v2}];
            }

            v13 = *(a1[6] + 2 * v12 + 2 * v11);
            if ((v13 & 0x7FFF) != 0)
            {
              [v2 appendFormat:@"{ %u, %u}", v13 >> 15, v13 & 0x7FFF];
            }

            else
            {
              [v2 appendString:@"NULL"];
            }

            v14 = a1[5];
            if (v11 < v14 - 1)
            {
              [v2 appendString:{@", "}];
              v14 = a1[5];
            }

            ++v11;
          }

          while (v11 < v14);
        }

        [v2 appendString:@" ]"];
        if (i < a1[1] - 1)
        {
          [v2 appendString:{@", "}];
        }

        v8 = @"\n";
        v7 = v4;
      }

      else
      {
        v7 = 1;
        v8 = @"    <<< SKIP REGION >>>\n";
        if (v4)
        {
          goto LABEL_24;
        }
      }

      [v2 appendString:v8];
      v3 = a1[1];
LABEL_24:
      v4 = v7;
    }
  }

  [v2 appendString:@"]"];

  return v2;
}

id _UIBoundingPathBitmapDataImageRepresentation(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [(UIGraphicsImageRendererFormat *)v4 setScale:1.0];
  [(UIGraphicsImageRendererFormat *)v4 setOpaque:1];
  [(UIGraphicsImageRendererFormat *)v4 setPreferredRange:2];
  v5 = [[UIGraphicsImageRenderer alloc] initWithSize:v4 format:v2, v3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UIBoundingPathBitmapDataImageRepresentation_block_invoke;
  v9[3] = &__block_descriptor_88_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v6 = *(a1 + 1);
  v10 = *a1;
  v11 = v6;
  v12 = *(a1 + 2);
  v13 = a1[6];
  v7 = [(UIGraphicsImageRenderer *)v5 imageWithActions:v9];

  return v7;
}

unint64_t ___createRowsNodes_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) > a2)
  {
    v115 = v3;
    v116 = v4;
    v5 = a3;
    v6 = a2;
    result = 0;
    v9 = a2 - a3;
    v90 = a2 - a3;
    while (1)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = v10 + v11;
      if (v6 >= v11 && v6 < v12)
      {
        v6 = v9 + v11 + v10;
        goto LABEL_80;
      }

      if (v6 < v12)
      {
        v10 = 0;
      }

      v14 = *(a1 + 56);
      v100 = v14 * (v6 - v10);
      v15 = *(a1 + 72) + v6;
      if ((v15 & 0x8000000000000000) != 0 || v15 >= *(a1 + 296))
      {
        result = _insertRowsNodeIfPossible(result, v14, *(a1 + 344), *(a1 + 352), v100, 0, 0, *(a1 + 360));
        goto LABEL_80;
      }

      v16 = result;
      v17 = v15 >= *(a1 + 312) + *(a1 + 304) ? *(a1 + 312) : 0;
      v18 = *(a1 + 240);
      v111 = *(a1 + 224);
      v112 = v18;
      v19 = *(a1 + 272);
      v113 = *(a1 + 256);
      v114 = v19;
      v20 = *(a1 + 176);
      v107 = *(a1 + 160);
      v108 = v20;
      v21 = *(a1 + 208);
      v109 = *(a1 + 192);
      v110 = v21;
      v22 = *(a1 + 112);
      v103 = *(a1 + 96);
      v104 = v22;
      v23 = *(a1 + 144);
      v105 = *(a1 + 128);
      v106 = v23;
      v24 = *(a1 + 80);
      v101 = *(a1 + 64);
      v102 = v24;
      MinXForY = _UIBoundingPathBitmapDataRoundRectGetMinXForY(&v101, v15);
      v25 = *(a1 + 240);
      v111 = *(a1 + 224);
      v112 = v25;
      v26 = *(a1 + 272);
      v113 = *(a1 + 256);
      v114 = v26;
      v27 = *(a1 + 176);
      v107 = *(a1 + 160);
      v108 = v27;
      v28 = *(a1 + 208);
      v109 = *(a1 + 192);
      v110 = v28;
      v29 = *(a1 + 112);
      v103 = *(a1 + 96);
      v104 = v29;
      v30 = *(a1 + 144);
      v105 = *(a1 + 128);
      v106 = v30;
      v31 = *(a1 + 80);
      v101 = *(a1 + 64);
      v102 = v31;
      MaxXForY = _UIBoundingPathBitmapDataRoundRectGetMaxXForY(&v101, v15);
      v33 = *(a1 + 304);
      v34 = v15 >= v33 && v15 < *(a1 + 312) + v33;
      result = v16;
      if (*(a1 + 360))
      {
        break;
      }

LABEL_80:
      v6 += v5;
      if (v6 >= *(a1 + 32))
      {
        return result;
      }
    }

    v92 = v6;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(a1 + 64);
    v98 = MaxXForY;
    v99 = MinXForY - v39;
    v94 = v39 - MaxXForY + *(a1 + 80);
    v40 = *(a1 + 328) * (v15 - v17);
    v41 = 2 * v40;
    v97 = v34;
    v95 = 2 * v40;
    v96 = v40;
    while (1)
    {
      v42 = *(a1 + 64) + v38;
      if (v42 > MaxXForY)
      {
        v43 = 1;
        v44 = v94;
        goto LABEL_34;
      }

      if (v34)
      {
        if (!v35)
        {
          v44 = *(a1 + 288);
          v43 = v44 + v36 > v42;
          goto LABEL_34;
        }
      }

      else if (v35 < *(a1 + 328))
      {
        while (1)
        {
          if (v40 + v35 >= *(a1 + 320))
          {
            v46 = result;
            v47 = v38;
            v48 = v37;
            v49 = v42;
            v50 = [MEMORY[0x1E696AAA8] currentHandler];
            v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _createRowsNodes(const _UIBoundingPathBitmapData, const _UIBoundingPathBitmapDataRoundRect, const size_t, const size_t, _UIBoundingPathBitmapData *)_block_invoke"}];
            [v50 handleFailureInFunction:v51 file:@"_UIBoundingPathBitmapData.m" lineNumber:312 description:@"Out of bounds source rows memory read."];

            v42 = v49;
            v41 = v95;
            v40 = v96;
            v37 = v48;
            v38 = v47;
            v34 = v97;
            MaxXForY = v98;
            result = v46;
          }

          v44 = *(*(a1 + 336) + v41 + 2 * v35) & 0x7FFF;
          if ((*(*(a1 + 336) + v41 + 2 * v35) & 0x7FFF) == 0)
          {
            break;
          }

          v45 = v36 + v44;
          if (v36 + v44 > v42)
          {
            v43 = 1;
            goto LABEL_34;
          }

          ++v35;
          v36 += v44;
          if (v35 >= *(a1 + 328))
          {
            v43 = 0;
            v36 = v45;
            goto LABEL_34;
          }
        }
      }

      v44 = 0;
      v43 = 0;
LABEL_34:
      if (*(a1 + 368) <= v99)
      {
        v52 = v99;
      }

      else
      {
        v52 = *(a1 + 368);
      }

      if (v52)
      {
        v53 = v37 == 0;
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;
      if (!v43 && (v54 & 1) == 0)
      {
        if (*(a1 + 376) <= v94)
        {
          v79 = v94;
        }

        else
        {
          v79 = *(a1 + 376);
        }

        if (v79)
        {
          result = _insertRowsNodeIfPossible(result, *(a1 + 56), *(a1 + 344), *(a1 + 352), v100, v37, 0, v79);
        }

LABEL_79:
        v5 = a3;
        v6 = v92;
        v9 = v90;
        goto LABEL_80;
      }

      v55 = v42 > MaxXForY || !v43;
      if ((v55 | v34))
      {
        v56 = v55 ^ 1;
      }

      else
      {
        v57 = v35 + v40;
        if (v35 + v40 >= *(a1 + 320))
        {
          v86 = v38;
          v89 = result;
          v81 = v42;
          v83 = v37;
          v80 = [MEMORY[0x1E696AAA8] currentHandler];
          v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _createRowsNodes(const _UIBoundingPathBitmapData, const _UIBoundingPathBitmapDataRoundRect, const size_t, const size_t, _UIBoundingPathBitmapData *)_block_invoke"}];
          [v80 handleFailureInFunction:? file:? lineNumber:? description:?];

          v42 = v81;
          v37 = v83;
          v41 = v95;
          v40 = v96;
          v38 = v86;
          result = v89;
          v34 = v97;
          MaxXForY = v98;
        }

        v56 = *(*(a1 + 336) + 2 * v57) < 0;
      }

      v58 = v36;
      v59 = v44;
      if (!v54)
      {
        goto LABEL_59;
      }

      if (((!v43 | v56) & 1) == 0)
      {
        v61 = MinXForY - (v36 + v44);
        if (MinXForY <= (v36 + v44))
        {
          v61 = 0;
        }

        v62 = *(a1 + 368);
        v58 = v36 - v62;
        v59 = v61 + v44 + v62;
LABEL_59:
        if (!v43)
        {
          v84 = v38;
          v87 = result;
          v82 = v37;
          v69 = v42;
          v70 = v56;
          v71 = [MEMORY[0x1E696AAA8] currentHandler];
          v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _createRowsNodes(const _UIBoundingPathBitmapData, const _UIBoundingPathBitmapDataRoundRect, const size_t, const size_t, _UIBoundingPathBitmapData *)_block_invoke"}];
          [v71 handleFailureInFunction:v72 file:@"_UIBoundingPathBitmapData.m" lineNumber:386 description:@"Should always have found a source node to copy data from at this point."];

          v56 = v70;
          v42 = v69;
          v41 = v95;
          v40 = v96;
          v37 = v82;
          v38 = v84;
          v34 = v97;
          MaxXForY = v98;
          result = v87;
        }

        v63 = MaxXForY;
        if ((v56 & 1) == 0)
        {
          v63 = *(a1 + 80) + *(a1 + 64);
        }

        if ((v59 + v58) >= v63)
        {
          v64 = v63;
        }

        else
        {
          v64 = v59 + v58;
        }

        if (v64 < v42)
        {
          v85 = v38;
          v88 = result;
          v73 = v37;
          v74 = v42;
          v75 = v56;
          v76 = [MEMORY[0x1E696AAA8] currentHandler];
          v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _createRowsNodes(const _UIBoundingPathBitmapData, const _UIBoundingPathBitmapDataRoundRect, const size_t, const size_t, _UIBoundingPathBitmapData *)_block_invoke"}];
          [v76 handleFailureInFunction:v77 file:@"_UIBoundingPathBitmapData.m" lineNumber:396 description:@"Source node contains fewer columns than required."];

          v56 = v75;
          v42 = v74;
          v41 = v95;
          v40 = v96;
          v37 = v73;
          v38 = v85;
          result = v88;
          v34 = v97;
          MaxXForY = v98;
        }

        v65 = v64 - v42;
        if (v64 != v42)
        {
          v66 = v37;
          v67 = v64 - v42;
          v68 = v38;
          result = _insertRowsNodeIfPossible(result, *(a1 + 56), *(a1 + 344), *(a1 + 352), v100, v37, v56, v67);
          v41 = v95;
          v40 = v96;
          v34 = v97;
          MaxXForY = v98;
          v37 = v66 + 1;
          v38 = v65 + v68;
        }

        ++v35;
        v36 += v44;
        goto LABEL_71;
      }

      v60 = v38;
      result = _insertRowsNodeIfPossible(result, *(a1 + 56), *(a1 + 344), *(a1 + 352), v100, 0, 0, v52);
      v41 = v95;
      v40 = v96;
      v34 = v97;
      MaxXForY = v98;
      v36 = 0;
      v35 = 0;
      v38 = v52 + v60;
      v37 = 1;
LABEL_71:
      if (v38 >= *(a1 + 360))
      {
        goto LABEL_79;
      }
    }
  }

  return 0;
}

unint64_t _insertRowsNodeIfPossible(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  if (a6 + 1 > a1)
  {
    v8 = a6 + 1;
  }

  else
  {
    v8 = a1;
  }

  if (v8 <= a2)
  {
    v12 = a6 + a5;
    if (a6 + a5 >= a3)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"size_t _insertRowsNodeIfPossible(size_t, size_t, size_t, _UIBoundingPathBitmapDataNode *, size_t, size_t, BOOL, size_t)"}];
      [v15 handleFailureInFunction:v16 file:@"_UIBoundingPathBitmapData.m" lineNumber:199 description:@"Out of bounds rows memory read."];
    }

    if (a8 >= 0x8000)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataNode _UIBoundingPathBitmapDataNodeMake(BOOL, size_t)"}];
      [v17 handleFailureInFunction:v18 file:@"_UIBoundingPathBitmapData.h" lineNumber:105 description:{@"columns value %lu is too large to be stored in available space", a8}];
    }

    v13 = a8 | 0x8000;
    if (!a7)
    {
      v13 = a8;
    }

    *(a4 + 2 * v12) = v13;
  }

  return v8;
}

void ___createRowsNodes_block_invoke_2(void *a1)
{
  v2 = (*(a1[4] + 16))();
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 24);
  if (v4 <= v2)
  {
    v4 = v2;
  }

  *(v3 + 24) = v4;
  v5 = (*(a1[5] + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void _UIBoundingPathBitmapDataCreateReferenceCornerWithRadius(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = vcvtpd_s64_f64(a1 * 1.528665);
  if (v4 >= 0x10000)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _UIBoundingPathBitmapDataCreateReferenceCornerWithRadius(const NSInteger)"];
    [v16 handleFailureInFunction:v17 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:123 description:@"Corner edge positions will be too large to be stored in available space"];
  }

  v26 = [UIBezierPath _continuousRoundedRectBezierPath:1 withRoundedCorners:16 cornerRadius:0.0 segments:0.0, v4, v4, v3, v3];
  v5 = malloc_type_calloc(v4 * v4, 1uLL, 0x100004077774924uLL);
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _UIBoundingPathBitmapDataCreateReferenceCornerWithRadius(const NSInteger)"];
    [v18 handleFailureInFunction:v19 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:136 description:@"Failed to allocate memory for rendering the bitmap data corner."];

    v5 = 0;
  }

  v25 = v5;
  v6 = CGBitmapContextCreate(v5, v4, v4, 8uLL, v4, 0, 7u);
  CGContextTranslateCTM(v6, 0.0, v4);
  CGContextScaleCTM(v6, 1.0, -1.0);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v4;
  v28.size.height = v4;
  CGContextClearRect(v6, v28);
  CGContextAddPath(v6, [v26 CGPath]);
  CGContextFillPath(v6);
  CGContextRelease(v6);
  v7 = malloc_type_malloc(v4 << (v4 > 0xFF), 0x93967AF7uLL);
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIBoundingPathBitmapDataCorner _UIBoundingPathBitmapDataCreateReferenceCornerWithRadius(const NSInteger)"];
    [v20 handleFailureInFunction:v21 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:154 description:@"Failed to allocate memory for storing the corner edge positions."];
  }

  v8 = v4 - 1;
  v9 = v25;
  if ((v4 - 1) >= 0)
  {
    v10 = 0;
    v11 = v4 * v8;
    v12 = &v25[v4 * v8];
    v13 = 0x1E696A000uLL;
    v14 = v4 - 1;
    do
    {
      if (v10 < v8)
      {
        while (1)
        {
          if (v11 + v10 >= v4 * v4)
          {
            v23 = [*(v13 + 2728) currentHandler];
            v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _referenceCornerByteDataContainsCornerPoint(UInt8 *const, const size_t, const size_t, const _UIIntegralPoint)"}];
            [v23 handleFailureInFunction:v22 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:113 description:@"Attempt to access out of bounds index in corner byte data"];

            v13 = 0x1E696A000;
            v9 = v25;
          }

          if (v12[v10] > 0x7Eu)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v10 = v4 - 1;
            break;
          }
        }
      }

      if (v4 < 0x100)
      {
        v7[v14] = v10;
      }

      else
      {
        *&v7[2 * v14] = v10;
      }

      v12 -= v4;
      v11 -= v4;
    }

    while (v14-- > 0);
  }

  free(v9);
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v4 > 0xFF;
  *(a2 + 32) = v7;
  *(a2 + 40) = v7;
}

unint64_t _UIBoundingPathBitmapDataRoundRectGetMinXForY(uint64_t a1, uint64_t a2)
{
  v4 = a2 - *(a1 + 8);
  if (v4 < 0 || v4 >= *(a1 + 24))
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIBoundingPathBitmapDataRoundRectGetMinXForY(const _UIBoundingPathBitmapDataRoundRect, const NSInteger)"}];
    [v11 handleFailureInFunction:v12 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:257 description:{@"Attempted to get MinX of rect {x=%ld, y=%ld, width=%ld, height=%ld} for out of bounds y value %ld", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2}];
  }

  if (v4 < *(a1 + 48))
  {
    v5 = *(a1 + 48);
    v13 = *(a1 + 32);
    *v14 = v5;
    *&v14[16] = *(a1 + 64);
    v6 = v4;
LABEL_8:
    v9 = _cornerCurveDistanceFromLeftEdgeAtRow(&v13, v6);
    return *a1 + v9;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 96);
  if (v4 >= (v7 - v8))
  {
    v13 = *(a1 + 80);
    *&v14[8] = *(a1 + 104);
    *&v14[24] = *(a1 + 120);
    *v14 = v8;
    v6 = v4 - v7 + v8;
    goto LABEL_8;
  }

  v9 = 0;
  return *a1 + v9;
}

unint64_t _cornerCurveDistanceFromLeftEdgeAtRow(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a1[2];
  if (v5 <= a2)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIIntegralPoint _UIBoundingPathBitmapDataReferenceCornerPointForPointInCorner(const _UIIntegralPoint, const _UIBoundingPathBitmapDataCornerLocation, const size_t)"}];
    [v17 handleFailureInFunction:v18 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"cornerPoint.x < cornerSize && cornerPoint.y < cornerSize"}];
  }

  v6 = v5 - 1 - v2;
  v7 = v5 + ~v2;
  if (v4 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  if (v4 != 1)
  {
    v7 = 0;
  }

  if (v4 == 2)
  {
    v7 = v5 - 1;
  }

  else
  {
    v6 = v8;
  }

  v9 = v4 == 3;
  if (v4 == 3)
  {
    v10 = v5 - 1;
  }

  else
  {
    v10 = v6;
  }

  if (!v9)
  {
    v2 = v7;
  }

  if ((*a1 | 2) != 3)
  {
    v13 = *(a1 + 24);
    v14 = a1[4];
    if ((v10 & 0x8000000000000000) != 0 || a1[2] <= v10)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIBoundingPathBitmapDataCornerGetReferenceEdgePositionForRow(_UIBoundingPathBitmapDataCorner, NSInteger)"}];
      [v19 handleFailureInFunction:v20 file:@"_UIBoundingPathBitmapDataCorner.h" lineNumber:56 description:{@"Attempt to get edge position for out of bounds row %ld", v10}];

      if (v13)
      {
        goto LABEL_24;
      }
    }

    else if (a1[3])
    {
LABEL_24:
      v2 = *(v14 + 2 * v10);
      goto LABEL_29;
    }

    v2 = *(v14 + v10);
    goto LABEL_29;
  }

  v11 = *(a1 + 24);
  v12 = a1[5];
  if ((v2 & 0x8000000000000000) != 0 || a1[2] <= v2)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIBoundingPathBitmapDataCornerGetReferenceEdgePositionForCol(_UIBoundingPathBitmapDataCorner, NSInteger)"}];
    [v15 handleFailureInFunction:v16 file:@"_UIBoundingPathBitmapDataCorner.h" lineNumber:66 description:{@"Attempt to get edge position for out of bounds col %ld", v2}];

    if (v11)
    {
      goto LABEL_20;
    }

LABEL_26:
    v10 = *(v12 + v2);
    goto LABEL_29;
  }

  if ((a1[3] & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v10 = *(v12 + 2 * v2);
LABEL_29:
  v21 = *a1;
  v22 = a1[2];
  if (v2 >= v22 || v10 >= v22)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIIntegralPoint _UIBoundingPathBitmapDataCornerPointForPointInReferenceCorner(const _UIIntegralPoint, const _UIBoundingPathBitmapDataCornerLocation, const size_t)"}];
    [v27 handleFailureInFunction:v28 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"referencePoint.x < cornerSize && referencePoint.y < cornerSize"}];
  }

  switch(v21)
  {
    case 3:
      v23 = ~v10;
      goto LABEL_37;
    case 2:
      v23 = ~v2;
LABEL_37:
      v2 = v22 + v23;
      break;
    case 1:
      v2 = v10;
      break;
  }

  if ((v2 & 0x8000000000000000) != 0 || v2 >= a1[2])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _cornerCurveDistanceFromLeftEdgeAtRow(const _UIBoundingPathBitmapDataCorner, const NSInteger)"}];
    [v25 handleFailureInFunction:v26 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:250 description:{@"The corner curve distance from the left edge (%ld) must be at least zero and less than the corner size (%ld).", v2, a1[2]}];
  }

  return v2;
}

unint64_t _UIBoundingPathBitmapDataRoundRectGetMaxXForY(uint64_t a1, uint64_t a2)
{
  v4 = a2 - *(a1 + 8);
  if (v4 < 0 || v4 >= *(a1 + 24))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIBoundingPathBitmapDataRoundRectGetMaxXForY(const _UIBoundingPathBitmapDataRoundRect, const NSInteger)"}];
    [v10 handleFailureInFunction:v11 file:@"_UIBoundingPathBitmapDataCorner.m" lineNumber:283 description:{@"Attempted to get MaxX of rect {x=%ld, y=%ld, width=%ld, height=%ld} for out of bounds y value %ld", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2}];
  }

  v5 = *(a1 + 192);
  if (v4 < v5)
  {
    v12 = *(a1 + 176);
    v14 = *(a1 + 200);
    v15 = *(a1 + 216);
    v13 = v5;
    v6 = v4;
LABEL_8:
    v8 = _cornerCurveDistanceFromLeftEdgeAtRow(&v12, v6) - v5 + 1;
    return *a1 + v8 + *(a1 + 16);
  }

  v7 = *(a1 + 24);
  v5 = *(a1 + 144);
  if (v4 >= v7 - v5)
  {
    v12 = *(a1 + 128);
    v14 = *(a1 + 152);
    v15 = *(a1 + 168);
    v13 = v5;
    v6 = v4 - v7 + v5;
    goto LABEL_8;
  }

  v8 = 0;
  return *a1 + v8 + *(a1 + 16);
}

void *_allocateHostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray(const void *a1, uint64_t a2, char a3)
{
  v4 = a2 << a3;
  v5 = malloc_type_malloc(a2 << a3, 0xFB46E079uLL);
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *_allocateHostReferenceEdgePositionsFromDecodedStandardizedEndiannessByteArray(const uint8_t *, const size_t, const BOOL)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:66 description:@"Failed to allocate memory for storing the bitmap data corner edge positions."];
  }

  return memcpy(v5, a1, v4);
}

void *_allocateStandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions(const void *a1, uint64_t a2, char a3)
{
  v4 = a2 << a3;
  v5 = malloc_type_malloc(a2 << a3, 0x5BC20B47uLL);
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint8_t *_allocateStandardizedEndiannessByteArrayForEncodingHostReferenceEdgePositions(const void *, const size_t, const BOOL)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIBoundingPathBitmapDataCornerCache.m" lineNumber:48 description:@"Failed to allocate memory for encoding the bitmap data corner edge positions."];
  }

  return memcpy(v5, a1, v4);
}

void sub_1899D059C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899D1BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899D1CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

Class __getIATextInputActionsAnalyticsClass_block_invoke(uint64_t a1)
{
  InputAnalyticsLibraryCore_0();
  result = objc_getClass("IATextInputActionsAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIATextInputActionsAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getIATextInputActionsInputModeClass_block_invoke(uint64_t a1)
{
  InputAnalyticsLibraryCore_0();
  result = objc_getClass("IATextInputActionsInputMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49E6F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49E708 = result;
  return result;
}

__CFString *StringForAlignment(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%li)", a1];
  }

  else
  {
    v2 = off_1E710CA10[a1];
  }

  return v2;
}

__CFString *StringForContentSize(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%li)", a1];
  }

  else
  {
    v2 = off_1E710CA30[a1];
  }

  return v2;
}

void sub_1899D8FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

void sub_1899DA11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1899DA35C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1899DAB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __addItemsFromBarForMode(void *a1, void *a2, uint64_t a3)
{
  v9 = a1;
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if (a3 == 2)
    {
      if (![v5 hasAlwaysOverflowGroups])
      {
        v7 = [v6 elementsRepresentingOrderedGroups];
        goto LABEL_8;
      }
    }

    else if (a3 != 1)
    {
      goto LABEL_9;
    }

    v7 = [v6 elementsForOverflowMenu];
LABEL_8:
    v8 = v7;
    [v9 addObjectsFromArray:v7];
  }

LABEL_9:
}

void sub_1899DB794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1899DEC28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id getSBSKeyboardFocusServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED49E730;
  v7 = qword_1ED49E730;
  if (!qword_1ED49E730)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSBSKeyboardFocusServiceClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSBSKeyboardFocusServiceClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1899DED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899DF384(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED49E738 = result;
  return result;
}

id _UISceneDestructionConditionsSetFromSuperSet(void *a1)
{
  v1 = MEMORY[0x1E695DFA8];
  v2 = a1;
  v3 = [v1 setWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UISceneDestructionConditionsSetFromSuperSet_block_invoke;
  v6[3] = &unk_1E710CA98;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void sub_1899E0AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1899E0E14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1899E10F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t UIViewGlassGetLegibilitySetting()
{
  if (UIViewGlassGetLegibilitySetting_onceToken != -1)
  {
    dispatch_once(&UIViewGlassGetLegibilitySetting_onceToken, &__block_literal_global_316);
  }

  result = _UIViewGlassLegibilityCachedSetting;
  if (_UIViewGlassLegibilityCachedSetting == -1)
  {
    v1 = _UIKitUserDefaults();
    v2 = [v1 objectForKey:@"UIViewGlassLegibilitySetting"];

    if (v2)
    {
      v3 = [v2 integerValue];
    }

    else
    {
      v3 = 0;
    }

    _UIViewGlassLegibilityCachedSetting = v3;

    return _UIViewGlassLegibilityCachedSetting;
  }

  return result;
}

void __UIViewGlassGetLegibilitySetting_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _UIViewGlassClearCachedLegibilitySettingObserver, @"UIViewGlassLegibilityUpdateNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void _UIViewGlassClearCachedLegibilitySettingObserver()
{
  _UIViewGlassLegibilityCachedSetting = -1;
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"UIViewGlassLegibilityDidChangeNotification" object:0];
}

void UIViewGlassSetLegibilitySetting(uint64_t a1)
{
  v4 = _UIKitUserDefaults();
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  [v4 setObject:v2 forKey:@"UIViewGlassLegibilitySetting"];
  if ([v4 synchronize])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"UIViewGlassLegibilityUpdateNotification", 0, 0, 1u);
    _UIViewGlassLegibilityCachedSetting = -1;
  }
}

void sub_1899E2BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void accelCallback(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __accelCallback_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __accelCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  v5 = +[UIAccelerometer sharedAccelerometer];
  [v5 _acceleratedInX:v2 y:v3 z:v4 timestamp:*(a1 + 48)];

  v6 = UIApp;
  *&v7 = v2;
  *&v8 = v3;
  *&v9 = v4;

  return [v6 acceleratedInX:v7 Y:v8 Z:v9];
}

uint64_t __CoreMotionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49E748 = result;
  return result;
}

void HardwareKeyboardAvailabilityChanged()
{
  v0 = +[UIDevice currentDevice];
  [v0 performSelectorOnMainThread:sel__hardwareKeyboardAvailabilityChanged withObject:0 waitUntilDone:0];
}

void sub_1899E42A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UILocalizedNameForIdiom(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v1 = @"ui.idiom.phone";
        v2 = @"iPhone user interface idiom name";
        v3 = @"iPhone";
        goto LABEL_17;
      case 1:
        v1 = @"ui.idiom.ipad";
        v2 = @"iPad user interface idiom name";
        v3 = @"iPad";
        goto LABEL_17;
      case 2:
        v1 = @"ui.idiom.tv";
        v2 = @"AppleTV user interface idiom name";
        v3 = @"Apple TV";
        goto LABEL_17;
    }

LABEL_13:
    v1 = @"ui.idiom.unspecified";
    v2 = @"Unspecified user interface idiom";
    v3 = @"Unspecified";
    goto LABEL_17;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v1 = @"ui.idiom.mac";
      v2 = @"Mac user interface idiom name";
      v3 = @"Mac";
      goto LABEL_17;
    }

    if (a1 == 6)
    {
      v1 = @"ui.idiom.visionPro";
      v2 = @"Apple Vision Pro user interface idiom name";
      v3 = @"Vision Pro";
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v1 = @"ui.idiom.carplay";
    v2 = @"CarPlay user interface idiom name";
    v3 = @"CarPlay";
  }

  else
  {
    v1 = @"ui.idiom.watch";
    v2 = @"Apple Watch user interface idiom name";
    v3 = @"Apple Watch";
  }

LABEL_17:
  v4 = _UILocalizedString(v1, v2, v3);

  return v4;
}

uint64_t _UISSlotUserInterfaceIdiomFromUserInterfaceIdiom(unint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 < 9 && ((0x17Fu >> a1) & 1) != 0)
  {
    return qword_18A67CE40[a1];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 134217984;
      v6 = a1;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected user interface idiom for slot: %ld", &v5, 0xCu);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UISSlotUserInterfaceIdiomFromUserInterfaceIdiom___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = a1;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected user interface idiom for slot: %ld", &v5, 0xCu);
    }
  }

  return 0;
}

void _MatchedBatteries(IONotificationPort **a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a1;
  v6 = IOIteratorNext(a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = IOServiceAddInterestNotification(v5, v7, "IOGeneralInterest", _BatteryStatusChanged, 0, &dword_1ED49E768);
      v9 = _batteryLog();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_error_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Failed to add interest notification for battery", v11, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "Added interest notification for battery", buf, 2u);
        }

        _UpdateBatteryStatus(v7);
      }

      IOObjectRelease(v7);
      v7 = IOIteratorNext(a2);
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v4);
}

void __UpdateSystemSoundActiveStatus_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.systemSoundActivation", 0);
  v1 = qword_1ED49E8A0;
  qword_1ED49E8A0 = v0;
}

void *__getAudioServicesSetPropertySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AudioToolboxLibrary_1();
  result = dlsym(v2, "AudioServicesSetProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49E8B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AudioToolboxLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AudioToolboxLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void __IsSystemSoundEnabled_block_invoke()
{
  if (qword_1ED49E8C0 != -1)
  {
    dispatch_once(&qword_1ED49E8C0, &__block_literal_global_537_1);
  }

  v0 = qword_1ED49E8B8;
  v1 = objc_opt_self();
  [v0 addObserver:v1 forKeyPath:@"keyboard-audio" options:0 context:_KVOContext];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = objc_opt_self();
  [v4 addObserver:v2 selector:sel_invalidateSystemSoundEnablement name:@"UIApplicationResumedNotification" object:0];

  v3 = objc_opt_self();
  [v4 addObserver:v3 selector:sel_invalidateSystemSoundEnablement name:@"UIApplicationResumedEventsOnlyNotification" object:0];
}

void __SoundsUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.preferences.sounds"];
  v1 = qword_1ED49E8B8;
  qword_1ED49E8B8 = v0;
}

void *__getAudioServicesPlaySystemSoundSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioToolboxLibrary_1();
  result = dlsym(v2, "AudioServicesPlaySystemSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioServicesPlaySystemSoundSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromUIScreenTouchLevel(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E710CE68[a1 + 1];
  }
}

__CFString *NSStringFromUIScreenInteractionModel(uint64_t a1)
{
  if (!a1)
  {
    v3 = @"(null)";
    goto LABEL_18;
  }

  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (v1)
  {
    [(__CFString *)v2 appendString:@"touch"];
    if ((v1 & 2) == 0)
    {
LABEL_4:
      if ((v1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

  if ([(__CFString *)v3 length])
  {
    [(__CFString *)v3 appendString:@"|"];
  }

  [(__CFString *)v3 appendString:@"knob"];
  if ((v1 & 4) == 0)
  {
LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if ([(__CFString *)v3 length])
  {
    [(__CFString *)v3 appendString:@"|"];
  }

  [(__CFString *)v3 appendString:@"button"];
  if ((v1 & 8) != 0)
  {
LABEL_15:
    if ([(__CFString *)v3 length])
    {
      [(__CFString *)v3 appendString:@"|"];
    }

    [(__CFString *)v3 appendString:@"touchpad"];
  }

LABEL_18:

  return v3;
}

void sub_1899E5F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E616C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E63D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E6638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E686C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E6A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E73A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E79D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899E7C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1899E8C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIScreenAccessibilityInvertColorsDidChangeCallback(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UIScreenAccessibilityInvertColorsDidChangeCallback_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v2 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

uint64_t _screenBasedFocusUnsupported()
{
  v0 = dyld_program_sdk_at_least();
  if (v0 && (_UIIsPrivateMainBundle() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _screenBasedFocusUnsupported(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIScreen.m" lineNumber:3757 description:@"Accessing the focus system through UIScreen is no longer supported."];
  }

  if (_UIIsPrivateMainBundle())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Accessing the focus system through UIScreen is no longer supported. This will crash in a future update.", buf, 2u);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &_screenBasedFocusUnsupported___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Accessing the focus system through UIScreen is no longer supported. This will crash in a future update.", v6, 2u);
      }
    }
  }

  return v0;
}

double _UIScreenConvertToCAScreen(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = a1 * a3;
  if (a3 == 1.0)
  {
    v7 = a1;
    v8 = a2;
  }

  else
  {
    v8 = a2 * a3;
  }

  v9 = -(a4 + -1.57079633);
  if (a4 + -1.57079633 >= 0.0)
  {
    v9 = a4 + -1.57079633;
  }

  if (v9 < 0.01)
  {
    return v8;
  }

  v11 = a4 + -4.71238898;
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if (v11 >= 0.01)
  {
    return v7;
  }

  else
  {
    return a6 + -1.0 - v8;
  }
}

double _UIScreenConvertFromCAScreen(double result, double a2, double a3, double a4, double a5)
{
  v5 = -(a4 + -1.57079633);
  if (a4 + -1.57079633 >= 0.0)
  {
    v5 = a4 + -1.57079633;
  }

  if (v5 >= 0.01)
  {
    v6 = a4 + -4.71238898;
    if (v6 < 0.0)
    {
      v6 = -v6;
    }

    if (v6 < 0.01)
    {
      result = a2;
    }
  }

  else
  {
    result = a5 + -1.0 - a2;
  }

  if (a3 != 1.0)
  {
    return result / a3;
  }

  return result;
}

void *__getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CARSessionLimitUserInterfacesChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49ABD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCARSessionNightModeChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CARSessionNightModeChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49ABD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFigOutputMonitorIsScreenProbablyBeingRecordedSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49ABF8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaToolboxLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E710CE40;
    v7 = 0;
    qword_1ED49ABF8 = _sl_dlopen();
  }

  v2 = qword_1ED49ABF8;
  if (!qword_1ED49ABF8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaToolboxLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UIScreen.m" lineNumber:131 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FigOutputMonitorIsScreenProbablyBeingRecorded");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED49ABF0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MediaToolboxLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49ABF8 = result;
  return result;
}

void *_UITraitTraceForTraitEnvironmentAndQueryString(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  if (a1)
  {
    do
    {
      v5 = MEMORY[0x1E696AD60];
      v6 = objc_opt_class();
      v7 = [v5 stringWithFormat:@"<%@: %p", NSStringFromClass(v6), a1];
      if (objc_opt_respondsToSelector())
      {
        v8 = [a1 _extraInfoForTraitTrace];
      }

      else
      {
        v8 = 0;
      }

      if ([v8 length])
      {
        [v7 appendFormat:@"; %@", v8];
      }

      [v7 appendFormat:@"; traits = { %@ }", objc_msgSend(objc_msgSend(a1, "traitCollection"), "_traitsDescriptionMatching:", a2)];
      if (objc_opt_respondsToSelector())
      {
        v9 = [a1 traitOverrides];
        if (v9)
        {
          v10 = v9;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [(_UITraitOverrides *)v10 _traitOverridesDescriptionMatching:a2];
            if ([v11 length])
            {
              [v7 appendFormat:@"; %@", v11];
            }
          }
        }
      }

      [v7 appendString:@">"];
      [v4 addObject:v7];
      if (objc_opt_respondsToSelector())
      {
        v12 = [a1 _parentTraitEnvironment];
      }

      else
      {
        v12 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 _presentationControllerToNotifyOnLayoutSubviews];
        if (v13)
        {
          v14 = v13;
          if ([v13 _presentedViewForOverrideTraits] == a1)
          {
            v12 = v14;
          }
        }
      }

      a1 = v12;
    }

    while (v12);
  }

  v15 = [MEMORY[0x1E696AD60] string];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v4 reverseObjectEnumerator];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v27;
    do
    {
      v21 = 0;
      v25 = v19;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        if ([v22 length])
        {
          [v15 appendString:@"\n"];
        }

        for (i = v19; i; --i)
        {
          [v15 appendString:@"|  "];
        }

        [v15 appendString:v22];
        ++v19;
        ++v21;
      }

      while (v21 != v18);
      v19 = v18 + v25;
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  return v15;
}

void sub_1899F4400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899F66A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899F6A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899F6E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1899F70B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UITraitCollectionUserInterfaceRenderingModeDidChange(void *a1, void *a2)
{
  v4 = [a1 _userInterfaceRenderingMode];
  if (v4 == [a2 _userInterfaceRenderingMode] && (v5 = objc_msgSend(a1, "_vibrancy"), v5 == objc_msgSend(a2, "_vibrancy")))
  {
    return [a1 _isEqualToTraitCollectionForResolvedProvider:a2] ^ 1;
  }

  else
  {
    return 1;
  }
}

void sub_1899F74D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1899FF118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1899FF138(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x1899FF0FCLL);
  }

  JUMPOUT(0x1899FF0F0);
}

UITraitCollection *_UITraitCollectionFromThemeKey(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (has_internal_diagnostics)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v12 = a1;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unsupported themeKey: %@", buf, 0xCu);
      }
    }
  }

  else if ((isKindOfClass & 1) == 0)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UITraitCollectionFromThemeKey___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = a1;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unsupported themeKey: %@", buf, 0xCu);
    }
  }

  v4 = [a1 unsignedIntegerValue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UITraitCollectionFromThemeKey_block_invoke;
  v8[3] = &__block_descriptor_58_e27_v16__0___UIMutableTraits__8l;
  v8[4] = v4 & 3;
  v8[5] = ((v4 >> 2) & 0xF) - 1;
  v9 = (v4 & 0x40) != 0;
  v10 = (v4 & 0x80) != 0;
  v8[6] = (v4 >> 8) & 1;
  return [UITraitCollection traitCollectionWithTraits:v8];
}

id _getCurrentFallbackEnvironment()
{
  if (dyld_program_sdk_at_least())
  {
    result = qword_1ED49ECA0;
    if (qword_1ED49ECA0)
    {
      return result;
    }

    if (dyld_program_sdk_at_least())
    {
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v1 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar < 1)
      {
        goto LABEL_8;
      }

      v3 = _UIInternalPreference_UseMostActiveWindowSceneAsBaseFallbackEnvironment;
      if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UseMostActiveWindowSceneAsBaseFallbackEnvironment)
      {
        goto LABEL_8;
      }

      while (v1 >= v3)
      {
        _UIInternalPreferenceSync(v1, &_UIInternalPreference_UseMostActiveWindowSceneAsBaseFallbackEnvironment, @"UseMostActiveWindowSceneAsBaseFallbackEnvironment", _UIInternalPreferenceUpdateBool);
        v3 = _UIInternalPreference_UseMostActiveWindowSceneAsBaseFallbackEnvironment;
        if (v1 == _UIInternalPreference_UseMostActiveWindowSceneAsBaseFallbackEnvironment)
        {
          goto LABEL_8;
        }
      }

      if (byte_1ED48B24C)
      {
LABEL_8:
        result = __cachedMostActiveWindowScene;
        if (__cachedMostActiveWindowScene)
        {
          return result;
        }

        result = [_UISceneLifecycleMultiplexer mostActiveSceneWithTest:&__block_literal_global_325];
        __cachedMostActiveWindowScene = result;
        if (result)
        {
          return result;
        }
      }
    }
  }

  v2 = objc_opt_self();

  return [v2 mainScreen];
}

uint64_t _UIGetDescriptionForFallbackEnvironmentWithInvalidTraitCollection(void *a1)
{
  if (_UIGetDescriptionForFallbackEnvironmentWithInvalidTraitCollection___reentranceGuard == 1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = objc_opt_class();
    return [v2 stringWithFormat:@"<%@: %p>", NSStringFromClass(v3), a1];
  }

  else
  {
    _UIGetDescriptionForFallbackEnvironmentWithInvalidTraitCollection___reentranceGuard = 1;
    result = [a1 description];
    _UIGetDescriptionForFallbackEnvironmentWithInvalidTraitCollection___reentranceGuard = 0;
  }

  return result;
}

__CFString *_additionalDebuggingDescriptionForFallbackEnvironment(void *a1)
{
  v1 = _viewForFallbackEnvironment(a1);
  if (v1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@" with view controller %@ in window %@", objc_msgSend(v1, "_viewControllerForAncestor"), objc_msgSend(v1, "window")];
  }

  else
  {
    return &stru_1EFB14550;
  }
}

uint64_t __UISimulateCrash_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_1ED49ECB0;
  v13 = off_1ED49ECB0;
  if (!off_1ED49ECB0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getSimulateCrashSymbolLoc_block_invoke_0;
    v9[3] = &unk_1E70F2F20;
    v9[4] = &v10;
    __getSimulateCrashSymbolLoc_block_invoke_0(v9);
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    return v6(a1, a2, a3);
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v8 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL __UISimulateCrash(pid_t description:{mach_exception_data_type_t, NSString *)"), @"UIDebug_Internal.h", 19, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_189A01EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSimulateCrashSymbolLoc_block_invoke_0(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49ECB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CrashReporterSupportLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710D758;
    v8 = 0;
    qword_1ED49ECB8 = _sl_dlopen();
  }

  v2 = qword_1ED49ECB8;
  if (!qword_1ED49ECB8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CrashReporterSupportLibrary(void)"];
    v3 = [a1 handleFailureInFunction:v5 file:@"UIDebug_Internal.h" lineNumber:18 description:{@"%s", v6[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SimulateCrash");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED49ECB0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49ECB8 = result;
  return result;
}

BOOL _UIScreenTypePrivateIsRectangular(uint64_t a1)
{
  if (a1 <= 10080)
  {
    if (a1 <= 10029)
    {
      if (a1 <= 10003)
      {
        if (a1 > 10001)
        {
          if (a1 == 10002)
          {
            v1 = 2;
          }

          else
          {
            v1 = 3;
          }

          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }

        if (a1 == 10000)
        {
          v1 = 0;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }

        if (a1 == 10001)
        {
          v1 = 1;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }
      }

      else if (a1 <= 10010)
      {
        if (a1 == 10004)
        {
          v1 = 4;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }

        if (a1 == 10010)
        {
          v1 = 5;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }
      }

      else
      {
        switch(a1)
        {
          case 10011:
            v1 = 6;
            return _UIScreenCornerRadiusForType(v1) == 0.0;
          case 10020:
            v1 = 7;
            return _UIScreenCornerRadiusForType(v1) == 0.0;
          case 10021:
            v1 = 8;
            return _UIScreenCornerRadiusForType(v1) == 0.0;
        }
      }
    }

    else
    {
      if (a1 <= 10069)
      {
        switch(a1)
        {
          case 10030:
            v1 = 9;
            break;
          case 10031:
            v1 = 10;
            break;
          case 10040:
            v1 = 11;
            break;
          case 10041:
            v1 = 12;
            break;
          case 10042:
            v1 = 17;
            break;
          case 10043:
            v1 = 18;
            break;
          case 10050:
            v1 = 13;
            break;
          case 10051:
            v1 = 14;
            break;
          case 10052:
            v1 = 19;
            break;
          case 10053:
            v1 = 20;
            break;
          case 10060:
            v1 = 15;
            break;
          case 10061:
            v1 = 16;
            break;
          case 10062:
            v1 = 21;
            break;
          case 10063:
            v1 = 22;
            break;
          default:
            goto LABEL_88;
        }

        return _UIScreenCornerRadiusForType(v1) == 0.0;
      }

      switch(a1)
      {
        case 10070:
          v1 = 23;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        case 10071:
          v1 = 24;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        case 10080:
          v1 = 25;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
      }
    }

LABEL_88:
    v1 = -1;
    return _UIScreenCornerRadiusForType(v1) == 0.0;
  }

  if (a1 <= 20009)
  {
    if (a1 <= 10100)
    {
      if (a1 > 10090)
      {
        if (a1 == 10091)
        {
          v1 = 28;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }

        if (a1 == 10100)
        {
          v1 = 29;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }
      }

      else
      {
        if (a1 == 10081)
        {
          v1 = 26;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }

        if (a1 == 10090)
        {
          v1 = 27;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        }
      }
    }

    else if (a1 <= 10110)
    {
      if (a1 == 10101)
      {
        v1 = 30;
        return _UIScreenCornerRadiusForType(v1) == 0.0;
      }

      if (a1 == 10110)
      {
        v1 = 31;
        return _UIScreenCornerRadiusForType(v1) == 0.0;
      }
    }

    else
    {
      switch(a1)
      {
        case 10111:
          v1 = 32;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        case 20000:
          v1 = 33;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
        case 20001:
          v1 = 34;
          return _UIScreenCornerRadiusForType(v1) == 0.0;
      }
    }

    goto LABEL_88;
  }

  if (a1 > 20049)
  {
    switch(a1)
    {
      case 20050:
        v1 = 48;
        return _UIScreenCornerRadiusForType(v1) == 0.0;
      case 20051:
        v1 = 49;
        return _UIScreenCornerRadiusForType(v1) == 0.0;
      case 20052:
        v1 = 50;
        return _UIScreenCornerRadiusForType(v1) == 0.0;
    }

    goto LABEL_88;
  }

  switch(a1)
  {
    case 20010:
      v1 = 35;
      break;
    case 20011:
      v1 = 36;
      break;
    case 20020:
      v1 = 37;
      break;
    case 20021:
      v1 = 38;
      break;
    case 20022:
      v1 = 39;
      break;
    case 20023:
      v1 = 40;
      break;
    case 20024:
      v1 = 41;
      break;
    case 20025:
      v1 = 42;
      break;
    case 20030:
      v1 = 43;
      break;
    case 20031:
      v1 = 44;
      break;
    case 20033:
      v1 = 45;
      break;
    case 20040:
      v1 = 46;
      break;
    case 20041:
      v1 = 47;
      break;
    default:
      goto LABEL_88;
  }

  return _UIScreenCornerRadiusForType(v1) == 0.0;
}

uint64_t _UIScreenTypePrivateForScreen(void *a1)
{
  v1 = _UIScreenTypeForScreen(a1);
  if (v1 > 0x32)
  {
    return -1;
  }

  else
  {
    return qword_18A67CF70[v1];
  }
}

uint64_t _UIScreenUsesMinimumSafeAreas(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  v3.origin.x = _UIScreenNativeDisplayExclusionRectForType(a1);
  return (v3.origin.y > 0.0) & ~CGRectIsNull(v3);
}

void sub_189A042F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_189A04E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DefaultContentSizeCategory_block_invoke()
{
  if (UIApp)
  {
    v0 = objc_opt_class();
  }

  else
  {
    v0 = UIApplication;
  }

  v1 = [(__objc2_class *)v0 _defaultContentSizeCategory];
  v2 = qword_1ED49ED50;
  qword_1ED49ED50 = v1;
}

id _UIImageConfigurationWithFlippedLayoutDirection(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = v2;
  if (v2 && [v2 layoutDirection] != -1)
  {
    v4 = [v3 _traitCollectionByReplacingNSIntegerValue:objc_msgSend(v3 forTraitToken:{"layoutDirection") == 0, 0x1EFE323C8}];

    v5 = [v1 configurationWithTraitCollection:v4];

    v3 = v4;
    v1 = v5;
  }

  return v1;
}

void sub_189A10B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v20 = objc_begin_catch(exception_object);
  v21 = *(v19 + 16);
  v22 = objc_opt_class();
  v23 = [v20 reason];
  NSLog(&cfstr_FailedToSetUse.isa, v21, v22, v23);

  objc_end_catch();
}

void sub_189A10BCC(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

id _UIGestureRecognizerContainerRecursiveDescription(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIGestureRecognizerContainerRecursiveDescription_block_invoke;
  v7[3] = &unk_1E710D880;
  v8 = v3;
  v4 = v3;
  v5 = _UIRecursiveDescription(a1, sel__childGestureRecognizerContainers, v7);

  return v5;
}

id _UIGestureRecognizerContainerAncestralDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIGestureRecognizerContainerAncestralDescription_block_invoke;
  v7[3] = &unk_1E710D880;
  v8 = v3;
  v4 = v3;
  v5 = _UIAncestralDescription(a1, sel__parentGestureRecognizerContainer, v7);

  return v5;
}

void *UIResourceIdentifierForStringsFileForNIBBeingDecodedWithCoder(void *a1)
{
  v1 = a1;
  v2 = UICoderToNibIdentifierForStringsFileMap();
  v3 = CFDictionaryGetValue(v2, v1);

  v4 = [MEMORY[0x1E695DFB0] null];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

void sub_189A132CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKTextInputSettingsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49EDA0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PencilKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710D8B0;
    v8 = 0;
    qword_1ED49EDA0 = _sl_dlopen();
  }

  if (!qword_1ED49EDA0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PencilKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardSuppressionPolicyDelegate.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKTextInputSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKTextInputSettingsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardSuppressionPolicyDelegate.m" lineNumber:16 description:{@"Unable to find class %s", "PKTextInputSettings"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1161 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49EDA0 = result;
  return result;
}

uint64_t scrollingKeyForPress(void *a1)
{
  v1 = a1;
  if ([v1 _source] != 2)
  {
    v4 = [v1 type];
    if (v4 > 21)
    {
      if (v4 > 29)
      {
        if (v4 == 30)
        {
          v2 = 5;
          goto LABEL_3;
        }

        if (v4 == 31)
        {
          v2 = 6;
          goto LABEL_3;
        }
      }

      else
      {
        if (v4 == 22)
        {
          v2 = 7;
          goto LABEL_3;
        }

        if (v4 == 23)
        {
          v2 = 8;
          goto LABEL_3;
        }
      }
    }

    else if (v4 > 1)
    {
      if (v4 == 2)
      {
        v2 = 1;
        goto LABEL_3;
      }

      if (v4 == 3)
      {
        v2 = 2;
        goto LABEL_3;
      }
    }

    else
    {
      if (!v4)
      {
        v2 = 3;
        goto LABEL_3;
      }

      if (v4 == 1)
      {
        v2 = 4;
        goto LABEL_3;
      }
    }

    v5 = [v1 key];
    v6 = [v5 keyCode];
    v7 = [v1 key];
    v8 = [v7 modifierFlags];
    if (v8 == 0x100000)
    {
      v9 = 8 * (v6 == 81);
      v10 = v6 == 82;
      v11 = 7;
    }

    else
    {
      if (v8 != 0x80000)
      {
        if (v8 || (v6 - 74) >= 5)
        {
          v2 = 0;
        }

        else
        {
          v2 = qword_18A67E1C8[v6 - 74];
        }

        goto LABEL_36;
      }

      v9 = 6;
      if (v6 != 81)
      {
        v9 = 0;
      }

      v10 = v6 == 82;
      v11 = 5;
    }

    if (v10)
    {
      v2 = v11;
    }

    else
    {
      v2 = v9;
    }

LABEL_36:

    goto LABEL_3;
  }

  v2 = 0;
LABEL_3:

  return v2;
}

void sub_189A1A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189A1AB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189A1BBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIShouldApplyTraitStorageRecordsForTraitChanges(uint64_t a1)
{
  if (qword_1ED49EDC8 != -1)
  {
    dispatch_once(&qword_1ED49EDC8, &__block_literal_global_264);
  }

  if (_UITraitTokenSetIntersectsSet(&unk_1ED49EDD8, a1))
  {
    v2 = 1;
  }

  else
  {
    if (qword_1ED49EDD0 != -1)
    {
      dispatch_once(&qword_1ED49EDD0, &__block_literal_global_267);
    }

    v2 = _MergedGlobals_1162;
  }

  return v2 & 1;
}

void ___supportedTraitsForIBVariations_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = _UIGetTraitTokenValue(&unk_1EFE32398);
  _UITraitTokenSetInsert(&unk_1ED49EDD8, v0, v1);
  v2 = _UIGetTraitTokenValue(&unk_1EFE323F8);
  _UITraitTokenSetInsert(&unk_1ED49EDD8, v2, v3);
  v4 = _UIGetTraitTokenValue(&unk_1EFE32410);
  _UITraitTokenSetInsert(&unk_1ED49EDD8, v4, v5);
  v6 = _UIGetTraitTokenValue(&unk_1EFE32458);
  _UITraitTokenSetInsert(&unk_1ED49EDD8, v6, v7);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = +[UITraitCollection _systemTraitTokensAffectingColorAppearance];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = _UIGetTraitTokenValue(*(*(&v15 + 1) + 8 * v12));
        _UITraitTokenSetInsert(&unk_1ED49EDD8, v13, v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

void ___appNeedsCompatibilityBehavior_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    _MergedGlobals_1162 = 0;
  }

  else
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_1162 = [v0 isEqualToString:@"com.crunchyroll.iphone"];
  }
}

void sub_189A28FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189A298A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUICandidateViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUICandidateViewClass_softClass;
  v7 = getTUICandidateViewClass_softClass;
  if (!getTUICandidateViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUICandidateViewClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUICandidateViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189A2A988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TIGetCandidateViewExperimentsValue()
{
  if (TIGetCandidateViewExperimentsValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetCandidateViewExperimentsValue_onceToken, &__block_literal_global_589);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"CandidateViewExperiments"];

  return v1;
}

void sub_189A2BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189A2E040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUICandidateViewClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUICandidateView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUICandidateViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUICandidateViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardCandidateController.m" lineNumber:20 description:{@"Unable to find class %s", "TUICandidateView"}];

    __break(1u);
  }
}

uint64_t __TextInputUILibraryCore_block_invoke_9()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_4 = result;
  return result;
}

void __TIGetCandidateViewExperimentsValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"CandidateViewExperiments" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __getTUIEmojiSearchTextFieldClass_block_invoke_0(uint64_t a1)
{
  TextInputUILibrary_4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIEmojiSearchTextField");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49EE30 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiSearchTextFieldClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardCandidateController.m" lineNumber:26 description:{@"Unable to find class %s", "TUIEmojiSearchTextField"}];

    __break(1u);
  }
}

void __TIGetDisableCPCandidateBarScrollingValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"DisableCPCandidateBarScrolling" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void *__getTUICandidateViewAnimationDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TextInputUILibrary_4();
  result = dlsym(v2, "TUICandidateViewAnimationDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49EE40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189A321B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nullMethodIMP(void *a1, const char *a2)
{
  v3 = a1;
  v6 = NSStringFromSelector(a2);
  v4 = objc_opt_class();

  v5 = NSStringFromClass(v4);
  NSLog(&cfstr_MethodNotFound.isa, v6, v5);
}

id _documentTextFont()
{
  v0 = +[UIKeyboard currentDocumentState];
  if (!v0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  v1 = [v0 autocorrectBubbleStyling];
  v2 = [v1 fontName];

  if (v2)
  {
    v3 = [v1 fontName];
    [v1 fontSize];
    v4 = [off_1E70ECC18 fontWithName:v3 size:?];
  }

  else
  {
    [v1 fontSize];
    if (v5 <= 12.0)
    {

LABEL_10:
      v4 = [off_1E70ECC18 systemFontOfSize:16.5];
      goto LABEL_11;
    }

    [v1 fontSize];
    v7 = v6;
    [v1 fontWeight];
    v4 = [off_1E70ECC18 systemFontOfSize:v7 weight:v8];
  }

  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_11:
  [v4 pointSize];
  if (v9 < 12.0 || ([v4 pointSize], v10 > 36.0))
  {
    v11 = [v4 fontWithSize:?];

    v4 = v11;
  }

  return v4;
}

id _typedTextBackgroundColor()
{
  v0 = +[UIColor systemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.185];

  return v1;
}

BOOL SubviewAutoSizesWithPredictionBar(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  v5 = v3 && ([v3 assertSizingWithPredictionBar] & 1) != 0;

  return v5;
}

BOOL _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_PopoverShapeLayerChromeViewWantsCurvedPinnedArrows, _UIInternalPreferencesRevisionVar == _UIInternalPreference_PopoverShapeLayerChromeViewWantsCurvedPinnedArrows))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_PopoverShapeLayerChromeViewWantsCurvedPinnedArrows, @"PopoverShapeLayerChromeViewWantsCurvedPinnedArrows", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_PopoverShapeLayerChromeViewWantsCurvedPinnedArrows;
    }

    while (v0 != _UIInternalPreference_PopoverShapeLayerChromeViewWantsCurvedPinnedArrows);
  }

  return byte_1EA95E51C && v1;
}

uint64_t IsMobileNotes()
{
  if ((_MergedGlobals_1165 & 1) == 0)
  {
    v0 = _UIMainBundleIdentifier();
    byte_1ED49EE49 = [v0 isEqualToString:@"com.apple.mobilenotes"];
    _MergedGlobals_1165 = 1;
  }

  if (byte_1ED49EE49 == 1)
  {
    v1 = +[UIKeyboardImpl activeInstance];
    v2 = [v1 inputDelegateManager];
    v3 = [v2 keyInputDelegate];

    if (v3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 0;
LABEL_14:

        return v4;
      }

      v4 = v3;
      while (1)
      {
        ClassName = object_getClassName(v4);
        if (!strcmp("NoteContentLayer", ClassName))
        {
          break;
        }

        v6 = [v4 superview];

        v4 = v6;
        if (!v6)
        {
          goto LABEL_14;
        }
      }
    }

    v4 = 1;
    goto LABEL_14;
  }

  return 0;
}

id textFont()
{
  v0 = +[UIKeyboard currentDocumentState];
  if (v0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v1 = [v0 autocorrectBubbleStyling];
    v2 = [v1 fontName];

    if (v2)
    {
      v3 = [v1 fontName];
      [v1 fontSize];
      v4 = [off_1E70ECC18 fontWithName:v3 size:?];

      goto LABEL_7;
    }

    if (v1)
    {
      [v1 fontSize];
      v6 = v5;
      [v1 fontWeight];
      v4 = [off_1E70ECC18 systemFontOfSize:v6 weight:v7];
LABEL_7:

      if (v4)
      {
        goto LABEL_10;
      }
    }
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 inputDelegate];

  v4 = [v9 _fontForCaretSelection];

  if (!v4)
  {
    v4 = [off_1E70ECC18 boldSystemFontOfSize:13.0];
  }

LABEL_10:

  return v4;
}

id inlinePromptTextFont()
{
  v0 = textFont();
  [v0 pointSize];
  if (v1 < 12.0)
  {
    v2 = 12.0;
LABEL_5:
    v4 = [v0 fontWithSize:v2];
    goto LABEL_7;
  }

  [v0 pointSize];
  if (v3 > 36.0)
  {
    v2 = 36.0;
    goto LABEL_5;
  }

  v4 = v0;
LABEL_7:
  v5 = v4;

  return v5;
}

id AutocorrectTextColor()
{
  if (IsAutoFillMode())
  {
    v0 = qword_1ED49EE70;
    if (qword_1ED49EE70)
    {
      goto LABEL_7;
    }

    v1 = [[UIColor alloc] initWithRed:0.596 green:0.282 blue:0.071 alpha:1.0];
    v2 = &qword_1ED49EE70;
  }

  else
  {
    v0 = qword_1ED49EE50;
    if (qword_1ED49EE50)
    {
      goto LABEL_7;
    }

    v1 = +[UIColor systemBlueColor];
    v2 = &qword_1ED49EE50;
  }

  v3 = *v2;
  *v2 = v1;

  v0 = *v2;
LABEL_7:
  v4 = v0;

  return v4;
}

uint64_t IsAutoFillMode()
{
  v0 = +[UIKeyboardImpl activeInstance];
  v1 = [v0 isAutoFillMode];

  return v1;
}

id autocorrectTextBackgroundColor()
{
  if (IsAutoFillMode())
  {
    v0 = qword_1ED49EE78;
    if (qword_1ED49EE78)
    {
      goto LABEL_7;
    }

    v1 = [[UIColor alloc] initWithRed:0.969 green:0.925 blue:0.529 alpha:1.0];
    v2 = &qword_1ED49EE78;
  }

  else
  {
    v0 = qword_1ED49EE58;
    if (qword_1ED49EE58)
    {
      goto LABEL_7;
    }

    v1 = +[UIColor systemBackgroundColor];
    v2 = &qword_1ED49EE58;
  }

  v3 = *v2;
  *v2 = v1;

  v0 = *v2;
LABEL_7:
  v4 = v0;

  return v4;
}

id AutocorrectTextOutlineColor()
{
  if (IsAutoFillMode())
  {
    v0 = qword_1ED49EE80;
    if (qword_1ED49EE80)
    {
      goto LABEL_7;
    }

    v1 = [[UIColor alloc] initWithRed:0.992 green:0.902 blue:0.392 alpha:1.0];
    v2 = &qword_1ED49EE80;
  }

  else
  {
    v0 = qword_1ED49EE60;
    if (qword_1ED49EE60)
    {
      goto LABEL_7;
    }

    v1 = +[UIColor systemGray2Color];
    v2 = &qword_1ED49EE60;
  }

  v3 = *v2;
  *v2 = v1;

  v0 = *v2;
LABEL_7:
  v4 = v0;

  return v4;
}

id typedTextColor()
{
  v0 = +[UIKeyboard currentDocumentState];
  if (!v0 || (objc_opt_respondsToSelector() & 1) == 0 || ([v0 autocorrectTextColor], (v1 = objc_claimAutoreleasedReturnValue()) == 0) || (v2 = v1, +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", objc_msgSend(v1, "cgColor")), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 inputDelegate];

    v3 = [v5 _textColorForCaretSelection];

    if (!v3)
    {
      v3 = +[UIColor labelColor];
    }
  }

  return v3;
}

id documentBackgroundColor()
{
  v0 = documentBackgroundColor_color;
  if (!documentBackgroundColor_color)
  {
    v1 = +[UIColor systemBackgroundColor];
    v2 = documentBackgroundColor_color;
    documentBackgroundColor_color = v1;

    v0 = documentBackgroundColor_color;
  }

  return v0;
}

id TypedTextBackgroundColor()
{
  v0 = +[UIKeyboard currentDocumentState];
  if (v0 && (objc_opt_respondsToSelector() & 1) != 0 && ([v0 autocorrectTextBackgroundColor], (v1 = objc_claimAutoreleasedReturnValue()) != 0) && (v2 = v1, +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", objc_msgSend(v1, "cgColor")), v3 = objc_claimAutoreleasedReturnValue(), v2, v3) || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "textInputTraits"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "selectionHighlightColor"), v3 = objc_claimAutoreleasedReturnValue(), v5, v4, v3))
  {
    v6 = [v3 colorWithAlphaComponent:0.185];
  }

  else
  {
    v7 = TypedTextBackgroundColor_color;
    if (!TypedTextBackgroundColor_color)
    {
      v8 = [[UIColor alloc] initWithRed:0.0 green:0.33 blue:1.0 alpha:0.1];
      v9 = TypedTextBackgroundColor_color;
      TypedTextBackgroundColor_color = v8;

      v7 = TypedTextBackgroundColor_color;
    }

    v6 = v7;
  }

  return v6;
}

id AutoCorrectCancelImage()
{
  if (IsAutoFillMode())
  {
    v0 = qword_1ED49EE88;
    if (qword_1ED49EE88)
    {
      goto LABEL_7;
    }

    v1 = _UIImageWithName(@"kb-autofill-cancel.png");
    v2 = &qword_1ED49EE88;
    v3 = qword_1ED49EE88;
    qword_1ED49EE88 = v1;
  }

  else
  {
    v0 = qword_1ED49EE68;
    if (qword_1ED49EE68)
    {
      goto LABEL_7;
    }

    v3 = [UIImageSymbolConfiguration configurationWithPointSize:2 weight:1 scale:16.0];
    v4 = [UIImage _systemImageNamed:@"xmark" withConfiguration:v3];
    v5 = [v4 imageWithRenderingMode:2];
    v2 = &qword_1ED49EE68;
    v6 = qword_1ED49EE68;
    qword_1ED49EE68 = v5;
  }

  v0 = *v2;
LABEL_7:
  v7 = v0;

  return v7;
}

BOOL _CGRectContainsRectVertically(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MinY = CGRectGetMinY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (MinY < CGRectGetMinY(v20))
  {
    return 0;
  }

  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  return MaxY <= CGRectGetMaxY(v22);
}

double AutocorrectAdjustedInlineRect(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = a1;
  v10 = a2;
  if (!+[UIKeyboard isInputSystemUI])
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 inputDelegate];

    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 inputDelegateManager];

    if (!v12)
    {
      goto LABEL_19;
    }

    v15 = [v12 selectedTextRange];

    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = [v12 selectedTextRange];
    v17 = [v16 end];
    [v12 caretRectForPosition:v17];
    v22 = _convertFromInputDelegateRect(v10, v18, v19, v20, v21);
    v24 = v23;
    v91 = v25;
    v92 = v26;

    v27 = [v12 markedTextRange];

    if (v27)
    {
      v37 = [v12 markedTextRange];
      [v12 firstRectForRange:v37];
      v87 = _convertFromInputDelegateRect(v10, v28, v29, v30, v31);
      v89 = v32;
      v34 = v33;
      v36 = v35;

      LODWORD(v37) = v34 != v24;
      v38 = v24;
      goto LABEL_14;
    }

    rect = v24;
    v39 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v36 = *(MEMORY[0x1E695F050] + 16);
    v89 = *(MEMORY[0x1E695F050] + 24);
    v37 = [v14 asyncCapableInputDelegate];
    if (v37)
    {
      v40 = [v14 hasMarkedText];

      if (v40)
      {
        v85 = v22;
        [v14 textLastRect];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        [v14 textFirstRect];
        v99.origin.x = v49;
        v99.origin.y = v50;
        v99.size.width = v51;
        v99.size.height = v52;
        v95.origin.x = v42;
        v95.origin.y = v44;
        v95.size.width = v46;
        v95.size.height = v48;
        y = v99.origin.y;
        x = v99.origin.x;
        height = v99.size.height;
        width = v99.size.width;
        if (!CGRectEqualToRect(v95, v99))
        {
          v96.origin.x = v42;
          v96.origin.y = v44;
          v96.size.width = v46;
          v96.size.height = v48;
          v100.origin.y = y;
          v100.origin.x = x;
          v100.size.height = height;
          v100.size.width = width;
          v97 = CGRectUnion(v96, v100);
          v42 = v97.origin.x;
          v44 = v97.origin.y;
          v46 = v97.size.width;
          v48 = v97.size.height;
        }

        v87 = _convertFromInputDelegateRect(v10, v42, v44, v46, v48);
        v89 = v53;
        v34 = v54;
        v36 = v55;
        v22 = v85;
        v38 = rect;
        LODWORD(v37) = v34 != rect;
LABEL_14:
        v56 = v22;
        v57 = v91;
        v58 = v92;
        if (!CGRectIsNull(*(&v38 - 1)))
        {
          v98.origin.x = v87;
          v98.size.height = v89;
          v98.origin.y = v34;
          v98.size.width = v36;
          if (((CGRectIsNull(v98) | ~v37) & (a6 > v92)) != 0)
          {
            a6 = v92;
          }
        }

        if (v37)
        {
          v59 = textFont();
          _textSize(v9, v59);

LABEL_30:
          goto LABEL_31;
        }

LABEL_19:
        v60 = textFont();
        v61 = _textSize(v9, v60);
        v63 = v62;

        v64 = _convertFromInputDelegateRect(v10, 0.0, 0.0, v61, v63);
        if ((a6 <= v65 || v65 <= 0.0) && v65 > a6)
        {
          v66 = [v12 selectedTextRange];
          v67 = [v66 end];

          if (v67)
          {
            v68 = [v12 selectedTextRange];
            v69 = [v68 end];
            [v12 caretRectForPosition:v69];
            v93 = v70;
            v72 = v71;
            v74 = v73;
            v76 = v75;

            v77 = v93;
          }

          else
          {
            v77 = *MEMORY[0x1E695F058];
            v72 = *(MEMORY[0x1E695F058] + 8);
            v74 = *(MEMORY[0x1E695F058] + 16);
            v76 = *(MEMORY[0x1E695F058] + 24);
          }

          v94 = v77;
          v78 = v72;
          v79 = v74;
          v80 = v76;
          if (!CGRectIsEmpty(*&v77))
          {
            v81 = [v12 textInputView];

            if (v10)
            {
              if (v81)
              {
                _convertFromInputDelegateRect(v10, v94, v72, v74, v76);
              }
            }
          }
        }

        goto LABEL_30;
      }

      v87 = v39;
      LODWORD(v37) = 0;
    }

    else
    {
      v87 = v39;
    }

    v38 = rect;
    goto LABEL_14;
  }

LABEL_31:

  return a3;
}

double _convertFromInputDelegateRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = +[UIKeyboardImpl activeInstance];
  v11 = [v10 inputDelegate];

  v12 = [v11 textInputView];

  if (v9 && v12)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v11 textInputView];
    [v13 convertRectToAutocorrectRect:v14 delegateView:v9 container:{a2, a3, a4, a5}];
    a2 = v15;
  }

  return a2;
}

double _textSize(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 length])
  {
    [v3 _legacy_sizeWithFont:v4 forWidth:2 lineBreakMode:3.40282347e38];
    v6 = v5;
  }

  else
  {
    [@" " _legacy_sizeWithFont:v4 forWidth:2 lineBreakMode:3.40282347e38];
    v6 = 0.0;
  }

  return v6;
}

void sub_189A4BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UIKeyboardHasCompletedBuddy()
{
  if ((_MergedGlobals_61 & 1) == 0)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v0 = off_1ED498770;
    v7 = off_1ED498770;
    if (!off_1ED498770)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke;
      v3[3] = &unk_1E70F2F20;
      v3[4] = &v4;
      __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(v3);
      v0 = v5[3];
    }

    _Block_object_dispose(&v4, 8);
    if (v0)
    {
      _MergedGlobals_61 = v0();
    }

    else
    {
      v1 = [MEMORY[0x1E696AAA8] currentHandler];
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL UIBYSetupAssistantHasCompletedInitialRun(void)"];
      [v1 handleFailureInFunction:v2 file:@"UIKeyboardInputModeController.m" lineNumber:111 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

void sub_189A4BE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189A4C8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _GetNormalizedIdentifiersForMultiscriptInputModes()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"bn-Translit", @"gu-Translit", @"hi-Translit", @"kn-Translit", @"ml-Translit", @"mr-Translit", @"pa-Translit", @"ta-Translit", @"te-Translit", @"ur-Translit", 0}];
  if (_os_feature_enabled_impl())
  {
    [v0 addObject:@"ar-Translit"];
  }

  return v0;
}

void sub_189A50428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UITextInputTraitsAllowedInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isAllowedForTraits:v4])
  {
    v5 = [v4 keyboardType];
    v6 = 1;
    if (v5 <= 0xB && ((1 << v5) & 0x930) != 0 || v5 == 127)
    {
      v6 = _AllowedNumberPadInputMode(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _UITextInputTraitsAllowedInputModeExceptEmoji(void *a1, void *a2)
{
  v3 = a1;
  if (_UITextInputTraitsAllowedInputMode(v3, a2))
  {
    v4 = [v3 isEmojiInputMode] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UITextInputTraitsAllowedInputModeExcludeLastAndCurrentInputModesAndEmoji(void *a1, void *a2)
{
  v3 = a1;
  if (_UITextInputTraitsAllowedInputModeExcludeLastAndCurrentInputModes(v3, a2))
  {
    v4 = [v3 isEmojiInputMode] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UIKeyboardInputModeDefaultLayoutIsCarPlayEnabled(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 identifier];
  IsSecure = UIKeyboardLayoutDefaultTypeForInputModeIsSecure(v2);

  if (!IsSecure)
  {
    v4 = [v1 primaryLanguage];
    v5 = [v4 hasPrefix:@"ko"];

    if ((v5 & 1) == 0)
    {
      v6 = [v1 identifier];
      v7 = UIKeyboardPhoneLayoutToUseForCarPlayInputMode(v6);

      if (!v7)
      {
LABEL_13:
        v18 = 0;
        goto LABEL_18;
      }
    }
  }

  v8 = [v1 softwareLayout];
  v9 = [v8 isEqualToString:@"Thai-Four-Row"];

  if (v9)
  {
    v10 = UIKeyboardActiveInputModes;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      v14 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = KBStarLayoutString(*(*(&v20 + 1) + 8 * i));
          v17 = [v16 isEqualToString:@"Thai"];

          v14 &= v17 ^ 1;
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (UIKeyboardCarPlayFiveRowKeyboardEnabled)
  {
    v18 = 1;
  }

  else
  {
    v18 = UIKeyboardIsFiveRowKeyboard(v1) ^ 1;
  }

LABEL_18:

  return v18;
}

uint64_t _UIKeyboardInputModeFilterAllowedExceptLastAndCurrentAndEmojiAndSameMultilingualKeyboard(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = _UITextInputTraitsAllowedInputModeExcludeLastAndCurrentInputModesAndEmoji(v3, v4);

  if (v6)
  {
    v7 = [v5 currentInputMode];
    v8 = [v7 multilingualSet];
    v6 = [v8 containsObject:v3] ^ 1;
  }

  return v6;
}

void sub_189A5450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __userNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = v3;
  if (a2)
  {
    [v3 releaseAddKeyboardNotification];
  }

  else
  {
    [v3 didAcceptAddKeyboardInputMode];
  }
}

void sub_189A58808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189A5A9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUIKeyboardInputModeIconRendererClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardInputModeIconRendererClass_softClass_0;
  v7 = getTUIKeyboardInputModeIconRendererClass_softClass_0;
  if (!getTUIKeyboardInputModeIconRendererClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardInputModeIconRendererClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardInputModeIconRendererClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189A5AACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED498778)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E710DED8;
    v7 = 0;
    qword_1ED498778 = _sl_dlopen();
  }

  v2 = qword_1ED498778;
  if (!qword_1ED498778)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UIKeyboardInputModeController.m" lineNumber:110 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED498770 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED498778 = result;
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAFDictationRestrictedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFDictationRestricted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFDictationRestrictedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _AllowedNumberPadInputMode(void *a1)
{
  v1 = a1;
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 > 1)
  {
    v6 = 1;
  }

  else
  {
    v4 = UIKeyboardActiveInputModes;
    v5 = [v1 identifier];
    v6 = [v4 containsObject:v5];
  }

  return v6;
}

void *__getSBUserNotificationDefaultButtonTagSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_0();
  result = dlsym(v2, "SBUserNotificationDefaultButtonTag");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED498780 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getSBUserNotificationAllowInSetupKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary_0();
  result = dlsym(v2, "SBUserNotificationAllowInSetupKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED498788 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED498790 = result;
  return result;
}

Class __getEMFEmojiSearchEngineClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4987A0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __EmojiFoundationLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710DF38;
    v8 = 0;
    qword_1ED4987A0 = _sl_dlopen();
  }

  if (!qword_1ED4987A0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardInputModeController.m" lineNumber:102 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("EMFEmojiSearchEngine");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiSearchEngineClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardInputModeController.m" lineNumber:103 description:{@"Unable to find class %s", "EMFEmojiSearchEngine"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED498798 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EmojiFoundationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4987A0 = result;
  return result;
}

void __getTUIKeyboardInputModeIconRendererClass_block_invoke_0(uint64_t a1)
{
  TextInputUILibrary_5();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardInputModeIconRenderer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardInputModeIconRendererClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardInputModeIconRendererClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardInputModeController.m" lineNumber:89 description:{@"Unable to find class %s", "TUIKeyboardInputModeIconRenderer"}];

    __break(1u);
  }
}

uint64_t __TextInputUILibraryCore_block_invoke_10()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_5 = result;
  return result;
}

void __getTUIKeyboardInputModeIconRendererConfigurationClass_block_invoke_0(uint64_t a1)
{
  TextInputUILibrary_5();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardInputModeIconRendererConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardInputModeIconRendererConfigurationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardInputModeIconRendererConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardInputModeController.m" lineNumber:90 description:{@"Unable to find class %s", "TUIKeyboardInputModeIconRendererConfiguration"}];

    __break(1u);
  }
}

void UIKeyboardSetCurrentUILanguage(void *a1)
{
  v1 = [a1 copy];
  v2 = UIKeyboardCurrentUILanguage;
  UIKeyboardCurrentUILanguage = v1;
}

uint64_t UICurrentKeyboardSupportsMultilingual()
{
  v0 = +[UIKeyboardImpl activeInstance];
  v1 = [v0 textInputTraits];
  v2 = [v1 keyboardType];

  result = 0;
  if ((v2 > 0xB || ((1 << v2) & 0x930) == 0) && v2 != 127)
  {
    return 1;
  }

  return result;
}

BOOL UIKeyboardTypeIsNumberPad(unsigned int a1)
{
  result = 1;
  if (a1 > 0xB || ((1 << a1) & 0x930) == 0)
  {
    return a1 == 127;
  }

  return result;
}

uint64_t UIKeyboardInputModeIsMultiscript(void *a1)
{
  v1 = [a1 softwareLayout];
  v2 = [v1 containsString:@"-With-"];

  return v2;
}

uint64_t UIKeyboardNeverShowCandidateBarForCurrentInputMode()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = TIInputModeGetNormalizedIdentifier();

  v2 = TIGetInputModeProperties();
  v3 = [v2 objectForKey:@"UIKeyboardNeverShowCandidateBar"];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t UIKeyboardPredictionEnabledForInputModes(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = *MEMORY[0x1E69D97A8];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = TIInputModeGetNormalizedIdentifier();
        v8 = TIGetInputModeProperties();
        v9 = [v8 objectForKey:{v5, v13}];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t UIKeyboardHasWordNgramModelForInputMode()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIGetInputModeProperties();
  v2 = [v1 objectForKey:*MEMORY[0x1E69D97C0]];
  v3 = [v2 BOOLValue];

  return v3;
}

id UIKeyboardInputModeGetLocalizedVariant(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetVariant();
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UI-%@", v2];
    v4 = TICanonicalInputModeName();
    v5 = _UIKitBundle();
    v6 = UIKeyboardLocalizedString(v3, v4, v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id UIKeyboardInputModesMatchingMode(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TIInputModeGetNormalizedIdentifier();
  v4 = MEMORY[0x1E696AE18];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __UIKeyboardInputModesMatchingMode_block_invoke;
  v9[3] = &unk_1E710DFC8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [v2 filteredArrayUsingPredicate:v6];

  return v7;
}

uint64_t __UIKeyboardInputModesMatchingMode_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = TIInputModeGetNormalizedIdentifier();
  v3 = [v1 isEqualToString:v2];

  return v3;
}

id UIKeyboardInputModeWithNewSWLayout(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = a2;
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v2 dictionaryWithDictionary:v4];

  [v5 setObject:v3 forKey:@"sw"];
  v6 = UIKeyboardInputModeGetIdentifierFromComponents(v5);

  return v6;
}

id UIKeyboardInputModeWithNewHWLayout(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = a2;
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v2 dictionaryWithDictionary:v4];

  [v5 setObject:v3 forKey:@"hw"];
  v6 = UIKeyboardInputModeGetIdentifierFromComponents(v5);

  return v6;
}

uint64_t UIKeyboardInputModesEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [v3 isEqualToString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id UIKeyboardLocalizedInputModeName(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 hasPrefix:@"emoji"])
  {
    v2 = _UIKitBundle();
    v3 = [v2 localizedStringForKey:@"emoji" value:@"Emoji" table:@"Localizable"];
  }

  else
  {
    if (!v1)
    {
      v1 = @"intl";
    }

    v4 = MEMORY[0x1E696AD60];
    v5 = TIInputModeGetNormalizedIdentifier();
    v2 = [v4 stringWithFormat:@"UI-%@", v5];

    v6 = UIKeyboardLocalizedString(v2, v1, 0, 0);
    if ([v6 length])
    {
      v7 = v6;
      v3 = v7;
    }

    else
    {
      v7 = UIKeyboardLocalizedString(@"UI-LanguageIndicator", v1, 0, 0);

      if ([v7 length])
      {
        v8 = UIKeyboardInputModeGetLocalizedVariant(v1);
        if ([v8 length])
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, v8];

          v7 = v9;
        }

        v7 = v7;

        v3 = v7;
      }

      else
      {
        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v1);
        v11 = CFLocaleCreate(0, CanonicalLanguageIdentifierFromString);
        v12 = CFLocaleCopyDisplayNameForPropertyValue(v11, *MEMORY[0x1E695E6E8], CanonicalLanguageIdentifierFromString);
        v13 = v12;
        if (v12 && CFStringGetLength(v12))
        {
          v14 = [(__CFString *)v13 capitalizedString];
          v15 = objc_msgSend(v14, "rangeOfString:options:", @" ("), 2;
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [v14 substringToIndex:v15];

            v14 = v16;
          }

          v3 = [v14 copy];
        }

        else
        {
          if (CanonicalLanguageIdentifierFromString && CFStringGetLength(CanonicalLanguageIdentifierFromString))
          {
            v17 = CanonicalLanguageIdentifierFromString;
          }

          else
          {
            v17 = v1;
          }

          v3 = [(__CFString *)v17 copy];
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (CanonicalLanguageIdentifierFromString)
        {
          CFRelease(CanonicalLanguageIdentifierFromString);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

  return v3;
}

id TextInputUIBundle()
{
  if (qword_1ED49EEB0 != -1)
  {
    dispatch_once(&qword_1ED49EEB0, &__block_literal_global_339);
  }

  v1 = qword_1ED49EEA8;

  return v1;
}

void __TextInputUIBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/TextInputUI.framework"];
  v1 = qword_1ED49EEA8;
  qword_1ED49EEA8 = v0;
}

id UIKeyboardSettingsBundle()
{
  if (qword_1ED49EEC0 != -1)
  {
    dispatch_once(&qword_1ED49EEC0, &__block_literal_global_196);
  }

  v1 = qword_1ED49EEB8;

  return v1;
}

void __UIKeyboardSettingsBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PreferenceBundles/KeyboardSettings.bundle"];
  v1 = qword_1ED49EEB8;
  qword_1ED49EEB8 = v0;
}

id UIKeyboardLocalizedSWLayoutName(void *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ED49EED0 != -1)
  {
    dispatch_once(&qword_1ED49EED0, &__block_literal_global_201_2);
  }

  v2 = [qword_1ED49EEC8 objectForKey:v1];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = TIInputModeGetLanguageWithRegion();
    v5 = MEMORY[0x1E696AAE8];
    v6 = UIKeyboardSettingsBundle();
    v7 = [v6 localizations];
    v19[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v9 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v10 = [v8 arrayByAddingObject:v9];
    v11 = [v5 preferredLocalizationsFromArray:v7 forPreferences:v10];

    if (![v11 count] || (UIKeyboardSettingsBundle(), v12 = objc_claimAutoreleasedReturnValue(), KBStarLayoutString(v1), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "localizedStringForKey:value:table:localization:", v13, 0, @"KeyboardLayouts", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v15))
    {
      v16 = UIKeyboardSettingsBundle();
      v17 = KBStarLayoutString(v1);
      v15 = [v16 localizedStringForKey:v17 value:&stru_1EFB14550 table:@"KeyboardLayouts"];
    }

    [qword_1ED49EEC8 setObject:v15 forKey:v1];
    v3 = v15;
  }

  return v3;
}

void __UIKeyboardLocalizedSWLayoutName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49EEC8;
  qword_1ED49EEC8 = v0;
}

id UIKeyboardLocalizedDictationDisplayName(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ED49EEE0 != -1)
  {
    dispatch_once(&qword_1ED49EEE0, &__block_literal_global_207_0);
  }

  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 keyboardLanguageForDictationLanguage:v1];

  if (([v1 isEqualToString:@"zh_HK"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"yue_Hant"))
  {

    v3 = @"zh_HK";
    goto LABEL_6;
  }

  if (v3)
  {
LABEL_6:
    v4 = v1;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 activeDictationSupportedInputModeIdentifiers];

    v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (([(__CFString *)v3 isEqualToString:*(*(&v38 + 1) + 8 * i)]& 1) == 0)
          {
            v11 = TIInputModeGetBaseLanguage();
            v12 = TIInputModeGetBaseLanguage();
            v13 = [v11 isEqualToString:v12];

            if (v13)
            {
              v15 = [v4 stringByAppendingString:@"_long"];

              v14 = 1;
              goto LABEL_17;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
    v15 = v4;
LABEL_17:

    v16 = &_MergedGlobals_1108;
    v17 = [qword_1ED49EED8 objectForKey:v15];
    if (v17)
    {
      v18 = v17;
LABEL_35:

      goto LABEL_36;
    }

    v19 = MEMORY[0x1E696AAE8];
    v20 = TextInputUIBundle();
    v21 = [v20 localizations];
    v42 = v3;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v23 = [v19 preferredLocalizationsFromArray:v21 forPreferences:v22];

    if ([v23 count])
    {
      v24 = TextInputUIBundle();
      v25 = [v23 firstObject];
      v26 = [v24 localizedStringForKey:v15 value:0 table:@"Dictation" localization:v25];

      if (v14)
      {
        v27 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
        v28 = [v27 regionCode];
        v29 = MEMORY[0x1E696AEC0];
        v30 = [v27 localizedStringForCountryCode:v28];
        v31 = [v29 localizedStringWithFormat:v26, v30];

        v16 = &_MergedGlobals_1108;
        v26 = v31;
      }

      if (v26 && ![v26 isEqualToString:v15])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = 0;
    }

    v34 = +[UIKeyboardInputModeController sharedInputModeController];
    v35 = [v34 inputModeWithIdentifier:v4];
    v36 = [v35 extendedDisplayName];

    v26 = v36;
    if (!v36)
    {
LABEL_34:
      v18 = v26;

      goto LABEL_35;
    }

LABEL_33:
    [v16[475] setObject:v26 forKey:v15];
    goto LABEL_34;
  }

  if (([v1 hasPrefix:@"zh"] & 1) != 0 || objc_msgSend(v1, "hasSuffix:", @"CN"))
  {
    v32 = [v1 hasSuffix:@"CN"];
    v33 = @"zh_Hant";
    if (v32)
    {
      v33 = @"zh_Hans";
    }

    v3 = v33;
    goto LABEL_6;
  }

  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v15 = [(__CFString *)v3 inputModeWithIdentifier:v1];
  v18 = [v15 extendedDisplayName];
LABEL_36:

  return v18;
}

void __UIKeyboardLocalizedDictationDisplayName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49EED8;
  qword_1ED49EED8 = v0;
}

id UIKeyboardDictationDisplayNameInUILanguage(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = TextInputUIBundle();
  v5 = [v4 localizedStringForKey:v3 value:&stru_1EFB14550 table:@"Dictation"];

  if (!v5 || [v5 isEqualToString:v3])
  {
    v6 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v3];
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    v8 = [v7 localizedStringForLanguage:v6 context:a2];

    v5 = v8;
  }

  return v5;
}

id UIKeyboardLanguageNameInUILanguage(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (qword_1ED49EEF0 != -1)
  {
    dispatch_once(&qword_1ED49EEF0, &__block_literal_global_233_0);
  }

  v2 = [qword_1ED49EEE8 objectForKey:v1];
  if (!v2)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = UIKeyboardSettingsBundle();
    v6 = [v5 localizations];
    v7 = [v4 preferredLocalizationsFromArray:v6];
    v8 = [v7 firstObject];

    if (v8)
    {
      v9 = UIKeyboardSettingsBundle();
      v10 = [v9 localizedStringForKey:v1 value:0 table:@"KeyboardTitles" localization:v8];

      if (v10 && ![v10 isEqualToString:v1])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [MEMORY[0x1E695DF58] preferredLocale];
    v12 = [v11 displayNameForKey:*MEMORY[0x1E695D9A8] value:v1];

    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v13 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v1];
      v10 = [v13 displayName];

      if (!v10)
      {
LABEL_16:
        v3 = v10;

        goto LABEL_17;
      }
    }

LABEL_15:
    [qword_1ED49EEE8 setObject:v10 forKey:v1];
    goto LABEL_16;
  }

  v3 = v2;
LABEL_17:

LABEL_18:

  return v3;
}

void __UIKeyboardLanguageNameInUILanguage_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49EEE8;
  qword_1ED49EEE8 = v0;
}

id UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = UIKeyboardActiveInputModes;
  v1 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v0, "count")}];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v0;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = +[UIKeyboardInputModeController sharedInputModeController];
        v9 = [v8 inputModeWithIdentifier:v7];

        if (![v9 isMultilingual])
        {
          goto LABEL_11;
        }

        if (([v9 isMultilingualOnly] & 1) == 0 && ((UIKeyboardShowsTransliterationCandidatesForInputMode() & 1) != 0 || !objc_msgSend(v9, "multilingualIndex")))
        {
          if (UIKeyboardShowsTransliterationCandidatesForInputMode())
          {
LABEL_11:
            if ([v9 isExtensionInputMode])
            {
              v10 = v7;
            }

            else
            {
              v10 = TIInputModeGetNormalizedIdentifier();
            }
          }

          else
          {
            v10 = [v9 displayName];
          }

          v11 = v10;
          v12 = UIKeyboardGetCurrentInputMode();
          if ([v7 isEqualToString:v12])
          {

            goto LABEL_18;
          }

          v13 = [v1 containsObject:v11];

          if ((v13 & 1) == 0)
          {
LABEL_18:
            [v1 addObject:v11];
            [v2 setObject:v7 forKey:v11];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v4);
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v1;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v2 objectForKey:*(*(&v23 + 1) + 8 * j)];
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  return v14;
}

uint64_t UIKeyboardHasMultipleActiveLinguisticNonExtensionInputModes()
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v0 = UIKeyboardActiveInputModes;
  v1 = [v0 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = TIInputModeGetLanguage();
        if (UIKeyboardInputModeIsNonLinguistic(v7))
        {
        }

        else
        {
          v8 = +[UIKeyboardInputModeController sharedInputModeController];
          v9 = [v8 identifierIsValidSystemInputMode:v6];

          if (v9)
          {
            v10 = 1;
            v11 = v3 <= 0;
            v3 = 1;
            if (!v11)
            {
              goto LABEL_14;
            }
          }
        }

        ++v5;
      }

      while (v2 != v5);
      v2 = [v0 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v2);
  }

  v10 = 0;
LABEL_14:

  return v10;
}

id UIKeyboardGetABCStringForActiveInputMode()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = UIKeyboardLocalizedString(@"UI-ABC", v0, 0, @"ABC");

  return v1;
}

id UIKeyboardGetJapaneseAIUStringForActiveInputMode()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = UIKeyboardLocalizedString(@"UI-JapaneseAIU", v0, 0, @"あいう");

  return v1;
}

id UIKeyboardGetNumbersSymbolsStringForActiveInputMode()
{
  if (_ShouldLocalizeNumbersForPreferredLocale())
  {
    v0 = UIKeyboardGetNumberFormatterForPreferredLocale();
    v1 = [v0 stringFromNumber:&unk_1EFE30E98];

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@".?%@", v1];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"UI-NumbersSymbols", v1];
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = UIKeyboardLocalizedString(v3, v4, 0, v2);
  }

  else
  {
    v1 = UIKeyboardGetCurrentInputMode();
    v5 = UIKeyboardLocalizedString(@"UI-NumbersSymbols", v1, 0, @".?123");
  }

  return v5;
}

uint64_t UIKeyboardGetNumbersStringForPreferredLocale()
{
  v0 = [MEMORY[0x1E695DF58] preferredLocale];
  v1 = [v0 localeIdentifier];
  v2 = [v1 isEqualToString:qword_1ED49EF10];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 localeIdentifier];
    v4 = [v3 copy];
    v5 = qword_1ED49EF10;
    qword_1ED49EF10 = v4;

    v6 = objc_opt_new();
    [v6 setLocale:v0];
    [v6 setNumberStyle:0];
    v7 = [v6 stringFromNumber:&unk_1EFE30EB0];
    v8 = [v7 copy];
    v9 = qword_1ED49EF08;
    qword_1ED49EF08 = v8;
  }

  v10 = qword_1ED49EF08;
  v11 = qword_1ED49EF08;

  return v10;
}

id UIKeyboardGetInputModesForLanguage(void *a1, void *a2, int a3)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = TIInputModeGetBaseLanguage();
  v59[0] = v6;
  v7 = TIInputModeGetLanguage();
  v59[1] = v7;
  v8 = 0x1E695D000uLL;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v10 = [v4 allKeys];
  v11 = [v9 arrayByAddingObjectsFromArray:v10];

  v12 = MEMORY[0x1E696AAE8];
  v58 = v5;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v14 = [v12 preferredLocalizationsFromArray:v11 forPreferences:v13];
  v15 = [v14 firstObject];

  v16 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v15];
  v17 = [v16 languageCode];
  v18 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
  v19 = [v18 languageCode];
  v20 = [v17 isEqualToString:v19];

  v48 = v15;
  if (v20)
  {
    v21 = [v4 objectForKey:v15];
  }

  else
  {
    v21 = 0;
  }

  if (![v21 count])
  {
    v22 = TIInputModeGetRegion();
    v23 = [v4 objectForKey:v22];

    v21 = v23;
  }

  if (![v21 count] && a3)
  {
    v24 = TIGetDefaultInputModesForLanguage();
    v25 = v21;
    v26 = v15;
    goto LABEL_34;
  }

  v52 = UIKeyboardGetSupportedInputModes();
  if (![v21 count])
  {
    v42 = v21;
    goto LABEL_29;
  }

  v45 = v11;
  v46 = v5;
  v47 = v4;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v21;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (!v29)
  {
    goto LABEL_27;
  }

  v30 = v29;
  v31 = *v54;
  v49 = v28;
  v50 = v27;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v54 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v53 + 1) + 8 * i);
      v34 = TIInputModeGetComponentsFromIdentifier();
      v35 = TIInputModeGetNormalizedIdentifierFromComponents();
      if ([v52 containsObject:v35])
      {
        v36 = v33;
        v37 = [v34 objectForKey:@"sw"];
        if (!v37)
        {
          goto LABEL_21;
        }

        v38 = v31;
        v39 = UIKeyboardGetSupportedSoftwareKeyboardsForInputMode(v35);
        if ([v39 count])
        {
          if (([v39 containsObject:v37] & 1) == 0)
          {
            v40 = [v39 firstObject];
            v41 = [v36 stringByReplacingOccurrencesOfString:v37 withString:v40];

            v36 = v41;
            v28 = v49;
            v27 = v50;
          }

          v31 = v38;
LABEL_21:
          if (([v27 containsObject:v36] & 1) == 0)
          {
            [v27 addObject:v36];
          }
        }

        else
        {

          v31 = v38;
        }
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
  }

  while (v30);
LABEL_27:

  v42 = v27;
  v5 = v46;
  v4 = v47;
  v11 = v45;
  v8 = 0x1E695D000;
LABEL_29:
  v25 = v42;
  v26 = v48;
  if ([v42 count] || !objc_msgSend(v52, "containsObject:", v5))
  {
    v43 = v25;
  }

  else
  {
    v43 = [*(v8 + 3784) arrayWithObject:v5];
  }

  v24 = v43;

LABEL_34:

  return v24;
}

id UIKeyboardGetSupportedInputModes()
{
  v0 = +[UIKeyboardInputModeController sharedInputModeController];
  v1 = [v0 supportedInputModeIdentifiers];

  return v1;
}

id UIKeyboardGetSuggestedInputModesForLanguage(void *a1, int a2)
{
  v3 = a1;
  v4 = TIGetSuggestedInputModesByLocaleForLanguage();
  v5 = UIKeyboardGetInputModesForLanguage(v4, v3, a2);

  return v5;
}

id UIKeyboardGetSuggestedDefaultInputModesForLanguage(void *a1)
{
  v1 = a1;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || (([objc_opt_self() mainScreen], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "_referenceBounds"), v4 = v3, v2, v4 <= 768.0) || (TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage(), (v5 = objc_claimAutoreleasedReturnValue()) == 0)) && (TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage(), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = TIGetSuggestedDefaultInputModesByLocaleForLanguage();
  }

  v6 = v5;
  v7 = UIKeyboardGetInputModesForLanguage(v5, v1, 1);

  return v7;
}

id UIKeyboardGetSupportedLanguages()
{
  v17 = *MEMORY[0x1E69E9840];
  if (UIKeyboardSupportedLanguages)
  {
    v0 = UIKeyboardSupportedLanguages;
  }

  else
  {
    v1 = [MEMORY[0x1E695DFA8] set];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = UIKeyboardGetSupportedInputModes();
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if (([*(*(&v12 + 1) + 8 * i) isEqualToString:{@"emoji", v12}] & 1) == 0)
          {
            v7 = TIInputModeGetLanguageWithRegion();
            [v1 addObject:v7];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    v8 = [v1 allObjects];
    v9 = [v8 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v10 = UIKeyboardSupportedLanguages;
    UIKeyboardSupportedLanguages = v9;

    v0 = UIKeyboardSupportedLanguages;
  }

  return v0;
}

id UIKeyboardGetSupportedInputModesFromInputModes(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v2 = UIKeyboardGetSupportedInputModes();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = TIInputModeGetComponentsFromIdentifier();
        v9 = TIInputModeGetNormalizedIdentifierFromComponents();
        if ([v2 containsObject:v9])
        {
          v10 = v7;
          v11 = v10;
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v12 = [v8 mutableCopy];
            v11 = UIKeyboardInputModeGetIdentifierFromComponents(v12);
          }

          v13 = [v8 objectForKeyedSubscript:@"sw"];
          v14 = KBStarLayoutString(v10);
          if (([v13 isEqualToString:v14] & 1) == 0)
          {
            v15 = UIKeyboardInputModeWithNewSWLayout(v10, v14);

            v11 = v15;
          }

          if (([v18 containsObject:v11] & 1) == 0)
          {
            [v18 addObject:v11];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  return v18;
}

id UIKeyboardGetDomainForCurrentLocale()
{
  if (!UIKeyboardGetDomainForCurrentLocale___dict)
  {
    v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{@"UK", @"GB", 0}];
    v1 = UIKeyboardGetDomainForCurrentLocale___dict;
    UIKeyboardGetDomainForCurrentLocale___dict = v0;
  }

  v2 = [MEMORY[0x1E695DF58] preferredLocale];
  v3 = [v2 objectForKey:*MEMORY[0x1E695D978]];

  if (v3)
  {
    v4 = [UIKeyboardGetDomainForCurrentLocale___dict objectForKey:v3];
    v5 = v4;
    v6 = MEMORY[0x1E696AEC0];
    if (!v4)
    {
      v4 = v3;
    }

    v7 = [v4 lowercaseString];
    v8 = [v6 stringWithFormat:@".%@", v7];

    v3 = v8;
  }

  return v3;
}

id UIKeyboardGetInputModesSupportingHardwareKeyboard()
{
  v0 = TIGetLanguageSupportForHardwareKeyboard();
  v1 = [v0 objectForKey:@"MatchedModes"];

  return v1;
}

id UIKeyboardGetDefaultInputModeLayoutForHardwareKeyboardWithCountryCode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = TIGetLanguageSupportForHardwareKeyboard();
  v9 = [v8 objectForKey:@"DefaultHWLayouts"];
  v10 = [v9 objectForKey:v5];
  if (!v10)
  {
    v11 = UIKeyboardGetInputModesSupportingHardwareKeyboard();
    if ([v11 containsObject:v5])
    {
      v12 = v5;
    }

    else
    {
      v12 = [v11 firstObject];
      if (v9)
      {
        v13 = [v9 allValues];
        v10 = [v13 firstObject];

        if (v12)
        {
          goto LABEL_8;
        }

        goto LABEL_10;
      }
    }

    v10 = 0;
    if (v12)
    {
LABEL_8:
      if (!v10)
      {
        v14 = TIGetHardwareLayoutsForInputMode();
        v10 = [v14 firstObject];
      }
    }

LABEL_10:
  }

  return v10;
}

id UIKeyboardGetHardwareLayoutFromInputMode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 softwareLayout];
  v9 = TIGetLanguageSupportForHardwareKeyboard();
  v10 = [v9 objectForKey:@"HWLayoutsForSWVariants"];
  v11 = v10;
  if (!v10 || ([v10 objectForKey:v8], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [v5 normalizedIdentifier];
    v12 = UIKeyboardGetDefaultInputModeLayoutForHardwareKeyboardWithCountryCode(v13, v6, v7);
  }

  return v12;
}

id UIKeyboardGetSoftwareLayoutForHardwareKeyboardAndInputMode(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TIGetLanguageSupportForHardwareKeyboard();
  v4 = [v3 objectForKey:@"SWLayoutsForHW"];
  v5 = [v4 objectForKey:v2];
  if (!v5)
  {
    v5 = UIKeyboardGetDefaultSoftwareKeyboardForInputMode(v2);
  }

  return v5;
}

id UIKeyboardGetDefaultHardwareKeyboardLayoutForInputMode(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (UIKeyboardInputModeSoftwareOnly(v1))
  {
    v2 = 0;
  }

  else
  {
    UIKeyboardGetSupportedHardwareKeyboardsForInputMode(v1);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (![v8 isEqualToString:{@"Automatic", v10}])
          {
            v2 = v8;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_13:
  }

  return v2;
}

uint64_t UIKeyboardRequiresFontFallbacksForInputMode()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIGetInputModeProperties();
  v2 = [v1 objectForKey:*MEMORY[0x1E69D97B8]];
  v3 = [v2 BOOLValue];

  return v3;
}

id UIKeyboardFontFallbackLanguageForInputMode()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIGetInputModeProperties();
  v2 = [v1 objectForKey:*MEMORY[0x1E69D97B0]];

  return v2;
}

uint64_t UIKeyboardIsEmojiInputModeActive()
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = UIKeyboardActiveInputModes;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v0);
        }

        if ([*(*(&v7 + 1) + 8 * v4) hasPrefix:{@"emoji", v7}])
        {
          v5 = 1;
          goto LABEL_11;
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

uint64_t UIKeyboardEnabledInputModesAllowChineseTransliterationForText(void *a1)
{
  v1 = a1;
  if ([UIKeyboardActiveInputModes indexOfObjectPassingTest:&__block_literal_global_393_0] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "length") >> 2 > 0x800)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 _containsIdeographicCharacters];
  }

  return v2;
}

uint64_t __UIKeyboardEnabledInputModesAllowChineseTransliterationForText_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = TIInputModeGetLanguage();
  if (([v5 isEqualToString:@"zh"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"yue"))
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t UIKeyboardDeviceSupportsSplit()
{
  if (!_os_feature_enabled_impl() || _os_feature_enabled_impl())
  {
    v0 = +[UIKeyboardImpl keyboardScreen];
    v1 = +[UIKeyboard activeKeyboard];
    v2 = +[UIKBScreenTraits fullScreenTraitsWithScreen:orientation:](UIKBScreenTraits, "fullScreenTraitsWithScreen:orientation:", v0, [v1 interfaceOrientation]);

    v3 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v2, [v2 idiom], 0);
    v4 = (v3 - 23) < 4 || v3 == 1;
    if (v4 && (v3 - 23) >= 2)
    {
      if (+[UIDevice _hasHomeButton])
      {
        if (![v2 isKeyboardMinorEdgeWidth] || (objc_msgSend(v2, "keyboardWidth"), v5 <= 834.0))
        {
          if ([v2 isKeyboardMinorEdgeWidth])
          {
            goto LABEL_14;
          }

          [v2 keyboardWidth];
          if (v6 <= 1112.0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v9 = [v8 preferencesActions];
        [v9 rivenSizeFactor:1.0];
        v11 = v10;

        if (v11 != 1.0)
        {
LABEL_14:
          v7 = 1;
LABEL_18:

          return v7;
        }
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t UIKeyboardSupportsSplit()
{
  v0 = UIKeyboardGetCurrentInputMode();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = +[UIKeyboardInputMode dictationInputMode];
  v2 = [v1 identifier];
  v3 = [v0 isEqualToString:v2];

  if (v3)
  {
    v4 = +[UIDictationController sharedInstance];
    v5 = [v4 currentInputModeForDictation];
    v6 = [v5 identifier];

    v0 = v6;
  }

  if ([v0 rangeOfString:@"HWR"] != 0x7FFFFFFFFFFFFFFFLL || (_UIApplicationIsStickerPickerService() & 1) != 0 || +[UIKeyboard isRemoteEmojiCollectionViewEnabled](UIKeyboard, "isRemoteEmojiCollectionViewEnabled") && (objc_msgSend(v0, "hasPrefix:", @"emoji") & 1) != 0 || _os_feature_enabled_impl() && (+[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", v0), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isMultiscript"), v7, (v8 & 1) != 0) || (TIInputModeGetSWLayout(), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(&unk_1EFE2C268, "containsObject:", v9), v9, (v10 & 1) != 0))
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v11 = UIKeyboardDeviceSupportsSplit();
  }

  return v11;
}

id UIKeyboardSplitTransitionViewClass()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = KBStarLayoutString(v0);
  v2 = UIKeyboardSplitTransitionViewClass___customTransitionViewClasses;
  if (!UIKeyboardSplitTransitionViewClass___customTransitionViewClasses)
  {
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Emoji", @"UIKeyboardFlipTransitionView", @"Kana", @"UIKeyboardFlipTransitionView", @"Kana-Flick", @"UIKeyboardFlipTransitionView", @"Kana-RTL", @"UIKeyboardFlipTransitionView", @"Kana-RTL-Flick", @"UIKeyboardFlipTransitionView", @"Wubihua-Simplified", @"UIKeyboardFlipTransitionView", @"Wubihua-Traditional", 0}];
    v4 = UIKeyboardSplitTransitionViewClass___customTransitionViewClasses;
    UIKeyboardSplitTransitionViewClass___customTransitionViewClasses = v3;

    v2 = UIKeyboardSplitTransitionViewClass___customTransitionViewClasses;
  }

  v5 = [v2 valueForKey:v1];
  v6 = v5;
  v7 = @"UIKeyboardSliceTransitionView";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = _UIKitBundle();
  v10 = [v9 classNamed:v8];

  return v10;
}

uint64_t UIKeyboardSplitTransitionViewSupportsPinch()
{
  v0 = UIKeyboardSplitTransitionViewClass();
  v1 = NSStringFromClass(v0);
  v2 = [v1 isEqualToString:@"UIKeyboardSliceTransitionView"];

  return v2;
}

uint64_t UIKeyboardDynamicKeyboardShouldFallBackToStaticKeyboard(void *a1, void *a2)
{
  v3 = a1;
  v4 = KBStarLayoutString(a2);
  if (!qword_1ED49EF28)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Kana", @"Kana-Flick", @"Kana-RTL", @"Kana-RTL-Flick", @"Korean10Key", @"Wubihua-Simplified", @"Wubihua-Traditional", @"Pinyin10-Simplified", @"Pinyin10-Traditional", 0}];
    v6 = qword_1ED49EF28;
    qword_1ED49EF28 = v5;
  }

  if (!qword_1ED49EF30)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Kana", @"Kana-Flick", @"Kana-RTL", @"Kana-RTL-Flick", 0}];
    v8 = qword_1ED49EF30;
    qword_1ED49EF30 = v7;
  }

  if (!qword_1ED49EF38)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Wubihua-Simplified", @"Wubihua-Traditional", 0}];
    v10 = qword_1ED49EF38;
    qword_1ED49EF38 = v9;
  }

  if ([v3 orientation] - 3) <= 1 && !objc_msgSend(v3, "idiom") && (objc_msgSend(qword_1ED49EF28, "containsObject:", v4) & 1) != 0 || objc_msgSend(v3, "idiom") == 1 && (!+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && (objc_msgSend(qword_1ED49EF30, "containsObject:", v4) & 1) != 0 || +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit") && (objc_msgSend(qword_1ED49EF38, "containsObject:", v4)))
  {
    goto LABEL_20;
  }

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 textInputTraits];
  v13 = [v12 keyboardType];

  if (v13 != 6)
  {
    goto LABEL_19;
  }

  v14 = qword_1ED49EF40;
  if (!qword_1ED49EF40)
  {
    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{@"QWERTY", @"Arabic", @"Bengali", @"Tibetan", 0}];
    v16 = qword_1ED49EF40;
    qword_1ED49EF40 = v15;

    v14 = qword_1ED49EF40;
  }

  if (![v14 containsObject:v4])
  {
LABEL_20:
    v17 = 1;
  }

  else
  {
LABEL_19:
    v17 = 0;
  }

  return v17;
}

BOOL UIKeyboardShouldMatchHeightWithPredictionViewOnLandscapeLargePhoneKeyboard(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = KBStarLayoutString(v1);
    v3 = ([v2 containsString:@"Pinyin10"] & 1) != 0 || (objc_msgSend(v2, "containsString:", @"Kana") & 1) != 0 || (objc_msgSend(v2, "containsString:", @"Wubihua") & 1) != 0 || objc_msgSend(v2, "containsString:", @"HWR");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL UIKeyboardShouldAddMarginOnLandscapeLargePhoneKeyboard(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = KBStarLayoutString(v1);
    v3 = ([v2 containsString:@"Pinyin10"] & 1) != 0 || (objc_msgSend(v2, "containsString:", @"Korean10Key") & 1) != 0 || (objc_msgSend(v2, "containsString:", @"Kana") & 1) != 0 || (objc_msgSend(v2, "containsString:", @"Wubihua") & 1) != 0 || objc_msgSend(v2, "containsString:", @"HWR");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *UIKeyboardPhoneLayoutToUseForCarPlayInputMode(void *a1)
{
  v1 = a1;
  v2 = KBStarLayoutString(v1);
  if (!UIKeyboardCarPlayRequiresTouch())
  {
    if (UIKeyboardLayoutDefaultTypeForInputModeIsSecure(v1))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(__CFString *)v2 isEqualToString:@"Kana-Flick"])
  {

    v2 = @"Kana";
  }

  if ([(__CFString *)v2 isEqualToString:@"Thai-Four-Row"])
  {

    v2 = @"Thai";
  }

  if (-[__CFString hasPrefix:](v2, "hasPrefix:", @"HWR") & 1) != 0 || ([v1 hasPrefix:@"emoji"])
  {
LABEL_10:

    v2 = 0;
  }

LABEL_11:

  return v2;
}

void __UIKeyboardComputeKeyboardIdiomFromScreenTraits_block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 _deviceInfoForKey:@"main-screen-class"];
  v2 = [v1 integerValue];

  byte_1ED49EEA3 = v2 == 28;
}

id UIKeyboardGetKBStarKeyboard(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[UIKeyboardImpl keyboardScreen];
  v5 = +[UIKeyboard activeKeyboard];
  v6 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v4, [v5 interfaceOrientation]);

  v7 = UIKeyboardGetKBStarName(v3, v6, a2, 0);

  v8 = UIKeyboardGetKBStarKeyboardWithName(v7);

  return v8;
}

id UIKeyboardGetKBStarKeyboardWithName(void *a1)
{
  v1 = a1;
  v2 = [getTUIKeyboardLayoutFactoryClass() sharedKeyboardFactory];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v2 keyboardWithName:v1 inCache:v3];

  return v4;
}

BOOL UIKeyboardCarPlayRequiresTouch()
{
  v22 = *MEMORY[0x1E69E9840];
  if (UIKeyboardSupportsTouch)
  {
    if (([UIKeyboardSupportsTouch BOOLValue] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v0 = +[_UICarPlaySession sharedInstance];
    v1 = [(_UICarPlaySession *)v0 currentSession];

    v2 = [v1 configuration];
    v3 = [v2 screens];
    v4 = [v3 firstObject];

    if (v4 && ([v4 availableInteractionModels] & 2) != 0)
    {
      v5 = MEMORY[0x1E695E118];
    }

    else
    {
      v5 = MEMORY[0x1E695E110];
    }

    v6 = UIKeyboardSupportsTouch;
    UIKeyboardSupportsTouch = v5;

    v7 = [UIKeyboardSupportsTouch BOOLValue];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 activeInputModeIdentifiers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (UIKeyboardAlwaysShowCandidateBarForInputMode())
        {

          v15 = 1;
          goto LABEL_20;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  v10 = +[UIKeyboardImpl activeInstance];
  v15 = [v10 requestedInteractionModel] == 1;
LABEL_20:

  return v15;
}

uint64_t UIKeyboardCarPlayIsRightHandDrive()
{
  v0 = UIKeyboardCachedIsRightHandDrive;
  if (UIKeyboardCachedIsRightHandDrive)
  {

    return [v0 BOOLValue];
  }

  else
  {
    v2 = +[_UICarPlaySession sharedInstance];
    v3 = [(_UICarPlaySession *)v2 currentSession];

    v4 = MEMORY[0x1E696AD98];
    v5 = [v3 configuration];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "rightHandDrive")}];
    v7 = UIKeyboardCachedIsRightHandDrive;
    UIKeyboardCachedIsRightHandDrive = v6;

    v8 = [UIKeyboardCachedIsRightHandDrive BOOLValue];
    return v8;
  }
}

void UIKeyboardResetCarPlayInformationCache()
{
  v0 = UIKeyboardSupportsTouch;
  UIKeyboardSupportsTouch = 0;

  v1 = UIKeyboardCachedIsRightHandDrive;
  UIKeyboardCachedIsRightHandDrive = 0;
}

uint64_t UIKeyboardIsFiveRowKeyboard(void *a1)
{
  v1 = a1;
  if (qword_1ED49EF60 != -1)
  {
    dispatch_once(&qword_1ED49EF60, &__block_literal_global_484);
  }

  v2 = [v1 softwareLayout];
  if (v2 && (v3 = v2, v4 = qword_1ED49EF68, [v1 softwareLayout], v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "containsObject:", v5), v5, v3, (v4 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v1 primaryLanguage];
    v8 = [v7 hasPrefix:@"ja"];

    if (v8)
    {
      v9 = [v1 softwareLayout];
      v6 = [v9 isEqualToString:@"QWERTY-Japanese"];
    }

    else
    {
      v10 = [v1 primaryLanguage];
      if ([v10 hasPrefix:@"zh"])
      {
      }

      else
      {
        v11 = [v1 primaryLanguage];
        v12 = [v11 hasPrefix:@"yue"];

        if (!v12)
        {
          v6 = 0;
          goto LABEL_15;
        }
      }

      v9 = [v1 softwareLayout];
      if ([v9 hasPrefix:@"Pinyin10"])
      {
        v6 = 0;
      }

      else
      {
        v13 = [v1 softwareLayout];
        v6 = [v13 hasPrefix:@"Wubihua"] ^ 1;
      }
    }
  }

LABEL_15:

  return v6;
}