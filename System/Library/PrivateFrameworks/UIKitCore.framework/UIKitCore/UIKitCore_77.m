void _UIVisualEffectViewRemoveDependent(void *a1, id *a2)
{
  v6 = a2;
  v4 = a1;
  objc_storeWeak(a2 + 62, 0);
  v5 = v4[54];

  [v5 removeObject:v6];
}

void _UIVisualEffectViewConfigureDependent(void *a1, id *a2)
{
  obj = a1;
  v3 = a2;
  objc_storeWeak(a2 + 62, obj);
  v4 = [v3 _deferredAnimationForKey:@"backgroundEffects"];
  objc_storeStrong(v3 + 64, obj[64]);
  if (v4)
  {
    [v4 addAnimationFrameForValue:obj[64]];
  }

  else
  {
    *(v3 + 472) |= 1u;
    [v3 _configureEffects];
  }
}

uint64_t _UIFloatingContentViewEnablePunchoutShadow()
{
  result = _UISolariumEnabled();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumFloatingContentViewPunchoutShadow, @"UISolariumFloatingContentViewPunchoutShadow", _UIInternalPreferenceUpdateBool);
    if (byte_1EA95E144)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

__CFString *_CSCN(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"UICTContentSizeCategoryL"])
    {
      v3 = @"L";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryXS"])
    {
      v3 = @"XS";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryS"])
    {
      v3 = @"S";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryM"])
    {
      v3 = @"M";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryXL"])
    {
      v3 = @"XL";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryXXL"])
    {
      v3 = @"XXL";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryXXXL"])
    {
      v3 = @"XXXL";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryAccessibilityM"])
    {
      v3 = @"AX-M";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryAccessibilityL"])
    {
      v3 = @"AX-L";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryAccessibilityXL"])
    {
      v3 = @"AX-XL";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryAccessibilityXXL"])
    {
      v3 = @"AX-XXL";
    }

    else if ([v2 isEqualToString:@"UICTContentSizeCategoryAccessibilityXXXL"])
    {
      v3 = @"AX-XXXL";
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = @"none";
  }

  return v3;
}

double _distanceFromLargeTitleToBackButton(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 titleLabel];
  v8 = [v7 superview];
  [v7 center];
  [v8 convertPoint:v5 toView:?];
  v10 = v9;

  v11 = _distanceFromPointToBackButton(v6, v5, 1, 0, v10);
  return v11;
}

double _titleTransitionAdjustmentFromLargeTitleToBackButton(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0.0;
  if (_textDiffersBetweenLargeTitleAndBackButtonLayouts(v3, v4))
  {
    v6 = [v4 backButton];
    v7 = [v6 visualProvider];
    v8 = [v7 contentView];
    v9 = [v8 titleLabel];

    v10 = objc_opt_new();
    v11 = [v9 font];
    [v10 setFont:v11];

    v12 = [v3 title];
    v13 = [v12 string];
    [v10 setText:v13];

    [v10 sizeToFit];
    [v10 bounds];
    Width = CGRectGetWidth(v16);
    [v9 bounds];
    v5 = (Width - CGRectGetWidth(v17)) * 0.5;
  }

  return v5;
}

void _updateBackButtonSpacingForButton(void *a1, int a2, double a3, double a4)
{
  if (a1)
  {
    v7 = [a1 visualProvider];
    v11 = [v7 contentView];

    [v11 center];
    v10 = -a3;
    if (!a2)
    {
      v10 = a3;
    }

    [v11 setCenter:{v10 + v8, a4 + v9}];
  }
}

uint64_t _textDiffersBetweenLargeTitleAndBackButtonLayouts(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 title];
  v5 = [v4 string];

  v6 = [v3 backButton];

  v7 = [v6 visualProvider];
  v8 = [v7 contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 titleLabel];
    v10 = [v9 text];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 isEqualToString:v10];

  return v11 ^ 1u;
}

double _distanceFromTitleToBackButton(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v8 currentBackButtonTitle];
  v11 = [v7 titleControl];
  v12 = [v11 title];

  v13 = 0;
  if (v12 && v10)
  {
    v13 = [v12 isEqualToString:v10];
  }

  v14 = [v7 titleControl];
  [v14 center];
  if ((v13 & 1) == 0)
  {
    [v14 frame];
    if (a4)
    {
      MaxX = CGRectGetMaxX(*&MaxX);
    }
  }

  v19 = _distanceFromPointToBackButton(v8, v9, v13, a4, MaxX);

  return v19;
}

void _applyStretchTransformForTitleViewAndBackButtonLayouts(int a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 titleControl];
  v8 = [v7 titleLabel];
  v11 = [v8 text];

  v9 = [v6 titleControl];

  v10 = [v9 titleLabel];
  _applyStretchTransformForTitleViewAndBackButtonLayout(a1, v10, v5);
}

void _performAdditionalTitleViewClipping(void *a1, void *a2, void *a3)
{
  v81 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v81 transition];
  if (v7 == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [v9 backButton];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 leadingGroupsMode];

    if (v12 == 1)
    {
      v13 = [v9 titleControl];
      v14 = [v81 isRTL];
      v15 = [v9 leadingBar];
      v16 = [v15 view];
      [v16 frame];
      if (v14)
      {
        v21 = CGRectGetMinX(*&v17) + 16.0;

        v22 = _slideTransitionFadeMaskImage(0);
        v23 = 0.0;
        v24 = v13;
        v25 = v21;
        v26 = 0;
        v27 = v22;
      }

      else
      {
        v28 = CGRectGetMaxX(*&v17) + -16.0;

        v29 = [v81 contentView];
        [v29 bounds];
        MaxX = CGRectGetMaxX(v83);

        v22 = _slideTransitionFadeMaskImage(1);
        v24 = v13;
        v23 = v28;
        v25 = MaxX;
        v26 = v22;
        v27 = 0;
      }

      v31 = _wrapViewInClippingView(v24, v26, v27, v23, v25);

      [(_UINavigationBarTransitionContext *)v81 _addClippingView:v31];
    }
  }

  if (v7 == 1)
  {
    v32 = v6;
  }

  else
  {
    v32 = v5;
  }

  v33 = v32;

  v34 = [v5 trailingClippingItem];
  v35 = [v6 trailingClippingItem];
  v36 = v34 != 0;
  if (v34 | v35)
  {
    v80 = [v33 titleControl];
    if (v34 && v35)
    {
      v37 = [v81 contentView];
      v38 = _distanceFromTrailingItemToCenterOfView(v34, v37, [v81 isRTL]);

      v39 = [v81 contentView];
      v40 = _distanceFromTrailingItemToCenterOfView(v35, v39, [v81 isRTL]);

      v36 = v38 < v40;
    }

    if (v36)
    {
      v41 = v34;
    }

    else
    {
      v41 = v35;
    }

    v42 = v41;
    v43 = [v42 view];
    v44 = [v43 superview];
    v45 = [v42 view];
    [v45 frame];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = [v81 contentView];
    [v44 convertRect:v54 toView:{v47, v49, v51, v53}];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v63 = [v81 isRTL];
    v64 = v56;
    v65 = v58;
    v66 = v60;
    v67 = v62;
    if (v63)
    {
      v68 = CGRectGetMaxX(*&v64);
      v69 = [v81 contentView];
      [v69 bounds];
      v70 = CGRectGetMaxX(v84);

      v71 = _slideTransitionFadeMaskImage(1);
      v72 = v80;
      v73 = v80;
      v74 = v68;
      v75 = v70;
      v76 = v71;
      v77 = 0;
    }

    else
    {
      MinX = CGRectGetMinX(*&v64);
      v71 = _slideTransitionFadeMaskImage(0);
      v74 = 0.0;
      v72 = v80;
      v73 = v80;
      v75 = MinX;
      v76 = 0;
      v77 = v71;
    }

    v79 = _wrapViewInClippingView(v73, v76, v77, v74, v75);

    [(_UINavigationBarTransitionContext *)v81 _addClippingView:v79];
  }
}

UIView *_wrapViewInClippingView(void *a1, void *a2, void *a3, CGFloat a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [v9 superview];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v17 = a5 - a4;
  v18 = [v12 layer];
  v19 = [v18 presentationLayer];
  [v19 bounds];
  Height = CGRectGetHeight(v28);

  v29.origin.x = a4;
  v29.origin.y = v14;
  v29.size.width = v17;
  v29.size.height = v16;
  v21 = CGRectGetHeight(v29);
  if (Height >= v21)
  {
    v22 = Height;
  }

  else
  {
    v22 = v21;
  }

  v23 = [[UIView alloc] initWithFrame:a4, v14, v17, v22];
  [(UIView *)v23 setBounds:a4, v14, v17, v22];
  [(UIView *)v23 setClipsToBounds:1];
  [(UIView *)v23 setUserInteractionEnabled:0];
  v30.origin.x = a4;
  v30.origin.y = v14;
  v30.size.width = v17;
  v30.size.height = v22;
  if (fabs(CGRectGetHeight(v30)) >= 2.22044605e-16)
  {
    [v12 insertSubview:v23 belowSubview:v9];
    [(UIView *)v23 addSubview:v9];
  }

  if (v10 | v11)
  {
    v24 = _clippingMaskForFrame(v10, v11, 0, 0, a4, v14, v17, v22);
    v25 = [(UIView *)v23 layer];
    [v25 setMask:v24];
  }

  return v23;
}

BOOL _searchBarHasAlphaTransitionForSlideTransitionLayouts(void *a1, void *a2, int a3, int a4)
{
  v8 = a1;
  v9 = a2;
  if (v8)
  {
    v10 = v8[30];
    v11 = v10 == 0;
    if (v10)
    {
      if (!v9)
      {
        v4 = 0;
        goto LABEL_5;
      }

      v4 = *(v9 + 30);
      if (!v4)
      {
LABEL_5:
        v12 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    v13 = v8[30];
    if (v13)
    {

      if (!v10)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  if (v9)
  {
    v14 = *(v9 + 30);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v12 = v15 != 0;

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_15:

  if (!v8)
  {
    v19 = 0;
    v18 = 0;
    v20 = 0;
    goto LABEL_27;
  }

LABEL_16:
  v16 = v8[30];
  if (v16)
  {
    if (v9)
    {
      v17 = *(v9 + 30);
      if (v17)
      {
        v18 = v8[31] != *(v9 + 31);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 0;
    goto LABEL_25;
  }

  v18 = 0;
LABEL_26:

  v19 = *(v8 + 34) > 0.0;
  v20 = v8[30];
LABEL_27:
  v21 = v20;
  v22 = v21 != 0;
  if (v9)
  {
    v23 = *(v9 + 34);
    v24 = v23 > 0.0;
    v25 = *(v9 + 30);
    v26 = v25 != 0;
    if (a3)
    {
      v24 = v19;
      if (v23 <= 0.0)
      {
        goto LABEL_30;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a3)
    {
      v25 = 0;
      if (a4)
      {
        v24 = v19;
        goto LABEL_35;
      }

LABEL_39:
      v27 = 0;
      goto LABEL_45;
    }

    LOBYTE(v26) = 0;
    v25 = 0;
    v24 = 0;
  }

  v28 = v26;
  a4 ^= 1u;
  v26 = v21 != 0;
  v22 = v28;
  if (!v19)
  {
LABEL_30:
    if (v26)
    {
      v27 = !v22 || !v24;
      if (a4)
      {
        v27 = v22 && !v24;
      }

      goto LABEL_45;
    }

    if (a4)
    {
LABEL_35:
      v27 = v22 && !v24;
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_42:
  v27 = 0;
  if ((a4 & 1) == 0 && v26)
  {
    v27 = !v22 && !v24;
  }

LABEL_45:
  v29 = v27 || v18 || v12;

  return v29;
}

uint64_t _paletteHasAlphaTransitionForSlideTransitionLayouts(void *a1, void *a2, char a3, int a4)
{
  v7 = a2;
  v8 = a1;
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 34) > 0.0;
    v11 = *(v8 + 33);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v11;

  if (v7)
  {
    v13 = v7[34] > 0.0;
    v14 = *(v7 + 33);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = v14;

  v16 = v15 != 0;
  if (a3)
  {
    v17 = v15 != 0;
    v16 = v12 != 0;
    v18 = v10;
    if (!v13)
    {
LABEL_7:
      v19 = v16 && !v18;
      if (a4)
      {
        v20 = v16 && !v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = !v16 || !v18;
      if (a4)
      {
        v21 = v19;
      }

      if (v17)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      goto LABEL_21;
    }
  }

  else
  {
    a4 ^= 1u;
    v17 = v12 != 0;
    v18 = v13;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = !v16 && !v18;
  if (!v17)
  {
    v23 = 0;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v23;
  }

LABEL_21:

  return v22;
}

BOOL _shouldScaleLargeTitleToBackButton(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v10 = [v7 twoLineMode];
    v11 = v7;
  }

  else
  {
    v10 = [v8 twoLineMode];
    v11 = v8;
  }

  if (v10 == 1)
  {
    v12 = [v11 contentView];
    [v12 bounds];
    [v11 textRectForTitleLabelInBounds:2 limitedToNumberOfLines:?];
    Height = CGRectGetHeight(v18);

    v14 = [v11 titleLabelFont];
    [v14 pointSize];
    v16 = floor(Height / v15) < 2.0;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void _updateLargeTitleSpacingForLayout(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 titleLabel];
  [v9 setCenter:{a2 + a4, a3 + a5}];
}

double _hiddenLargeTitleMinY(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    [v6 _layoutFrameFor:v6[4] withOrder:60];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
    v15 = 0.0;
    v9 = 0.0;
  }

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  MinY = CGRectGetMinY(v22);
  if (a3)
  {
    [(_UINavigationBarLayout *)v5 contentViewLayoutFrame];
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = v9;
    v24.origin.y = v11;
    v24.size.width = v13;
    v24.size.height = v15;
    Height = CGRectGetHeight(v24);
  }

  else
  {
    MaxY = MinY;
    v25.origin.x = [(_UINavigationBarLayout *)v7 searchBarLayoutFrame];
    v19 = CGRectGetMinY(v25);
    v26.origin.x = [(_UINavigationBarLayout *)v5 searchBarLayoutFrame];
    Height = v19 - CGRectGetMinY(v26);
  }

  v20 = MaxY - Height;

  return v20;
}

double _distanceFromPointToBackButton(void *a1, void *a2, char a3, int a4, double a5)
{
  v9 = a2;
  v10 = [a1 backButton];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 visualProvider];
    v13 = [v12 contentView];

    if (!v13)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGSize _distanceFromPointToBackButton(CGPoint, _UINavigationBarContentViewLayout *__strong, _UINavigationBarContentView *__strong, BOOL, BOOL)"}];
      [v29 handleFailureInFunction:v30 file:@"_UINavigationBarTransitionContext.m" lineNumber:630 description:@"Cannot transition a back button with no content view"];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 titleLabel], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      v15 = [v13 titleLabel];
      [v15 center];
      if (a3)
      {
        MaxX = v16;
      }

      else
      {
        [v15 frame];
        MaxX = v23;
        if (a4)
        {
          MaxX = CGRectGetMaxX(*&v23);
          [v15 frame];
        }
      }

      [v13 convertPoint:v9 toView:MaxX];
      v22 = v27;
    }

    else
    {
      [v13 frame];
      if (a4)
      {
        [v13 frame];
        v19 = CGRectGetMaxX(v31);
        [v13 frame];
      }

      else
      {
        v19 = v18;
      }

      [v11 convertPoint:v9 toView:v19];
      v22 = v21;
    }

    v20 = a5 - v22;
  }

  else
  {
    v20 = *MEMORY[0x1E695F060];
  }

  return v20;
}

void _applyStretchTransformForTitleViewAndBackButtonLayout(int a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [a3 backButton];
    v7 = [v6 visualProvider];
    v8 = [v7 contentView];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_30:

      goto LABEL_31;
    }

    v9 = v8;
    v10 = [v9 titleLabel];
    v11 = [v10 text];
    v12 = [v5 text];
    if ([v11 isEqualToString:v12])
    {
      v13 = [v9 titleLabel];
      v14 = [v13 isHidden];

      if (!v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (a1 == 2)
    {
      a1 = 3;
    }

    else
    {
      if (a1 != 5)
      {
LABEL_29:

        goto LABEL_30;
      }

      a1 = 6;
    }

LABEL_11:
    v15 = [v9 titleLabel];
    if ([v15 isHidden] && (objc_msgSend(v15, "text"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      v17 = [v9 imageView];

      if (a1 == 6)
      {
        [v5 bounds];
        [v17 bounds];
        v31 = *(MEMORY[0x1E695EFD0] + 16);
        v39 = *MEMORY[0x1E695EFD0];
        v32 = v39;
        v40 = v31;
        v41 = *(MEMORY[0x1E695EFD0] + 32);
        v30 = v41;
        [v5 setTransform:&v39];
        v39 = v32;
        v40 = v31;
        v28 = v30;
LABEL_28:
        v41 = v28;
        [v17 setTransform:&v39];

        goto LABEL_29;
      }
    }

    else
    {
      v17 = v15;
    }

    [v5 bounds];
    v19 = v18;
    v21 = v20;
    [v17 bounds];
    v24 = v22;
    v25 = v23;
    if (a1 > 3)
    {
      v27 = *(MEMORY[0x1E695EFD0] + 16);
      if (a1 == 4)
      {
        v39 = *MEMORY[0x1E695EFD0];
        v40 = v27;
        v41 = *(MEMORY[0x1E695EFD0] + 32);
        [v5 setTransform:&v39];
        CGAffineTransformMakeScale(&v35, v19 / v24, 1.0);
        v39 = *&v35.a;
        v40 = *&v35.c;
        v28 = *&v35.tx;
      }

      else
      {
        v39 = *MEMORY[0x1E695EFD0];
        v40 = v27;
        v41 = *(MEMORY[0x1E695EFD0] + 32);
        [v5 setTransform:&v39];
        if (a1 == 5)
        {
          CGAffineTransformMakeScale(&v34, v19 / v24, v21 / v25);
          v39 = *&v34.a;
          v40 = *&v34.c;
          v28 = *&v34.tx;
        }

        else
        {
          CGAffineTransformMakeScale(&v33, v21 / v25, v21 / v25);
          v39 = *&v33.a;
          v40 = *&v33.c;
          v28 = *&v33.tx;
        }
      }
    }

    else
    {
      if (a1 == 1)
      {
        CGAffineTransformMakeScale(&v38, v22 / v19, 1.0);
        v39 = *&v38.a;
        v40 = *&v38.c;
        v26 = *&v38.tx;
      }

      else if (a1 == 2)
      {
        CGAffineTransformMakeScale(&v37, v22 / v19, v23 / v21);
        v39 = *&v37.a;
        v40 = *&v37.c;
        v26 = *&v37.tx;
      }

      else
      {
        CGAffineTransformMakeScale(&v36, v23 / v21, v23 / v21);
        v39 = *&v36.a;
        v40 = *&v36.c;
        v26 = *&v36.tx;
      }

      v41 = v26;
      [v5 setTransform:&v39];
      v29 = *(MEMORY[0x1E695EFD0] + 16);
      v39 = *MEMORY[0x1E695EFD0];
      v40 = v29;
      v28 = *(MEMORY[0x1E695EFD0] + 32);
    }

    goto LABEL_28;
  }

LABEL_31:
}

double _distanceFromTrailingItemToCenterOfView(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 view];
  v8 = [v7 superview];
  v9 = [v6 view];

  [v9 frame];
  [v8 convertRect:v5 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  if (a3)
  {
    MaxX = CGRectGetMaxX(*&v18);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v18);
  }

  v23 = MaxX;
  [v5 bounds];
  v24 = vabdd_f64(CGRectGetWidth(v26) * 0.5, v23);

  return v24;
}

void _UIBADPrettyPrintTextAttributes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    objc_msgSend(v3, "appendString:", @"{(");
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = ___UIBADPrettyPrintTextAttributes_block_invoke;
    v9 = &unk_1E70F6E30;
    v11 = v12;
    v5 = v3;
    v10 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:&v6];
    [v5 appendString:@"}"], v6, v7, v8, v9);

    _Block_object_dispose(v12, 8);
  }

  else
  {
    [v3 appendString:@"default"];
  }
}

void sub_18933D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189340E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189341428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189341B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189341C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189341DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189341F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

id _viewRepresentingItem(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 view];
  v6 = [v4 isCustomViewItem];

  if (v6)
  {
    v7 = [v5 superview];
    v8 = v7;
    if (v7 != v3)
    {
      v9 = v7;

      v5 = v9;
    }
  }

  return v5;
}

void ___rescueBofAAppIfNecessary_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_1002 = [v0 isEqualToString:@"com.bankofamerica.BofA"];
}

BOOL IsValidConstraintRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  if (CGRectIsInfinite(v9))
  {
    return 0;
  }

  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return !CGRectIsEmpty(v10);
}

void sub_1893484F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _calculateFinalPointerShape(void *a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12)
{
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = v26;
  if (a5)
  {
    [v26 backButtonLeadingPadding];
    v29 = v28;
    [v27 backButtonTrailingPadding];
    if (a6)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = v29 + v30;
  }

  else
  {
    [v26 buttonHorizontalPadding];
    v31 = v33;
    v32 = v33 + v33;
    if (a8)
    {
      [v27 buttonVerticalPadding];
      a10 = a10 - v34;
      a12 = a12 + v34 + v34;
    }
  }

  v35 = a11 + v32;
  v36 = a9 - v31;
  [v27 buttonMinimumHeight];
  if (a12 >= v37)
  {
    v38 = a10;
  }

  else
  {
    v38 = a10 + (v37 - a12) * -0.5;
  }

  if (a12 < v37)
  {
    a12 = v37;
  }

  v39 = a12;
  if ((a8 & 1) == 0)
  {
    [v27 buttonMinimumWidth];
  }

  if (v35 < v39)
  {
    v40 = 1;
  }

  else
  {
    v40 = a7;
  }

  if (v40)
  {
    v36 = v36 + (v39 - v35) * -0.5;
    v41 = v39;
  }

  else
  {
    v41 = v35;
  }

  [v27 buttonHorizontalOffset];
  if (!a6)
  {
    v42 = -v42;
  }

  v43 = v42 + v36;
  [v27 buttonVerticalOffset];
  v45 = v38 + v44;
  if (v25 && ((a5 & 1) != 0 || [v27 enableClippingBehavior]))
  {
    [v23 convertRect:v25 toCoordinateSpace:{v43, v45, v41, a12}];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    [v27 buttonMinimumDistanceFromEdge];
    v55 = v54;
    [v25 bounds];
    v87 = CGRectInset(v86, v55, 0.0);
    x = v87.origin.x;
    y = v87.origin.y;
    width = v87.size.width;
    height = v87.size.height;
    v83 = v49;
    v84 = v47;
    v87.origin.x = v47;
    v87.origin.y = v49;
    v87.size.width = v51;
    v87.size.height = v53;
    MinX = CGRectGetMinX(v87);
    v88.origin.x = v47;
    v88.origin.y = v49;
    v88.size.width = v51;
    v88.size.height = v53;
    MaxX = CGRectGetMaxX(v88);
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    v61 = CGRectGetMinX(v89);
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v62 = CGRectGetMaxX(v90);
    v63 = fmax(v61 - MinX, 0.0);
    v64 = fmax(MaxX - v62, 0.0);
    if (v63 >= v64)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    v91.origin.y = v83;
    v91.origin.x = v84;
    v91.size.width = v51;
    v91.size.height = v53;
    v92 = CGRectInset(v91, v65, 0.0);
    [v25 convertRect:v23 toCoordinateSpace:{v92.origin.x, v92.origin.y, v92.size.width, v92.size.height}];
    v43 = v66;
    v45 = v67;
    v41 = v68;
    a12 = v69;
  }

  [v23 convertRect:v24 toView:{v43, v45, v41, a12}];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v70;
  if (a8)
  {
    v78 = v70 * 0.5;
  }

  else
  {
    [v27 buttonCornerRadius];
    v78 = v79;
  }

  v80 = [UIPointerShape shapeWithRoundedRect:v72 cornerRadius:v74, v76, v77, v78];

  return v80;
}

void sub_1893502AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIButtonBarLayoutSpacerTypeForLayouts(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 suppressSpacing] & 1) != 0 || (objc_msgSend(v4, "suppressSpacing") & 1) != 0 || (objc_msgSend(v3, "isSpaceLayout"))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isSpaceLayout] ^ 1;
  }

  return v5;
}

