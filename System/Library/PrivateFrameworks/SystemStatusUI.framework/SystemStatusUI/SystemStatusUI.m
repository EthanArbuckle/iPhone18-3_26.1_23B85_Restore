id STUIStatusBarGetVisualProviderClassForScreen(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 _isEmbeddedScreen];
  v6 = v5;
  if (v5)
  {
    NativeVisualProviderClassForScreenWithVisualProviderInfo = STUIStatusBarMainVisualProviderClass;
    if (STUIStatusBarMainVisualProviderClass)
    {
      goto LABEL_18;
    }
  }

  if (v5)
  {
    v8 = +[STUIStatusBarSettingsDomain rootSettings];
    v9 = [v8 visualProviderSettings];
    v10 = [v9 visualProviderClassName];

    if ([(NSString *)v10 length])
    {
      v11 = NSClassFromString(v10);
      if (v11)
      {
        NativeVisualProviderClassForScreenWithVisualProviderInfo = v11;
        Superclass = v11;
        while (!class_conformsToProtocol(Superclass, &unk_287D2FF70))
        {
          Superclass = class_getSuperclass(Superclass);
          if (!Superclass)
          {
            goto LABEL_9;
          }
        }

        NSLog(&cfstr_WarningUsingOv.isa, NativeVisualProviderClassForScreenWithVisualProviderInfo);
        goto LABEL_15;
      }
    }

LABEL_9:
  }

  NativeVisualProviderClassForScreenWithVisualProviderInfo = STUIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo(v3, v4);
  if (NativeVisualProviderClassForScreenWithVisualProviderInfo)
  {
    goto LABEL_16;
  }

  [v3 _unjailedReferenceBounds];
  Width = CGRectGetWidth(v26);
  [v3 _nativeScale];
  v15 = v14;
  v16 = [v3 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  [v3 _displayCornerRadius];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"No status bar visual provider for screen %@ (width: %.2f, scale: %.2f, idiom: %ld, cornerRadius: %.2f). Please see rdar://45025538.", v3, *&Width, v15, v17, v18];
  v19 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&dword_26C4DD000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  NativeVisualProviderClassForScreenWithVisualProviderInfo = objc_opt_class();
LABEL_15:

LABEL_16:
  if (v6)
  {
    STUIStatusBarMainVisualProviderClass = NativeVisualProviderClassForScreenWithVisualProviderInfo;
  }

LABEL_18:
  v20 = NativeVisualProviderClassForScreenWithVisualProviderInfo;

  return v20;
}

uint64_t numberOfItemsForWidth(void *a1, double a2)
{
  v3 = a1;
  if ([v3 count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      [v5 doubleValue];
      v7 = v6 * 0.846;

      if (v7 >= a2)
      {
        break;
      }

      if (++v4 >= [v3 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = [v3 count];
  }

  return v4;
}

void scaleForWidth(void *a1)
{
  v1 = [a1 lastObject];
  [v1 doubleValue];
}

uint64_t _updateSquishyRegionForDynamicValues(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  if ([v5 maxNumberOfVisibleItems] == a2 && (objc_msgSend(v5, "itemDynamicScale"), vabdd_f64(a3, v6) <= 0.0001))
  {
    v7 = 0;
  }

  else
  {
    [v5 setMaxNumberOfVisibleItems:a2];
    [v5 setItemDynamicScale:a3];
    v7 = 1;
  }

  return v7;
}

id STUIStatusBarAddLumaView(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_alloc(MEMORY[0x277D760C0]);
  v13 = [v12 initWithTransitionBoundaries:0 delegate:0.4 frame:{0.7, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a4 == 2)
  {
    v14 = [v13 trailingAnchor];
    v15 = [v11 trailingAnchor];
  }

  else
  {
    if (a4 == 1)
    {
      v14 = [v13 leadingAnchor];
      [v11 leadingAnchor];
    }

    else
    {
      v14 = [v13 centerXAnchor];
      [v11 centerXAnchor];
    }
    v15 = ;
  }

  v16 = v15;
  v17 = [v14 constraintEqualToAnchor:v15];
  [v10 addObject:v17];

  v18 = [v13 topAnchor];
  v19 = [v9 topAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];
  [v10 addObject:v20];

  v21 = [v13 centerYAnchor];
  v22 = [v11 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  LODWORD(v24) = 1144750080;
  [v23 setPriority:v24];
  [v10 addObject:v23];
  v25 = [v13 layer];
  objc_opt_class();
  v26 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v25 scale];
    v28 = v27;
    [v9 _currentScreenScale];
    if (v29 > 0.0)
    {
      v30 = v29;
      if (v28 * (v29 * a5) < 32.0)
      {
        [v25 setScale:1.0];
        v26 = 32.0 / v30;
      }
    }
  }

  v31 = [v13 widthAnchor];
  v32 = v31;
  if (v26 >= a5)
  {
    a5 = v26;
  }

  v33 = [v31 constraintEqualToConstant:a5];
  [v10 addObject:v33];

  v34 = [v13 heightAnchor];
  v35 = [v34 constraintEqualToConstant:a5];
  [v10 addObject:v35];

  [v9 insertSubview:v13 atIndex:0];

  return v13;
}

id STUIStatusBarGetPriorityComparator()
{
  if (STUIStatusBarGetPriorityComparator_onceToken != -1)
  {
    dispatch_once(&STUIStatusBarGetPriorityComparator_onceToken, &__block_literal_global_14);
  }

  v0 = _Block_copy(STUIStatusBarGetPriorityComparator_priorityComparator);

  return v0;
}

id _STUIStatusBar_Log()
{
  if (_STUIStatusBar_Log_onceToken != -1)
  {
    dispatch_once(&_STUIStatusBar_Log_onceToken, &__block_literal_global_5);
  }

  v1 = _STUIStatusBar_Log___StatusBar_LOG;

  return v1;
}

double _avoidanceFrameInLocalCoordinateSpace(void *a1)
{
  v1 = a1;
  v2 = [v1 statusBar];
  v3 = [v1 statusBar];

  [v3 avoidanceFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  memset(&v15, 0, sizeof(v15));
  if (v2)
  {
    [v2 _effectiveScaleTransform];
  }

  v14 = v15;
  if (!CGAffineTransformIsIdentity(&v14))
  {
    v13 = v15;
    CGAffineTransformInvert(&v14, &v13);
    v15 = v14;
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    *&v5 = CGRectApplyAffineTransform(v16, &v14);
  }

  return v5;
}

void sub_26C4E7A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C4E8614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C4E8ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  _Block_object_dispose(&a55, 8);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id STUIStatusBarDynamicSplitDefaultAnimation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__2;
  v17[4] = __Block_byref_object_dispose__2;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x4010000000;
  v14[3] = &unk_26C58BD13;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *MEMORY[0x277CBF3A0];
  v16 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __STUIStatusBarDynamicSplitDefaultAnimation_block_invoke;
  v13[3] = &unk_279D37F70;
  v13[4] = v17;
  v13[5] = v14;
  v6 = [STUIStatusBarAnimation animationWithBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __STUIStatusBarDynamicSplitDefaultAnimation_block_invoke_2;
  v12[3] = &unk_279D38588;
  v12[4] = v14;
  [v6 setPrepareBlock:v12];
  [v6 setDelaysAnimatingItems:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __STUIStatusBarDynamicSplitDefaultAnimation_block_invoke_3;
  v11[3] = &unk_279D386F0;
  v11[4] = v17;
  STUIStatusBarAddDefaultAnimationReposition(v3, v6, v4, v11);
  v7 = MEMORY[0x277CBEB98];
  v8 = [v3 orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
  v9 = [v7 setWithArray:v8];
  [v6 setDelayedDisplayItemPlacements:v9];

  [v6 setPriority:-100];
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v17, 8);

  return v6;
}

void sub_26C4EA068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void STUIStatusBarAddDefaultAnimationReposition(void *a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v29 = a2;
  v8 = a3;
  v27 = a4;
  v26 = [MEMORY[0x277CBEB58] set];
  v9 = [v7 statusBar];
  v28 = v8;
  v10 = [v9 stateForDisplayItemWithIdentifier:v8];
  v11 = [v10 potentialPlacementRegionIdentifiers];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        v17 = [v7 statusBar];
        v18 = [v17 regions];
        v19 = [v18 objectForKeyedSubscript:v16];

        v20 = STUIStatusBarDefaultRepositionAnimation(v19, v27, 0, 100.0, 20.0);
        [v20 setIdentifier:@"defaultAnimationReposition"];
        [v20 setPriority:-200];
        v21 = [v7 statusBar];
        v39 = v16;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        v23 = [v21 displayItemIdentifiersInRegionsWithIdentifiers:v22];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __STUIStatusBarAddDefaultAnimationReposition_block_invoke;
        v30[3] = &unk_279D38798;
        v31 = v28;
        v32 = v26;
        v33 = v29;
        v34 = v20;
        v24 = v20;
        [v23 enumerateObjectsUsingBlock:v30];

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }
}

id STUIStatusBarDefaultRepositionAnimation(void *a1, void *a2, void *a3, double a4, double a5)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __STUIStatusBarDefaultRepositionAnimation_block_invoke;
  v13[3] = &__block_descriptor_48_e24_v24__0___v___8___v__B_16l;
  *&v13[4] = a4;
  *&v13[5] = a5;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = _Block_copy(v13);
  v11 = STUIStatusBarInternalRepositionAnimation(v9, 1, v10, v8, v7);

  return v11;
}

id STUIStatusBarInternalRepositionAnimation(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__3;
  v28[4] = __Block_byref_object_dispose__3;
  v29 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __STUIStatusBarInternalRepositionAnimation_block_invoke;
  v24[3] = &unk_279D38838;
  v13 = v11;
  v25 = v13;
  v27 = v28;
  v14 = v10;
  v26 = v14;
  v15 = [STUIStatusBarAnimation animationWithBlock:v24];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __STUIStatusBarInternalRepositionAnimation_block_invoke_5;
  v19[3] = &unk_279D38860;
  v16 = v9;
  v23 = a2;
  v20 = v16;
  v22 = v28;
  v17 = v12;
  v21 = v17;
  [v15 setPrepareBlock:v19];

  _Block_object_dispose(v28, 8);

  return v15;
}

void sub_26C4EAEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __STUIStatusBarAddDefaultAnimationReposition_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v3) & 1) == 0)
  {
    [*(a1 + 48) addSubAnimation:*(a1 + 56) forDisplayItemWithIdentifier:v3];
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __STUIStatusBarDynamicSplitDefaultAnimation_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 type] == 2)
  {
    v6 = [v5 region];
    v7 = [v6 isEnabled];

    if (v7)
    {
      [v5 absoluteFrame];
      v8 = *(*(a1 + 32) + 8);
      v8[4] = v9;
      v8[5] = v10;
      v8[6] = v11;
      v8[7] = v12;
      v13 = 1;
      [v5 setFloating:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t __STUIStatusBarInternalRepositionAnimation_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (*(a1 + 56) == 1)
    {
      [v7 displayItemAbsolutePresentationFrames];
    }

    else
    {
      [v7 displayItemAbsoluteFrames];
    }
    v8 = ;
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v8;
  }

  else if (v6)
  {
    v9 = *(a1 + 56);
    v10 = [v6 identifier];
    v11 = v10;
    if (v9 == 1)
    {
      v37 = v10;
      v12 = MEMORY[0x277CCAE60];
      [v6 absolutePresentationFrame];
      v34[0] = v13;
      v34[1] = v14;
      v34[2] = v15;
      v34[3] = v16;
      v17 = [v12 valueWithBytes:v34 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v38[0] = v17;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v38;
      v20 = &v37;
    }

    else
    {
      v35 = v10;
      v23 = MEMORY[0x277CCAE60];
      [v6 absoluteFrame];
      v33[0] = v24;
      v33[1] = v25;
      v33[2] = v26;
      v33[3] = v27;
      v17 = [v23 valueWithBytes:v33 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v36 = v17;
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v36;
      v20 = &v35;
    }

    v28 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))(v31, *(*(*(a1 + 48) + 8) + 40));
  }

  return 1;
}

uint64_t __STUIStatusBarGetPriorityComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 <= [v5 priority])
  {
    v8 = [v4 priority];
    v7 = v8 < [v5 priority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __STUIStatusBarDynamicSplitDefaultAnimation_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 type];
  v10 = [v7 region];
  v11 = [v10 identifier];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (v9 == 2)
  {
    v14 = [v7 view];
    [v14 _removeAllRetargetableAnimations:1];

    [v7 setAbsoluteFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  }

  else
  {
    [v7 setAlpha:0.0];
    CGAffineTransformMakeScale(&v17, 0.85, 0.85);
    v16 = v17;
    [v7 setTransform:&v16];
  }

  if (v9 == 1)
  {
    v15 = 0.3;
  }

  else
  {
    v15 = 0.0;
  }

  STUIStatusBarDynamicSplitPerformBaseAnimation(v7, v9 == 2, 0, v9 == 2, v8, 0.85, 0.25, v15);
}

void STUIStatusBarDynamicSplitPerformBaseAnimation(void *a1, int a2, char a3, int a4, void *a5, double a6, double a7, double a8)
{
  v14 = a1;
  v15 = MEMORY[0x277CD9E10];
  v16 = a5;
  v17 = [v15 animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  v18 = [v14 view];
  v19 = [v18 layer];
  v20 = [v19 presentationLayer];
  v21 = [v20 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];

  if (a2)
  {
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = &unk_287D1B240;
    }

    v23 = &unk_287D1B250;
  }

  else if (v21)
  {
    [v21 doubleValue];
    if (v24 == 0.0)
    {
      v22 = &unk_287D1B250;
    }

    else
    {
      v22 = v21;
    }

    v23 = &unk_287D1B240;
  }

  else
  {
    v23 = &unk_287D1B240;
    v22 = &unk_287D1B250;
  }

  [v17 setFromValue:v22];
  [v17 setToValue:v23];
  [v17 setDuration:a7];
  v25 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v17 setTimingFunction:v25];

  [v17 setBeginTimeMode:@"relative"];
  [v17 setBeginTime:a8];
  v26 = [v14 view];
  v27 = [v26 layer];
  [v27 addAnimation:v17 forKey:@"blur"];

  v28 = MEMORY[0x277D75D18];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __STUIStatusBarDynamicSplitPerformBaseAnimation_block_invoke;
  v32[3] = &unk_279D386C8;
  if (a4)
  {
    v29 = 4;
  }

  else
  {
    v29 = 0;
  }

  v35 = a2;
  v36 = a3;
  v33 = v14;
  v34 = a6;
  v30 = v14;
  [v28 animateWithDuration:v29 delay:v32 options:v16 animations:a7 completion:a8];
}

uint64_t __STUIStatusBarDynamicSplitPerformBaseAnimation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  v4 = *(a1 + 32);
  if (v2 == 1)
  {
    if (v3)
    {
      [v4 setDynamicHidingAlpha:0.0];
      CGAffineTransformMakeScale(&v16, *(a1 + 40), *(a1 + 40));
      v5 = *(a1 + 32);
      v13 = *&v16.a;
      v14 = *&v16.c;
      v6 = *&v16.tx;
LABEL_6:
      v15 = v6;
      return [v5 setDynamicHidingTransform:&v13];
    }

    [v4 setAlpha:0.0];
    CGAffineTransformMakeScale(&v12, *(a1 + 40), *(a1 + 40));
    v9 = *(a1 + 32);
    v13 = *&v12.a;
    v14 = *&v12.c;
    v10 = *&v12.tx;
  }

  else
  {
    if (v3)
    {
      [v4 setDynamicHidingAlpha:1.0];
      v5 = *(a1 + 32);
      v7 = *(MEMORY[0x277CBF2C0] + 16);
      v13 = *MEMORY[0x277CBF2C0];
      v14 = v7;
      v6 = *(MEMORY[0x277CBF2C0] + 32);
      goto LABEL_6;
    }

    [v4 setAlpha:1.0];
    v9 = *(a1 + 32);
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    v13 = *MEMORY[0x277CBF2C0];
    v14 = v11;
    v10 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v15 = v10;
  return [v9 setTransform:&v13];
}

void __STUIStatusBarInternalRepositionAnimation_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  if (!v10 || (*(v10 + 16))(v10, v8))
  {
    v11 = *(*(a1[6] + 8) + 40);
    v12 = [v8 identifier];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      [v13 CGRectValue];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v8 absoluteFrame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v23 = *MEMORY[0x277CBF3A0];
      v25 = *(MEMORY[0x277CBF3A0] + 8);
      v27 = *(MEMORY[0x277CBF3A0] + 16);
      v29 = *(MEMORY[0x277CBF3A0] + 24);
      v21 = v29;
      v19 = v27;
      v17 = v25;
      v15 = *MEMORY[0x277CBF3A0];
    }

    v48.origin.x = v23;
    v48.origin.y = v25;
    v48.size.width = v27;
    v48.size.height = v29;
    if (CGRectIsEmpty(v48))
    {
      v49.origin.x = v23;
      v49.origin.y = v25;
      v49.size.width = v27;
      v49.size.height = v29;
      v52.origin.x = v15;
      v52.origin.y = v17;
      v52.size.width = v19;
      v52.size.height = v21;
      CGRectEqualToRect(v49, v52);
    }

    else
    {
      v50.origin.x = v15;
      v50.origin.y = v17;
      v50.size.width = v19;
      v50.size.height = v21;
      IsEmpty = CGRectIsEmpty(v50);
      v51.origin.x = v23;
      v51.origin.y = v25;
      v51.size.width = v27;
      v51.size.height = v29;
      v53.origin.x = v15;
      v53.origin.y = v17;
      v53.size.width = v19;
      v53.size.height = v21;
      if (!CGRectEqualToRect(v51, v53) && !IsEmpty && [v8 isEnabled])
      {
        v31 = [v8 view];
        [v31 _removeAllRetargetableAnimations:1];

        [v8 setAbsoluteFrame:{v15, v17, v19, v21}];
        v32 = a1[5];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __STUIStatusBarInternalRepositionAnimation_block_invoke_2;
        v42[3] = &unk_279D38038;
        v33 = v8;
        v43 = v33;
        v44 = v23;
        v45 = v25;
        v46 = v27;
        v47 = v29;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __STUIStatusBarInternalRepositionAnimation_block_invoke_3;
        v40[3] = &unk_279D38810;
        v41 = v9;
        (*(v32 + 16))(v32, v42, v40);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __STUIStatusBarInternalRepositionAnimation_block_invoke_4;
        v34[3] = &unk_279D38038;
        v35 = v33;
        v36 = v23;
        v37 = v25;
        v38 = v27;
        v39 = v29;
        [v7 addTimeout:v34 withHandler:2.0];

        goto LABEL_10;
      }
    }

    (*(v9 + 2))(v9, 1);
LABEL_10:

    goto LABEL_11;
  }

  (*(v9 + 2))(v9, 1);
LABEL_11:
}

uint64_t __STUIStatusBarDynamicSplitDefaultAnimation_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 region];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

void __STUIStatusBarDefaultRepositionAnimation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D75D18];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __STUIStatusBarDefaultRepositionAnimation_block_invoke_2;
  v14[3] = &unk_279D38888;
  v15 = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __STUIStatusBarDefaultRepositionAnimation_block_invoke_3;
  v12[3] = &unk_279D38060;
  v10 = v6;
  v11 = v5;
  [v7 _animateUsingSpringWithTension:0 friction:v14 interactive:v12 animations:v8 completion:v9];
}

uint64_t STUIStyleOverridesForBackgroundActivityIdentifiers(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 |= STUIStyleOverrideForBackgroundActivityIdentifier(*(*(&v8 + 1) + 8 * i));
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id STUIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v17 = 0;
  v18[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __STUIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo_block_invoke;
  v10[3] = &unk_279D38770;
  v13 = &v14;
  v6 = v3;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void sub_26C4ECAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __STUIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo_block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  result = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(a2, *(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 48) + 8) + 24) != 0;
  return result;
}

id STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (Superclass = class_getSuperclass(a1)) != 0 && (v8 = Superclass, ClassMethod = class_getClassMethod(a1, sel_visualProviderSubclassForScreen_visualProviderInfo_), ClassMethod == class_getClassMethod(v8, sel_visualProviderSubclassForScreen_visualProviderInfo_)))
  {
    v10 = a1;
  }

  else
  {
    v10 = [a1 visualProviderSubclassForScreen:v5 visualProviderInfo:v6];
  }

  v11 = v10;

  return v11;
}

