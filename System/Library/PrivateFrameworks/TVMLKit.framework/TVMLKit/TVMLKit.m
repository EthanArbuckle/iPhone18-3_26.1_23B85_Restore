void sub_26CD9DE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v75 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v74 + 32));
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x250]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak(&STACK[0x2C8]);
  objc_destroyWeak(&STACK[0x2F0]);
  objc_destroyWeak(&STACK[0x318]);
  objc_destroyWeak(&STACK[0x340]);
  objc_destroyWeak((v76 - 200));
  objc_destroyWeak((v76 - 160));
  objc_destroyWeak((v76 - 120));
  objc_destroyWeak((v76 - 112));
  _Unwind_Resume(a1);
}

void sub_26CD9FCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t TVShouldConstrainToPortait()
{
  if (TVShouldConstrainToPortait_sOnceToken != -1)
  {
    TVShouldConstrainToPortait_cold_1();
  }

  return TVShouldConstrainToPortait_tvConstrainToPortrait;
}

uint64_t __TVShouldConstrainToPortait_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = MGGetSInt32Answer();
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 fixedCoordinateSpace];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  Width = CGRectGetWidth(v18);
  result = MGGetBoolAnswer();
  if (v1)
  {
    v15 = 0;
  }

  else
  {
    v17 = Width < 375.0 || v2 == 5;
    v15 = v17 & ~result;
  }

  TVShouldConstrainToPortait_tvConstrainToPortrait = v15;
  return result;
}

CGFloat _TVMLRectWithFlippedOriginRelativeToBoundingRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
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

CGFloat _TVMLRectMakeWithDirectionalOriginRelativeToBoundingRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
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

double TVRowMetricsMakeWithCellMetrics@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 48);
  *(a2 + 24) = *(a1 + 32);
  *(a2 + 32) = v2;
  v3 = *(a1 + 80);
  *(a2 + 40) = *(a1 + 64);
  *(a2 + 48) = v3;
  v4 = *(a1 + 112);
  *(a2 + 56) = *(a1 + 96);
  *(a2 + 64) = v4;
  result = *(a1 + 128);
  *(a2 + 72) = result;
  return result;
}

void TVRowMetricsMakeWithList(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x7010000000;
  v16 = &unk_26CE937F5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 firstObject];
  v5 = v4;
  if (v4)
  {
    [v4 tv_rowMetricsValue];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __TVRowMetricsMakeWithList_block_invoke;
  v10[3] = &unk_279D6E4F0;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v14;
  v8 = *(v14 + 5);
  a2[2] = *(v14 + 4);
  a2[3] = v8;
  a2[4] = *(v7 + 6);
  v9 = *(v7 + 3);
  *a2 = *(v7 + 2);
  a2[1] = v9;

  _Block_object_dispose(&v13, 8);
}

void sub_26CDA6954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __TVRowMetricsMakeWithList_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = 0;
    if (v5)
    {
      [v5 tv_rowMetricsValue];
    }

    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + 0.0;
    if ([*(a1 + 32) count] - 1 == a3)
    {
      *(*(*(a1 + 40) + 8) + 56) = 0;
      *(*(*(a1 + 40) + 8) + 72) = 0;
      *(*(*(a1 + 40) + 8) + 88) = 0;
      *(*(*(a1 + 40) + 8) + 104) = 0;
    }
  }
}

uint64_t TVCellMetricsEqualToCellMetrics(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1->f64[0] == a2->f64[0] && a1->f64[1] == a2->f64[1];
  if (v2 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[3], a2[3]), vceqq_f64(a1[4], a2[4])))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[5], a2[5]), vceqq_f64(a1[6], a2[6])))) & 1) != 0)
  {
    v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[7], a2[7]), vceqq_f64(a1[8], a2[8]))));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_26CDA9898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26CDAA480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26CDAB410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __textImageUnicodeImageMapping_block_invoke()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v2[0] = @"􀥆";
  v2[1] = @"􀥇";
  v3[0] = @"house.circle";
  v3[1] = @"house.circle.fill";
  v2[2] = @"􀎳";
  v2[3] = @"􀎴";
  v3[2] = @"tv.circle";
  v3[3] = @"tv.circle.fill";
  v2[4] = @"􀍉";
  v2[5] = @"􀍋";
  v3[4] = @"video";
  v3[5] = @"video.circle";
  v2[6] = @"􀍌";
  v2[7] = @"􀒩";
  v3[6] = @"video.circle.fill";
  v3[7] = @"mic.circle";
  v2[8] = @"􀒪";
  v3[8] = @"mic.circle.fill";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = textImageUnicodeImageMapping_mapping;
  textImageUnicodeImageMapping_mapping = v0;
}