void sub_189353A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSWShareableContentBSActionResponderClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C940)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SharedWithYouLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F7510;
    v8 = 0;
    qword_1ED49C940 = _sl_dlopen();
  }

  if (!qword_1ED49C940)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIShareableContentSceneActionHandler.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SWShareableContentBSActionResponder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSWShareableContentBSActionResponderClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIShareableContentSceneActionHandler.m" lineNumber:21 description:{@"Unable to find class %s", "SWShareableContentBSActionResponder"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1004 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharedWithYouLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49C940 = result;
  return result;
}

void sub_189354B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18935970C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18935987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18935B2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18935B580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18935BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _contentViewFromBarButton(void *a1)
{
  v1 = [a1 visualProvider];
  v2 = [v1 contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 imageView];
    v5 = [v4 isHidden];

    if (v5)
    {
      [v3 titleLabel];
    }

    else
    {
      [v3 imageView];
    }
    v2 = ;
  }

  return v2;
}

void __ASSERT_RENAMER_SESSION__(void *a1, void *a2)
{
  v22 = a1;
  v3 = a2;
  v4 = v22;
  if (v22)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __ASSERT_RENAMER_SESSION__(_UINavigationBarVisualProviderModernIOS *__strong, _UINavigationBarTitleRenamerSession *__strong)"}];
    [v5 handleFailureInFunction:v6 file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1313 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];

    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __ASSERT_RENAMER_SESSION__(_UINavigationBarVisualProviderModernIOS *__strong, _UINavigationBarTitleRenamerSession *__strong)"}];
  [v7 handleFailureInFunction:v8 file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1314 description:{@"Invalid parameter not satisfying: %@", @"session != nil"}];

  v4 = v22;
LABEL_3:
  if (v4[25] != v3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __ASSERT_RENAMER_SESSION__(_UINavigationBarVisualProviderModernIOS *__strong, _UINavigationBarTitleRenamerSession *__strong)"}];
    v11 = [v22 navigationBar];
    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
    }

    else
    {
      v15 = @"(nil)";
    }

    v16 = v22[25];
    if (v16)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = v16;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v17 stringWithFormat:@"<%@: %p>", v20, v18];
    }

    else
    {
      v21 = @"(nil)";
    }

    [v9 handleFailureInFunction:v10 file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1315 description:{@"This navigation bar (%@) is attached to a different rename session (%@).", v15, v21}];
  }
}

id __renameHandler(void *a1)
{
  v1 = [a1 context];
  v2 = [v1 _renameHandler];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 associatedItem];

    if (v4 != v1)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UINavigationItemRenameHandler *__renameHandler(_UINavigationBarTitleRenamerSession *__strong)"];
      [v5 handleFailureInFunction:v6 file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1322 description:@"Rename handler and item are out of sync."];
    }
  }

  return v3;
}

id _nullableCompactScrollEdgeAppearance(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 compactScrollEdgeAppearance];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v3 compactScrollEdgeAppearance];
    v9 = v8;
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v10 = [v4 scrollEdgeAppearance];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v3 scrollEdgeAppearance];
      }

      v7 = v12;
    }
  }

  return v7;
}

id _compactAppearance(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 compactAppearance];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v3 compactAppearance];
    v9 = v8;
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v10 = v3;
      v11 = [v4 standardAppearance];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v10 standardAppearance];
      }

      v7 = v13;
    }
  }

  return v7;
}

uint64_t _UINavigationBarAugmentedTitleWantsTwoPartCrossfade(void *a1)
{
  v1 = _UINavigationBarCastToAugmentedTitleView(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _wantsTwoPartTransition];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ____isOldFaceBook_block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v0 = [v1 bundleIdentifier];
    byte_1ED49816B = [@"com.facebook.Facebook" isEqualToString:v0];
  }
}

void sub_189367268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TagAttributeForAxes(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = MEMORY[0x1E695DEC8];
    v9 = MEMORY[0x1E696AD98];
    v10 = a1;
    v13 = [v9 numberWithInteger:a4];
    if (a5 < 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    }

    v12 = [v8 arrayWithObjects:{v13, v11, 0}];
    _UIAppearanceTagObjectForSelector(v10, a3, v12);

    if ((a5 & 0x8000000000000000) == 0)
    {
    }
  }
}

double CornerPointFromPath(const CGPath *a1, uint64_t a2, double a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = "";
  v23 = xmmword_18A678720;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3010000000;
  v17[3] = "";
  v18 = xmmword_18A678720;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = "";
  v16 = *MEMORY[0x1E695EFF8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CornerPointFromPath_block_invoke;
  v11[3] = &unk_1E70F7880;
  v11[4] = &v19;
  v11[5] = &v12;
  v11[6] = v17;
  v11[7] = a2;
  CGPathApplyWithBlock(a1, v11);
  v4 = v13;
  v5 = v13[4];
  v6 = v13[5];
  v7 = sqrt(v5 * v5 + v6 * v6);
  v8 = v5 / v7;
  v13[4] = v8;
  v4[5] = v6 / v7;
  v9 = v20[4] + v8 * a3;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
  return v9;
}

void sub_18936C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void *__CornerPointFromPath_block_invoke(void *result, uint64_t a2)
{
  if (*a2 <= 1u)
  {
    v2 = *(a2 + 8);
    v3 = *v2;
    v4 = v2[1];
    v5 = *(result[4] + 8);
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    if (v6 == 1.79769313e308 && v7 == 1.79769313e308)
    {
      *(v5 + 32) = v3;
      v22 = v4;
    }

    else
    {
      v9 = result[7];
      v10 = v3 < v6;
      if (v4 > v7)
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = v4;
      }

      else
      {
        v11 = *(v5 + 40);
      }

      if (v10)
      {
        v12 = v3;
      }

      else
      {
        v12 = *(v5 + 32);
      }

      v13 = v3 > v6;
      if (v4 > v7)
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = v4;
      }

      else
      {
        v14 = *(v5 + 40);
      }

      if (v13)
      {
        v15 = v3;
      }

      else
      {
        v15 = *(v5 + 32);
      }

      if (v9 != 8)
      {
        v14 = *(v5 + 40);
        v15 = *(v5 + 32);
      }

      if (v9 != 4)
      {
        v11 = v14;
        v12 = v15;
      }

      v16 = v3 < v6;
      if (v4 < v7)
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = v4;
      }

      else
      {
        v17 = *(v5 + 40);
      }

      if (v16)
      {
        v18 = v3;
      }

      else
      {
        v18 = *(v5 + 32);
      }

      v19 = v3 > v6;
      if (v4 < v7)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = v4;
      }

      else
      {
        v20 = *(v5 + 40);
      }

      if (v19)
      {
        v21 = v3;
      }

      else
      {
        v21 = *(v5 + 32);
      }

      if (v9 == 2)
      {
        v7 = v20;
        v6 = v21;
      }

      if (v9 == 1)
      {
        v7 = v17;
        v6 = v18;
      }

      if (v9 > 3)
      {
        v7 = v11;
        v6 = v12;
      }

      *(v5 + 32) = v6;
      *(v5 + 40) = v7;
      *(*(result[5] + 8) + 32) = v3 - *(*(result[6] + 8) + 32);
      v22 = v4 - *(*(result[6] + 8) + 40);
      v5 = *(result[5] + 8);
    }

    *(v5 + 40) = v22;
    v23 = *(result[6] + 8);
    *(v23 + 32) = v3;
    *(v23 + 40) = v4;
  }

  return result;
}

id _UISceneSessionInternalUserInfo(void *a1)
{
  v1 = a1;
  _assertForAllowedProcess();
  v2 = [(UISceneSession *)v1 _internalUserInfo];

  return v2;
}

void _assertForAllowedProcess()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED49C960 != -1)
  {
    dispatch_once(&qword_1ED49C960, &__block_literal_global_62);
  }

  v2 = _UIMainBundleIdentifier();
  if (([_MergedGlobals_1006 containsObject:?] & 1) == 0)
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid attempt to use functionality specifically for UIKit testing apps by: %@", v2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _assertForAllowedProcess(void)"];
      *buf = 138544130;
      v4 = v1;
      v5 = 2114;
      v6 = @"UISceneSession.m";
      v7 = 1024;
      v8 = 30;
      v9 = 2114;
      v10 = v0;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v0 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189370AF0);
  }
}

void _UISceneSessionSetInternalUserInfo(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  _assertForAllowedProcess();
  [(UISceneSession *)v4 _setInternalUserInfo:v3];
}

void ___assertForAllowedProcess_block_invoke()
{
  v0 = _MergedGlobals_1006;
  _MergedGlobals_1006 = &unk_1EFE2B4D0;
}

id _proxyAction(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___proxyAction_block_invoke;
  v9[3] = &unk_1E70F4708;
  v10 = v5;
  v6 = v5;
  v7 = [UIAction actionWithTitle:a2 image:a3 identifier:0 handler:v9];

  return v7;
}

void _clampWidthOfView(void *a1, double a2, double a3)
{
  v5 = a1;
  if (v5 && (a2 > 0.0 || a3 > 0.0))
  {
    if ((v7 = v5, [v5 frame], v5 = v7, a2 > 0.0) && v6 < a2 || a3 > 0.0 && v6 > a3)
    {
      [v7 setFrame:?];
      v5 = v7;
    }
  }
}

id _ImageViewInNavigationButton(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 imageForState:0];

    if (v3)
    {
      v3 = [v2 _imageView];
      if (!v3)
      {
        [v2 layoutIfNeeded];
        v3 = [v2 _imageView];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___proxyAction_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sender];
  [v2 _triggerActionForEvent:0 fallbackSender:v3];
}

void sub_18937AD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTUIStatusBarWifiSignalViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C970)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SystemStatusUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F78E0;
    v8 = 0;
    qword_1ED49C970 = _sl_dlopen();
  }

  if (!qword_1ED49C970)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIWiFiSignalView.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("STUIStatusBarWifiSignalView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTUIStatusBarWifiSignalViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIWiFiSignalView.m" lineNumber:20 description:{@"Unable to find class %s", "STUIStatusBarWifiSignalView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1007 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SystemStatusUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49C970 = result;
  return result;
}

__CFString *_UIBarMetricsDebugDescription(uint64_t a1)
{
  if (a1 > 100)
  {
    if (a1 != 101)
    {
      if (a1 == 102)
      {
        return @"compactPrompt";
      }

      return @"unrecognized";
    }

    return @"defaultPrompt";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"compact";
      }

      return @"unrecognized";
    }

    return @"default";
  }
}

uint64_t _UIBarSupportedStyle(uint64_t result)
{
  if (result == 2)
  {
    return 1;
  }

  return result;
}