uint64_t STUIStyleOverrideForBackgroundActivityIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D6BC60]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC70]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCA8]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCF8]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC68]])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCC8]])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC80]])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BBE8]])
  {
    v2 = 256;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BD10]])
  {
    v2 = 512;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC50]])
  {
    v2 = 1024;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC00]])
  {
    v2 = 2048;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC20]])
  {
    v2 = 4096;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCF0]])
  {
    v2 = 0x2000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCD0]])
  {
    v2 = 0x4000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC38]])
  {
    v2 = 0x8000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC28]])
  {
    v2 = 0x10000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BD20]])
  {
    v2 = 0x20000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BBE0]])
  {
    v2 = 0x40000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC30]])
  {
    v2 = 0x80000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCC0]])
  {
    v2 = 0x100000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC78]])
  {
    v2 = 0x200000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BBF8]])
  {
    v2 = 0x400000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BBF0]])
  {
    v2 = 0x800000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BD18]])
  {
    v2 = 0x1000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC48]])
  {
    v2 = 0x2000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC40]])
  {
    v2 = 0x4000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC10]])
  {
    v2 = 0x8000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BD08]])
  {
    v2 = 0x10000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCB0]])
  {
    v2 = 0x20000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCD8]])
  {
    v2 = 0x40000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCE8]])
  {
    v2 = 0x80000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCA0]])
  {
    v2 = 0x400000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCB8]])
  {
    v2 = 0x800000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BBD8]])
  {
    v2 = 0x1000000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC58]])
  {
    v2 = 0x2000000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC08]])
  {
    v2 = 0x4000000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BD00]])
  {
    v2 = 0x8000000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BCE0]])
  {
    v2 = 0x10000000000;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BC98]])
  {
    v2 = 0x20000000000;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_26C4EDAC8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26C57432C();

    return sub_26C57419C();
  }

  else
  {
    sub_26C5741DC();
    swift_getWitnessTable();
    sub_26C57431C();
    sub_26C57419C();
    sub_26C57467C();
    swift_getWitnessTable();
    sub_26C5741DC();
    swift_getWitnessTable();
    sub_26C57431C();
    return sub_26C57419C();
  }
}

uint64_t sub_26C4EDC2C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26C57432C();
    sub_26C57419C();
  }

  else
  {
    sub_26C5741DC();
    swift_getWitnessTable();
    sub_26C57431C();
    sub_26C57419C();
    sub_26C57467C();
    swift_getWitnessTable();
    sub_26C5741DC();
    swift_getWitnessTable();
    sub_26C57431C();
    sub_26C57419C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_26C4EDE74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26C4EE0B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A1B10);
  type metadata accessor for StatusBarOverrides(255);
  sub_26C4FC7E8(&qword_2804A1B28, &qword_2804A1B10);
  sub_26C4FBCCC(&qword_2804A1B30, type metadata accessor for StatusBarOverrides);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26C4EE1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26C4EE250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C4EE2F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C57404C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_26C4EE398(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_26C57404C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C4EE438()
{
  MEMORY[0x26D6A41D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C4EE470()
{
  v1 = (type metadata accessor for StatusBarOverrides(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(*v1 + 64);

  v4 = v1[11];
  v5 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
  v6 = v4 + *(v5 + 20);
  v7 = sub_26C57404C();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[12] + *(v5 + 20), v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v10, v2 | 7);
}

uint64_t sub_26C4EE5E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26C4EEB50@<X0>(char *a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1FA0);
  v37 = *(v1 - 8);
  v2 = v37;
  v3 = (MEMORY[0x28223BE20])();
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  sub_26C57427C();
  *v18 = sub_26C57436C();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 256;
  sub_26C57427C();
  *v16 = sub_26C57436C();
  *(v16 + 1) = v22;
  v16[16] = v23 & 1;
  *(v16 + 3) = v24;
  *(v16 + 16) = 257;
  sub_26C57427C();
  *v13 = sub_26C57436C();
  *(v13 + 1) = v25;
  v13[16] = v26 & 1;
  *(v13 + 3) = v27;
  *(v13 + 16) = 258;
  v28 = *(v2 + 16);
  v29 = v10;
  v38 = v10;
  v28(v10, v18, v1);
  v30 = v7;
  v28(v7, v16, v1);
  v31 = v39;
  v28(v39, v13, v1);
  v32 = v40;
  v28(v40, v29, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1FA8);
  v28(&v32[*(v33 + 48)], v30, v1);
  v28(&v32[*(v33 + 64)], v31, v1);
  v34 = *(v37 + 8);
  v34(v13, v1);
  v34(v16, v1);
  v34(v18, v1);
  v34(v31, v1);
  v34(v30, v1);
  return (v34)(v38, v1);
}

uint64_t sub_26C4EEF0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C78);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE0);
  v6(a2 + v7[12], a1[1], v5);
  v8 = v7[16];
  v9 = a1[2];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C70);
  (*(*(v10 - 8) + 16))(a2 + v8, v9, v10);
  v11 = v7[20];
  v12 = a1[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C68);
  (*(*(v13 - 8) + 16))(a2 + v11, v12, v13);
  v14 = v7[24];
  v15 = a1[4];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C60);
  (*(*(v16 - 8) + 16))(a2 + v14, v15, v16);
  v17 = v7[28];
  v18 = a1[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C58);
  (*(*(v19 - 8) + 16))(a2 + v17, v18, v19);
  v20 = v7[32];
  v21 = a1[6];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C50);
  (*(*(v22 - 8) + 16))(a2 + v20, v21, v22);
  v23 = v7[36];
  v24 = a1[7];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C48);
  (*(*(v25 - 8) + 16))(a2 + v23, v24, v25);
  v26 = v7[40];
  v27 = a1[8];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C40);
  (*(*(v28 - 8) + 16))(a2 + v26, v27, v28);
  v29 = v7[44];
  v30 = a1[9];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C38);
  (*(*(v31 - 8) + 16))(a2 + v29, v30, v31);
  v32 = v7[48];
  v33 = a1[10];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C30);
  v35 = *(*(v34 - 8) + 16);

  return v35(a2 + v32, v33, v34);
}

uint64_t sub_26C4EF2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_26C57417C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F70);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v34 = *(a1 + 16);
  if (*(&v34 + 1) && (v16 = *(a1 + 32), (v33 = v16) != 0))
  {
    sub_26C4FC8E4(&v34, v32, &qword_2804A1F88);
    sub_26C4FC8E4(&v33, v32, &qword_2804A1F90);
    v32[0] = sub_26C57447C();
    sub_26C57416C();
    sub_26C5743AC();
    (*(v29 + 8))(v5, v30);

    v17 = sub_26C57444C();
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F98) + 36)] = v17;
    *&v9[*(v6 + 36)] = v16;
    sub_26C4FC95C(v9, v15, &qword_2804A1F68);
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(&v29 - v14, 1, 1, v6);
  }

  v18 = *(a1 + 8);
  v32[0] = *a1;
  v32[1] = v18;
  sub_26C4FC890();

  v19 = sub_26C57437C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_26C4FC8E4(v15, v13, &qword_2804A1F70);
  v26 = v31;
  sub_26C4FC8E4(v13, v31, &qword_2804A1F70);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F80) + 48);
  *v27 = v19;
  *(v27 + 8) = v21;
  *(v27 + 16) = v23 & 1;
  *(v27 + 24) = v25;
  sub_26C4FB1D8(v19, v21, v23 & 1);

  sub_26C4FC830(v15, &qword_2804A1F70);
  sub_26C4FC94C(v19, v21, v23 & 1);

  return sub_26C4FC830(v13, &qword_2804A1F70);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26C4EF6B8()
{
  result = qword_2804A1A08;
  if (!qword_2804A1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1A08);
  }

  return result;
}

uint64_t sub_26C4EF730()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A19E8);
  MEMORY[0x28223BE20](v1);
  v3 = &v6[-v2];
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A19E0);
  sub_26C57452C();
  v7 = *&v6[8];
  v8 = v6[24];
  *v3 = sub_26C57422C();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A19F0);
  sub_26C4EF2A0(v0, &v3[*(v4 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A19F8);
  sub_26C4FC7E8(&qword_2804A1A00, &qword_2804A19E8);
  sub_26C4EF6B8();
  sub_26C4FC7E8(&qword_2804A1A10, &qword_2804A19F8);
  return sub_26C5744CC();
}

uint64_t sub_26C4EF904@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A20);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A28);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v36 = sub_26C57443C();
  v10 = v1[3];
  v42 = v1[2];
  v43 = v10;
  v44 = v1[4];
  v11 = v1[1];
  v40 = *v1;
  v41 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A18);
  sub_26C57452C();
  swift_getKeyPath();
  v42 = v45[2];
  v43 = v45[3];
  v44 = v45[4];
  v40 = v45[0];
  v41 = v45[1];
  sub_26C57451C();

  sub_26C4FC830(v45, &qword_2804A1A18);
  v32 = *(&v46 + 1);
  v33 = v46;
  v31 = v47;
  v13 = v1[3];
  v42 = v1[2];
  v43 = v13;
  v44 = v1[4];
  v14 = v1[1];
  v40 = *v1;
  v41 = v14;
  MEMORY[0x26D6A32C0](&v37, v12);
  v46 = v37;
  v47 = v38;
  v48 = v39[0];
  v49 = v39[1];
  sub_26C4FB1E8(&v46);
  v15 = 1;
  if (sub_26C4FC9F8(v46, 1))
  {
    v16 = v29;
    sub_26C4EFCE8(v2, v29);
    v17 = sub_26C57433C();
    v18 = &v16[*(v3 + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    sub_26C4FC95C(v16, v9, &qword_2804A1A20);
    v15 = 0;
  }

  (*(v34 + 56))(v9, v15, 1, v3);
  v19 = v35;
  sub_26C4FC8E4(v9, v35, &qword_2804A1A28);
  *&v37 = 0x656469727265764FLL;
  *(&v37 + 1) = 0xE800000000000000;
  *&v38 = 0xD000000000000021;
  *(&v38 + 1) = 0x800000026C585010;
  v20 = v36;
  v22 = v32;
  v21 = v33;
  *&v39[0] = v36;
  *(&v39[0] + 1) = v33;
  *&v39[1] = v32;
  v23 = v9;
  v24 = v31;
  BYTE8(v39[1]) = v31;
  v25 = v38;
  v26 = v30;
  *v30 = v37;
  v26[1] = v25;
  v26[2] = v39[0];
  *(v26 + 41) = *(v39 + 9);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A30);
  sub_26C4FC8E4(v19, v26 + *(v27 + 48), &qword_2804A1A28);
  sub_26C4FB23C(&v37, &v40);
  sub_26C4FC830(v23, &qword_2804A1A28);
  sub_26C4FC830(v19, &qword_2804A1A28);
  *&v40 = 0x656469727265764FLL;
  *(&v40 + 1) = 0xE800000000000000;
  *&v41 = 0xD000000000000021;
  *(&v41 + 1) = 0x800000026C585010;
  *&v42 = v20;
  *(&v42 + 1) = v21;
  *&v43 = v22;
  BYTE8(v43) = v24;
  return sub_26C4FB274(&v40);
}

uint64_t sub_26C4EFCE8@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EF8);
  v60 = *(v50 - 8);
  v3 = MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v46 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B00) - 8;
  v6 = MEMORY[0x28223BE20](v48);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F00);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v46 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EA8);
  v59 = *(v55 - 8);
  v14 = MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v46 - v16;
  v17 = sub_26C57427C();
  v46 = v18;
  v47 = v17;
  v19 = a1[1];
  v20 = a1[3];
  v76 = a1[2];
  v77 = v20;
  v21 = a1[3];
  v78 = a1[4];
  v22 = a1[1];
  v74 = *a1;
  v75 = v22;
  v92 = v76;
  v93 = v21;
  v94 = a1[4];
  v90 = v74;
  v91 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A18);
  sub_26C57452C();
  swift_getKeyPath();
  v92 = v79[2];
  v93 = v79[3];
  v94 = v79[4];
  v90 = v79[0];
  v91 = v79[1];
  sub_26C57451C();

  sub_26C4FC830(v79, &qword_2804A1A18);
  v80 = v85;
  *&v81 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EB0);
  sub_26C4FC720();
  sub_26C5744DC();
  sub_26C57427C();
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v90 = v74;
  v91 = v75;
  sub_26C57452C();
  swift_getKeyPath();
  v92 = v82;
  v93 = v83;
  v94 = v84;
  v90 = v80;
  v91 = v81;
  sub_26C57451C();

  sub_26C4FC830(&v80, &qword_2804A1A18);
  v23 = v61;
  sub_26C57459C();
  sub_26C57458C();
  sub_26C57414C();
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F08) + 36));
  v25 = v72;
  *v24 = v71;
  v24[1] = v25;
  v24[2] = v73;
  v26 = sub_26C57429C();
  v27 = (v23 + *(v10 + 44));
  *v27 = v26;
  v27[1] = sub_26C4FC9E8;
  v27[2] = 0;
  sub_26C57427C();
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v90 = v74;
  v91 = v75;
  sub_26C57452C();
  swift_getKeyPath();
  v92 = v87;
  v93 = v88;
  v94 = v89;
  v90 = v85;
  v91 = v86;
  sub_26C57451C();

  sub_26C4FC830(&v85, &qword_2804A1A18);
  v28 = v52;
  sub_26C57459C();
  v29 = sub_26C57429C();
  v30 = (v28 + *(v48 + 44));
  *v30 = v29;
  v30[1] = sub_26C4FC9E8;
  v30[2] = 0;
  sub_26C57427C();
  v48 = v31;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v66 = v74;
  v67 = v75;
  sub_26C57452C();
  swift_getKeyPath();
  v68 = v92;
  v69 = v93;
  v70 = v94;
  v66 = v90;
  v67 = v91;
  sub_26C57451C();

  sub_26C4FC830(&v90, &qword_2804A1A18);
  v62 = v64;
  v63 = v65;
  type metadata accessor for STStatusBarDataCellularType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F10);
  sub_26C4FBCCC(&qword_2804A1F18, type metadata accessor for STStatusBarDataCellularType);
  sub_26C4FC7E8(&qword_2804A1F20, &qword_2804A1F10);
  v32 = v57;
  sub_26C5744DC();
  v47 = *(v59 + 16);
  v33 = v54;
  v34 = v55;
  v47(v54, v53, v55);
  v35 = v56;
  sub_26C4FC8E4(v61, v56, &qword_2804A1F00);
  v36 = v58;
  sub_26C4FC8E4(v28, v58, &qword_2804A1B00);
  v48 = *(v60 + 16);
  v37 = v49;
  v38 = v32;
  v39 = v50;
  (v48)(v49, v38, v50);
  v40 = v51;
  v47(v51, v33, v34);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F28);
  sub_26C4FC8E4(v35, &v40[v41[12]], &qword_2804A1F00);
  sub_26C4FC8E4(v36, &v40[v41[16]], &qword_2804A1B00);
  (v48)(&v40[v41[20]], v37, v39);
  v42 = *(v60 + 8);
  v42(v57, v39);
  sub_26C4FC830(v52, &qword_2804A1B00);
  sub_26C4FC830(v61, &qword_2804A1F00);
  v43 = *(v59 + 8);
  v44 = v55;
  v43(v53, v55);
  v42(v37, v39);
  sub_26C4FC830(v58, &qword_2804A1B00);
  sub_26C4FC830(v56, &qword_2804A1F00);
  return (v43)(v54, v44);
}

uint64_t sub_26C4F06E0@<X0>(char *a1@<X8>)
{
  v73 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v88 = (&v65 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F38);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v83 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v65 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v85 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v79 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  v71 = sub_26C57455C();
  v81 = *(v71 - 8);
  v18 = MEMORY[0x28223BE20](v71);
  v82 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v65 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v65 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v75 = &v65 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v76 = &v65 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v77 = &v65 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v65 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v65 - v33;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F48);
  v70 = *(v74 - 8);
  v35 = v70;
  v36 = MEMORY[0x28223BE20](v74);
  v38 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v38;
  MEMORY[0x28223BE20](v36);
  v40 = &v65 - v39;
  sub_26C57427C();
  *v40 = sub_26C57436C();
  *(v40 + 1) = v41;
  v40[16] = v42 & 1;
  *(v40 + 3) = v43;
  *(v40 + 4) = 0;
  v40[40] = 1;
  v69 = v40;
  v68 = v34;
  sub_26C57454C();
  v67 = v17;
  sub_26C4F0FEC(v17);
  v44 = v32;
  v66 = v32;
  sub_26C57454C();
  sub_26C4F1494(v85);
  sub_26C57454C();
  sub_26C4F1A60(v84);
  sub_26C57454C();
  sub_26C57427C();
  v45 = sub_26C57436C();
  v46 = v88;
  *v88 = v45;
  v46[1] = v47;
  *(v46 + 16) = v48 & 1;
  v46[3] = v49;
  v46[4] = 14;
  *(v46 + 40) = 1;
  v65 = *(v35 + 16);
  v50 = v74;
  v65(v38, v40, v74);
  v51 = *(v81 + 16);
  v52 = v75;
  v53 = v71;
  v51(v75, v34, v71);
  v54 = v79;
  sub_26C4FC8E4(v17, v79, &qword_2804A1F40);
  v51(v87, v44, v53);
  v55 = v80;
  sub_26C4FC8E4(v85, v80, &qword_2804A1F38);
  v51(v86, v77, v53);
  sub_26C4FC8E4(v84, v83, &qword_2804A1F38);
  v51(v82, v76, v53);
  v56 = v72;
  sub_26C4FC8E4(v88, v72, &qword_2804A1F30);
  v57 = v73;
  v65(v73, v78, v50);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F50);
  v51(&v57[v58[12]], v52, v53);
  sub_26C4FC8E4(v54, &v57[v58[16]], &qword_2804A1F40);
  v51(&v57[v58[20]], v87, v53);
  sub_26C4FC8E4(v55, &v57[v58[24]], &qword_2804A1F38);
  v51(&v57[v58[28]], v86, v53);
  v59 = v83;
  sub_26C4FC8E4(v83, &v57[v58[32]], &qword_2804A1F38);
  v60 = v82;
  v51(&v57[v58[36]], v82, v53);
  sub_26C4FC8E4(v56, &v57[v58[40]], &qword_2804A1F30);
  sub_26C4FC830(v88, &qword_2804A1F30);
  v61 = *(v81 + 8);
  v61(v76, v53);
  sub_26C4FC830(v84, &qword_2804A1F38);
  v61(v77, v53);
  sub_26C4FC830(v85, &qword_2804A1F38);
  v61(v66, v53);
  sub_26C4FC830(v67, &qword_2804A1F40);
  v61(v68, v53);
  v62 = *(v70 + 8);
  v63 = v74;
  v62(v69, v74);
  sub_26C4FC830(v56, &qword_2804A1F30);
  v61(v60, v53);
  sub_26C4FC830(v59, &qword_2804A1F38);
  v61(v86, v53);
  sub_26C4FC830(v80, &qword_2804A1F38);
  v61(v87, v53);
  sub_26C4FC830(v79, &qword_2804A1F40);
  v61(v75, v53);
  return (v62)(v78, v63);
}

uint64_t sub_26C4F0FEC@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F48);
  v47 = *(v1 - 8);
  v2 = v47;
  v3 = MEMORY[0x28223BE20](v1);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v45 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v52 = &v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  sub_26C57427C();
  *v22 = sub_26C57436C();
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  *(v22 + 3) = v25;
  *(v22 + 4) = 1;
  v22[40] = 1;
  sub_26C57427C();
  *v20 = sub_26C57436C();
  *(v20 + 1) = v26;
  v20[16] = v27 & 1;
  *(v20 + 3) = v28;
  *(v20 + 4) = 2;
  v20[40] = 1;
  sub_26C57427C();
  v29 = sub_26C57436C();
  v51 = v17;
  *v17 = v29;
  *(v17 + 1) = v30;
  v17[16] = v31 & 1;
  *(v17 + 3) = v32;
  *(v17 + 4) = 3;
  v17[40] = 1;
  sub_26C57427C();
  *v14 = sub_26C57436C();
  *(v14 + 1) = v33;
  v14[16] = v34 & 1;
  *(v14 + 3) = v35;
  *(v14 + 4) = 4;
  v14[40] = 1;
  v46 = v14;
  v36 = *(v2 + 16);
  v37 = v11;
  v48 = v11;
  v36(v11, v22, v1);
  v38 = v52;
  v36(v52, v20, v1);
  v39 = v53;
  v36(v53, v51, v1);
  v40 = v49;
  v36(v49, v14, v1);
  v41 = v50;
  v36(v50, v37, v1);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F60);
  v36(&v41[v42[12]], v38, v1);
  v36(&v41[v42[16]], v39, v1);
  v36(&v41[v42[20]], v40, v1);
  v43 = *(v47 + 8);
  v43(v46, v1);
  v43(v51, v1);
  v43(v20, v1);
  v43(v22, v1);
  v43(v40, v1);
  v43(v53, v1);
  v43(v52, v1);
  return (v43)(v48, v1);
}