void sub_26CDAEDAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_26CDAF190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CDAF3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SizeClassString(uint64_t a1)
{
  if (SizeClassString_onceToken != -1)
  {
    SizeClassString_cold_1();
  }

  v2 = SizeClassString_sizeClassStrings;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unspecified";
  }

  v7 = v6;

  return v6;
}

void __getAMSUIDynamicViewControllerClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSUIDynamicViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUIDynamicViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSUIDynamicViewControllerClass_block_invoke_cold_1();
    AppleMediaServicesUILibrary();
  }
}

void AppleMediaServicesUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279D6E7B8;
    v3 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSUIMarketingItemViewControllerClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesUILibrary();
  result = objc_getClass("AMSUIMarketingItemViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUIMarketingItemViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAMSUIMarketingItemViewControllerClass_block_invoke_cold_1();
    return __UserInterfaceString_block_invoke(v3);
  }

  return result;
}

void __UserInterfaceString_block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_287E47D48;
  v2[1] = &unk_287E47D60;
  v3[0] = @"phone";
  v3[1] = @"pad";
  v2[2] = &unk_287E47D78;
  v2[3] = &unk_287E47D90;
  v3[2] = @"tv";
  v3[3] = @"carPlay";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = UserInterfaceString_userInterfaceStrings;
  UserInterfaceString_userInterfaceStrings = v0;
}

void __SizeClassString_block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_287E47D60;
  v2[1] = &unk_287E47D78;
  v3[0] = @"compact";
  v3[1] = @"regular";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = SizeClassString_sizeClassStrings;
  SizeClassString_sizeClassStrings = v0;
}

void sub_26CDB4258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CDB4E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDBDEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double ImpressionableRectVisibleFactor(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  Width = CGRectGetWidth(*&a1);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v16 = Width * CGRectGetHeight(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  v17 = CGRectGetWidth(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  return v16 / (v17 * CGRectGetHeight(v22));
}

uint64_t ActuallyVisibleView(void *a1)
{
  v1 = a1;
  if (([v1 isHidden] & 1) != 0 || (objc_msgSend(v1, "alpha"), v2 == 0.0))
  {
    v3 = 0;
  }

  else
  {
    v5 = [v1 superview];
    if (v5)
    {
      v6 = v5;
      while (([v6 isHidden] & 1) == 0)
      {
        [v6 alpha];
        if (v7 <= 0.0)
        {
          break;
        }

        v8 = [v6 superview];

        v6 = v8;
        if (!v8)
        {
          v3 = 1;
          goto LABEL_12;
        }
      }

      v3 = 0;
LABEL_12:
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

double ImpressionVisibilityFactor(void *a1)
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
  v4 = [v3 window];
  v5 = v4;
  v6 = 0.0;
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v3 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v3 superview];
    [v5 convertRect:v16 fromView:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v5 bounds];
    v35.origin.x = v18;
    v35.origin.y = v20;
    v35.size.width = v22;
    v35.size.height = v24;
    v31 = CGRectIntersection(v30, v35);
    v32 = CGRectIntegral(v31);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    [v3 bounds];
    v34 = CGRectIntegral(v33);
    v6 = ImpressionableRectVisibleFactor(x, y, width, height, v34.origin.x, v34.origin.y, v34.size.width, v34.size.height);
  }

  return v6;
}

void _TVAppTemplateImpressionableTestAndAddToMultableArray(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    _TVAppTemplateImpressionableTestAndAddToMultableArray_cold_1(v8);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v6 tv_impressionableElementsForDocument:v7];
LABEL_6:
    v10 = v9;
    [v5 addObjectsFromArray:v9];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 impressionableElementsContainedInDocument:v7];
    goto LABEL_6;
  }

  v10 = [v6 tv_associatedIKViewElement];
  if (v10)
  {
    [v5 addObject:v10];
  }