BOOL _UIBarBlurAcceptsBlendModeOnBackground(void *a1)
{
  v1 = recursiveFirstBackdropInView(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 outputSettings];
    v4 = [v3 graphicsQuality] == 100;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id recursiveFirstBackdropInView(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = v1;
  if (isKindOfClass)
  {
LABEL_4:
    v4 = v3;
    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 performSelector:sel__adaptiveBackdrop];
    goto LABEL_4;
  }

LABEL_5:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v1 subviews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = recursiveFirstBackdropInView(*(*(&v12 + 1) + 8 * i));
        if (v10)
        {
          v4 = v10;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v4 = 0;
LABEL_15:

LABEL_16:

  return v4;
}

BOOL _UINavigationBarEnableBasicChromeless()
{
  if (qword_1ED49BF88 != -1)
  {
    dispatch_once(&qword_1ED49BF88, &__block_literal_global_84);
  }

  return qword_1ED49BF80 > 0;
}

void _UIBarsTwoPartCrossfadeTransitionProgress(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke;
  v10[3] = &unk_1E70F4178;
  v12 = a3;
  v7 = v5;
  v11 = v7;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke_4;
    v8[3] = &unk_1E70F3608;
    v9 = v6;
    [UIView animateKeyframesWithDuration:0 delay:v10 options:v8 animations:0.0 completion:0.0];
  }

  else
  {
    [UIView animateKeyframesWithDuration:0 delay:v10 options:0 animations:0.0 completion:0.0];
  }
}

uint64_t _UIBarsAnimatingSystemChanges()
{
  result = +[UIView _isInSystemAnimationBlockWithAnimationsEnabled];
  if (result)
  {

    return dyld_program_sdk_at_least();
  }

  return result;
}

id _UIBarManufacturedTranslucentImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 size], v3 == 0.0) || (objc_msgSend(v2, "size"), v4 == 0.0))
  {
    v5 = v2;
  }

  else
  {
    [v2 capInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v2 size];
    v16 = v15;
    v18 = v17;
    [v2 scale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v16, v18, v19);
    [v2 drawAtPoint:0 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 0.909803922}];
    v5 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    if (v10 != 0.0 || v8 != 0.0 || v14 != 0.0 || v12 != 0.0)
    {
      v20 = [v5 resizableImageWithCapInsets:{v8, v10, v12, v14}];

      v5 = v20;
    }
  }

  return v5;
}

id _UINavigationButtonAccessibilityBackground(int a1, int a2)
{
  if (!__barButtonAccessibilityBackgroundImages)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v5 = __barButtonAccessibilityBackgroundImages;
    __barButtonAccessibilityBackgroundImages = v4;
  }

  v6 = @"UINavigationBackButtonAccessibilityBackground.png";
  if (a2)
  {
    v6 = @"UINavigationBackButtonAccessibilityBackgroundLandscape.png";
  }

  v7 = @"UINavigationButtonAccessibilityBackgroundLandscape.png";
  if (!a2)
  {
    v7 = @"UINavigationButtonAccessibilityBackground.png";
  }

  if (!a1)
  {
    v6 = v7;
  }

  v8 = v6;
  v9 = [__barButtonAccessibilityBackgroundImages objectForKey:v8];
  if (!v9)
  {
    v10 = [UIImage kitImageNamed:v8];
    v11 = v10;
    v12 = 21.0;
    if (a2)
    {
      v12 = 17.0;
    }

    v13 = 6.0;
    if (a1)
    {
      v13 = v12;
    }

    v9 = [v10 resizableImageWithCapInsets:1 resizingMode:{0.0, v13, 0.0, 6.0}];

    if (v9)
    {
      [__barButtonAccessibilityBackgroundImages setObject:v9 forKey:v8];
    }
  }

  v14 = [v9 imageFlippedForRightToLeftLayoutDirection];

  return v14;
}

uint64_t indexOfViewForIndexOfItem(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __indexOfViewForIndexOfItem_block_invoke;
  v6[3] = &unk_1E70F7AA8;
  v6[4] = &v7;
  v6[5] = a1;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1893827A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UINavigationButtonUpdateAccessibilityBackgrounds(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (_AXSButtonShapesEnabled())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 _wantsAccessibilityButtonShapes])
          {
            [v12 _setWantsBlendModeForAccessibilityBackgrounds:a2];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 _wantsAccessibilityButtonShapes])
          {
            [v12 _setAccessibilityBackgroundTintColor:v6];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

void __indexOfViewForIndexOfItem_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v10 = v7;
  v9 = [v7 isSystemItem];
  if (v8 == a3)
  {
    if (v9 && ([v10 systemItem] == 6 || objc_msgSend(v10, "systemItem") == 5))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }

    *a4 = 1;
  }

  else if (v9 && ([v10 systemItem] == 6 || objc_msgSend(v10, "systemItem") == 5))
  {
    --*(*(*(a1 + 32) + 8) + 24);
  }
}

BOOL _UIUpdateReasonSortedSetSubtract(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 12);
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
  }

  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    v5 = a2 + 1;
    v6 = 1;
  }

  v7 = *(a1 + 14);
  v8 = *(a2 + 7);
  if (*(a2 + 7))
  {
    v27 = *(a1 + 14);
    v9 = &v3[4 * v7];
    v10 = v5 + 4 * v6;
    v11 = &v3[4 * v4];
    do
    {
      --v8;
      v12 = v3;
      if (v9 != v3)
      {
        v13 = (v9 - v3) >> 2;
        v12 = v3;
        do
        {
          v14 = v13 >> 1;
          v15 = &v12[4 * (v13 >> 1)];
          v17 = *v15;
          v16 = v15 + 4;
          v13 += ~(v13 >> 1);
          if (v17 < *(v5 + v8))
          {
            v12 = v16;
          }

          else
          {
            v13 = v14;
          }
        }

        while (v13);
      }

      if (v9 != v12)
      {
        if (*v12 == *(v5 + v8))
        {
          v18 = *(v10 + 2 * v8);
          v19 = &v11[(v12 - v3) >> 1];
          v20 = *v19;
          v21 = v20 >= v18;
          v22 = v20 - v18;
          if (v22 != 0 && v21)
          {
            *v19 = v22;
          }

          else
          {
            v23 = *(a1 + 14) - 1;
            *(a1 + 14) = v23;
            v24 = v23 - ((v12 - v3) >> 2);
            memmove(v12, v12 + 4, 4 * v24);
            memmove(&v11[(v12 - v3) >> 1], v19 + 2, 2 * v24);
          }
        }

        v9 = v12;
        if (v12 == v3)
        {
          break;
        }
      }
    }

    while (v8);
    v25 = *(a1 + 14);
    LODWORD(v7) = v27;
  }

  else
  {
    v25 = *(a1 + 14);
  }

  return v25 < v7;
}

uint64_t CUIStyleEffectConfigurationEqualToStyleEffectConfiguration(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 state];
  if (v5 == [v4 state] && (v6 = objc_msgSend(v3, "presentationState"), v6 == objc_msgSend(v4, "presentationState")) && (v7 = objc_msgSend(v3, "value"), v7 == objc_msgSend(v4, "value")) && (v8 = objc_msgSend(v3, "dimension1"), v8 == objc_msgSend(v4, "dimension1")) && (v9 = objc_msgSend(v3, "useSimplifiedEffect"), v9 == objc_msgSend(v4, "useSimplifiedEffect")) && (v10 = objc_msgSend(v3, "foregroundColorShouldTintEffects"), v10 == objc_msgSend(v4, "foregroundColorShouldTintEffects")) && (objc_msgSend(v3, "brightnessMultiplier"), v12 = v11, objc_msgSend(v4, "brightnessMultiplier"), v12 == v13) && (v14 = objc_msgSend(v3, "colorTemperature"), v14 == objc_msgSend(v4, "colorTemperature")) && (objc_msgSend(v3, "effectScale"), v16 = v15, objc_msgSend(v4, "effectScale"), v16 == v17))
  {
    v18 = [v3 appearanceName];
    v19 = [v4 appearanceName];
    v20 = _deferringTokenEqualToToken(v18, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void _UIUpdateRequestRegistryRemoveRequest(uint64_t a1, _DWORD *a2)
{
  if (_UIUpdateCycleDebugTracingCheck)
  {
    v10 = _UIUpdateCycleDebugTracingCheck();
    if (v10)
    {
      v11 = v10;
      kdebug_trace();
      if (v11 != 1)
      {
        getppid();
      }
    }
  }

  v12 = 0uLL;
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 48;
  }

  if (_UIUpdateRequestRecordSortedSetRemoveRequest((a1 + v4), a2, &v12))
  {
    if ((*a2 & 8) != 0)
    {
      free(a2);
    }

    v5 = requestRemoved(a1, a1 + v4, a2);
    if (_UIUpdateReasonSortedSetSubtract(a1 + 88, &v12))
    {
      if (*(a1 + 102))
      {
        v6 = 32;
      }

      else
      {
        v6 = 33;
      }

      v5 |= v6;
    }

    free(v12);
    v7 = *a1 | v5;
    if (v7 != *a1)
    {
      *a1 = v7;
      v8 = *(a1 + 136);
      if (v8)
      {
        v9 = *(a1 + 144);

        v8(a1, v9);
      }
    }
  }
}

__CFString *_UIUpdateRequestRegistryReasonsDebugString(uint64_t a1)
{
  v1 = *(a1 + 102);
  if (*(a1 + 102))
  {
    if (*(a1 + 88))
    {
      v2 = *(a1 + 88);
    }

    else
    {
      v2 = (a1 + 96);
    }

    v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"0x%x", *v2];
    if (v1 != 1)
    {
      v4 = v1 - 1;
      v5 = v2 + 1;
      do
      {
        v6 = *v5++;
        [(__CFString *)v3 appendFormat:@", 0x%x", v6];
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v3 = &stru_1EFB14550;
  }

  return v3;
}

void UINavigationItemLogSettingUpSharedBarButtonItemsDuringTransition(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *(__UILogGetCategoryCachedImpl("UINavigationItem", &qword_1ED49C990) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Shared barButtonItems must be added before transition begins. Break on UINavigationItemLogSettingUpSharedBarButtonItemsDuringTransition to debug", &v4, 2u);
  }

  v3 = *(__UILogGetCategoryCachedImpl("UINavigationItem", &qword_1ED49C998) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "%@", &v4, 0xCu);
  }
}

id _itemListExcludingOtherItemList(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (![v7 count] || !objc_msgSend(v6, "count"))
  {
    v10 = 0;
    v19 = v7;
    if (!a3)
    {
      goto LABEL_28;
    }

LABEL_24:
    if (v10)
    {
      v20 = v10;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    *a3 = v20;
    goto LABEL_28;
  }

  v23 = v7;
  v24 = a3;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v6;
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if (v13 == *(*(&v26 + 1) + 8 * j))
              {
                if (!v10)
                {
                  v10 = [MEMORY[0x1E695DF70] array];
                }

                [v10 addObject:v13];
                goto LABEL_20;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v19 = obj;

  if ([v10 count])
  {
    v22 = [obj arrayByExcludingObjectsInArray:v10];

    v19 = v22;
  }

  v7 = v23;
  a3 = v24;
  if (v24)
  {
    goto LABEL_24;
  }

LABEL_28:

  return v19;
}

void sub_189392A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 40));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 120));
  objc_destroyWeak((v8 - 112));
  _Unwind_Resume(a1);
}

void ___appCanRevealSearchBarPlacementAccurately_block_invoke()
{
  v6 = [MEMORY[0x1E695DF70] arrayWithObject:@"com.apple.swiftUIQA.SwiftUITester"];
  v0 = _UIMainBundleIdentifier();
  v1 = [v6 containsObject:v0];

  if (v1)
  {
    _appCanRevealSearchBarPlacementAccurately_shouldRely = 0;
  }

  v2 = _UIKitPreferencesOnce();
  v3 = [v2 objectForKeyedSubscript:@"AppCanRevealSearchBarPlacementAccurately"];

  if (v3)
  {
    _appCanRevealSearchBarPlacementAccurately_shouldRely = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"AppCanRevealSearchBarPlacementAccurately"];

    if (v5)
    {
      _appCanRevealSearchBarPlacementAccurately_shouldRely = [v5 BOOLValue];
    }
  }
}

uint64_t _barItemHidden(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _barItemHidden];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double totalSpaceForSpaceItems(void *a1, int a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 systemItem] == 6)
        {
          [v11 width];
          v9 = v9 + v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v13 = fmax(v9, a3);
  if (a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

id __slideTransitionFadeMaskImage(int a1)
{
  if (qword_1ED49B2C8 == -1)
  {
    if (a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&qword_1ED49B2C8, &__block_literal_global_327);
    if (a1)
    {
      goto LABEL_5;
    }
  }

  if (qword_1ED49B2D0 != -1)
  {
    dispatch_once(&qword_1ED49B2D0, &__block_literal_global_333_0);
  }

LABEL_5:
  v2 = 5;
  if (a1)
  {
    v2 = 4;
  }

  v3 = _MergedGlobals_29_0[v2];

  return v3;
}

BOOL _dontCrossfadeBarButtonItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] == 1 && objc_msgSend(v4, "count") == 1)
  {
    v5 = [v3 lastObject];
    v6 = [v4 lastObject];
    v7 = [v5 isSystemItem];
    if (v7 != [v6 isSystemItem])
    {
      goto LABEL_9;
    }

    if ([v5 isSystemItem])
    {
      v8 = [v5 systemItem];
      if (v8 == [v6 systemItem])
      {
        v9 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    if ([v5 isSystemItem])
    {
LABEL_9:
      v9 = 0;
      goto LABEL_10;
    }

    v11 = [v5 title];
    if (![v11 length])
    {
      goto LABEL_17;
    }

    v12 = [v5 title];
    v13 = [v6 title];
    if ([v12 isEqualToString:v13])
    {
      v14 = [v5 view];
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v19 = [v6 view];
      [v19 frame];
      v21 = v20;
      v23 = v22;

      v9 = 0;
      if (v16 != v21 || v18 != v23)
      {
        goto LABEL_10;
      }

      v11 = [v5 backgroundImageForState:0 style:objc_msgSend(v5 barMetrics:{"style"), 0}];
      if (v11)
      {
LABEL_17:
        v9 = 0;
LABEL_20:

        goto LABEL_10;
      }

      v12 = [v6 backgroundImageForState:0 style:objc_msgSend(v6 barMetrics:{"style"), 0}];
      v9 = v12 == 0;
    }

    else
    {

      v9 = 0;
    }

    goto LABEL_20;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

double _hitAreaRightEdge(void *a1, void *a2, double a3)
{
  v5 = a2;
  [a1 frame];
  width = v9.size.width;
  MaxX = CGRectGetMaxX(v9);
  if (v5)
  {
    [v5 frame];
    a3 = (MaxX + CGRectGetMinX(v10)) * 0.5;
  }

  return fmin(MaxX + fmin(width * 0.5, 20.0), a3);
}

double _hitAreaLeftEdge(void *a1, void *a2, double a3)
{
  v5 = a1;
  [a2 frame];
  width = v9.size.width;
  MinX = CGRectGetMinX(v9);
  if (v5)
  {
    [v5 frame];
    a3 = (MinX + CGRectGetMaxX(v10)) * 0.5;
  }

  return fmax(a3, MinX - fmin(width * 0.5, 20.0));
}

BOOL _UIPointInsideNavigationBarTouchExtremaForBackButton(void *a1, int a2, double a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v15 = _UINavigationBarTouchExtremaForBackButtonView(a1, a3);
  if (!a2)
  {
    return a4 <= v15;
  }

  v17.origin.x = a6;
  v17.origin.y = a7;
  v17.size.width = a8;
  v17.size.height = a9;
  return a4 >= CGRectGetMaxX(v17) - v15;
}

double _UINavigationBarTouchExtremaForBackButtonView(void *a1, double a2)
{
  v3 = a1;
  [v3 frame];
  v5 = a2 + a2 + v4;
  v6 = UIApp;
  v7 = [v3 window];

  v8 = [v6 _safeInterfaceOrientationForWindowIfExists:v7];
  v9 = 100.0;
  if ((v8 - 3) < 2)
  {
    v9 = 75.0;
  }

  v10 = fmax(v5, v9);

  _UIControlMostlyInsideEdgeInsets();
  return v10;
}

void ____slideTransitionFadeMaskImage_block_invoke()
{
  v0 = [UIImage kitImageNamed:@"UINavigationBarTitleTransitionMask"];
  v1 = qword_1ED49B2B8;
  qword_1ED49B2B8 = v0;
}

void ____slideTransitionFadeMaskImage_block_invoke_2()
{
  [qword_1ED49B2B8 size];
  v1 = v0;
  v3 = v2;
  v4 = [UIGraphicsImageRenderer alloc];
  v5 = [qword_1ED49B2B8 imageRendererFormat];
  v6 = [(UIGraphicsImageRenderer *)v4 initWithSize:v5 format:v1, v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ____slideTransitionFadeMaskImage_block_invoke_3;
  v9[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v9[4] = v1;
  *&v9[5] = v3;
  v7 = [(UIGraphicsImageRenderer *)v6 imageWithActions:v9];
  v8 = qword_1ED49B2C0;
  qword_1ED49B2C0 = v7;
}

uint64_t ____slideTransitionFadeMaskImage_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextTranslateCTM(v3, *(a1 + 32), 0.0);
  CGContextScaleCTM(v3, -1.0, 1.0);
  v4 = qword_1ED49B2B8;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);

  return [v4 drawAtPoint:17 blendMode:v5 alpha:{v6, 1.0}];
}

void sub_1893A936C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893A9758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1893B0E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _clippingMaskForFrame(void *a1, void *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = a1;
  v16 = a2;
  v17 = objc_alloc_init(MEMORY[0x1E6979398]);
  v41.origin.x = a5;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  Width = CGRectGetWidth(v41);
  v42.origin.x = a5;
  v42.origin.y = a6;
  v42.size.width = a7;
  v42.size.height = a8;
  Height = CGRectGetHeight(v42);
  [v17 setBounds:{0.0, 0.0, Width, Height}];
  v20 = *MEMORY[0x1E695EFF8];
  v21 = *(MEMORY[0x1E695EFF8] + 8);
  [v17 setAnchorPoint:{*MEMORY[0x1E695EFF8], v21}];
  [v17 setPosition:{a5, a6}];
  [v15 size];
  v23 = v22;
  [v16 size];
  v25 = v24;
  if (v15)
  {
    v26 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v26 setContents:{objc_msgSend(v15, "CGImage")}];
    [v15 size];
    _positionMaskWithSizeInBounds(v26, 0, v27, v28, 0.0, 0.0, Width, Height);
    [v26 setAnchorPoint:{v20, v21}];
    [v15 scale];
    [v26 setContentsScale:?];
    if (a3)
    {
      v29 = v26;
      *a3 = v26;
    }

    [v17 addSublayer:v26];
  }

  v30 = objc_alloc_init(MEMORY[0x1E6979398]);
  v31 = +[UIColor redColor];
  [v30 setBackgroundColor:{objc_msgSend(v31, "CGColor")}];

  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = Width;
  v43.size.height = Height;
  v32 = fmax(CGRectGetWidth(v43) - v23 - v25, 0.0);
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = Width;
  v44.size.height = Height;
  [v30 setBounds:{0.0, 0.0, v32, CGRectGetHeight(v44)}];
  [v30 setAnchorPoint:{v20, v21}];
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = Width;
  v45.size.height = Height;
  v33 = v23 + CGRectGetMinX(v45);
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = Width;
  v46.size.height = Height;
  [v30 setPosition:{v33, CGRectGetMinY(v46)}];
  if (a4)
  {
    v34 = v30;
    *a4 = v30;
  }

  [v17 addSublayer:v30];
  if (v16)
  {
    v35 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v35 setContents:{objc_msgSend(v16, "CGImage")}];
    [v16 size];
    _positionMaskWithSizeInBounds(v35, 1, v36, v37, 0.0, 0.0, Width, Height);
    [v35 setAnchorPoint:{v20, v21}];
    [v16 scale];
    [v35 setContentsScale:?];
    [v17 addSublayer:v35];
    if (a3)
    {
      v38 = v35;
      *a3 = v35;
    }
  }

  return v17;
}

void _positionMaskWithSizeInBounds(void *a1, int a2, double a3, CGFloat Height, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17 = a1;
  if (fabs(Height + -1.0) < 2.22044605e-16)
  {
    v19.origin.x = a5;
    v19.origin.y = a6;
    v19.size.width = a7;
    v19.size.height = a8;
    Height = CGRectGetHeight(v19);
  }

  v15 = 0.0;
  [v17 setBounds:{0.0, 0.0, a3, Height}];
  if (a2)
  {
    v20.origin.x = a5;
    v20.origin.y = a6;
    v20.size.width = a7;
    v20.size.height = a8;
    v15 = CGRectGetMaxX(v20) - a3;
  }

  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  MinY = CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  [v17 setPosition:{v15, MinY + (CGRectGetHeight(v22) - Height) * 0.5}];
}

id _slideTransitionFadeMaskImage(int a1)
{
  if (qword_1ED49C9D0 == -1)
  {
    if (a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&qword_1ED49C9D0, &__block_literal_global_69);
    if (a1)
    {
      goto LABEL_5;
    }
  }

  if (qword_1ED49C9D8 != -1)
  {
    dispatch_once(&qword_1ED49C9D8, &__block_literal_global_6_0);
  }

LABEL_5:
  v2 = &_MergedGlobals_1011;
  if (!a1)
  {
    v2 = &qword_1ED49C9C8;
  }

  v3 = *v2;

  return v3;
}

void ___slideTransitionFadeMaskImage_block_invoke()
{
  v0 = [UIImage kitImageNamed:@"UINavigationBarTitleTransitionMask"];
  v1 = _MergedGlobals_1011;
  _MergedGlobals_1011 = v0;
}

void ___slideTransitionFadeMaskImage_block_invoke_2()
{
  [_MergedGlobals_1011 size];
  v1 = v0;
  v3 = v2;
  v4 = [UIGraphicsImageRenderer alloc];
  v5 = [_MergedGlobals_1011 imageRendererFormat];
  v6 = [(UIGraphicsImageRenderer *)v4 initWithSize:v5 format:v1, v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___slideTransitionFadeMaskImage_block_invoke_3;
  v9[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v9[4] = v1;
  *&v9[5] = v3;
  v7 = [(UIGraphicsImageRenderer *)v6 imageWithActions:v9];
  v8 = qword_1ED49C9C8;
  qword_1ED49C9C8 = v7;
}

uint64_t ___slideTransitionFadeMaskImage_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextTranslateCTM(v3, *(a1 + 32), 0.0);
  CGContextScaleCTM(v3, -1.0, 1.0);
  v4 = _MergedGlobals_1011;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);

  return [v4 drawAtPoint:17 blendMode:v5 alpha:{v6, 1.0}];
}

void sub_1893B344C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _hitTestInsets(void *a1, void *a2, void *a3, int a4, double a5)
{
  v9 = a2;
  v10 = a3;
  [a1 frame];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  if (a4)
  {
    if (v10)
    {
      [v10 frame];
      a5 = floor((MinX + CGRectGetMaxX(v21)) * 0.5);
    }

    v17 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v17 frame];
    floor((MaxX + CGRectGetMinX(v23)) * 0.5);
    goto LABEL_10;
  }

  if (v9)
  {
    [v9 frame];
    a5 = floor((MinX + CGRectGetMaxX(v22)) * 0.5);
  }

  v17 = v10;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:

  return -fmax(fmin(MinX - a5, 11.0), 0.0);
}