uint64_t sub_26C4F1494@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F48);
  v54 = *(v1 - 8);
  v2 = v54;
  v3 = MEMORY[0x28223BE20](v1);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = &v52 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v52 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v52 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v52 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  sub_26C57427C();
  *v26 = sub_26C57436C();
  *(v26 + 1) = v27;
  v26[16] = v28 & 1;
  *(v26 + 3) = v29;
  *(v26 + 4) = 5;
  v26[40] = 1;
  v56 = v26;
  sub_26C57427C();
  *v24 = sub_26C57436C();
  *(v24 + 1) = v30;
  v24[16] = v31 & 1;
  *(v24 + 3) = v32;
  *(v24 + 4) = 6;
  v24[40] = 1;
  v55 = v24;
  sub_26C57427C();
  *v21 = sub_26C57436C();
  *(v21 + 1) = v33;
  v21[16] = v34 & 1;
  *(v21 + 3) = v35;
  *(v21 + 4) = 7;
  v21[40] = 1;
  v53 = v21;
  sub_26C57427C();
  *v18 = sub_26C57436C();
  *(v18 + 1) = v36;
  v18[16] = v37 & 1;
  *(v18 + 3) = v38;
  *(v18 + 4) = 8;
  v18[40] = 1;
  v52 = v18;
  sub_26C57427C();
  *v15 = sub_26C57436C();
  *(v15 + 1) = v39;
  v15[16] = v40 & 1;
  *(v15 + 3) = v41;
  *(v15 + 4) = 9;
  v15[40] = 1;
  v42 = *(v2 + 16);
  v43 = v61;
  v42(v61, v26, v1);
  v44 = v57;
  v42(v57, v24, v1);
  v45 = v58;
  v42(v58, v21, v1);
  v46 = v62;
  v42(v62, v18, v1);
  v47 = v59;
  v42(v59, v15, v1);
  v48 = v60;
  v42(v60, v43, v1);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F58);
  v42(&v48[v49[12]], v44, v1);
  v42(&v48[v49[16]], v45, v1);
  v42(&v48[v49[20]], v46, v1);
  v42(&v48[v49[24]], v47, v1);
  v50 = *(v54 + 8);
  v50(v15, v1);
  v50(v52, v1);
  v50(v53, v1);
  v50(v55, v1);
  v50(v56, v1);
  v50(v47, v1);
  v50(v62, v1);
  v50(v45, v1);
  v50(v44, v1);
  return (v50)(v61, v1);
}

uint64_t sub_26C4F1A60@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F48);
  v54 = *(v1 - 8);
  v2 = v54;
  v3 = MEMORY[0x28223BE20](v1);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = &v52 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v52 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v52 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v52 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  sub_26C57427C();
  *v26 = sub_26C57436C();
  *(v26 + 1) = v27;
  v26[16] = v28 & 1;
  *(v26 + 3) = v29;
  *(v26 + 4) = 10;
  v26[40] = 1;
  v56 = v26;
  sub_26C57427C();
  *v24 = sub_26C57436C();
  *(v24 + 1) = v30;
  v24[16] = v31 & 1;
  *(v24 + 3) = v32;
  *(v24 + 4) = 11;
  v24[40] = 1;
  v55 = v24;
  sub_26C57427C();
  *v21 = sub_26C57436C();
  *(v21 + 1) = v33;
  v21[16] = v34 & 1;
  *(v21 + 3) = v35;
  *(v21 + 4) = 12;
  v21[40] = 1;
  v53 = v21;
  sub_26C57427C();
  *v18 = sub_26C57436C();
  *(v18 + 1) = v36;
  v18[16] = v37 & 1;
  *(v18 + 3) = v38;
  *(v18 + 4) = 13;
  v18[40] = 1;
  v52 = v18;
  sub_26C57427C();
  *v15 = sub_26C57436C();
  *(v15 + 1) = v39;
  v15[16] = v40 & 1;
  *(v15 + 3) = v41;
  *(v15 + 4) = 15;
  v15[40] = 1;
  v42 = *(v2 + 16);
  v43 = v61;
  v42(v61, v26, v1);
  v44 = v57;
  v42(v57, v24, v1);
  v45 = v58;
  v42(v58, v21, v1);
  v46 = v62;
  v42(v62, v18, v1);
  v47 = v59;
  v42(v59, v15, v1);
  v48 = v60;
  v42(v60, v43, v1);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1F58);
  v42(&v48[v49[12]], v44, v1);
  v42(&v48[v49[16]], v45, v1);
  v42(&v48[v49[20]], v46, v1);
  v42(&v48[v49[24]], v47, v1);
  v50 = *(v54 + 8);
  v50(v15, v1);
  v50(v52, v1);
  v50(v53, v1);
  v50(v55, v1);
  v50(v56, v1);
  v50(v47, v1);
  v50(v62, v1);
  v50(v45, v1);
  v50(v44, v1);
  return (v50)(v61, v1);
}

uint64_t sub_26C4F2024@<X0>(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A40);
  *&v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A48);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v34 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v35 = sub_26C5743EC();
  v11 = v1[1];
  v38 = *v1;
  *v39 = v11;
  *&v39[16] = v1[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A38);
  sub_26C57452C();
  v13 = v36;
  v14 = v37[0];
  v32 = *&v37[8];
  v15 = *&v37[24];
  swift_getKeyPath();
  v38 = v13;
  v39[0] = v14;
  *&v39[8] = v32;
  *&v39[24] = v15;
  sub_26C57451C();

  v31 = *(&v36 + 1);
  *&v32 = v36;
  v30 = v37[0];

  v16 = v2[1];
  v38 = *v2;
  *v39 = v16;
  *&v39[16] = v2[2];
  MEMORY[0x26D6A32C0](&v36, v12);
  v17 = 1;
  if (sub_26C4FC9F8(v36, 1))
  {
    v18 = v29;
    sub_26C4F23E8(v2, v29);
    v19 = sub_26C57433C();
    v20 = &v18[*(v4 + 36)];
    *v20 = v19;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    v20[40] = 1;
    sub_26C4FC95C(v18, v10, &qword_2804A1A40);
    v17 = 0;
  }

  (*(v33 + 56))(v10, v17, 1, v4);
  v21 = v34;
  sub_26C4FC8E4(v10, v34, &qword_2804A1A48);
  *&v36 = 0x69462D6957;
  *(&v36 + 1) = 0xE500000000000000;
  v33 = xmmword_26C57F920;
  *v37 = xmmword_26C57F920;
  v22 = v35;
  v23 = v32;
  *&v37[16] = v35;
  *&v37[24] = v32;
  v24 = v31;
  *&v37[32] = v31;
  v25 = v30;
  v37[40] = v30;
  *a1 = v36;
  a1[1] = xmmword_26C57F920;
  a1[2] = *&v37[16];
  *(a1 + 41) = *&v37[25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A50);
  sub_26C4FC8E4(v21, a1 + *(v26 + 48), &qword_2804A1A48);
  sub_26C4FB23C(&v36, &v38);
  sub_26C4FC830(v10, &qword_2804A1A48);
  sub_26C4FC830(v21, &qword_2804A1A48);
  *&v38 = 0x69462D6957;
  *(&v38 + 1) = 0xE500000000000000;
  *v39 = v33;
  *&v39[16] = v22;
  *&v39[24] = v23;
  v40 = v24;
  v41 = v25;
  return sub_26C4FB274(&v38);
}

uint64_t sub_26C4F23E8@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EA0);
  v47 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = &v39 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EA8);
  v41 = *(v45 - 8);
  v6 = v41;
  v7 = MEMORY[0x28223BE20](v45);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v44 = sub_26C57427C();
  v43 = v11;
  v42 = v12;
  v13 = a1[1];
  v60 = *a1;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v61 = v13;
  v62 = v16;
  v58 = v14;
  *v59 = v15;
  *&v59[16] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A38);
  sub_26C57452C();
  v17 = v54;
  LOBYTE(a1) = v55;
  v39 = v56;
  v18 = v57;
  swift_getKeyPath();
  v58 = v17;
  v59[0] = a1;
  *&v59[8] = v39;
  *&v59[24] = v18;
  sub_26C57451C();

  v39 = v54;
  v19 = v55;

  v52 = v39;
  v53 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EB0);
  sub_26C4FC720();
  v40 = v10;
  sub_26C5744DC();
  v44 = sub_26C57427C();
  v43 = v20;
  v42 = v21;
  v58 = v60;
  *v59 = v61;
  *&v59[16] = v62;
  sub_26C57452C();
  v22 = v54;
  LOBYTE(v19) = v55;
  v39 = v56;
  v23 = v57;
  swift_getKeyPath();
  v58 = v22;
  v59[0] = v19;
  *&v59[8] = v39;
  *&v59[24] = v23;
  sub_26C57451C();

  v39 = v54;
  v24 = v55;

  v52 = v39;
  v53 = v24;
  type metadata accessor for STStatusBarDataWifiType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EC0);
  sub_26C4FBCCC(&qword_2804A1EC8, type metadata accessor for STStatusBarDataWifiType);
  sub_26C4FC7E8(&qword_2804A1ED0, &qword_2804A1EC0);
  v25 = v51;
  sub_26C5744DC();
  v26 = *(v6 + 16);
  v27 = v50;
  v28 = v45;
  v26(v50, v10, v45);
  v29 = v47;
  v30 = *(v47 + 16);
  v31 = v46;
  v32 = v25;
  v33 = v48;
  v30(v46, v32, v48);
  v34 = v49;
  v26(v49, v27, v28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1ED8);
  v30(&v34[*(v35 + 48)], v31, v33);
  v36 = *(v29 + 8);
  v36(v51, v33);
  v37 = *(v41 + 8);
  v37(v40, v28);
  v36(v31, v33);
  return (v37)(v50, v28);
}

uint64_t sub_26C4F2A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EF0);
  swift_getOpaqueTypeConformance2();
  return sub_26C57456C();
}

uint64_t sub_26C4F2AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C57426C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_26C57425C();
  sub_26C57424C();
  sub_26C57423C();
  sub_26C57424C();
  sub_26C57428C();
  result = sub_26C57436C();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = a1;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_26C4F2C0C@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v25[-v13];
  sub_26C57427C();
  *v14 = sub_26C57436C();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 4) = 0;
  v14[40] = 1;
  sub_26C57427C();
  *v12 = sub_26C57436C();
  *(v12 + 1) = v18;
  v12[16] = v19 & 1;
  *(v12 + 3) = v20;
  *(v12 + 4) = 1;
  v12[40] = 1;
  v21 = *(v3 + 16);
  v21(v9, v14, v2);
  v21(v6, v12, v2);
  v21(a1, v9, v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1EE8);
  v21(&a1[*(v22 + 48)], v6, v2);
  v23 = *(v3 + 8);
  v23(v12, v2);
  v23(v14, v2);
  v23(v6, v2);
  return (v23)(v9, v2);
}

uint64_t sub_26C4F2EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v51 = a5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A60);
  *&v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A68);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v39 - v13;
  v49 = sub_26C5743EC();
  *&v56 = a1;
  *(&v56 + 1) = a2;
  LOBYTE(v57) = a3;
  *(&v57 + 1) = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A58);
  sub_26C57452C();
  v15 = v53;
  v16 = v54;
  v17 = *(&v54 + 1);
  swift_getKeyPath();
  v56 = v15;
  LOBYTE(v57) = v16;
  *(&v57 + 1) = v17;
  sub_26C57451C();

  v46 = *(&v53 + 1);
  v47 = v53;
  v45 = v54;

  v18 = v44;

  *&v56 = a1;
  *(&v56 + 1) = a2;
  LOBYTE(v57) = a3;
  *(&v57 + 1) = a4;
  MEMORY[0x26D6A32C0](&v53, v14);
  v19 = 1;
  if (sub_26C4FC9F8(v53, 1))
  {
    sub_26C57427C();
    v42 = v20;
    v40 = v21;
    v41 = v22;
    *&v56 = a1;
    *(&v56 + 1) = a2;
    LOBYTE(v57) = a3;
    *(&v57 + 1) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A58);
    sub_26C57452C();
    v23 = v53;
    v24 = v54;
    v25 = *(&v54 + 1);
    swift_getKeyPath();
    v56 = v23;
    LOBYTE(v57) = v24;
    *(&v57 + 1) = v25;
    sub_26C57451C();

    v39 = v53;
    v26 = v54;

    v62 = v39;
    v63 = v26;
    type metadata accessor for STStatusBarLocationType(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E78);
    sub_26C4FBCCC(&qword_2804A1E80, type metadata accessor for STStatusBarLocationType);
    sub_26C4FC7E8(&qword_2804A1E88, &qword_2804A1E78);
    v27 = v43;
    sub_26C5744DC();
    v28 = sub_26C57433C();
    v29 = v27 + *(v18 + 36);
    *v29 = v28;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 1;
    sub_26C4FC95C(v27, v52, &qword_2804A1A60);
    v19 = 0;
  }

  v30 = v52;
  (*(v48 + 56))(v52, v19, 1, v18);
  v31 = v50;
  sub_26C4FC8E4(v30, v50, &qword_2804A1A68);
  *&v53 = 0x6E6F697461636F4CLL;
  *(&v53 + 1) = 0xE800000000000000;
  v48 = xmmword_26C57F930;
  v54 = xmmword_26C57F930;
  v32 = v49;
  v33 = v47;
  *v55 = v49;
  *&v55[8] = v47;
  v34 = v46;
  *&v55[16] = v46;
  v35 = v45;
  v55[24] = v45;
  v36 = v51;
  *v51 = v53;
  v36[1] = xmmword_26C57F930;
  v36[2] = *v55;
  *(v36 + 41) = *&v55[9];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A70);
  sub_26C4FC8E4(v31, v36 + *(v37 + 48), &qword_2804A1A68);
  sub_26C4FB23C(&v53, &v56);
  sub_26C4FC830(v30, &qword_2804A1A68);
  sub_26C4FC830(v31, &qword_2804A1A68);
  *&v56 = 0x6E6F697461636F4CLL;
  *(&v56 + 1) = 0xE800000000000000;
  v57 = v48;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  return sub_26C4FB274(&v56);
}

uint64_t sub_26C4F3454@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E90);
  v36 = *(v1 - 8);
  v2 = v36;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_26C57427C();
  *v19 = sub_26C57436C();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  *(v19 + 4) = 2;
  v19[40] = 1;
  sub_26C57427C();
  *v17 = sub_26C57436C();
  *(v17 + 1) = v23;
  v17[16] = v24 & 1;
  *(v17 + 3) = v25;
  *(v17 + 4) = 0;
  v17[40] = 1;
  sub_26C57427C();
  *v14 = sub_26C57436C();
  *(v14 + 1) = v26;
  v14[16] = v27 & 1;
  *(v14 + 3) = v28;
  *(v14 + 4) = 1;
  v14[40] = 1;
  v29 = *(v2 + 16);
  v30 = v11;
  v37 = v11;
  v29(v11, v19, v1);
  v31 = v8;
  v29(v8, v17, v1);
  v29(v5, v14, v1);
  v32 = v38;
  v29(v38, v30, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E98);
  v29(&v32[*(v33 + 48)], v31, v1);
  v29(&v32[*(v33 + 64)], v5, v1);
  v34 = *(v36 + 8);
  v34(v14, v1);
  v34(v17, v1);
  v34(v19, v1);
  v34(v5, v1);
  v34(v31, v1);
  return (v34)(v37, v1);
}

uint64_t sub_26C4F3830@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A80);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v45 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A88);
  v53 = *(v50 - 8);
  v5 = MEMORY[0x28223BE20](v50);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A90);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v49 = *(v1 + 42);
  v54 = sub_26C57443C();
  v13 = *(v1 + 16);
  v60 = *v1;
  *v61 = v13;
  *&v61[10] = *(v1 + 26);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A78);
  sub_26C57452C();
  v15 = *(&v57 + 1);
  v16 = v57;
  v17 = v58;
  v18 = *(&v58 + 1);
  v19 = *v59;
  v20 = v59[8];
  v21 = v59[9];
  swift_getKeyPath();
  v60 = __PAIR128__(v15, v16);
  v61[0] = v17;
  *&v61[8] = v18;
  *&v61[16] = v19;
  v61[24] = v20;
  v61[25] = v21;
  v22 = v50;
  sub_26C57451C();

  v23 = v49;

  v52 = *(&v57 + 1);
  v24 = v57;
  v51 = v58;
  v25 = v2[1];
  v60 = *v2;
  *v61 = v25;
  *&v61[10] = *(v2 + 26);
  MEMORY[0x26D6A32C0](&v57, v14);
  v26 = 1;
  if (sub_26C4FC9F8(v57, 1))
  {
    v27 = v46;
    sub_26C4F3D34(v2, v46);
    if (v23)
    {
      v28 = sub_26C57433C();
    }

    else
    {
      v28 = sub_26C57434C();
    }

    v29 = v28;
    v30 = v27;
    v31 = v48;
    sub_26C4FC95C(v30, v48, &qword_2804A1A80);
    v32 = v31 + *(v22 + 36);
    *v32 = v29;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 1;
    v33 = v31;
    v34 = v47;
    sub_26C4FC95C(v33, v47, &qword_2804A1A88);
    sub_26C4FC95C(v34, v12, &qword_2804A1A88);
    v26 = 0;
  }

  (*(v53 + 56))(v12, v26, 1, v22);
  if (v23)
  {
    v35 = 0xEB00000000303031;
  }

  else
  {
    v35 = 0;
  }

  if (v23)
  {
    v36 = 0x2E79726574746162;
  }

  else
  {
    v36 = 0;
  }

  v37 = v55;
  sub_26C4FC8E4(v12, v55, &qword_2804A1A90);
  *&v57 = 0x79726574746142;
  *(&v57 + 1) = 0xE700000000000000;
  *&v58 = v36;
  *(&v58 + 1) = v35;
  v38 = v54;
  *v59 = v54;
  *&v59[8] = v24;
  v39 = v52;
  *&v59[16] = v52;
  v40 = v51;
  v59[24] = v51;
  v41 = v58;
  v53 = v24;
  v42 = v56;
  *v56 = v57;
  v42[1] = v41;
  v42[2] = *v59;
  *(v42 + 41) = *&v59[9];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A98);
  sub_26C4FC8E4(v37, v42 + *(v43 + 48), &qword_2804A1A90);
  sub_26C4FB23C(&v57, &v60);
  sub_26C4FC830(v12, &qword_2804A1A90);
  sub_26C4FC830(v37, &qword_2804A1A90);
  *&v60 = 0x79726574746142;
  *(&v60 + 1) = 0xE700000000000000;
  *v61 = v36;
  *&v61[8] = v35;
  *&v61[16] = v38;
  *&v61[24] = v53;
  v62 = v39;
  v63 = v40;
  return sub_26C4FB274(&v60);
}

