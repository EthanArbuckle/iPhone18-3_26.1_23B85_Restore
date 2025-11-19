void OUTLINED_FUNCTION_0_2(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

id PKBrightColorForMerchantCategory(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v1 = 0.976;
        v2 = 0.584;
        v3 = 0.251;
        goto LABEL_17;
      case 2:
        v1 = 0.973;
        v2 = 0.678;
        v3 = 0.0;
        goto LABEL_17;
      case 3:
        v1 = 0.027;
        v2 = 0.729;
        v3 = 0.153;
        goto LABEL_17;
    }

LABEL_13:
    v1 = 0.674509804;
    v2 = 0.776470588;
    v3 = 0.901960784;
    goto LABEL_17;
  }

  if (a1 > 5)
  {
    if (a1 == 7)
    {
      v1 = 0.227;
      v2 = 0.498;
      v3 = 1.0;
      goto LABEL_17;
    }

    if (a1 == 6)
    {
      v2 = 0.369;
      v3 = 0.353;
      v1 = 1.0;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = 0.682;
    v2 = 0.396;
    v3 = 0.976;
  }

  else
  {
    v1 = 0.902;
    v2 = 0.427;
    v3 = 0.843;
  }

LABEL_17:
  v4 = [MEMORY[0x277D75348] colorWithRed:v1 green:v2 blue:v3 alpha:1.0];

  return v4;
}

void PKCategoryVisualizationRendererStateDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }
}