void sub_1893BB7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UINavigationBarExcessiveLineHeightOutsetsForFontInView(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    CTFontGetLanguageAwareOutsets();
    UICeilToViewScale(v2);
    UICeilToViewScale(v2);
    UICeilToViewScale(v2);
    UICeilToViewScale(v2);
  }
}

void _UIUpdateSequenceRemoveItem(_UIUpdateSequenceItemInternal *a1)
{
  if (a1)
  {
    v1 = *(a1 + 6);
    if (v1)
    {
      *(a1 + 6) = v1 | 2;
    }

    else
    {
      _removeItem(a1);
    }
  }
}

void _UIUpdateSequenceRun(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = *a1;
  if (*a1)
  {
    do
    {
      v6 = v3[5];
      if (v6)
      {
        *(v3 + 6) |= 1u;
        (*(v6 + 16))(v6, v3[4], a2, a3);
        v7 = *(v3 + 6);
        *(v3 + 6) = v7 & 0xFFFFFFFE;
        v8 = *v3;
        if ((v7 & 2) != 0)
        {
          _removeItem(v3);
        }
      }

      else
      {
        v8 = *v3;
      }

      v3 = v8;
    }

    while (v8);
  }
}

uint64_t std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

void sub_1893BD4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893BD678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893BD998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893BE07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1893BE2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void _confirmIOSorVisionOSVisualProvider(void *a1)
{
  v3 = a1;
  if ([v3 visualProviderType] != 2 && objc_msgSend(v3, "visualProviderType") != 4)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _confirmIOSorVisionOSVisualProvider(_UISearchBarVisualProviderBase *__strong)"];
    [v1 handleFailureInFunction:v2 file:@"UISearchBar.m" lineNumber:1597 description:@"Code path only allowed for iOS or visionOS visual provider. This is a UIKit bug."];
  }
}

void _confirmTVOSVisualProvider(void *a1)
{
  if ([a1 visualProviderType] != 3)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _confirmTVOSVisualProvider(_UISearchBarVisualProviderBase *__strong)"];
    [v2 handleFailureInFunction:v1 file:@"UISearchBar.m" lineNumber:3006 description:@"Code path not allowed for any visual provider other than TVOS. This is a UIKit bug."];
  }
}

id _UISearchBarBackgroundFillColor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else if (a1)
  {
    v5 = [UIColor colorWithRed:0.180392157 green:0.180392157 blue:0.160784314 alpha:1.0];
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      +[UIColor systemBackgroundColor];
    }

    else
    {
      +[UIColor _searchBarBackgroundColor];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

void ManipulateTextStorage(void *a1, int a2, void *a3)
{
  v11 = a1;
  v5 = a3;
  v6 = [v11 inputDelegate];
  [v6 textWillChange:v11];

  v7 = [v11 textStorage];
  [v7 coordinateEditing:v5];

  WeakRetained = objc_loadWeakRetained(v11 + 150);
  v9 = WeakRetained;
  if (a2)
  {
    [WeakRetained _searchFieldTokensChanged];
  }

  else
  {
    [WeakRetained _searchFieldTextChanged:1];
  }

  v10 = [v11 inputDelegate];
  [v10 textDidChange:v11];
}

void PreservingSelectionForTokenChange(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v15 = a1;
  v7 = a4;
  v8 = [v15 _selectedNSRange];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7[2](v7);
    goto LABEL_17;
  }

  v10 = v8;
  v11 = v9;
  if ((a3 < 1 || a2 > v8) && ((a3 & 0x8000000000000000) == 0 || a2 >= v8))
  {
    if (a2 - v8 < v9 && a2 >= v8)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    v11 = v13 + v9;
    v7[2](v7);
    goto LABEL_16;
  }

  v10 = v8 + a3;
  v7[2](v7);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    v14 = [v15 _textRangeFromNSRange:{v10, v11}];
    [v15 setSelectedTextRange:v14];

    [v15 _scrollRangeToVisible:v10 animated:{v11, 0}];
  }

LABEL_17:
}

void sub_1893CBBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893CC52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893CE454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D1C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D1E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D1F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D2E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D3040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D32C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D34A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D3690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D3878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D3BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D3DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D3FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D4188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893D436C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893DD0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1893DD3DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1893DFBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIGameControllerNotifyRelevantSystemUIWillShow(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!GameControllerLibraryCore_frameworkLibrary)
  {
    GameControllerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (GameControllerLibraryCore_frameworkLibrary)
  {
    v5 = [v3 _gameControllerSceneComponent];
    [v5 prepareSystemUIWithView:v4];
  }
}

uint64_t __GameControllerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GameControllerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1893E692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UISearchBarLayoutStateDebugDescription(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unknown _UISearchBarLayoutState";
  }

  else
  {
    return off_1E70F8B68[a1 + 1];
  }
}

void RaiseForUnexpectedLayoutState(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 != a2 && ((a1 - 3) < 0xFFFFFFFFFFFFFFFELL || (a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        if ((a1 + 1) > 4)
        {
          v9 = @"Unknown _UISearchBarLayoutState";
        }

        else
        {
          v9 = off_1E70F8B68[a1 + 1];
        }

        if ((a2 + 1) > 4)
        {
          v10 = @"Unknown _UISearchBarLayoutState";
        }

        else
        {
          v10 = off_1E70F8B68[a2 + 1];
        }

        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected layoutState, %@, in transition request. Expected %@. This is an internal UIKit problem.", &v11, 0x16u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &RaiseForUnexpectedLayoutState___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if ((a1 + 1) > 4)
        {
          v5 = @"Unknown _UISearchBarLayoutState";
        }

        else
        {
          v5 = off_1E70F8B68[a1 + 1];
        }

        if ((a2 + 1) > 4)
        {
          v6 = @"Unknown _UISearchBarLayoutState";
        }

        else
        {
          v6 = off_1E70F8B68[a2 + 1];
        }

        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        v7 = v4;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected layoutState, %@, in transition request. Expected %@. This is an internal UIKit problem.", &v11, 0x16u);
      }
    }
  }
}

void sub_1893EC330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1893F8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1893FB77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1893FB98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1893FF598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getITTAppKeyboardHostClass_block_invoke(uint64_t a1)
{
  if (!qword_1ED49CA70)
  {
    qword_1ED49CA70 = _sl_dlopen();
  }

  result = objc_getClass("ITTAppKeyboardHost");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputTeletypeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49CA70 = result;
  return result;
}

__CFString *UIWritingToolsCoordinatorTextAnimationDebugDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown text animation";
  }

  else
  {
    return off_1E70F93C8[a1];
  }
}

__CFString *_UIWritingToolsCoordinatorStateDebugDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70F93A8[a1];
  }
}

void sub_18940C158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18940C658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18940DF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18940E154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_18940EEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18940F46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void _confirmMatchingWritingToolsSession(void *a1, void *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  v16 = v5;
  v7 = v6;
  v8 = v7;
  if (v16 == v7)
  {

    v10 = v16;
LABEL_14:

    goto LABEL_15;
  }

  if (!v16 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [v16 isEqual:v7];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v11 = MEMORY[0x1E696AEC0];
    v12 = NSStringFromSelector(a3);
    v13 = v12;
    if (v16)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"different active session %@", v16];
      v10 = [v11 stringWithFormat:@"-%@ for session %@ with %@", v13, v8, v14];
    }

    else
    {
      v10 = [v11 stringWithFormat:@"-%@ for session %@ with %@", v12, v8, @"no active session"];
    }

    if (os_variant_has_internal_diagnostics())
    {
      v15 = [@"Problem with WritingTools delegate-message delivery. " stringByAppendingString:v10];

      v10 = v15;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v10}];
    goto LABEL_14;
  }

LABEL_15:
}

void sub_18941031C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189410C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  _Block_object_dispose((v31 - 160), 8);
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v31 - 112));
  _Unwind_Resume(a1);
}

void sub_189411524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189412154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189413208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _confirmNonOverlappingSubrangesContainedInOrEqualToRange(NSUInteger a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    length = 0;
    v7 = *v19;
    v8 = *MEMORY[0x1E695D940];
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) rangeValue];
        v13 = v11;
        v14 = v12;
        if (location == 0x7FFFFFFFFFFFFFFFLL)
        {
          length = v12;
          location = v11;
        }

        else
        {
          if (location + length < v11)
          {
            [MEMORY[0x1E695DF30] raise:v8 format:{@"Range {%lu, %lu} was divided into overlapping subranges: %@", a1, a2, v3}];
          }

          v24.location = location;
          v24.length = length;
          v25.location = v13;
          v25.length = v14;
          v15 = NSUnionRange(v24, v25);
          location = v15.location;
          length = v15.length;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (location < a1 || location + length > a1 + a2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Subranges overflow divided range {%lu, %lu}: %@", a1, a2, v3}];
  }
}

void sub_189413754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189414ECC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_189415138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18941571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 168));
  _Unwind_Resume(a1);
}

void sub_189415B68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_189416348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1894169DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894172EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189418170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 80));
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 96));
  _Unwind_Resume(a1);
}

void sub_1894185D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v13 + 64));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v12 + 40));
  objc_destroyWeak((v14 - 120));
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_189418EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak(va);
  objc_destroyWeak((v13 - 88));
  _Unwind_Resume(a1);
}

void sub_1894190E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894192FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189419B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 200));
  _Unwind_Resume(a1);
}

void sub_18941A278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v31 + 64));
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18941A9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_18941AC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v15 + 88));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v16 - 136));
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18941B514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_18941B890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18941C0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18941CE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 96));
  _Unwind_Resume(a1);
}

id _UIEditMenuGetPlatformMetrics(uint64_t a1)
{
  v2 = _UIEditMenuGetPlatformMetrics_metricsByIdiom;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    if (!_UIEditMenuGetPlatformMetrics_metricsByIdiom)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = _UIEditMenuGetPlatformMetrics_metricsByIdiom;
      _UIEditMenuGetPlatformMetrics_metricsByIdiom = v5;
    }

    v7 = [_UIVisualStyleRegistry registryForIdiom:a1];
    [v7 visualStyleClassForStylableClass:objc_opt_class()];

    v4 = objc_opt_new();
    v8 = _UIEditMenuGetPlatformMetrics_metricsByIdiom;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    [v8 setObject:v4 forKey:v9];
  }

  return v4;
}