LABEL_7:
}

id TVMonogramImageWithConfiguration(void *a1)
{
  v1 = a1;
  v2 = [_TVMonogramDescription alloc];
  v3 = [v1 firstName];
  v4 = [v1 lastName];
  v5 = [v1 font];
  v6 = [(_TVMonogramDescription *)v2 initWithFirstName:v3 lastName:v4 imageURL:0 font:v5];

  v7 = [v1 text];
  [(_TVMonogramDescription *)v6 setText:v7];

  v8 = [v1 bgColor];
  [(_TVMonogramDescription *)v6 setFillColor:v8];

  [v1 diameter];
  v10 = v9;
  [v1 diameter];
  [(_TVMonogramDescription *)v6 setSize:v10, v11];
  [v1 focusedSizeIncrease];
  [(_TVMonogramDescription *)v6 setUpscaleAdjustment:?];
  [v1 diameter];
  [(_TVMonogramDescription *)v6 setCornerRadius:fabs(v12 * 0.5)];
  v13 = [v1 textColor];

  [(_TVMonogramDescription *)v6 setTextColor:v13];
  v14 = [_TVMonogramInitialsSilhouetteImageGenerator monogramImageWithDescription:v6];

  return v14;
}

void sub_26CDC3FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDD5050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CDD88B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDD8E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDD95BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v30 + 64));
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CDDD784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDDE7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _TVMLLocString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[TVMLUtilities TVMLKitBundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_287E12870 table:v3];

  return v6;
}

void sub_26CDDF5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CDE9F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDEB450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_26CDEC640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26CDECA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FindScrollViewFromView(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (([v1 contentSize], v3 = v2, v5 = v4, objc_msgSend(v1, "bounds"), v3 <= v7) ? (v8 = v5 <= v6) : (v8 = 0), v8))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v1 subviews];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = FindScrollViewFromView(v15);

          if (v16)
          {
            v9 = v15;

            goto LABEL_17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = v1;
  }

LABEL_17:

  return v9;
}

void sub_26CDED008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FindTestableViewForElement(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 tv_associatedIKViewElement];
  v5 = [v4 attributes];
  v6 = [v5 objectForKey:@"scrollTest"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v7 = v6;
        *a2 = v6;
      }

      v8 = v3;
LABEL_20:
      v16 = v8;
      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v15 = v6;
        *a2 = v6;
      }

      v8 = [v3 view];
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_31:
      v16 = 0;
      goto LABEL_33;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v3 subviews];
    v17 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