void *PKTextureLoaderResultCreateDefaultPrivate2DTexture(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5 && v6)
  {
    if (*(a1 + 32))
    {
      v9 = *a1;
      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CD7058]);
        [v10 setPixelFormat:*(a1 + 32)];
        [v10 setStorageMode:2];
        [v10 setWidth:*(a1 + 8)];
        [v10 setHeight:*(a1 + 16)];
        v8 = [v5 newTextureWithDescriptor:v10];
        if (v8)
        {
          v11 = *(a1 + 24);
          v12 = [v9 length];
          memset(v15, 0, sizeof(v15));
          v16 = *(a1 + 8);
          v17 = 1;
          [v7 copyFromBuffer:v9 sourceOffset:0 sourceBytesPerRow:v11 sourceBytesPerImage:v12 sourceSize:&v16 toTexture:v8 destinationSlice:0 destinationLevel:0 destinationOrigin:v15];
          v13 = v8;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

BOOL OUTLINED_FUNCTION_9(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

void OUTLINED_FUNCTION_11()
{

  JUMPOUT(0x25F8AB170);
}

void sub_25E0AD980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0ADF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0AE9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id PKIconWithImageAndBackgroundColor(id a1, void *a2, int a3, CGFloat a4, CGFloat a5, double a6)
{
  v6 = a1;
  if (a1)
  {
    v12 = a1;
    v13 = a2;
    v14 = [v6 CGImage];
    v15 = [v13 CGColor];

    v16 = ImageRefFromResizedImageAndBackgroundColor(v14, v15, a3, a4, a5, a6);
    if (v16)
    {
      v17 = v16;
      v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v16];
      CGImageRelease(v17);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

CGImage *ImageRefFromResizedImageAndBackgroundColor(CGImageRef image, CGColor *a2, int a3, CGFloat a4, CGFloat a5, double a6)
{
  v6 = image;
  if (!image)
  {
    return v6;
  }

  v13 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  CGImageGetWidth(image);
  v14 = a5 / (CGImageGetHeight(v6) / a6);
  if (v14 > 1.0)
  {
    PKFloatCeilToPixelWithScale();
    PKFloatCeilToPixelWithScale();
LABEL_10:
    v18 = *MEMORY[0x277D385C0];
    PKSizeAlignedInRectWithScale();
    v13 = v19;
    v12 = v20;
    v17 = v21;
    v16 = v22;
    goto LABEL_11;
  }

  if (v14 > 0.5 && a3 != 0)
  {
    PKFloatCeilToPixelWithScale();
    goto LABEL_10;
  }

  v16 = a5;
  v17 = a4;
LABEL_11:
  v26.width = a4;
  v26.height = a5;
  v23 = PKCreateBitmapContext(v26, 0, a6, 0);
  v24 = v23;
  if (a2)
  {
    CGContextSetFillColorWithColor(v23, a2);
  }

  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = a4;
  v27.size.height = a5;
  CGContextFillRect(v24, v27);
  v28.origin.x = v13;
  v28.origin.y = v12;
  v28.size.width = v17;
  v28.size.height = v16;
  CGContextDrawImage(v24, v28, v6);
  v6 = CGBitmapContextCreateImage(v24);
  if (v24)
  {
    CGContextRelease(v24);
  }

  return v6;
}

id PKMapsStylingInfoForMerchant(void *a1)
{
  v1 = a1;
  if ([v1 useRawMerchantData])
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = [v1 mapsMerchant];
    v5 = [v1 mapsBrand];
    v3 = [v4 stylingInfo];
    v2 = [v5 stylingInfo];
  }

  v6 = PKMapsStylingInfoForMerchantCategory();
  if (v3 && (PKEqualObjects() & 1) == 0)
  {
    v7 = v3;
  }

  else if (v2 && (PKEqualObjects() & 1) == 0)
  {
    v7 = v2;
  }

  else
  {
    [v1 category];
    v7 = PKMapsStylingInfoForMerchantCategory();
  }

  v8 = v7;

  return v8;
}

id PKMapsStylingInfoForMerchantCategory()
{
  v0 = [MEMORY[0x277CD4EA0] sharedService];
  v1 = PKMerchantCategoryToString();
  v2 = [v0 stylingForWalletCategory:v1];

  return v2;
}

id PKMapsColorForMerchantCategory(double a1)
{
  v2 = PKMapsStylingInfoForMerchantCategory();
  v3 = [v2 tintColorForScale:a1];

  if (!v3)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.674509804 green:0.776470588 blue:0.901960784 alpha:1.0];
  }

  return v3;
}

id PKMapsColorForMerchant(void *a1, double a2)
{
  [a1 category];

  return PKMapsColorForMerchantCategory(a2);
}

id PKMapsIconForMerchantCategory(CGFloat a1, CGFloat a2, double a3, uint64_t a4, int a5, int a6)
{
  v11 = PKMapsStylingInfoForMerchantCategory();
  v12 = PKMapsIconFromStylingInfo(v11, 0, a5, a6, a1, a2, a3);

  if (!v12)
  {
    if (a5)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      PKMapsColorForMerchantCategory(a3);
    }
    v13 = ;
    v12 = PKIconForGenericBusiness(v13, a1, a2, a3);
  }

  return v12;
}

