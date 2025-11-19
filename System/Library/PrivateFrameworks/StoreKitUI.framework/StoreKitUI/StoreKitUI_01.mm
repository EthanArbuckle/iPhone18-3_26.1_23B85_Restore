uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKUIInitializeViewElementStyleFactory()
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIInitializeViewElementStyleFactory_cold_1();
  }

  if (SKUIInitializeViewElementStyleFactory___onceToken != -1)
  {
    SKUIInitializeViewElementStyleFactory_cold_2();
  }
}

uint64_t __SKUIInitializeViewElementStyleFactory_block_invoke()
{
  [MEMORY[0x277D1B140] registerStyle:@"itml-lockup-min-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-layout" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-peeking-item-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-inter-item-spacing" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-item-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-zoomed-item-width" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"itml-shelf-zooming-layout-element-placement" withType:3 inherited:0];
  v0 = MEMORY[0x277D1B140];

  return [v0 registerStyle:@"itml-segmented-control-width" withType:3 inherited:0];
}

void sub_215D62018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D658A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_215D66EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D6811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D686EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D68844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D689BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D6E2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKUIWishlistItemPropertiesWithItem(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIWishlistItemPropertiesWithItem_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 cacheRepresentation];
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [v12 setObject:v11 forKey:*MEMORY[0x277D6A680]];
    v13 = [v1 itemIdentifier];
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
    [v12 setObject:v14 forKey:*MEMORY[0x277D6A688]];

    v15 = [v1 itemKindString];
    if (v15)
    {
      [v12 setObject:v15 forKey:*MEMORY[0x277D6A690]];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id SKUIWishlistOperationQueue()
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        SKUIWishlistOperationQueue_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
      }
    }
  }

  v8 = SKUIWishlistOperationQueue_sQueue;
  if (!SKUIWishlistOperationQueue_sQueue)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v10 = SKUIWishlistOperationQueue_sQueue;
    SKUIWishlistOperationQueue_sQueue = v9;

    [SKUIWishlistOperationQueue_sQueue setMaxConcurrentOperationCount:1];
    [SKUIWishlistOperationQueue_sQueue setName:@"com.apple.StoreKitUI.SSWishlist"];
    v8 = SKUIWishlistOperationQueue_sQueue;
  }

  return v8;
}

void sub_215D6E77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D6F8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D70F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D71384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D7178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKUITracklistAttributedStringForButton(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        SKUITracklistAttributedStringForButton_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }

  v14 = [v4 buttonTitleStyle];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v4 style];
  }

  v17 = v16;

  v18 = SKUIViewElementFontWithStyle(v17);
  if (!v18)
  {
    v18 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-Medium" size:9.0];
  }

  v19 = [v5 tintColor];
  v20 = SKUIViewElementPlainColorWithStyle(v17, v19);

  if (!v20)
  {
    v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  v21 = [v4 buttonText];
  v22 = [v21 attributedStringWithDefaultFont:v18 foregroundColor:v20 textAlignment:1 style:v17];

  return v22;
}

id SKUITracklistAttributedStringForLabel(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        SKUITracklistAttributedStringForLabel_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  v16 = [v6 style];
  v17 = SKUIViewElementFontWithStyle(v16);
  v18 = [v7 tintColor];

  v19 = SKUIViewElementPlainColorWithStyle(v16, v18);

  if (v5 && !v19)
  {
    if ([v5 isEnabled])
    {
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    }
  }

  v20 = [v6 labelViewStyle];
  if (v20 <= 5)
  {
    if (((1 << v20) & 0xB) != 0)
    {
      if (!v17)
      {
        v17 = SKUIFontPreferredFontForTextStyle(5);
        if (v19)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

LABEL_17:
      if (v19)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    if (((1 << v20) & 0x24) != 0)
    {
      if (v17)
      {
        goto LABEL_17;
      }

      v22 = SKUIFontForTextStyle(21);
      v23 = MEMORY[0x277D74300];
      [v22 pointSize];
      v17 = [v23 fontWithName:@"HelveticaNeue-Medium" size:?];

      if (!v19)
      {
LABEL_18:
        v21 = [MEMORY[0x277D75348] blackColor];
LABEL_19:
        v19 = v21;
      }
    }

    else
    {
      if (!v17)
      {
        v17 = SKUIFontPreferredFontForTextStyle(5);
      }

      if (!v19)
      {
        v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
        goto LABEL_19;
      }
    }
  }

LABEL_25:
  v24 = [v6 text];
  v25 = [v24 attributedStringWithDefaultFont:v17 foregroundColor:v19 style:v16];

  return v25;
}

void sub_215D72174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D72FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D73258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D73574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_215D739EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D746F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKUITabBarControllerGetActiveNavigationController(void *a1)
{
  v1 = a1;
  v2 = [v1 selectedViewController];
  v3 = [v1 transientViewController];
  if (!v3)
  {
    if (!v2)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v5 = SKUITabBarControllerGetMoreNavigationController(v1);
    v6 = [v1 allViewControllers];
    v7 = v6;
    if (v5 && (v8 = [v6 indexOfObjectIdenticalTo:v2], v8 >= objc_msgSend(v7, "indexOfObjectIdenticalTo:", v5)))
    {
      v21 = v5;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v2;
        v10 = [v9 visibleViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 visibleViewController];
          v13 = [v12 childViewController];
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();

          if (v14)
          {
            v15 = [v12 childViewController];
            v16 = [v15 leftNavigationDocumentController];
            v24 = [v16 navigationController];

            v17 = [v15 rightNavigationDocumentController];
            v18 = [v17 navigationController];

            v19 = v18;
            if (v18 || (v19 = v24) != 0)
            {
              v20 = v19;

              v9 = v20;
            }
          }
        }

        goto LABEL_21;
      }

      v21 = [v2 navigationController];
    }

    v9 = v21;
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 navigationController];
  }

  v9 = v4;
LABEL_22:
  v22 = v9;

  return v9;
}

id SKUITabBarControllerGetMoreNavigationController(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 moreNavigationController];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SKUITabBarControllerGetFloatingOverlayViewController(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 floatingOverlayViewController];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v6 setFloatingOverlayViewController:v5 animated:a3];
  }

  else if (v6 && v5)
  {
    NSLog(&cfstr_ErrorTryingToS.isa, v6);
  }
}

void sub_215D7BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D7DE40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215D7E608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D81FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AnalyzedImageColors::AnalyzedImageColors(AnalyzedImageColors *this)
{
  ITColor::ITColor(this);
  ITColor::ITColor(v2 + 1);
  ITColor::ITColor(this + 2);
  ITColor::ITColor(this + 3);
  ITColor::ITColor(this + 4);
  ITColor::ITColor(this + 5);
  ITColor::ITColor(this + 6);
  ITColor::ITColor(this + 7);
  ITColor::ITColor(this + 8);
  *(this + 293) = 0;
  *(this + 36) = 0;
}

void sub_215D83620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D837C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SKUIShareSheetActivityTypeForUIActivityType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D54710]])
  {
    v2 = @"airdrop";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54748]])
  {
    v2 = @"facebook";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54728]])
  {
    v2 = @"mail";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54738]])
  {
    v2 = @"message";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54720]])
  {
    v2 = @"pasteboard";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54770]])
  {
    v2 = @"sina-weibo";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D54758]])
  {
    v2 = @"tencent-weibo";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_215D868B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D86D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215D8825C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215D884F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215D8B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D8D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D8DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D8E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215D8E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id SKUIStringFromProductLockupLayoutSizing(CGSize *a1)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIStringFromProductLockupLayoutSizing_cold_1();
  }

  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromCGSize(a1[3]);
  v4 = NSStringFromCGSize(a1[4]);
  v5 = NSStringFromCGSize(a1[2]);
  v6 = NSStringFromCGSize(*a1);
  v7 = NSStringFromCGSize(a1[1]);
  v8 = [v2 stringWithFormat:@"{ Top-Left: %@, Top-Right: %@, Middle-Left: %@, Bottom-Left: %@, Bottom-Right: %@ }", v3, v4, v5, v6, v7];

  return v8;
}

void sub_215D8F030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215D8F2D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215D8FBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D90118(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215D92910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D931A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D948AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_215D94C90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215D950EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_215D9538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D95994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215D95BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t SKUIViewControllerIsVisible(void *a1)
{
  v1 = a1;
  if ([v1 isViewLoaded])
  {
    v2 = [v1 view];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 window];
  if (v3)
  {
    v4 = [v2 isHidden] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id SKUIViewControllerGetAncestorTabBarController(void *a1)
{
  v1 = a1;
  v2 = [v1 tabBarController];
  if ([v2 conformsToProtocol:&unk_2829504F0])
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
    do
    {
      v4 = v3;
      v3 = [v3 parentViewController];
    }

    while (v3 && ![v3 conformsToProtocol:&unk_2829504F0]);
  }

  return v3;
}

id SKUIViewControllerGetTopMostViewController(void *a1)
{
  for (i = a1; ; i = v3)
  {
    v2 = [i presentedViewController];
    if (!v2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([i topViewController], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          break;
        }

        v2 = [i focusedViewController];
        if (!v2)
        {
          break;
        }
      }
    }

    v3 = v2;
  }

  return i;
}

BOOL SKUIViewControllerIsDescendent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v7 = v5;
    if (v5 != v4)
    {
      v7 = v5;
      do
      {
        v8 = v7;
        v7 = [v7 parentViewController];
      }

      while (v7 && v7 != v4);
    }
  }

  return v7 == v4;
}

void sub_215D9BF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_215D9C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215D9CDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DA2DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215DA39B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DA3D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__67(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_215DA7960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5_0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DA7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DAC28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DADF5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 168));
  _Unwind_Resume(a1);
}

void sub_215DAEC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DAF73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DB1FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DB25EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

BOOL SKUINearMeIsEnabledForAuthorizationStatus(int a1)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUINearMeIsEnabledForAuthorizationStatus_cold_1();
  }

  return (a1 - 3) < 2;
}

BOOL SKUILocationIsAccurate(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUILocationIsAccurate_cold_1();
  }

  [v1 horizontalAccuracy];
  v3 = v2;
  v4 = [v1 timestamp];

  v5 = 0;
  if (v3 > 0.00000011920929 && v3 <= 5000.0)
  {
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      v5 = v6 >= -30.0;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

void sub_215DB4514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SKUIItemCollectionItemPageRangeForCollectionView(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 indexPathForItemAtPoint:{a2, a3}];
  if (v6)
  {
    v7 = [v5 collectionViewLayout];
    [v5 bounds];
    [v7 itemSize];
    [v5 bounds];
    [v7 itemSize];
    v8 = [v6 item];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t SKUIItemCollectionItemPageRangeForTableView(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 indexPathForRowAtPoint:{a2, a3}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 item];
    v9 = v8 & ~(v8 >> 63);
    [v5 rowHeight];
    if (v10 > 0.0)
    {
      [v5 bounds];
      [v5 rowHeight];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t SKUIItemCollectionVisibleItemRangeForCollectionView(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 indexPathsForVisibleItems];
  if ([v1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) item];
          if (v6 >= v8)
          {
            v6 = v8;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v2 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t SKUIItemCollectionVisibleItemRangeForTableView(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 indexPathsForVisibleRows];
  if ([v1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) row];
          if (v6 >= v8)
          {
            v6 = v8;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v2 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_215DB7AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DB7CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__5_1(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_215DB8BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_215DBB820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DBC234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DBC66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DBC918(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215DBDA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_215DBEC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DBEF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DC20B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DC2B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getAMSURLParserClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSURLParserClass_softClass_0;
  v7 = getAMSURLParserClass_softClass_0;
  if (!getAMSURLParserClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMSURLParserClass_block_invoke_0;
    v3[3] = &unk_2781FA3E0;
    v3[4] = &v4;
    __getAMSURLParserClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_215DC434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAMSURLParserClass_block_invoke_0(uint64_t a1)
{
  AppleMediaServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSURLParser");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSURLParserClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSURLParserClass_block_invoke_cold_1();
    AppleMediaServicesLibrary();
  }
}

void AppleMediaServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781FED80;
    v3 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleMediaServicesLibraryCore_frameworkLibrary_0)
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

uint64_t __AppleMediaServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

SKUIWishlistViewController *__getAMSBagClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSBag");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSBagClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAMSBagClass_block_invoke_cold_1();
    return [(SKUIWishlistViewController *)v3 initWithNibName:v4 bundle:v5, v6];
  }

  return result;
}

void __AccountsChanged(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____AccountsChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_215DC6914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DC6DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DC7C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DC8634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DCBA48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215DCD158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DCD3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DCE4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SKUIRequiredVisibilitySetForLocalizedIndexedCollation()
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        SKUIRequiredVisibilitySetForLocalizedIndexedCollation_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
      }
    }
  }

  v8 = [MEMORY[0x277D75700] currentCollation];
  v9 = [v8 sectionIndexTitles];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [&unk_2828D2FC0 containsObject:v17];
        if (v18 & 1) != 0 || ((v14 ^ 1))
        {
          v14 |= v18 ^ 1;
          [v10 addObject:v17];
        }

        else
        {
          v14 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [v11 reverseObjectEnumerator];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v28 + 1) + 8 * j);
        v26 = [&unk_2828D2FC0 containsObject:v25];
        if (v26 & 1) != 0 || ((v22 ^ 1))
        {
          v22 |= v26 ^ 1;
          [v10 addObject:v25];
        }

        else
        {
          v22 = 1;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  return v10;
}

id SKUIIndexBarIDForLocaleStandardIndexBarEntrySectionTitle(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIIndexBarIDForLocaleStandardIndexBarEntrySectionTitle_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"systemBucketID-%@", v1];

  return v10;
}

void sub_215DD0310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SKUIInitializeViewElementFactory()
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIInitializeViewElementFactory_cold_1();
  }

  if (SKUIInitializeViewElementFactory_sOnce != -1)
  {
    SKUIInitializeViewElementFactory_cold_2();
  }
}

uint64_t __SKUIInitializeViewElementFactory_block_invoke()
{
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"accountButtons" elementType:1];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"actions" elementType:3];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"activity" elementType:116];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"activityIndicator" elementType:4];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"asset" elementType:5];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"background" elementType:7];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"backgroundImage" elementType:49];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"badge" elementType:8];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"b" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"browse" elementType:10];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"br" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"button" elementType:12];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"card" elementType:14];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"carousel" elementType:15];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"circle" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"collectionList" elementType:20];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"column" elementType:21];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"content" elementType:26];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"commentTemplate" elementType:25];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"contentUnavailable" elementType:27];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"counter" elementType:28];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"countLimit" elementType:60];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"date" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"decorationImage" elementType:29];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"templateDefinition" elementType:136];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"description" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"divider" elementType:32];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"duration" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"entityProviderList" elementType:35];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"expand" elementType:36];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"facebook" elementType:38];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"filterBar" elementType:40];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"footer" elementType:41];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"fullscreenImg" elementType:42];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"grid" elementType:45];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"group" elementType:46];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"header" elementType:48];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"i" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"imageDeck" elementType:51];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"imageGrid" elementType:154];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"img" elementType:49];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"indexBar" elementType:53];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"indexBarEntry" elementType:54];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"indexBarEntryList" elementType:55];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"info" elementType:56];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"infoList" elementType:57];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"input" elementType:58];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"item" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"label" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"limitList" elementType:61];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"list" elementType:62];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"lockup" elementType:66];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menu" elementType:69];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menuBar" elementType:70];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menuItem" elementType:72];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"nativeViewPlaceholderTemplate" elementType:73];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"navigationBar" elementType:74];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"navigationTitle" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"nearByApps" elementType:76];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"notice" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"number" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"offer" elementType:77];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"option" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"ordinal" elementType:80];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"palette" elementType:75];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"placeholder" elementType:86];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"popularity" elementType:9];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"predicateList" elementType:89];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"previewControl" elementType:90];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"progressIndicator" elementType:95];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"propertyPredicate" elementType:88];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"pullToRefresh" elementType:99];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"response" elementType:102];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"reviewList" elementType:104];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"review" elementType:103];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"row" elementType:105];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"section" elementType:108];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"segmentedBar" elementType:109];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"segmentedControl" elementType:109];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"select" elementType:69];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsEditProfile" elementType:111];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsFamily" elementType:112];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsField" elementType:113];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsProfile" elementType:114];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"shelf" elementType:118];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"signInControl" elementType:120];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"socialActivities" elementType:123];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"sortDescriptor" elementType:125];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"sortDescriptorList" elementType:126];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"spacer" elementType:127];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"stackList" elementType:131];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"span" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"split" elementType:128];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"starBar" elementType:133];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"starHistogram" elementType:134];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"starRating" elementType:135];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"subtitle" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"text" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"title" elementType:138];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"tomatoRating" elementType:144];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"toolbar" elementType:145];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"track" elementType:146];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"trackList" elementType:147];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"url" elementType:151];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"video" elementType:152];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"adFeedback" elementType:108];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"reason" elementType:59];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"charityTemplate" elementType:16];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"chartsTemplate" elementType:17];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"contentUnavailableTemplate" elementType:27];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"dialogTemplate" elementType:31];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"editorTemplate" elementType:34];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"exploreTemplate" elementType:37];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"familySetupTemplate" elementType:39];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"giftTemplate" elementType:44];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"loadingTemplate" elementType:65];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"reportAConcernTemplate" elementType:101];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"settingsTemplate" elementType:115];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"signInTemplate" elementType:121];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"menuBarTemplate" elementType:71];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"onboardingTemplate" elementType:85];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"panelTemplate" elementType:83];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"playlist" elementType:87];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"physicalCirclesTemplate" elementType:85];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"previewTemplate" elementType:91];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"productTemplate" elementType:93];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"redeemTemplate" elementType:98];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"shareTemplate" elementType:117];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"splitViewTemplate" elementType:129];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"stackTemplate" elementType:132];
  [MEMORY[0x277D1B130] registerClass:objc_opt_class() forElementName:@"trendingSearchTemplate" elementType:148];
  v0 = MEMORY[0x277D1B130];
  v1 = objc_opt_class();

  return [v0 registerClass:v1 forElementName:@"writeAReviewTemplate" elementType:153];
}

void sub_215DD453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_215DD5FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DD6D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DD7210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DD7DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DD8294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

SKUIMessageBanner *SKUIFamilyAlertMessageBanner(void *a1, void *a2, uint64_t *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v71 = a2;
  v5 = +[SKUIFamilyCircleController sharedController];
  v6 = [v5 iCloudFamily];
  v66 = v5;
  v7 = [v5 familyCircle];
  v8 = [MEMORY[0x277D69A20] defaultStore];
  v72 = [v8 activeAccount];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v9 = [v6 members];
  v10 = [v9 countByEnumeratingWithState:&v73 objects:v97 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v74;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v73 + 1) + 8 * i);
        if ([v15 isMe])
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v73 objects:v97 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  *a3 = 0;
  v67 = v4;
  if (!v7)
  {
    v21 = [v6 members];
    v22 = [v21 count];

    if (!v22)
    {
      goto LABEL_21;
    }

    v23 = [v12 iTunesAccountDSID];
    v24 = [v72 uniqueIdentifier];
    v25 = [v23 isEqual:v24];

    if ((v25 & 1) == 0)
    {
      *a3 = 1;
LABEL_36:
      if (v4)
      {
        [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH" inBundles:0];
      }
      v29 = ;
      if (v4)
      {
        [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_HIGHLIGHT"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_HIGHLIGHT" inBundles:0];
      }
      v68 = ;
      v64 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v68];
      v63 = 0;
      goto LABEL_48;
    }

    v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [v26 BOOLForKey:@"SKUIHideFamilyBanner"];

    if (v27)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (!v6 || !v12)
  {
    goto LABEL_21;
  }

  v17 = [v12 iTunesAccountDSID];

  if (!v17)
  {
LABEL_27:
    *a3 = 3;
    goto LABEL_28;
  }

  v18 = [v12 iTunesAccountDSID];
  v19 = [v72 uniqueIdentifier];
  v20 = [v18 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    *a3 = 2;
LABEL_25:
    if (v4)
    {
      [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2" inBundles:0];
    }
    v29 = ;
    if (v4)
    {
      [v4 localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2_HIGHLIGHT"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_ACCOUNT_MISMATCH_2_HIGHLIGHT" inBundles:0];
    }
    v30 = ;
    v31 = MEMORY[0x277CCACA8];
    v32 = [v12 appleID];
    v68 = v30;
    v64 = [v31 stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@%@" error:0, v32, v30];

    v63 = 0;
    *a3 = 2;
    goto LABEL_48;
  }

LABEL_21:
  v28 = *a3;
  if (*a3 != 3)
  {
    if (v28 == 2)
    {
      goto LABEL_25;
    }

    if (v28 != 1)
    {
      v63 = 0;
      v64 = 0;
      v68 = 0;
      v29 = 0;
      goto LABEL_48;
    }

    goto LABEL_36;
  }

LABEL_28:
  if (v4)
  {
    [v4 localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE" inBundles:0];
  }
  v29 = ;
  if (v4)
  {
    [v4 localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE_HIGHLIGHT"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"PURCHASED_FAMILY_SETUP_INCOMPLETE_HIGHLIGHT" inBundles:0];
  }
  v68 = ;
  v64 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v68];
  *a3 = 3;
  v63 = 1;
LABEL_48:
  v33 = [MEMORY[0x277D69B38] sharedConfig];
  v34 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v34 |= 2u;
  }

  v35 = [v33 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  v65 = v6;
  if (v36)
  {
    v62 = [v6 members];
    v37 = v29;
    v38 = [v62 count];
    v39 = [v12 iTunesAccountDSID];
    v40 = [v72 uniqueIdentifier];
    v41 = *a3;
    v81 = 138414082;
    v82 = v7;
    v83 = 2112;
    v84 = v6;
    v85 = 2048;
    v86 = v38;
    v29 = v37;
    v87 = 2112;
    v88 = v12;
    v89 = 2112;
    v90 = v39;
    v91 = 2112;
    v92 = v72;
    v93 = 2112;
    v94 = v40;
    v42 = v40;
    v95 = 2048;
    v96 = v41;
    LODWORD(v61) = 82;
    v43 = _os_log_send_and_compose_impl();

    if (!v43)
    {
      goto LABEL_57;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:{4, &v81, v61}];
    free(v43);
    SSFileLog();
  }

LABEL_57:
  v70 = v29;
  if (v29)
  {
    v44 = objc_alloc_init(MEMORY[0x277D74240]);
    [v44 setAlignment:1];
    [v44 setLineBreakMode:4];
    v79[0] = *MEMORY[0x277D740A8];
    v45 = v79[0];
    v46 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    v47 = *MEMORY[0x277D740C0];
    v80[0] = v46;
    v80[1] = v71;
    v48 = *MEMORY[0x277D74118];
    v79[1] = v47;
    v79[2] = v48;
    v80[2] = v44;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];

    v77[0] = v45;
    v50 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    v78[0] = v50;
    v77[1] = v47;
    v51 = [MEMORY[0x277D75348] blackColor];
    v77[2] = v48;
    v78[1] = v51;
    v78[2] = v44;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];

    v53 = v64;
    v54 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v64 attributes:v52];
    v55 = [v64 rangeOfString:v68];
    [v54 setAttributes:v49 range:{v55, v56}];

    if (v54)
    {
      v57 = objc_alloc_init(SKUIMessageBanner);
      [(SKUIMessageBanner *)v57 setAttributedMessage:v54];
      [(SKUIMessageBanner *)v57 setShowsClearButton:v63];
    }

    else
    {
      v57 = 0;
    }

    v58 = v67;
    v59 = v65;
  }

  else
  {
    v54 = 0;
    v57 = 0;
    v58 = v67;
    v53 = v64;
    v59 = v65;
  }

  return v57;
}