uint64_t sub_26C4F3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DF8);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v99 = v94 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E00);
  v97 = *(v98 - 8);
  v4 = MEMORY[0x28223BE20](v98);
  v110 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = v94 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E08);
  v7 = MEMORY[0x28223BE20](v95);
  v96 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = v94 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E10);
  v106 = *(v107 - 8);
  v10 = MEMORY[0x28223BE20](v107);
  v103 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E18);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v111 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = v94 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E20);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v18 = v94 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E28);
  v19 = MEMORY[0x28223BE20](v100);
  v105 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = v94 - v21;
  v22 = *(a1 + 16);
  v126 = *a1;
  *v127 = v22;
  *&v127[10] = *(a1 + 26);
  v23 = *(a1 + 16);
  v128 = *a1;
  *v129 = v23;
  *&v129[10] = *(a1 + 26);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A78);
  sub_26C57452C();
  v25 = v120;
  v26 = LOBYTE(v121);
  v27 = v122;
  v28 = v123;
  v29 = v124;
  v30 = v125;
  swift_getKeyPath();
  v128 = v25;
  v129[0] = v26;
  *&v129[8] = v27;
  *&v129[16] = v28;
  v129[24] = v29;
  v129[25] = v30;
  v94[1] = v24;
  sub_26C57451C();

  v118 = v120;
  v119 = v121;
  v117 = xmmword_26C57F940;
  sub_26C4FC6CC();
  sub_26C5744EC();
  v31 = *(a1 + 16);
  v128 = *a1;
  *v129 = v31;
  *&v129[10] = *(a1 + 26);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1A78);
  MEMORY[0x26D6A32C0](&v120);
  if (v122 == 1)
  {
    v33 = sub_26C57446C();
  }

  else
  {
    v34 = *(a1 + 16);
    v128 = *a1;
    *v129 = v34;
    *&v129[10] = *(a1 + 26);
    MEMORY[0x26D6A32C0](&v120, v32);
    if (v121 >= 0.2)
    {
      v33 = sub_26C57443C();
    }

    else
    {
      v33 = sub_26C5743DC();
    }
  }

  v35 = v33;
  KeyPath = swift_getKeyPath();
  if (v35)
  {
    *&v128 = v35;

    v37 = sub_26C57415C();
  }

  else
  {
    v37 = 0;
  }

  v38 = v101;
  v39 = v116;
  v40 = v102;
  (*(v101 + 16))(v116, v18, v102);

  v41 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E38) + 36));
  *v41 = KeyPath;
  v41[1] = v37;
  (*(v38 + 8))(v18, v40);
  v42 = sub_26C57429C();
  v43 = (v39 + *(v100 + 36));
  *v43 = v42;
  v43[1] = sub_26C4FC9E8;
  v43[2] = 0;
  if (*(a1 + 42))
  {
    v102 = sub_26C57427C();
    v101 = v44;
    v128 = v126;
    *v129 = *v127;
    *&v129[10] = *&v127[10];
    sub_26C57452C();
    v45 = v120;
    v46 = LOBYTE(v121);
    v47 = v122;
    v48 = v123;
    v49 = v124;
    v50 = v125;
    swift_getKeyPath();
    v128 = v45;
    v129[0] = v46;
    *&v129[8] = v47;
    *&v129[16] = v48;
    v129[24] = v49;
    v129[25] = v50;
    sub_26C57451C();

    v118 = v120;
    v119 = v121;
    type metadata accessor for STStatusBarBatteryState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E48);
    sub_26C4FBCCC(&qword_2804A1E50, type metadata accessor for STStatusBarBatteryState);
    sub_26C4FC7E8(&qword_2804A1E58, &qword_2804A1E48);
    sub_26C5744DC();
    v102 = sub_26C57427C();
    v101 = v51;
    v128 = v126;
    *v129 = *v127;
    *&v129[10] = *&v127[10];
    sub_26C57452C();
    v53 = *(&v120 + 1);
    v52 = v120;
    v54 = LOBYTE(v121);
    v55 = v122;
    v56 = v123;
    v57 = v124;
    v58 = v125;
    swift_getKeyPath();
    v128 = __PAIR128__(v53, v52);
    v129[0] = v54;
    *&v129[8] = v55;
    *&v129[16] = v56;
    v129[24] = v57;
    v129[25] = v58;
    sub_26C57451C();

    v59 = v104;
    sub_26C5744FC();
    v60 = sub_26C57446C();
    v61 = swift_getKeyPath();
    v62 = (v59 + *(v95 + 36));
    v63 = v59;
    *v62 = v61;
    v62[1] = v60;
    v102 = sub_26C57427C();
    v101 = v64;
    v100 = v65;
    v128 = v126;
    *v129 = *v127;
    *&v129[10] = *&v127[10];
    sub_26C57452C();
    v67 = *(&v120 + 1);
    v66 = v120;
    LOBYTE(v59) = LOBYTE(v121);
    v68 = v122;
    v69 = v123;
    v70 = v124;
    LOBYTE(v60) = v125;
    swift_getKeyPath();
    v128 = __PAIR128__(v67, v66);
    v129[0] = v59;
    *&v129[8] = v68;
    *&v129[16] = v69;
    v129[24] = v70;
    v129[25] = v60;
    sub_26C57451C();

    v71 = v108;
    sub_26C5744FC();
    v72 = *(v106 + 16);
    v73 = v103;
    v74 = v107;
    v72(v103, v115, v107);
    v75 = v96;
    sub_26C4FC8E4(v63, v96, &qword_2804A1E08);
    v76 = v97;
    v77 = *(v97 + 16);
    v78 = v98;
    v77(v110, v71, v98);
    v79 = v99;
    v72(v99, v73, v74);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E60);
    sub_26C4FC8E4(v75, &v79[*(v80 + 48)], &qword_2804A1E08);
    v81 = v110;
    v77(&v79[*(v80 + 64)], v110, v78);
    v82 = *(v76 + 8);
    v82(v108, v78);
    sub_26C4FC830(v104, &qword_2804A1E08);
    v83 = *(v106 + 8);
    v84 = v107;
    v83(v115, v107);
    v82(v81, v78);
    sub_26C4FC830(v75, &qword_2804A1E08);
    v83(v103, v84);
    v85 = v79;
    v86 = v109;
    sub_26C4FC95C(v85, v109, &qword_2804A1DF8);
    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v109;
  }

  (*(v112 + 56))(v86, v87, 1, v113);
  v88 = v116;
  v89 = v105;
  sub_26C4FC8E4(v116, v105, &qword_2804A1E28);
  v90 = v111;
  sub_26C4FC8E4(v86, v111, &qword_2804A1E18);
  v91 = v114;
  sub_26C4FC8E4(v89, v114, &qword_2804A1E28);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E40);
  sub_26C4FC8E4(v90, v91 + *(v92 + 48), &qword_2804A1E18);
  sub_26C4FC830(v86, &qword_2804A1E18);
  sub_26C4FC830(v88, &qword_2804A1E28);
  sub_26C4FC830(v90, &qword_2804A1E18);
  return sub_26C4FC830(v89, &qword_2804A1E28);
}

uint64_t sub_26C4F4B28@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E68);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v25[-v13];
  sub_26C57427C();
  *v14 = sub_26C57436C();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 4) = 0;
  v14[40] = 1;
  sub_26C57427C();
  *v12 = sub_26C57436C();
  *(v12 + 1) = v18;
  v12[16] = v19 & 1;
  *(v12 + 3) = v20;
  *(v12 + 4) = 1;
  v12[40] = 1;
  v21 = *(v3 + 16);
  v21(v9, v14, v2);
  v21(v6, v12, v2);
  v21(a1, v9, v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1E70);
  v21(&a1[*(v22 + 48)], v6, v2);
  v23 = *(v3 + 8);
  v23(v12, v2);
  v23(v14, v2);
  v23(v6, v2);
  return (v23)(v9, v2);
}

uint64_t sub_26C4F4DDC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AA8);
  *&v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v27 = sub_26C5743EC();
  v12 = v1[1];
  v31 = *v1;
  v32 = v12;
  *v33 = v1[2];
  *&v33[10] = *(v1 + 42);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AA0);
  sub_26C57452C();
  swift_getKeyPath();
  v31 = v34[0];
  v32 = v34[1];
  *v33 = v35[0];
  *&v33[10] = *(v35 + 10);
  sub_26C57451C();

  sub_26C4FC830(v34, &qword_2804A1AA0);
  v14 = v28;
  v25 = v29;
  v15 = v1[1];
  v31 = *v1;
  v32 = v15;
  *v33 = v1[2];
  *&v33[10] = *(v1 + 42);
  MEMORY[0x26D6A32C0](&v28, v13);
  v16 = 1;
  if (sub_26C4FC9F8(v28, 1))
  {
    v17 = v24;
    sub_26C4F51D4(v2, v24);
    v18 = sub_26C57433C();
    v19 = &v17[*(v4 + 36)];
    *v19 = v18;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    v19[40] = 1;
    sub_26C4FC95C(v17, v11, &qword_2804A1AA8);
    v16 = 0;
  }

  (*(v26 + 56))(v11, v16, 1, v4);
  sub_26C4FC8E4(v11, v9, &qword_2804A1AB0);
  *&v28 = 0x746F6F7465756C42;
  *(&v28 + 1) = 0xE900000000000068;
  v26 = xmmword_26C57F950;
  v29 = xmmword_26C57F950;
  v20 = v27;
  *v30 = v27;
  *&v30[8] = v14;
  v21 = v25;
  v30[24] = v25;
  *a1 = v28;
  a1[1] = xmmword_26C57F950;
  a1[2] = *v30;
  *(a1 + 41) = *&v30[9];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AB8);
  sub_26C4FC8E4(v9, a1 + *(v22 + 48), &qword_2804A1AB0);
  sub_26C4FB23C(&v28, &v31);
  sub_26C4FC830(v11, &qword_2804A1AB0);
  sub_26C4FC830(v9, &qword_2804A1AB0);
  *&v31 = 0x746F6F7465756C42;
  *(&v31 + 1) = 0xE900000000000068;
  v32 = v26;
  *v33 = v20;
  *&v33[8] = v14;
  v33[24] = v21;
  return sub_26C4FB274(&v31);
}

uint64_t sub_26C4F51D4@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DC0);
  v39 = *(v41 - 8);
  v3 = MEMORY[0x28223BE20](v41);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = sub_26C57427C();
  v37 = v9;
  v38 = v8;
  v36 = v10;
  v35 = v11;
  v12 = a1[1];
  v45 = *a1;
  v46 = v12;
  v14 = *a1;
  v13 = a1[1];
  v47[0] = a1[2];
  *(v47 + 10) = *(a1 + 42);
  v50 = v14;
  v51 = v13;
  v52[0] = a1[2];
  *(v52 + 10) = *(a1 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AA0);
  sub_26C57452C();
  swift_getKeyPath();
  v50 = v48[0];
  v51 = v48[1];
  v52[0] = v49[0];
  *(v52 + 10) = *(v49 + 10);
  sub_26C57451C();

  sub_26C4FC830(v48, &qword_2804A1AA0);
  v54 = v42;
  *v55 = v43;
  type metadata accessor for STStatusBarBluetoothState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DC8);
  sub_26C4FBCCC(&qword_2804A1DD0, type metadata accessor for STStatusBarBluetoothState);
  sub_26C4FC7E8(&qword_2804A1DD8, &qword_2804A1DC8);
  v33 = v7;
  sub_26C5744DC();
  v42 = v45;
  v43 = v46;
  v44[0] = v47[0];
  *(v44 + 10) = *(v47 + 10);
  sub_26C57452C();
  swift_getKeyPath();
  v42 = v50;
  v43 = v51;
  v44[0] = v52[0];
  *(v44 + 10) = *(v52 + 10);
  sub_26C57451C();

  sub_26C4FC830(&v50, &qword_2804A1AA0);
  v15 = v54;
  LODWORD(v36) = v55[0];
  v37 = *(&v54 + 1);
  v38 = *&v55[8];
  v16 = *&v55[16];
  v17 = v55[24];
  v18 = v55[25];
  v19 = v39;
  v20 = *(v39 + 16);
  v21 = v5;
  v34 = v5;
  v22 = v5;
  v23 = v41;
  v20(v22, v7, v41);
  v24 = v40;
  v20(v40, v21, v23);
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DE0) + 48)];
  v26 = v37;
  v27 = v38;
  *&v54 = v15;
  *(&v54 + 1) = v37;
  LOBYTE(v7) = v36;
  v55[0] = v36;
  *&v55[1] = *v53;
  *&v55[4] = *&v53[3];
  *&v55[8] = v38;
  *&v55[16] = v16;
  v55[24] = v17;
  v55[25] = v18;
  v55[26] = 0;
  *(v25 + 27) = *&v55[11];
  v28 = *v55;
  *v25 = v54;
  *(v25 + 1) = v28;
  sub_26C4FB2A4(&v54, &v42);
  v29 = *(v19 + 8);
  v30 = v41;
  v29(v33, v41);
  *&v42 = v15;
  *(&v42 + 1) = v26;
  LOBYTE(v43) = v7;
  *(&v43 + 1) = *v53;
  DWORD1(v43) = *&v53[3];
  *(&v43 + 1) = v27;
  *&v44[0] = v16;
  BYTE8(v44[0]) = v17;
  *(v44 + 9) = v18;
  sub_26C4FC69C(&v42);
  return (v29)(v34, v30);
}

uint64_t sub_26C4F5654@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DE8);
  v36 = *(v1 - 8);
  v2 = v36;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_26C57427C();
  *v19 = sub_26C57436C();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  *(v19 + 4) = 0;
  v19[40] = 1;
  sub_26C57427C();
  *v17 = sub_26C57436C();
  *(v17 + 1) = v23;
  v17[16] = v24 & 1;
  *(v17 + 3) = v25;
  *(v17 + 4) = 1;
  v17[40] = 1;
  sub_26C57427C();
  *v14 = sub_26C57436C();
  *(v14 + 1) = v26;
  v14[16] = v27 & 1;
  *(v14 + 3) = v28;
  *(v14 + 4) = 2;
  v14[40] = 1;
  v29 = *(v2 + 16);
  v30 = v11;
  v37 = v11;
  v29(v11, v19, v1);
  v31 = v8;
  v29(v8, v17, v1);
  v29(v5, v14, v1);
  v32 = v38;
  v29(v38, v30, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DF0);
  v29(&v32[*(v33 + 48)], v31, v1);
  v29(&v32[*(v33 + 64)], v5, v1);
  v34 = *(v36 + 8);
  v34(v14, v1);
  v34(v17, v1);
  v34(v19, v1);
  v34(v5, v1);
  v34(v31, v1);
  return (v34)(v37, v1);
}

uint64_t sub_26C4F5A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v51 = a5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AC8);
  *&v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v39 - v13;
  v49 = sub_26C5743DC();
  *&v56 = a1;
  *(&v56 + 1) = a2;
  LOBYTE(v57) = a3;
  *(&v57 + 1) = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AC0);
  sub_26C57452C();
  v15 = v53;
  v16 = v54;
  v17 = *(&v54 + 1);
  swift_getKeyPath();
  v56 = v15;
  LOBYTE(v57) = v16;
  *(&v57 + 1) = v17;
  sub_26C57451C();

  v46 = *(&v53 + 1);
  v47 = v53;
  v45 = v54;

  v18 = v44;

  *&v56 = a1;
  *(&v56 + 1) = a2;
  LOBYTE(v57) = a3;
  *(&v57 + 1) = a4;
  MEMORY[0x26D6A32C0](&v53, v14);
  v19 = 1;
  if (sub_26C4FC9F8(v53, 1))
  {
    sub_26C57427C();
    v42 = v20;
    v40 = v21;
    v41 = v22;
    *&v56 = a1;
    *(&v56 + 1) = a2;
    LOBYTE(v57) = a3;
    *(&v57 + 1) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AC0);
    sub_26C57452C();
    v23 = v53;
    v24 = v54;
    v25 = *(&v54 + 1);
    swift_getKeyPath();
    v56 = v23;
    LOBYTE(v57) = v24;
    *(&v57 + 1) = v25;
    sub_26C57451C();

    v39 = v53;
    v26 = v54;

    v62 = v39;
    v63 = v26;
    type metadata accessor for STStatusBarVoiceControlType(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D98);
    sub_26C4FBCCC(&qword_2804A1DA0, type metadata accessor for STStatusBarVoiceControlType);
    sub_26C4FC7E8(&qword_2804A1DA8, &qword_2804A1D98);
    v27 = v43;
    sub_26C5744DC();
    v28 = sub_26C57433C();
    v29 = v27 + *(v18 + 36);
    *v29 = v28;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 1;
    sub_26C4FC95C(v27, v52, &qword_2804A1AC8);
    v19 = 0;
  }

  v30 = v52;
  (*(v48 + 56))(v52, v19, 1, v18);
  v31 = v50;
  sub_26C4FC8E4(v30, v50, &qword_2804A1AD0);
  strcpy(&v53, "Voice Control");
  HIWORD(v53) = -4864;
  v48 = xmmword_26C57F960;
  v54 = xmmword_26C57F960;
  v32 = v49;
  v33 = v47;
  *v55 = v49;
  *&v55[8] = v47;
  v34 = v46;
  *&v55[16] = v46;
  v35 = v45;
  v55[24] = v45;
  v36 = v51;
  *v51 = v53;
  v36[1] = xmmword_26C57F960;
  v36[2] = *v55;
  *(v36 + 41) = *&v55[9];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AD8);
  sub_26C4FC8E4(v31, v36 + *(v37 + 48), &qword_2804A1AD0);
  sub_26C4FB23C(&v53, &v56);
  sub_26C4FC830(v30, &qword_2804A1AD0);
  sub_26C4FC830(v31, &qword_2804A1AD0);
  strcpy(&v56, "Voice Control");
  HIWORD(v56) = -4864;
  v57 = v48;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  return sub_26C4FB274(&v56);
}

uint64_t sub_26C4F5FD4@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DB0);
  v36 = *(v1 - 8);
  v2 = v36;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_26C57427C();
  *v19 = sub_26C57436C();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  *(v19 + 4) = 0;
  v19[40] = 1;
  sub_26C57427C();
  *v17 = sub_26C57436C();
  *(v17 + 1) = v23;
  v17[16] = v24 & 1;
  *(v17 + 3) = v25;
  *(v17 + 4) = 1;
  v17[40] = 1;
  sub_26C57427C();
  *v14 = sub_26C57436C();
  *(v14 + 1) = v26;
  v14[16] = v27 & 1;
  *(v14 + 3) = v28;
  *(v14 + 4) = 2;
  v14[40] = 1;
  v29 = *(v2 + 16);
  v30 = v11;
  v37 = v11;
  v29(v11, v19, v1);
  v31 = v8;
  v29(v8, v17, v1);
  v29(v5, v14, v1);
  v32 = v38;
  v29(v38, v30, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1DB8);
  v29(&v32[*(v33 + 48)], v31, v1);
  v29(&v32[*(v33 + 64)], v5, v1);
  v34 = *(v36 + 8);
  v34(v14, v1);
  v34(v17, v1);
  v34(v19, v1);
  v34(v5, v1);
  v34(v31, v1);
  return (v34)(v37, v1);
}

uint64_t sub_26C4F63AC@<X0>(unsigned __int128 *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  *&v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AE8);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v44 = v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v51 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - v7;
  v50 = sub_26C57441C();
  v9 = *(v1 + 16);
  v56 = *v1;
  v57 = v9;
  v58 = *(v1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AE0);
  sub_26C57452C();
  v12 = *(&v53 + 1);
  v11 = v53;
  v13 = v54;
  v14 = *(&v54 + 1);
  v15 = *v55;
  swift_getKeyPath();
  v56 = __PAIR128__(v12, v11);
  LOBYTE(v57) = v13;
  *(&v57 + 1) = v14;
  v58 = v15;
  sub_26C57451C();

  v47 = *(&v53 + 1);
  v48 = v53;
  v46 = v54;

  v16 = *(v2 + 16);
  v56 = *v2;
  v57 = v16;
  v58 = *(v2 + 32);
  MEMORY[0x26D6A32C0](&v53, v10);
  v17 = v53;

  v18 = 1;
  if (sub_26C4FC9F8(v17, 1))
  {
    sub_26C57427C();
    v43 = v19;
    v41[3] = v20;
    v42 = v21;
    v22 = *(v2 + 16);
    v56 = *v2;
    v57 = v22;
    v58 = *(v2 + 32);
    sub_26C57452C();
    v23 = v53;
    v24 = v54;
    v25 = *(&v54 + 1);
    v26 = *v55;
    swift_getKeyPath();
    v56 = v23;
    LOBYTE(v57) = v24;
    *(&v57 + 1) = v25;
    v58 = v26;
    sub_26C57451C();

    v27 = v44;
    sub_26C57459C();
    v28 = sub_26C57429C();
    v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B00) + 36));
    *v29 = v28;
    v29[1] = sub_26C4F68B4;
    v29[2] = 0;
    v30 = sub_26C57433C();
    v31 = v27 + *(v52 + 36);
    *v31 = v30;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 1;
    sub_26C4FB2DC(v27, v8);
    v18 = 0;
  }

  (*(v49 + 56))(v8, v18, 1, v52);
  v32 = v51;
  sub_26C4FC8E4(v8, v51, &qword_2804A1AF0);
  *&v53 = 1919251285;
  *(&v53 + 1) = 0xE400000000000000;
  v52 = xmmword_26C57F970;
  v54 = xmmword_26C57F970;
  v33 = v50;
  v34 = v48;
  *v55 = v50;
  *&v55[8] = v48;
  v35 = v47;
  *&v55[16] = v47;
  v36 = v8;
  v37 = v46;
  v55[24] = v46;
  v38 = v45;
  *v45 = v53;
  v38[1] = xmmword_26C57F970;
  v38[2] = *v55;
  *(v38 + 41) = *&v55[9];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AF8);
  sub_26C4FC8E4(v32, v38 + *(v39 + 48), &qword_2804A1AF0);
  sub_26C4FB23C(&v53, &v56);
  sub_26C4FC830(v36, &qword_2804A1AF0);
  sub_26C4FC830(v32, &qword_2804A1AF0);
  *&v56 = 1919251285;
  *(&v56 + 1) = 0xE400000000000000;
  v57 = v52;
  v58 = v33;
  v59 = v34;
  v60 = v35;
  v61 = v37;
  return sub_26C4FB274(&v56);
}

uint64_t sub_26C4F68E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C57449C();
  return v1;
}

uint64_t sub_26C4F692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v20 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v20);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B10);
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - v12;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B18);
  sub_26C4FC7E8(&qword_2804A1B20, &qword_2804A1B18);
  sub_26C57435C();
  v27 = a1;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  v14 = sub_26C57449C();
  (*(*v26 + 120))(v14);

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;

  sub_26C4FB34C(a3);
  sub_26C4FC7E8(&qword_2804A1B28, &qword_2804A1B10);
  sub_26C4FBCCC(&qword_2804A1B30, type metadata accessor for StatusBarOverrides);
  v16 = v19;
  sub_26C5743CC();

  sub_26C4FB3AC(v10);
  return (*(v11 + 8))(v13, v16);
}