id PKMapsIconFromStylingInfo(void *a1, void *a2, char a3, int a4, CGFloat a5, CGFloat a6, double a7)
{
  v13 = a1;
  v14 = a2;
  v15 = [v13 imageForSize:4 scale:1 transparent:a7];
  if (a3)
  {
    v16 = [MEMORY[0x277D75348] clearColor];
  }

  else if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v13 tintColorForScale:a7];
  }

  v17 = v16;
  v18 = ImageRefFromResizedImageAndBackgroundColor([v15 CGImage], objc_msgSend(v16, "CGColor"), a4, a5, a6, a7);
  if (v18)
  {
    v19 = v18;
    v20 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v18 scale:0 orientation:a7];
    CGImageRelease(v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id PKIconForGenericBusiness(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  v7 = a1;
  v8 = PKIconForPDFName(@"GenericBusinessIcon", a2, a3, a4);
  v9 = [MEMORY[0x277D75348] whiteColor];
  v10 = ImageOverlaidWithColor(v8, v9, a2, a3, a4);

  v11 = PKIconWithImageAndBackgroundColor(v10, v7, 0, a2, a3, a4);

  return v11;
}

id PKMapsIconForTransaction(void *a1, int a2, int a3, int a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = [v13 merchant];
  v15 = [v13 effectiveTransactionCategory];

  v16 = PKMapsIconForTransactionCategory(a5, a6, a7, v15, v14, a2, a3, a4);

  return v16;
}

id PKMapsIconForTransactionCategory(double a1, double a2, double a3, uint64_t a4, void *a5, int a6, int a7, int a8)
{
  v14 = a5;
  v15 = [v14 adamIdentifier];
  v16 = 0;
  if (a8 && v15 >= 1)
  {
    v16 = PKIconForAdamIdentifier(v15, a1, a2, a3);
  }

  v17 = PKMapsColorForMerchantCategory(a3);
  if (!v16)
  {
    [v14 category];
    v18 = PKMapsStylingInfoForMerchantCategory();
    v19 = PKMapsStylingInfoForMerchant(v14);
    v16 = PKMapsIconFromStylingInfo(v19, v17, a6, a7, a1, a2, a3);

    if (v16)
    {
      goto LABEL_6;
    }

    v16 = PKMapsIconFromStylingInfo(v18, v17, a6, a7, a1, a2, a3);

    if (!v16)
    {
      v18 = v17;
      if (a6)
      {
        v18 = [MEMORY[0x277D75348] clearColor];
      }

      v16 = PKIconForGenericBusiness(v18, a1, a2, a3);
      if (a6)
      {
LABEL_6:
      }
    }
  }

  return v16;
}

id PKMapsIconForMerchant(void *a1, int a2, int a3, int a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = PKMapsIconForTransactionCategory(a5, a6, a7, [v13 category], v13, a2, a3, a4);

  return v14;
}

id PKIconForPDFName(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  v7 = a1;
  v8 = PKPassKitUIBundle();
  v9 = [v8 URLForResource:v7 withExtension:@"pdf"];

  if (v9 && (v10 = CGPDFDocumentCreateWithURL(v9)) != 0)
  {
    v11 = v10;
    v17.width = a2;
    v17.height = a3;
    v12 = PKCreateCGImage(v10, v17, a4);
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x277D755B8] imageWithCGImage:v12 scale:0 orientation:a4];
      CGImageRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    CGPDFDocumentRelease(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id ImageOverlaidWithColor(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a2;
  v10 = a1;
  v15.width = a3;
  v15.height = a4;
  UIGraphicsBeginImageContextWithOptions(v15, 0, a5);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v10 drawInRect:{0.0, 0.0, a3, a4}];

  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceAtop);
  [v9 setFill];

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a3;
  v16.size.height = a4;
  CGContextFillRect(CurrentContext, v16);
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

id PKIconForBundleIdentifier(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  if ([v7 length])
  {
    v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:0 error:0];
    v9 = PKIconForRecord(v8, a2, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id PKIconForRecord(void *a1, double a2, double a3, double a4)
{
  if (a1)
  {
    v7 = MEMORY[0x277D1B1C8];
    v8 = a1;
    v9 = [[v7 alloc] initWithSize:a2 scale:{a3, a4}];
    [v9 setDrawBorder:0];
    [v9 setShouldApplyMask:0];
    [v9 setShape:0xFFFFFFFFLL];
    v10 = objc_alloc(MEMORY[0x277D1B1A8]);
    v11 = [v8 URL];

    v12 = [v10 initWithURL:v11];
    v13 = [v12 prepareImageForDescriptor:v9];
    v14 = v13;
    if (v13)
    {
      v15 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v13, "CGImage")}];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id PKIconForApplicationIdentifier(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  if ([v7 length])
  {
    v8 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v7 error:0];
    v9 = v8;
    if (v8)
    {
      v10 = PKIconForRecord(v8, a2, a3, a4);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id PKIconForAdamIdentifier(uint64_t a1, double a2, double a3, double a4)
{
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithStoreItemIdentifier:a1 error:0];
  v8 = v7;
  if (v7)
  {
    v9 = PKIconForRecord(v7, a2, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id PKIconForRewardsRedemption(CGFloat a1, CGFloat a2, CGFloat a3)
{
  v6 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:0.105882353 blue:0.105882353 alpha:1.0];
  v7 = PKIconForSystemImageName(@"star.circle.fill", v6, a1, a2, a3);

  return v7;
}

id PKIconForSystemImageName(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = MEMORY[0x277D755B8];
  v10 = a2;
  v11 = [v9 systemImageNamed:a1];
  v12 = [v10 CGColor];

  [v11 size];
  [v11 alignmentRectInsets];
  PKSizeScaleAspectFit();
  v34 = v14;
  v35 = v13;
  PKSizeRoundToPixelWithScale();
  v16 = v15;
  v18 = v17;
  PKFloatRoundToPixelWithScale();
  v33 = v19;
  PKFloatRoundToPixelWithScale();
  v21 = v20;
  v22 = [MEMORY[0x277D75348] whiteColor];
  v23 = ImageOverlaidWithColor(v11, v22, v16, v18, a5);
  v24 = [v23 CGImage];

  v25 = *MEMORY[0x277CBF348];
  v26 = *(MEMORY[0x277CBF348] + 8);
  v37.width = a3;
  v37.height = a4;
  v27 = PKCreateBitmapContext(v37, 0, a5, 0);
  CGContextSetFillColorWithColor(v27, v12);
  v38.origin.x = v25;
  v38.origin.y = v26;
  v38.size.width = a3;
  v38.size.height = a4;
  CGContextFillRect(v27, v38);
  v28 = *MEMORY[0x277D385C0];
  PKSizeAlignedInRectWithScale();
  CGContextDrawImage(v27, v39, v24);
  Image = CGBitmapContextCreateImage(v27);
  if (v27)
  {
    CGContextRelease(v27);
  }

  if (Image)
  {
    v30 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:Image scale:0 orientation:a5];
    CGImageRelease(Image);
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 imageWithAlignmentRectInsets:{v21, v33, v18 - v34 - v21, v16 - v35 - v33}];

  return v31;
}

id PKCurrencyCodeForTransitTransactionIcon(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 currencyCode];
  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v1 amounts];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) amount];
        v2 = [v8 currency];

        if (v2)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v2 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id PKStyleAttributesForTransitType(uint64_t a1)
{
  v2 = 0;
  if (a1 > 7)
  {
    if (a1 > 259)
    {
      if (a1 <= 1024)
      {
        if (a1 == 260)
        {
          v3 = MEMORY[0x277D0EB18];
          v4 = 4;
        }

        else
        {
          if (a1 != 261)
          {
            goto LABEL_28;
          }

          v3 = MEMORY[0x277D0EB18];
          v4 = 8;
        }

        goto LABEL_27;
      }

      if (a1 != 1025)
      {
        if (a1 != 1026)
        {
          goto LABEL_28;
        }

LABEL_23:
        v3 = MEMORY[0x277D0EB18];
        v4 = 10;
        goto LABEL_27;
      }

LABEL_24:
      v2 = [MEMORY[0x277D0EB18] trainStationStyleAttributes];
      goto LABEL_28;
    }

    if ((a1 - 257) >= 2)
    {
      if (a1 == 8)
      {
        v3 = MEMORY[0x277D0EB18];
        v4 = 3;
      }

      else
      {
        if (a1 != 259)
        {
          goto LABEL_28;
        }

        v3 = MEMORY[0x277D0EB18];
        v4 = 11;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      if (a1 >= 2)
      {
        if (a1 != 2)
        {
          if (a1 != 3)
          {
            goto LABEL_28;
          }

          v3 = MEMORY[0x277D0EB18];
          v4 = 0;
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if ((a1 - 5) < 2)
    {
      goto LABEL_24;
    }

    if (a1 != 4)
    {
      if (a1 != 7)
      {
        goto LABEL_28;
      }

      v3 = MEMORY[0x277D0EB18];
      v4 = 1;
      goto LABEL_27;
    }
  }

  v3 = MEMORY[0x277D0EB18];
  v4 = 9;
LABEL_27:
  v2 = [v3 styleAttributesForTransitType:v4];
LABEL_28:

  return v2;
}

id PKIconForTransitTransaction(char a1, CGFloat a2, CGFloat a3, double a4)
{
  v8 = [MEMORY[0x277D0EB18] trainStationStyleAttributes];
  v9 = PKIconForStyleAttributes(v8, a1, a2, a3, a4);

  return v9;
}

id PKIconForStyleAttributes(void *a1, char a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = MEMORY[0x277CD4E08];
  v10 = a1;
  v11 = [v9 newFillColorForStyleAttributes:v10 forScale:a5];
  if (a2)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithCGColor:v11];
  }
  v12 = ;
  v13 = [MEMORY[0x277CD4E08] imageForStyle:v10 size:4 forScale:0 format:1 transparent:a5];

  if (v11)
  {
    CGColorRelease(v11);
  }

  v14 = PKIconWithImageAndBackgroundColor(v13, v12, 0, a3, a4, a5);

  return v14;
}

id PKIconForTopUpWithCurrency(void *a1, char a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = [a1 uppercaseString];
  if ([v9 isEqualToString:@"JPY"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"CNY"))
  {
    v10 = @"YenYuanTopUpIcon";
  }

  else if ([v9 isEqualToString:@"USD"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"HKD") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"AUD") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"CAD") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"NZD"))
  {
    v10 = @"DollarTopUpIcon";
  }

  else if ([v9 isEqualToString:@"KRW"])
  {
    v10 = @"WonTopUpIcon";
  }

  else
  {
    v10 = @"GenericCurrencyTopUpIcon";
  }

  v11 = PKIconForPDFName(v10, a3, a4, a5);
  if (a2)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v12 = ;
  v13 = PKIconWithImageAndBackgroundColor(v11, v12, 0, a3, a4, a5);

  return v13;
}

id PKIconForTransitCardRead(char a1, CGFloat a2, CGFloat a3, double a4)
{
  v8 = PKIconForPDFName(@"CardReadTransactionIcon", a2, a3, a4);
  v9 = [MEMORY[0x277D75348] whiteColor];
  v10 = ImageOverlaidWithColor(v8, v9, a2, a3, a4);

  if (a1)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithRed:0.435294122 green:0.509803951 blue:0.701960802 alpha:1.0];
  }
  v11 = ;
  v12 = PKIconWithImageAndBackgroundColor(v10, v11, 0, a2, a3, a4);

  return v12;
}