void sub_189432FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189433458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189433B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_18943431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189434530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189434800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189434DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_189435140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189436018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189436778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894369AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189436BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UITabChildrenCount(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 _isGroup])
        {
          v9 = [v8 children];
          v2 += _UITabChildrenCount();
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

void BarButtonItemGetSystemItemStyle_KitAsset(uint64_t *a1, void *a2, void *a3, void *a4, char **a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a7;
  v13 = 0;
  v14 = 0;
  v15 = 0.0;
  v16 = 1;
  v17 = a10;
  v46 = a4;
  v45 = a3;
  if (a9 <= 99)
  {
    v18 = 0;
    v19 = 1;
    v20 = 0;
    v21 = 1;
    v22 = 0;
    switch(a9)
    {
      case 0:
        v48 = _UINSLocalizedStringWithDefaultValue(@"Done", @"Done");
        v23 = 0;
        v14 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 1;
        v17 = 2;
        v21 = 1;
        break;
      case 1:
        v48 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
        v23 = 0;
        v14 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 1;
        v21 = 1;
        goto LABEL_52;
      case 2:
        v48 = _UINSLocalizedStringWithDefaultValue(@"Edit", @"Edit");
        v23 = 0;
        v14 = 0;
        v20 = 0;
        v24 = 0;
        v21 = 1;
        v25 = 1;
LABEL_52:
        v17 = 1;
        break;
      case 3:
        v48 = _UINSLocalizedStringWithDefaultValue(@"Save", @"Save");
        v23 = 0;
        v14 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 1;
        v17 = 2;
        v21 = 1;
        break;
      case 4:
        v16 = 0;
        v19 = 0;
        v13 = 0;
        v22 = 0;
        v21 = 1;
        v20 = @"UIButtonBarNewLandscape.png";
        v18 = @"UIButtonBarNewSmall.png";
        v14 = @"UIButtonBarNew.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 5:
      case 6:
        goto LABEL_87;
      case 7:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v22 = 0;
        v15 = 4.0;
        v20 = @"UIButtonBarComposeLandscape.png";
        v14 = @"UIButtonBarCompose.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 8:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v20 = @"UIButtonBarReplyLandscape.png";
        v22 = 1;
        v14 = @"UIButtonBarReply.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 9:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarActionSmall.png";
        v14 = @"UIButtonBarAction.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 10:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarOrganizeLandscape.png";
        v14 = @"UIButtonBarOrganize.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 11:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarBookmarksLandscape.png";
        v14 = @"UIButtonBarBookmarks.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 12:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarSearchLandscape.png";
        v14 = @"UIButtonBarSearch.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 13:
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarRefreshLandscape.png";
        v21 = 1;
        v14 = @"UIButtonBarRefresh.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 14:
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarStopLandscape.png";
        v21 = 1;
        v14 = @"UIButtonBarStop.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 15:
        v16 = 0;
        v20 = 0;
        v22 = 0;
        v18 = @"UIButtonBarCameraSmall.png";
        v21 = 1;
        v13 = 1;
        v14 = @"UIButtonBarCamera.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 16:
        v18 = 0;
        v19 = 0;
        v21 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarTrashLandscape.png";
        v14 = @"UIButtonBarTrash.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 17:
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarPlayLandscape.png";
        v21 = 1;
        v14 = @"UIButtonBarPlay.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 18:
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarPauseLandscape.png";
        v21 = 1;
        v14 = @"UIButtonBarPause.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 19:
        v18 = 0;
        v20 = 0;
        v13 = 0;
        v22 = 0;
        v21 = 1;
        v14 = @"UIButtonBarRewind.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 20:
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v22 = 0;
        v20 = @"UIButtonBarFastForwardLandscape.png";
        v21 = 1;
        v14 = @"UIButtonBarFastForward.png";
        if (!a10)
        {
          goto LABEL_20;
        }

        goto LABEL_88;
      case 21:
        v48 = _UINSLocalizedStringWithDefaultValue(@"Undo", @"Undo");
        v14 = 0;
        v20 = 0;
        v24 = 0;
        v23 = sel_undo_;
        goto LABEL_74;
      case 22:
        v48 = _UINSLocalizedStringWithDefaultValue(@"Redo", @"Redo");
        v14 = 0;
        v20 = 0;
        v24 = 0;
        v23 = sel_redo_;
LABEL_74:
        v17 = 1;
        v25 = 1;
        v21 = 1;
        break;
      case 23:
        if (a6 == 2)
        {
          v44 = @"UIButtonBarPageCurlSelectedDown.png";
          if (a7)
          {
            v44 = @"UIButtonBarPageCurlSelectedDownLandscape.png";
          }

          v24 = v44;
          v23 = 0;
          v25 = 0;
          v21 = 0;
          v48 = 0;
          v17 = 1;
          v20 = @"UIButtonBarPageCurlBlackTranslucentLandscape.png";
          v14 = @"UIButtonBarPageCurlBlackTranslucent.png";
        }

        else if (a6 == 1)
        {
          v43 = @"UIButtonBarPageCurlSelectedDown.png";
          if (a7)
          {
            v43 = @"UIButtonBarPageCurlSelectedDownLandscape.png";
          }

          v24 = v43;
          v23 = 0;
          v25 = 0;
          v21 = 0;
          v48 = 0;
          v17 = 1;
          v20 = @"UIButtonBarPageCurlBlackOpaqueLandscape.png";
          v14 = @"UIButtonBarPageCurlBlackOpaque.png";
        }

        else if (a6)
        {
          v23 = 0;
          v14 = 0;
          v20 = 0;
          v24 = 0;
          v21 = 0;
          v48 = 0;
          v17 = 1;
          v25 = 1;
        }

        else
        {
          v27 = @"UIButtonBarPageCurlSelectedDown.png";
          if (a7)
          {
            v27 = @"UIButtonBarPageCurlSelectedDownLandscape.png";
          }

          v24 = v27;
          v23 = 0;
          v25 = 0;
          v21 = 0;
          v48 = 0;
          v17 = 1;
          v20 = @"UIButtonBarPageCurlDefaultLandscape.png";
          v14 = @"UIButtonBarPageCurlDefault.png";
        }

        break;
      default:
        goto LABEL_144;
    }

    v22 = 0;
    v13 = 0;
    if (v10)
    {
      if ((v25 & 1) == 0)
      {
LABEL_102:
        if (v21)
        {
          v26 = 0.75;
        }

        else
        {
          v26 = 1.0;
        }

        goto LABEL_112;
      }

      goto LABEL_92;
    }

LABEL_95:
    v28 = v21 == 0;
    v29 = 1.0;
    v30 = 0.75;
LABEL_96:
    if (v28)
    {
      v26 = v29;
    }

    else
    {
      v26 = v30;
    }

    if (!v14)
    {
      goto LABEL_126;
    }

    goto LABEL_111;
  }

  if (a9 <= 103)
  {
    if (a9 > 101)
    {
      if (a9 == 102)
      {
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v20 = @"UIButtonBarArrowRightLandscape.png";
        v21 = 1;
        v22 = 1;
        v14 = @"UIButtonBarArrowRight.png";
        if (a10)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v16 = 0;
        v20 = 0;
        v13 = 0;
        v22 = 0;
        v19 = 1;
        v18 = @"UIButtonBarArrowUpSmall.png";
        v21 = 1;
        v14 = @"UIButtonBarArrowUp.png";
        if (a10)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      if (a9 != 100)
      {
        v18 = 0;
        v19 = 0;
        v13 = 0;
        v20 = @"UIButtonBarArrowLeftLandscape.png";
        v21 = 1;
        v22 = 1;
        goto LABEL_19;
      }

      v16 = 0;
      v20 = 0;
      v13 = 0;
      v22 = 0;
      v19 = 1;
      v18 = @"UIButtonBarLocateSmall.png";
      v21 = 1;
      v14 = @"UIButtonBarLocate.png";
      if (a10)
      {
        goto LABEL_88;
      }
    }

LABEL_20:
    if (a7)
    {
      if (!v19)
      {
        v23 = 0;
        v24 = 0;
        v48 = 0;
        v17 = 0;
        v26 = 1.0;
        goto LABEL_112;
      }

      v17 = 0;
      v48 = 0;
      v24 = 0;
      v23 = 0;
      if (v16)
      {
        v26 = 0.75;
      }

      else
      {
        v14 = v18;
        v26 = 1.0;
      }

      if (!v16)
      {
        v15 = 0.0;
      }

      if (!v14)
      {
LABEL_126:
        v32 = 0;
        v31 = 0;
        if (!v22)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v17 = 0;
      v48 = 0;
      v24 = 0;
      v23 = 0;
      v26 = 1.0;
      if (!v14)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_111;
  }

  if (a9 <= 105)
  {
    if (a9 != 104)
    {
      v18 = 0;
      v19 = 0;
      v13 = 0;
      v22 = 0;
      v20 = @"UIButtonBarArrowLeftLandscape.png";
      v21 = 1;
LABEL_19:
      v14 = @"UIButtonBarArrowLeft.png";
      if (!a10)
      {
        goto LABEL_20;
      }

      goto LABEL_88;
    }

    v16 = 0;
    v20 = 0;
    v13 = 0;
    v22 = 0;
    v19 = 1;
    v18 = @"UIButtonBarArrowDownSmall.png";
    v21 = 1;
    v14 = @"UIButtonBarArrowDown.png";
    if (a10)
    {
      goto LABEL_88;
    }

    goto LABEL_20;
  }

  if (a9 == 106)
  {
    v18 = 0;
    v19 = 0;
    v13 = 0;
    v22 = 0;
    v20 = @"UIButtonBarArrowRightLandscape.png";
    v21 = 1;
    v14 = @"UIButtonBarArrowRight.png";
LABEL_87:
    if (a10)
    {
      goto LABEL_88;
    }

    goto LABEL_20;
  }

  if (a9 == 107)
  {
    v18 = 0;
    v20 = 0;
    v13 = 0;
    v22 = 0;
    v19 = 1;
    v21 = 1;
    v14 = @"UIButtonBarPreviousSlide.png";
    if (a10)
    {
      goto LABEL_88;
    }

    goto LABEL_20;
  }

  if (a9 != 108)
  {
LABEL_144:
    v18 = 0;
    v19 = 1;
    v20 = 0;
    v21 = 1;
    v22 = 0;
    if (a10)
    {
      goto LABEL_88;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v20 = 0;
  v13 = 0;
  v22 = 0;
  v19 = 1;
  v21 = 1;
  v14 = @"UIButtonBarNextSlide.png";
  if (!a10)
  {
    goto LABEL_20;
  }

LABEL_88:
  if (a7)
  {
    if ((v19 & 1) == 0)
    {
      v48 = 0;
      v24 = 0;
      v23 = 0;
      goto LABEL_102;
    }

    if (v16)
    {
      v23 = 0;
      v24 = 0;
      v48 = 0;
LABEL_92:
      v28 = v21 == 0;
      v29 = 0.75;
      v30 = 0.5625;
      goto LABEL_96;
    }

    v48 = 0;
    v24 = 0;
    v23 = 0;
    if (v21)
    {
      v26 = 0.75;
    }

    else
    {
      v26 = 1.0;
    }

    v15 = 0.0;
  }

  else
  {
    v48 = 0;
    if (v16)
    {
      v24 = 0;
      v23 = 0;
      goto LABEL_95;
    }

    v15 = 0.0;
    v26 = 1.0;
    v24 = 0;
    v23 = 0;
  }

  v14 = v18;
  if (!v18)
  {
    goto LABEL_126;
  }

LABEL_111:
  v20 = v14;
LABEL_112:
  v31 = _UIImageWithName(v20);
  if (v24)
  {
    v32 = _UIImageWithName(v24);
  }

  else
  {
    v32 = 0;
  }

  v33 = 0.0;
  if (v26 != 1.0)
  {
    if (v31)
    {
      v34 = [v31 _imageScaledToProportion:3 interpolationQuality:v26];

      v31 = v34;
    }

    v33 = v26 * 0.0;
    v15 = v15 * v26;
    if (v32)
    {
      v35 = [v32 _imageScaledToProportion:3 interpolationQuality:v26];

      v32 = v35;
    }
  }

  if (!(v31 | v32))
  {
    goto LABEL_126;
  }

  if (v33 == 0.0 && v15 == 0.0)
  {
    if (v22)
    {
      goto LABEL_124;
    }

LABEL_127:
    v36 = v31;
    v37 = v32;
    if (!v13)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  [v31 _setAlignmentRectInsets:{v33, v33, v33, v15, v45, v46}];
  [v32 _setAlignmentRectInsets:{v33, v33, v33, v15}];
  if ((v22 & 1) == 0)
  {
    goto LABEL_127;
  }

LABEL_124:
  v36 = [v31 imageFlippedForRightToLeftLayoutDirection];

  v37 = [v32 imageFlippedForRightToLeftLayoutDirection];

  if ((v13 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_128:
  v38 = [v36 _imageThatSuppressesAccessibilityHairlineThickening];

  v39 = [v37 _imageThatSuppressesAccessibilityHairlineThickening];

  v37 = v39;
  v36 = v38;
LABEL_129:
  if (a1)
  {
    *a1 = v17;
  }

  if (a2)
  {
    v40 = v48;
    *a2 = v48;
  }

  if (v45)
  {
    v41 = v36;
    *v45 = v36;
  }

  if (v46)
  {
    v42 = v37;
    *v46 = v37;
  }

  if (a5)
  {
    *a5 = v23;
  }
}

void sub_1894426E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __UIKIT_DID_NOT_RECEIVE_A_REMOTE_CACONTEXT_FROM_COREANIMATION_INDICATING_A_POSSIBLE_BACKBOARDD_CRASH()
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v0 = _MergedGlobals_1025;
  v19 = _MergedGlobals_1025;
  if (!_MergedGlobals_1025)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getSDRDiagnosticReporterClass_block_invoke;
    v15[3] = &unk_1E70F2F20;
    v15[4] = &v16;
    __getSDRDiagnosticReporterClass_block_invoke(v15);
    v0 = v17[3];
  }

  v1 = v0;
  _Block_object_dispose(&v16, 8);
  v2 = objc_alloc_init(v0);
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v2 signatureWithDomain:@"UIKit" type:@"Crash" subType:@"MissingRemoteCAContext" detectedProcess:v4 triggerThresholdValues:0];

  v6 = dispatch_semaphore_create(0);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = ____UIKIT_DID_NOT_RECEIVE_A_REMOTE_CACONTEXT_FROM_COREANIMATION_INDICATING_A_POSSIBLE_BACKBOARDD_CRASH_block_invoke;
  v13 = &unk_1E70F97A8;
  v14 = v6;
  v7 = v6;
  [v2 snapshotWithSignature:v5 duration:0 events:0 payload:0 actions:&v10 reply:0.0];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __UIKIT_DID_NOT_RECEIVE_A_REMOTE_CACONTEXT_FROM_COREANIMATION_INDICATING_A_POSSIBLE_BACKBOARDD_CRASH(CAContext *__strong)"];
  [v8 handleFailureInFunction:v9 file:@"_UIContextBinder.m" lineNumber:499 description:@"Failed to create remote render context"];
}

void sub_1894449D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __UIKIT_DID_NOT_RECEIVE_A_LOCAL_CACONTEXT_FROM_COREANIMATION()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __UIKIT_DID_NOT_RECEIVE_A_LOCAL_CACONTEXT_FROM_COREANIMATION(CAContext *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"_UIContextBinder.m" lineNumber:505 description:@"Failed to create local render context"];
}

Class __getSDRDiagnosticReporterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49CC10)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F97C8;
    v8 = 0;
    qword_1ED49CC10 = _sl_dlopen();
  }

  if (!qword_1ED49CC10)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SymptomDiagnosticReporterLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIContextBinder.m" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSDRDiagnosticReporterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIContextBinder.m" lineNumber:28 description:{@"Unable to find class %s", "SDRDiagnosticReporter"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1025 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49CC10 = result;
  return result;
}

id getTUIEmojiUpscalerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1_2;
  v7 = _MergedGlobals_1_2;
  if (!_MergedGlobals_1_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIEmojiUpscalerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIEmojiUpscalerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189446628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189447418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUIEmojiUpscalerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4991D8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F9958;
    v8 = 0;
    qword_1ED4991D8 = _sl_dlopen();
  }

  if (!qword_1ED4991D8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardEmojiDraggableView.m" lineNumber:46 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIEmojiUpscaler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiUpscalerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardEmojiDraggableView.m" lineNumber:47 description:{@"Unable to find class %s", "TUIEmojiUpscaler"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  qword_1ED4991D8 = result;
  return result;
}

uint64_t __MessagesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4991E8 = result;
  return result;
}

id _UIHyperregionClasses()
{
  if (qword_1ED49CC20 != -1)
  {
    dispatch_once(&qword_1ED49CC20, &__block_literal_global_89);
  }

  v1 = _MergedGlobals_1026;

  return v1;
}

uint64_t _UIHyperregionIsBoundaryCrossedFromPointToPoint(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 _isBoundaryCrossedFromPoint:a2 toPoint:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_18944D718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_88n9_8_8_s0_s8(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void __destroy_helper_block_e8_88n7_8_s0_s8(uint64_t a1)
{
  v2 = *(a1 + 96);
}

void sub_18945A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18945B12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18945B694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18945BDD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18945EF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18945F098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18945F20C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18945F654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIDynamicButtonFeatureIsEnabled()
{
  if (qword_1ED49CC80 != -1)
  {
    dispatch_once(&qword_1ED49CC80, &__block_literal_global_102);
  }

  return _MergedGlobals_1031;
}

void sub_189460DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894629A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894639D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189464654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189464BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UIStringFromCompositionalLayoutResolveType(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70FA6A0[a1];
  }
}

void UICollectionViewCompositionalLayoutAlertForInvalidLayout(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void UICollectionViewCompositionalLayoutAlertForInvalidLayout(UICollectionViewCompositionalLayout *const __strong, NSInteger, _UICollectionLayoutContainer *const __strong, _UIContentInsetsEnvironment *const __strong, NSString *const __strong, BOOL)"}];
    v11 = objc_opt_class();
    v44.top = [(_UIContentInsetsEnvironment *)a4 effectiveInsets];
    v12 = NSStringFromDirectionalEdgeInsets(v44);
    if (a4)
    {
      v13 = *(a4 + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = _UIStringFromContentInsetsReference(v13);
    v15 = [a1 collectionView];
    [v15 frame];
    v16 = NSStringFromCGRect(v45);
    [v9 handleFailureInFunction:v10 file:@"UICollectionViewCompositionalLayout.m" lineNumber:1438 description:{@"<%@: %p> ran into an error when computing the layout for section at index %ld in container %@. Container calculated by applying insets (%@) from sectionInsetsReference %@ to collection view frame %@.\nError: %@", v11, a1, a2, a3, v12, v14, v16, a5}];
  }

  v17 = *(__UILogGetCategoryCachedImpl("UICollectionLayout", &UICollectionViewCompositionalLayoutAlertForInvalidLayout___s_category) + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = v17;
    v19 = objc_opt_class();
    v46.top = [(_UIContentInsetsEnvironment *)a4 effectiveInsets];
    v20 = NSStringFromDirectionalEdgeInsets(v46);
    if (a4)
    {
      v21 = *(a4 + 8);
    }

    else
    {
      v21 = 0;
    }

    v22 = _UIStringFromContentInsetsReference(v21);
    v23 = [a1 collectionView];
    [v23 frame];
    v24 = NSStringFromCGRect(v47);
    *buf = 138414082;
    v28 = v19;
    v29 = 2048;
    v30 = a1;
    v31 = 2048;
    v32 = a2;
    v33 = 2112;
    v34 = a3;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v24;
    v41 = 2112;
    v42 = a5;
    _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "<%@: %p> ran into an error when computing the layout for section at index %ld in container %@. Container calculated by applying insets (%@) from sectionInsetsReference %@ to collection view frame %@.\nUICollectionView behavior with this layout is undefined. Break on UICollectionViewCompositionalLayoutAlertForInvalidLayout to catch this in the debugger.\nError: %@", buf, 0x52u);
  }
}

void sub_18946A880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18946AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894709E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1894755FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGFloat _UIRectExpandByFactorAndUnitVector(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  if (fabs(a5) >= 2.22044605e-16)
  {
    v11 = fabs(a7);
    if (fabs(a6) >= 2.22044605e-16 || v11 >= 2.22044605e-16)
    {
      if (a5 < 0.0)
      {
        v18 = a6;
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIRectExpandByFactorAndUnitVector(CGRect, CGFloat, CGVector)"}];
        [v16 handleFailureInFunction:v17 file:@"_UICollectionLayoutHelpers.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"factor >= 0.0"}];

        a6 = v18;
      }

      v19.origin.x = a1;
      v19.origin.y = a2;
      v19.size.width = a3;
      v19.size.height = a4;
      v14 = a6 * a5 * CGRectGetWidth(v19);
      v20.origin.x = a1;
      v20.origin.y = a2;
      v20.size.width = a3;
      v20.size.height = a4;
      CGRectGetHeight(v20);
      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      CGRectGetWidth(v21);
      v22.origin.x = a1;
      v22.origin.y = a2;
      v22.size.width = a3;
      v22.size.height = a4;
      CGRectGetHeight(v22);
      if (v14 < 0.0)
      {
        return a1 + v14;
      }
    }
  }

  return a1;
}

double _UIRectMinPointValueAlongAxis(uint64_t a1, double a2, double a3)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UIRectMinPointValueAlongAxis(CGRect, UIAxis)"}];
    [v7 handleFailureInFunction:v8 file:@"_UICollectionLayoutHelpers.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"axis == UIAxisVertical || axis == UIAxisHorizontal"}];
  }

  return _UIPointValueForAxis(a1, a2, a3);
}

double _UITrailingOffsetForInsetsAlongAxis(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 == 2)
  {
    return a4;
  }

  if (a1 == 1)
  {
    return a5;
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UITrailingOffsetForInsetsAlongAxis(NSDirectionalEdgeInsets, UIAxis)"}];
  [v6 handleFailureInFunction:v7 file:@"_UICollectionLayoutHelpers.m" lineNumber:503 description:@"Unknown axis"];

  return 0.0;
}

uint64_t _UIDirectionalRectEdgesForLocationRelativeToRectWithDefaultEdges(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  if (CGRectIsNull(v25))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDirectionalRectEdge _UIDirectionalRectEdgesForLocationRelativeToRectWithDefaultEdges(CGPoint, CGRect, NSDirectionalRectEdge)"}];
    [v19 handleFailureInFunction:v20 file:@"_UICollectionLayoutHelpers.m" lineNumber:607 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsNull(rect)"}];

    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else if (!a1)
  {
    goto LABEL_7;
  }

  if ((~a1 & 5) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDirectionalRectEdge _UIDirectionalRectEdgesForLocationRelativeToRectWithDefaultEdges(CGPoint, CGRect, NSDirectionalRectEdge)"}];
    [v21 handleFailureInFunction:v22 file:@"_UICollectionLayoutHelpers.m" lineNumber:610 description:{@"Invalid parameter not satisfying: %@", @"!(defaultEdges & NSDirectionalRectEdgeBottom)"}];
  }

  if ((~a1 & 0xA) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDirectionalRectEdge _UIDirectionalRectEdgesForLocationRelativeToRectWithDefaultEdges(CGPoint, CGRect, NSDirectionalRectEdge)"}];
    [v23 handleFailureInFunction:v24 file:@"_UICollectionLayoutHelpers.m" lineNumber:613 description:{@"Invalid parameter not satisfying: %@", @"!(defaultEdges & NSDirectionalRectEdgeTrailing)"}];
  }

LABEL_7:
  v26.origin.x = a4;
  v26.origin.y = a5;
  v26.size.width = a6;
  v26.size.height = a7;
  if (CGRectIsEmpty(v26))
  {
    return 0;
  }

  v15 = a4 + a6 * 0.5;
  v16 = a5 + a7 * 0.5;
  v17 = 2;
  v18 = 8;
  if (a2 <= v15)
  {
    v18 = a1 & 0xA;
  }

  if (a2 >= v15)
  {
    v17 = v18;
  }

  if (a3 < v16)
  {
    return v17 | 1;
  }

  if (a3 <= v16)
  {
    return v17 | a1 & 5;
  }

  return v17 | 4;
}

double _UIUnitVectorFromDirectionalRectEdgeAndPermittedAxis(char a1, char a2)
{
  result = 0.0;
  v3 = -1.0;
  v4 = 1.0;
  if ((a1 & 8) == 0)
  {
    v4 = 0.0;
  }

  if ((a1 & 2) == 0)
  {
    v3 = v4;
  }

  if (a2)
  {
    return v3;
  }

  return result;
}

uint64_t _UILayoutAxisForAttributePair(void *a1, void *a2)
{
  [a1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [a2 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v30 = floor(CGRectGetMaxY(v31));
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  v29 = ceil(CGRectGetMinY(v32));
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  MinY = CGRectGetMinY(v33);
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v16;
  v34.size.height = v18;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v19 = ceil(CGRectGetMinX(v37));
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  v20 = floor(CGRectGetMaxX(v38));
  if (v30 <= v29 && v19 < v20)
  {
    return 2;
  }

  v22 = v30 > v29;
  v23 = ceil(MinY) >= floor(MaxY);
  if (floor(MaxX) > ceil(MinX))
  {
    v23 = 1;
  }

  if (v19 < v20)
  {
    v22 = 1;
  }

  return !v23 || !v22;
}

uint64_t _UILayoutAxisForAttributeTriple(void *a1, void *a2, void *a3)
{
  v6 = _UILayoutAxisForAttributePair(a1, a2);
  v7 = v6;
  v8 = _UILayoutAxisForAttributePair(a2, a3);
  if (v6 != v8)
  {
    v9 = v8;
    v10 = [a1 indexPath];
    v11 = [v10 section];

    v12 = [a2 indexPath];
    v13 = [v12 section];

    v14 = [a3 indexPath];
    v15 = [v14 section];

    if (v11 != v13 || v13 == v15)
    {
      if (v11 == v13 || (v7 = v9, v13 != v15))
      {
        [a2 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [a1 frame];
        v28 = UIDistanceBetweenRects(v17, v19, v21, v23, v24, v25, v26, v27);
        [a2 frame];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [a3 frame];
        if (v28 >= UIDistanceBetweenRects(v30, v32, v34, v36, v37, v38, v39, v40))
        {
          return v9;
        }

        else
        {
          return v6;
        }
      }
    }
  }

  return v7;
}

void _UIApplyRTLTransformForFrameWithDimension(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsInfinite(*&a1))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIApplyRTLTransformForFrameWithDimension(CGRect, CGFloat)"}];
    [v10 handleFailureInFunction:v11 file:@"_UICollectionLayoutHelpers.m" lineNumber:822 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsInfinite(frame)"}];
  }

  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  if (CGRectIsNull(v19))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIApplyRTLTransformForFrameWithDimension(CGRect, CGFloat)"}];
    [v12 handleFailureInFunction:v13 file:@"_UICollectionLayoutHelpers.m" lineNumber:823 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsNull(frame)"}];
  }

  if (a5 <= 0.0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIApplyRTLTransformForFrameWithDimension(CGRect, CGFloat)"}];
    [v14 handleFailureInFunction:v15 file:@"_UICollectionLayoutHelpers.m" lineNumber:824 description:{@"Invalid parameter not satisfying: %@", @"layoutDimension > 0"}];
  }

  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, a5, 0.0);
  v16 = v18;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformScale(&v17, &v16, -1.0, 1.0);
  v16 = v17;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectApplyAffineTransform(v20, &v16);
}

__CFString *_UIAxisDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E70FAE98[a1];
  }
}

void sub_18947C0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UICollectionLayoutDistanceBetweenPointsOnAxis(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if ((a1 - 1) > 1)
  {
    v5 = sqrt((a4 - a2) * (a4 - a2) + (a5 - a3) * (a5 - a3));
  }

  else
  {
    v5 = _UIPointValueForAxis(a1, a4 - a2, a5 - a3);
  }

  return fabs(v5);
}

__CFString *_UIStringFromContentInsetsReference(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70FAEE0[a1];
  }
}

void sub_189480B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189480EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189485C94(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x790], 8);
  _Block_object_dispose(&STACK[0x7B0], 8);
  _Block_object_dispose(&STACK[0x7D0], 8);
  _Block_object_dispose(&STACK[0x7F0], 8);
  _Unwind_Resume(a1);
}

void __UITextInputSessionAccidentalDictationIdentifyTruePositive_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = UITextInputSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134218242;
    v23 = a3;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] TP: Checking idx %lu: %@", &v22, 0x16u);
  }

  if (a3)
  {
    v9 = a1 + 32;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v10 = [v7 asDictationBegan];

      if (v10)
      {
        *(*(*v9 + 8) + 24) = 0;
        v11 = UITextInputSessionLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v22) = 0;
          v12 = "[UITextInputSessionAccidentalDictation] TP stage 2";
LABEL_12:
          _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, v12, &v22, 2u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

LABEL_14:
    v16 = [v7 asKeyboardDockItemButtonPress];
    v11 = v16;
    if (a3 && (!*(*(*v9 + 8) + 24) ? (v17 = v16 == 0) : (v17 = 1), !v17 && [v16 buttonType]== 1 && [v11 uiOrientation]== 1))
    {
      if ([v11 buttonPressResult]== 3)
      {
        *(*(*v9 + 8) + 24) = 0;
        v18 = UITextInputSessionLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v22) = 0;
          v19 = "[UITextInputSessionAccidentalDictation] TP stage 3";
LABEL_31:
          _os_log_debug_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEBUG, v19, &v22, 2u);
        }
      }

      else
      {
        v20 = [v11 buttonPressResult];
        v21 = *(*v9 + 8);
        if (v20 != 1)
        {
          *(v21 + 24) = 2;
          *a4 = 1;
          v18 = UITextInputSessionLog();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_25;
          }

          LOWORD(v22) = 0;
          v19 = "[UITextInputSessionAccidentalDictation] TP stage 5 - INVALID";
          goto LABEL_31;
        }

        *(v21 + 24) = 1;
        *(*(*(a1 + 40) + 8) + 24) = a3;
        *a4 = 1;
        v18 = UITextInputSessionLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v22) = 0;
          v19 = "[UITextInputSessionAccidentalDictation] TP stage 4 - VALID";
          goto LABEL_31;
        }
      }
    }

    else
    {
      *(*(*v9 + 8) + 24) = 2;
      *a4 = 1;
      v18 = UITextInputSessionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22) = 0;
        v19 = "[UITextInputSessionAccidentalDictation] TP stage 6 - INVALID";
        goto LABEL_31;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v13 = [v7 asInsertion];
  if (!v13 || (v14 = v13, v15 = [v7 source], v14, v15 != 2))
  {
    v9 = a1 + 32;
    goto LABEL_14;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v11 = UITextInputSessionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    v12 = "[UITextInputSessionAccidentalDictation] TP stage 1";
    goto LABEL_12;
  }