void sub_215DD95F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_215DD9E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DDA9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DDB5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DDBFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DDD018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DDD318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DDF0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t SKUIPageForCollectionView(void *a1)
{
  v1 = a1;
  [v1 contentOffset];
  v3 = v2;
  [v1 frame];
  v5 = v4;

  return llround(v3 / v5);
}

void sub_215DE5FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DE6608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DE73BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DE85F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DEA148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DEAD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DEC314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DEC550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DEC8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DED120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SKUIPopoverBackdropViewForView(void *a1)
{
  v1 = a1;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  SKUIPopoverBackdropViewForView_cold_1();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v2 = 0;
  do
  {
    v3 = v1;

    v1 = [v3 superview];

    v2 = v3;
  }

  while (v1);
LABEL_10:
  objc_opt_class();
  v4 = __ChildViewWithClass(v3);
  objc_opt_class();
  v5 = __ChildViewWithClass(v4);

  return v5;
}

id __ChildViewWithClass(void *a1)
{
  v1 = [a1 subviews];
  v2 = [v1 mutableCopy];

  v3 = [v2 count];
  if (v3 < 1)
  {
LABEL_7:
    v6 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      v6 = [v2 objectAtIndex:v5];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [v6 subviews];
      if ([v7 count])
      {
        [v2 addObjectsFromArray:v7];
        v4 = [v2 count];
      }

      if (++v5 >= v4)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

void sub_215DEFD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void SKUIPhysicalCircleConstantsWithTraitCollection(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIPhysicalCircleConstantsWithTraitCollection_cold_1();
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = xmmword_215F40020;
  *(a2 + 48) = 0x4000000000000000;
  *(a2 + 32) = xmmword_215F40030;
  v4 = [v3 horizontalSizeClass];
  v5 = 10.0;
  if (v4 == 2)
  {
    v5 = 12.0;
  }

  *(a2 + 56) = v5;
}

uint64_t SKUIStatusBarAlertStyleFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"information"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"success"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"other"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SKUIStatusBarAlertStyleGetColor(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      a1 = [MEMORY[0x277D75348] systemRedColor];
    }

    else if (a1 == 3)
    {
      a1 = [MEMORY[0x277D75348] systemPurpleColor];
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      a1 = [MEMORY[0x277D75348] systemGreenColor];
    }
  }

  else
  {
    a1 = [MEMORY[0x277D75348] systemBlueColor];
  }

  return a1;
}

void sub_215DF7B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DF7E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DFA15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_215DFA308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DFB92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215DFBB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DFC348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_215DFCB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DFD360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215DFE898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215DFEF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v41 - 248));
  _Unwind_Resume(a1);
}

id SKUIMessageBannerAttributedString(void *a1, void *a2)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIMessageBannerAttributedString_cold_1();
  }

  v5 = objc_alloc_init(MEMORY[0x277D74240]);
  [v5 setAlignment:1];
  [v5 setLineBreakMode:4];
  v23[0] = *MEMORY[0x277D740A8];
  v6 = v23[0];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v8 = *MEMORY[0x277D740C0];
  v24[0] = v7;
  v24[1] = v4;
  v9 = *MEMORY[0x277D74118];
  v23[1] = v8;
  v23[2] = v9;
  v24[2] = v5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v21[0] = v6;
  v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v22[0] = v11;
  v21[1] = v8;
  v12 = [MEMORY[0x277D75348] blackColor];
  v21[2] = v9;
  v22[1] = v12;
  v22[2] = v5;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (v3)
  {
    [v3 localizedStringForKey:@"ASK_PERMISSION_MESSAGE" inTable:@"ProductPage"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"ASK_PERMISSION_MESSAGE" inBundles:0 inTable:@"ProductPage"];
  }
  v14 = ;
  if (v3)
  {
    [v3 localizedStringForKey:@"ASK_PERMISSION_MESSAGE_HIGHLIGHT" inTable:@"ProductPage"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"ASK_PERMISSION_MESSAGE_HIGHLIGHT" inBundles:0 inTable:@"ProductPage"];
  }
  v15 = ;
  v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];
  v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v16 attributes:v13];
  v18 = [v16 rangeOfString:v15];
  [v17 setAttributes:v10 range:{v18, v19}];

  return v17;
}

void sub_215E02480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215E02DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E08BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E09970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E09CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ImageAnalyzer::ImageAnalyzer(ImageAnalyzer *this)
{
  ITColor::ITColor(this + 1);
  ITColor::ITColor(this + 2);
  ITColor::ITColor(this + 3);
  ITColor::ITColor(this + 4);
  ITColor::ITColor(this + 5);
  ITColor::ITColor(this + 6);
  ITColor::ITColor(this + 7);
  ITColor::ITColor(this + 8);
  ITColor::ITColor(this + 9);
  *this = 0;
  *(this + 1) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
}

void ImageAnalyzer::~ImageAnalyzer(ImageAnalyzer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
    *(this + 1) = 0;
  }

  v4 = *(this + 43);
  if (v4)
  {
    *(this + 44) = v4;
    operator delete(v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    *(this + 41) = v5;
    operator delete(v5);
  }
}

uint64_t ImageAnalyzer::AnalyzeImage(ImageAnalyzer *this, CGContext *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = ImageAnalyzer::GenerateColorMaps(this, a2);
  if (result)
  {
    result = ImageAnalyzer::QuantizeColorMaps(this);
    if (result)
    {
      ImageAnalyzer::PickBackgroundColor(this);
      ImageAnalyzer::PickTextColors(this);
      ImageAnalyzer::DoPostImageAnalysis(this);
      return 1;
    }
  }

  return result;
}

uint64_t ImageAnalyzer::GenerateColorMaps(ImageAnalyzer *this, CGContextRef context)
{
  if (!context)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  result = 0;
  if (Height == 22 && Width == 22)
  {
    ITColor::ITColor(&v32);
    BitmapInfo = CGBitmapContextGetBitmapInfo(context);
    result = CGBitmapContextGetData(context);
    v29 = result;
    if (result)
    {
      result = malloc_type_calloc(0x1E4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *this = result;
      if (result)
      {
        v11 = 0;
        v12 = BitmapInfo & 0x3000;
        v13 = 1;
        v14 = 24;
        do
        {
          v15 = 0;
          v31 = v14;
          do
          {
            v16 = v29 + BytesPerRow * v13 + v15;
            if (v12)
            {
              v17 = 4;
            }

            else
            {
              v17 = 7;
            }

            if (v12)
            {
              v18 = 5;
            }

            else
            {
              v18 = 6;
            }

            if (v12)
            {
              v19 = 6;
            }

            else
            {
              v19 = 5;
            }

            LOBYTE(v8) = *(v16 + v19);
            LOBYTE(v9) = *(v16 + v18);
            LOBYTE(v10) = *(v16 + v17);
            ITColor::ITColor(&v33, *&v8 / 255.0, *&v9 / 255.0, v10 / 255.0, 1.0);
            v32 = v33;
            HSVColor = ITColor::GetHSVColor(&v33);
            v22 = v21;
            v24 = v23;
            ITColor::GetLuminance(&v33);
            v25 = *this;
            v26 = (*this + v14);
            *(v26 - 3) = HSVColor;
            v27 = v25 + v11 + 8 * v15;
            *(v27 + 8) = v22;
            *(v27 + 16) = v24;
            *v26 = v28;
            v9 = *(this + 47);
            v8 = v28 + v9;
            *(this + 47) = v8;
            v15 += 4;
            v14 += 32;
          }

          while (v15 != 80);
          ++v13;
          v14 = v31 + 640;
          v11 += 640;
        }

        while (v13 != 21);
        *(this + 47) = v8 / 400.0;
        return 1;
      }
    }
  }

  return result;
}

uint64_t ImageAnalyzer::QuantizeColorMaps(ImageAnalyzer *this)
{
  result = malloc_type_calloc(0x190uLL, 8uLL, 0x100004000313F17uLL);
  *(this + 1) = result;
  if (result)
  {
    result = malloc_type_calloc(0x190uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v6 = 1;
      do
      {
        if ((v3[v5] & 1) == 0)
        {
          v7 = (*this + 32 * v5);
          v8 = ImageAnalyzer::WeightForPointOnEdge(result, v5 - 20 * (v5 / 0x14u), v5 / 0x14u);
          v23 = *v7;
          v24 = v7[1];
          v30[0] = *v7;
          v30[1] = v24;
          v31 = v5;
          v32 = v8;
          v34 = v4;
          std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](&v33, v30);
          *(*(this + 1) + 8 * v5) = v32;
          v3[v5] = 1;
          if (v5 <= 0x18E)
          {
            v9 = v6;
            do
            {
              if ((v3[v9] & 1) == 0)
              {
                v10 = *this + 32 * v9;
                v25 = *(v10 + 16);
                v26 = *v10;
                result = isCloseToColor(0, *&v23, *(&v23 + 1), *&v24, *(&v24 + 1), *v10, *(v10 + 8), *&v25, *(v10 + 24), 0.0799999982);
                if (result)
                {
                  v11 = ImageAnalyzer::WeightForPointOnEdge(result, v9 - 20 * (v9 / 0x14u), v9 / 0x14u);
                  v27[0] = v26;
                  v27[1] = v25;
                  v28 = v9;
                  v29 = v11;
                  ImageAnalyzer::AddQuantizeColorEntryToSet(v12, v27, &v33);
                  v3[v9] = 1;
                }
              }

              ++v9;
            }

            while (v9 != 400);
          }

          v4 = v33;
          if (v34 != v33)
          {
            *&v27[0] = CompareQuantizeSortcolor;
            std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(v33, v34, v27, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v34 - v33)), 1);
            v4 = v33;
            v13 = *(v33 + 8);
            v14 = *(v33 + 5);
            v15 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
            if (v15 >= 2)
            {
              v16 = v33 + 11;
              v17 = v15 - 1;
              do
              {
                v18 = *(v16 - 2);
                v19 = *v16;
                if ((v3[v18] & 1) == 0)
                {
                  v3[v18] = 1;
                }

                v14 = v14 + v19;
                v16 += 6;
                v20 = (*this + 32 * v13);
                v21 = v20[1];
                v22 = (*this + 32 * v18);
                *v22 = *v20;
                v22[1] = v21;
                --v17;
              }

              while (v17);
            }

            *(*(this + 1) + 8 * v13) = v14;
          }
        }

        ++v5;
        ++v6;
      }

      while (v5 != 400);
      free(v3);
      if (v4)
      {
        v34 = v4;
        operator delete(v4);
      }

      return 1;
    }
  }

  return result;
}

