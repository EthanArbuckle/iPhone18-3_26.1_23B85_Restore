double PLMainScreenScale()
{
  if (PLMainScreenScale___once != -1)
  {
    PLMainScreenScale_cold_1();
  }

  return *&PLMainScreenScale___cachedScale;
}

void __PLMainScreenScale_block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  PLMainScreenScale___cachedScale = v0;
}

void PLSetViewFrameMaintainingTransform(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = v9;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if (v9)
  {
    [v9 transform];
  }

  v11 = MEMORY[0x277D75D18];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __PLSetViewFrameMaintainingTransform_block_invoke;
  v20[3] = &unk_2784250D8;
  v12 = v10;
  v21 = v12;
  [v11 performWithoutAnimation:v20];
  [v12 setFrame:{a2, a3, a4, a5}];
  v13 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v17 = v22;
  v15[2] = __PLSetViewFrameMaintainingTransform_block_invoke_2;
  v15[3] = &unk_2784257D8;
  v16 = v12;
  v18 = v23;
  v19 = v24;
  v14 = v12;
  [v13 performWithoutAnimation:v15];
}

uint64_t __PLSetViewFrameMaintainingTransform_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __PLSetViewFrameMaintainingTransform_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

id PLCAMediaTimingFunctionForViewAnimationCurve(unint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 <= 5)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = MEMORY[0x277CDA7C8];
    }

    else
    {
      if (v5 == 4)
      {
        LODWORD(a2) = 1059648963;
        LODWORD(a4) = 1051260355;
        LODWORD(a5) = 1.0;
        v7 = [MEMORY[0x277CD9EF8] functionWithControlPoints:a2 :0.0 :a4 :a5];
        goto LABEL_16;
      }

      v6 = MEMORY[0x277CDA7A8];
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v6 = MEMORY[0x277CDA7B0];
    }

    else
    {
      v6 = MEMORY[0x277CDA7C0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CDA7B8];
  }

  v7 = [MEMORY[0x277CD9EF8] functionWithName:*v6];
LABEL_16:

  return v7;
}

void sub_21FDE59E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDE69C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDEB1B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 152));
  _Unwind_Resume(a1);
}

void sub_21FDEB538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21FDEC324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FDED048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FDF18F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF1A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id UIViewForPLPillContentItem(void *a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = UILabelForPLPillContentItem(v3, a2);
  v5 = [v3 text];
  if (v5)
  {
  }

  else
  {
    v6 = [v3 attributedText];

    if (!v6)
    {
      [v4 setText:@" "];
      v7 = 0;
      goto LABEL_5;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = [v3 accessoryView];

  if (v8 && (([v3 accessoryView], (v8 = objc_claimAutoreleasedReturnValue()) != 0) ? (v9 = v7) : (v9 = 0), v9 == 1))
  {
    if ([v4 _shouldReverseLayoutDirection])
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    [v4 setTextAlignment:v10];
    v11 = objc_alloc(MEMORY[0x277D75A68]);
    v21[0] = v4;
    v21[1] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v13 = [v11 initWithArrangedSubviews:v12];

    [v13 setAxis:0];
    [v13 setAlignment:3];
    [v13 setDistribution:1];
    [v13 setSpacing:4.0];
  }

  else
  {
    if (v7)
    {
      v14 = v4;
    }

    else
    {
      [v4 intrinsicContentSize];
      v16 = v15;
      [v8 intrinsicContentSize];
      if (v16 < v17)
      {
        v16 = v17;
      }

      v18 = [v8 heightAnchor];
      v19 = [v18 constraintEqualToConstant:v16];
      [v19 setActive:1];

      v14 = v8;
      v8 = v14;
    }

    v13 = v14;
  }

  return v13;
}

void sub_21FDF24C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PLConfigureUILabelWithPLPillContentItemStyle(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = a1;
  v7 = a4;
  v8 = MEMORY[0x277D76918];
  if (a2 != 7)
  {
    v8 = MEMORY[0x277D76968];
  }

  v9 = MEMORY[0x277CF0D60];
  v10 = *v8;
  v11 = [v9 preferredFontProvider];
  v12 = [v11 preferredFontForTextStyle:v10 hiFontStyle:12 contentSizeCategory:v7];

  [v17 setFont:v12];
  v13 = 1;
  [v17 setTextAlignment:1];
  [v17 setLineBreakMode:0];
  [v17 setMarqueeEnabled:a3];
  if ((a3 & 1) == 0)
  {
    if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76800], v7) == NSOrderedAscending)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D767F0], v7) == NSOrderedAscending)
    {
      v13 = 4;
    }

    else
    {
      v13 = v14;
    }
  }

  [v17 setNumberOfLines:v13];
  if (a2 <= 3)
  {
    if (a2 >= 2)
    {
      if (a2 == 2)
      {
        v15 = [MEMORY[0x277D75348] secondaryLabelColor];
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_23;
        }

        v15 = [MEMORY[0x277D75348] systemOrangeColor];
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }
    v15 = ;
    goto LABEL_22;
  }

  if (a2 == 6 || a2 == 7)
  {
LABEL_21:
    v15 = [MEMORY[0x277D75348] labelColor];
LABEL_22:
    v16 = v15;
    [v17 setTextColor:v15];
  }

LABEL_23:
}

id UILabelForPLPillContentItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277D756B8];
  v5 = a2;
  v6 = objc_alloc_init(v4);
  PLConfigureUILabelWithPLPillContentItemStyle(v6, [v3 style], objc_msgSend(v3, "isSolo") ^ 1, v5);

  v7 = [v3 text];

  if (v7)
  {
    [v6 setAttributedText:0];
    v8 = [v3 text];
    [v6 setText:v8];
  }

  v9 = [v3 attributedText];

  if (v9)
  {
    [v6 setText:0];
    v10 = [v3 attributedText];
    [v6 setAttributedText:v10];
  }

  return v6;
}

void sub_21FDF601C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF8570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF8A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF8C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF8DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF90D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDF934C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_21FDFA8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FDFBFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PlatterKitFrameworkBundle()
{
  if (PlatterKitFrameworkBundle___once != -1)
  {
    PlatterKitFrameworkBundle_cold_1();
  }

  v1 = PlatterKitFrameworkBundle___bundle;

  return v1;
}

uint64_t __PlatterKitFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = PlatterKitFrameworkBundle___bundle;
  PlatterKitFrameworkBundle___bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t BSUIDateFormatStyleFromPLDateFormatStyle(uint64_t a1)
{
  v1 = a1;
  if ((a1 + 1) >= 3)
  {
    v2 = PLLogGeneral;
    if (os_log_type_enabled(PLLogGeneral, OS_LOG_TYPE_ERROR))
    {
      BSUIDateFormatStyleFromPLDateFormatStyle_cold_1(v1, v2);
    }

    return -1;
  }

  return v1;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

double PLContentViewHeightForContentSizeCategory(void *a1, unint64_t a2, double a3)
{
  v5 = *MEMORY[0x277D76860];
  v6 = a1;
  v7 = [v6 isEqualToString:v5];
  v8 = *MEMORY[0x277D76838];
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;

  if ([v9 isEqualToString:*MEMORY[0x277D76828]])
  {
    v10 = 50.0;
    if (a3 != 0.0)
    {
      v10 = 56.0;
    }

    v11 = a2 >= 2;
    v12 = 0x404D000000000000;
  }

  else
  {
    if ([v9 isEqualToString:*MEMORY[0x277D76820]])
    {
      v10 = 50.0;
      v13 = 62.0;
      if (a3 != 0.0)
      {
        v10 = 62.0;
      }

      v11 = a2 >= 2;
      goto LABEL_12;
    }

    if ([v9 isEqualToString:*MEMORY[0x277D76818]])
    {
      v10 = 50.0;
      if (a3 != 0.0)
      {
        v10 = 65.0;
      }

      v11 = a2 >= 2;
      v12 = 0x4051000000000000;
    }

    else
    {
      if ([v9 isEqualToString:*MEMORY[0x277D76808]])
      {
        v10 = 50.0;
        if (a3 != 0.0)
        {
          v10 = 76.0;
        }

        v11 = a2 >= 2;
        v13 = 78.0;
        goto LABEL_12;
      }

      if ([v9 isEqualToString:*MEMORY[0x277D76800]])
      {
        v10 = 53.0;
        if (a3 != 0.0)
        {
          v10 = 84.0;
        }

        v11 = a2 >= 2;
        v12 = 0x4056000000000000;
      }

      else if ([v9 isEqualToString:*MEMORY[0x277D767F8]])
      {
        v10 = dbl_21FE0D1F0[a3 != 0.0];
        v11 = a2 >= 2;
        v12 = 0x4059000000000000;
      }

      else if ([v9 isEqualToString:*MEMORY[0x277D767F0]])
      {
        v10 = dbl_21FE0D1E0[a3 != 0.0];
        v11 = a2 >= 2;
        v12 = 0x405C000000000000;
      }

      else
      {
        if (![v9 isEqualToString:*MEMORY[0x277D767E8]])
        {
          v14 = 50.0;
          goto LABEL_15;
        }

        v10 = dbl_21FE0D1D0[a3 != 0.0];
        v11 = a2 >= 2;
        v12 = 0x4060000000000000;
      }
    }
  }

  v13 = *&v12;
LABEL_12:
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

LABEL_15:

  return v14;
}

void sub_21FE01758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  if ((v10 & 4) != 0)
  {
    objc_destroyWeak(v12);
  }

  if ((v11 & 2) != 0)
  {
    objc_destroyWeak(location);
  }

  objc_destroyWeak((v13 - 112));
  _Unwind_Resume(a1);
}

void sub_21FE02480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLViewAnimationOptionsForAnimationCurve(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return ((a1 - 1) << 16) + 0x10000;
  }
}

void PLRegisterPlatterKitLogging()
{
  if (PLRegisterPlatterKitLogging_onceToken != -1)
  {
    PLRegisterPlatterKitLogging_cold_1();
  }
}

uint64_t __PLRegisterPlatterKitLogging_block_invoke()
{
  v0 = os_log_create(PLLogSubsystem, "General");
  v1 = PLLogGeneral;
  PLLogGeneral = v0;

  v2 = os_log_create(PLLogSubsystem, "Transition");
  v3 = PLLogTransition;
  PLLogTransition = v2;

  v4 = os_log_create(PLLogSubsystem, "Interaction");
  v5 = PLLogInteraction;
  PLLogInteraction = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

void BSUIDateFormatStyleFromPLDateFormatStyle_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_ERROR, "Undefined date format style: %{public}ld", &v2, 0xCu);
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