uint64_t sub_26C4F6C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X8>)
{
  v113 = a5;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C30);
  v147 = *(v137 - 8);
  v9 = MEMORY[0x28223BE20](v137);
  v136 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v111 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C38);
  v146 = *(v135 - 8);
  v12 = MEMORY[0x28223BE20](v135);
  v134 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v111 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C40);
  v154 = *(v133 - 8);
  v15 = MEMORY[0x28223BE20](v133);
  v132 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v140 = &v111 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C48);
  v153 = *(v130 - 8);
  v18 = MEMORY[0x28223BE20](v130);
  v128 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v111 - v20;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C50);
  v152 = *(v142 - 8);
  v21 = MEMORY[0x28223BE20](v142);
  v126 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v145 = &v111 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C58);
  v151 = *(v131 - 8);
  v24 = MEMORY[0x28223BE20](v131);
  v122 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v144 = &v111 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C60);
  v150 = *(v129 - 8);
  v27 = MEMORY[0x28223BE20](v129);
  v121 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v143 = &v111 - v29;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C68);
  v149 = *(v127 - 8);
  v30 = MEMORY[0x28223BE20](v127);
  v120 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v141 = &v111 - v32;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C70);
  v148 = *(v125 - 8);
  v33 = MEMORY[0x28223BE20](v125);
  v118 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v138 = &v111 - v35;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C78);
  v123 = *(v116 - 8);
  v36 = MEMORY[0x28223BE20](v116);
  v115 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v114 = &v111 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v117 = &v111 - v41;
  MEMORY[0x28223BE20](v40);
  v119 = &v111 - v42;
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v43;
  LOBYTE(v197) = v44 & 1;
  v198 = v45;
  v191 = a1;
  v192 = a2;
  v193 = a3;
  v194 = a4;
  sub_26C4FBEF4();
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v46;
  LOBYTE(v197) = v47 & 1;
  v198 = v48;
  v187 = a1;
  v188 = a2;
  v189 = a3;
  v190 = a4;
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v49;
  LOBYTE(v197) = v50 & 1;
  v198 = v51;
  v183 = a1;
  v184 = a2;
  v185 = a3;
  v186 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C88);
  v111 = MEMORY[0x277CE14C0];
  sub_26C4FC7E8(&qword_2804A1C90, &qword_2804A1C88);
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v52;
  LOBYTE(v197) = v53 & 1;
  v198 = v54;
  v179 = a1;
  v180 = a2;
  v181 = a3;
  v182 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1C98);
  sub_26C4FC7E8(&qword_2804A1CA0, &qword_2804A1C98);
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v55;
  LOBYTE(v197) = v56 & 1;
  v198 = v57;
  v175 = a1;
  v176 = a2;
  v177 = a3;
  v178 = a4;
  sub_26C4FBFA4();
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v58;
  LOBYTE(v197) = v59 & 1;
  v198 = v60;
  v171 = a1;
  v172 = a2;
  v173 = a3;
  v174 = a4;
  sub_26C4FC000();
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v61;
  LOBYTE(v197) = v62 & 1;
  v198 = v63;
  v167 = a1;
  v168 = a2;
  v169 = a3;
  v170 = a4;
  sub_26C4FC05C();
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v64;
  LOBYTE(v197) = v65 & 1;
  v198 = v66;
  v163 = a1;
  v164 = a2;
  v165 = a3;
  v166 = a4;
  sub_26C4FC0D4();
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v67;
  LOBYTE(v197) = v68 & 1;
  v198 = v69;
  v159 = a1;
  v160 = a2;
  v161 = a3;
  v162 = a4;
  sub_26C4FC130();
  sub_26C57457C();
  sub_26C57427C();
  v195 = sub_26C57436C();
  v196 = v70;
  LOBYTE(v197) = v71 & 1;
  v198 = v72;
  v155 = a1;
  v156 = a2;
  v157 = a3;
  v158 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CD0);
  sub_26C4FC7E8(&qword_2804A1CD8, &qword_2804A1CD0);
  sub_26C57457C();
  sub_26C57427C();
  v73 = swift_allocObject();
  v73[2] = a1;
  v73[3] = a2;
  v73[4] = a3;
  v73[5] = a4;

  sub_26C4FB34C(a3);
  v74 = v112;
  sub_26C5744BC();
  v75 = *(v123 + 16);
  v76 = v114;
  v77 = v116;
  v75(v114, v119, v116);
  v195 = v76;
  v78 = v115;
  v75(v115, v117, v77);
  v196 = v78;
  v79 = v118;
  (*(v148 + 16))(v118, v138, v125);
  v197 = v79;
  v80 = v120;
  (*(v149 + 16))(v120, v141, v127);
  v198 = v80;
  v81 = v121;
  (*(v150 + 16))(v121, v143, v129);
  v199 = v81;
  v82 = v122;
  (*(v151 + 16))(v122, v144, v131);
  v200 = v82;
  v83 = v126;
  (*(v152 + 16))(v126, v145, v142);
  v201 = v83;
  v84 = v128;
  v85 = v130;
  (*(v153 + 16))(v128, v139, v130);
  v202 = v84;
  v86 = v132;
  v87 = v133;
  (*(v154 + 16))(v132, v140, v133);
  v203 = v86;
  v88 = v146;
  v89 = v134;
  v90 = v135;
  v91 = v124;
  (*(v146 + 16))(v134, v124, v135);
  v204 = v89;
  v92 = v147;
  v94 = v136;
  v93 = v137;
  (*(v147 + 16))(v136, v74, v137);
  v205 = v94;
  sub_26C4EEF0C(&v195, v113);
  v95 = *(v92 + 8);
  v147 = v92 + 8;
  v113 = v95;
  v95(v74, v93);
  v96 = *(v88 + 8);
  v146 = v88 + 8;
  v112 = v96;
  (v96)(v91, v90);
  v97 = *(v154 + 8);
  v154 += 8;
  v124 = v97;
  (v97)(v140, v87);
  v98 = *(v153 + 8);
  v153 += 8;
  v140 = v98;
  (v98)(v139, v85);
  v99 = *(v152 + 8);
  v152 += 8;
  v139 = v99;
  (v99)(v145, v142);
  v100 = *(v151 + 8);
  v151 += 8;
  v145 = v100;
  v101 = v131;
  (v100)(v144, v131);
  v102 = *(v150 + 8);
  v150 += 8;
  v144 = v102;
  v103 = v129;
  (v102)(v143, v129);
  v104 = *(v149 + 8);
  v149 += 8;
  v105 = v127;
  v104(v141, v127);
  v106 = *(v148 + 8);
  v148 += 8;
  v107 = v125;
  v106(v138, v125);
  v108 = *(v123 + 8);
  v109 = v116;
  v108(v117, v116);
  v108(v119, v109);
  v113(v136, v137);
  (v112)(v134, v135);
  (v124)(v132, v133);
  (v140)(v128, v130);
  (v139)(v126, v142);
  (v145)(v122, v101);
  (v144)(v121, v103);
  v104(v120, v105);
  v106(v118, v107);
  v108(v115, v109);
  return (v108)(v114, v109);
}

uint64_t sub_26C4F7FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C4FC258(a1, v6);
  return (*(**a2 + 128))(v6);
}

__n128 sub_26C4F809C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v23;
  v10 = v24;
  swift_getKeyPath();
  v21 = v9;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v8, &qword_2804A1CE8);
  result = v20;
  v12 = v19;
  v13 = v16;
  v14 = v17;
  *(a3 + 32) = v18;
  *(a3 + 48) = v12;
  *(a3 + 64) = result;
  *a3 = v13;
  *(a3 + 16) = v14;
  return result;
}

uint64_t sub_26C4F8250@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *&v48 = a2;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v44 = sub_26C57445C();
  v61 = a1;
  v62 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v69[0];
  v10 = v69[1];
  v11 = *v70;
  swift_getKeyPath();
  v69[0] = v9;
  v69[1] = v10;
  *v70 = v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v8, &qword_2804A1CE8);
  v41 = v61;
  v47 = v62;
  v40 = v63;
  v43 = 0x800000026C5850C0;
  v42 = sub_26C5743EC();
  v12 = v36;
  v61 = v36;
  v62 = v48;
  sub_26C5744AC();
  v13 = v69[0];
  v14 = v69[1];
  v15 = *v70;
  swift_getKeyPath();
  v69[0] = v13;
  v69[1] = v14;
  *v70 = v15;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v8, &qword_2804A1CE8);
  v38 = v62;
  v39 = v61;
  v37 = v63;
  v61 = v12;
  v62 = v48;
  sub_26C5744AC();
  v16 = v69[0];
  v17 = v69[1];
  v18 = *v70;
  swift_getKeyPath();
  v61 = v16;
  v62 = v17;
  v63 = v18;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v8, &qword_2804A1CE8);
  v19 = v69[0];
  v20 = v69[1];
  v21 = v70[0];
  v22 = v71;
  v23 = *&v70[8];
  strcpy(v55, "Airplane Mode");
  HIWORD(v55[0]) = -4864;
  v48 = xmmword_26C57F980;
  v55[1] = xmmword_26C57F980;
  v24 = v44;
  v25 = v41;
  *&v56[0] = v44;
  *(&v56[0] + 1) = v41;
  *&v56[1] = v47;
  LOBYTE(v16) = v40;
  BYTE8(v56[1]) = v40;
  *(v51 + 9) = *(v56 + 9);
  v49 = v55[0];
  v50 = xmmword_26C57F980;
  *&v57 = 5132374;
  *(&v57 + 1) = 0xE300000000000000;
  v26 = v42;
  v27 = v43;
  *&v58 = 0xD00000000000001FLL;
  *(&v58 + 1) = v43;
  v29 = v38;
  v28 = v39;
  *v59 = v42;
  *&v59[8] = v39;
  *&v59[16] = v38;
  LOBYTE(v3) = v37;
  v59[24] = v37;
  *(v54 + 9) = *&v59[9];
  v53 = v58;
  v54[0] = *v59;
  v51[0] = v56[0];
  v52 = v57;
  v30 = v55[0];
  v31 = v51[1];
  *(a3 + 32) = v56[0];
  *(a3 + 48) = v31;
  *a3 = v30;
  *(a3 + 16) = xmmword_26C57F980;
  v32 = v52;
  v33 = v53;
  v34 = v54[1];
  *(a3 + 96) = v54[0];
  *(a3 + 112) = v34;
  *(a3 + 64) = v32;
  *(a3 + 80) = v33;
  *(a3 + 128) = v19;
  *(a3 + 136) = v20;
  *(a3 + 144) = v21;
  LODWORD(v19) = *v60;
  *(a3 + 148) = *&v60[3];
  *(a3 + 145) = v19;
  *(a3 + 152) = v23;
  *(a3 + 168) = v22;
  sub_26C4FB23C(v55, v69);
  sub_26C4FB23C(&v57, v69);
  v61 = 5132374;
  v62 = 0xE300000000000000;
  v63 = 0xD00000000000001FLL;
  v64 = v27;
  v65 = v26;
  v66 = v28;
  v67 = v29;
  v68 = v3;
  sub_26C4FB274(&v61);
  strcpy(v69, "Airplane Mode");
  HIWORD(v69[1]) = -4864;
  *v70 = v48;
  *&v70[16] = v24;
  v71 = v25;
  v72 = v47;
  v73 = v16;
  return sub_26C4FB274(v69);
}

uint64_t sub_26C4F870C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v78 = a3;
  v79 = a4;
  v5 = a2;
  v100 = a5;
  *&v101 = a2;
  v90 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF8);
  MEMORY[0x28223BE20](v87);
  v88 = &v78 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D00);
  MEMORY[0x28223BE20](v81);
  v82 = &v78 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D08);
  MEMORY[0x28223BE20](v86);
  v83 = &v78 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D10);
  MEMORY[0x28223BE20](v84);
  v85 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D18);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v78 - v12;
  *&v92 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v92);
  v91 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D20);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v99 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v78 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D28);
  MEMORY[0x28223BE20](v93);
  v19 = &v78 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v95);
  v21 = &v78 - v20;
  v98 = sub_26C5743FC();
  v109[0] = a1;
  v109[1] = v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v23 = v115[0];
  v22 = v115[1];
  v24 = v116;
  swift_getKeyPath();
  v115[0] = v23;
  v115[1] = v22;
  *&v116 = v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v21, &qword_2804A1CE8);
  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v19, &qword_2804A1D28);
  v102 = v109[1];
  v103 = v109[0];
  v97 = v110;
  v96 = sub_26C5743DC();
  v25 = v90;
  v109[0] = v90;
  v109[1] = v101;
  sub_26C5744AC();
  v26 = v115[0];
  v27 = v115[1];
  v28 = v116;
  swift_getKeyPath();
  v115[0] = v26;
  v115[1] = v27;
  *&v116 = v28;
  sub_26C57451C();
  v29 = v92;

  v30 = v91;

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v21, &qword_2804A1CE8);
  swift_getKeyPath();
  sub_26C57451C();

  v31 = v19;
  v32 = v101;
  sub_26C4FC830(v31, &qword_2804A1D28);
  v94 = v109[1];
  v95 = v109[0];
  LODWORD(v93) = v110;
  v115[0] = v25;
  v115[1] = v32;
  v33 = sub_26C57449C();
  (*(*v109[0] + 120))(v33);

  LOBYTE(v5) = *(v30 + *(v29 + 40));
  sub_26C4FB3AC(v30);
  if (sub_26C4FC9F8(v5, 1) && (v115[0] = v25, v115[1] = v32, v34 = sub_26C57449C(), (*(*v109[0] + 120))(v34), , v35 = *(v30 + *(v29 + 36)), sub_26C4FB3AC(v30), sub_26C4FC9F8(v35, 1)))
  {
    sub_26C57463C();

    v37 = v78;
    v36 = v79;
    sub_26C4FB34C(v78);
    v38 = sub_26C57462C();
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    v39[2] = v38;
    v39[3] = v40;
    v39[4] = v25;
    v39[5] = v32;
    v39[6] = v37;
    v39[7] = v36;

    sub_26C4FB34C(v37);
    v41 = sub_26C57462C();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = v40;
    v42[4] = v25;
    v42[5] = v32;
    v42[6] = v37;
    v42[7] = v36;
    sub_26C57404C();
    v43 = v80;
    sub_26C57453C();
    v44 = v85;
    sub_26C4F98BC(v43, v85);
    v45 = sub_26C57433C();
    v46 = v44 + *(v84 + 36);
    *v46 = v45;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 1;
    sub_26C4FC8E4(v44, v82, &qword_2804A1D10);
    swift_storeEnumTagMultiPayload();
    sub_26C4FC340();
    v47 = v83;
    sub_26C5742DC();
    sub_26C4FC8E4(v47, v88, &qword_2804A1D08);
    swift_storeEnumTagMultiPayload();
    sub_26C4FC2BC();
    v48 = v104;
    sub_26C5742DC();
    sub_26C4FC830(v47, &qword_2804A1D08);
    sub_26C4FC830(v44, &qword_2804A1D10);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D30);
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    sub_26C4FC830(v43, &qword_2804A1D18);
  }

  else
  {
    v115[0] = v25;
    v115[1] = v32;
    v50 = sub_26C57449C();
    (*(*v109[0] + 120))(v50);

    v51 = *(v30 + *(v29 + 36));
    sub_26C4FB3AC(v30);
    if (sub_26C4FC9F8(v51, 1))
    {
      v52 = v85;
      sub_26C4F9B34(v25, v32, &unk_26C5808F0, MEMORY[0x277CDDFB8], v85);
      v53 = sub_26C57433C();
      v54 = v52 + *(v84 + 36);
      *v54 = v53;
      *(v54 + 8) = 0u;
      *(v54 + 24) = 0u;
      *(v54 + 40) = 1;
      sub_26C4FC8E4(v52, v82, &qword_2804A1D10);
      swift_storeEnumTagMultiPayload();
      sub_26C4FC340();
      v55 = v83;
      sub_26C5742DC();
      sub_26C4FC8E4(v55, v88, &qword_2804A1D08);
      swift_storeEnumTagMultiPayload();
      sub_26C4FC2BC();
      v48 = v104;
      sub_26C5742DC();
      sub_26C4FC830(v55, &qword_2804A1D08);
      v56 = v52;
    }

    else
    {
      v115[0] = v25;
      v115[1] = v32;
      v57 = sub_26C57449C();
      (*(*v109[0] + 120))(v57);

      v58 = *(v30 + *(v29 + 40));
      sub_26C4FB3AC(v30);
      v59 = sub_26C4FC9F8(v58, 1);
      v48 = v104;
      if (!v59)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D30);
        (*(*(v64 - 8) + 56))(v48, 1, 1, v64);
        goto LABEL_10;
      }

      v60 = v85;
      sub_26C4F9B34(v25, v32, &unk_26C580930, MEMORY[0x277CDDFC0], v85);
      v61 = sub_26C57433C();
      v62 = v60 + *(v84 + 36);
      *v62 = v61;
      *(v62 + 8) = 0u;
      *(v62 + 24) = 0u;
      *(v62 + 40) = 1;
      sub_26C4FC8E4(v60, v88, &qword_2804A1D10);
      swift_storeEnumTagMultiPayload();
      sub_26C4FC2BC();
      sub_26C4FC340();
      sub_26C5742DC();
      v56 = v60;
    }

    sub_26C4FC830(v56, &qword_2804A1D10);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D30);
    (*(*(v63 - 8) + 56))(v48, 0, 1, v63);
  }

LABEL_10:
  v65 = v48;
  v66 = v99;
  sub_26C4FC8E4(v65, v99, &qword_2804A1D20);
  strcpy(v105, "Override Time");
  HIWORD(v105[0]) = -4864;
  v101 = xmmword_26C57F990;
  v105[1] = xmmword_26C57F990;
  v67 = v98;
  *&v106[0] = v98;
  *(&v106[0] + 1) = v103;
  *&v106[1] = v102;
  v68 = v97;
  BYTE8(v106[1]) = v97;
  v69 = v100;
  *v100 = v105[0];
  v69[1] = xmmword_26C57F990;
  v69[2] = v106[0];
  *(v69 + 41) = *(v106 + 9);
  strcpy(v107, "Override Date");
  HIWORD(v107[0]) = -4864;
  v92 = xmmword_26C57F9A0;
  v107[1] = xmmword_26C57F9A0;
  v70 = v95;
  v71 = v96;
  *&v108[0] = v96;
  *(&v108[0] + 1) = v95;
  v72 = v94;
  *&v108[1] = v94;
  v73 = v93;
  BYTE8(v108[1]) = v93;
  v74 = v107[0];
  v75 = v108[0];
  *(v69 + 105) = *(v108 + 9);
  v69[5] = xmmword_26C57F9A0;
  v69[6] = v75;
  v69[4] = v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D38);
  sub_26C4FC8E4(v66, v69 + *(v76 + 64), &qword_2804A1D20);
  sub_26C4FB23C(v105, v115);
  sub_26C4FB23C(v107, v115);
  sub_26C4FC830(v104, &qword_2804A1D20);
  sub_26C4FC830(v66, &qword_2804A1D20);
  strcpy(v109, "Override Date");
  HIWORD(v109[1]) = -4864;
  v110 = v92;
  v111 = v71;
  v112 = v70;
  v113 = v72;
  v114 = v73;
  sub_26C4FB274(v109);
  strcpy(v115, "Override Time");
  HIWORD(v115[1]) = -4864;
  v116 = v101;
  v117 = v67;
  v118 = v103;
  v119 = v102;
  v120 = v68;
  return sub_26C4FB274(v115);
}

uint64_t sub_26C4F955C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C57404C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v30 = a1;
  v31 = a2;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  v15 = sub_26C57449C();
  (*(*v29 + 120))(v15);

  v23[0] = v12;
  v17 = *(v12 + 36);
  v16 = (v12 + 36);
  v18 = &v14[v17 + *(v5 + 20)];
  v24 = *(v9 + 16);
  v24(v11, v18, v8);
  sub_26C4FB3AC(v14);
  sub_26C4FCD1C(v7);
  v27 = v5;
  v19 = *(v5 + 20);
  sub_26C4FBCCC(&qword_2804A1D90, MEMORY[0x277CC9578]);
  LOBYTE(a2) = sub_26C5745DC();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v20(&v7[v19], v8);
  v30 = v25;
  v31 = v26;
  v21 = sub_26C57449C();
  (*(*v29 + 120))(v21);

  if (a2)
  {
    v16 = (v23[0] + 40);
  }

  v24(v28, &v14[*v16 + *(v27 + 20)], v8);
  return sub_26C4FB3AC(v14);
}