void sub_215E0A734(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ImageAnalyzer::PickBackgroundColor(ITColor *this)
{
  var3 = this[11].var3;
  v3 = ImageAnalyzer::DominantColors(this);
  v4 = *(*v3 + 16);
  *&this[1].var0 = **v3;
  *&this[1].var2 = v4;
  v5 = *&this[1].var2;
  *&v29.var0 = *&this[1].var0;
  *&v29.var2 = v5;
  if (ITColor::GetContrastWithLuminance(&v29, 0.180000007) < 1.29999995)
  {
    ContrastWithLuminance = ITColor::GetContrastWithLuminance(this + 1, 0.180000007);
    v7 = (*(v3 + 8) - *v3) >> 5;
    if (v7 >= 2)
    {
      v8 = ContrastWithLuminance;
      if (v7 == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      for (i = 1; i != v9; ++i)
      {
        v11 = *&this[10].var3;
        v12 = v11[i];
        if (v12 <= 0.0)
        {
          break;
        }

        v13 = *v11 / v12;
        if (v13 <= 0.9 || v13 >= 1.112)
        {
          break;
        }

        v14 = ITColor::GetContrastWithLuminance((*v3 + 32 * i), 0.180000007);
        if (v14 > v8)
        {
          v15 = (*v3 + 32 * i);
          v16 = v15[1];
          *&this[1].var0 = *v15;
          *&this[1].var2 = v16;
          v8 = v14;
        }
      }
    }
  }

  v17 = *&this[1].var2;
  *&v29.var0 = *&this[1].var0;
  *&v29.var2 = v17;
  if (ITColor::GetContrastWithLuminance(&v29, 0.180000007) < 1.29999995)
  {
    HSVColor = ITColor::GetHSVColor(this + 1);
    v28.f64[0] = v18.f64[0];
    v28.f64[1] = v19;
    if (var3 < 0.180000007 || (v25 = v19, v26 = v18.f64[0], v20 = *&this[1].var2, *&v29.var0 = *&this[1].var0, *&v29.var2 = v20, ITColor::GetLuminance(&v29), v19 = v25, v18.f64[0] = v26, v21 < 0.180000007))
    {
      v18.f64[1] = v19;
      v28 = vmulq_f64(v18, xmmword_215F400F0);
    }

    this[1].var0 = ITColor::CreateFromHSVColor(&HSVColor);
    this[1].var1 = v22;
    this[1].var2 = v23;
    this[1].var3 = v24;
  }
}

void ImageAnalyzer::PickTextColors(ITColor *this)
{
  v2 = ImageAnalyzer::DominantColors(this);
  v3 = *(v2 + 8) - *v2;
  v4 = v3 >> 5;
  v5 = &unk_215F40000;
  if ((v3 >> 5) < 2)
  {
    v46 = 0;
    v45 = 0;
    goto LABEL_34;
  }

  v6 = v2;
  ContrastWithColor = ITColor::GetContrastWithColor((*v2 + 32), this + 1);
  v8 = 0;
  LOBYTE(v9) = 0;
  v10 = (v3 >> 5);
  v11 = 1;
  v96 = v4;
  v12 = v4;
  v13 = 1;
  v14 = 1;
  v15 = ContrastWithColor;
  do
  {
    v16 = (*v6 + v8);
    v17 = v16[1];
    *&v97.var0 = *v16;
    *&v97.var2 = v17;
    if (v9)
    {
      v9 = 1;
    }

    else
    {
      var0 = this[1].var0;
      var1 = this[1].var1;
      var2 = this[1].var2;
      var3 = this[1].var3;
      v99 = v97;
      v98.var0 = var0;
      v98.var1 = var1;
      v98.var2 = var2;
      v98.var3 = var3;
      v100 = v97;
      ITColor::GetLuminance(&v100);
      v23 = v22 >= 0.180000007;
      v100.var0 = var0;
      v100.var1 = var1;
      v100.var2 = var2;
      v100.var3 = var3;
      ITColor::GetLuminance(&v100);
      if (((v23 ^ (v24 >= 0.180000007)) & 1) != 0 && ITColor::GetContrastWithColor(&v99, &v98) >= 4.5999999)
      {
        ImageAnalyzer::EnhanceContrastWithColor(v97, this[1], 0.449999988);
        this[2].var0 = v25;
        this[2].var1 = v26;
        this[2].var2 = v27;
        this[2].var3 = v28;
        v9 = 1;
        v12 = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    v29 = ITColor::GetContrastWithColor(&v97, this + 1);
    if (v29 > v15)
    {
      if (v29 <= ContrastWithColor)
      {
        v15 = v29;
        v14 = v11 - 1;
      }

      else
      {
        v15 = ContrastWithColor;
        ContrastWithColor = v29;
        v14 = v13;
        v13 = v11 - 1;
      }
    }

    ++v11;
    v8 += 32;
  }

  while (32 * v10 != v8);
  if (v12 >= v96)
  {
LABEL_19:
    LOBYTE(v34) = 0;
  }

  else
  {
    v30 = v12;
    v31 = 32 * v12;
    v32 = v30 - v10;
    v33 = v30 + 1;
    v34 = 1;
    while (1)
    {
      v35 = (*v6 + v31);
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[2];
      v39 = v35[3];
      v101.var0 = *v35;
      v101.var1 = v37;
      v101.var2 = v38;
      v101.var3 = v39;
      if (contrastsEnoughWithColor(v101, this[1]))
      {
        break;
      }

      v34 = v33 < v10;
      v31 += 32;
      ++v33;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_19;
      }
    }

    v103.var0 = v36;
    v103.var1 = v37;
    v103.var2 = v38;
    v103.var3 = v39;
    ImageAnalyzer::EnhanceContrastWithColor(v103, this[1], 0.449999988);
    this[3].var0 = v47;
    this[3].var1 = v48;
    this[3].var2 = v49;
    this[3].var3 = v50;
    if (v9 & v34)
    {
      v46 = 1;
      v45 = 1;
      LODWORD(v4) = v96;
      v5 = &unk_215F40000;
      goto LABEL_34;
    }
  }

  ITColor::ITColor(&v100);
  if (v9)
  {
    goto LABEL_23;
  }

  ImageAnalyzer::EnhanceContrastWithColor(*(*v6 + 32 * v13), this[1], 0.200000003);
  v100 = v102;
  if (contrastsEnoughWithColor(v102, this[1]))
  {
    ImageAnalyzer::EnhanceContrastWithColor(v100, this[1], 0.449999988);
    this[2].var0 = v41;
    this[2].var1 = v42;
    this[2].var2 = v43;
    this[2].var3 = v44;
LABEL_23:
    v45 = 1;
    goto LABEL_28;
  }

  v45 = 0;
LABEL_28:
  v5 = &unk_215F40000;
  if (!v34)
  {
    ImageAnalyzer::EnhanceContrastWithColor(*(*v6 + 32 * v14), this[1], 0.200000003);
    v100 = v104;
    if (!contrastsEnoughWithColor(v104, this[1]))
    {
      v46 = 0;
      goto LABEL_33;
    }

    ImageAnalyzer::EnhanceContrastWithColor(v100, this[1], 0.449999988);
    this[3].var0 = v51;
    this[3].var1 = v52;
    this[3].var2 = v53;
    this[3].var3 = v54;
  }

  v46 = 1;
LABEL_33:
  LODWORD(v4) = v96;
LABEL_34:
  v55 = *&this[1].var2;
  *&v100.var0 = *&this[1].var0;
  *&v100.var2 = v55;
  ITColor::GetLuminance(&v100);
  v56 = &this[2];
  v58 = this[2].var1;
  v57 = this[2].var2;
  v59 = this[2].var3;
  v60 = v5[16];
  if (v61 >= v60)
  {
    v100.var0 = this[2].var0;
    v100.var1 = v58;
    v100.var2 = v57;
    v100.var3 = v59;
    ITColor::GetLuminance(&v100);
    if (v62 >= v60)
    {
      v45 = 0;
    }

    v63 = *&this[3].var2;
    *&v100.var0 = *&this[3].var0;
    *&v100.var2 = v63;
    ITColor::GetLuminance(&v100);
    if (v64 >= v60)
    {
      v46 = 0;
    }

    if (v45)
    {
      goto LABEL_56;
    }

LABEL_46:
    v68 = *&this[1].var2;
    *&v100.var0 = *&this[1].var0;
    *&v100.var2 = v68;
    ITColor::GetLuminance(&v100);
    if (v69 < v60)
    {
      if (v4)
      {
        v70 = this[1].var0;
        v71 = this[1].var1;
        v72 = this[1].var2;
        v73 = this[1].var3;
        v74 = &ITColor::kWhite;
        goto LABEL_51;
      }

      v79 = &ITColor::kWhite;
    }

    else
    {
      if (v4)
      {
        v70 = this[1].var0;
        v71 = this[1].var1;
        v72 = this[1].var2;
        v73 = this[1].var3;
        v74 = &ITColor::kBlack;
LABEL_51:
        BlendedColorWithFraction = ITColor::CreateBlendedColorWithFraction(v74, 0.0500000007, *&v70);
LABEL_55:
        this[2].var0 = BlendedColorWithFraction;
        this[2].var1 = v76;
        this[2].var2 = v77;
        this[2].var3 = v78;
        goto LABEL_56;
      }

      v79 = &ITColor::kBlack;
    }

    BlendedColorWithFraction = *v79;
    v76 = *(v79 + 1);
    v77 = *(v79 + 2);
    v78 = *(v79 + 3);
    goto LABEL_55;
  }

  v100.var0 = this[2].var0;
  v100.var1 = v58;
  v100.var2 = v57;
  v100.var3 = v59;
  ITColor::GetLuminance(&v100);
  if (v65 < v60)
  {
    v45 = 0;
  }

  v66 = *&this[3].var2;
  *&v100.var0 = *&this[3].var0;
  *&v100.var2 = v66;
  ITColor::GetLuminance(&v100);
  if (v67 < v60)
  {
    v46 = 0;
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_56:
  if (v46)
  {
    goto LABEL_67;
  }

  v80 = *&this[1].var2;
  *&v100.var0 = *&this[1].var0;
  *&v100.var2 = v80;
  ITColor::GetLuminance(&v100);
  if (v81 < v60)
  {
    if (v4)
    {
      v82 = this[1].var0;
      v83 = this[1].var1;
      v84 = this[1].var2;
      v85 = this[1].var3;
      v86 = &ITColor::kWhite;
      goto LABEL_62;
    }

    v91 = &ITColor::kWhite;
LABEL_65:
    v87 = *v91;
    v88 = *(v91 + 1);
    v89 = *(v91 + 2);
    v90 = *(v91 + 3);
    goto LABEL_66;
  }

  if (!v4)
  {
    v91 = &ITColor::kBlack;
    goto LABEL_65;
  }

  v82 = this[1].var0;
  v83 = this[1].var1;
  v84 = this[1].var2;
  v85 = this[1].var3;
  v86 = &ITColor::kBlack;
LABEL_62:
  v87 = ITColor::CreateBlendedColorWithFraction(v86, 0.100000001, *&v82);
LABEL_66:
  this[3].var0 = v87;
  this[3].var1 = v88;
  this[3].var2 = v89;
  this[3].var3 = v90;
LABEL_67:
  v92 = ITColor::GetContrastWithColor(this + 2, this + 1);
  if (ITColor::GetContrastWithColor(this + 3, this + 1) > v92)
  {
    v94 = *v56;
    v93 = *&this[2].var2;
    v95 = *&this[3].var2;
    *v56 = *&this[3].var0;
    *&this[2].var2 = v95;
    *&this[3].var0 = v94;
    *&this[3].var2 = v93;
  }
}

void ImageAnalyzer::DoPostImageAnalysis(ITColor *this)
{
  v2 = this + 1;
  this[4].var0 = ITColor::CreateBlendedColorWithFraction(this + 2, 0.200000003, this[1]);
  this[4].var1 = v3;
  this[4].var2 = v4;
  this[4].var3 = v5;
  this[5].var0 = ITColor::CreateBlendedColorWithFraction(this + 3, 0.200000003, *v2);
  this[5].var1 = v6;
  this[5].var2 = v7;
  this[5].var3 = v8;
  ImageAnalyzer::CalculateOneShadowColor(v9, this + 2, v2);
  this[6].var0 = v10;
  this[6].var1 = v11;
  this[6].var2 = v12;
  this[6].var3 = v13;
  ImageAnalyzer::CalculateOneShadowColor(v14, this + 3, v2);
  this[8].var0 = v15;
  this[8].var1 = v16;
  this[8].var2 = v17;
  this[8].var3 = v18;
  ImageAnalyzer::CalculateOneShadowColor(v19, this + 4, v2);
  this[7].var0 = v20;
  this[7].var1 = v21;
  this[7].var2 = v22;
  this[7].var3 = v23;
  ImageAnalyzer::CalculateOneShadowColor(v24, this + 5, v2);
  this[9].var0 = v25;
  this[9].var1 = v26;
  this[9].var2 = v27;
  this[9].var3 = v28;
}

double ImageAnalyzer::AddQuantizeColorEntryToSet(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (a3[1] == *a3)
  {
LABEL_5:

    std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](a3, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (!isCloseToColor(0, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(v5 + v6), *(v5 + v6 + 8), *(v5 + v6 + 16), *(v5 + v6 + 24), 0.0799999982))
    {
      ++v7;
      v5 = *a3;
      v6 += 48;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *a3 + v6;
    result = *(a2 + 40) + *(v9 + 40);
    *(v9 + 40) = result;
  }

  return result;
}

BOOL isCloseToColor(ITColor *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 && (a3 < 0.0500000007 && a7 < 0.0500000007 || a5 < 0.0149999997 && a9 < 0.0149999997))
  {
    v34.var0 = ITColor::CreateFromHSVDoubles(a1, a2, a3, a4);
    v34.var1 = v23;
    v34.var2 = v24;
    v34.var3 = v25;
    v33.var0 = ITColor::CreateFromHSVDoubles(v26, a6, a7, a8);
    v33.var1 = v27;
    v33.var2 = v28;
    v33.var3 = v29;
    if (ITColor::GetContrastWithColor(&v34, &v33) <= 1.65999997)
    {
      return 1;
    }
  }

  if (vabdd_f64(a3, a7) > a10 || vabdd_f64(a4, a8) > a10)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= a10)
  {
    return 1;
  }

  v31 = a2 + 1.0;
  if (a2 >= a10)
  {
    v31 = a2;
  }

  v32 = a6 + 1.0;
  if (a6 >= a10)
  {
    v32 = a6;
  }

  return vabdd_f64(v31, v32) <= a10;
}

void std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<sortQuantizeColorEntry>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

double ImageAnalyzer::WeightForPointOnEdge(ImageAnalyzer *this, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  if (a2 <= 4 && a3 <= 4)
  {
    v4 = a3;
    v5 = 4.00000006 - v3;
LABEL_4:
    v6 = 4.00000006 - v4;
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v7 = v5 * 0.75;
    v8 = v6 * 0.75;
    if (v8 <= v7)
    {
      v8 = v7;
    }

    goto LABEL_16;
  }

  if (a2 > 4)
  {
    if (a2 >= 0x10 && a3 <= 4)
    {
      v4 = a3;
      v5 = 15.9999999 - v3;
      goto LABEL_4;
    }

    v8 = 1.0;
    if (a2 < 0x10)
    {
      goto LABEL_16;
    }

    v9 = 15.9999999;
  }

  else
  {
    v9 = 4.00000006;
  }

  v10 = v9 - v3;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  v8 = v10 * 0.75;
LABEL_16:
  result = 1.0;
  if (v8 >= 1.0)
  {
    return v8;
  }

  return result;
}

uint64_t ImageAnalyzer::DominantColors(ImageAnalyzer *this)
{
  if (*(this + 41) == *(this + 40))
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    ITColor::ITColor(&v43);
    v3 = 0;
    for (i = 0; i != 3200; i += 8)
    {
      if (*(*(this + 1) + i) >= 1.0)
      {
        v42[0] = *(*(this + 1) + i);
        v43.var0 = ITColor::CreateFromHSVDoubles(v2, *(*this + v3), *(*this + v3 + 8), *(*this + v3 + 16));
        v43.var1 = v5;
        v43.var2 = v6;
        v43.var3 = v7;
        v44 = *(*this + v3 + 24);
        ImageAnalyzer::AddDominantColorEntryToSet(v8, v42, &v45);
      }

      v3 += 32;
    }

    v9 = v45;
    if (v46 != v45)
    {
      v48 = CompareSortColor;
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(v45, v46, &v48, 126 - 2 * __clz((v46 - v45) >> 6), 1);
      std::vector<ITColor>::reserve(this + 40, (v46 - v45) >> 6);
      std::vector<double>::reserve(this + 43, (v46 - v45) >> 6);
      v9 = v45;
      if (v46 != v45)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = &v9[v10];
          v13 = *(this + 41);
          v14 = *(this + 42);
          if (v13 >= v14)
          {
            v17 = *(this + 40);
            v18 = (v13 - v17) >> 5;
            v19 = v18 + 1;
            if ((v18 + 1) >> 59)
            {
              std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
            }

            v20 = v14 - v17;
            if (v20 >> 4 > v19)
            {
              v19 = v20 >> 4;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFE0)
            {
              v21 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(this + 320, v21);
            }

            v22 = (32 * v18);
            v23 = v12[2];
            *v22 = v12[1];
            v22[1] = v23;
            v16 = 32 * v18 + 32;
            v24 = *(this + 40);
            v25 = *(this + 41) - v24;
            v26 = v22 - v25;
            memcpy(v22 - v25, v24, v25);
            v27 = *(this + 40);
            *(this + 40) = v26;
            *(this + 41) = v16;
            *(this + 42) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            v15 = v12[2];
            *v13 = v12[1];
            v13[1] = v15;
            v16 = (v13 + 2);
          }

          *(this + 41) = v16;
          v29 = *(this + 44);
          v28 = *(this + 45);
          if (v29 >= v28)
          {
            v31 = *(this + 43);
            v32 = v29 - v31;
            v33 = (v29 - v31) >> 3;
            v34 = v33 + 1;
            if ((v33 + 1) >> 61)
            {
              std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
            }

            v35 = v28 - v31;
            if (v35 >> 2 > v34)
            {
              v34 = v35 >> 2;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(this + 344, v36);
            }

            v37 = v33;
            v38 = (8 * v33);
            v39 = &v38[-v37];
            *v38 = *&v45[v10];
            v30 = v38 + 1;
            memcpy(v39, v31, v32);
            v40 = *(this + 43);
            *(this + 43) = v39;
            *(this + 44) = v30;
            *(this + 45) = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            *v29 = *&v45[v10];
            v30 = v29 + 8;
          }

          *(this + 44) = v30;
          ++v11;
          v9 = v45;
          v10 += 4;
        }

        while (v11 < (v46 - v45) >> 6);
      }
    }

    if (v9)
    {
      v46 = v9;
      operator delete(v9);
    }
  }

  return this + 320;
}

void sub_215E0B630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL IsLightColor(_OWORD *a1)
{
  v1 = a1[1];
  *&v4.var0 = *a1;
  *&v4.var2 = v1;
  ITColor::GetLuminance(&v4);
  return v2 >= 0.180000007;
}

void ImageAnalyzer::EnhanceContrastWithColor(ITColor a1, ITColor a2, double a3)
{
  var3 = a2.var3;
  var2 = a2.var2;
  var1 = a2.var1;
  var0 = a2.var0;
  v16 = a1;
  HSVColor = ITColor::GetHSVColor(&v16);
  v9 = v8;
  v11 = v10;
  ITColor::GetLuminance(&v16);
  v16.var0 = var0;
  v16.var1 = var1;
  v16.var2 = var2;
  v16.var3 = var3;
  ITColor::GetLuminance(&v16);
  v13 = 1.0 - (1.0 - v11) * a3;
  if (v14 >= 0.180000007)
  {
    v13 = v11 * a3;
  }

  ITColor::CreateFromHSVDoubles(v12, HSVColor, v9, v13);
}

BOOL contrastsEnoughWithColor(ITColor a1, ITColor a2)
{
  var3 = a2.var3;
  var2 = a2.var2;
  var1 = a2.var1;
  var0 = a2.var0;
  v11 = a1;
  v10 = a2;
  v12 = a1;
  ITColor::GetLuminance(&v12);
  v7 = v6 >= 0.180000007;
  v12.var0 = var0;
  v12.var1 = var1;
  v12.var2 = var2;
  v12.var3 = var3;
  ITColor::GetLuminance(&v12);
  return v7 != v8 >= 0.180000007 && ITColor::GetContrastWithColor(&v11, &v10) >= 3.0999999;
}

BOOL ImageAnalyzer::GetColorLuminanceTypeOfColor(ImageAnalyzer *this, ITColor a2)
{
  v4 = a2;
  ITColor::GetLuminance(&v4);
  return v2 < 0.180000007;
}

void ImageAnalyzer::CalculateOneShadowColor(ImageAnalyzer *this, ITColor *a2, ITColor *a3)
{
  ITColor::ITColor(&v14);
  ITColor::GetLuminance(a2);
  v6 = v5;
  ITColor::GetLuminance(a3);
  if (v6 >= v7)
  {
    v8 = &ITColor::kBlack;
  }

  else
  {
    v8 = &ITColor::kWhite;
  }

  v9 = v8[1];
  *&v14.var0 = *v8;
  *&v14.var2 = v9;
  ITColor::GetLuminance(&v14);
  v11 = v10;
  ITColor::GetLuminance(a3);
  v13 = vabdd_f64(v11, v12);
  ITColor::CreateBlendedColorWithFraction(&v14, 1.0 - ((v13 + v13) * -0.599999994 + 1.0), *a3);
}

double ImageAnalyzer::GetBorderMarginInPixels(ImageAnalyzer *this)
{
  v1 = *(this + 3);
  if (v1 <= *(this + 2))
  {
    v1 = *(this + 2);
  }

  return ceil(v1 * *(this + 46));
}

double ImageAnalyzer::MakeDesaturatedTextColorFor(ImageAnalyzer *this, ITColor a2)
{
  v7 = a2;
  HSVColor = ITColor::GetHSVColor(&v7);
  v6[2] = v3;
  v6[0] = HSVColor;
  v6[1] = v4 * 0.800000012;
  return ITColor::CreateFromHSVColor(v6);
}

void ImageAnalyzer::AddDominantColorEntryToSet(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 == *a3)
  {
    v23 = *(a3 + 8);
LABEL_7:
    v24 = *(a3 + 16);
    if (v23 >= v24)
    {
      v29 = (v23 - v5) >> 6;
      v30 = v29 + 1;
      if ((v29 + 1) >> 58)
      {
        std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
      }

      v31 = v24 - v5;
      if (v31 >> 5 > v30)
      {
        v30 = v31 >> 5;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFC0)
      {
        v32 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<sortColorEntry>>(a3, v32);
      }

      v33 = (v29 << 6);
      v34 = *a2;
      v35 = *(a2 + 1);
      v36 = *(a2 + 3);
      v33[2] = *(a2 + 2);
      v33[3] = v36;
      *v33 = v34;
      v33[1] = v35;
      v28 = (v29 << 6) + 64;
      v37 = *(a3 + 8) - *a3;
      v38 = v33 - v37;
      memcpy(v33 - v37, *a3, v37);
      v39 = *a3;
      *a3 = v38;
      *(a3 + 8) = v28;
      *(a3 + 16) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      v25 = *a2;
      v26 = *(a2 + 1);
      v27 = *(a2 + 3);
      *(v23 + 2) = *(a2 + 2);
      *(v23 + 3) = v27;
      *v23 = v25;
      *(v23 + 1) = v26;
      v28 = (v23 + 64);
    }

    *(a3 + 8) = v28;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = *a3;
    while (1)
    {
      v8 = &v5[v6];
      v40 = *(v8 + 2);
      v41 = *(v8 + 1);
      v9 = *(a2 + 2);
      *&v42.var0 = *(a2 + 1);
      *&v42.var2 = v9;
      HSVColor = ITColor::GetHSVColor(&v42);
      v12 = v11;
      v14 = v13;
      ITColor::GetLuminance(&v42);
      v16 = v15;
      *&v42.var0 = v41;
      *&v42.var2 = v40;
      v17 = ITColor::GetHSVColor(&v42);
      v19 = v18;
      v21 = v20;
      ITColor::GetLuminance(&v42);
      if (isCloseToColor(1, HSVColor, v12, v14, v16, v17, v19, v21, v22, 0.0700000003))
      {
        break;
      }

      ++v7;
      v5 = *a3;
      v23 = *(a3 + 8);
      v6 += 64;
      if (v7 >= &v23[-*a3] >> 6)
      {
        goto LABEL_7;
      }
    }

    *(*a3 + v6) = *a2 + *(*a3 + v6);
  }
}

void *std::vector<ITColor>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(result, a2);
    }

    std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t AnalyzeImagePlease(CGContext *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  ImageAnalyzer::ImageAnalyzer(v20);
  if ((ImageAnalyzer::AnalyzeImage(v20, a1) & 1) == 0)
  {
    ImageAnalyzer::~ImageAnalyzer(v20);
LABEL_5:
    v18 = 0;
    return v18 & 1;
  }

  v4 = v21;
  v5 = v22;
  v6 = v23;
  *a2 = v21;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *&v24;
  *(a2 + 24) = v24;
  *(a2 + 40) = v25;
  *(a2 + 56) = v26;
  *(a2 + 72) = v27;
  *(a2 + 88) = v28;
  *(a2 + 104) = v29;
  *(a2 + 120) = v30;
  *(a2 + 136) = v31;
  v8 = v34;
  *(a2 + 152) = v32;
  *(a2 + 168) = v33;
  *(a2 + 184) = v8;
  v9 = v36;
  *(a2 + 224) = v35;
  *(a2 + 240) = v9;
  v10 = v38;
  *(a2 + 192) = v37;
  *(a2 + 208) = v10;
  v11 = v40;
  *(a2 + 256) = v39;
  *(a2 + 272) = v11;
  *(a2 + 296) = 1;
  v42.var0 = v4;
  v42.var1 = v5;
  v42.var2 = v6;
  v42.var3 = v7;
  ITColor::GetLuminance(&v42);
  *(a2 + 297) = v12 >= 0.180000007;
  v13 = *(a2 + 48);
  *&v42.var0 = *(a2 + 32);
  *&v42.var2 = v13;
  ITColor::GetLuminance(&v42);
  *(a2 + 298) = v14 >= 0.180000007;
  v15 = *(a2 + 80);
  *&v42.var0 = *(a2 + 64);
  *&v42.var2 = v15;
  ITColor::GetLuminance(&v42);
  *(a2 + 299) = v16 >= 0.180000007;
  v17 = v41;
  *(a2 + 300) = v41 > 0.0;
  *(a2 + 288) = v17;
  ImageAnalyzer::~ImageAnalyzer(v20);
  v18 = *(a2 + 296);
  return v18 & 1;
}

double AnalyzedImageColors::GetSelectionColorForState(AnalyzedImageColors *this, int a2, int a3)
{
  if ((*(this + 296) & 1) == 0)
  {
    return 0.333;
  }

  if (a2 && a3)
  {
    return *(this + 8);
  }

  if (a2)
  {
    if (*(this + 297))
    {
      v4 = &ITColor::kBlack;
    }

    else
    {
      v4 = &ITColor::kWhite;
    }

    v5 = 0.25;
  }

  else
  {
    if (*(this + 297))
    {
      v4 = &ITColor::kBlack;
    }

    else
    {
      v4 = &ITColor::kWhite;
    }

    v5 = 0.150000006;
  }

  return ITColor::ColorWithAlphaComponent(v4, v5);
}

double AnalyzedImageColors::GetSelectedRowTextColorForState(AnalyzedImageColors *this, int a2, int a3)
{
  if (*(this + 296) == 1)
  {
    if (a2 && a3)
    {
      v3 = *(this + 5);
      *&v7.var0 = *(this + 4);
      *&v7.var2 = v3;
      ITColor::GetLuminance(&v7);
      if (v4 < 0.180000007)
      {
        v5 = &ITColor::kWhite;
      }

      else
      {
        v5 = &ITColor::kBlack;
      }
    }

    else if (*(this + 297))
    {
      v5 = &ITColor::kBlack;
    }

    else
    {
      v5 = &ITColor::kWhite;
    }
  }

  else
  {
    v5 = &ITColor::kWhite;
  }

  return *v5;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2781F8090, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sortQuantizeColorEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v324 = *a3;
      v325 = *(a2 - 3);
      v326 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v326;
      v355 = v325;
      v327 = *v11;
      v328 = v11[2];
      v353 = v11[1];
      v354 = v328;
      v352 = v327;
      if (!v324(&v355, &v352))
      {
        return;
      }

      goto LABEL_76;
    }