id PKIconForFKCategory(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  switch(a1)
  {
    case 1:
      v7 = 1;
      goto LABEL_15;
    case 2:
      v7 = 2;
      goto LABEL_15;
    case 3:
      v7 = 3;
      goto LABEL_15;
    case 4:
      v7 = 4;
      goto LABEL_15;
    case 5:
      v7 = 5;
      goto LABEL_15;
    case 6:
      v7 = 6;
      goto LABEL_15;
    case 7:
      v7 = 7;
      goto LABEL_15;
    case 8:
      v8 = [MEMORY[0x277D75348] colorWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
      v9 = @"bolt.house.fill";
      goto LABEL_13;
    case 10:
      v8 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:0.105882353 blue:0.105882353 alpha:1.0];
      v9 = @"banknote";
      goto LABEL_13;
    case 11:
      v8 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:0.105882353 blue:0.105882353 alpha:1.0];
      v9 = @"arrow.uturn.backward";
      goto LABEL_13;
    case 12:
      v8 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:0.105882353 blue:0.105882353 alpha:1.0];
      v9 = @"arrow.left.arrow.right";
LABEL_13:
      v10 = PKIconForSystemImageName(v9, v8, a2, a3, a4);

      break;
    default:
      v7 = 0;
LABEL_15:
      v10 = PKMapsIconForMerchantCategory(a2, a3, a4, v7, 0, 0);
      break;
  }

  return v10;
}