uint64_t sub_26C4F98BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[4] = a2;
  v3 = sub_26C57430C();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_26C57427C();
  v12[2] = v8;
  v12[3] = v7;
  v12[1] = v9;
  sub_26C4FC8E4(a1, v6, &qword_2804A1D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C57F9B0;
  sub_26C5742FC();
  sub_26C5742EC();
  v12[5] = v10;
  sub_26C4FBCCC(&qword_2804A1D78, MEMORY[0x277CDDFC8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D80);
  sub_26C4FC7E8(&qword_2804A1D88, &qword_2804A1D80);
  sub_26C57468C();
  return sub_26C57413C();
}

uint64_t sub_26C4F9B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v32 = a4;
  v25[2] = a3;
  v35 = a5;
  v34 = sub_26C57430C();
  v30 = *(v34 - 8);
  v31 = v30;
  MEMORY[0x28223BE20](v34);
  v33 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D18);
  MEMORY[0x28223BE20](v8 - 8);
  v25[1] = v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D28);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v16 = sub_26C57427C();
  v28 = v17;
  v29 = v16;
  v26 = v18;
  v27 = v19;
  v39 = a1;
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v20 = v36;
  v21 = v37;
  v22 = v38;
  swift_getKeyPath();
  v36 = v20;
  v37 = v21;
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v15, &qword_2804A1CE8);
  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v12, &qword_2804A1D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D70);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26C57F9C0;
  v32();
  v39 = v23;
  sub_26C4FBCCC(&qword_2804A1D78, MEMORY[0x277CDDFC8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1D80);
  sub_26C4FC7E8(&qword_2804A1D88, &qword_2804A1D80);
  sub_26C57468C();
  return sub_26C57413C();
}

double sub_26C4F9F4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  swift_getKeyPath();
  v26 = v9;
  v27 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v8, &qword_2804A1CE8);
  v12 = v20;
  v13 = v21;
  v14 = v22;
  result = v23;
  v16 = v24;
  v17 = v25;
  *a3 = v19;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = result;
  *(a3 + 40) = v16;
  *(a3 + 41) = v17;
  *(a3 + 42) = 1;
  return result;
}

double sub_26C4FA0F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v19;
  v10 = v20;
  swift_getKeyPath();
  v17 = v9;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v8, &qword_2804A1CE8);
  *(v21 + 10) = *&v16[10];
  v11 = v15;
  v21[0] = *v16;
  *a3 = v14;
  a3[1] = v11;
  a3[2] = v21[0];
  result = *(v21 + 10);
  *(a3 + 42) = *(v21 + 10);
  return result;
}

uint64_t sub_26C4FA294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v17;
  v10 = v18;
  v11 = v19;
  swift_getKeyPath();
  v21 = v9;
  v22 = v10;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  result = sub_26C4FC830(v8, &qword_2804A1CE8);
  v13 = v18;
  v14 = v19;
  v15 = v20;
  *a3 = v17;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_26C4FA418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v22 = a1;
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v17;
  v10 = v18;
  v11 = v19;
  swift_getKeyPath();
  v22 = v9;
  v23 = v10;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  result = sub_26C4FC830(v8, &qword_2804A1CE8);
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  *a3 = v17;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  return result;
}

uint64_t sub_26C4FA59C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *&v63 = a2;
  *&v64 = a1;
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CE8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v59 = sub_26C57440C();
  v103 = a1;
  v104 = a2;
  *&v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C5744AC();
  v9 = v110[0];
  v8 = v110[1];
  v10 = v111;
  swift_getKeyPath();
  v110[0] = v9;
  v110[1] = v8;
  *&v111 = v10;
  *&v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1CF0);
  sub_26C57451C();

  swift_getKeyPath();
  *&v44 = v5;
  sub_26C57451C();

  sub_26C4FC830(v7, &qword_2804A1CE8);
  v61 = v104;
  v62 = v103;
  v60 = v105;
  v56 = sub_26C57445C();
  v11 = v64;
  v103 = v64;
  v104 = v63;
  sub_26C5744AC();
  v12 = v110[0];
  v13 = v110[1];
  v14 = v111;
  swift_getKeyPath();
  v110[0] = v12;
  v110[1] = v13;
  *&v111 = v14;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v7, &qword_2804A1CE8);
  v55 = v103;
  v58 = v104;
  v57 = v105;
  v52 = sub_26C57442C();
  v15 = v63;
  v103 = v11;
  v104 = v63;
  sub_26C5744AC();
  v16 = v110[0];
  v17 = v110[1];
  v18 = v111;
  swift_getKeyPath();
  v110[0] = v16;
  v110[1] = v17;
  *&v111 = v18;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v7, &qword_2804A1CE8);
  v51 = v103;
  v54 = v104;
  v53 = v105;
  v49 = sub_26C5743EC();
  v103 = v64;
  v104 = v15;
  sub_26C5744AC();
  v19 = v110[0];
  v20 = v110[1];
  v21 = v111;
  swift_getKeyPath();
  v110[0] = v19;
  v110[1] = v20;
  *&v111 = v21;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v7, &qword_2804A1CE8);
  v47 = v104;
  v48 = v103;
  v50 = v105;
  v41 = sub_26C57443C();
  v22 = v64;
  v23 = v63;
  v103 = v64;
  v104 = v63;
  sub_26C5744AC();
  v24 = v110[0];
  v25 = v110[1];
  v26 = v111;
  swift_getKeyPath();
  v110[0] = v24;
  v110[1] = v25;
  *&v111 = v26;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v7, &qword_2804A1CE8);
  v38 = v103;
  v46 = v104;
  v45 = v105;
  v40 = 0x800000026C5850A0;
  v39 = sub_26C57446C();
  v103 = v22;
  v104 = v23;
  sub_26C5744AC();
  v27 = v110[0];
  v28 = v110[1];
  v29 = v111;
  swift_getKeyPath();
  v110[0] = v27;
  v110[1] = v28;
  *&v111 = v29;
  sub_26C57451C();

  swift_getKeyPath();
  sub_26C57451C();

  sub_26C4FC830(v7, &qword_2804A1CE8);
  v31 = v103;
  v30 = v104;
  LOBYTE(v28) = v105;
  strcpy(v67, "Rotation Lock");
  HIWORD(v67[0]) = -4864;
  v65 = xmmword_26C57F9D0;
  v67[1] = xmmword_26C57F9D0;
  *&v68[0] = v59;
  *(&v68[0] + 1) = v62;
  *&v68[1] = v61;
  BYTE8(v68[1]) = v60;
  *&v69[0] = 0x6D72616C41;
  *(&v69[0] + 1) = 0xE500000000000000;
  v64 = xmmword_26C57F9E0;
  v69[1] = xmmword_26C57F9E0;
  *&v70[0] = v56;
  *(&v70[0] + 1) = v55;
  *&v70[1] = v58;
  BYTE8(v70[1]) = v57;
  v63 = xmmword_26C57F9F0;
  v44 = xmmword_26C57FA00;
  *&v71[0] = 0x746E6564757453;
  *(&v71[0] + 1) = 0xE700000000000000;
  v71[1] = xmmword_26C57F9F0;
  *&v72[0] = v52;
  *(&v72[0] + 1) = v51;
  *&v72[1] = v54;
  BYTE8(v72[1]) = v53;
  *(&v73[0] + 1) = 0xE700000000000000;
  v73[1] = xmmword_26C57FA00;
  *&v74[0] = v49;
  *(&v74[0] + 1) = v48;
  *&v74[1] = v47;
  BYTE8(v74[1]) = v50;
  v43 = xmmword_26C57FA10;
  *(&v75[0] + 1) = 0xE700000000000000;
  v75[1] = xmmword_26C57FA10;
  v32 = v40;
  v33 = v41;
  *&v76[0] = v41;
  v35 = v38;
  v34 = v39;
  *(&v76[0] + 1) = v38;
  *&v76[1] = v46;
  BYTE8(v76[1]) = v45;
  *(&v66[18] + 9) = *(v76 + 9);
  v37 = xmmword_26C57FA20;
  *(&v77[0] + 1) = v40;
  v77[1] = xmmword_26C57FA20;
  *&v78[0] = v39;
  *(&v78[0] + 1) = v103;
  *&v78[1] = v104;
  BYTE8(v78[1]) = v105;
  *&v73[0] = 0x79616C50726941;
  *&v75[0] = 0x79616C50726143;
  *(&v66[10] + 9) = *(v72 + 9);
  *(&v66[14] + 9) = *(v74 + 9);
  *(&v66[22] + 9) = *(v78 + 9);
  *&v77[0] = 0xD000000000000010;
  v66[0] = v67[0];
  v66[1] = xmmword_26C57F9D0;
  v66[2] = v68[0];
  *(&v66[2] + 9) = *(v68 + 9);
  *(&v66[6] + 9) = *(v70 + 9);
  v66[5] = xmmword_26C57F9E0;
  v66[6] = v70[0];
  v66[4] = v69[0];
  v66[8] = v71[0];
  v66[9] = xmmword_26C57F9F0;
  v66[13] = xmmword_26C57FA00;
  v66[14] = v74[0];
  v66[10] = v72[0];
  v66[12] = v73[0];
  v66[16] = v75[0];
  v66[17] = xmmword_26C57FA10;
  v66[21] = xmmword_26C57FA20;
  v66[22] = v78[0];
  v66[18] = v76[0];
  v66[20] = v77[0];
  memcpy(v42, v66, 0x179uLL);
  v79[0] = 0xD000000000000010;
  v79[1] = v32;
  v80 = v37;
  v81 = v34;
  v82 = v31;
  v83 = v30;
  v84 = v28;
  sub_26C4FB23C(v67, v110);
  sub_26C4FB23C(v69, v110);
  sub_26C4FB23C(v71, v110);
  sub_26C4FB23C(v73, v110);
  sub_26C4FB23C(v75, v110);
  sub_26C4FB23C(v77, v110);
  sub_26C4FB274(v79);
  v85[0] = 0x79616C50726143;
  v85[1] = 0xE700000000000000;
  v86 = v43;
  v87 = v33;
  v88 = v35;
  v89 = v46;
  v90 = v45;
  sub_26C4FB274(v85);
  v91[0] = 0x79616C50726941;
  v91[1] = 0xE700000000000000;
  v92 = v44;
  v93 = v49;
  v94 = v48;
  v95 = v47;
  v96 = v50;
  sub_26C4FB274(v91);
  v97[0] = 0x746E6564757453;
  v97[1] = 0xE700000000000000;
  v98 = v63;
  v99 = v52;
  v100 = v51;
  v101 = v54;
  v102 = v53;
  sub_26C4FB274(v97);
  v103 = 0x6D72616C41;
  v104 = 0xE500000000000000;
  v105 = v64;
  v106 = v56;
  v107 = v55;
  v108 = v58;
  v109 = v57;
  sub_26C4FB274(&v103);
  strcpy(v110, "Rotation Lock");
  HIWORD(v110[1]) = -4864;
  v111 = v65;
  v112 = v59;
  v113 = v62;
  v114 = v61;
  v115 = v60;
  return sub_26C4FB274(v110);
}

uint64_t sub_26C4FAF44()
{
  type metadata accessor for StatusBarOverrideData(0);
  sub_26C57448C();
  return v1;
}

uint64_t sub_26C4FAFA4@<X0>(void *a1@<X8>)
{
  type metadata accessor for StatusBarOverrideData(0);
  sub_26C4FFD60();
  result = sub_26C57448C();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t sub_26C4FB000(uint64_t a1)
{
  v2 = sub_26C4FBE7C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_26C4FB04C(uint64_t a1)
{
  v2 = sub_26C4FBE7C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_26C4FB098()
{
  v1 = *v0;
  sub_26C5746BC();
  MEMORY[0x26D6A3480](v1);
  return sub_26C5746DC();
}

uint64_t sub_26C4FB0E0()
{
  v1 = *v0;
  sub_26C5746BC();
  MEMORY[0x26D6A3480](v1);
  return sub_26C5746DC();
}

uint64_t sub_26C4FB128@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D6A2FA0]();
  *a1 = result;
  return result;
}

uint64_t sub_26C4FB180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C57420C();
  *a1 = result;
  return result;
}

uint64_t sub_26C4FB1D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26C4FB2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1AE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C4FB34C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C4FB35C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C4FB378(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (v3)
  {
    return v3(a2);
  }

  return result;
}

uint64_t sub_26C4FB3AC(uint64_t a1)
{
  v2 = type metadata accessor for StatusBarOverrides(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C4FB508()
{
  result = qword_2804A1B38;
  if (!qword_2804A1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1B38);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26C4FB594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FB5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26C4FB658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FB6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26C4FB718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FB760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C4FB7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FB83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26C4FB8B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FB900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C4FB960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FB9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C4FBA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FBA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14SystemStatusUI0B12BarOverridesVIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C4FBAC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C4FBB0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26C4FBB6C()
{
  result = qword_2804A1BC0;
  if (!qword_2804A1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1BC0);
  }

  return result;
}

void sub_26C4FBC38(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26C4FBCCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26C4FBE7C()
{
  result = qword_2804A1C28;
  if (!qword_2804A1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1C28);
  }

  return result;
}

unint64_t sub_26C4FBEF4()
{
  result = qword_2804A1C80;
  if (!qword_2804A1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1C80);
  }

  return result;
}

unint64_t sub_26C4FBFA4()
{
  result = qword_2804A1CA8;
  if (!qword_2804A1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1CA8);
  }

  return result;
}

unint64_t sub_26C4FC000()
{
  result = qword_2804A1CB0;
  if (!qword_2804A1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1CB0);
  }

  return result;
}

unint64_t sub_26C4FC05C()
{
  result = qword_2804A1CB8;
  if (!qword_2804A1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1CB8);
  }

  return result;
}

unint64_t sub_26C4FC0D4()
{
  result = qword_2804A1CC0;
  if (!qword_2804A1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1CC0);
  }

  return result;
}

unint64_t sub_26C4FC130()
{
  result = qword_2804A1CC8;
  if (!qword_2804A1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1CC8);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C4FC1DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  v0 = sub_26C57449C();
  (*(*v2 + 152))(v0);
}

uint64_t sub_26C4FC258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBarOverrides(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26C4FC2BC()
{
  result = qword_2804A1D40;
  if (!qword_2804A1D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A1D08);
    sub_26C4FC340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1D40);
  }

  return result;
}

unint64_t sub_26C4FC340()
{
  result = qword_2804A1D48;
  if (!qword_2804A1D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A1D10);
    sub_26C4FC3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1D48);
  }

  return result;
}

unint64_t sub_26C4FC3CC()
{
  result = qword_2804A1D50;
  if (!qword_2804A1D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A1D58);
    sub_26C4FC7E8(&qword_2804A1D60, &qword_2804A1D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1D50);
  }

  return result;
}

uint64_t objectdestroy_111Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C4FC4DC(uint64_t a1)
{
  v2 = *(v1 + 40);
  v18 = *(v1 + 32);
  v17 = v18;
  v16 = v2;
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1B08);
  sub_26C57449C();
  v3 = (*(*v20 + 136))(&v18);
  v5 = v4;
  v6 = type metadata accessor for StatusBarOverrides(0);
  v7 = *(v6 + 36);
  v8 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
  v9 = v7 + *(v8 + 20);
  v10 = sub_26C57404C();
  v11 = *(*(v10 - 8) + 24);
  v11(v5 + v9, a1, v10);
  v3(&v18, 0);

  v18 = v17;
  v19 = v16;
  sub_26C57449C();
  v12 = (*(*v20 + 136))(&v18);
  v11(v13 + *(v6 + 40) + *(v8 + 20), a1, v10);
  v12(&v18, 0);
}

unint64_t sub_26C4FC6CC()
{
  result = qword_2804A1E30;
  if (!qword_2804A1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1E30);
  }

  return result;
}

unint64_t sub_26C4FC720()
{
  result = qword_2804A1EB8;
  if (!qword_2804A1EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A1EB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1EB8);
  }

  return result;
}

uint64_t sub_26C4FC7E8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C4FC830(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26C4FC890()
{
  result = qword_2804A1F78;
  if (!qword_2804A1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A1F78);
  }

  return result;
}

uint64_t sub_26C4FC8E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C4FC94C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26C4FC95C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C4FCA1C()
{
  v1 = *v0;
  sub_26C5746BC();
  MEMORY[0x26D6A3480](v1);
  return sub_26C5746DC();
}

uint64_t sub_26C4FCA90()
{
  v1 = *v0;
  sub_26C5746BC();
  MEMORY[0x26D6A3480](v1);
  return sub_26C5746DC();
}

uint64_t sub_26C4FCAD4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26C57460C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C4FCB1C(void *a1, id a2)
{
  a1[1] = [a2 status];
  a1[2] = [a2 displayValue];
  a1[3] = [a2 type];
  v4 = [a2 string];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26C5745FC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  a1[4] = v6;
  a1[5] = v8;
  v9 = [a2 badgeString];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26C5745FC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  a1[6] = v11;
  a1[7] = v13;
  return result;
}

double sub_26C4FCC4C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_26C580E10;
  *&result = 10;
  *(a1 + 24) = xmmword_26C580E20;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_26C4FCC7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_26C4FFDB4(v7, v8) & 1;
}

double sub_26C4FCCC8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *&result = 5;
  *(a1 + 8) = xmmword_26C580E30;
  *(a1 + 24) = 0;
  return result;
}

BOOL sub_26C4FCCE0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3];
}

uint64_t sub_26C4FCD1C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_26C57408C();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C5740BC();
  v34 = *(v5 - 8);
  v6 = v34;
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v34 - v10;
  v11 = sub_26C57404C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1FC8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1FD0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - v18;
  v37 = sub_26C573FFC();
  v20 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  *a1 = 0;
  v23 = *(v6 + 56);
  v24 = v35;
  v23(v19, 1, 1, v35);
  v25 = sub_26C5740CC();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = v11;
  v27 = v36;
  sub_26C573FEC();
  sub_26C573FCC();
  sub_26C573F9C();
  sub_26C573FBC();
  sub_26C573FAC();
  sub_26C573FDC();
  v29 = v39;
  v28 = v40;
  (*(v39 + 104))(v4, *MEMORY[0x277CC9830], v40);
  sub_26C57409C();
  (*(v29 + 8))(v4, v28);
  sub_26C5740AC();
  (*(v34 + 8))(v8, v24);
  v30 = *(v12 + 48);
  if (v30(v27, 1, v26) == 1)
  {
    v31 = v38;
    sub_26C57403C();
    (*(v20 + 8))(v22, v37);
    if (v30(v27, 1, v26) != 1)
    {
      sub_26C4FFEB4(v27);
    }
  }

  else
  {
    (*(v20 + 8))(v22, v37);
    v31 = v38;
    (*(v12 + 32))(v38, v27, v26);
  }

  v32 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
  return (*(v12 + 32))(&v41[*(v32 + 20)], v31, v26);
}

id sub_26C4FD2D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_2804A47E0 = v0;
  return result;
}

id sub_26C4FD334()
{
  result = sub_26C4FD354();
  qword_2804A47E8 = result;
  return result;
}

id sub_26C4FD354()
{
  v0 = sub_26C573F8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C57407C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = objc_opt_self();
  v9 = sub_26C5745EC();
  v10 = [objc_opt_self() currentLocale];
  sub_26C57406C();

  v11 = sub_26C57405C();
  (*(v5 + 8))(v7, v4);
  v12 = [v8 dateFormatFromTemplate:v9 options:0 locale:v11];

  if (v12)
  {
    sub_26C5745FC();
  }

  v13 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v14 = sub_26C5745EC();

  v15 = [v13 initWithString_];

  v16 = v15;
  sub_26C573F7C();
  v17 = sub_26C573F6C();
  v18 = *(v1 + 8);
  v18(v3, v0);
  v19 = [v16 rangeOfCharacterFromSet_];
  v21 = v20;

  while (v19 != sub_26C573F5C())
  {
    v27 = sub_26C5745EC();
    v28 = [v16 stringByReplacingCharactersInRange:v19 withString:{v21, v27}];

    if (!v28)
    {
      sub_26C5745FC();
      v28 = sub_26C5745EC();
    }

    v24 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

    v16 = v24;
    sub_26C573F7C();
    v25 = sub_26C573F6C();
    v18(v3, v0);
    v19 = [v16 rangeOfCharacterFromSet_];
    v21 = v26;
  }

  v22 = v30;
  [v30 setDateFormat_];

  return v22;
}

id sub_26C4FD730(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v3;
  sub_26C5005E4(v3, v6, type metadata accessor for StatusBarOverrides.TimeAndDate);
  if (v7 == 2)
  {
    sub_26C50064C(v6, type metadata accessor for StatusBarOverrides.TimeAndDate);
    sub_26C500118(0, &qword_2804A1FD8);
    return [swift_getObjCClassFromMetadata() disabledEntry];
  }

  else if (v7)
  {
    v9 = sub_26C57400C();
    v10 = [objc_opt_self() *a1];

    sub_26C50064C(v6, type metadata accessor for StatusBarOverrides.TimeAndDate);
    return v10;
  }

  else
  {
    sub_26C50064C(v6, type metadata accessor for StatusBarOverrides.TimeAndDate);
    return 0;
  }
}