LABEL_10:
    if (v14 <= 1151)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v11, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,sortQuantizeColorEntry*>(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = &v11[3 * (v15 >> 1)];
    v18 = *a3;
    if (v14 >= 0x1801)
    {
      v19 = *v17;
      v20 = v17[2];
      v356 = v17[1];
      v357 = v20;
      v355 = v19;
      v21 = *v11;
      v22 = v11[2];
      v353 = v11[1];
      v354 = v22;
      v352 = v21;
      v23 = v18(&v355, &v352);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v26;
        v355 = v25;
        v27 = *v17;
        v28 = v17[2];
        v353 = v17[1];
        v354 = v28;
        v352 = v27;
        if (v24(&v355, &v352))
        {
          v29 = *v11;
          v30 = v11[2];
          v356 = v11[1];
          v357 = v30;
          v355 = v29;
          v31 = *v8;
          v32 = *(a2 - 1);
          v11[1] = *(a2 - 2);
          v11[2] = v32;
          *v11 = v31;
          goto LABEL_27;
        }

        v85 = *v11;
        v86 = v11[2];
        v356 = v11[1];
        v357 = v86;
        v355 = v85;
        v87 = *v17;
        v88 = v17[2];
        v11[1] = v17[1];
        v11[2] = v88;
        *v11 = v87;
        v89 = v355;
        v90 = v357;
        v17[1] = v356;
        v17[2] = v90;
        *v17 = v89;
        v91 = *a3;
        v92 = *v8;
        v93 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v93;
        v355 = v92;
        v94 = *v17;
        v95 = v17[2];
        v353 = v17[1];
        v354 = v95;
        v352 = v94;
        if (v91(&v355, &v352))
        {
          v96 = *v17;
          v97 = v17[2];
          v356 = v17[1];
          v357 = v97;
          v355 = v96;
          v98 = *v8;
          v99 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v99;
          *v17 = v98;
LABEL_27:
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
        }
      }

      else
      {
        v47 = *v8;
        v48 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v48;
        v355 = v47;
        v49 = *v17;
        v50 = v17[2];
        v353 = v17[1];
        v354 = v50;
        v352 = v49;
        if (v24(&v355, &v352))
        {
          v51 = *v17;
          v52 = v17[2];
          v356 = v17[1];
          v357 = v52;
          v355 = v51;
          v53 = *v8;
          v54 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v54;
          *v17 = v53;
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
          v55 = *a3;
          v56 = *v17;
          v57 = v17[2];
          v356 = v17[1];
          v357 = v57;
          v355 = v56;
          v58 = *v11;
          v59 = v11[2];
          v353 = v11[1];
          v354 = v59;
          v352 = v58;
          if (v55(&v355, &v352))
          {
            v60 = *v11;
            v61 = v11[2];
            v356 = v11[1];
            v357 = v61;
            v355 = v60;
            v62 = *v17;
            v63 = v17[2];
            v11[1] = v17[1];
            v11[2] = v63;
            *v11 = v62;
            v64 = v355;
            v65 = v357;
            v17[1] = v356;
            v17[2] = v65;
            *v17 = v64;
          }
        }
      }

      v100 = *a3;
      v101 = &v11[3 * v16];
      v102 = v101 - 3;
      v103 = *(v101 - 3);
      v104 = *(v101 - 1);
      v356 = *(v101 - 2);
      v357 = v104;
      v105 = a1[4];
      v352 = a1[3];
      v353 = v105;
      v354 = a1[5];
      v355 = v103;
      v106 = v100(&v355, &v352);
      v107 = *a3;
      if (v106)
      {
        v108 = *v9;
        v109 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v109;
        v355 = v108;
        v110 = *v102;
        v111 = v102[2];
        v353 = v102[1];
        v354 = v111;
        v352 = v110;
        if (v107(&v355, &v352))
        {
          v112 = a1[3];
          v113 = a1[4];
          v114 = a1[5];
          v116 = *(a2 - 5);
          v115 = *(a2 - 4);
          a1[3] = *v9;
          a1[4] = v116;
          a1[5] = v115;
          *(a2 - 5) = v113;
          *(a2 - 4) = v114;
          *v9 = v112;
        }

        else
        {
          v150 = a1[4];
          v355 = a1[3];
          v149 = v355;
          v356 = v150;
          v357 = a1[5];
          v151 = v357;
          v152 = *v102;
          v153 = v102[2];
          a1[4] = v102[1];
          a1[5] = v153;
          a1[3] = v152;
          v102[1] = v150;
          v102[2] = v151;
          *v102 = v149;
          v154 = *a3;
          v155 = *v9;
          v156 = *(a2 - 4);
          v356 = *(a2 - 5);
          v357 = v156;
          v355 = v155;
          v157 = *v102;
          v158 = v102[2];
          v353 = v102[1];
          v354 = v158;
          v352 = v157;
          if (v154(&v355, &v352))
          {
            v159 = *v102;
            v160 = v102[2];
            v356 = v102[1];
            v357 = v160;
            v355 = v159;
            v161 = *v9;
            v162 = *(a2 - 4);
            v102[1] = *(a2 - 5);
            v102[2] = v162;
            *v102 = v161;
            *v9 = v355;
            *(a2 - 5) = v356;
            *(a2 - 4) = v357;
          }
        }
      }

      else
      {
        v117 = *v9;
        v118 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v118;
        v355 = v117;
        v119 = *v102;
        v120 = v102[2];
        v353 = v102[1];
        v354 = v120;
        v352 = v119;
        if (v107(&v355, &v352))
        {
          v121 = *v102;
          v122 = v102[2];
          v356 = v102[1];
          v357 = v122;
          v355 = v121;
          v123 = *v9;
          v124 = *(a2 - 4);
          v102[1] = *(a2 - 5);
          v102[2] = v124;
          *v102 = v123;
          *v9 = v355;
          *(a2 - 5) = v356;
          *(a2 - 4) = v357;
          v125 = *a3;
          v126 = *v102;
          v127 = v102[2];
          v356 = v102[1];
          v357 = v127;
          v128 = a1[4];
          v352 = a1[3];
          v353 = v128;
          v354 = a1[5];
          v355 = v126;
          if (v125(&v355, &v352))
          {
            v130 = a1[4];
            v355 = a1[3];
            v129 = v355;
            v356 = v130;
            v357 = a1[5];
            v131 = v357;
            v132 = *v102;
            v133 = v102[2];
            a1[4] = v102[1];
            a1[5] = v133;
            a1[3] = v132;
            v102[1] = v130;
            v102[2] = v131;
            *v102 = v129;
          }
        }
      }

      v163 = *a3;
      v164 = &a1[3 * v16];
      v165 = v164[3];
      v166 = v164[5];
      v356 = v164[4];
      v357 = v166;
      v167 = a1[7];
      v352 = a1[6];
      v353 = v167;
      v354 = a1[8];
      v355 = v165;
      v168 = v163(&v355, &v352);
      v169 = *a3;
      if (v168)
      {
        v170 = *v10;
        v171 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v171;
        v355 = v170;
        v172 = v164[3];
        v173 = v164[5];
        v353 = v164[4];
        v354 = v173;
        v352 = v172;
        if (v169(&v355, &v352))
        {
          v174 = a1[6];
          v175 = a1[7];
          v176 = a1[8];
          v178 = *(a2 - 8);
          v177 = *(a2 - 7);
          a1[6] = *v10;
          a1[7] = v178;
          a1[8] = v177;
          *(a2 - 8) = v175;
          *(a2 - 7) = v176;
          *v10 = v174;
        }

        else
        {
          v197 = a1[7];
          v355 = a1[6];
          v196 = v355;
          v356 = v197;
          v357 = a1[8];
          v198 = v357;
          v199 = v164[3];
          v200 = v164[5];
          a1[7] = v164[4];
          a1[8] = v200;
          a1[6] = v199;
          v164[4] = v197;
          v164[5] = v198;
          v164[3] = v196;
          v201 = *a3;
          v202 = *v10;
          v203 = *(a2 - 7);
          v356 = *(a2 - 8);
          v357 = v203;
          v355 = v202;
          v204 = v164[3];
          v205 = v164[5];
          v353 = v164[4];
          v354 = v205;
          v352 = v204;
          if (v201(&v355, &v352))
          {
            v206 = v164[3];
            v207 = v164[5];
            v356 = v164[4];
            v357 = v207;
            v355 = v206;
            v208 = *v10;
            v209 = *(a2 - 7);
            v164[4] = *(a2 - 8);
            v164[5] = v209;
            v164[3] = v208;
            *v10 = v355;
            *(a2 - 8) = v356;
            *(a2 - 7) = v357;
          }
        }
      }

      else
      {
        v179 = *v10;
        v180 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v180;
        v355 = v179;
        v181 = v164[3];
        v182 = v164[5];
        v353 = v164[4];
        v354 = v182;
        v352 = v181;
        if (v169(&v355, &v352))
        {
          v183 = v164[3];
          v184 = v164[5];
          v356 = v164[4];
          v357 = v184;
          v355 = v183;
          v185 = *v10;
          v186 = *(a2 - 7);
          v164[4] = *(a2 - 8);
          v164[5] = v186;
          v164[3] = v185;
          *v10 = v355;
          *(a2 - 8) = v356;
          *(a2 - 7) = v357;
          v187 = *a3;
          v188 = v164[3];
          v189 = v164[5];
          v356 = v164[4];
          v357 = v189;
          v190 = a1[7];
          v352 = a1[6];
          v353 = v190;
          v354 = a1[8];
          v355 = v188;
          if (v187(&v355, &v352))
          {
            v192 = a1[7];
            v355 = a1[6];
            v191 = v355;
            v356 = v192;
            v357 = a1[8];
            v193 = v357;
            v194 = v164[3];
            v195 = v164[5];
            a1[7] = v164[4];
            a1[8] = v195;
            a1[6] = v194;
            v164[4] = v192;
            v164[5] = v193;
            v164[3] = v191;
          }
        }
      }

      v210 = *a3;
      v211 = *v17;
      v212 = v17[2];
      v356 = v17[1];
      v357 = v212;
      v355 = v211;
      v213 = *v102;
      v214 = v102[2];
      v353 = v102[1];
      v354 = v214;
      v352 = v213;
      v215 = v210(&v355, &v352);
      v216 = *a3;
      if (v215)
      {
        v217 = v164[3];
        v218 = v164[5];
        v356 = v164[4];
        v357 = v218;
        v355 = v217;
        v219 = *v17;
        v220 = v17[2];
        v353 = v17[1];
        v354 = v220;
        v352 = v219;
        if (v216(&v355, &v352))
        {
          v221 = *v102;
          v222 = v102[2];
          v356 = v102[1];
          v357 = v222;
          v355 = v221;
          v223 = v164[4];
          *v102 = v164[3];
          v102[1] = v223;
          v102[2] = v164[5];
          goto LABEL_55;
        }

        v243 = *v102;
        v244 = v102[2];
        v356 = v102[1];
        v357 = v244;
        v355 = v243;
        v245 = v17[1];
        *v102 = *v17;
        v102[1] = v245;
        v102[2] = v17[2];
        v246 = v357;
        v247 = v355;
        v17[1] = v356;
        v17[2] = v246;
        *v17 = v247;
        v248 = *a3;
        v249 = v164[3];
        v250 = v164[5];
        v356 = v164[4];
        v357 = v250;
        v355 = v249;
        v251 = *v17;
        v252 = v17[2];
        v353 = v17[1];
        v354 = v252;
        v352 = v251;
        if (v248(&v355, &v352))
        {
          v253 = *v17;
          v254 = v17[2];
          v356 = v17[1];
          v357 = v254;
          v355 = v253;
          v255 = v164[4];
          *v17 = v164[3];
          v17[1] = v255;
          v17[2] = v164[5];
LABEL_55:
          v256 = v357;
          v257 = v355;
          v164[4] = v356;
          v164[5] = v256;
          v164[3] = v257;
        }
      }

      else
      {
        v224 = v164[3];
        v225 = v164[5];
        v356 = v164[4];
        v357 = v225;
        v355 = v224;
        v226 = *v17;
        v227 = v17[2];
        v353 = v17[1];
        v354 = v227;
        v352 = v226;
        if (v216(&v355, &v352))
        {
          v228 = *v17;
          v229 = v17[2];
          v356 = v17[1];
          v357 = v229;
          v355 = v228;
          v230 = v164[4];
          *v17 = v164[3];
          v17[1] = v230;
          v17[2] = v164[5];
          v231 = v357;
          v232 = v355;
          v164[4] = v356;
          v164[5] = v231;
          v164[3] = v232;
          v233 = *a3;
          v234 = *v17;
          v235 = v17[2];
          v356 = v17[1];
          v357 = v235;
          v355 = v234;
          v236 = *v102;
          v237 = v102[2];
          v353 = v102[1];
          v354 = v237;
          v352 = v236;
          if (v233(&v355, &v352))
          {
            v238 = *v102;
            v239 = v102[2];
            v356 = v102[1];
            v357 = v239;
            v355 = v238;
            v240 = v17[1];
            *v102 = *v17;
            v102[1] = v240;
            v102[2] = v17[2];
            v241 = v357;
            v242 = v355;
            v17[1] = v356;
            v17[2] = v241;
            *v17 = v242;
          }
        }
      }

      v258 = *a1;
      v259 = a1[2];
      v356 = a1[1];
      v357 = v259;
      v355 = v258;
      v260 = *v17;
      v261 = v17[2];
      a1[1] = v17[1];
      a1[2] = v261;
      *a1 = v260;
      v262 = v355;
      v263 = v357;
      v17[1] = v356;
      v17[2] = v263;
      *v17 = v262;
      goto LABEL_57;
    }

    v33 = *v11;
    v34 = v11[2];
    v356 = v11[1];
    v357 = v34;
    v355 = v33;
    v35 = *v17;
    v36 = v17[2];
    v353 = v17[1];
    v354 = v36;
    v352 = v35;
    v37 = v18(&v355, &v352);
    v38 = *a3;
    if (v37)
    {
      v39 = *v8;
      v40 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v40;
      v355 = v39;
      v41 = *v11;
      v42 = v11[2];
      v353 = v11[1];
      v354 = v42;
      v352 = v41;
      if (v38(&v355, &v352))
      {
        v43 = *v17;
        v44 = v17[2];
        v356 = v17[1];
        v357 = v44;
        v355 = v43;
        v45 = *v8;
        v46 = *(a2 - 1);
        v17[1] = *(a2 - 2);
        v17[2] = v46;
        *v17 = v45;
LABEL_36:
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        goto LABEL_57;
      }

      v134 = *v17;
      v135 = v17[2];
      v356 = v17[1];
      v357 = v135;
      v355 = v134;
      v136 = *v11;
      v137 = v11[2];
      v17[1] = v11[1];
      v17[2] = v137;
      *v17 = v136;
      v138 = v355;
      v139 = v357;
      v11[1] = v356;
      v11[2] = v139;
      *v11 = v138;
      v140 = *a3;
      v141 = *v8;
      v142 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v142;
      v355 = v141;
      v143 = *v11;
      v144 = v11[2];
      v353 = v11[1];
      v354 = v144;
      v352 = v143;
      if (v140(&v355, &v352))
      {
        v145 = *v11;
        v146 = v11[2];
        v356 = v11[1];
        v357 = v146;
        v355 = v145;
        v147 = *v8;
        v148 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v148;
        *v11 = v147;
        goto LABEL_36;
      }
    }

    else
    {
      v66 = *v8;
      v67 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v67;
      v355 = v66;
      v68 = *v11;
      v69 = v11[2];
      v353 = v11[1];
      v354 = v69;
      v352 = v68;
      if (v38(&v355, &v352))
      {
        v70 = *v11;
        v71 = v11[2];
        v356 = v11[1];
        v357 = v71;
        v355 = v70;
        v72 = *v8;
        v73 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v73;
        *v11 = v72;
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        v74 = *a3;
        v75 = *v11;
        v76 = v11[2];
        v356 = v11[1];
        v357 = v76;
        v355 = v75;
        v77 = *v17;
        v78 = v17[2];
        v353 = v17[1];
        v354 = v78;
        v352 = v77;
        if (v74(&v355, &v352))
        {
          v79 = *v17;
          v80 = v17[2];
          v356 = v17[1];
          v357 = v80;
          v355 = v79;
          v81 = *v11;
          v82 = v11[2];
          v17[1] = v11[1];
          v17[2] = v82;
          *v17 = v81;
          v83 = v355;
          v84 = v357;
          v11[1] = v356;
          v11[2] = v84;
          *v11 = v83;
        }
      }
    }

LABEL_57:
    if ((a5 & 1) == 0)
    {
      v264 = *a3;
      v265 = *(a1 - 3);
      v266 = *(a1 - 1);
      v356 = *(a1 - 2);
      v357 = v266;
      v355 = v265;
      v267 = *a1;
      v268 = a1[2];
      v353 = a1[1];
      v354 = v268;
      v352 = v267;
      if ((v264(&v355, &v352) & 1) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(a1, a2, a3);
        goto LABEL_64;
      }
    }

    v269 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(a1, a2, a3);
    if ((v270 & 1) == 0)
    {
      goto LABEL_62;
    }

    v271 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, v269, a3);
    v11 = &v269[3];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v269 + 3, a2, a3))
    {
      a4 = -v13;
      a2 = v269;
      if (v271)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v271)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(a1, v269, a3, -v13, a5 & 1);
      v11 = &v269[3];