id PKColorForFKCategory(uint64_t a1, double a2)
{
  if (a1 == 8)
  {
    [MEMORY[0x277D75348] colorWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  }

  else
  {
    PKMapsColorForMerchantCategory(a2);
  }
  v2 = ;

  return v2;
}

id PKIconForFKManuallyExcluded(CGFloat a1, CGFloat a2, CGFloat a3)
{
  v6 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:0.105882353 blue:0.105882353 alpha:1.0];
  v7 = PKIconForSystemImageName(@"slash.circle", v6, a1, a2, a3);

  return v7;
}

id PKBrightColorForFKCategory()
{
  v0 = PKMerchantCategoryFromFKPaymentTransactionCategory();

  return PKBrightColorForMerchantCategory(v0);
}

void sub_25E0B54B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0B6128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _LAPolicyContainerForPKPolicy(uint64_t a1)
{
  if (a1 <= 4)
  {
    v3 = 1005;
    v4 = 1006;
    v5 = 1005;
    if (a1 != 4)
    {
      v5 = 0;
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v6 = 1004;
    v7 = 2;
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    if (a1 <= 1)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    if (a1 > 7)
    {
      if (a1 == 8)
      {
        PKUserIntentIsAvailable();
        return 1015;
      }

      v1 = 1004;
      if (a1 != 10)
      {
        v1 = 0;
      }

      v2 = a1 == 9;
    }

    else
    {
      v1 = 0;
      v2 = a1 == 5;
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }
}

void sub_25E0B7C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak((v36 + 56));
  objc_destroyWeak((v35 + 56));
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v37 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E0B8BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _AccessPreflightContext(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a2;
    os_unfair_lock_lock(&_AccessPreflightContext_lock);
    v4 = CACurrentMediaTime();
    v5 = _AccessPreflightContext_context;
    if (!_AccessPreflightContext_context || (v6 = *&_AccessPreflightContext_lastCreatedTime, v7 = [_AccessPreflightContext_context useLocationBasedAuthorization], (v5 = _AccessPreflightContext_context) == 0) || ((v8 = v7 ^ a1, v4 - v6 < 5.0) ? (v9 = v8 == 0) : (v9 = 0), !v9))
    {
      [v5 invalidate];
      _AccessPreflightContext_lastCreatedTime = *&v4;
      v10 = [[PKAuthenticatorPreflightContext alloc] initForLocationBasedAuthorization:a1];
      v11 = _AccessPreflightContext_context;
      _AccessPreflightContext_context = v10;

      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v24 = _AccessPreflightContext_context;
        _os_log_impl(&dword_25E0A9000, v12, OS_LOG_TYPE_DEFAULT, "PKAuthenticator (%{public}p): creating preflight context.", buf, 0xCu);
      }

      v5 = _AccessPreflightContext_context;
    }

    v13 = v5;
    [v13 incrementValidReferenceCount];
    os_unfair_lock_unlock(&_AccessPreflightContext_lock);
    v14 = [objc_alloc(MEMORY[0x277D37E60]) initWithBlock:&__block_literal_global_612];
    v15 = [v13 context];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___AccessPreflightContext_block_invoke_2;
    v20[3] = &unk_2799FFCD8;
    v21 = v14;
    v22 = v13;
    v16 = v3[2];
    v17 = v13;
    v18 = v14;
    v16(v3, v15, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void _AccessAuthenticatorStateCache(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v4 = v1;
    os_unfair_lock_lock(&_AccessAuthenticatorStateCache_lock);
    if (!_AccessAuthenticatorStateCache_cache)
    {
      v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v3 = _AccessAuthenticatorStateCache_cache;
      _AccessAuthenticatorStateCache_cache = v2;
    }

    v4[2]();
    os_unfair_lock_unlock(&_AccessAuthenticatorStateCache_lock);
    v1 = v4;
  }
}

void sub_25E0BC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0BCBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0BD6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0BDC50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25E0BF204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MatchLayerGeometry(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a2;
      v4 = a1;
      [v3 transform];
      [v4 setTransform:&v6];
      [v3 anchorPoint];
      [v4 setAnchorPoint:?];
      [v3 position];
      [v4 setPosition:?];
      [v3 bounds];
      [v4 setBounds:?];
      v5 = [v3 isGeometryFlipped];

      [v4 setGeometryFlipped:v5];
    }
  }
}