uint64_t sub_26C4FD8B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_26C57401C();
  }

  else
  {
    return 0;
  }
}

void sub_26C4FD8DC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
}

uint64_t sub_26C4FD8F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  if ((a2[24] ^ a1[24]))
  {
    return 0;
  }

  return a1[25] ^ a2[25] ^ 1u;
}

id sub_26C4FD94C()
{
  result = *v0;
  if (result == 2)
  {
    sub_26C500118(0, &qword_2804A1FF0);
    return [swift_getObjCClassFromMetadata() disabledEntry];
  }

  if (!*v0)
  {
    return result;
  }

  if (v0[16] == 2)
  {
    sub_26C500118(0, &qword_2804A1FE8);
    v3 = [swift_getObjCClassFromMetadata() disabledEntry];
LABEL_9:
    v2 = v3;
    goto LABEL_10;
  }

  if (v0[16])
  {
    sub_26C4FFF3C(*(v0 + 3), v0[40] & 1, v0[41] & 1, *(v0 + 4));
    goto LABEL_9;
  }

  v2 = 0;
LABEL_10:
  v4 = [objc_opt_self() entryWithState:*(v0 + 1) batteryEntry:v2];

  return v4;
}

void sub_26C4FDA50(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
}

BOOL sub_26C4FDA70(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return sub_26C500098(&v5, &v7);
}

void sub_26C4FDAF4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
}

uint64_t sub_26C4FDB04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_26C5746AC();
  }
}