LABEL_64:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(v11, v11 + 3, v11 + 6, a2 - 3, a3);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(v11, v11 + 3, v11 + 6, v11 + 9, a3);
      v296 = *a3;
      v297 = *(a2 - 3);
      v298 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v298;
      v299 = v11[10];
      v352 = v11[9];
      v353 = v299;
      v354 = v11[11];
      v355 = v297;
      if (v296(&v355, &v352))
      {
        v300 = v11[9];
        v301 = v11[10];
        v302 = v11[11];
        v304 = *(a2 - 2);
        v303 = *(a2 - 1);
        v11[9] = *v8;
        v11[10] = v304;
        v11[11] = v303;
        *(a2 - 2) = v301;
        *(a2 - 1) = v302;
        *v8 = v300;
        v305 = *a3;
        v306 = v11[10];
        v307 = v11[11];
        v308 = v11[8];
        v355 = v11[9];
        v356 = v306;
        v357 = v307;
        v309 = v11[7];
        v352 = v11[6];
        v353 = v309;
        v354 = v308;
        if (v305(&v355, &v352))
        {
          v310 = v11[10];
          v312 = v11[5];
          v311 = v11[6];
          v11[6] = v11[9];
          v314 = v11[6];
          v313 = v11[7];
          v11[7] = v310;
          v316 = v11[7];
          v315 = v11[8];
          v11[8] = v11[11];
          v11[9] = v311;
          v11[10] = v313;
          v11[11] = v315;
          v317 = *a3;
          v355 = v314;
          v356 = v316;
          v357 = v11[8];
          v318 = v11[4];
          v352 = v11[3];
          v353 = v318;
          v354 = v312;
          if (v317(&v355, &v352))
          {
            v320 = v11[3];
            v319 = v11[4];
            v321 = v11[5];
            v322 = v11[7];
            v323 = v11[8];
            v11[3] = v11[6];
            v11[4] = v322;
            v11[5] = v323;
            v11[6] = v320;
            v11[7] = v319;
            v11[8] = v321;
LABEL_84:
            v341 = *a3;
            v342 = v11[4];
            v355 = v11[3];
            v356 = v342;
            v357 = v11[5];
            v343 = *v11;
            v344 = v11[2];
            v353 = v11[1];
            v354 = v344;
            v352 = v343;
            if (v341(&v355, &v352))
            {
              v345 = *v11;
              v346 = v11[2];
              v347 = v11[3];
              v356 = v11[1];
              v357 = v346;
              v355 = v345;
              v348 = v11[4];
              v349 = v11[5];
              *v11 = v347;
              v11[1] = v348;
              v11[2] = v349;
              v350 = v356;
              v11[3] = v355;
              v11[4] = v350;
              v11[5] = v357;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v272 = *a3;
  v273 = v11[4];
  v355 = v11[3];
  v356 = v273;
  v357 = v11[5];
  v274 = *v11;
  v275 = v11[2];
  v353 = v11[1];
  v354 = v275;
  v352 = v274;
  v276 = v272(&v355, &v352);
  v277 = *a3;
  if (v276)
  {
    v278 = *v8;
    v279 = *(a2 - 1);
    v356 = *(a2 - 2);
    v357 = v279;
    v280 = v11[4];
    v352 = v11[3];
    v353 = v280;
    v354 = v11[5];
    v355 = v278;
    if (!v277(&v355, &v352))
    {
      v281 = *v11;
      v282 = v11[2];
      v283 = v11[3];
      v356 = v11[1];
      v357 = v282;
      v355 = v281;
      v284 = v11[4];
      v285 = v11[5];
      *v11 = v283;
      v11[1] = v284;
      v11[2] = v285;
      v286 = v356;
      v11[3] = v355;
      v11[4] = v286;
      v11[5] = v357;
      v287 = *a3;
      v288 = *v8;
      v289 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v289;
      v290 = v11[4];
      v352 = v11[3];
      v353 = v290;
      v354 = v11[5];
      v355 = v288;
      if (v287(&v355, &v352))
      {
        v291 = v11[3];
        v292 = v11[4];
        v293 = v11[5];
        v295 = *(a2 - 2);
        v294 = *(a2 - 1);
        v11[3] = *v8;
        v11[4] = v295;
        v11[5] = v294;
        *(a2 - 2) = v292;
        *(a2 - 1) = v293;
        *v8 = v291;
      }

      return;
    }

LABEL_76:
    v329 = *v11;
    v330 = v11[2];
    v356 = v11[1];
    v357 = v330;
    v355 = v329;
    v331 = *v8;
    v332 = *(a2 - 1);
    v11[1] = *(a2 - 2);
    v11[2] = v332;
    *v11 = v331;
    *v8 = v355;
    *(a2 - 2) = v356;
    *(a2 - 1) = v357;
    return;
  }

  v333 = *v8;
  v334 = *(a2 - 1);
  v356 = *(a2 - 2);
  v357 = v334;
  v335 = v11[4];
  v352 = v11[3];
  v353 = v335;
  v354 = v11[5];
  v355 = v333;
  if (v277(&v355, &v352))
  {
    v336 = v11[3];
    v337 = v11[4];
    v338 = v11[5];
    v340 = *(a2 - 2);
    v339 = *(a2 - 1);
    v11[3] = *v8;
    v11[4] = v340;
    v11[5] = v339;
    *(a2 - 2) = v337;
    *(a2 - 1) = v338;
    *v8 = v336;
    goto LABEL_84;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v74 = *a2;
  v75 = v11;
  v76 = a2[2];
  v12 = a1[1];
  v71 = *a1;
  v72 = v12;
  v73 = a1[2];
  v13 = v10(&v74, &v71);
  v14 = *a5;
  if (v13)
  {
    v15 = a3[1];
    v74 = *a3;
    v75 = v15;
    v76 = a3[2];
    v16 = a2[1];
    v71 = *a2;
    v72 = v16;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v17 = *a1;
      v18 = a1[1];
      v19 = a1[2];
      v21 = a3[1];
      v20 = a3[2];
      *a1 = *a3;
      a1[1] = v21;
      a1[2] = v20;
LABEL_9:
      a3[1] = v18;
      a3[2] = v19;
      *a3 = v17;
      goto LABEL_10;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v41 = a2[1];
    v40 = a2[2];
    *a1 = *a2;
    a1[1] = v41;
    a1[2] = v40;
    a2[1] = v38;
    a2[2] = v39;
    *a2 = v37;
    v42 = *a5;
    v43 = a3[1];
    v74 = *a3;
    v75 = v43;
    v76 = a3[2];
    v44 = a2[1];
    v71 = *a2;
    v72 = v44;
    v73 = a2[2];
    if (v42(&v74, &v71))
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      v46 = a3[1];
      v45 = a3[2];
      *a2 = *a3;
      a2[1] = v46;
      a2[2] = v45;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = a3[1];
    v74 = *a3;
    v75 = v22;
    v76 = a3[2];
    v23 = a2[1];
    v71 = *a2;
    v72 = v23;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v24 = *a2;
      v25 = a2[1];
      v26 = a2[2];
      v28 = a3[1];
      v27 = a3[2];
      *a2 = *a3;
      a2[1] = v28;
      a2[2] = v27;
      a3[1] = v25;
      a3[2] = v26;
      *a3 = v24;
      v29 = *a5;
      v30 = a2[1];
      v74 = *a2;
      v75 = v30;
      v76 = a2[2];
      v31 = a1[1];
      v71 = *a1;
      v72 = v31;
      v73 = a1[2];
      if (v29(&v74, &v71))
      {
        v32 = *a1;
        v33 = a1[1];
        v34 = a1[2];
        v36 = a2[1];
        v35 = a2[2];
        *a1 = *a2;
        a1[1] = v36;
        a1[2] = v35;
        a2[1] = v33;
        a2[2] = v34;
        *a2 = v32;
      }
    }
  }

LABEL_10:
  v47 = *a5;
  v48 = a4[1];
  v74 = *a4;
  v75 = v48;
  v76 = a4[2];
  v49 = a3[1];
  v71 = *a3;
  v72 = v49;
  v73 = a3[2];
  if (v47(&v74, &v71))
  {
    v51 = *a3;
    v52 = a3[1];
    v53 = a3[2];
    v55 = a4[1];
    v54 = a4[2];
    *a3 = *a4;
    a3[1] = v55;
    a3[2] = v54;
    a4[1] = v52;
    a4[2] = v53;
    *a4 = v51;
    v56 = *a5;
    v57 = a3[1];
    v74 = *a3;
    v75 = v57;
    v76 = a3[2];
    v58 = a2[1];
    v71 = *a2;
    v72 = v58;
    v73 = a2[2];
    if (v56(&v74, &v71))
    {
      v59 = *a2;
      v60 = a2[1];
      v61 = a2[2];
      v63 = a3[1];
      v62 = a3[2];
      *a2 = *a3;
      a2[1] = v63;
      a2[2] = v62;
      a3[1] = v60;
      a3[2] = v61;
      *a3 = v59;
      v64 = *a5;
      v65 = a2[1];
      v74 = *a2;
      v75 = v65;
      v76 = a2[2];
      v66 = a1[1];
      v71 = *a1;
      v72 = v66;
      v73 = a1[2];
      if (v64(&v74, &v71))
      {
        result = *a1;
        v67 = a1[1];
        v68 = a1[2];
        v70 = a2[1];
        v69 = a2[2];
        *a1 = *a2;
        a1[1] = v70;
        a1[2] = v69;
        a2[1] = v67;
        a2[2] = v68;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v31 = v3;
    v32 = v4;
    v6 = result;
    v7 = (result + 48);
    if ((result + 48) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v28 = *v10;
        v29 = v13;
        v30 = v10[2];
        v14 = *v11;
        v15 = v11[2];
        v26 = v11[1];
        v27 = v15;
        v25 = v14;
        result = v12(&v28, &v25);
        if (result)
        {
          v16 = v10[1];
          v28 = *v10;
          v29 = v16;
          v30 = v10[2];
          v17 = v9;
          while (1)
          {
            v18 = (v6 + v17);
            v19 = *(v6 + v17 + 16);
            v18[3] = *(v6 + v17);
            v18[4] = v19;
            v18[5] = *(v6 + v17 + 32);
            if (!v17)
            {
              break;
            }

            v20 = *a3;
            v25 = v28;
            v26 = v29;
            v27 = v30;
            v21 = *(v18 - 2);
            v24[0] = *(v18 - 3);
            v24[1] = v21;
            v24[2] = *(v18 - 1);
            result = v20(&v25, v24);
            v17 -= 48;
            if ((result & 1) == 0)
            {
              v22 = (v6 + v17 + 48);
              goto LABEL_10;
            }
          }

          v22 = v6;
LABEL_10:
          v23 = v29;
          *v22 = v28;
          v22[1] = v23;
          v22[2] = v30;
        }

        v7 = v10 + 3;
        v9 += 48;
      }

      while (v10 + 3 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v30 = v3;
    v31 = v4;
    v6 = result;
    for (i = (result + 48); v6 + 3 != a2; i = v6 + 3)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v27 = *v6;
      v28 = v11;
      v29 = v6[2];
      v12 = *v9;
      v13 = v9[2];
      v25 = v9[1];
      v26 = v13;
      v24 = v12;
      result = v10(&v27, &v24);
      if (result)
      {
        v14 = v6[1];
        v27 = *v6;
        v28 = v14;
        v29 = v6[2];
        v15 = v6;
        do
        {
          v16 = *(v15 - 2);
          v17 = *(v15 - 1);
          v18 = *(v15 - 4);
          *v15 = *(v15 - 3);
          v15[1] = v16;
          v15[2] = v17;
          v24 = v27;
          v25 = v28;
          v26 = v29;
          v19 = *(v15 - 5);
          v23[0] = *(v15 - 6);
          v23[1] = v19;
          v20 = v15 - 3;
          v21 = *a3;
          v23[2] = v18;
          result = v21(&v24, v23);
          v15 = v20;
        }

        while ((result & 1) != 0);
        v22 = v28;
        *v20 = v27;
        v20[1] = v22;
        v20[2] = v29;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v46 = *a1;
  v47 = v6;
  v8 = *a1;
  v7 = a1[1];
  v48 = a1[2];
  v49 = v8;
  v9 = *a3;
  v10 = a1[2];
  v50 = v7;
  v51 = v10;
  v11 = *(a2 - 2);
  v43 = *(a2 - 3);
  v44 = v11;
  v45 = *(a2 - 1);
  if (v9(&v49, &v43))
  {
    v12 = a1;
    do
    {
      v13 = v12 + 3;
      v14 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v15 = v12[4];
      v43 = v12[3];
      v44 = v15;
      v45 = v12[5];
      v16 = v14(&v49, &v43);
      v12 = v13;
    }

    while ((v16 & 1) == 0);
  }

  else
  {
    v17 = a1 + 3;
    do
    {
      v13 = v17;
      if (v17 >= v4)
      {
        break;
      }

      v18 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v19 = v13[1];
      v43 = *v13;
      v44 = v19;
      v45 = v13[2];
      v20 = v18(&v49, &v43);
      v17 = v13 + 3;
    }

    while (!v20);
  }

  if (v13 >= v4)
  {
    v21 = v4;
  }

  else
  {
    do
    {
      v21 = v4 - 3;
      v22 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v23 = *(v4 - 2);
      v43 = *(v4 - 3);
      v44 = v23;
      v45 = *(v4 - 1);
      v4 -= 3;
    }

    while ((v22(&v49, &v43) & 1) != 0);
  }

  while (v13 < v21)
  {
    v24 = *v13;
    v25 = v13[2];
    v50 = v13[1];
    v51 = v25;
    v49 = v24;
    v26 = *v21;
    v27 = v21[2];
    v13[1] = v21[1];
    v13[2] = v27;
    *v13 = v26;
    v28 = v49;
    v29 = v51;
    v21[1] = v50;
    v21[2] = v29;
    *v21 = v28;
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v30 = v13[4];
      v43 = v13[3];
      v44 = v30;
      v31 = v13[5];
      v13 += 3;
      v32 = *a3;
      v45 = v31;
    }

    while (!v32(&v49, &v43));
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v33 = *(v21 - 3);
      v34 = *(v21 - 2);
      v35 = *(v21 - 1);
      v21 -= 3;
      v36 = *a3;
      v44 = v34;
      v45 = v35;
      v43 = v33;
    }

    while ((v36(&v49, &v43) & 1) != 0);
  }

  v37 = v13 - 3;
  if (v13 - 3 != a1)
  {
    v38 = *v37;
    v39 = *(v13 - 1);
    a1[1] = *(v13 - 2);
    a1[2] = v39;
    *a1 = v38;
  }

  v40 = v46;
  v41 = v48;
  *(v13 - 2) = v47;
  *(v13 - 1) = v41;
  *v37 = v40;
  return v13;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v40 = *a1;
  v41 = v7;
  v42 = a1[2];
  do
  {
    v8 = *a3;
    v9 = a1[v6 + 4];
    v43 = a1[v6 + 3];
    v44 = v9;
    v45 = a1[v6 + 5];
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v6 += 3;
  }

  while ((v8(&v43, &v37) & 1) != 0);
  v10 = &a1[v6];
  v11 = &a1[v6 - 3];
  if (v6 == 3)
  {
    while (v10 < a2)
    {
      v15 = *a3;
      v12 = a2 - 3;
      v16 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v16;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
      if (v15(&v43, &v37))
      {
        goto LABEL_9;
      }
    }

    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 3;
      v13 = *a3;
      v14 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v14;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
    }

    while (!v13(&v43, &v37));
  }

LABEL_9:
  if (v10 < v12)
  {
    v17 = v10;
    v18 = v12;
    do
    {
      v20 = v17[1];
      v43 = *v17;
      v19 = v43;
      v44 = v20;
      v45 = v17[2];
      v21 = v45;
      v22 = *v18;
      v23 = v18[2];
      v17[1] = v18[1];
      v17[2] = v23;
      *v17 = v22;
      v18[1] = v20;
      v18[2] = v21;
      *v18 = v19;
      do
      {
        v24 = v17[3];
        v25 = v17[4];
        v26 = v17[5];
        v17 += 3;
        v27 = *a3;
        v43 = v24;
        v44 = v25;
        v45 = v26;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while ((v27(&v43, &v37) & 1) != 0);
      do
      {
        v28 = *(v18 - 3);
        v29 = *(v18 - 2);
        v30 = *(v18 - 1);
        v18 -= 3;
        v31 = *a3;
        v44 = v29;
        v45 = v30;
        v43 = v28;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while (!v31(&v43, &v37));
    }

    while (v17 < v18);
    v11 = v17 - 3;
  }

  if (v11 != a1)
  {
    v32 = *v11;
    v33 = v11[2];
    a1[1] = v11[1];
    a1[2] = v33;
    *a1 = v32;
  }

  v34 = v40;
  v35 = v42;
  v11[1] = v41;
  v11[2] = v35;
  *v11 = v34;
  return v11;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v47 = a2 - 3;
        v48 = *a3;
        v49 = a1[4];
        v50 = a1[5];
        v51 = a1[2];
        v146 = a1[3];
        v147 = v49;
        v148 = v50;
        v52 = a1[1];
        v143 = *a1;
        v144 = v52;
        v145 = v51;
        v53 = v48(&v146, &v143);
        v54 = *a3;
        if (v53)
        {
          v55 = v47[1];
          v146 = *v47;
          v147 = v55;
          v148 = v47[2];
          v56 = a1[4];
          v143 = a1[3];
          v144 = v56;
          v145 = a1[5];
          if (v54(&v146, &v143))
          {
            v57 = *a1;
            v58 = a1[1];
            v59 = a1[2];
            v61 = v47[1];
            v60 = v47[2];
            *a1 = *v47;
            a1[1] = v61;
            a1[2] = v60;
          }

          else
          {
            v108 = a1[1];
            v109 = a1[2];
            v110 = a1[3];
            a1[3] = *a1;
            v112 = a1[3];
            v111 = a1[4];
            *a1 = v110;
            a1[1] = v111;
            a1[4] = v108;
            v113 = a1[4];
            a1[2] = a1[5];
            a1[5] = v109;
            v114 = *a3;
            v115 = v47[1];
            v146 = *v47;
            v147 = v115;
            v148 = v47[2];
            v143 = v112;
            v144 = v113;
            v145 = a1[5];
            if (!v114(&v146, &v143))
            {
              return 1;
            }

            v57 = a1[3];
            v58 = a1[4];
            v59 = a1[5];
            v117 = v47[1];
            v116 = v47[2];
            a1[3] = *v47;
            a1[4] = v117;
            a1[5] = v116;
          }

          v47[1] = v58;
          v47[2] = v59;
          result = 1;
          *v47 = v57;
          return result;
        }

        v76 = v47[1];
        v146 = *v47;
        v147 = v76;
        v148 = v47[2];
        v77 = a1[4];
        v143 = a1[3];
        v144 = v77;
        v145 = a1[5];
        if (!v54(&v146, &v143))
        {
          return 1;
        }

        v78 = a1[3];
        v79 = a1[4];
        v80 = a1[5];
        v82 = v47[1];
        v81 = v47[2];
        a1[3] = *v47;
        a1[4] = v82;
        a1[5] = v81;
        v47[1] = v79;
        v47[2] = v80;
        *v47 = v78;
        v46 = *a3;
        v83 = a1[4];
        v84 = a1[5];
        v41 = a1[2];
        v146 = a1[3];
        v147 = v83;
        v148 = v84;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, a1 + 3, a1 + 6, a2 - 3, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a3);
        v16 = *a3;
        v17 = a2[-2];
        v146 = a2[-3];
        v147 = v17;
        v148 = a2[-1];
        v18 = a1[10];
        v143 = a1[9];
        v144 = v18;
        v145 = a1[11];
        if (!v16(&v146, &v143))
        {
          return 1;
        }

        v19 = a2 - 3;
        v20 = a1[9];
        v21 = a1[10];
        v22 = a1[11];
        v24 = a2[-2];
        v23 = a2[-1];
        a1[9] = a2[-3];
        a1[10] = v24;
        a1[11] = v23;
        v19[1] = v21;
        v19[2] = v22;
        *v19 = v20;
        v25 = *a3;
        v26 = a1[10];
        v27 = a1[11];
        v28 = a1[8];
        v146 = a1[9];
        v147 = v26;
        v148 = v27;
        v29 = a1[7];
        v143 = a1[6];
        v144 = v29;
        v145 = v28;
        if (!v25(&v146, &v143))
        {
          return 1;
        }

        v30 = a1[10];
        v32 = a1[5];
        v31 = a1[6];
        a1[6] = a1[9];
        v34 = a1[6];
        v33 = a1[7];
        a1[7] = v30;
        v36 = a1[7];
        v35 = a1[8];
        a1[8] = a1[11];
        a1[9] = v31;
        a1[10] = v33;
        a1[11] = v35;
        v37 = *a3;
        v146 = v34;
        v147 = v36;
        v148 = a1[8];
        v38 = a1[4];
        v143 = a1[3];
        v144 = v38;
        v145 = v32;
        if (!v37(&v146, &v143))
        {
          return 1;
        }

        v39 = a1[7];
        v41 = a1[2];
        v40 = a1[3];
        a1[3] = a1[6];
        v43 = a1[3];
        v42 = a1[4];
        a1[4] = v39;
        v45 = a1[4];
        v44 = a1[5];
        a1[5] = a1[8];
        a1[6] = v40;
        a1[7] = v42;
        a1[8] = v44;
        v46 = *a3;
        v146 = v43;
        v147 = v45;
        v148 = a1[5];
        break;
      default:
        goto LABEL_16;
    }

    v85 = a1[1];
    v143 = *a1;
    v144 = v85;
    v145 = v41;
    if (v46(&v146, &v143))
    {
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[2];
      v89 = a1[4];
      v90 = a1[5];
      *a1 = a1[3];
      a1[1] = v89;
      a1[2] = v90;
      a1[3] = v87;
      result = 1;
      a1[4] = v86;
      a1[5] = v88;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-2];
    v146 = a2[-3];
    v147 = v8;
    v148 = a2[-1];
    v9 = a1[1];
    v143 = *a1;
    v144 = v9;
    v145 = a1[2];
    if (v7(&v146, &v143))
    {
      v10 = a2 - 3;
      v11 = *a1;
      v12 = a1[1];
      v13 = a1[2];
      v15 = a2[-2];
      v14 = a2[-1];
      *a1 = a2[-3];
      a1[1] = v15;
      a1[2] = v14;
      v10[1] = v12;
      v10[2] = v13;
      *v10 = v11;
    }

    return 1;
  }

LABEL_16:
  v62 = a1 + 6;
  v63 = *a3;
  v64 = a1[4];
  v65 = a1[5];
  v66 = a1[2];
  v146 = a1[3];
  v147 = v64;
  v148 = v65;
  v67 = a1[1];
  v143 = *a1;
  v144 = v67;
  v145 = v66;
  v68 = v63(&v146, &v143);
  v69 = *a3;
  if (v68)
  {
    v70 = a1[7];
    v146 = *v62;
    v147 = v70;
    v148 = a1[8];
    v71 = a1[4];
    v143 = a1[3];
    v144 = v71;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v73 = a1[1];
      v72 = a1[2];
      v74 = *a1;
      v75 = a1[7];
      *a1 = *v62;
      a1[1] = v75;
      a1[2] = a1[8];
    }

    else
    {
      v118 = a1[1];
      v119 = a1[2];
      v120 = a1[3];
      a1[3] = *a1;
      v122 = a1[3];
      v121 = a1[4];
      *a1 = v120;
      a1[1] = v121;
      a1[4] = v118;
      v123 = a1[4];
      a1[2] = a1[5];
      a1[5] = v119;
      v124 = *a3;
      v125 = a1[7];
      v146 = *v62;
      v147 = v125;
      v148 = a1[8];
      v143 = v122;
      v144 = v123;
      v145 = a1[5];
      if (!v124(&v146, &v143))
      {
        goto LABEL_33;
      }

      v73 = a1[4];
      v72 = a1[5];
      v74 = a1[3];
      v126 = a1[7];
      a1[3] = *v62;
      a1[4] = v126;
      a1[5] = a1[8];
    }

    *v62 = v74;
    a1[7] = v73;
    a1[8] = v72;
  }

  else
  {
    v92 = a1[7];
    v146 = *v62;
    v147 = v92;
    v148 = a1[8];
    v93 = a1[4];
    v143 = a1[3];
    v144 = v93;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v94 = a1[7];
      v96 = a1[2];
      v95 = a1[3];
      a1[3] = *v62;
      v98 = a1[3];
      v97 = a1[4];
      a1[4] = v94;
      v100 = a1[4];
      v99 = a1[5];
      a1[5] = a1[8];
      *v62 = v95;
      a1[7] = v97;
      a1[8] = v99;
      v101 = *a3;
      v146 = v98;
      v147 = v100;
      v148 = a1[5];
      v102 = a1[1];
      v143 = *a1;
      v144 = v102;
      v145 = v96;
      if (v101(&v146, &v143))
      {
        v104 = *a1;
        v103 = a1[1];
        v105 = a1[2];
        v106 = a1[4];
        v107 = a1[5];
        *a1 = a1[3];
        a1[1] = v106;
        a1[2] = v107;
        a1[3] = v104;
        a1[4] = v103;
        a1[5] = v105;
      }
    }
  }

LABEL_33:
  v127 = a1 + 9;
  if (&a1[9] == a2)
  {
    return 1;
  }

  v128 = 0;
  v129 = 0;
  while (1)
  {
    v130 = *a3;
    v131 = v127[1];
    v146 = *v127;
    v147 = v131;
    v148 = v127[2];
    v132 = *v62;
    v133 = v62[2];
    v144 = v62[1];
    v145 = v133;
    v143 = v132;
    if (v130(&v146, &v143))
    {
      v134 = v127[1];
      v146 = *v127;
      v147 = v134;
      v148 = v127[2];
      v135 = v128;
      while (1)
      {
        v136 = (a1->n128_u64 + v135);
        v137 = *(&a1[7] + v135);
        v136[9] = *(&a1[6] + v135);
        v136[10] = v137;
        v136[11] = *(&a1[8] + v135);
        if (v135 == -96)
        {
          break;
        }

        v138 = *a3;
        v143 = v146;
        v144 = v147;
        v145 = v148;
        v139 = v136[4];
        v142[0] = v136[3];
        v142[1] = v139;
        v142[2] = v136[5];
        v135 -= 48;
        if (((v138)(&v143, v142) & 1) == 0)
        {
          v140 = (a1 + v135 + 144);
          goto LABEL_41;
        }
      }

      v140 = a1;
LABEL_41:
      v141 = v147;
      *v140 = v146;
      v140[1] = v141;
      v140[2] = v148;
      if (++v129 == 8)
      {
        return &v127[3] == a2;
      }
    }

    v62 = v127;
    v128 += 48;
    v127 += 3;
    if (v127 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,sortQuantizeColorEntry*>(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 48 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v15 = v13[1];
        v32 = *v13;
        v33 = v15;
        v34 = v13[2];
        v16 = *(a1 + 16);
        v31[0] = *a1;
        v31[1] = v16;
        v31[2] = *(a1 + 32);
        if (v14(&v32, v31))
        {
          v17 = *v13;
          v18 = v13[1];
          v19 = v13[2];
          v21 = *(a1 + 16);
          v20 = *(a1 + 32);
          *v13 = *a1;
          v13[1] = v21;
          v13[2] = v20;
          *(a1 + 16) = v18;
          *(a1 + 32) = v19;
          *a1 = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v23 = a2 - 3;
      do
      {
        v24 = *(a1 + 16);
        v32 = *a1;
        v33 = v24;
        v34 = *(a1 + 32);
        v25 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, a4, v22);
        if (v23 == v25)
        {
          *v25 = v32;
          v25[1] = v33;
          v25[2] = v34;
        }

        else
        {
          v26 = *v23;
          v27 = v23[2];
          v25[1] = v23[1];
          v25[2] = v27;
          *v25 = v26;
          v28 = v33;
          *v23 = v32;
          v23[1] = v28;
          v23[2] = v34;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, &v25[3], a4, 0xAAAAAAAAAAAAAAABLL * ((&v25[3] - a1) >> 4));
        }

        v23 -= 3;
      }

      while (v22-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v46 = v4;
    v47 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v13 = (a1 + 48 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v16 = v13[1];
        v43 = *v13;
        v44 = v16;
        v17 = v13[3];
        v45 = v13[2];
        v18 = v13[4];
        v19 = v13[5];
        v40 = v17;
        v41 = v18;
        v42 = v19;
        if (v15(&v43, &v40))
        {
          v13 += 3;
          v12 = v14;
        }
      }

      v20 = *a2;
      v21 = v13[1];
      v43 = *v13;
      v44 = v21;
      v45 = v13[2];
      v22 = v7[1];
      v40 = *v7;
      v41 = v22;
      v42 = v7[2];
      if ((v20(&v43, &v40) & 1) == 0)
      {
        v24 = v7[1];
        v43 = *v7;
        v44 = v24;
        v45 = v7[2];
        do
        {
          v25 = v13;
          v26 = *v13;
          v27 = v13[2];
          v7[1] = v13[1];
          v7[2] = v27;
          *v7 = v26;
          if (v9 < v12)
          {
            break;
          }

          v28 = (2 * v12) | 1;
          v13 = (a1 + 48 * v28);
          if (2 * v12 + 2 < a3)
          {
            v29 = *a2;
            v30 = v13[1];
            v40 = *v13;
            v41 = v30;
            v31 = v13[3];
            v42 = v13[2];
            v32 = v13[4];
            v33 = v13[5];
            v37 = v31;
            v38 = v32;
            v39 = v33;
            if (v29(&v40, &v37))
            {
              v13 += 3;
              v28 = 2 * v12 + 2;
            }
          }

          v34 = *a2;
          v35 = v13[1];
          v40 = *v13;
          v41 = v35;
          v42 = v13[2];
          v37 = v43;
          v38 = v44;
          v39 = v45;
          v7 = v25;
          v12 = v28;
        }

        while (!v34(&v40, &v37));
        result = v43;
        v36 = v45;
        v25[1] = v44;
        v25[2] = v36;
        *v25 = result;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v22[1] = v8[4];
      v22[2] = v14;
      v22[0] = v13;
      v15 = v8 + 6;
      v16 = v8[6];
      v17 = v8[8];
      v21[1] = v8[7];
      v21[2] = v17;
      v21[0] = v16;
      if (v12(v22, v21))
      {
        v9 = v15;
        v10 = v11;
      }
    }

    v18 = *v9;
    v19 = v9[2];
    a1[1] = v9[1];
    a1[2] = v19;
    *a1 = v18;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v9 = (a4 - 2) >> 1;
    v10 = *a3;
    v11 = (a1 + 48 * v9);
    v12 = v11[1];
    v28 = *v11;
    v29 = v12;
    v30 = v11[2];
    v13 = *(a2 - 32);
    v25 = *(a2 - 48);
    v26 = v13;
    v27 = *(a2 - 16);
    if (v10(&v28, &v25))
    {
      v15 = (a2 - 48);
      v16 = *(a2 - 32);
      v28 = *(a2 - 48);
      v29 = v16;
      v30 = *(a2 - 16);
      do
      {
        v17 = v11;
        v18 = *v11;
        v19 = v11[2];
        v15[1] = v11[1];
        v15[2] = v19;
        *v15 = v18;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v20 = *a3;
        v11 = (a1 + 48 * v9);
        v21 = v11[1];
        v25 = *v11;
        v26 = v21;
        v27 = v11[2];
        v24[0] = v28;
        v24[1] = v29;
        v24[2] = v30;
        v22 = v20(&v25, v24);
        v15 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v29;
      *v17 = v28;
      v17[1] = v23;
      result = *&v30;
      v17[2] = v30;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sortColorEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 4;
  v9 = a2 - 8;
  v10 = a2 - 12;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 6;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v450 = *a3;
      v451 = *(a2 - 4);
      v452 = *(a2 - 3);
      v453 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v453;
      v495 = v451;
      v496 = v452;
      v454 = *v11;
      v455 = v11[1];
      v456 = v11[3];
      v493 = v11[2];
      v494 = v456;
      v491 = v454;
      v492 = v455;
      if (!v450(&v495, &v491))
      {
        return;
      }

      goto LABEL_78;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v11, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v11, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,sortColorEntry*>(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[4 * (v14 >> 1)];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[3];
      v497 = v15[2];
      v498 = v19;
      v495 = v17;
      v496 = v18;
      v20 = *v11;
      v21 = v11[1];
      v22 = v11[3];
      v493 = v11[2];
      v494 = v22;
      v491 = v20;
      v492 = v21;
      v23 = v16(&v495, &v491);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 3);
        v27 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v27;
        v495 = v25;
        v496 = v26;
        v28 = *v15;
        v29 = v15[1];
        v30 = v15[3];
        v493 = v15[2];
        v494 = v30;
        v491 = v28;
        v492 = v29;
        if (v24(&v495, &v491))
        {
          v31 = *v11;
          v32 = v11[1];
          v33 = v11[3];
          v497 = v11[2];
          v498 = v33;
          v495 = v31;
          v496 = v32;
          v34 = *v8;
          v35 = *(a2 - 3);
          v36 = *(a2 - 1);
          v11[2] = *(a2 - 2);
          v11[3] = v36;
          *v11 = v34;
          v11[1] = v35;
          goto LABEL_27;
        }

        v113 = *v11;
        v114 = v11[1];
        v115 = v11[3];
        v497 = v11[2];
        v498 = v115;
        v495 = v113;
        v496 = v114;
        v116 = *v15;
        v117 = v15[1];
        v118 = v15[3];
        v11[2] = v15[2];
        v11[3] = v118;
        *v11 = v116;
        v11[1] = v117;
        v119 = v495;
        v120 = v496;
        v121 = v498;
        v15[2] = v497;
        v15[3] = v121;
        *v15 = v119;
        v15[1] = v120;
        v122 = *a3;
        v123 = *v8;
        v124 = *(a2 - 3);
        v125 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v125;
        v495 = v123;
        v496 = v124;
        v126 = *v15;
        v127 = v15[1];
        v128 = v15[3];
        v493 = v15[2];
        v494 = v128;
        v491 = v126;
        v492 = v127;
        if (v122(&v495, &v491))
        {
          v129 = *v15;
          v130 = v15[1];
          v131 = v15[3];
          v497 = v15[2];
          v498 = v131;
          v495 = v129;
          v496 = v130;
          v132 = *v8;
          v133 = *(a2 - 3);
          v134 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v134;
          *v15 = v132;
          v15[1] = v133;
LABEL_27:
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
        }
      }

      else
      {
        v57 = *v8;
        v58 = *(a2 - 3);
        v59 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v59;
        v495 = v57;
        v496 = v58;
        v60 = *v15;
        v61 = v15[1];
        v62 = v15[3];
        v493 = v15[2];
        v494 = v62;
        v491 = v60;
        v492 = v61;
        if (v24(&v495, &v491))
        {
          v63 = *v15;
          v64 = v15[1];
          v65 = v15[3];
          v497 = v15[2];
          v498 = v65;
          v495 = v63;
          v496 = v64;
          v66 = *v8;
          v67 = *(a2 - 3);
          v68 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v68;
          *v15 = v66;
          v15[1] = v67;
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
          v69 = *a3;
          v70 = *v15;
          v71 = v15[1];
          v72 = v15[3];
          v497 = v15[2];
          v498 = v72;
          v495 = v70;
          v496 = v71;
          v73 = *v11;
          v74 = v11[1];
          v75 = v11[3];
          v493 = v11[2];
          v494 = v75;
          v491 = v73;
          v492 = v74;
          if (v69(&v495, &v491))
          {
            v76 = *v11;
            v77 = v11[1];
            v78 = v11[3];
            v497 = v11[2];
            v498 = v78;
            v495 = v76;
            v496 = v77;
            v79 = *v15;
            v80 = v15[1];
            v81 = v15[3];
            v11[2] = v15[2];
            v11[3] = v81;
            *v11 = v79;
            v11[1] = v80;
            v82 = v495;
            v83 = v496;
            v84 = v498;
            v15[2] = v497;
            v15[3] = v84;
            *v15 = v82;
            v15[1] = v83;
          }
        }
      }

      v135 = v15 - 4;
      v136 = *a3;
      v137 = *(v15 - 4);
      v138 = *(v15 - 3);
      v139 = *(v15 - 1);
      v497 = *(v15 - 2);
      v498 = v139;
      v495 = v137;
      v496 = v138;
      v140 = a1[5];
      v491 = a1[4];
      v492 = v140;
      v141 = a1[7];
      v493 = a1[6];
      v494 = v141;
      v142 = v136(&v495, &v491);
      v143 = *a3;
      if (v142)
      {
        v144 = *v9;
        v145 = *(a2 - 7);
        v146 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v146;
        v495 = v144;
        v496 = v145;
        v147 = *v135;
        v148 = *(v15 - 3);
        v149 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v149;
        v491 = v147;
        v492 = v148;
        if (v143(&v495, &v491))
        {
          v151 = a1[6];
          v150 = a1[7];
          v153 = a1[4];
          v152 = a1[5];
          v154 = *(a2 - 5);
          v156 = *v9;
          v155 = *(a2 - 7);
          a1[6] = *(a2 - 6);
          a1[7] = v154;
          a1[4] = v156;
          a1[5] = v155;
          *v9 = v153;
          *(a2 - 7) = v152;
          *(a2 - 6) = v151;
          goto LABEL_39;
        }

        v205 = a1[5];
        v495 = a1[4];
        v204 = v495;
        v496 = v205;
        v207 = a1[7];
        v497 = a1[6];
        v206 = v497;
        v498 = v207;
        v209 = *(v15 - 2);
        v208 = *(v15 - 1);
        v210 = *(v15 - 3);
        a1[4] = *v135;
        a1[5] = v210;
        a1[6] = v209;
        a1[7] = v208;
        *(v15 - 2) = v206;
        *(v15 - 1) = v207;
        *v135 = v204;
        *(v15 - 3) = v205;
        v211 = *a3;
        v212 = *v9;
        v213 = *(a2 - 7);
        v214 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v214;
        v495 = v212;
        v496 = v213;
        v215 = *v135;
        v216 = *(v15 - 3);
        v217 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v217;
        v491 = v215;
        v492 = v216;
        if (v211(&v495, &v491))
        {
          v218 = *v135;
          v219 = *(v15 - 3);
          v220 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v220;
          v495 = v218;
          v496 = v219;
          v221 = *v9;
          v222 = *(a2 - 7);
          v223 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v223;
          *v135 = v221;
          *(v15 - 3) = v222;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          v150 = v498;
LABEL_39:
          *(a2 - 5) = v150;
        }
      }

      else
      {
        v157 = *v9;
        v158 = *(a2 - 7);
        v159 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v159;
        v495 = v157;
        v496 = v158;
        v160 = *v135;
        v161 = *(v15 - 3);
        v162 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v162;
        v491 = v160;
        v492 = v161;
        if (v143(&v495, &v491))
        {
          v163 = *v135;
          v164 = *(v15 - 3);
          v165 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v165;
          v495 = v163;
          v496 = v164;
          v166 = *v9;
          v167 = *(a2 - 7);
          v168 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v168;
          *v135 = v166;
          *(v15 - 3) = v167;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          *(a2 - 5) = v498;
          v169 = *a3;
          v170 = *v135;
          v171 = *(v15 - 3);
          v172 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v172;
          v495 = v170;
          v496 = v171;
          v173 = a1[5];
          v491 = a1[4];
          v492 = v173;
          v174 = a1[7];
          v493 = a1[6];
          v494 = v174;
          if (v169(&v495, &v491))
          {
            v176 = a1[5];
            v495 = a1[4];
            v175 = v495;
            v496 = v176;
            v178 = a1[7];
            v497 = a1[6];
            v177 = v497;
            v498 = v178;
            v180 = *(v15 - 2);
            v179 = *(v15 - 1);
            v181 = *(v15 - 3);
            a1[4] = *v135;
            a1[5] = v181;
            a1[6] = v180;
            a1[7] = v179;
            *(v15 - 2) = v177;
            *(v15 - 1) = v178;
            *v135 = v175;
            *(v15 - 3) = v176;
          }
        }
      }

      v224 = *a3;
      v225 = v15[4];
      v226 = v15[5];
      v227 = v15[7];
      v497 = v15[6];
      v498 = v227;
      v495 = v225;
      v496 = v226;
      v228 = a1[9];
      v491 = a1[8];
      v492 = v228;
      v229 = a1[11];
      v493 = a1[10];
      v494 = v229;
      v230 = v224(&v495, &v491);
      v231 = *a3;
      if (v230)
      {
        v232 = *v10;
        v233 = *(a2 - 11);
        v234 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v234;
        v495 = v232;
        v496 = v233;
        v235 = v15[4];
        v236 = v15[5];
        v237 = v15[7];
        v493 = v15[6];
        v494 = v237;
        v491 = v235;
        v492 = v236;
        if (v231(&v495, &v491))
        {
          v239 = a1[10];
          v238 = a1[11];
          v241 = a1[8];
          v240 = a1[9];
          v242 = *(a2 - 9);
          v244 = *v10;
          v243 = *(a2 - 11);
          a1[10] = *(a2 - 10);
          a1[11] = v242;
          a1[8] = v244;
          a1[9] = v243;
          *v10 = v241;
          *(a2 - 11) = v240;
          *(a2 - 10) = v239;
          goto LABEL_48;
        }

        v271 = a1[9];
        v495 = a1[8];
        v270 = v495;
        v496 = v271;
        v273 = a1[11];
        v497 = a1[10];
        v272 = v497;
        v498 = v273;
        v275 = v15[6];
        v274 = v15[7];
        v276 = v15[5];
        a1[8] = v15[4];
        a1[9] = v276;
        a1[10] = v275;
        a1[11] = v274;
        v15[6] = v272;
        v15[7] = v273;
        v15[4] = v270;
        v15[5] = v271;
        v277 = *a3;
        v278 = *v10;
        v279 = *(a2 - 11);
        v280 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v280;
        v495 = v278;
        v496 = v279;
        v281 = v15[4];
        v282 = v15[5];
        v283 = v15[7];
        v493 = v15[6];
        v494 = v283;
        v491 = v281;
        v492 = v282;
        if (v277(&v495, &v491))
        {
          v284 = v15[4];
          v285 = v15[5];
          v286 = v15[7];
          v497 = v15[6];
          v498 = v286;
          v495 = v284;
          v496 = v285;
          v287 = *v10;
          v288 = *(a2 - 11);
          v289 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v289;
          v15[4] = v287;
          v15[5] = v288;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          v238 = v498;
LABEL_48:
          *(a2 - 9) = v238;
        }
      }

      else
      {
        v245 = *v10;
        v246 = *(a2 - 11);
        v247 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v247;
        v495 = v245;
        v496 = v246;
        v248 = v15[4];
        v249 = v15[5];
        v250 = v15[7];
        v493 = v15[6];
        v494 = v250;
        v491 = v248;
        v492 = v249;
        if (v231(&v495, &v491))
        {
          v251 = v15[4];
          v252 = v15[5];
          v253 = v15[7];
          v497 = v15[6];
          v498 = v253;
          v495 = v251;
          v496 = v252;
          v254 = *v10;
          v255 = *(a2 - 11);
          v256 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v256;
          v15[4] = v254;
          v15[5] = v255;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          *(a2 - 9) = v498;
          v257 = *a3;
          v258 = v15[4];
          v259 = v15[5];
          v260 = v15[7];
          v497 = v15[6];
          v498 = v260;
          v495 = v258;
          v496 = v259;
          v261 = a1[9];
          v491 = a1[8];
          v492 = v261;
          v262 = a1[11];
          v493 = a1[10];
          v494 = v262;
          if (v257(&v495, &v491))
          {
            v264 = a1[9];
            v495 = a1[8];
            v263 = v495;
            v496 = v264;
            v266 = a1[11];
            v497 = a1[10];
            v265 = v497;
            v498 = v266;
            v268 = v15[6];
            v267 = v15[7];
            v269 = v15[5];
            a1[8] = v15[4];
            a1[9] = v269;
            a1[10] = v268;
            a1[11] = v267;
            v15[6] = v265;
            v15[7] = v266;
            v15[4] = v263;
            v15[5] = v264;
          }
        }
      }

      v290 = *a3;
      v291 = *v15;
      v292 = v15[1];
      v293 = v15[3];
      v497 = v15[2];
      v498 = v293;
      v495 = v291;
      v496 = v292;
      v294 = *v135;
      v295 = *(v15 - 3);
      v296 = *(v15 - 1);
      v493 = *(v15 - 2);
      v494 = v296;
      v491 = v294;
      v492 = v295;
      v297 = v290(&v495, &v491);
      v298 = *a3;
      if (v297)
      {
        v299 = v15[4];
        v300 = v15[5];
        v301 = v15[7];
        v497 = v15[6];
        v498 = v301;
        v495 = v299;
        v496 = v300;
        v302 = *v15;
        v303 = v15[1];
        v304 = v15[3];
        v493 = v15[2];
        v494 = v304;
        v491 = v302;
        v492 = v303;
        if (v298(&v495, &v491))
        {
          v305 = *v135;
          v306 = *(v15 - 3);
          v307 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v307;
          v495 = v305;
          v496 = v306;
          v308 = v15[5];
          *v135 = v15[4];
          *(v15 - 3) = v308;
          v309 = v15[7];
          *(v15 - 2) = v15[6];
          *(v15 - 1) = v309;
          goto LABEL_57;
        }

        v339 = *v135;
        v340 = *(v15 - 3);
        v341 = *(v15 - 1);
        v497 = *(v15 - 2);
        v498 = v341;
        v495 = v339;
        v496 = v340;
        v342 = v15[1];
        *v135 = *v15;
        *(v15 - 3) = v342;
        v343 = v15[3];
        *(v15 - 2) = v15[2];
        *(v15 - 1) = v343;
        v344 = v498;
        v345 = v495;
        v346 = v496;
        v15[2] = v497;
        v15[3] = v344;
        *v15 = v345;
        v15[1] = v346;
        v347 = *a3;
        v348 = v15[4];
        v349 = v15[5];
        v350 = v15[7];
        v497 = v15[6];
        v498 = v350;
        v495 = v348;
        v496 = v349;
        v351 = *v15;
        v352 = v15[1];
        v353 = v15[3];
        v493 = v15[2];
        v494 = v353;
        v491 = v351;
        v492 = v352;
        if (v347(&v495, &v491))
        {
          v354 = *v15;
          v355 = v15[1];
          v356 = v15[3];
          v497 = v15[2];
          v498 = v356;
          v495 = v354;
          v496 = v355;
          v357 = v15[5];
          *v15 = v15[4];
          v15[1] = v357;
          v358 = v15[7];
          v15[2] = v15[6];
          v15[3] = v358;
LABEL_57:
          v359 = v498;
          v360 = v495;
          v361 = v496;
          v15[6] = v497;
          v15[7] = v359;
          v15[4] = v360;
          v15[5] = v361;
        }
      }

      else
      {
        v310 = v15[4];
        v311 = v15[5];
        v312 = v15[7];
        v497 = v15[6];
        v498 = v312;
        v495 = v310;
        v496 = v311;
        v313 = *v15;
        v314 = v15[1];
        v315 = v15[3];
        v493 = v15[2];
        v494 = v315;
        v491 = v313;
        v492 = v314;
        if (v298(&v495, &v491))
        {
          v316 = *v15;
          v317 = v15[1];
          v318 = v15[3];
          v497 = v15[2];
          v498 = v318;
          v495 = v316;
          v496 = v317;
          v319 = v15[5];
          *v15 = v15[4];
          v15[1] = v319;
          v320 = v15[7];
          v15[2] = v15[6];
          v15[3] = v320;
          v321 = v498;
          v322 = v495;
          v323 = v496;
          v15[6] = v497;
          v15[7] = v321;
          v15[4] = v322;
          v15[5] = v323;
          v324 = *a3;
          v325 = *v15;
          v326 = v15[1];
          v327 = v15[3];
          v497 = v15[2];
          v498 = v327;
          v495 = v325;
          v496 = v326;
          v328 = *v135;
          v329 = *(v15 - 3);
          v330 = *(v15 - 1);
          v493 = *(v15 - 2);
          v494 = v330;
          v491 = v328;
          v492 = v329;
          if (v324(&v495, &v491))
          {
            v331 = *v135;
            v332 = *(v15 - 3);
            v333 = *(v15 - 1);
            v497 = *(v15 - 2);
            v498 = v333;
            v495 = v331;
            v496 = v332;
            v334 = v15[1];
            *v135 = *v15;
            *(v15 - 3) = v334;
            v335 = v15[3];
            *(v15 - 2) = v15[2];
            *(v15 - 1) = v335;
            v336 = v498;
            v337 = v495;
            v338 = v496;
            v15[2] = v497;
            v15[3] = v336;
            *v15 = v337;
            v15[1] = v338;
          }
        }
      }

      v362 = *a1;
      v363 = a1[1];
      v364 = a1[3];
      v497 = a1[2];
      v498 = v364;
      v495 = v362;
      v496 = v363;
      v365 = *v15;
      v366 = v15[1];
      v367 = v15[3];
      a1[2] = v15[2];
      a1[3] = v367;
      *a1 = v365;
      a1[1] = v366;
      v368 = v495;
      v369 = v496;
      v370 = v498;
      v15[2] = v497;
      v15[3] = v370;
      *v15 = v368;
      v15[1] = v369;
      goto LABEL_59;
    }

    v37 = *v11;
    v38 = v11[1];
    v39 = v11[3];
    v497 = v11[2];
    v498 = v39;
    v495 = v37;
    v496 = v38;
    v40 = *v15;
    v41 = v15[1];
    v42 = v15[3];
    v493 = v15[2];
    v494 = v42;
    v491 = v40;
    v492 = v41;
    v43 = v16(&v495, &v491);
    v44 = *a3;
    if (v43)
    {
      v45 = *v8;
      v46 = *(a2 - 3);
      v47 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v47;
      v495 = v45;
      v496 = v46;
      v48 = *v11;
      v49 = v11[1];
      v50 = v11[3];
      v493 = v11[2];
      v494 = v50;
      v491 = v48;
      v492 = v49;
      if (v44(&v495, &v491))
      {
        v51 = *v15;
        v52 = v15[1];
        v53 = v15[3];
        v497 = v15[2];
        v498 = v53;
        v495 = v51;
        v496 = v52;
        v54 = *v8;
        v55 = *(a2 - 3);
        v56 = *(a2 - 1);
        v15[2] = *(a2 - 2);
        v15[3] = v56;
        *v15 = v54;
        v15[1] = v55;
LABEL_36:
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        goto LABEL_59;
      }

      v182 = *v15;
      v183 = v15[1];
      v184 = v15[3];
      v497 = v15[2];
      v498 = v184;
      v495 = v182;
      v496 = v183;
      v185 = *v11;
      v186 = v11[1];
      v187 = v11[3];
      v15[2] = v11[2];
      v15[3] = v187;
      *v15 = v185;
      v15[1] = v186;
      v188 = v495;
      v189 = v496;
      v190 = v498;
      v11[2] = v497;
      v11[3] = v190;
      *v11 = v188;
      v11[1] = v189;
      v191 = *a3;
      v192 = *v8;
      v193 = *(a2 - 3);
      v194 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v194;
      v495 = v192;
      v496 = v193;
      v195 = *v11;
      v196 = v11[1];
      v197 = v11[3];
      v493 = v11[2];
      v494 = v197;
      v491 = v195;
      v492 = v196;
      if (v191(&v495, &v491))
      {
        v198 = *v11;
        v199 = v11[1];
        v200 = v11[3];
        v497 = v11[2];
        v498 = v200;
        v495 = v198;
        v496 = v199;
        v201 = *v8;
        v202 = *(a2 - 3);
        v203 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v203;
        *v11 = v201;
        v11[1] = v202;
        goto LABEL_36;
      }
    }

    else
    {
      v85 = *v8;
      v86 = *(a2 - 3);
      v87 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v87;
      v495 = v85;
      v496 = v86;
      v88 = *v11;
      v89 = v11[1];
      v90 = v11[3];
      v493 = v11[2];
      v494 = v90;
      v491 = v88;
      v492 = v89;
      if (v44(&v495, &v491))
      {
        v91 = *v11;
        v92 = v11[1];
        v93 = v11[3];
        v497 = v11[2];
        v498 = v93;
        v495 = v91;
        v496 = v92;
        v94 = *v8;
        v95 = *(a2 - 3);
        v96 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v96;
        *v11 = v94;
        v11[1] = v95;
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        v97 = *a3;
        v98 = *v11;
        v99 = v11[1];
        v100 = v11[3];
        v497 = v11[2];
        v498 = v100;
        v495 = v98;
        v496 = v99;
        v101 = *v15;
        v102 = v15[1];
        v103 = v15[3];
        v493 = v15[2];
        v494 = v103;
        v491 = v101;
        v492 = v102;
        if (v97(&v495, &v491))
        {
          v104 = *v15;
          v105 = v15[1];
          v106 = v15[3];
          v497 = v15[2];
          v498 = v106;
          v495 = v104;
          v496 = v105;
          v107 = *v11;
          v108 = v11[1];
          v109 = v11[3];
          v15[2] = v11[2];
          v15[3] = v109;
          *v15 = v107;
          v15[1] = v108;
          v110 = v495;
          v111 = v496;
          v112 = v498;
          v11[2] = v497;
          v11[3] = v112;
          *v11 = v110;
          v11[1] = v111;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v371 = *a3;
      v372 = *(a1 - 4);
      v373 = *(a1 - 3);
      v374 = *(a1 - 1);
      v497 = *(a1 - 2);
      v498 = v374;
      v495 = v372;
      v496 = v373;
      v375 = *a1;
      v376 = a1[1];
      v377 = a1[3];
      v493 = a1[2];
      v494 = v377;
      v491 = v375;
      v492 = v376;
      if ((v371(&v495, &v491) & 1) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v378 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(a1, a2, a3);
    if ((v379 & 1) == 0)
    {
      goto LABEL_64;
    }

    v380 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, v378, a3);
    v11 = &v378[4];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v378 + 4, a2, a3))
    {
      a4 = -v13;
      a2 = v378;
      if (v380)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v380)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(a1, v378, a3, -v13, a5 & 1);
      v11 = &v378[4];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v11, v11 + 4, v11 + 8, a2 - 4, a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v11, v11 + 4, v11 + 8, v11 + 12, a3);
      v415 = *a3;
      v416 = *(a2 - 4);
      v417 = *(a2 - 3);
      v418 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v418;
      v495 = v416;
      v496 = v417;
      v419 = v11[13];
      v491 = v11[12];
      v492 = v419;
      v420 = v11[15];
      v493 = v11[14];
      v494 = v420;
      if (v415(&v495, &v491))
      {
        v422 = v11[14];
        v421 = v11[15];
        v424 = v11[12];
        v423 = v11[13];
        v425 = *(a2 - 1);
        v427 = *v8;
        v426 = *(a2 - 3);
        v11[14] = *(a2 - 2);
        v11[15] = v425;
        v11[12] = v427;
        v11[13] = v426;
        *v8 = v424;
        *(a2 - 3) = v423;
        *(a2 - 2) = v422;
        *(a2 - 1) = v421;
        v428 = *a3;
        v429 = v11[13];
        v495 = v11[12];
        v496 = v429;
        v430 = v11[15];
        v497 = v11[14];
        v498 = v430;
        v431 = v11[9];
        v491 = v11[8];
        v492 = v431;
        v432 = v11[11];
        v493 = v11[10];
        v494 = v432;
        if (v428(&v495, &v491))
        {
          v434 = v11[10];
          v433 = v11[11];
          v436 = v11[8];
          v435 = v11[9];
          v437 = v11[13];
          v11[8] = v11[12];
          v11[9] = v437;
          v438 = v11[15];
          v11[10] = v11[14];
          v11[11] = v438;
          v11[12] = v436;
          v11[13] = v435;
          v11[14] = v434;
          v11[15] = v433;
          v439 = *a3;
          v440 = v11[9];
          v495 = v11[8];
          v496 = v440;
          v441 = v11[11];
          v497 = v11[10];
          v498 = v441;
          v442 = v11[5];
          v491 = v11[4];
          v492 = v442;
          v443 = v11[7];
          v493 = v11[6];
          v494 = v443;
          if (v439(&v495, &v491))
          {
            v445 = v11[6];
            v444 = v11[7];
            v447 = v11[4];
            v446 = v11[5];
            v448 = v11[9];
            v11[4] = v11[8];
            v11[5] = v448;
            v449 = v11[11];
            v11[6] = v11[10];
            v11[7] = v449;
            v11[8] = v447;
            v11[9] = v446;
            v11[10] = v445;
            v11[11] = v444;
LABEL_86:
            v476 = *a3;
            v477 = v11[5];
            v495 = v11[4];
            v496 = v477;
            v478 = v11[7];
            v497 = v11[6];
            v498 = v478;
            v479 = *v11;
            v480 = v11[1];
            v481 = v11[3];
            v493 = v11[2];
            v494 = v481;
            v491 = v479;
            v492 = v480;
            if (v476(&v495, &v491))
            {
              v482 = *v11;
              v483 = v11[1];
              v484 = v11[3];
              v497 = v11[2];
              v498 = v484;
              v495 = v482;
              v496 = v483;
              v485 = v11[5];
              *v11 = v11[4];
              v11[1] = v485;
              v486 = v11[7];
              v11[2] = v11[6];
              v11[3] = v486;
              v487 = v495;
              v488 = v496;
              v489 = v498;
              v11[6] = v497;
              v11[7] = v489;
              v11[4] = v487;
              v11[5] = v488;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v381 = *a3;
  v382 = v11[5];
  v495 = v11[4];
  v496 = v382;
  v383 = v11[7];
  v497 = v11[6];
  v498 = v383;
  v384 = *v11;
  v385 = v11[1];
  v386 = v11[3];
  v493 = v11[2];
  v494 = v386;
  v491 = v384;
  v492 = v385;
  v387 = v381(&v495, &v491);
  v388 = *a3;
  if (v387)
  {
    v389 = *v8;
    v390 = *(a2 - 3);
    v391 = *(a2 - 1);
    v497 = *(a2 - 2);
    v498 = v391;
    v495 = v389;
    v496 = v390;
    v392 = v11[5];
    v491 = v11[4];
    v492 = v392;
    v393 = v11[7];
    v493 = v11[6];
    v494 = v393;
    if (!v388(&v495, &v491))
    {
      v394 = *v11;
      v395 = v11[1];
      v396 = v11[3];
      v497 = v11[2];
      v498 = v396;
      v495 = v394;
      v496 = v395;
      v397 = v11[5];
      *v11 = v11[4];
      v11[1] = v397;
      v398 = v11[7];
      v11[2] = v11[6];
      v11[3] = v398;
      v399 = v495;
      v400 = v496;
      v401 = v498;
      v11[6] = v497;
      v11[7] = v401;
      v11[4] = v399;
      v11[5] = v400;
      v402 = *a3;
      v403 = *v8;
      v404 = *(a2 - 3);
      v405 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v405;
      v495 = v403;
      v496 = v404;
      v406 = v11[5];
      v491 = v11[4];
      v492 = v406;
      v407 = v11[7];
      v493 = v11[6];
      v494 = v407;
      if (v402(&v495, &v491))
      {
        v409 = v11[6];
        v408 = v11[7];
        v411 = v11[4];
        v410 = v11[5];
        v412 = *(a2 - 1);
        v414 = *v8;
        v413 = *(a2 - 3);
        v11[6] = *(a2 - 2);
        v11[7] = v412;
        v11[4] = v414;
        v11[5] = v413;
        *v8 = v411;
        *(a2 - 3) = v410;
        *(a2 - 2) = v409;
        *(a2 - 1) = v408;
      }

      return;
    }

LABEL_78:
    v458 = *v11;
    v459 = v11[1];
    v460 = v11[3];
    v497 = v11[2];
    v498 = v460;
    v495 = v458;
    v496 = v459;
    v461 = *v8;
    v462 = *(a2 - 3);
    v463 = *(a2 - 1);
    v11[2] = *(a2 - 2);
    v11[3] = v463;
    *v11 = v461;
    v11[1] = v462;
    *v8 = v495;
    *(a2 - 3) = v496;
    *(a2 - 2) = v497;
    *(a2 - 1) = v498;
    return;
  }

  v464 = *v8;
  v465 = *(a2 - 3);
  v466 = *(a2 - 1);
  v497 = *(a2 - 2);
  v498 = v466;
  v495 = v464;
  v496 = v465;
  v467 = v11[5];
  v491 = v11[4];
  v492 = v467;
  v468 = v11[7];
  v493 = v11[6];
  v494 = v468;
  if (v388(&v495, &v491))
  {
    v470 = v11[6];
    v469 = v11[7];
    v472 = v11[4];
    v471 = v11[5];
    v473 = *(a2 - 1);
    v475 = *v8;
    v474 = *(a2 - 3);
    v11[6] = *(a2 - 2);
    v11[7] = v473;
    v11[4] = v475;
    v11[5] = v474;
    *v8 = v472;
    *(a2 - 3) = v471;
    *(a2 - 2) = v470;
    *(a2 - 1) = v469;
    goto LABEL_86;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v106 = *a2;
  v107 = v11;
  v12 = a2[3];
  v108 = a2[2];
  v109 = v12;
  v13 = a1[1];
  v102 = *a1;
  v103 = v13;
  v14 = a1[3];
  v104 = a1[2];
  v105 = v14;
  v15 = v10(&v106, &v102);
  v16 = *a5;
  if (v15)
  {
    v17 = a3[1];
    v106 = *a3;
    v107 = v17;
    v18 = a3[3];
    v108 = a3[2];
    v109 = v18;
    v19 = a2[1];
    v102 = *a2;
    v103 = v19;
    v20 = a2[3];
    v104 = a2[2];
    v105 = v20;
    if (v16(&v106, &v102))
    {
      v22 = a1[2];
      v21 = a1[3];
      v24 = *a1;
      v23 = a1[1];
      v25 = a3[3];
      v27 = *a3;
      v26 = a3[1];
      a1[2] = a3[2];
      a1[3] = v25;
      *a1 = v27;
      a1[1] = v26;
LABEL_9:
      *a3 = v24;
      a3[1] = v23;
      a3[2] = v22;
      a3[3] = v21;
      goto LABEL_10;
    }

    v52 = a1[2];
    v51 = a1[3];
    v54 = *a1;
    v53 = a1[1];
    v55 = a2[3];
    v57 = *a2;
    v56 = a2[1];
    a1[2] = a2[2];
    a1[3] = v55;
    *a1 = v57;
    a1[1] = v56;
    *a2 = v54;
    a2[1] = v53;
    a2[2] = v52;
    a2[3] = v51;
    v58 = *a5;
    v59 = a3[1];
    v106 = *a3;
    v107 = v59;
    v60 = a3[3];
    v108 = a3[2];
    v109 = v60;
    v61 = a2[1];
    v102 = *a2;
    v103 = v61;
    v62 = a2[3];
    v104 = a2[2];
    v105 = v62;
    if (v58(&v106, &v102))
    {
      v22 = a2[2];
      v21 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v63 = a3[3];
      v65 = *a3;
      v64 = a3[1];
      a2[2] = a3[2];
      a2[3] = v63;
      *a2 = v65;
      a2[1] = v64;
      goto LABEL_9;
    }
  }

  else
  {
    v28 = a3[1];
    v106 = *a3;
    v107 = v28;
    v29 = a3[3];
    v108 = a3[2];
    v109 = v29;
    v30 = a2[1];
    v102 = *a2;
    v103 = v30;
    v31 = a2[3];
    v104 = a2[2];
    v105 = v31;
    if (v16(&v106, &v102))
    {
      v33 = a2[2];
      v32 = a2[3];
      v35 = *a2;
      v34 = a2[1];
      v36 = a3[3];
      v38 = *a3;
      v37 = a3[1];
      a2[2] = a3[2];
      a2[3] = v36;
      *a2 = v38;
      a2[1] = v37;
      *a3 = v35;
      a3[1] = v34;
      a3[2] = v33;
      a3[3] = v32;
      v39 = *a5;
      v40 = a2[1];
      v106 = *a2;
      v107 = v40;
      v41 = a2[3];
      v108 = a2[2];
      v109 = v41;
      v42 = a1[1];
      v102 = *a1;
      v103 = v42;
      v43 = a1[3];
      v104 = a1[2];
      v105 = v43;
      if (v39(&v106, &v102))
      {
        v45 = a1[2];
        v44 = a1[3];
        v47 = *a1;
        v46 = a1[1];
        v48 = a2[3];
        v50 = *a2;
        v49 = a2[1];
        a1[2] = a2[2];
        a1[3] = v48;
        *a1 = v50;
        a1[1] = v49;
        *a2 = v47;
        a2[1] = v46;
        a2[2] = v45;
        a2[3] = v44;
      }
    }
  }

LABEL_10:
  v66 = *a5;
  v67 = a4[1];
  v106 = *a4;
  v107 = v67;
  v68 = a4[3];
  v108 = a4[2];
  v109 = v68;
  v69 = a3[1];
  v102 = *a3;
  v103 = v69;
  v70 = a3[3];
  v104 = a3[2];
  v105 = v70;
  if (v66(&v106, &v102))
  {
    v73 = a3[2];
    v72 = a3[3];
    v75 = *a3;
    v74 = a3[1];
    v76 = a4[3];
    v78 = *a4;
    v77 = a4[1];
    a3[2] = a4[2];
    a3[3] = v76;
    *a3 = v78;
    a3[1] = v77;
    *a4 = v75;
    a4[1] = v74;
    a4[2] = v73;
    a4[3] = v72;
    v79 = *a5;
    v80 = a3[1];
    v106 = *a3;
    v107 = v80;
    v81 = a3[3];
    v108 = a3[2];
    v109 = v81;
    v82 = a2[1];
    v102 = *a2;
    v103 = v82;
    v83 = a2[3];
    v104 = a2[2];
    v105 = v83;
    if (v79(&v106, &v102))
    {
      v85 = a2[2];
      v84 = a2[3];
      v87 = *a2;
      v86 = a2[1];
      v88 = a3[3];
      v90 = *a3;
      v89 = a3[1];
      a2[2] = a3[2];
      a2[3] = v88;
      *a2 = v90;
      a2[1] = v89;
      *a3 = v87;
      a3[1] = v86;
      a3[2] = v85;
      a3[3] = v84;
      v91 = *a5;
      v92 = a2[1];
      v106 = *a2;
      v107 = v92;
      v93 = a2[3];
      v108 = a2[2];
      v109 = v93;
      v94 = a1[1];
      v102 = *a1;
      v103 = v94;
      v95 = a1[3];
      v104 = a1[2];
      v105 = v95;
      if (v91(&v106, &v102))
      {
        v96 = a1[2];
        result = a1[3];
        v98 = *a1;
        v97 = a1[1];
        v99 = a2[3];
        v101 = *a2;
        v100 = a2[1];
        a1[2] = a2[2];
        a1[3] = v99;
        *a1 = v101;
        a1[1] = v100;
        *a2 = v98;
        a2[1] = v97;
        a2[2] = v96;
        a2[3] = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v39 = v3;
    v40 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v35 = *v10;
        v36 = v13;
        v14 = v10[3];
        v37 = v10[2];
        v38 = v14;
        v15 = *v11;
        v16 = v11[1];
        v17 = v11[3];
        v33 = v11[2];
        v34 = v17;
        v31 = v15;
        v32 = v16;
        result = v12(&v35, &v31);
        if (result)
        {
          v18 = v10[1];
          v35 = *v10;
          v36 = v18;
          v19 = v10[3];
          v37 = v10[2];
          v38 = v19;
          v20 = v9;
          while (1)
          {
            v21 = (v6 + v20);
            v22 = *(v6 + v20 + 16);
            v21[4] = *(v6 + v20);
            v21[5] = v22;
            v23 = *(v6 + v20 + 48);
            v21[6] = *(v6 + v20 + 32);
            v21[7] = v23;
            if (!v20)
            {
              break;
            }

            v24 = *a3;
            v31 = v35;
            v32 = v36;
            v33 = v37;
            v34 = v38;
            v25 = *(v21 - 3);
            v30[0] = *(v21 - 4);
            v30[1] = v25;
            v26 = *(v21 - 1);
            v30[2] = *(v21 - 2);
            v30[3] = v26;
            result = v24(&v31, v30);
            v20 -= 64;
            if ((result & 1) == 0)
            {
              v27 = (v6 + v20 + 64);
              goto LABEL_10;
            }
          }

          v27 = v6;
LABEL_10:
          v28 = v36;
          *v27 = v35;
          v27[1] = v28;
          v29 = v38;
          v27[2] = v37;
          v27[3] = v29;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v36 = v3;
    v37 = v4;
    v6 = result;
    for (i = (result + 64); v6 + 4 != a2; i = v6 + 4)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v32 = *v6;
      v33 = v11;
      v12 = v6[3];
      v34 = v6[2];
      v35 = v12;
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[3];
      v30 = v9[2];
      v31 = v15;
      v28 = v13;
      v29 = v14;
      result = v10(&v32, &v28);
      if (result)
      {
        v16 = v6[1];
        v32 = *v6;
        v33 = v16;
        v17 = v6[3];
        v34 = v6[2];
        v35 = v17;
        v18 = v6;
        do
        {
          v19 = v18 - 4;
          v20 = *(v18 - 3);
          *v18 = *(v18 - 4);
          v18[1] = v20;
          v21 = *(v18 - 1);
          v18[2] = *(v18 - 2);
          v18[3] = v21;
          v22 = *a3;
          v28 = v32;
          v29 = v33;
          v30 = v34;
          v31 = v35;
          v23 = *(v18 - 7);
          v27[0] = *(v18 - 8);
          v27[1] = v23;
          v24 = *(v18 - 5);
          v27[2] = *(v18 - 6);
          v27[3] = v24;
          result = v22(&v28, v27);
          v18 = v19;
        }

        while ((result & 1) != 0);
        v25 = v33;
        *v19 = v32;
        v19[1] = v25;
        v26 = v35;
        v19[2] = v34;
        v19[3] = v26;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v59 = *a1;
  v60 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v61 = a1[2];
  v62 = v7;
  v10 = *a3;
  v63 = v9;
  v64 = v8;
  v11 = a1[3];
  v65 = a1[2];
  v66 = v11;
  v12 = *(a2 - 3);
  v55 = *(a2 - 4);
  v56 = v12;
  v13 = *(a2 - 1);
  v57 = *(a2 - 2);
  v58 = v13;
  if (v10(&v63, &v55))
  {
    v14 = a1;
    do
    {
      v15 = v14 + 4;
      v16 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v17 = v14[5];
      v55 = v14[4];
      v56 = v17;
      v18 = v14[7];
      v57 = v14[6];
      v58 = v18;
      v19 = v16(&v63, &v55);
      v14 = v15;
    }

    while ((v19 & 1) == 0);
  }

  else
  {
    v20 = a1 + 4;
    do
    {
      v15 = v20;
      if (v20 >= v4)
      {
        break;
      }

      v21 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v22 = v15[1];
      v55 = *v15;
      v56 = v22;
      v23 = v15[3];
      v57 = v15[2];
      v58 = v23;
      v24 = v21(&v63, &v55);
      v20 = v15 + 4;
    }

    while (!v24);
  }

  if (v15 >= v4)
  {
    v25 = v4;
  }

  else
  {
    do
    {
      v25 = v4 - 4;
      v26 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v27 = *(v4 - 3);
      v55 = *(v4 - 4);
      v56 = v27;
      v28 = *(v4 - 1);
      v57 = *(v4 - 2);
      v58 = v28;
      v4 -= 4;
    }

    while ((v26(&v63, &v55) & 1) != 0);
  }

  while (v15 < v25)
  {
    v29 = *v15;
    v30 = v15[1];
    v31 = v15[3];
    v65 = v15[2];
    v66 = v31;
    v63 = v29;
    v64 = v30;
    v32 = *v25;
    v33 = v25[1];
    v34 = v25[3];
    v15[2] = v25[2];
    v15[3] = v34;
    *v15 = v32;
    v15[1] = v33;
    v35 = v63;
    v36 = v64;
    v37 = v66;
    v25[2] = v65;
    v25[3] = v37;
    *v25 = v35;
    v25[1] = v36;
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v38 = v15[5];
      v55 = v15[4];
      v56 = v38;
      v39 = v15[6];
      v40 = v15[7];
      v15 += 4;
      v41 = *a3;
      v57 = v39;
      v58 = v40;
    }

    while (!v41(&v63, &v55));
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v42 = *(v25 - 4);
      v43 = *(v25 - 3);
      v44 = *(v25 - 2);
      v45 = *(v25 - 1);
      v25 -= 4;
      v46 = *a3;
      v57 = v44;
      v58 = v45;
      v55 = v42;
      v56 = v43;
    }

    while ((v46(&v63, &v55) & 1) != 0);
  }

  v47 = v15 - 4;
  if (v15 - 4 != a1)
  {
    v48 = *v47;
    v49 = *(v15 - 3);
    v50 = *(v15 - 1);
    a1[2] = *(v15 - 2);
    a1[3] = v50;
    *a1 = v48;
    a1[1] = v49;
  }

  v51 = v59;
  v52 = v60;
  v53 = v62;
  *(v15 - 2) = v61;
  *(v15 - 1) = v53;
  *v47 = v51;
  *(v15 - 3) = v52;
  return v15;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v50 = *a1;
  v51 = v7;
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 5];
    v54 = a1[v6 + 4];
    v55 = v10;
    v11 = a1[v6 + 7];
    v56 = a1[v6 + 6];
    v57 = v11;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v6 += 4;
  }

  while ((v9(&v54, &v46) & 1) != 0);
  v12 = &a1[v6];
  v13 = &a1[v6 - 4];
  if (v6 == 4)
  {
    while (v12 < a2)
    {
      v18 = *a3;
      v14 = a2 - 4;
      v19 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v19;
      v20 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v20;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
      if (v18(&v54, &v46))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 4;
      v15 = *a3;
      v16 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v16;
      v17 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v17;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
    }

    while (!v15(&v54, &v46));
  }

LABEL_9:
  if (v12 < v14)
  {
    v21 = v12;
    v22 = v14;
    do
    {
      v24 = v21[1];
      v54 = *v21;
      v23 = v54;
      v55 = v24;
      v26 = v21[3];
      v56 = v21[2];
      v25 = v56;
      v57 = v26;
      v28 = v22[2];
      v27 = v22[3];
      v29 = v22[1];
      *v21 = *v22;
      v21[1] = v29;
      v21[2] = v28;
      v21[3] = v27;
      v22[2] = v25;
      v22[3] = v26;
      *v22 = v23;
      v22[1] = v24;
      do
      {
        v30 = v21[5];
        v54 = v21[4];
        v55 = v30;
        v31 = v21[6];
        v32 = v21[7];
        v21 += 4;
        v33 = *a3;
        v56 = v31;
        v57 = v32;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while ((v33(&v54, &v46) & 1) != 0);
      do
      {
        v34 = *(v22 - 4);
        v35 = *(v22 - 3);
        v36 = *(v22 - 2);
        v37 = *(v22 - 1);
        v22 -= 4;
        v38 = *a3;
        v56 = v36;
        v57 = v37;
        v54 = v34;
        v55 = v35;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while (!v38(&v54, &v46));
    }

    while (v21 < v22);
    v13 = v21 - 4;
  }

  if (v13 != a1)
  {
    v39 = *v13;
    v40 = v13[1];
    v41 = v13[3];
    a1[2] = v13[2];
    a1[3] = v41;
    *a1 = v39;
    a1[1] = v40;
  }

  v42 = v50;
  v43 = v51;
  v44 = v53;
  v13[2] = v52;
  v13[3] = v44;
  *v13 = v42;
  v13[1] = v43;
  return v13;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v56 = a2 - 4;
        v57 = *a3;
        v58 = a1[5];
        v189 = a1[4];
        v190 = v58;
        v59 = a1[7];
        v191 = a1[6];
        v192 = v59;
        v60 = a1[1];
        v185 = *a1;
        v186 = v60;
        v61 = a1[3];
        v187 = a1[2];
        v188 = v61;
        v62 = v57(&v189, &v185);
        v63 = *a3;
        if (v62)
        {
          v64 = v56[1];
          v189 = *v56;
          v190 = v64;
          v65 = v56[3];
          v191 = v56[2];
          v192 = v65;
          v66 = a1[5];
          v185 = a1[4];
          v186 = v66;
          v67 = a1[7];
          v187 = a1[6];
          v188 = v67;
          if (v63(&v189, &v185))
          {
            v69 = a1[2];
            v68 = a1[3];
            v71 = *a1;
            v70 = a1[1];
            v72 = v56[3];
            v74 = *v56;
            v73 = v56[1];
            a1[2] = v56[2];
            a1[3] = v72;
            *a1 = v74;
            a1[1] = v73;
          }

          else
          {
            v137 = a1[2];
            v136 = a1[3];
            v139 = *a1;
            v138 = a1[1];
            v140 = a1[5];
            *a1 = a1[4];
            a1[1] = v140;
            v141 = a1[7];
            a1[2] = a1[6];
            a1[3] = v141;
            a1[4] = v139;
            a1[5] = v138;
            a1[6] = v137;
            a1[7] = v136;
            v142 = *a3;
            v143 = v56[1];
            v189 = *v56;
            v190 = v143;
            v144 = v56[3];
            v191 = v56[2];
            v192 = v144;
            v145 = a1[5];
            v185 = a1[4];
            v186 = v145;
            v146 = a1[7];
            v187 = a1[6];
            v188 = v146;
            if (!v142(&v189, &v185))
            {
              return 1;
            }

            v69 = a1[6];
            v68 = a1[7];
            v71 = a1[4];
            v70 = a1[5];
            v147 = v56[3];
            v149 = *v56;
            v148 = v56[1];
            a1[6] = v56[2];
            a1[7] = v147;
            a1[4] = v149;
            a1[5] = v148;
          }

          *v56 = v71;
          v56[1] = v70;
          result = 1;
          v56[2] = v69;
          v56[3] = v68;
          return result;
        }

        v93 = v56[1];
        v189 = *v56;
        v190 = v93;
        v94 = v56[3];
        v191 = v56[2];
        v192 = v94;
        v95 = a1[5];
        v185 = a1[4];
        v186 = v95;
        v96 = a1[7];
        v187 = a1[6];
        v188 = v96;
        if (!v63(&v189, &v185))
        {
          return 1;
        }

        v98 = a1[6];
        v97 = a1[7];
        v100 = a1[4];
        v99 = a1[5];
        v101 = v56[3];
        v103 = *v56;
        v102 = v56[1];
        a1[6] = v56[2];
        a1[7] = v101;
        a1[4] = v103;
        a1[5] = v102;
        *v56 = v100;
        v56[1] = v99;
        v56[2] = v98;
        v56[3] = v97;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        v21 = *a3;
        v22 = a2[-3];
        v189 = a2[-4];
        v190 = v22;
        v23 = a2[-1];
        v191 = a2[-2];
        v192 = v23;
        v24 = a1[13];
        v185 = a1[12];
        v186 = v24;
        v25 = a1[15];
        v187 = a1[14];
        v188 = v25;
        if (!v21(&v189, &v185))
        {
          return 1;
        }

        v26 = a2 - 4;
        v28 = a1[14];
        v27 = a1[15];
        v30 = a1[12];
        v29 = a1[13];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        a1[14] = a2[-2];
        a1[15] = v31;
        a1[12] = v33;
        a1[13] = v32;
        *v26 = v30;
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v34 = *a3;
        v35 = a1[13];
        v189 = a1[12];
        v190 = v35;
        v36 = a1[15];
        v191 = a1[14];
        v192 = v36;
        v37 = a1[9];
        v185 = a1[8];
        v186 = v37;
        v38 = a1[11];
        v187 = a1[10];
        v188 = v38;
        if (!v34(&v189, &v185))
        {
          return 1;
        }

        v40 = a1[10];
        v39 = a1[11];
        v42 = a1[8];
        v41 = a1[9];
        v43 = a1[13];
        a1[8] = a1[12];
        a1[9] = v43;
        v44 = a1[15];
        a1[10] = a1[14];
        a1[11] = v44;
        a1[12] = v42;
        a1[13] = v41;
        a1[14] = v40;
        a1[15] = v39;
        v45 = *a3;
        v46 = a1[9];
        v189 = a1[8];
        v190 = v46;
        v47 = a1[11];
        v191 = a1[10];
        v192 = v47;
        v48 = a1[5];
        v185 = a1[4];
        v186 = v48;
        v49 = a1[7];
        v187 = a1[6];
        v188 = v49;
        if (!v45(&v189, &v185))
        {
          return 1;
        }

        v51 = a1[6];
        v50 = a1[7];
        v53 = a1[4];
        v52 = a1[5];
        v54 = a1[9];
        a1[4] = a1[8];
        a1[5] = v54;
        v55 = a1[11];
        a1[6] = a1[10];
        a1[7] = v55;
        a1[8] = v53;
        a1[9] = v52;
        a1[10] = v51;
        a1[11] = v50;
        break;
      default:
        goto LABEL_16;
    }

    v104 = *a3;
    v105 = a1[5];
    v189 = a1[4];
    v190 = v105;
    v106 = a1[7];
    v191 = a1[6];
    v192 = v106;
    v107 = a1[1];
    v185 = *a1;
    v186 = v107;
    v108 = a1[3];
    v187 = a1[2];
    v188 = v108;
    if (v104(&v189, &v185))
    {
      v110 = a1[2];
      v109 = a1[3];
      v112 = *a1;
      v111 = a1[1];
      v113 = a1[5];
      *a1 = a1[4];
      a1[1] = v113;
      v114 = a1[7];
      a1[2] = a1[6];
      a1[3] = v114;
      a1[4] = v112;
      a1[5] = v111;
      a1[6] = v110;
      a1[7] = v109;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-3];
    v189 = a2[-4];
    v190 = v8;
    v9 = a2[-1];
    v191 = a2[-2];
    v192 = v9;
    v10 = a1[1];
    v185 = *a1;
    v186 = v10;
    v11 = a1[3];
    v187 = a1[2];
    v188 = v11;
    if (v7(&v189, &v185))
    {
      v12 = a2 - 4;
      v14 = a1[2];
      v13 = a1[3];
      v16 = *a1;
      v15 = a1[1];
      v17 = a2[-1];
      v19 = a2[-4];
      v18 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v17;
      *a1 = v19;
      a1[1] = v18;
      *v12 = v16;
      v12[1] = v15;
      result = 1;
      v12[2] = v14;
      v12[3] = v13;
      return result;
    }

    return 1;
  }

LABEL_16:
  v75 = a1 + 8;
  v76 = *a3;
  v77 = a1[5];
  v189 = a1[4];
  v190 = v77;
  v78 = a1[7];
  v191 = a1[6];
  v192 = v78;
  v79 = a1[1];
  v185 = *a1;
  v186 = v79;
  v80 = a1[3];
  v187 = a1[2];
  v188 = v80;
  v81 = v76(&v189, &v185);
  v82 = *a3;
  if (v81)
  {
    v83 = a1[9];
    v189 = *v75;
    v190 = v83;
    v84 = a1[11];
    v191 = a1[10];
    v192 = v84;
    v85 = a1[5];
    v185 = a1[4];
    v186 = v85;
    v86 = a1[7];
    v187 = a1[6];
    v188 = v86;
    if (v82(&v189, &v185))
    {
      v88 = a1[2];
      v87 = a1[3];
      v90 = *a1;
      v89 = a1[1];
      v91 = a1[9];
      *a1 = *v75;
      a1[1] = v91;
      v92 = a1[11];
      a1[2] = a1[10];
      a1[3] = v92;
    }

    else
    {
      v151 = a1[2];
      v150 = a1[3];
      v153 = *a1;
      v152 = a1[1];
      v154 = a1[5];
      *a1 = a1[4];
      a1[1] = v154;
      v155 = a1[7];
      a1[2] = a1[6];
      a1[3] = v155;
      a1[4] = v153;
      a1[5] = v152;
      a1[6] = v151;
      a1[7] = v150;
      v156 = *a3;
      v157 = a1[9];
      v189 = *v75;
      v190 = v157;
      v158 = a1[11];
      v191 = a1[10];
      v192 = v158;
      v159 = a1[5];
      v185 = a1[4];
      v186 = v159;
      v160 = a1[7];
      v187 = a1[6];
      v188 = v160;
      if (!v156(&v189, &v185))
      {
        goto LABEL_33;
      }

      v88 = a1[6];
      v87 = a1[7];
      v90 = a1[4];
      v89 = a1[5];
      v161 = a1[9];
      a1[4] = *v75;
      a1[5] = v161;
      v162 = a1[11];
      a1[6] = a1[10];
      a1[7] = v162;
    }

    *v75 = v90;
    a1[9] = v89;
    a1[10] = v88;
    a1[11] = v87;
  }

  else
  {
    v115 = a1[9];
    v189 = *v75;
    v190 = v115;
    v116 = a1[11];
    v191 = a1[10];
    v192 = v116;
    v117 = a1[5];
    v185 = a1[4];
    v186 = v117;
    v118 = a1[7];
    v187 = a1[6];
    v188 = v118;
    if (v82(&v189, &v185))
    {
      v120 = a1[6];
      v119 = a1[7];
      v122 = a1[4];
      v121 = a1[5];
      v123 = a1[9];
      a1[4] = *v75;
      a1[5] = v123;
      v124 = a1[11];
      a1[6] = a1[10];
      a1[7] = v124;
      *v75 = v122;
      a1[9] = v121;
      a1[10] = v120;
      a1[11] = v119;
      v125 = *a3;
      v126 = a1[5];
      v189 = a1[4];
      v190 = v126;
      v127 = a1[7];
      v191 = a1[6];
      v192 = v127;
      v128 = a1[1];
      v185 = *a1;
      v186 = v128;
      v129 = a1[3];
      v187 = a1[2];
      v188 = v129;
      if (v125(&v189, &v185))
      {
        v131 = a1[2];
        v130 = a1[3];
        v133 = *a1;
        v132 = a1[1];
        v134 = a1[5];
        *a1 = a1[4];
        a1[1] = v134;
        v135 = a1[7];
        a1[2] = a1[6];
        a1[3] = v135;
        a1[4] = v133;
        a1[5] = v132;
        a1[6] = v131;
        a1[7] = v130;
      }
    }
  }

LABEL_33:
  v163 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v164 = 0;
  v165 = 0;
  while (1)
  {
    v166 = *a3;
    v167 = v163[1];
    v189 = *v163;
    v190 = v167;
    v168 = v163[3];
    v191 = v163[2];
    v192 = v168;
    v169 = *v75;
    v170 = v75[1];
    v171 = v75[3];
    v187 = v75[2];
    v188 = v171;
    v185 = v169;
    v186 = v170;
    if (v166(&v189, &v185))
    {
      v172 = v163[1];
      v189 = *v163;
      v190 = v172;
      v173 = v163[3];
      v191 = v163[2];
      v192 = v173;
      v174 = v164;
      while (1)
      {
        v175 = (a1->n128_u64 + v174);
        v176 = *(&a1[9] + v174);
        v175[12] = *(&a1[8] + v174);
        v175[13] = v176;
        v177 = *(&a1[11] + v174);
        v175[14] = *(&a1[10] + v174);
        v175[15] = v177;
        if (v174 == -128)
        {
          break;
        }

        v178 = *a3;
        v185 = v189;
        v186 = v190;
        v187 = v191;
        v188 = v192;
        v179 = v175[5];
        v184[0] = v175[4];
        v184[1] = v179;
        v180 = v175[7];
        v184[2] = v175[6];
        v184[3] = v180;
        v174 -= 64;
        if (((v178)(&v185, v184) & 1) == 0)
        {
          v181 = (a1 + v174 + 192);
          goto LABEL_41;
        }
      }

      v181 = a1;
LABEL_41:
      v182 = v190;
      *v181 = v189;
      v181[1] = v182;
      v183 = v192;
      v181[2] = v191;
      v181[3] = v183;
      if (++v165 == 8)
      {
        return &v163[4] == a2;
      }
    }

    v75 = v163;
    v164 += 64;
    v163 += 4;
    if (v163 == a2)
    {
      return 1;
    }
  }
}