LABEL_26:
}

void __UITextInputSessionAccidentalDictationIdentifyFalsePositive_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = UITextInputSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218242;
    v21 = a3;
    v22 = 2112;
    v23 = v7;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] FP: Checking idx %lu: %@", &v20, 0x16u);
  }

  if (a3)
  {
    v9 = a1 + 32;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v10 = [v7 asDictationBegan];

      if (v10)
      {
        *(*(*v9 + 8) + 24) = 0;
        v11 = UITextInputSessionLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          v12 = "[UITextInputSessionAccidentalDictation] FP stage 2";
LABEL_11:
          _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, v12, &v20, 2u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }

LABEL_12:
    v14 = [v7 asKeyboardDockItemButtonPress];
    v11 = v14;
    if (a3 && (!*(*(*v9 + 8) + 24) ? (v15 = v14 == 0) : (v15 = 1), !v15 && [v14 buttonType]== 1 && [v11 uiOrientation]== 1))
    {
      if ([v11 buttonPressResult]== 3)
      {
        *(*(*v9 + 8) + 24) = 0;
        v16 = UITextInputSessionLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          v17 = "[UITextInputSessionAccidentalDictation] FP stage 3";
LABEL_29:
          _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, v17, &v20, 2u);
        }
      }

      else
      {
        v18 = [v11 buttonPressResult];
        v19 = *(*v9 + 8);
        if (v18 != 1)
        {
          *(v19 + 24) = 2;
          *a4 = 1;
          v16 = UITextInputSessionLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          LOWORD(v20) = 0;
          v17 = "[UITextInputSessionAccidentalDictation] FP stage 5 - INVALID";
          goto LABEL_29;
        }

        *(v19 + 24) = 1;
        *(*(*(a1 + 40) + 8) + 24) = a3;
        *a4 = 1;
        v16 = UITextInputSessionLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          v17 = "[UITextInputSessionAccidentalDictation] FP stage 4 - VALID";
          goto LABEL_29;
        }
      }
    }

    else
    {
      *(*(*v9 + 8) + 24) = 2;
      *a4 = 1;
      v16 = UITextInputSessionLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        v17 = "[UITextInputSessionAccidentalDictation] FP stage 6 - INVALID";
        goto LABEL_29;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  v13 = [v7 asDictationEnded];

  v9 = a1 + 32;
  if (!v13)
  {
    goto LABEL_12;
  }

  *(*(*v9 + 8) + 24) = 0;
  v11 = UITextInputSessionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    v12 = "[UITextInputSessionAccidentalDictation] FP stage 1";
    goto LABEL_11;
  }

LABEL_24:
}

_UITextInputSessionAcccidentalDictationResult *UITextInputSessionAccidentalDictationCheckForDictationResult(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v30 = objc_alloc_init(_UITextInputSessionAcccidentalDictationResult);
  [(_UITextInputSessionAcccidentalDictationResult *)v30 setResult:0];
  v2 = UITextInputSessionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] Received actions (most recent to oldest):", buf, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = UITextInputSessionLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation]  %lu: %@", buf, 0x16u);
          ++v5;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v4);
  }

  if ([v3 count] >= 2)
  {
    v10 = v3;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = -1;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __UITextInputSessionAccidentalDictationIdentifyTruePositive_block_invoke;
    v45 = &unk_1E70FB310;
    v46 = &v39;
    v47 = &v35;
    [v10 enumerateObjectsUsingBlock:buf];
    v11 = v36[3];
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);

    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = UITextInputSessionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.inputAnalytics.accidentalDictation";
        _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] %@: True Positive", buf, 0xCu);
      }

      [(_UITextInputSessionAcccidentalDictationResult *)v30 setResult:1];
      v13 = [v10 objectAtIndex:v11];
      v14 = [v13 asKeyboardDockItemButtonPress];
      [(_UITextInputSessionAcccidentalDictationResult *)v30 setTriggerAction:v14];
      goto LABEL_45;
    }

    v15 = v10;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = -1;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __UITextInputSessionAccidentalDictationIdentifyFalsePositive_block_invoke;
    v45 = &unk_1E70FB310;
    v46 = &v39;
    v47 = &v35;
    [v15 enumerateObjectsUsingBlock:buf];
    v16 = v36[3];
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);

    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = UITextInputSessionLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.inputAnalytics.accidentalDictation";
        _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] %@: False Positive", buf, 0xCu);
      }

      [(_UITextInputSessionAcccidentalDictationResult *)v30 setResult:2];
      v13 = [v15 objectAtIndex:v16];
      v14 = [v13 asKeyboardDockItemButtonPress];
      [(_UITextInputSessionAcccidentalDictationResult *)v30 setTriggerAction:v14];
      goto LABEL_45;
    }

    v18 = [v15 objectAtIndexedSubscript:0];
    v13 = [v18 asKeyboardDockItemButtonPress];

    v19 = [v15 objectAtIndexedSubscript:1];
    v14 = [v19 asKeyboardDockItemButtonPress];

    if ([v13 buttonType] == 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    if ([v14 buttonType] == 1)
    {
      v22 = v14;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    if (v21 && [v21 uiOrientation] == 1)
    {
      v24 = [v21 buttonPressResult] == 1;
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    if (v23 && [v23 buttonPressResult] == 2)
    {
      v26 = [v23 uiOrientation];
      if (((v21 == 0) | v25) == 1 && v26 == 1 && !v24)
      {
        v27 = UITextInputSessionLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = @"com.apple.inputAnalytics.accidentalDictation";
          _os_log_debug_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] %@: True Negative", buf, 0xCu);
        }

        v28 = 3;
LABEL_43:

        [(_UITextInputSessionAcccidentalDictationResult *)v30 setResult:v28];
        [(_UITextInputSessionAcccidentalDictationResult *)v30 setTriggerAction:v14];

LABEL_45:
        goto LABEL_46;
      }

      if (v26 == 1 && v24)
      {
        v27 = UITextInputSessionLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = @"com.apple.inputAnalytics.accidentalDictation";
          _os_log_debug_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] %@: False Negative", buf, 0xCu);
        }

        v28 = 4;
        goto LABEL_43;
      }
    }

    goto LABEL_45;
  }

LABEL_46:

  return v30;
}

void sub_189488DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