LABEL_24:
      v20 = 0;
      while (1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v14 = FindTestableViewForElement(*(*(&v22 + 1) + 8 * v20), a2);
        if (v14)
        {
          goto LABEL_32;
        }

        if (v18 == ++v20)
        {
          v18 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v18)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v3 childViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = v10;
  v12 = *v27;
LABEL_9:
  v13 = 0;
  while (1)
  {
    if (*v27 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = FindTestableViewForElement(*(*(&v26 + 1) + 8 * v13), a2);
    if (v14)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

LABEL_32:
  v16 = v14;

LABEL_33:

  return v16;
}

void sub_26CDEFA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDF2CA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26CDF9570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CDFD110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id TVFontFromElement(void *a1)
{
  v1 = [a1 style];
  v2 = [TVMLUtilities fontFromStyle:v1];

  return v2;
}

void sub_26CDFE85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CDFFF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location)
{
  objc_destroyWeak((v12 + 40));
  objc_destroyWeak((v11 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _TVCreateSpinnerImage(void *a1, double a2)
{
  components[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = v6 * a2;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, v7, v7, 8uLL, 0, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  if (!v9)
  {
    goto LABEL_12;
  }

  CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
  CGContextSetLineWidth(v9, ceil(v7 * 0.1));
  CGContextSetLineCap(v9, kCGLineCapRound);
  v10 = v7 * 0.5;
  v19 = v7 * 0.5 * 0.5;
  v20 = v7 * 0.5 * 0.9;
  v23 = 0.0;
  v24 = 0.0;
  v21 = 1.0;
  v22 = 0.0;
  v11 = [v3 getRed:&v24 green:&v23 blue:&v22 alpha:&v21];
  for (i = 0; i < 0x14B; i += 30)
  {
    CGContextBeginPath(v9);
    v13 = __sincos_stret((i + 30) / 180.0 * 3.14159265);
    CGContextMoveToPoint(v9, v10 + v19 * v13.__sinval, v10 + -v19 * v13.__cosval);
    CGContextAddLineToPoint(v9, v10 + v20 * v13.__sinval, v10 + -v20 * v13.__cosval);
    if (i == 330)
    {
      v14 = 0;
    }

    else
    {
      v14 = i + 30;
    }

    v15 = v14 / -360.0 + 1.0;
    if (v11)
    {
      components[0] = v24;
      components[1] = v23;
      components[2] = v22;
      components[3] = v15 * v21;
      CGContextSetStrokeColorSpace(v9, DeviceRGB);
      CGContextSetStrokeColor(v9, components);
    }

    else
    {
      CGContextSetGrayStrokeColor(v9, 1.0, v15);
    }

    CGContextStrokePath(v9);
  }

  Image = CGBitmapContextCreateImage(v9);
  CFRelease(v9);
  if (Image)
  {
    v17 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:Image];
    CFRelease(Image);
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

  return v17;
}

void sub_26CE08B70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _TVStackMakeImageView()
{
  v0 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
  [v0 setUserInteractionEnabled:0];
  [v0 setOpaque:1];
  [v0 setClipsToBounds:1];

  return v0;
}

void sub_26CE0A160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

unint64_t _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(unint64_t a1, unint64_t a2)
{
  if (!dword_2810C86FC)
  {
    mach_timebase_info(&_TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds_sTimebaseInfo);
  }

  if (a2 >= a1)
  {
    return (a2 - a1) * _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds_sTimebaseInfo / dword_2810C86FC / 0x3E8;
  }

  else
  {
    return 0;
  }
}

void sub_26CE0E0C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_26CE0E498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CE15F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_26CE1A65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CE1B710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t _TVSetupLoggingObjects()
{
  v0 = os_log_create("com.apple.TVMLKit", "System");
  v1 = TVMLKitLogObject;
  TVMLKitLogObject = v0;

  v2 = os_log_create("com.apple.TVMLKit", "Image");
  v3 = TVMLKitImageLogObject;
  TVMLKitImageLogObject = v2;

  v4 = os_log_create("com.apple.TVMLKit", "Video");
  v5 = TVMLKitVideoLogObject;
  TVMLKitVideoLogObject = v4;

  v6 = os_log_create("com.apple.TVMLKit", "ScreenSaver");
  v7 = TVMLKitScreenSaverLogObject;
  TVMLKitScreenSaverLogObject = v6;

  TVMLKitPerformanceLogObject = os_log_create("com.apple.TVMLKit", "Performance");

  return MEMORY[0x2821F96F8]();
}

uint64_t _TVSetupSignpostLoggingObject()
{
  v0 = os_log_create("com.apple.TVMLKit", "Signpost");
  v1 = TVMLKitSignpostLogObject;
  TVMLKitSignpostLogObject = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t IsPerformanceLoggingEnabled()
{
  if (IsPerformanceLoggingEnabled_onceToken != -1)
  {
    IsPerformanceLoggingEnabled_cold_1();
  }

  return IsPerformanceLoggingEnabled_isEnabled;
}

uint64_t __IsPerformanceLoggingEnabled_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"PerformanceLoggingEnabled", @"com.apple.TVMLKit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    IsPerformanceLoggingEnabled_isEnabled = result == 1;
  }

  return result;
}

void sub_26CE1D15C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_26CE1D2D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_26CE1F3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE20B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_26CE20FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_26CE23824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CE27534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE2CFCC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_26CE2F048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _TVBlurredImageWithOptionsAndOverlayColorForImage(void *a1, char a2, void *a3, double a4, double a5, double a6)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a3;
  if (v11 && ((a2 & 4) != 0 ? (v13 = 0.0) : (v13 = a6 + a6), (DeviceRGB = CGColorSpaceCreateDeviceRGB(), v15 = a4, v16 = a5, v17 = CGBitmapContextCreate(0, (v15 + v13 * 2.0), (v16 + v13 * 2.0), 8uLL, 0, DeviceRGB, 0x2002u), CFRelease(DeviceRGB), v17) && (v18 = [v11 CGImage], v58.origin.x = v13, v58.origin.y = v13, v58.size.width = v15, v58.size.height = v16, CGContextDrawImage(v17, v58, v18), Image = CGBitmapContextCreateImage(v17), ClipBoundingBox = CGContextGetClipBoundingBox(v17), x = ClipBoundingBox.origin.x, y = ClipBoundingBox.origin.y, width = ClipBoundingBox.size.width, height = ClipBoundingBox.size.height, CFRelease(v17), Image)))
  {
    if (_TVBlurredImageWithOptionsAndOverlayColorForImage___once != -1)
    {
      _TVBlurredImageWithOptionsAndOverlayColorForImage_cold_1();
    }

    v24 = MEMORY[0x277CBF758];
    v55 = *MEMORY[0x277CBFA40];
    v25 = [MEMORY[0x277CBEB68] null];
    v56[0] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v27 = [v24 imageWithCGImage:Image options:v26];

    CFRelease(Image);
    if ((a2 & 8) != 0)
    {
      v53 = *MEMORY[0x277CBFB10];
      v54 = &unk_287E48888;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v29 = [v27 imageByApplyingFilter:@"CIColorControls" withInputParameters:v28];

      v27 = v29;
    }

    if ((a2 & 4) != 0)
    {
      v30 = [v27 imageByClampingToExtent];

      v27 = v30;
    }

    v51 = *MEMORY[0x277CBFB08];
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    v52 = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v33 = [v27 imageByApplyingFilter:@"CIGaussianBlur" withInputParameters:v32];

    if (v12)
    {
      v34 = MEMORY[0x277CBF758];
      v35 = [MEMORY[0x277CBF730] colorWithCGColor:{objc_msgSend(v12, "CGColor")}];
      v36 = [v34 imageWithColor:v35];

      v37 = [v36 imageByCompositingOverImage:v33];

      v33 = v37;
    }

    if ((a2 & 2) != 0)
    {
      v38 = [MEMORY[0x277CBF750] filterWithName:@"CIRandomGenerator"];
      v39 = [v38 outputImage];

      v40 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v49[0] = @"inputRVector";
      v49[1] = @"inputGVector";
      v50[0] = v40;
      v50[1] = v40;
      v50[2] = v40;
      v49[2] = @"inputBVector";
      v49[3] = @"inputAVector";
      v41 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.05];
      v50[3] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
      v43 = [v39 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v42];

      v44 = [v43 imageByCompositingOverImage:v33];

      v33 = v44;
    }

    v45 = [_TVBlurredImageWithOptionsAndOverlayColorForImage___ciContext createCGImage:v33 fromRect:{x, y, width, height}];
    if (v45)
    {
      v46 = v45;
      v47 = [MEMORY[0x277D755B8] imageWithCGImage:v45 scale:0 orientation:1.0];
      CFRelease(v46);
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

id _TVNoiseImageOfSize(int a1, double a2, double a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v12 = a2 != v8 || a3 != v10 || a1 == 0;
  if (v12 || ([MEMORY[0x277D755B8] _noiseImage], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = MEMORY[0x277CBF740];
    v24 = *MEMORY[0x277CBF948];
    v15 = [MEMORY[0x277CBEB68] null];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 contextWithOptions:v16];

    v18 = [MEMORY[0x277CBF750] filterWithName:@"CIRandomGenerator"];
    v19 = [MEMORY[0x277CBF750] filterWithName:@"CIColorMonochrome"];
    v20 = [v18 valueForKey:@"outputImage"];
    [v19 setValue:v20 forKey:@"inputImage"];

    v21 = [v19 valueForKey:*MEMORY[0x277CBFB50]];
    v22 = [v17 createCGImage:v21 fromRect:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), a2, a3}];

    if (v22)
    {
      v13 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v22];
      CFRelease(v22);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

id _TVNoisePattern()
{
  v0 = [MEMORY[0x277D755B8] _noiseImage];
  v1 = [MEMORY[0x277D75348] colorWithPatternImage:v0];

  return v1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void commonInit(void *a1)
{
  v1 = a1;
  [v1 setOpaque:0];
  [v1 setBackgroundColor:0];
  [v1 setClipsToBounds:0];
}

uint64_t IsTemplateMediaType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"tv-template"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"-tv-template"];
  }

  return v2;
}

void sub_26CE3DA50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_26CE3E510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_26CE3E928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CE40C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE44644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE460BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CE4A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CE4D0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CE4E4F4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D6AFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_26CE55E08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 136));
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_26CE57DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CE5854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE593A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE5995C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CE59B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t AMPCFStringGetCharacterAtIndex(UniChar *buffer, int64_t a2, uint64_t *a3)
{
  if (a2 < 0 || (v6 = *(buffer + 36), v6 <= a2))
  {
    v9 = 0;
    goto LABEL_6;
  }

  v7 = *(buffer + 33);
  if (v7)
  {
    v8 = *(v7 + 2 * *(buffer + 35) + 2 * a2);
  }

  else
  {
    v12 = *(buffer + 34);
    if (v12)
    {
      v8 = *(v12 + *(buffer + 35) + a2);
    }

    else
    {
      if (*(buffer + 38) <= a2 || (v13 = *(buffer + 37), v13 > a2))
      {
        v14 = a2 - 4;
        if (a2 < 4)
        {
          v14 = 0;
        }

        if (v14 + 128 < v6)
        {
          v6 = v14 + 128;
        }

        *(buffer + 37) = v14;
        *(buffer + 38) = v6;
        v24.length = v6 - v14;
        v24.location = *(buffer + 35) + v14;
        CFStringGetCharacters(*(buffer + 32), v24, buffer);
        v13 = *(buffer + 37);
      }

      v8 = buffer[a2 - v13];
    }
  }

  v9 = v8;
  if (v8 >> 10 != 54 || (v15 = *(buffer + 36), (v15 - 1) <= a2))
  {
LABEL_6:
    v10 = 1;
    if (!a3)
    {
      return v9;
    }

LABEL_7:
    *a3 = v10;
    return v9;
  }

  v16 = a2 + 1;
  v17 = *(buffer + 33);
  if (v17)
  {
    v18 = *(v17 + 2 * *(buffer + 35) + 2 * v16);
  }

  else
  {
    v19 = *(buffer + 34);
    if (v19)
    {
      v18 = *(v19 + *(buffer + 35) + v16);
    }

    else
    {
      if (*(buffer + 38) <= v16 || (v20 = *(buffer + 37), v20 > v16))
      {
        v21 = v16 - 4;
        if (v16 < 4)
        {
          v21 = 0;
        }

        if (v21 + 128 < v15)
        {
          v15 = v21 + 128;
        }

        *(buffer + 37) = v21;
        *(buffer + 38) = v15;
        v25.length = v15 - v21;
        v25.location = *(buffer + 35) + v21;
        CFStringGetCharacters(*(buffer + 32), v25, buffer);
        v20 = *(buffer + 37);
      }

      v18 = buffer[v16 - v20];
    }
  }

  v22 = v18 & 0xFC00;
  v23 = (v9 << 10) + v18 - 56613888;
  v10 = 1;
  if (v22 == 56320)
  {
    v10 = 2;
    v9 = v23;
  }

  else
  {
    v9 = v9;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  return v9;
}

void __defaultParagraphStyle_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:0];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultLTRParagraphStyleAttribute;
  defaultParagraphStyle_defaultLTRParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:-1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultNaturalParagraphStyleAttribute;
  defaultParagraphStyle_defaultNaturalParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_3()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultRTLParagraphStyleAttribute;
  defaultParagraphStyle_defaultRTLParagraphStyleAttribute = v0;
}

void sub_26CE61768(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x3F8], 8);
  _Block_object_dispose(&STACK[0x438], 8);
  _Unwind_Resume(a1);
}

void sub_26CE62A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CE67D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_26CE6819C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CE6B0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _TVCollectionViewValidIndexPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && (v6 = [v4 numberOfSections], objc_msgSend(v3, "section") < v6))
  {
    v7 = [v5 numberOfItemsInSection:{objc_msgSend(v3, "section")}];
    v8 = [v3 row] < v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_26CE6BF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CE6EDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}