id CloneShapeLayer(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CD9F90];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    [v2 bounds];
    [v3 setBounds:?];
    [v2 position];
    [v3 setPosition:?];
    [v2 anchorPoint];
    [v3 setAnchorPoint:?];
    [v2 opacity];
    [v3 setOpacity:?];
    [v2 transform];
    [v3 setTransform:&v9];
    [v3 setGeometryFlipped:{objc_msgSend(v2, "isGeometryFlipped")}];
    [v3 setPath:{objc_msgSend(v2, "path")}];
    [v3 setFillColor:{objc_msgSend(v2, "fillColor")}];
    v4 = [v2 fillRule];
    [v3 setFillRule:v4];

    v5 = [v2 lineCap];
    [v3 setLineCap:v5];

    v6 = [v2 lineJoin];
    [v3 setLineJoin:v6];

    [v2 lineWidth];
    [v3 setLineWidth:?];
    [v2 miterLimit];
    [v3 setMiterLimit:?];
    [v3 setStrokeColor:{objc_msgSend(v2, "strokeColor")}];
    [v2 strokeStart];
    [v3 setStrokeStart:?];
    [v2 strokeEnd];
    [v3 setStrokeEnd:?];
    v7 = [v2 actions];

    [v3 setActions:v7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_25E0C1334(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25E0C17B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E0C2DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0C3620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKTextureLoaderResultGetSRGBMatchedFormat(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = *(result + 40);
  if (!result)
  {
    return result;
  }

  v2 = *(v1 + 32);
  if (((v2 - 30) > 0x32 || ((1 << (v2 - 30)) & 0x4010000000001) == 0) && v2 != 10)
  {
    return 0;
  }

  Name = CGColorSpaceGetName(result);
  if (Name)
  {
    v6 = Name;
    if (CFStringCompare(Name, *MEMORY[0x277CBF4B8], 0) == kCFCompareEqualTo)
    {
      goto LABEL_15;
    }

    if (CFStringCompare(v6, *MEMORY[0x277CBF4A8], 0) == kCFCompareEqualTo)
    {
      return *(v1 + 32);
    }
  }

  v7 = *(v1 + 40);
  v8 = PKColorSpaceStandardRGB();
  if (!CFEqual(v7, v8))
  {
    v10 = *(v1 + 40);
    v11 = PKColorSpaceStandardLinearRGB();
    if (!CFEqual(v10, v11))
    {
      return 0;
    }

    return *(v1 + 32);
  }

LABEL_15:
  v9 = *(v1 + 32);
  if (v9 > 69)
  {
    if (v9 != 70)
    {
      if (v9 == 80)
      {
        return 81;
      }

      return 0;
    }

    return 71;
  }

  else
  {
    if (v9 != 10)
    {
      if (v9 == 30)
      {
        return 31;
      }

      return 0;
    }

    return 11;
  }
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

__n128 PKCategoryVisualizationRendererStateCopy@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  bzero((a2 + 16), 0x27C0uLL);
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 8) = v4;
  v5 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  v7 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v7;
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  *(a2 + 288) = *(a1 + 288);
  *(a2 + 10160) = *(a1 + 10160);
  *(a2 + 10168) = *(a1 + 10168);
  *(a2 + 10176) = *(a1 + 10176);
  *(a2 + 10180) = *(a1 + 10180);
  v9 = *(a1 + 240);
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = v9;
  v10 = *(a1 + 272);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 272) = v10;
  v11 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v11;
  v12 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v12;
  __memcpy_chk();
  v13 = malloc_type_malloc(8 * v4, 0xF3BD541CuLL);
  *(a2 + 16) = v13;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 8);
    do
    {
      v17 = *v15++;
      *v13++ = v17;
      --v16;
    }

    while (v16);
  }

  *(a2 + 24) = malloc_type_malloc(16 * v14, 0x1000040451B5BE8uLL);
  if (*(a1 + 8))
  {
    v19 = 0;
    do
    {
      result = *(*(a1 + 24) + 16 * v19);
      *(*(a2 + 24) + 16 * v19++) = result;
    }

    while (v19 < *(a1 + 8));
  }

  return result;
}