_UITextInputSessionAcccidentalDictationResult *UITextInputSessionAccidentalDictationCheckForGlobeResult(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(_UITextInputSessionAcccidentalDictationResult);
  [(_UITextInputSessionAcccidentalDictationResult *)v2 setResult:0];
  if ([v1 count])
  {
    v3 = [v1 objectAtIndexedSubscript:0];
    v4 = [v3 asKeyboardDockItemButtonPress];

    if ([v4 buttonType] == 2 && objc_msgSend(v4, "uiOrientation") == 1)
    {
      v5 = UITextInputSessionLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = @"com.apple.inputAnalytics.accidentalDictation";
        _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionAccidentalDictation] %@: Globe key press - reporting touch", &v10, 0xCu);
      }

      v6 = [v4 buttonPressResult];
      v7 = 6;
      if (v6 != 2)
      {
        v7 = 7;
      }

      if (v6 == 1)
      {
        v8 = 5;
      }

      else
      {
        v8 = v7;
      }

      [(_UITextInputSessionAcccidentalDictationResult *)v2 setResult:v8];
      [(_UITextInputSessionAcccidentalDictationResult *)v2 setTriggerAction:v4];
    }
  }

  return v2;
}

id UITextInputSessionAccidentalDictationGetAnalyticsPayloadForResult(void *a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (![v4 result])
  {
    v17 = 0;
    goto LABEL_37;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v66;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v65 + 1) + 8 * i);
        v11 = [v10 language];
        if (v11)
        {

LABEL_15:
          v16 = [v10 language];
          v15 = [v10 region];
          v14 = [v10 keyboardVariant];
          v13 = [v10 keyboardLayout];
          v6 = [v10 keyboardType];
          goto LABEL_16;
        }

        v12 = [v10 region];

        if (v12)
        {
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v65 objects:v71 count:16];
      v6 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

LABEL_16:
  v61 = v6;
  v62 = v14;

  v18 = [v4 triggerAction];
  [v18 buttonSize];
  v20 = v19;

  v21 = [v4 triggerAction];
  [v21 buttonSize];
  v23 = v22;

  v24 = MEMORY[0x1E696AD98];
  v25 = [v4 triggerAction];
  [v25 touchDownPoint];
  v60 = [v24 numberWithInt:(v26 / v20 * 100.0)];

  v27 = MEMORY[0x1E696AD98];
  v28 = [v4 triggerAction];
  [v28 touchDownPoint];
  v64 = [v27 numberWithInt:(v29 / v23 * 100.0)];

  v30 = MEMORY[0x1E696AD98];
  v31 = [v4 triggerAction];
  [v31 touchUpPoint];
  v63 = [v30 numberWithInt:(v32 / v20 * 100.0)];

  v33 = MEMORY[0x1E696AD98];
  v34 = [v4 triggerAction];
  [v34 touchUpPoint];
  v36 = [v33 numberWithInt:(v35 / v23 * 100.0)];

  v37 = [v4 triggerAction];
  [v37 touchDuration];
  v39 = v38;

  v40 = [v4 triggerAction];
  [v40 touchDuration];
  v42 = v41;
  if (v39 >= 1.0)
  {
    v44 = v15;

    v43 = v13;
    v45 = v16;
    if (v42 >= 5.0)
    {
      v48 = 108;
      goto LABEL_22;
    }

    v40 = [v4 triggerAction];
    [v40 touchDuration];
    v46 = v47 + -1.0 + v47 + -1.0 + 100.0;
  }

  else
  {
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v41 / 0.01;
  }

  v48 = v46;

LABEL_22:
  v69[0] = @"type";
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v4, "result")}];
  v70[0] = v59;
  v69[1] = @"width";
  v58 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v70[1] = v58;
  v69[2] = @"height";
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  v70[2] = v49;
  v70[3] = v60;
  v69[3] = @"downX";
  v69[4] = @"downY";
  v70[4] = v64;
  v70[5] = v63;
  v69[5] = @"upX";
  v69[6] = @"upY";
  v70[6] = v36;
  v69[7] = @"touchDuration";
  v50 = [MEMORY[0x1E696AD98] numberWithLong:v48];
  v51 = v50;
  v52 = @"None";
  if (v45)
  {
    v53 = v45;
  }

  else
  {
    v53 = @"None";
  }

  v70[7] = v50;
  v70[8] = v53;
  v69[8] = @"language";
  v69[9] = @"region";
  if (v44)
  {
    v54 = v44;
  }

  else
  {
    v54 = @"None";
  }

  if (v62)
  {
    v55 = v62;
  }

  else
  {
    v55 = @"None";
  }

  v70[9] = v54;
  v70[10] = v55;
  v69[10] = @"keyboardVariant";
  v69[11] = @"keyboardLayout";
  v69[12] = @"keyboardType";
  if (v43)
  {
    v56 = v43;
  }

  else
  {
    v56 = @"None";
  }

  if (v61)
  {
    v52 = v61;
  }

  v70[11] = v56;
  v70[12] = v52;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:13];

LABEL_37:

  return v17;
}

__CFString *_UITextInputSessionAccidentalDictationOutcomeString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"?";
  }

  else
  {
    return off_1E70FB330[a1];
  }
}

void sub_18948D9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<_UIOrderedRangeIndexerImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EFAFCC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFE8670);
}

void sub_18948DD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t _UIRTreeContainerNode<unsigned long>::enumerate(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 72) - *(result + 64);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 >> 3;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    while (1)
    {
      v11 = v5[8];
      v12 = (v5[11] + 32 * v8);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(a3 + 16);
      v20[0] = v13;
      v20[1] = v14;
      result = v15(a3, v5, v11 + v7, v20, a2);
      if (*a2)
      {
        break;
      }

      ++v8;
      v7 += 8;
      if (v10 == v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v16 = v5[5];
    v17 = v5[6];
    if (v16 != v17)
    {
      v18 = v16 + 16;
      do
      {
        result = _UIRTreeContainerNode<unsigned long>::enumerate(*(v18 - 16), a2, a3);
        if (*a2)
        {
          break;
        }

        v19 = v18 == v17;
        v18 += 16;
      }

      while (!v19);
    }
  }

  return result;
}

void sub_18948E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__37(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

double _UIRTreeExpansionCostScoreForFrames(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = vaddq_f64(*a1, vminnmq_f64(v2, 0));
  v4 = vabsq_f64(v2);
  v5 = a2[1];
  v6 = vaddq_f64(*a2, vminnmq_f64(v5, 0));
  v7 = vaddq_f64(v4, v3);
  v8 = vaddq_f64(vabsq_f64(v5), v6);
  v9 = vandq_s8(vcgeq_f64(v7, v8), vcgeq_f64(v6, v3));
  if ((vandq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) != 0)
  {
    return 0.0;
  }

  v10 = vsubq_f64(vmaxnmq_f64(v7, v8), vminnmq_f64(v3, v6));
  v11 = vmulq_f64(vzip1q_s64(v10, v4), vzip2q_s64(v10, v4));
  *&result = *&vdivq_f64(v11, vdupq_laneq_s64(v11, 1));
  return result;
}

uint64_t _UICollectionViewRTreeElement::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;

  v7 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;

  return a1;
}

void sub_18948E664(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<_UIRTreeContainerNode<unsigned long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EFAFCC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFE8670);
}

void _UIRTreeContainerNode<unsigned long>::~_UIRTreeContainerNode(uint64_t a1)
{
  _UIRTreeContainerNode<unsigned long>::~_UIRTreeContainerNode(a1);

  JUMPOUT(0x18CFE8670);
}

void *_ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a2);
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