id sub_26C4FDB4C()
{
  v1 = v0;
  v2 = &selRef_appendString_withName_;
  v3 = [objc_allocWithZone(MEMORY[0x277D6BA20]) init];
  if (*v0 == 2)
  {
    sub_26C500118(0, &qword_2804A1FB0);
    v4 = [swift_getObjCClassFromMetadata() disabledEntry];
  }

  else if (*v0)
  {
    v5 = *(v0 + 16);
    v62 = *(v0 + 8);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 24);

    sub_26C4FCAD4(v7, v6);
    v10 = v9;
    v11 = sub_26C5745EC();
    if (v10)
    {
      v12 = sub_26C5745EC();
    }

    else
    {
      v12 = 0;
    }

    LOBYTE(v61) = 0;
    LOBYTE(v60) = 0;
    BYTE2(v59) = 0;
    LOWORD(v59) = 0;
    v4 = [objc_opt_self() entryWithType:v8 stringValue:v11 crossfadeStringValue:0 badgeStringValue:v12 wifiCalling:0 callForwarding:0 showsSOSWhenDisabled:v59 sosAvailable:v62 isBootstrapCellular:v60 status:0 lowDataMode:v5 rawValue:v61 displayValue:? displayRawValue:?];

    v2 = &selRef_appendString_withName_;
  }

  else
  {
    v4 = 0;
  }

  [v3 setCellularEntry_];

  if (*(v0 + 64))
  {
    if (*(v0 + 64) == 2)
    {
      sub_26C500118(0, &qword_2804A1FB0);
      v13 = [swift_getObjCClassFromMetadata() disabledEntry];
    }

    else
    {
      v14 = *(v0 + 80);
      v63 = *(v0 + 72);
      v16 = *(v0 + 112);
      v15 = *(v0 + 120);
      v17 = *(v0 + 88);

      sub_26C4FCAD4(v16, v15);
      v19 = v18;
      v20 = sub_26C5745EC();
      if (v19)
      {
        v21 = sub_26C5745EC();
      }

      else
      {
        v21 = 0;
      }

      LOBYTE(v61) = 0;
      LOBYTE(v60) = 0;
      BYTE2(v59) = 0;
      LOWORD(v59) = 0;
      v13 = [objc_opt_self() entryWithType:v17 stringValue:v20 crossfadeStringValue:0 badgeStringValue:v21 wifiCalling:0 callForwarding:0 showsSOSWhenDisabled:v59 sosAvailable:v63 isBootstrapCellular:v60 status:0 lowDataMode:v14 rawValue:v61 displayValue:? displayRawValue:?];

      v2 = &selRef_appendString_withName_;
    }
  }

  else
  {
    v13 = 0;
  }

  [v3 setSecondaryCellularEntry_];

  if (*(v0 + 128))
  {
    if (*(v0 + 128) == 2)
    {
      v22 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v22 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  [v3 setAirplaneModeEntry_];

  if (*(v1 + 129))
  {
    if (*(v1 + 129) == 2)
    {
      v24 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  [v3 setVpnEntry_];

  if (*(v1 + 136))
  {
    if (*(v1 + 136) == 2)
    {
      sub_26C500118(0, &qword_2804A1FB8);
      v26 = [swift_getObjCClassFromMetadata() disabledEntry];
    }

    else
    {
      v26 = [objc_opt_self() entryWithType:*(v1 + 160) status:*(v1 + 144) lowDataMode:0 rawValue:0 displayValue:*(v1 + 152) displayRawValue:0];
    }

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  [v3 setWifiEntry_];

  v28 = type metadata accessor for StatusBarOverrides(0);
  v29 = sub_26C4FD730(&selRef_entryForTimeWithDateValue_);
  [v3 setTimeEntry_];

  v30 = sub_26C4FD730(&selRef_entryForShortTimeWithDateValue_);
  [v3 setShortTimeEntry_];

  v31 = sub_26C4FD730(&selRef_entryForDateWithDateValue_);
  [v3 setDateEntry_];

  v32 = v1 + v28[11];
  if (*v32)
  {
    if (*v32 == 2)
    {
      sub_26C500118(0, &qword_2804A1FE0);
      v33 = [swift_getObjCClassFromMetadata() disabledEntry];
    }

    else
    {
      v33 = [objc_opt_self() entryWithType_];
    }

    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  [v3 setLocationEntry_];

  v35 = v1 + v28[12];
  if (*v35)
  {
    if (*v35 == 2)
    {
      sub_26C500118(0, &qword_2804A1FE8);
      v36 = [swift_getObjCClassFromMetadata() disabledEntry];
    }

    else
    {
      sub_26C4FFF3C(*(v35 + 8), *(v35 + 24), *(v35 + 25), *(v35 + 16));
    }

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  [v3 setMainBatteryEntry_];

  v38 = sub_26C4FD94C();
  [v3 setBluetoothEntry_];

  v39 = v1 + v28[14];
  if (*v39)
  {
    if (*v39 == 2)
    {
      sub_26C500118(0, &qword_2804A1FF8);
      v40 = [swift_getObjCClassFromMetadata() disabledEntry];
    }

    else
    {
      v40 = [objc_opt_self() entryWithType_];
    }

    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  [v3 setVoiceControlEntry_];

  v42 = (v1 + v28[15]);
  if (*v42)
  {
    if (*v42 == 2)
    {
      sub_26C500118(0, &qword_2804A2000);
      v43 = [swift_getObjCClassFromMetadata() disabledEntry];
    }

    else
    {

      v44 = sub_26C5745EC();
      v43 = [objc_opt_self() entryWithStringValue_];
    }
  }

  else
  {
    v43 = 0;
  }

  [v3 setPersonNameEntry_];

  if (*(v1 + v28[16]) == 2)
  {
    v46 = [objc_opt_self() disabledEntry];
  }

  else
  {
    if (!*(v1 + v28[16]))
    {
      v45 = 0;
      goto LABEL_64;
    }

    v46 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
  }

  v45 = v46;
LABEL_64:
  [v3 setRotationLockEntry_];

  if (*(v1 + v28[17]))
  {
    if (*(v1 + v28[17]) == 2)
    {
      v47 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v47 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  [v3 setAlarmEntry_];

  if (*(v1 + v28[18]))
  {
    if (*(v1 + v28[18]) == 2)
    {
      v49 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v49 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  [v3 setStudentEntry_];

  if (*(v1 + v28[19]))
  {
    if (*(v1 + v28[19]) == 2)
    {
      v51 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v51 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  [v3 setAirPlayEntry_];

  if (*(v1 + v28[20]))
  {
    if (*(v1 + v28[20]) == 2)
    {
      v53 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v53 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  [v3 setCarPlayEntry_];

  if (*(v1 + v28[21]))
  {
    if (*(v1 + v28[21]) == 2)
    {
      v55 = [objc_opt_self() disabledEntry];
    }

    else
    {
      v55 = [objc_allocWithZone(MEMORY[0x277D6BAA0]) v2[476]];
    }

    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  [v3 setLiquidDetectionEntry_];

  v57 = [v3 immutableCopy];
  return v57;
}

void sub_26C4FE5B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C57404C();
  v169 = *(v4 - 8);
  v170 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v163 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v164 = &v160 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v161 = &v160 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v162 = &v160 - v12;
  MEMORY[0x28223BE20](v11);
  v165 = &v160 - v13;
  v168 = type metadata accessor for StatusBarOverrides.TimeAndDate(0);
  v14 = MEMORY[0x28223BE20](v168);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v167 = &v160 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v160 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v160 - v22;
  sub_26C4FF434(a2);
  v24 = [a1 cellularEntry];
  v171 = xmmword_26C580E10;
  *&v176[8] = xmmword_26C580E10;
  v166 = xmmword_26C580E20;
  *&v176[24] = xmmword_26C580E20;
  *&v176[40] = 0xE700000000000000;
  *&v177 = 0;
  *(&v177 + 1) = 0xE000000000000000;
  if (v24)
  {
    v25 = v24;
    if ([v24 isEnabled])
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    v176[0] = v26;
    v27 = v25;
    sub_26C4FCB1C(v176, v27);
  }

  else
  {
    v176[0] = 0;
  }

  v28 = *(a2 + 16);
  v175[0] = *a2;
  v175[1] = v28;
  v29 = *(a2 + 48);
  v175[2] = *(a2 + 32);
  v175[3] = v29;
  sub_26C4FB1E8(v175);
  v30 = *&v176[16];
  *a2 = *v176;
  *(a2 + 16) = v30;
  v31 = v177;
  *(a2 + 32) = *&v176[32];
  *(a2 + 48) = v31;
  v32 = [a1 secondaryCellularEntry];
  *(v173 + 8) = v171;
  *(&v173[1] + 8) = v166;
  *(&v173[2] + 1) = 0xE700000000000000;
  *&v174 = 0;
  *(&v174 + 1) = 0xE000000000000000;
  if (v32)
  {
    v33 = v32;
    if ([v32 isEnabled])
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    LOBYTE(v173[0]) = v34;
    v35 = v33;
    sub_26C4FCB1C(v173, v35);
  }

  else
  {
    LOBYTE(v173[0]) = 0;
  }

  v36 = *(a2 + 80);
  v172[0] = *(a2 + 64);
  v172[1] = v36;
  v37 = *(a2 + 112);
  v172[2] = *(a2 + 96);
  v172[3] = v37;
  sub_26C4FB1E8(v172);
  v38 = v173[1];
  *(a2 + 64) = v173[0];
  *(a2 + 80) = v38;
  v39 = v174;
  *(a2 + 96) = v173[2];
  *(a2 + 112) = v39;
  v40 = [a1 airplaneModeEntry];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 isEnabled];

    if (v42)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }
  }

  else
  {
    v43 = 0;
  }

  *(a2 + 128) = v43;
  v44 = [a1 vpnEntry];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 isEnabled];

    if (v46)
    {
      v47 = 1;
    }

    else
    {
      v47 = 2;
    }
  }

  else
  {
    v47 = 0;
  }

  *(a2 + 129) = v47;
  v48 = [a1 wifiEntry];
  *&v171 = a1;
  if (v48)
  {
    v49 = v48;
    if ([v48 isEnabled])
    {
      v50 = 1;
    }

    else
    {
      v50 = 2;
    }

    v51 = v49;
    v52 = [v51 status];
    v53 = [v51 displayValue];
    v54 = [v51 type];

    a1 = v171;
  }

  else
  {
    v54 = 0;
    v50 = 0;
    v52 = 5;
    v53 = 3;
  }

  *(a2 + 136) = v50;
  *(a2 + 144) = v52;
  *(a2 + 152) = v53;
  *(a2 + 160) = v54;
  v55 = [a1 timeEntry];
  sub_26C4FCD1C(v21);
  if (v55)
  {
    if ([v55 isEnabled])
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    *v21 = v56;
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (v57)
    {
      v58 = v57;
      v59 = v55;
      v60 = [v58 dateValue];
      v61 = v165;
      sub_26C57402C();

      (*(v169 + 40))(&v21[*(v168 + 20)], v61, v170);
    }

    else
    {
      v62 = qword_2804A39B0;
      v63 = v55;
      if (v62 != -1)
      {
        swift_once();
      }

      v64 = qword_2804A47E0;
      v65 = [v63 stringValue];
      if (!v65)
      {
        sub_26C5745FC();
        v65 = sub_26C5745EC();
      }

      v66 = [v64 dateFromString_];

      if (v66)
      {
        v67 = v161;
        sub_26C57402C();

        v68 = v63;
        v69 = v169;
        v70 = v162;
        v71 = v67;
        v72 = v170;
        (*(v169 + 32))(v162, v71, v170);
        (*(v69 + 40))(&v21[*(v168 + 20)], v70, v72);
      }

      else
      {
      }

      a1 = v171;
    }
  }

  else
  {
    *v21 = 0;
  }

  sub_26C50057C(v21, v23, type metadata accessor for StatusBarOverrides.TimeAndDate);

  v73 = type metadata accessor for StatusBarOverrides(0);
  sub_26C500714(v23, a2 + v73[9], type metadata accessor for StatusBarOverrides.TimeAndDate);
  v74 = [a1 dateEntry];
  sub_26C4FCD1C(v16);
  if (v74)
  {
    if ([v74 isEnabled])
    {
      v75 = 1;
    }

    else
    {
      v75 = 2;
    }

    *v16 = v75;
    objc_opt_self();
    v76 = swift_dynamicCastObjCClass();
    if (v76)
    {
      v77 = v76;
      v78 = v74;
      v79 = [v77 dateValue];
      v80 = v165;
      sub_26C57402C();

      (*(v169 + 40))(&v16[*(v168 + 20)], v80, v170);
    }

    else
    {
      v81 = qword_2804A39B8;
      v82 = v74;
      if (v81 != -1)
      {
        swift_once();
      }

      v83 = qword_2804A47E8;
      v84 = [v82 stringValue];
      if (!v84)
      {
        sub_26C5745FC();
        v84 = sub_26C5745EC();
      }

      v85 = [v83 dateFromString_];

      if (v85)
      {
        v86 = v163;
        sub_26C57402C();

        v87 = v169;
        v88 = v164;
        v89 = v86;
        v90 = v170;
        (*(v169 + 32))(v164, v89, v170);
        (*(v87 + 40))(&v16[*(v168 + 20)], v88, v90);
      }

      a1 = v171;
    }
  }

  else
  {
    *v16 = 0;
  }

  v91 = v167;
  sub_26C50057C(v16, v167, type metadata accessor for StatusBarOverrides.TimeAndDate);

  sub_26C500714(v91, a2 + v73[10], type metadata accessor for StatusBarOverrides.TimeAndDate);
  v92 = [a1 locationEntry];
  if (v92)
  {
    v93 = v92;
    if ([v92 isEnabled])
    {
      v94 = 1;
    }

    else
    {
      v94 = 2;
    }

    v95 = [v93 type];
  }

  else
  {
    v95 = 0;
    v94 = 0;
  }

  v96 = a2 + v73[11];
  *v96 = v94;
  *(v96 + 8) = v95;
  v97 = [a1 mainBatteryEntry];
  v98 = 1.0;
  if (v97)
  {
    v99 = v97;
    if ([v97 isEnabled])
    {
      v100 = 1;
    }

    else
    {
      v100 = 2;
    }

    v101 = v99;
    v102 = [v101 state];
    v103 = [v101 capacity] / 100.0;
    v104 = [v101 saverModeActive];
    v105 = [v101 prominentlyShowsDetailString];
  }

  else
  {
    v105 = 0;
    v104 = 0;
    v102 = 0;
    v100 = 0;
    v103 = 1.0;
  }

  v106 = a2 + v73[12];
  *v106 = v100;
  *(v106 + 8) = v102;
  *(v106 + 16) = v103;
  *(v106 + 24) = v104;
  *(v106 + 25) = v105;
  v107 = [v171 bluetoothEntry];
  v108 = 1;
  if (v107)
  {
    v109 = v107;
    if ([v107 isEnabled])
    {
      v110 = 1;
    }

    else
    {
      v110 = 2;
    }

    LODWORD(v170) = v110;
    v111 = v109;
    v108 = [v111 &selRef_setUseDebugDescription_];
    v112 = [v111 batteryEntry];
    if (v112)
    {
      v113 = v112;
      if ([v112 isEnabled])
      {
        v114 = 1;
      }

      else
      {
        v114 = 2;
      }

      v115 = v113;
      v116 = [v115 &selRef_setUseDebugDescription_];
      v98 = [v115 &selRef_entryWithKey_updatedKeys_enabledKeys_populatedEntry_] / 100.0;
      v117 = [v115 saverModeActive];
      v118 = [v115 prominentlyShowsDetailString];
    }

    else
    {
      v118 = 0;
      v117 = 0;
      v116 = 0;
      v114 = 0;
    }

    v119 = v170;
  }

  else
  {
    v118 = 0;
    v117 = 0;
    v116 = 0;
    v114 = 0;
    v119 = 0;
  }

  v120 = a2 + v73[13];
  *v120 = v119;
  *(v120 + 8) = v108;
  *(v120 + 16) = v114;
  *(v120 + 24) = v116;
  *(v120 + 32) = v98;
  *(v120 + 40) = v117;
  *(v120 + 41) = v118;
  v121 = v171;
  v122 = [v171 voiceControlEntry];
  if (v122)
  {
    v123 = v122;
    if ([v122 isEnabled])
    {
      v124 = 1;
    }

    else
    {
      v124 = 2;
    }

    v125 = [v123 type];
  }

  else
  {
    v125 = 0;
    v124 = 0;
  }

  v126 = a2 + v73[14];
  *v126 = v124;
  *(v126 + 8) = v125;
  v127 = [v121 personNameEntry];
  if (v127)
  {
    v128 = v127;
    if ([v127 isEnabled])
    {
      v129 = 1;
    }

    else
    {
      v129 = 2;
    }

    v130 = v128;
    v131 = [v130 stringValue];
    v132 = sub_26C5745FC();
    v134 = v133;
  }

  else
  {
    v132 = 0;
    v129 = 0;
    v134 = 0xE000000000000000;
  }

  v135 = a2 + v73[15];

  *v135 = v129;
  *(v135 + 8) = v132;
  *(v135 + 16) = v134;
  v136 = [v121 rotationLockEntry];
  if (v136)
  {
    v137 = v136;
    v138 = [v136 isEnabled];

    if (v138)
    {
      v139 = 1;
    }

    else
    {
      v139 = 2;
    }
  }

  else
  {
    v139 = 0;
  }

  *(a2 + v73[16]) = v139;
  v140 = [v121 alarmEntry];
  if (v140)
  {
    v141 = v140;
    v142 = [v140 isEnabled];

    if (v142)
    {
      v143 = 1;
    }

    else
    {
      v143 = 2;
    }
  }

  else
  {
    v143 = 0;
  }

  *(a2 + v73[17]) = v143;
  v144 = [v121 studentEntry];
  if (v144)
  {
    v145 = v144;
    v146 = [v144 isEnabled];

    if (v146)
    {
      v147 = 1;
    }

    else
    {
      v147 = 2;
    }
  }

  else
  {
    v147 = 0;
  }

  *(a2 + v73[18]) = v147;
  v148 = [v121 airPlayEntry];
  if (v148)
  {
    v149 = v148;
    v150 = [v148 isEnabled];

    if (v150)
    {
      v151 = 1;
    }

    else
    {
      v151 = 2;
    }
  }

  else
  {
    v151 = 0;
  }

  *(a2 + v73[19]) = v151;
  v152 = [v121 carPlayEntry];
  if (v152)
  {
    v153 = v152;
    v154 = [v152 isEnabled];

    if (v154)
    {
      v155 = 1;
    }

    else
    {
      v155 = 2;
    }
  }

  else
  {
    v155 = 0;
  }

  *(a2 + v73[20]) = v155;
  v156 = [v121 liquidDetectionEntry];
  if (v156)
  {
    v157 = v156;
    v158 = [v156 isEnabled];

    if (v158)
    {
      v159 = 1;
    }

    else
    {
      v159 = 2;
    }
  }

  else
  {
    v159 = 0;
  }

  *(a2 + v73[21]) = v159;
}

uint64_t sub_26C4FF434@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_26C580E10;
  *(a1 + 24) = xmmword_26C580E20;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = xmmword_26C580E10;
  *(a1 + 88) = xmmword_26C580E20;
  *(a1 + 104) = 0xE700000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = xmmword_26C580E30;
  *(a1 + 160) = 0;
  v2 = type metadata accessor for StatusBarOverrides(0);
  sub_26C4FCD1C((a1 + v2[9]));
  result = sub_26C4FCD1C((a1 + v2[10]));
  v4 = a1 + v2[11];
  *v4 = 0;
  *(v4 + 8) = 0;
  v5 = a1 + v2[12];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0x3FF0000000000000;
  *(v5 + 24) = 0;
  v6 = a1 + v2[13];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0x3FF0000000000000;
  *(v6 + 40) = 0;
  v7 = a1 + v2[14];
  *v7 = 0;
  *(v7 + 8) = 0;
  v8 = a1 + v2[15];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0xE000000000000000;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 0;
  *(a1 + v2[20]) = 0;
  *(a1 + v2[21]) = 0;
  return result;
}

uint64_t sub_26C4FF5D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 160))();

  v3 = OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData__overrides;
  swift_beginAccess();
  return sub_26C5005E4(v1 + v3, a1, type metadata accessor for StatusBarOverrides);
}

uint64_t sub_26C4FF680(unsigned __int8 *a1)
{
  v3 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData__overrides;
  swift_beginAccess();
  sub_26C5005E4(v1 + v6, v5, type metadata accessor for StatusBarOverrides);
  v7 = sub_26C500160(v5, a1);
  sub_26C50064C(v5, type metadata accessor for StatusBarOverrides);
  if (v7)
  {
    sub_26C5005E4(a1, v5, type metadata accessor for StatusBarOverrides);
    swift_beginAccess();
    sub_26C500714(v5, v1 + v6, type metadata accessor for StatusBarOverrides);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    *(&v11 - 2) = v1;
    *(&v11 - 1) = a1;
    (*(*v1 + 168))(v9, sub_26C5006AC);
  }

  return sub_26C50064C(a1, type metadata accessor for StatusBarOverrides);
}

void (*sub_26C4FF858(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 160))();

  v4[5] = OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26C50097C(&qword_2804A2008, type metadata accessor for StatusBarOverrideData);
  sub_26C57410C();

  v4[7] = sub_26C4FF574();
  return sub_26C4FF994;
}

void sub_26C4FF994(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_26C5740FC();

  free(v1);
}

uint64_t sub_26C4FFA28(void *a1)
{
  v3 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C4FE5B4(a1, v5);
  return (*(*v1 + 128))(v5);
}

uint64_t sub_26C4FFACC()
{
  v1 = type metadata accessor for StatusBarOverrides(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C4FF434(v3);
  return (*(*v0 + 128))(v3);
}

uint64_t sub_26C4FFCA0()
{
  sub_26C50064C(v0 + OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData__overrides, type metadata accessor for StatusBarOverrides);
  v1 = OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData___observationRegistrar;
  v2 = sub_26C57412C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26C4FFD60()
{
  v0 = swift_allocObject();
  sub_26C4FF434(v0 + OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData__overrides);
  sub_26C57411C();
  return v0;
}

uint64_t sub_26C4FFDB4(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_26C5746AC();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_26C5746AC();
}

uint64_t sub_26C4FFEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A1FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26C4FFF3C(uint64_t a1, char a2, char a3, double a4)
{
  v8 = objc_opt_self();
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = [v8 localizedStringFromNumber:v9 numberStyle:3];

  sub_26C5745FC();
  v11 = a4 * 100.0;
  if (COERCE__INT64(fabs(a4 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    v12 = v11;
    v13 = sub_26C5745EC();

    [objc_opt_self() entryWithCapacity:v12 state:a1 saverMode:a2 & 1 prominentlyShowsDetailString:a3 & 1 detailString:v13];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_26C500118(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

BOOL sub_26C500160(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1;
  result = 0;
  if (*(v4 + 1) == *(a2 + 1) && *(v4 + 2) == *(a2 + 2) && *(v4 + 3) == *(a2 + 3))
  {
    v41 = v2;
    v42 = v3;
    v6 = *(v4 + 6);
    v7 = *(v4 + 7);
    v8 = *(a2 + 6);
    v9 = *(a2 + 7);
    if (*(v4 + 4) != *(a2 + 4) || *(v4 + 5) != *(a2 + 5))
    {
      v10 = v4;
      v11 = a2;
      v12 = sub_26C5746AC();
      a2 = v11;
      v4 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != v8 || v7 != v9)
    {
      v13 = v4;
      v14 = a2;
      v15 = sub_26C5746AC();
      a2 = v14;
      v4 = v13;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = *(v4 + 5);
    v39[0] = *(v4 + 4);
    v39[1] = v16;
    v17 = *(v4 + 7);
    v18 = v4;
    v39[2] = *(v4 + 6);
    v39[3] = v17;
    v19 = *(a2 + 5);
    v40[0] = *(a2 + 4);
    v40[1] = v19;
    v20 = *(a2 + 7);
    v21 = a2;
    v40[2] = *(a2 + 6);
    v40[3] = v20;
    if ((sub_26C4FFDB4(v39, v40) & 1) == 0 || v18[128] != v21[128] || v18[129] != v21[129] || v18[136] != v21[136])
    {
      return 0;
    }

    result = 0;
    if (*(v18 + 18) != *(v21 + 18) || *(v18 + 19) != *(v21 + 19) || *(v18 + 20) != *(v21 + 20))
    {
      return result;
    }

    v22 = type metadata accessor for StatusBarOverrides(0);
    if (v18[*(v22 + 36)] != v21[*(v22 + 36)])
    {
      return 0;
    }

    v23 = v22;
    type metadata accessor for StatusBarOverrides.TimeAndDate(0);
    if ((sub_26C57401C() & 1) == 0)
    {
      return 0;
    }

    if (v18[v23[10]] != v21[v23[10]])
    {
      return 0;
    }

    if ((sub_26C57401C() & 1) == 0)
    {
      return 0;
    }

    v24 = v23[11];
    v25 = &v18[v24];
    v26 = v18[v24];
    v27 = &v21[v24];
    if (v26 != *v27)
    {
      return 0;
    }

    if (*(v25 + 1) != *(v27 + 1))
    {
      return 0;
    }

    v28 = v23[12];
    v29 = &v18[v28];
    v30 = &v21[v28];
    if (v18[v28] != v21[v28])
    {
      return 0;
    }

    result = 0;
    if (*(v29 + 1) != *(v30 + 1) || *(v29 + 2) != *(v30 + 2) || ((v30[24] ^ v29[24]) & 1) != 0 || ((v30[25] ^ v29[25]) & 1) != 0)
    {
      return result;
    }

    v31 = v23[13];
    v32 = &v18[v31];
    v33 = &v21[v31];
    if (v18[v31] != v21[v31])
    {
      return 0;
    }

    result = 0;
    if (*(v32 + 1) == *(v33 + 1) && v32[16] == v33[16])
    {
      result = 0;
      if (*(v32 + 3) == *(v33 + 3) && *(v32 + 4) == *(v33 + 4) && ((v32[40] ^ v33[40]) & 1) == 0 && ((v32[41] ^ v33[41]) & 1) == 0)
      {
        v34 = v23[14];
        if (v18[v34] == v21[v34] && *&v18[v34 + 8] == *&v21[v34 + 8])
        {
          v35 = v23[15];
          v36 = &v18[v35];
          v37 = v18[v35];
          v38 = &v21[v35];
          if (v37 == *v38 && (*(v36 + 1) == *(v38 + 1) && *(v36 + 2) == *(v38 + 2) || (sub_26C5746AC() & 1) != 0) && v18[v23[16]] == v21[v23[16]] && v18[v23[17]] == v21[v23[17]] && v18[v23[18]] == v21[v23[18]] && v18[v23[19]] == v21[v23[19]] && v18[v23[20]] == v21[v23[20]])
          {
            return v18[v23[21]] == v21[v23[21]];
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26C50057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C5005E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C50064C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C5006AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14SystemStatusUI21StatusBarOverrideData__overrides;
  swift_beginAccess();
  sub_26C50147C(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_26C500714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C50079C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26C5007D8()
{
  result = qword_2804A2010;
  if (!qword_2804A2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2010);
  }

  return result;
}

unint64_t sub_26C50082C(uint64_t a1)
{
  result = sub_26C500854();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C500854()
{
  result = qword_2804A2018;
  if (!qword_2804A2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2018);
  }

  return result;
}

unint64_t sub_26C5008A8(uint64_t a1)
{
  result = sub_26C5008D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C5008D0()
{
  result = qword_2804A2020;
  if (!qword_2804A2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2020);
  }

  return result;
}

uint64_t sub_26C500924(uint64_t a1)
{
  result = sub_26C50097C(&qword_2804A2028, type metadata accessor for StatusBarOverrides.TimeAndDate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C50097C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26C5009C4(uint64_t a1)
{
  result = sub_26C5009EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C5009EC()
{
  result = qword_2804A2030;
  if (!qword_2804A2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2030);
  }

  return result;
}

unint64_t sub_26C500A40(uint64_t a1)
{
  result = sub_26C500A68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C500A68()
{
  result = qword_2804A2038;
  if (!qword_2804A2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2038);
  }

  return result;
}

unint64_t sub_26C500ABC(uint64_t a1)
{
  result = sub_26C500AE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C500AE4()
{
  result = qword_2804A2040;
  if (!qword_2804A2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2040);
  }

  return result;
}

unint64_t sub_26C500B38(uint64_t a1)
{
  result = sub_26C500B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C500B60()
{
  result = qword_2804A2048;
  if (!qword_2804A2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2048);
  }

  return result;
}

unint64_t sub_26C500BB4(uint64_t a1)
{
  result = sub_26C500BDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C500BDC()
{
  result = qword_2804A2050;
  if (!qword_2804A2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A2050);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StatusBarOverride(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StatusBarOverride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C500DC8()
{
  result = type metadata accessor for StatusBarOverrides.TimeAndDate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C500EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C500F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C500F6C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C500FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26C50102C()
{
  result = sub_26C57404C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_26C5010D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C50112C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C501198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5011EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C501250(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C501298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C5012FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C501344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C50139C()
{
  result = type metadata accessor for StatusBarOverrides(319);
  if (v1 <= 0x3F)
  {
    result = sub_26C57412C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26C50147C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBarOverrides(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_26C5014F8()
{
  v1 = v0;
  v98.receiver = v0;
  v98.super_class = type metadata accessor for STUIStatusBarDataOverridesViewController();
  objc_msgSendSuper2(&v98, sel_viewDidLoad);
  type metadata accessor for StatusBarOverrideData(0);
  v2 = sub_26C4FFD60();
  v3 = OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain;
  v4 = *&v0[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = sub_26C502258;
  v97 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_26C5022A4;
  v95 = &block_descriptor;
  v6 = _Block_copy(&aBlock);
  v7 = v4;

  [v7 observeDataWithBlock_];
  _Block_release(v6);

  v8 = [*&v1[v3] data];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 customOverrides];

    if (v10)
    {
      (*(*v2 + 144))(v10);
    }
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v86 = v2;
  v11 = sub_26C4FAF44();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  aBlock = v11;
  v93 = v12;
  v94 = v14;
  v95 = v16;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A2068));
  v83 = v13;

  v84 = v11;

  v85 = v17;
  sub_26C4FB34C(v15);
  v19 = sub_26C5742BC();
  v20 = *&v1[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_overridesController];
  *&v1[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_overridesController] = v19;
  v21 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A2078);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26C581480;
  v23 = v21;
  v24 = &selRef_updatedDisplayItemsWithData_;
  v25 = [v23 view];
  if (!v25)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = v25;
  v27 = sub_26C500118(0, &qword_2804A2080);
  v95 = v27;
  aBlock = v26;
  v28 = [v1 view];
  v29 = v27;
  if (!v28)
  {
    v29 = 0;
    v89 = 0;
    v90 = 0;
  }

  v82 = v15;
  v88 = v28;
  v91 = v29;
  __swift_project_boxed_opaque_existential_0(&aBlock, v27);
  v30 = sub_26C57469C();
  v31 = v91;
  if (v91)
  {
    v32 = __swift_project_boxed_opaque_existential_0(&v88, v91);
    v33 = *(v31 - 8);
    MEMORY[0x28223BE20](v32);
    v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v35);
    v36 = sub_26C57469C();
    (*(v33 + 8))(v35, v31);
    v24 = &selRef_updatedDisplayItemsWithData_;
    __swift_destroy_boxed_opaque_existential_0(&v88);
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_opt_self();
  v38 = &selRef_appendString_withName_;
  v39 = [v37 constraintWithItem:v30 attribute:3 relatedBy:0 toItem:v36 attribute:3 multiplier:1.0 constant:0.0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  *(v22 + 32) = v39;
  v40 = [v23 v24[18]];
  if (!v40)
  {
    goto LABEL_33;
  }

  v95 = v27;
  aBlock = v40;
  v41 = [v1 v24[18]];
  v42 = v27;
  if (!v41)
  {
    v42 = 0;
    v89 = 0;
    v90 = 0;
  }

  v88 = v41;
  v91 = v42;
  __swift_project_boxed_opaque_existential_0(&aBlock, v27);
  v43 = sub_26C57469C();
  v44 = v91;
  v87 = v37;
  if (v91)
  {
    v45 = __swift_project_boxed_opaque_existential_0(&v88, v91);
    v46 = *(v44 - 8);
    MEMORY[0x28223BE20](v45);
    v48 = &v82 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v48);
    v49 = sub_26C57469C();
    v50 = v48;
    v37 = v87;
    (*(v46 + 8))(v50, v44);
    v38 = &selRef_appendString_withName_;
    v24 = &selRef_updatedDisplayItemsWithData_;
    __swift_destroy_boxed_opaque_existential_0(&v88);
  }

  else
  {
    v49 = 0;
  }

  v51 = [v37 v38[146]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  *(v22 + 40) = v51;
  v52 = [v23 v24[18]];
  if (!v52)
  {
    goto LABEL_34;
  }

  v95 = v27;
  aBlock = v52;
  v53 = [v1 v24[18]];
  v54 = v27;
  if (!v53)
  {
    v54 = 0;
    v89 = 0;
    v90 = 0;
  }

  v88 = v53;
  v91 = v54;
  __swift_project_boxed_opaque_existential_0(&aBlock, v27);
  v55 = sub_26C57469C();
  v56 = v91;
  if (v91)
  {
    v57 = __swift_project_boxed_opaque_existential_0(&v88, v91);
    v58 = *(v56 - 8);
    MEMORY[0x28223BE20](v57);
    v60 = &v82 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v60);
    v61 = sub_26C57469C();
    v62 = v60;
    v37 = v87;
    (*(v58 + 8))(v62, v56);
    v38 = &selRef_appendString_withName_;
    v24 = &selRef_updatedDisplayItemsWithData_;
    __swift_destroy_boxed_opaque_existential_0(&v88);
  }

  else
  {
    v61 = 0;
  }

  v63 = [v37 v38[146]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  *(v22 + 48) = v63;
  v64 = [v23 v24[18]];
  if (!v64)
  {
    goto LABEL_35;
  }

  v95 = v27;
  aBlock = v64;
  v65 = [v1 v24[18]];
  v66 = v27;
  if (!v65)
  {
    v66 = 0;
    v89 = 0;
    v90 = 0;
  }

  v88 = v65;
  v91 = v66;
  __swift_project_boxed_opaque_existential_0(&aBlock, v27);
  v67 = sub_26C57469C();
  v68 = v91;
  if (v91)
  {
    v69 = __swift_project_boxed_opaque_existential_0(&v88, v91);
    v70 = *(v68 - 8);
    MEMORY[0x28223BE20](v69);
    v72 = &v82 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v72);
    v73 = sub_26C57469C();
    v74 = v72;
    v37 = v87;
    (*(v70 + 8))(v74, v68);
    v38 = &selRef_appendString_withName_;
    v24 = &selRef_updatedDisplayItemsWithData_;
    __swift_destroy_boxed_opaque_existential_0(&v88);
  }

  else
  {
    v73 = 0;
  }

  v75 = [v37 v38[146]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  *(v22 + 56) = v75;
  v76 = [v23 v24[18]];
  if (!v76)
  {
    goto LABEL_36;
  }

  v77 = v76;
  [v76 setTranslatesAutoresizingMaskIntoConstraints_];

  v78 = [v1 v24[18]];
  if (!v78)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v79 = v78;
  v80 = [v23 v24[18]];

  if (v80)
  {
    [v79 addSubview_];

    [v1 addChildViewController_];
    [v23 didMoveToParentViewController_];
    sub_26C500118(0, &qword_2804A2088);
    v81 = sub_26C57461C();

    [v37 activateConstraints_];

    sub_26C4FB35C(v82);

    return;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_26C501FB8(void *a1, uint64_t a2)
{
  v4 = sub_26C5745AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C5745CC();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C500118(0, &qword_2804A2098);
  v11 = sub_26C57465C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_26C502D7C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C502260;
  aBlock[3] = &block_descriptor_25;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_26C5745BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26C502EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A20A8);
  sub_26C502F04();
  sub_26C57468C();
  MEMORY[0x26D6A3420](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_26C502260(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26C5022A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C502328(uint64_t a1)
{
  v2 = type metadata accessor for StatusBarOverrides(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomainPublisher);
    v7 = result;
    sub_26C4FC258(a1, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_26C502AB0(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_26C502B14;
    *(v10 + 24) = v9;
    aBlock[4] = sub_26C502D54;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C502598;
    aBlock[3] = &block_descriptor_19;
    v11 = _Block_copy(aBlock);
    v12 = v6;

    [v12 updateDataWithBlock_];

    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_26C502598(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id STUIStatusBarDataOverridesViewController.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain] invalidate];
  [*&v0[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomainPublisher] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STUIStatusBarDataOverridesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id STUIStatusBarDataOverridesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26C5745EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id STUIStatusBarDataOverridesViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_overridesController] = 0;
  v6 = OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D6BB28]) init];
  v7 = OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomainPublisher;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D6BB30]) init];
  if (a2)
  {
    v8 = sub_26C5745EC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for STUIStatusBarDataOverridesViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id STUIStatusBarDataOverridesViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id STUIStatusBarDataOverridesViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_overridesController] = 0;
  v3 = OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D6BB28]) init];
  v4 = OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomainPublisher;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D6BB30]) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for STUIStatusBarDataOverridesViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_26C502AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBarOverrides(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26C502B14(void *a1)
{
  type metadata accessor for StatusBarOverrides(0);
  v15 = sub_26C4FDB4C();
  v2 = [objc_opt_self() entryKeys];
  v3 = sub_26C57464C();

  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
LABEL_8:
    while (1)
    {

      v10 = sub_26C5745EC();

      v11 = [v15 entryForKey_];
      v12 = [a1 customOverrides];
      v13 = [v12 entryForKey_];

      if (v11)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_13;
      }

LABEL_15:
      v7 &= v7 - 1;

      if (!v7)
      {
        goto LABEL_4;
      }
    }

    if (v13 && ([v13 isEqual_] & 1) != 0)
    {
      v14 = v10;
      v10 = v11;
    }

    else
    {
LABEL_13:
      [a1 setEntry:v11 forKey:v10];
      v14 = v11;
    }

    goto LABEL_15;
  }

  while (1)
  {
LABEL_4:
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v3 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_8;
    }
  }
}

void sub_26C502D7C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = [v1 customOverrides];
      if (v4)
      {
        v5 = v4;
        v6 = *&v3[OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_overridesController];
        if (v6)
        {
          v7 = v6;
          sub_26C5742CC();

          v8 = sub_26C4F68E0();

          sub_26C4FB35C(v9);
          (*(*v8 + 144))(v5);

          return;
        }
      }
    }
  }
}

unint64_t sub_26C502EAC()
{
  result = qword_2804A20A0;
  if (!qword_2804A20A0)
  {
    sub_26C5745AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A20A0);
  }

  return result;
}

unint64_t sub_26C502F04()
{
  result = qword_2804A20B0;
  if (!qword_2804A20B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A20B0);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_280C1E830 == -1)
  {
    if (qword_280C1E838)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280C1E838)
    {
      return _availability_version_check();
    }
  }

  if (qword_280C1E828 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_51 < v11;
    if (_MergedGlobals_51 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280C1E81C > a3)
      {
        return 1;
      }

      if (dword_280C1E81C >= a3)
      {
        return dword_280C1E820 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_51 < a2;
  if (_MergedGlobals_51 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280C1E838;
  if (qword_280C1E838)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280C1E838 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D6A3B70](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_51, &dword_280C1E81C, &dword_280C1E820);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}