uint64_t PKCompareCircleDataByCreated(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  v3 = *(a2 + 28);
  if (v2 < v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void sub_25E0CA8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak((v37 - 112));
  _Unwind_Resume(a1);
}

void sub_25E0CB980(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void LayerApplyColor(void *a1, void *a2, char a3, int a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [v8 presentationLayer];
  v11 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  LayerApplyColor(v8, v10, v7, a3, a4);
}

void ShapeLayerApplyColor(void *a1, void *a2, char a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 presentationLayer];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v23 = v7;
  v12 = v11;
  v13 = v8;
  if (v13)
  {
    if ((a3 & 4) != 0)
    {
      v14 = CGColorRetain([v23 strokeColor]);
      v15 = CGColorRetain([v12 strokeColor]);
      v16 = [v13 colorWithAlphaComponent:CGColorGetAlpha(v14)];
      v17 = CGColorRetain([v16 CGColor]);

      if (a4)
      {
        LayerAnimateColor(v23, @"strokeColor", v15, v17);
      }

      [v23 setStrokeColor:v17];
      CGColorRelease(v14);
      CGColorRelease(v15);
      CGColorRelease(v17);
    }

    v18 = v23;
    if ((a3 & 8) != 0)
    {
      v19 = CGColorRetain([v23 fillColor]);
      v20 = CGColorRetain([v12 fillColor]);
      v21 = [v13 colorWithAlphaComponent:CGColorGetAlpha(v19)];
      v22 = CGColorRetain([v21 CGColor]);

      if (a4)
      {
        LayerAnimateColor(v23, @"fillColor", v20, v22);
      }

      [v23 setFillColor:v22];
      CGColorRelease(v19);
      CGColorRelease(v20);
      CGColorRelease(v22);
      v18 = v23;
    }

    LayerApplyColor(v18, v12, v13, a3, a4);
  }
}

void sub_25E0CFCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0CFF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void LayerApplyColor(void *a1, void *a2, void *a3, char a4, int a5)
{
  v19 = a1;
  v9 = a2;
  v10 = a3;
  if (v10)
  {
    if (a4)
    {
      v11 = CGColorRetain([v19 backgroundColor]);
      v12 = CGColorRetain([v9 backgroundColor]);
      v13 = [v10 colorWithAlphaComponent:CGColorGetAlpha(v11)];
      v14 = CGColorRetain([v13 CGColor]);

      if (a5)
      {
        LayerAnimateColor(v19, @"backgroundColor", v12, v14);
      }

      [v19 setBackgroundColor:v14];
      CGColorRelease(v11);
      CGColorRelease(v12);
      CGColorRelease(v14);
    }

    if ((a4 & 2) != 0)
    {
      v15 = CGColorRetain([v19 borderColor]);
      v16 = CGColorRetain([v9 borderColor]);
      v17 = [v10 colorWithAlphaComponent:CGColorGetAlpha(v15)];
      v18 = CGColorRetain([v17 CGColor]);

      if (a5)
      {
        LayerAnimateColor(v19, @"borderColor", v16, v18);
      }

      [v19 setBorderColor:v18];
      CGColorRelease(v15);
      CGColorRelease(v16);
      CGColorRelease(v18);
    }
  }
}

void LayerAnimateColor(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  [v8 removeAnimationForKey:v7];
  v9 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:v7];
  [v9 setAdditive:0];
  [v9 setFromValue:a3];
  [v9 setToValue:a4];
  [v8 addAnimation:v9 forKey:v7];
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}