uint64_t _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN21_UIRTreeContainerNodeImE46reversedIndexesOfChildrenWithClosestAffinityToEDv4_dEUlmmE_NS_11__wrap_iterIPmEELi0EEEbT1_SA_SA_T0_(uint64_t *a1, uint64_t *a2, uint64_t *a3, float64x2_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a1;
  v7 = (a5 + 32 * *a2);
  v9 = *v7;
  v8 = v7[1];
  v10 = *a4;
  v11 = vaddq_f64(*v7, v8);
  v12 = vaddq_f64(*a4, a4[1]);
  v13 = vandq_s8(vcgeq_f64(v11, v12), vcgeq_f64(*a4, *v7));
  v14 = vandq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0];
  v15 = 0.0;
  v16 = 0.0;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v17 = vsubq_f64(vmaxnmq_f64(v11, v12), vminnmq_f64(v9, v10));
    v18 = vmulq_f64(vzip1q_s64(v17, v8), vzip2q_s64(v17, v8));
    *&v16 = *&vdivq_f64(v18, vdupq_laneq_s64(v18, 1));
  }

  v19 = (a5 + 32 * v6);
  v20 = v19[1];
  v21 = vaddq_f64(*v19, v20);
  v22 = vandq_s8(vcgeq_f64(v21, v12), vcgeq_f64(v10, *v19));
  if ((vandq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) == 0)
  {
    v23 = vsubq_f64(vmaxnmq_f64(v21, v12), vminnmq_f64(*v19, v10));
    v24 = vmulq_f64(vzip1q_s64(v23, v20), vzip2q_s64(v23, v20));
    *&v15 = *&vdivq_f64(v24, vdupq_laneq_s64(v24, 1));
  }

  v25 = *a3;
  v26 = (a5 + 32 * *a3);
  v28 = *v26;
  v27 = v26[1];
  v29 = vaddq_f64(*v26, v27);
  v30 = vandq_s8(vcgeq_f64(v29, v12), vcgeq_f64(v10, *v26));
  v31 = vandq_s8(vdupq_laneq_s64(v30, 1), v30).u64[0];
  if (v16 > v15)
  {
    v32 = 0.0;
    v33 = 0.0;
    if ((v31 & 0x8000000000000000) == 0)
    {
      v34 = vsubq_f64(vmaxnmq_f64(v29, v12), vminnmq_f64(v28, v10));
      v35 = vmulq_f64(vzip1q_s64(v34, v27), vzip2q_s64(v34, v27));
      *&v33 = *&vdivq_f64(v35, vdupq_laneq_s64(v35, 1));
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v36 = vsubq_f64(vmaxnmq_f64(v11, v12), vminnmq_f64(v9, v10));
      v37 = vmulq_f64(vzip1q_s64(v36, v8), vzip2q_s64(v36, v8));
      *&v32 = *&vdivq_f64(v37, vdupq_laneq_s64(v37, 1));
    }

    if (v33 <= v32)
    {
      *a1 = v5;
      *a2 = v6;
      v63 = (a5 + 32 * *a3);
      v65 = *v63;
      v64 = v63[1];
      v66 = *a4;
      v67 = vaddq_f64(*v63, v64);
      v68 = vaddq_f64(*a4, a4[1]);
      v69 = vandq_s8(vcgeq_f64(v67, v68), vcgeq_f64(*a4, *v63));
      v70 = vandq_s8(vdupq_laneq_s64(v69, 1), v69).u64[0];
      v71 = 0.0;
      v72 = 0.0;
      if ((v70 & 0x8000000000000000) == 0)
      {
        v73 = vsubq_f64(vmaxnmq_f64(v67, v68), vminnmq_f64(v65, v66));
        v74 = vmulq_f64(vzip1q_s64(v73, v64), vzip2q_s64(v73, v64));
        *&v72 = *&vdivq_f64(v74, vdupq_laneq_s64(v74, 1));
      }

      v75 = v19[1];
      v76 = vaddq_f64(*v19, v75);
      v77 = vandq_s8(vcgeq_f64(v76, v68), vcgeq_f64(v66, *v19));
      if ((vandq_s8(vdupq_laneq_s64(v77, 1), v77).u64[0] & 0x8000000000000000) == 0)
      {
        v78 = vsubq_f64(vmaxnmq_f64(v76, v68), vminnmq_f64(*v19, v66));
        v79 = vmulq_f64(vzip1q_s64(v78, v75), vzip2q_s64(v78, v75));
        *&v71 = *&vdivq_f64(v79, vdupq_laneq_s64(v79, 1));
      }

      if (v72 <= v71)
      {
        return 1;
      }

      *a2 = *a3;
    }

    else
    {
      *a1 = v25;
    }

    *a3 = v6;
    return 1;
  }

  v38 = 0.0;
  v39 = 0.0;
  if ((v31 & 0x8000000000000000) == 0)
  {
    v40 = vsubq_f64(vmaxnmq_f64(v29, v12), vminnmq_f64(v28, v10));
    v41 = vmulq_f64(vzip1q_s64(v40, v27), vzip2q_s64(v40, v27));
    *&v39 = *&vdivq_f64(v41, vdupq_laneq_s64(v41, 1));
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v42 = vsubq_f64(vmaxnmq_f64(v11, v12), vminnmq_f64(v9, v10));
    v43 = vmulq_f64(vzip1q_s64(v42, v8), vzip2q_s64(v42, v8));
    *&v38 = *&vdivq_f64(v43, vdupq_laneq_s64(v43, 1));
  }

  if (v39 > v38)
  {
    *a2 = v25;
    *a3 = v5;
    v44 = *a1;
    v45 = (a5 + 32 * *a2);
    v47 = *v45;
    v46 = v45[1];
    v48 = *a4;
    v49 = vaddq_f64(*v45, v46);
    v50 = vaddq_f64(*a4, a4[1]);
    v51 = vandq_s8(vcgeq_f64(v49, v50), vcgeq_f64(*a4, *v45));
    v52 = vandq_s8(vdupq_laneq_s64(v51, 1), v51).u64[0];
    v53 = 0.0;
    v54 = 0.0;
    if ((v52 & 0x8000000000000000) == 0)
    {
      v55 = vsubq_f64(vmaxnmq_f64(v49, v50), vminnmq_f64(v47, v48));
      v56 = vmulq_f64(vzip1q_s64(v55, v46), vzip2q_s64(v55, v46));
      *&v54 = *&vdivq_f64(v56, vdupq_laneq_s64(v56, 1));
    }

    v57 = (a5 + 32 * v44);
    v58 = v57[1];
    v59 = vaddq_f64(*v57, v58);
    v60 = vandq_s8(vcgeq_f64(v59, v50), vcgeq_f64(v48, *v57));
    if ((vandq_s8(vdupq_laneq_s64(v60, 1), v60).u64[0] & 0x8000000000000000) == 0)
    {
      v61 = vsubq_f64(vmaxnmq_f64(v59, v50), vminnmq_f64(*v57, v48));
      v62 = vmulq_f64(vzip1q_s64(v61, v58), vzip2q_s64(v61, v58));
      *&v53 = *&vdivq_f64(v62, vdupq_laneq_s64(v62, 1));
    }

    if (v54 > v53)
    {
      *a1 = *a2;
      *a2 = v44;
    }

    return 1;
  }

  return 0;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = vdupq_n_s64(1uLL);
  v8 = xmmword_18A64C520;
  v9 = vdupq_n_s64(2uLL);
  v188 = v7;
  v187 = v9;
  while (2)
  {
    v10 = v6;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v6 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v129 = v10[1];
                v130 = *(a2 - 1);
                if (v129 <= v130)
                {
                  v131 = *(a2 - 1);
                }

                else
                {
                  v131 = v10[1];
                }

                if (v129 >= v130)
                {
                  v129 = *(a2 - 1);
                }

                *(a2 - 1) = v129;
                v10[1] = v131;
                v132 = *(a2 - 1);
                if (v132 <= *v10)
                {
                  v133 = *v10;
                }

                else
                {
                  v133 = *(a2 - 1);
                }

                if (v132 >= *v10)
                {
                  v132 = *v10;
                }

                *(a2 - 1) = v132;
                v135 = *v10;
                v134 = v10[1];
                if (v133 <= v134)
                {
                  v135 = v10[1];
                }

                if (v133 < v134)
                {
                  v134 = v133;
                }

                *v10 = v135;
                v10[1] = v134;
                return result;
              case 4:
                v137 = v10[1];
                v136 = v10[2];
                if (*v10 <= v136)
                {
                  v138 = v10[2];
                }

                else
                {
                  v138 = *v10;
                }

                if (*v10 < v136)
                {
                  v136 = *v10;
                }

                v10[2] = v136;
                *v10 = v138;
                v139 = *(a2 - 1);
                if (v137 <= v139)
                {
                  v140 = *(a2 - 1);
                }

                else
                {
                  v140 = v137;
                }

                if (v137 < v139)
                {
                  v139 = v137;
                }

                *(a2 - 1) = v139;
                v141 = *v10;
                if (*v10 <= v140)
                {
                  v142 = v140;
                }

                else
                {
                  v142 = *v10;
                }

                if (*v10 >= v140)
                {
                  v141 = v140;
                }

                *v10 = v142;
                v10[1] = v141;
                v143 = v10[2];
                v144 = *(a2 - 1);
                if (v143 <= v144)
                {
                  v145 = *(a2 - 1);
                }

                else
                {
                  v145 = v10[2];
                }

                if (v143 >= v144)
                {
                  v143 = *(a2 - 1);
                }

                *(a2 - 1) = v143;
                v146 = v10[1];
                if (v146 <= v145)
                {
                  v147 = v145;
                }

                else
                {
                  v147 = v10[1];
                }

                if (v146 >= v145)
                {
                  v146 = v145;
                }

                v10[1] = v147;
                v10[2] = v146;
                return result;
              case 5:
                v107 = *v10;
                v108 = v10[1];
                if (*v10 <= v108)
                {
                  v109 = v10[1];
                }

                else
                {
                  v109 = *v10;
                }

                if (*v10 >= v108)
                {
                  v107 = v10[1];
                }

                *v10 = v109;
                v10[1] = v107;
                v110 = v10[3];
                v111 = *(a2 - 1);
                if (v110 <= v111)
                {
                  v112 = *(a2 - 1);
                }

                else
                {
                  v112 = v10[3];
                }

                if (v110 >= v111)
                {
                  v110 = *(a2 - 1);
                }

                *(a2 - 1) = v110;
                v10[3] = v112;
                v113 = *(a2 - 1);
                v114 = v10[2];
                if (v113 <= v114)
                {
                  v115 = v10[2];
                }

                else
                {
                  v115 = *(a2 - 1);
                }

                if (v113 >= v114)
                {
                  v113 = v10[2];
                }

                *(a2 - 1) = v113;
                v117 = v10[2];
                v116 = v10[3];
                v118 = v10[1];
                if (v115 <= v116)
                {
                  v117 = v10[3];
                }

                if (v115 < v116)
                {
                  v116 = v115;
                }

                v10[2] = v117;
                v10[3] = v116;
                v119 = *(a2 - 1);
                if (v118 <= v119)
                {
                  v120 = *(a2 - 1);
                }

                else
                {
                  v120 = v118;
                }

                if (v118 < v119)
                {
                  v119 = v118;
                }

                *(a2 - 1) = v119;
                v121 = *v10;
                v123 = v10[2];
                v122 = v10[3];
                if (v122 <= *v10)
                {
                  v124 = *v10;
                }

                else
                {
                  v124 = v10[3];
                }

                if (v122 >= *v10)
                {
                  v122 = *v10;
                }

                if (v124 <= v123)
                {
                  v121 = v10[2];
                }

                if (v124 < v123)
                {
                  v123 = v124;
                }

                if (v122 <= v120)
                {
                  v125 = v120;
                }

                else
                {
                  v125 = v122;
                }

                if (v122 >= v120)
                {
                  v122 = v120;
                }

                if (v125 <= v123)
                {
                  v120 = v123;
                }

                *v10 = v121;
                v10[1] = v120;
                if (v125 >= v123)
                {
                  v126 = v123;
                }

                else
                {
                  v126 = v125;
                }

                v10[2] = v126;
                v10[3] = v122;
                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v127 = *(a2 - 1);
              v128 = *v10;
              if (v127 > *v10)
              {
                *v10 = v127;
                *(a2 - 1) = v128;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v148 = v10 + 1;
            v150 = v10 == a2 || v148 == a2;
            if (a4)
            {
              if (!v150)
              {
                v151 = 8;
                v152 = v10;
                do
                {
                  v154 = *v152;
                  v153 = v152[1];
                  v152 = v148;
                  if (v153 > v154)
                  {
                    v155 = v151;
                    while (1)
                    {
                      *(v10 + v155) = v154;
                      v156 = v155 - 8;
                      if (v155 == 8)
                      {
                        break;
                      }

                      v154 = *(v10 + v155 - 16);
                      v155 -= 8;
                      if (v153 <= v154)
                      {
                        v157 = (v10 + v156);
                        goto LABEL_285;
                      }
                    }

                    v157 = v10;
LABEL_285:
                    *v157 = v153;
                  }

                  v148 = v152 + 1;
                  v151 += 8;
                }

                while (v152 + 1 != a2);
              }
            }

            else if (!v150)
            {
              do
              {
                v186 = *v6;
                v185 = v6[1];
                v6 = v148;
                if (v185 > v186)
                {
                  do
                  {
                    *v148 = v186;
                    v186 = *(v148 - 2);
                    --v148;
                  }

                  while (v185 > v186);
                  *v148 = v185;
                }

                v148 = v6 + 1;
              }

              while (v6 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v158 = (v11 - 2) >> 1;
              v159 = v158;
              do
              {
                v160 = v159;
                if (v158 >= v159)
                {
                  v161 = (2 * v159) | 1;
                  v162 = &v10[v161];
                  if (2 * v160 + 2 >= v11)
                  {
                    v163 = *v162;
                  }

                  else
                  {
                    v163 = v162[1];
                    v164 = *v162 > v163;
                    if (*v162 < v163)
                    {
                      v163 = *v162;
                    }

                    if (v164)
                    {
                      ++v162;
                      v161 = 2 * v160 + 2;
                    }
                  }

                  v165 = &v10[v160];
                  v166 = *v165;
                  if (v163 <= *v165)
                  {
                    do
                    {
                      *v165 = v163;
                      v165 = v162;
                      if (v158 < v161)
                      {
                        break;
                      }

                      v167 = (2 * v161) | 1;
                      v162 = &v10[v167];
                      v161 = 2 * v161 + 2;
                      if (v161 >= v11)
                      {
                        v163 = *v162;
                        v161 = v167;
                      }

                      else
                      {
                        v163 = *v162;
                        result = v162[1];
                        if (*v162 >= result)
                        {
                          v163 = v162[1];
                        }

                        if (*v162 <= result)
                        {
                          v161 = v167;
                        }

                        else
                        {
                          ++v162;
                        }
                      }
                    }

                    while (v163 <= v166);
                    *v165 = v166;
                  }
                }

                v159 = v160 - 1;
              }

              while (v160);
              do
              {
                v168 = 0;
                v169 = *v10;
                v170 = v10;
                do
                {
                  v171 = &v170[v168];
                  v172 = v171 + 1;
                  v173 = (2 * v168) | 1;
                  v168 = 2 * v168 + 2;
                  if (v168 >= v11)
                  {
                    v174 = *v172;
                    v168 = v173;
                  }

                  else
                  {
                    v176 = v171[2];
                    v175 = v171 + 2;
                    v174 = v176;
                    v177 = *(v175 - 1);
                    v178 = v177 > v176;
                    if (v177 < v176)
                    {
                      v174 = *(v175 - 1);
                    }

                    if (v178)
                    {
                      v172 = v175;
                    }

                    else
                    {
                      v168 = v173;
                    }
                  }

                  *v170 = v174;
                  v170 = v172;
                }

                while (v168 <= ((v11 - 2) >> 1));
                if (v172 == --a2)
                {
                  *v172 = v169;
                }

                else
                {
                  *v172 = *a2;
                  *a2 = v169;
                  v179 = (v172 - v10 + 8) >> 3;
                  v20 = v179 < 2;
                  v180 = v179 - 2;
                  if (!v20)
                  {
                    v181 = v180 >> 1;
                    v182 = &v10[v181];
                    v183 = *v182;
                    v184 = *v172;
                    if (*v182 > *v172)
                    {
                      do
                      {
                        *v172 = v183;
                        v172 = v182;
                        if (!v181)
                        {
                          break;
                        }

                        v181 = (v181 - 1) >> 1;
                        v182 = &v10[v181];
                        v183 = *v182;
                      }

                      while (*v182 > v184);
                      *v172 = v184;
                    }
                  }
                }

                v20 = v11-- <= 2;
              }

              while (!v20);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = *(a2 - 1);
          if (v11 < 0x81)
          {
            v47 = *v10;
            if (*v10 <= v13)
            {
              v48 = *(a2 - 1);
            }

            else
            {
              v48 = *v10;
            }

            if (*v10 >= v13)
            {
              v47 = *(a2 - 1);
            }

            *(a2 - 1) = v47;
            *v10 = v48;
            v49 = *(a2 - 1);
            v50 = v10[v12];
            if (v49 <= v50)
            {
              v51 = v10[v12];
            }

            else
            {
              v51 = *(a2 - 1);
            }

            if (v49 >= v50)
            {
              v49 = v10[v12];
            }

            *(a2 - 1) = v49;
            v52 = *v10;
            v53 = v51 > *v10;
            if (v51 > *v10)
            {
              v52 = v10[v12];
            }

            v10[v12] = v52;
            v46 = *v10;
            if (!v53)
            {
              v46 = v51;
            }

            *v10 = v46;
          }

          else
          {
            v14 = &v10[v12];
            v15 = *v14;
            if (*v14 <= v13)
            {
              v16 = *(a2 - 1);
            }

            else
            {
              v16 = *v14;
            }

            if (*v14 >= v13)
            {
              v15 = *(a2 - 1);
            }

            *(a2 - 1) = v15;
            *v14 = v16;
            v17 = *(a2 - 1);
            if (v17 <= *v10)
            {
              v18 = *v10;
            }

            else
            {
              v18 = *(a2 - 1);
            }

            if (v17 >= *v10)
            {
              v17 = *v10;
            }

            *(a2 - 1) = v17;
            v19 = *v14;
            v20 = v18 > *v14;
            if (v18 > *v14)
            {
              v19 = *v10;
            }

            *v10 = v19;
            v22 = *(v14 - 1);
            v21 = *v14;
            if (!v20)
            {
              v21 = v18;
            }

            *v14 = v21;
            v23 = *(a2 - 2);
            if (v22 <= v23)
            {
              v24 = *(a2 - 2);
            }

            else
            {
              v24 = v22;
            }

            if (v22 < v23)
            {
              v23 = v22;
            }

            *(a2 - 2) = v23;
            *(v14 - 1) = v24;
            v25 = *(a2 - 2);
            v26 = v10[1];
            if (v25 <= v26)
            {
              v27 = v10[1];
            }

            else
            {
              v27 = *(a2 - 2);
            }

            if (v25 >= v26)
            {
              v25 = v10[1];
            }

            *(a2 - 2) = v25;
            v28 = *(v14 - 1);
            v29 = v27 > v28;
            if (v27 > v28)
            {
              v28 = v10[1];
            }

            v10[1] = v28;
            v30 = *(v14 - 1);
            if (!v29)
            {
              v30 = v27;
            }

            *(v14 - 1) = v30;
            v31 = v14[1];
            v32 = *(a2 - 3);
            if (v31 <= v32)
            {
              v33 = *(a2 - 3);
            }

            else
            {
              v33 = v14[1];
            }

            if (v31 >= v32)
            {
              v31 = *(a2 - 3);
            }

            *(a2 - 3) = v31;
            v14[1] = v33;
            v34 = *(a2 - 3);
            v35 = v10[2];
            if (v34 <= v35)
            {
              v36 = v10[2];
            }

            else
            {
              v36 = *(a2 - 3);
            }

            if (v34 >= v35)
            {
              v34 = v10[2];
            }

            *(a2 - 3) = v34;
            v37 = v14[1];
            v38 = v36 > v37;
            if (v36 > v37)
            {
              v37 = v10[2];
            }

            v10[2] = v37;
            v40 = *v14;
            v39 = v14[1];
            if (!v38)
            {
              v39 = v36;
            }

            v41 = *(v14 - 1);
            if (v40 <= v39)
            {
              v42 = v39;
            }

            else
            {
              v42 = *v14;
            }

            if (v40 < v39)
            {
              v39 = *v14;
            }

            if (v39 <= v41)
            {
              v43 = *(v14 - 1);
            }

            else
            {
              v43 = v39;
            }

            if (v39 >= v41)
            {
              v39 = *(v14 - 1);
            }

            v14[1] = v39;
            if (v41 <= v42)
            {
              v44 = v42;
            }

            else
            {
              v44 = v41;
            }

            if (v41 > v42)
            {
              v43 = v42;
            }

            *(v14 - 1) = v44;
            *v14 = v43;
            v45 = *v10;
            *v10 = v43;
            *v14 = v45;
            v46 = *v10;
          }

          --a3;
          if ((a4 & 1) == 0 && *(v10 - 1) <= v46)
          {
            if (v46 <= *(a2 - 1))
            {
              v99 = v10 + 1;
              do
              {
                v10 = v99;
                if (v99 >= a2)
                {
                  break;
                }

                ++v99;
              }

              while (v46 <= *v10);
            }

            else
            {
              do
              {
                v98 = v10[1];
                ++v10;
              }

              while (v46 <= v98);
            }

            v100 = a2;
            if (v10 < a2)
            {
              v100 = a2;
              do
              {
                v101 = *--v100;
              }

              while (v46 > v101);
            }

            if (v10 < v100)
            {
              v102 = *v10;
              v103 = *v100;
              do
              {
                *v10 = v103;
                *v100 = v102;
                do
                {
                  v104 = v10[1];
                  ++v10;
                  v102 = v104;
                }

                while (v46 <= v104);
                do
                {
                  v105 = *--v100;
                  v103 = v105;
                }

                while (v46 > v105);
              }

              while (v10 < v100);
            }

            v106 = v10 - 1;
            if (v10 - 1 != v6)
            {
              *v6 = *v106;
            }

            a4 = 0;
            *v106 = v46;
            continue;
          }

          break;
        }

        if (v46 <= *(a2 - 1))
        {
          v56 = v10 + 1;
          do
          {
            v54 = v56;
            if (v56 >= a2)
            {
              break;
            }

            ++v56;
          }

          while (v46 <= *v54);
        }

        else
        {
          v54 = v10;
          do
          {
            v55 = v54[1];
            ++v54;
          }

          while (v46 <= v55);
        }

        v57 = a2;
        if (v54 < a2)
        {
          v57 = a2;
          do
          {
            v58 = *--v57;
          }

          while (v46 > v58);
        }

        v59 = v54;
        if (v54 < v57)
        {
          v60 = *v54;
          *v54 = *v57;
          v59 = v54 + 1;
          *v57 = v60;
        }

        v61 = v57 - 1;
        v62 = (v57 - 1) - v59;
        if (v62 < 1009)
        {
          v63 = 0;
          v76 = v62 >> 3;
          v74 = 1;
LABEL_124:
          v80 = v76 + 1;
          v77 = (v76 + 1) / 2;
          v78 = v80 - v80 / 2;
          goto LABEL_125;
        }

        v63 = 0;
        v64 = 0;
        v65 = vdupq_n_s64(v46);
        do
        {
          if (v64)
          {
            if (v63)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v66 = 0uLL;
            v67 = v8;
            do
            {
              v66 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v65, *(v59 + v64)), v7), v67), v66);
              v67 = vaddq_s64(v67, v9);
              v64 += 16;
            }

            while (v64 != 512);
            v64 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
            if (v63)
            {
LABEL_104:
              if (!v64)
              {
                goto LABEL_115;
              }

              goto LABEL_112;
            }
          }

          v68 = 0uLL;
          v69 = 0x1FFFFFFFFFFFFFFFLL;
          v70 = v8;
          do
          {
            v68 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v61[v69], *&v61[v69], 8uLL), v65), vdupq_n_s64(1uLL)), v70), v68);
            v70 = vaddq_s64(v70, vdupq_n_s64(2uLL));
            v69 -= 2;
          }

          while (v69 != -65);
          v63 = vorr_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
          if (!v64)
          {
            goto LABEL_115;
          }

LABEL_112:
          if (v63)
          {
            do
            {
              v71 = __clz(__rbit64(v64));
              v64 &= v64 - 1;
              v72 = &v61[-__clz(__rbit64(v63))];
              v73 = v59[v71];
              v59[v71] = *v72;
              *v72 = v73;
              v63 &= v63 - 1;
            }

            while (v63 && v64);
          }

LABEL_115:
          v59 += 64 * (v64 == 0);
          v74 = v63 == 0;
          if (v63)
          {
            v75 = 0;
          }

          else
          {
            v75 = -512;
          }

          v61 = (v61 + v75);
        }

        while (v61 - v59 > 1008);
        v76 = v61 - v59;
        if (!(v63 | v64))
        {
          goto LABEL_124;
        }

        v77 = v76 - 63;
        v78 = 64;
        v79 = 64;
        if (v64)
        {
          if (v63)
          {
            goto LABEL_134;
          }

LABEL_131:
          if (v77 >= 1)
          {
            v82 = 0;
            v63 = 0;
            v83 = v61;
            do
            {
              v84 = *v83--;
              v63 |= (v84 > v46) << v82++;
            }

            while (v77 != v82);
            goto LABEL_134;
          }

          if (v64)
          {
            v92 = 0;
          }

          else
          {
            v92 = v79;
          }

          v10 = &v59[v92];
LABEL_151:
          if (v64)
          {
            v61 -= v77;
            goto LABEL_153;
          }

          goto LABEL_157;
        }

LABEL_125:
        if (v77 < 1)
        {
          v64 = 0;
        }

        else
        {
          v81 = 0;
          v64 = 0;
          do
          {
            v64 |= (v59[v81] <= v46) << v81;
            ++v81;
          }

          while (v77 != v81);
        }

        v79 = v77;
        v77 = v78;
        if (v74)
        {
          goto LABEL_131;
        }

LABEL_134:
        if (v64 && v63)
        {
          do
          {
            v85 = __clz(__rbit64(v64));
            v64 &= v64 - 1;
            v86 = &v61[-__clz(__rbit64(v63))];
            v87 = v59[v85];
            v59[v85] = *v86;
            *v86 = v87;
            v63 &= v63 - 1;
          }

          while (v63 && v64);
        }

        if (v64)
        {
          v88 = 0;
        }

        else
        {
          v88 = v79;
        }

        v10 = &v59[v88];
        if (!v63)
        {
          goto LABEL_151;
        }

        if (v64)
        {
          do
          {
LABEL_153:
            v93 = __clz(v64) ^ 0x3F;
            v94 = &v10[v93];
            if (v61 != v94)
            {
              v95 = *v94;
              *v94 = *v61;
              *v61 = v95;
            }

            v64 &= ~(-1 << v93);
            --v61;
          }

          while (v64);
          v10 = v61 + 1;
        }

        else
        {
          do
          {
            v89 = __clz(v63) ^ 0x3F;
            v90 = &v61[-v89];
            if (v10 != v90)
            {
              v91 = *v90;
              *v90 = *v10;
              *v10 = v91;
            }

            v63 &= ~(-1 << v89);
            ++v10;
          }

          while (v63);
        }

LABEL_157:
        v96 = v10 - 1;
        if (v10 - 1 != v6)
        {
          *v6 = *v96;
        }

        *v96 = v46;
        if (v54 < v57)
        {
LABEL_162:
          result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(v6, v10 - 1, a3, a4 & 1);
          v9 = v187;
          v8 = xmmword_18A64C520;
          v7 = v188;
          a4 = 0;
          continue;
        }

        break;
      }

      v97 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v6, v10 - 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v10, a2);
      if (!result)
      {
        v8 = xmmword_18A64C520;
        v7 = v188;
        v9 = v187;
        if (!v97)
        {
          goto LABEL_162;
        }

        continue;
      }

      break;
    }

    a2 = v10 - 1;
    v8 = xmmword_18A64C520;
    v7 = v188;
    v9 = v187;
    if (!v97)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

void std::__shared_ptr_emplace<_UIRTreeContainerNode<_UICollectionViewRTreeElement>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EFAFCCC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFE8670);
}