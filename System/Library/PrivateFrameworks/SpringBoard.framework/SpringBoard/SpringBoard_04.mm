void sub_21F1EBA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1EBE08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t XBGetUIUserInterfaceStyleForSceneSnapshot(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 settings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 userInterfaceStyle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id XBGetCustomSafeAreaInsetsForSceneSnapshot(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 settings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 safeAreaInsetsPortrait];
    v7 = [MEMORY[0x277D656B0] makeWithEdgeInsets:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *NSStringFromSBSystemActionInteractionType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"longPress";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"shortPress";
  }

  return v2;
}

void sub_21F1EFB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBOcclusionStateDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2783B6DB8[a1 - 1];
  }
}

void sub_21F1F71C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1FF8A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t SBDragPreviewShadowParametersEqualToShadowParameters()
{
  if (!BSFloatEqualToFloat() || !BSFloatEqualToFloat())
  {
    return 0;
  }

  return BSSizeEqualToSize();
}

__CFString *SBAppPlatterDragPreviewModeDescription(uint64_t a1)
{
  v1 = @"SBAppPlatterDragPreviewModeIcon";
  if (a1 == 2)
  {
    v1 = @"SBAppPlatterDragPreviewModeSourceView";
  }

  if (a1 == 1)
  {
    return @"SBAppPlatterDragPreviewModePlatter";
  }

  else
  {
    return v1;
  }
}

__CFString *_SBUIAnimationStateDescription(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d)", a1];
  }

  else
  {
    v2 = off_2783B70B0[a1];
  }

  return v2;
}

void sub_21F207D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F208088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2081E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F20A308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F20C764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F20DD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F20EA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F20ECF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F20F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F20FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F20FD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F210C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2111CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2114F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F21173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F211988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBApplicationClassicModeDescription(unint64_t a1)
{
  if (a1 > 0x18)
  {
    return 0;
  }

  else
  {
    return off_2783B71B8[a1];
  }
}

uint64_t SBApplicationClassicModeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"phone"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"4” phone"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"4.7” phone"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"5.5” phone"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"5.8” rounded phone (display zoom)"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"5.8” rounded phone"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"6” notch phone"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"6.5” notch phone"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"6.6” notch phone"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"6.1” island phone"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"6.3” island phone"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"6.7” island phone"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"6.9” island phone"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"pad"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"10.5” pad"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"12.9” pad"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"12.9” rounded pad (display zoom)"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"10.9” rounded pad"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"11” rounded pad"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"11.1” rounded pad"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"11” rounded pad (more space)"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"12.9” rounded pad"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"13” rounded pad"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"12.9” rounded pad (more space)"])
  {
    v2 = 24;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

BOOL SBApplicationClassicModeWantsSafeAreaInsets(uint64_t a1)
{
  result = 1;
  v3 = a1 + 1;
  if (v3 <= 0x11)
  {
    if (((1 << v3) & 0x3803D) != 0)
    {
      return 0;
    }

    else if (v3 == 1)
    {
      return SBFEffectiveHomeButtonType() == 2;
    }
  }

  return result;
}

BOOL SBApplicationClassicModeRepresentsMoreSpace(uint64_t a1)
{
  if ((a1 - 1) < 0x14 || (a1 - 22) < 2)
  {
    return 0;
  }

  if (a1)
  {
    return a1 != -1;
  }

  return SBFEffectiveHomeButtonType() == 2;
}

id SBStringForSwitcherAsyncRenderingAttributes()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = NSStringFromBOOL();
  v2 = NSStringFromBOOL();
  v3 = [v0 stringWithFormat:@"<wantsAsyncRendering:%@ wantsMinificationFilter:%@>", v1, v2];

  return v3;
}

__CFString *SBStringForSwitcherShelfContentOptions(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"centerWindows"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
LABEL_6:
          v4 = [v3 componentsJoinedByString:@"|"];

          goto LABEL_8;
        }

LABEL_5:
        [v3 addObject:@"plusWindow"];
        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"fullScreenWindows"];
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = @"none";
LABEL_8:

  return v4;
}

__CFString *SBStringForSwitcherShelfAnimationStyle(uint64_t a1)
{
  if (a1)
  {
    return @"genie";
  }

  else
  {
    return @"fade";
  }
}

uint64_t SBSwitcherShelfPresentationAttributesMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = 0;
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

id SBStringForSwitcherShelfPresentationAttributes(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  if (*a1)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = NSStringFromCGRect(*(a1 + 8));
  v5 = @"genie";
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (!v6)
  {
    v5 = @"fade";
  }

  v8 = v5;
  v9 = SBStringForSwitcherShelfContentOptions(v7);
  v10 = [v2 stringWithFormat:@"<presented:%@ targetFrame:%@ animationStyle:%@ contentOptions:%@>", v3, v4, v8, v9];

  return v10;
}

__CFString *SBSwitcherContinuousExposeStripTongueStateDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"collapsed";
  }

  if (a1 == 2)
  {
    return @"peek";
  }

  else
  {
    return v1;
  }
}

__CFString *SBSwitcherContinuousExposeStripTongueDirectionDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"left";
  }

  if (a1 == 2)
  {
    return @"right";
  }

  else
  {
    return v1;
  }
}

id SBSwitcherContinuousExposeStripTongueAttributesDescription(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = @"unknown";
  v4 = @"collapsed";
  if (a1 != 1)
  {
    v4 = @"unknown";
  }

  if (a1 == 2)
  {
    v4 = @"peek";
  }

  if (a2 == 1)
  {
    v3 = @"left";
  }

  if (a2 == 2)
  {
    v5 = @"right";
  }

  else
  {
    v5 = v3;
  }

  v6 = v4;
  v7 = [v2 stringWithFormat:@"<state:%@ direction:%@>", v6, v5];

  return v7;
}

void sub_21F21A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_21F21BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F21C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21F21C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

double mean_tetragon_orientation(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = atan2(a8 - a2, a7 - a1);
  v16 = atan2(a6 - a2, a5 - a1);
  v17 = atan2(a8 - a4, a7 - a3);
  v18 = __sincos_stret(v15);
  v19 = __sincos_stret(v16);
  v20 = __sincos_stret(v17);

  return atan2(v19.__sinval + v18.__sinval * 2.0 + v20.__sinval, v19.__cosval + v18.__cosval * 2.0 + v20.__cosval);
}

void sub_21F21CC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t SBRecognizedEdgeForHomeGestureRecognizer(void *a1)
{
  result = [a1 touchedEdges];
  if ((result & 4) != 0)
  {
    return 4;
  }

  return result;
}

uint64_t SBScreenOrientedEdgeForHomeGestureRecognizer(void *a1)
{
  v1 = a1;
  [v1 touchedEdges];
  [v1 _touchInterfaceOrientation];

  return _screenRegionGivenInterfaceOrientedRegion();
}

uint64_t SBInterfaceOrientationOfTouchedEdgeForHomeGestureRecognizer(void *a1)
{
  v1 = a1;
  [v1 touchedEdges];
  v2 = 4;
  [v1 _touchInterfaceOrientation];
  v3 = _screenRegionGivenInterfaceOrientedRegion();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = __SBInterfaceOrientationOfTouchedEdgeForHomeGestureRecognizer_block_invoke;
  v10 = &unk_2783AD898;
  v11 = &v13;
  v12 = v3;
  v4 = v8;
  v5 = 0;
  v17 = 0;
  do
  {
    if (((1 << v5) & 0x1E) != 0)
    {
      v9(v4);
      if (v17)
      {
        break;
      }

      --v2;
    }

    if (v5 > 0x3E)
    {
      break;
    }

    ++v5;
  }

  while (v2 > 0);

  v6 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v6;
}

void sub_21F21D510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBInterfaceOrientationOfTouchedEdgeForHomeGestureRecognizer_block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v6 = a3;
  result = _interfaceOrientedRegionGivenScreenRegion();
  if ((result & 4) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
    *a4 = 1;
  }

  return result;
}

double _SBLocationForTouch(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  [v1 locationInView:0];
  v4 = v3;
  v6 = v5;

  [v2 convertPoint:0 toWindow:{v4, v6}];
  v8 = v7;

  return v8;
}

__CFString *stringForSBTouchTemplateMatchResult(uint64_t a1)
{
  v1 = @"possible";
  if (a1 == 1)
  {
    v1 = @"match";
  }

  if (a1 == 2)
  {
    return @"noMatch";
  }

  else
  {
    return v1;
  }
}

void sub_21F22833C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2295A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2296C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t behaviorsComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  if (v6 == [v5 identifier])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 identifier];
    if (v8 < [v5 identifier])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

uint64_t SBWhitePointAdaptivityStyleForAdaptationMode(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6E00[a1];
  }
}

uint64_t SBAdaptationModeForWhitePointAdaptivityStyle(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_21F22B880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

double _SBSampleValueWithTimingFunction(void *a1, double result)
{
  if (a1)
  {
    *&result = result;
    [a1 _solveForInput:result];
    return v2;
  }

  return result;
}

__CFString *SBStringFromInsertionSwitcherModifierPhase(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Possible";
  }

  else
  {
    return off_2783B7780[a1 - 1];
  }
}

void sub_21F22D3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F233154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2364D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21F239FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBPPTLockInterfaceOrientation(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([SBApp activeInterfaceOrientation] == a1)
  {
    v3[2](v3);
  }

  else
  {
    v4 = +[SBOrientationLockManager sharedInstance];
    [v4 lock:a1];

    v5 = dispatch_time(0, 1000000000);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __SBPPTLockInterfaceOrientation_block_invoke;
    v6[3] = &unk_2783B2E30;
    v8 = a1;
    v7 = v3;
    dispatch_after(v5, MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __SBPPTLockInterfaceOrientation_block_invoke(uint64_t a1)
{
  if ([SBApp activeInterfaceOrientation] != *(a1 + 40))
  {
    __SBPPTLockInterfaceOrientation_block_invoke_cold_1((a1 + 40));
  }

  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void SBPPTUnlockInterfaceOrientation()
{
  v0 = +[SBOrientationLockManager sharedInstance];
  [v0 unlock];
}

void SBPPTObserveNotification(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__66;
  v36 = __Block_byref_object_dispose__66;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = [MEMORY[0x277CCABD8] mainQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __SBPPTObserveNotification_block_invoke;
  v22[3] = &unk_2783B7A20;
  v24 = &v32;
  v25 = &v26;
  v12 = v9;
  v23 = v12;
  v13 = [v10 addObserverForName:v7 object:v8 queue:v11 usingBlock:v22];
  v14 = v27[5];
  v27[5] = v13;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SBPPTObserveNotification_block_invoke_2;
  block[3] = &unk_2783B2050;
  v20 = v12;
  v21 = &v26;
  v15 = v12;
  v16 = dispatch_block_create(0, block);
  v17 = v33[5];
  v33[5] = v16;

  v18 = dispatch_time(0, (a4 * 1000000000.0));
  dispatch_after(v18, MEMORY[0x277D85CD0], v33[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void __SBPPTObserveNotification_block_invoke(void *a1, void *a2)
{
  v3 = *(*(a1[5] + 8) + 40);
  v7 = a2;
  dispatch_block_cancel(v3);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:*(*(a1[6] + 8) + 40)];

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  (*(a1[4] + 16))();
}

uint64_t __SBPPTObserveNotification_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

id SBPPTEventActionsToTapAtPoint(double a1, double a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SBPPTEventActionsToTapAtPoint_block_invoke;
  v4[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  *&v4[4] = a1;
  *&v4[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v4);

  return v2;
}

void __SBPPTEventActionsToTapAtPoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v7 = [v3 _keyWindowForScreen:v6];

  [v7 convertPoint:0 toView:{*(a1 + 32), *(a1 + 40)}];
  [v7 _convertPointToSceneReferenceSpace:?];
  [v5 tap:?];
}

id SBPPTEventActionsToTouchAndHoldAtPoint(double a1, double a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SBPPTEventActionsToTouchAndHoldAtPoint_block_invoke;
  v4[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  *&v4[4] = a1;
  *&v4[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v4);

  return v2;
}

void __SBPPTEventActionsToTouchAndHoldAtPoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v7 = [v3 _keyWindowForScreen:v6];

  [v7 convertPoint:0 toView:{*(a1 + 32), *(a1 + 40)}];
  [v7 _convertPointToSceneReferenceSpace:?];
  [v5 touchDown:?];
  [v5 advanceTime:2.0];
  [v5 liftUpAtAllActivePoints];
}

id SBPPTEventActionsToPeekAndPopAtPoint(char a1, double a2, double a3, double a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SBPPTEventActionsToPeekAndPopAtPoint_block_invoke;
  v6[3] = &__block_descriptor_57_e34_v16__0___RCPEventStreamComposer__8l;
  *&v6[4] = a2;
  *&v6[5] = a3;
  v7 = a1;
  *&v6[6] = a4;
  v4 = MEMORY[0x223D6F7F0](v6);

  return v4;
}

void __SBPPTEventActionsToPeekAndPopAtPoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v7 = [v3 _keyWindowForScreen:v6];

  [v7 convertPoint:0 toView:{*(a1 + 32), *(a1 + 40)}];
  [v7 _convertPointToSceneReferenceSpace:?];
  [v5 peekAndPop:*(a1 + 56) commit:? duration:?];
}

void __SBPPTEventActionsToSwipeUpInMiddleOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D76620];
  v3 = MEMORY[0x277D759A0];
  v4 = a2;
  v5 = [v3 mainScreen];
  v20 = [v2 _keyWindowForScreen:v5];

  [v20 bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v13 = CGRectGetMidY(v25) + -200.0;
  [v20 convertPoint:0 toView:{MidX, MidY}];
  [v20 _convertPointToSceneReferenceSpace:?];
  v15 = v14;
  v17 = v16;
  [v20 convertPoint:0 toView:{v12, v13}];
  [v20 _convertPointToSceneReferenceSpace:?];
  [v4 sendFlickWithStartPoint:v15 endPoint:v17 duration:{v18, v19, 0.25}];
}

void __SBPPTEventActionsToSwipeDownInMiddleOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D76620];
  v3 = MEMORY[0x277D759A0];
  v4 = a2;
  v5 = [v3 mainScreen];
  v20 = [v2 _keyWindowForScreen:v5];

  [v20 bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMidY(v23) + -200.0;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  [v20 convertPoint:0 toView:{MidX, v11}];
  [v20 _convertPointToSceneReferenceSpace:?];
  v15 = v14;
  v17 = v16;
  [v20 convertPoint:0 toView:{v12, MidY}];
  [v20 _convertPointToSceneReferenceSpace:?];
  [v4 sendFlickWithStartPoint:v15 endPoint:v17 duration:{v18, v19, 0.25}];
}

void __SBPPTEventActionsToSwipeLeftInMiddleOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D76620];
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v29 = [v3 _keyWindowForScreen:v6];

  [v29 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*v2 userInterfaceLayoutDirection];
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  MidX = CGRectGetMidX(v31);
  v17 = 100.0;
  if (v15 == 1)
  {
    v18 = -100.0;
  }

  else
  {
    v18 = 100.0;
  }

  v19 = MidX + v18;
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  MidY = CGRectGetMidY(v32);
  if ([*v2 userInterfaceLayoutDirection] != 1)
  {
    v17 = -100.0;
  }

  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  v21 = CGRectGetMidX(v33) + v17;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v22 = CGRectGetMidY(v34);
  [v29 convertPoint:0 toView:{v19, MidY}];
  [v29 _convertPointToSceneReferenceSpace:?];
  v24 = v23;
  v26 = v25;
  [v29 convertPoint:0 toView:{v21, v22}];
  [v29 _convertPointToSceneReferenceSpace:?];
  [v5 sendFlickWithStartPoint:v24 endPoint:v26 duration:{v27, v28, 0.25}];
}

void __SBPPTEventActionsToSwipeRightInMiddleOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D76620];
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v29 = [v3 _keyWindowForScreen:v6];

  [v29 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*v2 userInterfaceLayoutDirection];
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  MidX = CGRectGetMidX(v31);
  v17 = -100.0;
  if (v15 == 1)
  {
    v18 = 100.0;
  }

  else
  {
    v18 = -100.0;
  }

  v19 = MidX + v18;
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  MidY = CGRectGetMidY(v32);
  if ([*v2 userInterfaceLayoutDirection] != 1)
  {
    v17 = 100.0;
  }

  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  v21 = CGRectGetMidX(v33) + v17;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v22 = CGRectGetMidY(v34);
  [v29 convertPoint:0 toView:{v19, MidY}];
  [v29 _convertPointToSceneReferenceSpace:?];
  v24 = v23;
  v26 = v25;
  [v29 convertPoint:0 toView:{v21, v22}];
  [v29 _convertPointToSceneReferenceSpace:?];
  [v5 sendFlickWithStartPoint:v24 endPoint:v26 duration:{v27, v28, 0.25}];
}

void __SBPPTEventActionsToSwipeUpFromBottomOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D76620];
  v3 = MEMORY[0x277D759A0];
  v4 = a2;
  v5 = [v3 mainScreen];
  v20 = [v2 _keyWindowForScreen:v5];

  [v20 bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  [v20 convertPoint:0 toView:{MidX, MaxY}];
  [v20 _convertPointToSceneReferenceSpace:?];
  v15 = v14;
  v17 = v16;
  [v20 convertPoint:0 toView:{v12, MinY}];
  [v20 _convertPointToSceneReferenceSpace:?];
  [v4 sendFlickWithStartPoint:v15 endPoint:v17 duration:{v18, v19, 0.25}];
}

void __SBPPTEventActionsToSwipeDownFromTopOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D76620];
  v3 = MEMORY[0x277D759A0];
  v4 = a2;
  v5 = [v3 mainScreen];
  v22 = [v2 _keyWindowForScreen:v5];

  [v22 bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v12 = CGRectGetMidX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  v14 = [MEMORY[0x277D75418] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MidX = CGRectGetMinX(v28) + 100.0;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MinY = CGRectGetMinY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v12 = CGRectGetMinX(v30) + 100.0;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    MaxY = CGRectGetMaxY(v31);
  }

  [v22 convertPoint:0 toView:{MidX, MinY}];
  [v22 _convertPointToSceneReferenceSpace:?];
  v17 = v16;
  v19 = v18;
  [v22 convertPoint:0 toView:{v12, MaxY}];
  [v22 _convertPointToSceneReferenceSpace:?];
  [v4 sendFlickWithStartPoint:v17 endPoint:v19 duration:{v20, v21, 0.25}];
}

void __SBPPTEventActionsToSwipeLeftFromRightOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D76620];
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v37 = [v3 _keyWindowForScreen:v6];

  [v37 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*v2 userInterfaceLayoutDirection];
  v16 = v8;
  v17 = v10;
  v18 = v12;
  v19 = v14;
  if (v15 == 1)
  {
    MinX = CGRectGetMinX(*&v16);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v16);
  }

  v21 = MinX;
  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  MidY = CGRectGetMidY(v39);
  v23 = [*v2 userInterfaceLayoutDirection];
  v24 = v8;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  if (v23 == 1)
  {
    MaxX = CGRectGetMaxX(*&v24);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v24);
  }

  v29 = MaxX;
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  v30 = CGRectGetMidY(v40);
  [v37 convertPoint:0 toView:{v21, MidY}];
  [v37 _convertPointToSceneReferenceSpace:?];
  v32 = v31;
  v34 = v33;
  [v37 convertPoint:0 toView:{v29, v30}];
  [v37 _convertPointToSceneReferenceSpace:?];
  [v5 sendFlickWithStartPoint:v32 endPoint:v34 duration:{v35, v36, 0.25}];
}

void __SBPPTEventActionsToSwipeRightFromLeftOfInterface_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D76620];
  v3 = *MEMORY[0x277D76620];
  v4 = MEMORY[0x277D759A0];
  v5 = a2;
  v6 = [v4 mainScreen];
  v37 = [v3 _keyWindowForScreen:v6];

  [v37 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*v2 userInterfaceLayoutDirection];
  v16 = v8;
  v17 = v10;
  v18 = v12;
  v19 = v14;
  if (v15 == 1)
  {
    MaxX = CGRectGetMaxX(*&v16);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v16);
  }

  v21 = MaxX;
  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  MidY = CGRectGetMidY(v39);
  v23 = [*v2 userInterfaceLayoutDirection];
  v24 = v8;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  if (v23 == 1)
  {
    MinX = CGRectGetMinX(*&v24);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v24);
  }

  v29 = MinX;
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  v30 = CGRectGetMidY(v40);
  [v37 convertPoint:0 toView:{v21, MidY}];
  [v37 _convertPointToSceneReferenceSpace:?];
  v32 = v31;
  v34 = v33;
  [v37 convertPoint:0 toView:{v29, v30}];
  [v37 _convertPointToSceneReferenceSpace:?];
  [v5 sendFlickWithStartPoint:v32 endPoint:v34 duration:{v35, v36, 0.25}];
}

void __SBPPTEventActionsToArcSwipeBetweenApps_block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v12 = MinX + CGRectGetWidth(v24) * 0.25;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  MaxY = CGRectGetMaxY(v25);
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v13 = CGRectGetMinX(v26);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v14 = v13 + CGRectGetWidth(v27) * 0.75;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v20 = CGRectGetMaxY(v28);
  v15 = 0.5 / [v21 touchFrequency];
  v16 = v12;
  [v21 touchDown:{v12, MaxY}];
  v17 = (v14 - v12) * -0.25;
  v18 = 0.0;
  do
  {
    [v21 moveToPoint:v14 * ((v18 + v18) * 0.75) + (1.0 - (v18 + v18) * 0.75) * v16 duration:{(v20 + v17 * sin((v18 + v18) * 0.75 * 3.14159265)), v15 * 0.5}];
    [v21 advanceTime:v15 * 0.5];
    v18 = v15 + v18;
  }

  while (v18 < 0.5);
  [v21 liftUpAtAllActivePoints];
}

void __SBPPTEventActionsToBottomEdgeSwipeBetweenApps_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D759A0];
  v15 = a2;
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  [v15 sendFlickWithStartPoint:MinX endPoint:MaxY duration:{MidX, CGRectGetMaxY(v20), 0.25}];
}

void SBPPTBeginFiveFingerScrunch(void *a1, void *a2, double a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = [SBFluidScrunchGestureRecognizer _scrunchTemplatesForTouchType:0 displayConfiguration:0];
  v7 = [v6 bs_firstObjectPassingTest:&__block_literal_global_58_0];
  if (!v7)
  {
    SBPPTBeginFiveFingerScrunch_cold_1();
  }

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v30.origin.x = v10;
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v16;
  v25 = CGRectGetWidth(v30) * 0.5;
  v31.origin.x = v10;
  v31.origin.y = v12;
  v31.size.width = v14;
  v31.size.height = v16;
  v17 = CGRectGetHeight(v31) * 0.5;
  [v7 _centroid];
  v32.origin.x = v10;
  v32.origin.y = v12;
  v32.size.width = v14;
  v32.size.height = v16;
  CGRectGetWidth(v32);
  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  CGRectGetHeight(v33);
  [v7 distanceOfFarthestPointFromCentroid];
  v18 = 0;
  v19 = 0;
  v20 = 1.0 - a3;
  do
  {
    [v7 _pointAtIndex:v19];
    UIPointRoundToScale();
    v21 = &v28[v18];
    *v21 = v22;
    v21[1] = v23;
    v24 = &v27[v18];
    *v24 = v25 * a3 + v20 * v22;
    v24[1] = v17 * a3 + v20 * v23;
    ++v19;
    v18 += 16;
  }

  while (v19 != 5);
  [v4 touchDownAtPoints:v28 touchCount:5];
  [v4 moveToPoints:v27 touchCount:5 duration:0.25];
  v5[2](v5, v4, v27, 5);
}

void __SBPPTEventActionsToFiveFingerScrunchToAppSwitcher_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 advanceTime:0.5];
  MEMORY[0x28223BE20](v7);
  if (a4 >= 1)
  {
    v8 = (a3 + 8);
    v9 = &v15[-2 * a4 + 1];
    v10 = a4;
    do
    {
      v11 = *(v8 - 1);
      v12 = v11 + arc4random_uniform(0xAu) / 10.0;
      v13 = *v8;
      v8 += 2;
      v14 = arc4random_uniform(0xAu);
      *(v9 - 1) = v12;
      *v9 = v13 + v14 / 10.0;
      v9 += 2;
      --v10;
    }

    while (v10);
  }

  [v6 moveToPoints:&v15[-2 * a4] touchCount:a4 duration:{1.0 / objc_msgSend(v6, "touchFrequency")}];
  [v6 liftUpAtAllActivePoints];
}

void __SBPPTEventActionsToFiveFingerScrunchAndSwipeBetweenApps_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  MEMORY[0x28223BE20](v16);
  if (a4 >= 1)
  {
    v17 = (a3 + 8);
    v18 = &v25[-2 * a4 + 1];
    v19 = a4;
    do
    {
      v20 = *(v17 - 1);
      v26.origin.x = v9;
      v26.origin.y = v11;
      v26.size.width = v13;
      v26.size.height = v15;
      v21 = v20 + CGRectGetWidth(v26) * 0.5;
      v27.origin.x = v9;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      Width = CGRectGetWidth(v27);
      v23 = *v17;
      v17 += 2;
      v24 = v23;
      if (v21 < Width)
      {
        Width = v21;
      }

      *(v18 - 1) = Width;
      *v18 = v24;
      v18 += 2;
      --v19;
    }

    while (v19);
  }

  [v6 moveToPoints:&v25[-2 * a4] touchCount:a4 duration:0.1875];
  [v6 liftUpAtAllActivePoints];
}

void __SBPPTEventActionsToFourFingerSwipeBetweenApps_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v12 = 0;
  v13 = 0;
  v14 = CGRectGetWidth(v25) * 0.5;
  v15 = v14 * 0.25;
  do
  {
    v16 = &v23[v12];
    v26.origin.x = v5;
    v26.origin.y = v7;
    v26.size.width = v9;
    v26.size.height = v11;
    v17 = CGRectGetMinX(v26) + v13 * v15;
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    MidY = CGRectGetMidY(v27);
    *v16 = v17;
    v16[1] = MidY;
    v19 = &v22[v12];
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v20 = v14 + CGRectGetMinX(v28) + v13 * v15;
    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    v21 = CGRectGetMidY(v29);
    *v19 = v20;
    v19[1] = v21;
    ++v13;
    v12 += 16;
  }

  while (v13 != 4);
  [v2 touchDownAtPoints:v23 touchCount:4];
  [v2 moveToPoints:v22 touchCount:4 duration:0.25];
  [v2 liftUpAtAllActivePoints];
}

void __SBPPTEventActionsToSwipeAndPauseToAppSwitcher_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D759A0];
  v16 = a2;
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v14 = CGRectGetMidX(v20);
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  MidY = CGRectGetMidY(v21);
  [v16 touchDown:{MidX, MaxY}];
  [v16 moveToPoint:v14 duration:{MidY, 0.5}];
  [v16 advanceTime:0.5];
  [v16 liftUpAtAllActivePoints];
}

void __SBPPTEventActionsToSwipeToHomeScreen_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D759A0];
  v15 = a2;
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v14 = CGRectGetMidX(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  [v15 sendFlickWithStartPoint:MidX endPoint:MaxY duration:{v14, CGRectGetMidY(v20), 0.25}];
}

void SBPPTSynthesizeEventsForEventActions(void *a1, void *a2)
{
  v3 = MEMORY[0x277D44350];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [MEMORY[0x277D44348] playEventActions:v5 options:v6 completion:v4];
}

void SBPPTSynthesizeEventsForCommandString(void *a1, void *a2)
{
  v3 = MEMORY[0x277D44350];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [MEMORY[0x277D44348] playCommandString:v5 options:v6 completion:v4];
}

void SBPPTSynthesizeEventsForEventStream(void *a1, void *a2)
{
  v3 = MEMORY[0x277D44350];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [MEMORY[0x277D44348] playEventStream:v5 options:v6 completion:v4];
}

void sub_21F23F98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBAppLibraryLogStep(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"PlaceholderAdd";
  }

  else
  {
    return off_2783B7AA0[a1 - 1];
  }
}

__CFString *SBStringFromSystemApertureCustomLayout(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"INVALID";
  }

  else
  {
    return off_2783B7B28[a1];
  }
}

__CFString *SBStringFromSystemApertureLayoutCustomizingOptions(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Prominent Pill"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"Suppress Trailing"];
  }

  if ([v3 count])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 componentsJoinedByString:@" | "];
    v6 = [v4 stringWithFormat:@"<%@>", v5];
  }

  else
  {
    v6 = @"Unspecified";
  }

  return v6;
}

__CFString *NSStringFromSBRestartType(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"SpringBoard";
  }

  else
  {
    return off_2783B7BA8[a1 - 1];
  }
}

void sub_21F24D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F24DCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F24E140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F24E438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F251270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2515DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F25488C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_21F254F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2564B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F25981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F259C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSwitcherWindowManagementStyle(uint64_t a1)
{
  v1 = @"SingleApp";
  if (a1 == 1)
  {
    v1 = @"Classic";
  }

  if (a1 == 2)
  {
    return @"FlexibleWindowing";
  }

  else
  {
    return v1;
  }
}

void sub_21F25AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F25B218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F25B53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F25CAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F26A2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F26AA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F26B2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose((v38 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21F26BD2C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21F26C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_21F26D100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F26D8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose((v71 - 240), 8);
  _Block_object_dispose((v71 - 208), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21F26E134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_21F2711B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F27142C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBViewMorphAnimatorCompletedSourceAnimationsDescription(uint64_t a1)
{
  if (a1 == 15)
  {
    v1 = @"All";
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __SBViewMorphAnimatorCompletedSourceAnimationsDescription_block_invoke;
    v13 = &unk_2783A95A0;
    v4 = v3;
    v14 = v4;
    v5 = &v10;
    if (a1)
    {
      v6 = 0;
      v15 = 0;
      v7 = vcnt_s8(a1);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.i32[0];
      do
      {
        if (((1 << v6) & a1) != 0)
        {
          (v12)(v5);
          if (v15)
          {
            break;
          }

          --v8;
        }

        if (v6 > 0x3E)
        {
          break;
        }

        ++v6;
      }

      while (v8 > 0);
    }

    if (![v4 count])
    {
      [v4 addObject:@"None"];
    }

    v1 = [v4 componentsJoinedByString:{@", "}];
  }

  return v1;
}

__CFString *SBViewMorphAnimatorCompletedTargetAnimationsDescription(uint64_t a1)
{
  if (a1 == 7)
  {
    v1 = @"All";
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __SBViewMorphAnimatorCompletedTargetAnimationsDescription_block_invoke;
    v13 = &unk_2783A95A0;
    v4 = v3;
    v14 = v4;
    v5 = &v10;
    if (a1)
    {
      v6 = 0;
      v15 = 0;
      v7 = vcnt_s8(a1);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.i32[0];
      do
      {
        if (((1 << v6) & a1) != 0)
        {
          (v12)(v5);
          if (v15)
          {
            break;
          }

          --v8;
        }

        if (v6 > 0x3E)
        {
          break;
        }

        ++v6;
      }

      while (v8 > 0);
    }

    if (![v4 count])
    {
      [v4 addObject:@"None"];
    }

    v1 = [v4 componentsJoinedByString:{@", "}];
  }

  return v1;
}

void sub_21F272604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SBViewMorphAnimatorCompletedSourceAnimationsDescription_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = a2 - 1;
  if (a2 - 1) <= 7 && ((0x8Bu >> v2))
  {
    return [*(result + 32) addObject:off_2783B8378[v2]];
  }

  return result;
}

uint64_t __SBViewMorphAnimatorCompletedTargetAnimationsDescription_block_invoke(uint64_t result, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = @"MatchMove";
      break;
    case 4:
      v2 = @"Placeholder";
      break;
    case 2:
      v2 = @"Unclip";
      break;
    default:
      return result;
  }

  return [*(result + 32) addObject:v2];
}

double SBTotalMovementForMovedTouches(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v6 = [a1 view];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 previousLocationInView:{v6, v21}];
        v14 = v13;
        v16 = v15;
        [v12 locationInView:v6];
        v5 = v5 + vabdd_f64(v17, v14);
        v4 = v4 + vabdd_f64(v18, v16);
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = [v7 count];
  [v7 count];

  return v5 / v19;
}

void sub_21F278CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F279E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F27B6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F281574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromSBSystemApertureSecureElementSuppressionReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"CoverSheet";
  }

  else
  {
    return off_2783B8AB0[a1 - 1];
  }
}

void sub_21F281F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SBSystemApertureZoomPreferencesDidChange(int a1, void *a2, CFTypeRef cf1)
{
  result = CFEqual(cf1, *MEMORY[0x277D81EE0]);
  if (result)
  {
    result = _AXSZoomTouchEnabled();
    if (result)
    {

      return [a2 _axRegisterForZoomUpdatesIfNecessary];
    }
  }

  return result;
}

void sub_21F282610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F282C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F282E04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F283360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F283874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F283B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_21F2845E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_21F286860(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x308]);
  _Unwind_Resume(a1);
}

void sub_21F28B380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id _SBSystemApertureViewControllerPinViewToOtherView(void *a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CD9EE8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = objc_alloc_init(v5);
  v10 = [v8 layer];

  [v9 setSourceLayer:v10];
  __asm { FMOV            V0.2D, #0.5 }

  v20 = _Q0;
  v16 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"{CGPoint=dd}"];
  v21[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v9 setSourcePoints:v17];

  [v9 setUsesNormalizedCoordinates:1];
  [v9 setDuration:INFINITY];
  [v9 setFillMode:*MEMORY[0x277CDA230]];
  [v9 setRemovedOnCompletion:0];
  [v9 setAppliesScale:0];
  [v9 setAppliesRotation:0];
  v18 = [v7 layer];

  [v18 addAnimation:v9 forKey:v6];

  return v9;
}

void sub_21F28D304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F28EA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F290644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2908C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2910D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2912D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F291508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2943A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F29489C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21F295670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_21F29673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2A6AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2A8E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2AB8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2ABF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  _Block_object_dispose(&a15, 8);
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2AC1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2AC430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2AC66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2ADD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2AFC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2B20E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2B23A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2B26D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2B283C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2B2948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2B2A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2B2C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2B2E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBCreateUIImageFromIOSurfaceResizingIfNecessary(void *a1, void *a2, int a3, uint64_t a4, int a5, double a6, double a7)
{
  v13 = a1;
  v14 = a2;
  v15 = v13;
  v16 = v14;
  v17 = v16;
  if (a6 <= 0.0)
  {
    [v16 scale];
    a6 = v18;
  }

  if (a7 <= 0.0)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = a7;
  }

  if (v19 == 1.0)
  {
    v20 = v15;
  }

  else
  {
    v20 = SBCreateScaledIOSurface(v15, a5, v19);
  }

  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    v22 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v20 scale:0 orientation:a6];
    goto LABEL_15;
  }

  CGImageWithIOSurface = _makeCGImageWithIOSurface(v20, a4, a5);
  if (CGImageWithIOSurface)
  {
    v24 = CGImageWithIOSurface;
    v22 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:CGImageWithIOSurface scale:0 orientation:a6];
    CGImageRelease(v24);
  }

  else
  {
LABEL_14:
    v22 = 0;
  }

LABEL_15:

  return v22;
}

id SBCreateScaledIOSurface(void *a1, int a2, double a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 0;
  if (!v5 || a3 <= 0.0)
  {
    goto LABEL_32;
  }

  [v5 width];
  [v6 height];
  texture = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  v9 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v6, 0, &pixelBufferOut);
  v10 = pixelBufferOut;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = pixelBufferOut == 0;
  }

  if (v11)
  {
    v7 = 0;
    if (!pixelBufferOut)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = VTPixelTransferSessionCreate(v8, &pixelTransferSessionOut);
  v9 = v12;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = pixelTransferSessionOut == 0;
  }

  if (v13)
  {
    goto LABEL_21;
  }

  IOSurfaceBackedCVPixelBufferWithAttributes = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2860], *MEMORY[0x277CBED28]);
  if (IOSurfaceBackedCVPixelBufferWithAttributes || ((IOSurfaceGetPixelFormat(v6), (IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes()) == 0) ? (v15 = texture == 0) : (v15 = 1), v15))
  {
    v9 = IOSurfaceBackedCVPixelBufferWithAttributes;
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v25 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, texture);
  v9 = v25;
  if (v25)
  {
    goto LABEL_21;
  }

  v7 = CVPixelBufferGetIOSurface(texture);
LABEL_22:
  v10 = pixelBufferOut;
  if (pixelBufferOut)
  {
LABEL_23:
    CVPixelBufferRelease(v10);
  }

LABEL_24:
  if (texture)
  {
    CVPixelBufferRelease(texture);
  }

  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  if (v9)
  {
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "SBCreateScaledIOSurface: Failed to initalize hardware scaler, falling back to CPU scaling", buf, 2u);
    }

    v17 = v6;
    v18 = ([v17 width] * a3);
    v19 = ([v17 height] * a3);
    CGImageWithIOSurface = _makeCGImageWithIOSurface(v17, 0, a2);

    v21 = [MEMORY[0x277D755B8] imageWithCGImage:CGImageWithIOSurface];
    CGImageRelease(CGImageWithIOSurface);
    [v21 sbf_colorSpace];
    *buf = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = ___SBCreateScaledIOSurfaceUsingCPU_block_invoke;
    v32 = &unk_2783AC828;
    v34 = 0;
    v35 = 0;
    v33 = v21;
    v36 = v18;
    v37 = v19;
    v22 = v21;
    v23 = BSUISurfaceWithColorSpaceAndDrawBlock();

    v7 = v23;
  }

LABEL_32:

  return v7;
}

id SBCreateSnapshotBelowWindowWithOptions(void *a1, int a2, uint64_t a3, void *a4, unsigned int a5, double a6)
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v62 = a4;
  v11 = [v10 screen];
  [v11 scale];
  v13 = v12 * a6;
  [v11 _referenceBounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  memset(&v71, 0, sizeof(v71));
  CGAffineTransformMakeScale(&v71, v13, v13);
  if (BSFloatLessThanFloat())
  {
    *&v68.m11 = *&v71.a;
    *&v68.m13 = *&v71.c;
    *&v68.m21 = *&v71.tx;
    v81.origin.x = v15;
    v81.origin.y = v17;
    v81.size.width = v19;
    v81.size.height = v21;
    v82 = CGRectApplyAffineTransform(v81, &v68);
    CGAffineTransformMakeScale(&v68, v13 * (round(v82.size.width) / v82.size.width), v13 * (round(v82.size.height) / v82.size.height));
    *&v71.a = *&v68.m11;
    *&v71.c = *&v68.m13;
    *&v71.tx = *&v68.m21;
  }

  memset(&t2, 0, sizeof(t2));
  if (a3 == 3)
  {
    t2.tx = 0.0;
    t2.ty = 0.0;
    v22 = xmmword_21F8A7110;
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        t2.tx = 0.0;
        t2.ty = 0.0;
        t2.a = -1.0;
        t2.b = 0.0;
        t2.c = 0.0;
        t2.d = -1.0;
      }

      else
      {
        v23 = *(MEMORY[0x277CBF2C0] + 16);
        *&t2.a = *MEMORY[0x277CBF2C0];
        *&t2.c = v23;
        *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
      }

      goto LABEL_11;
    }

    t2.tx = 0.0;
    t2.ty = 0.0;
    v22 = xmmword_21F8A7120;
  }

  *&t2.b = v22;
LABEL_11:
  t1 = v71;
  CGAffineTransformConcat(&v68, &t1, &t2);
  *&v71.c = *&v68.m13;
  *&v71.tx = *&v68.m21;
  *&v71.a = *&v68.m11;
  v83.origin.x = v15;
  v83.origin.y = v17;
  v83.size.width = v19;
  v83.size.height = v21;
  v84 = CGRectApplyAffineTransform(v83, &v68);
  x = v84.origin.x;
  y = v84.origin.y;
  memset(&v68, 0, sizeof(v68));
  t2 = v71;
  CATransform3DMakeAffineTransform(&v68, &t2);
  [v10 windowLevel];
  v27 = v26;
  v61 = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v28 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v29 = [v28 countByEnumeratingWithState:&v64 objects:v78 count:16];
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = v29;
  v31 = *v65;
  v60 = *MEMORY[0x277CDA860];
  v59 = *MEMORY[0x277CDA900];
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v65 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v64 + 1) + 8 * i);
      v34 = [v33 screen];
      v35 = v34;
      if (v33 == v10)
      {
        v36 = a2;
      }

      else
      {
        v36 = 1;
      }

      if (v34 == v11 && v36 != 0)
      {
        if ([v33 _isWindowServerHostingManaged])
        {
          [v33 windowLevel];
          if (v38 <= v27)
          {
            v39 = [v62 containsObject:v33];

            if (v39)
            {
              continue;
            }

            v76[0] = v60;
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v33, "_contextId")}];
            v77[0] = v35;
            v76[1] = v59;
            v63 = v68;
            v40 = [MEMORY[0x277CCAE60] valueWithBytes:&v63 objCType:"{CATransform3D=dddddddddddddddd}"];
            v77[1] = v40;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
            [v61 addObject:v41];
          }
        }
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v64 objects:v78 count:16];
  }

  while (v30);
LABEL_30:

  v74 = *MEMORY[0x277D77700];
  v42 = [MEMORY[0x277CCABB0] numberWithBool:a5];
  v75 = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v44 = _UIRenderingBufferCreate();

  if (v44)
  {
    v45 = CFGetTypeID(v44);
    v46 = v61;
    if (v45 != IOSurfaceGetTypeID())
    {
      SBCreateSnapshotBelowWindowWithOptions_cold_1();
    }

    v47 = *MEMORY[0x277CDA8D8];
    v48 = *MEMORY[0x277CDA870];
    v72[0] = *MEMORY[0x277CDA8C8];
    v72[1] = v48;
    v73[0] = v47;
    v73[1] = v44;
    v72[2] = *MEMORY[0x277CDA888];
    v49 = [v11 displayConfiguration];
    v50 = [v49 name];
    v73[2] = v50;
    v72[3] = *MEMORY[0x277CDA8F0];
    v51 = x;
    v52 = [MEMORY[0x277CCABB0] numberWithLong:llroundf(v51)];
    v73[3] = v52;
    v72[4] = *MEMORY[0x277CDA8F8];
    v53 = y;
    v54 = [MEMORY[0x277CCABB0] numberWithLong:llroundf(v53)];
    v72[5] = *MEMORY[0x277CDA868];
    v73[4] = v54;
    v73[5] = v61;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:6];
    CARenderServerSnapshot();

    v56 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v44 scale:0 orientation:v13];
    CFRelease(v44);
  }

  else
  {
    v56 = 0;
    v46 = v61;
  }

  return v56;
}

__CFString *SBImageTagForOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return &stru_283094718;
  }

  else
  {
    return off_2783B91A8[a1 - 1];
  }
}

id SBCreateResourceImageWithoutCaching(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  if (v4 > 1.0)
  {
    v5 = SBScaleSuffixForScale(v4);
    v6 = [v1 stringByAppendingString:v5];

    v1 = v6;
  }

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 pathForResource:v1 ofType:@"png"];

  v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v8];
  if (!v9)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SBCreateResourceImageWithoutCaching_cold_1(v1, v10);
    }
  }

  return v9;
}

uint64_t _makeCGImageWithIOSurface(void *a1, uint64_t a2, int a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [v4 pixelFormat];
  if (v5 == 1999843442 || v5 == 1647534392)
  {
    v7 = *MEMORY[0x277CD2D90];
    if (a3)
    {
      v14[0] = *MEMORY[0x277CD2CC8];
      v14[1] = v7;
      v15[0] = &unk_283371228;
      v15[1] = &unk_283371240;
      v14[2] = *MEMORY[0x277CD3528];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v15[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    }

    else
    {
      v12[0] = *MEMORY[0x277CD2CC8];
      v12[1] = v7;
      v13[0] = &unk_283371228;
      v13[1] = &unk_283371240;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    }

    v10 = CGImageCreateFromIOSurface();
  }

  else
  {
    v10 = _UICreateCGImageFromIOSurfaceWithOptions();
  }

  return v10;
}

double _CentroidOfTouches(void *a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v20;
  v8 = 0.0;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      if (!a2 || [*(*(&v19 + 1) + 8 * i) phase] <= 2)
      {
        v12 = [v11 window];
        [v11 locationInView:0];
        [v12 _convertPointToSceneReferenceSpace:?];
        v14 = v13;
        v16 = v15;

        v8 = v8 + v14;
        v9 = v9 + v16;
        ++v6;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);
  if (v6 >= 1)
  {
    v17 = v8 / v6;
  }

  else
  {
LABEL_13:
    v17 = 0.0;
  }

  return v17;
}

void sub_21F2C0200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2C42A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x460]);
  _Unwind_Resume(a1);
}

void sub_21F2C48F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2C4E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2C852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2C8E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2C9104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2C9C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2C9E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2CC050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2CC22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2CDF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2CE194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2CFB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2D00A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2D1F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2D41A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2D8938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak(&a61);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2D9BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2D9E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2DA0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2DC0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2DCABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2DD01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2E33E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBSANSStringFromSecureFlipBookElementSecureIndicatorStatus(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Insecure";
  }

  else
  {
    return off_2783B9BC0[a1 - 1];
  }
}

void sub_21F2E964C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F2EE4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v15 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v16 - 88));
  _Unwind_Resume(a1);
}

void sub_21F2EF64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2EFCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2EFEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2FEC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2FEEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F2FFA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F302470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F30B998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F30E8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F311D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F313204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F3141FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F316F94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F317204(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void SBDisplayWindowingModeDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *SBDisplayWindowingModeDescription(SBDisplayWindowingMode)"];
    [v1 handleFailureInFunction:v2 file:@"SBDisplayWindowingMode.m" lineNumber:20 description:@"invalid displayMode"];
  }
}

__CFString *SBDisplayItemGridLayoutRestrictionsDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __SBDisplayItemGridLayoutRestrictionsDescription_block_invoke;
    v13 = &unk_2783A95A0;
    v3 = v2;
    v14 = v3;
    v4 = &v10;
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);

    v8 = [v3 componentsJoinedByString:{@", ", v10, v11}];
  }

  else
  {
    v8 = @"none";
  }

  return v8;
}

void __SBDisplayItemGridLayoutRestrictionsDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  switch(a2)
  {
    case 8:
      v3 = @"no orthogonal resizes";
      goto LABEL_7;
    case 4:
      v3 = @"always maximized";
      goto LABEL_7;
    case 2:
      v3 = @"non-resizable scene";
LABEL_7:
      v4 = *(a1 + 32);

      [v4 addObject:v3];
      return;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%lu)", a2];
  [v2 addObject:v5];
}

void sub_21F31FC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F31FDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F31FF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F320260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F320374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F320488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F320594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F3206DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F320940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F320ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F32199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_21F322610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F326A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_21F327A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

__CFString *SBStringForSceneLayoutDropAction(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"CancelDrop";
  }

  else
  {
    return off_2783BA390[a1 - 1];
  }
}

void sub_21F32DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_21F32F634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F331398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL SBSystemActionCoachingPolicyWantsCoachingPresented(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = MEMORY[0x277CBEB98];
  v34[0] = @"SilentMode";
  v34[1] = @"Flashlight";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v33[0] = @"Camera";
  v33[1] = @"VoiceMemos";
  v33[2] = @"Translate";
  v33[3] = @"Magnifier";
  v33[4] = @"MusicRecognition";
  v33[5] = @"Shortcuts";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
  v12 = [v10 setWithArray:v11];

  v13 = [v6 configuredAction];
  v14 = [v13 sectionIdentifier];
  if ([v14 isEqualToString:@"Focus"])
  {
    v15 = [v13 sb_configuredIntentAction];
    v16 = [(WFConfiguredStaccatoIntentAction *)v15 sb_focusModeIdentifier];

    if ([v16 isEqualToString:*MEMORY[0x277D66970]])
    {
      v17 = [v12 setByAddingObject:@"Focus"];
      v18 = v12;
      v12 = v17;
    }

    else
    {
      v19 = [v9 setByAddingObject:@"Focus"];
      v18 = v9;
      v9 = v19;
    }
  }

  if ([v14 isEqualToString:@"Accessibility"])
  {
    v20 = [v13 sb_configuredIntentAction];
    v21 = [(WFConfiguredStaccatoIntentAction *)v20 sb_accessibilityTripleClickState];

    if ((v21 - 1) >= 2)
    {
      if (v21)
      {
        goto LABEL_12;
      }

      v24 = [v12 setByAddingObject:@"Accessibility"];
      v23 = v12;
      v12 = v24;
    }

    else
    {
      v22 = [v9 setByAddingObject:@"Accessibility"];
      v23 = v9;
      v9 = v22;
    }
  }

LABEL_12:
  if (![v14 isEqualToString:@"Controls"])
  {
    goto LABEL_23;
  }

  v25 = [v6 controlAction];
  v26 = [(SBControlSystemAction *)v25 type];

  if (v26 > 1)
  {
    if (v26 == 3)
    {
LABEL_20:
      [v9 setByAddingObject:@"Controls"];
      v9 = v27 = v9;
      goto LABEL_22;
    }

    if (v26 != 2)
    {
LABEL_21:
      v27 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SBSystemActionCoachingPolicyWantsCoachingPresented(SBSystemAction *__strong _Nonnull, NSUInteger, NSUInteger, NSUInteger)"}];
      [v27 handleFailureInFunction:v28 file:@"SBSystemActionCoachingPolicySupport.m" lineNumber:79 description:{@"Unhandled control type: %lu", v26}];

      goto LABEL_22;
    }
  }

  else if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [v12 setByAddingObject:@"Controls"];
  v12 = v27 = v12;
LABEL_22:

LABEL_23:
  if ([v9 containsObject:v14])
  {
    v29 = a2 >= a3;
  }

  else
  {
    if (![v12 containsObject:v14])
    {
      v30 = a2 != 0;
      goto LABEL_31;
    }

    v29 = a2 >= a4;
  }

  v30 = v29;
LABEL_31:

  return v30;
}

void sub_21F334614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F334A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F335070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F33B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33B4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33B718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33BABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33BD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33BE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33C13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F33E45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_21F340FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F341508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F341694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBAppViewControllerMode(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Static";
  }

  if (a1 == 2)
  {
    return @"Live";
  }

  else
  {
    return v1;
  }
}

void sub_21F343980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBContinuitySessionState(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @".unknown";
  }

  else
  {
    return off_2783BA708[a1 - 1];
  }
}

uint64_t SBContinuitySessionStateTranslateForClient(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CBEB58] set];
  if (a1 > 6)
  {
    if ((a1 - 7) < 4)
    {
      v7 = 5;
      goto LABEL_21;
    }

    if (a1 == 11)
    {
      v7 = 6;
      goto LABEL_21;
    }

    if (a1 != 12)
    {
      v7 = 0;
      goto LABEL_21;
    }

    v10 = [v5 bs_compactMap:&__block_literal_global_233];
    v11 = [v10 mutableCopy];

    v7 = 7;
LABEL_18:
    v6 = v11;
    goto LABEL_21;
  }

  if (a1 <= 3)
  {
    if (a1 != 2)
    {
      v7 = a1 == 3;
      goto LABEL_21;
    }

    v12 = [v5 bs_compactMap:&__block_literal_global_233];
    v11 = [v12 mutableCopy];

    v7 = 1;
    goto LABEL_18;
  }

  v8 = 3;
  v9 = 4;
  if (a1 != 6)
  {
    v9 = 0;
  }

  if (a1 != 5)
  {
    v8 = v9;
  }

  if (a1 == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = v8;
  }

LABEL_21:
  v13 = v6;
  *a3 = v6;

  return v7;
}

__CFString *SBStringForFloatingConfiguration(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2783BA7D8[a1];
  }
}

__CFString *SBStringForCenterConfiguration(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2783BA800[a1];
  }
}

__CFString *SBStringForPeekConfiguration(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2783BA818[a1];
  }
}

__CFString *SBStringFromDisplayOrdinal(uint64_t a1)
{
  if (a1)
  {
    return @"second";
  }

  else
  {
    return @"first";
  }
}

uint64_t SBSpaceConfigurationForSpaceConfigurationAndInterfaceOrientation(uint64_t a1, uint64_t a2)
{
  v3 = SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(a1);
  v4 = SBEffectiveAppLayoutConfigurationForInterfaceOrientation(v3, a2);

  return SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration(v4);
}

void sub_21F3477D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F347958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F347A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBSCombineSupressionOptions_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t configurationFromProtobufConfiguration(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 4)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protobufConfigurationFromConfiguration(uint64_t result)
{
  if ((result - 1) < 4)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t environmentFromProtobufEnvironment(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_21F8A7400[a1 - 1];
  }
}

uint64_t protobufEnvironmentFromEnvironment(uint64_t a1)
{
  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t roleFromProtobufRole(int a1)
{
  if ((a1 - 1) > 3)
  {
    v1 = &SBLayoutRoleUndefined;
  }

  else
  {
    v1 = off_2783BA9D0[a1 - 1];
  }

  return *v1;
}

uint64_t protobufRoleFromRole(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
  }

  return 4 * (a1 == 4);
}

uint64_t centerConfigurationFromProtobufCenterConfiguration(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t protobufCenterConfigurationFromCenterConfiguration(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

__CFString *SBStringForAppLayoutCenterConfiguration(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2783BA998[a1];
  }
}

__CFString *SBStringForAppLayoutEnvironment(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2783BA9B0[a1];
  }
}

SBAppLayout *SBAppLayoutGenericAppLayoutWithConfiguration(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v3 = [0 objectForKey:v2];
    if (!v3)
    {
      v4 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"com.apple.springboard.GenericAppLayout" uniqueIdentifier:@"com.apple.springboard.GenericAppLayout.1"];
      v5 = MEMORY[0x277CBEB38];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v18 = v6;
      v19[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v8 = [v5 dictionaryWithDictionary:v7];

      if (a1 != 1)
      {
        v9 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"com.apple.springboard.GenericAppLayout" uniqueIdentifier:@"com.apple.springboard.GenericAppLayout.2"];
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:2];
        v16 = v10;
        v17 = v9;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        [v8 addEntriesFromDictionary:v11];
      }

      v3 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v8 configuration:a1 environment:1 preferredDisplayOrdinal:0];
      v14 = v2;
      v15 = v3;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [0 addEntriesFromDictionary:v12];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_21F348880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F34AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F34AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F34B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t SBEffectiveAppLayoutConfigurationForInterfaceOrientation(uint64_t result, uint64_t a2)
{
  v2 = 3;
  if ((a2 - 1) < 2)
  {
    v2 = 4;
  }

  if (result == 3)
  {
    return v2;
  }

  return result;
}

uint64_t SBAppLayoutCenterConfigurationFromMainDisplayLayoutStateCenterConfiguration(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_21F34D434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F351058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F35126C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F351468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F35162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F35505C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21F35777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F357F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F3584C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SBSystemApertureWellKnownActivityElementIdentifiersForComparison()
{
  if (_SBSystemApertureWellKnownActivityElementIdentifiersForComparison_onceToken != -1)
  {
    _SBSystemApertureWellKnownActivityElementIdentifiersForComparison_cold_1();
  }

  v1 = _SBSystemApertureWellKnownActivityElementIdentifiersForComparison___wellKnownElementIdentifiers;

  return v1;
}

id _SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier(void *a1, char *a2)
{
  v3 = a1;
  v4 = _SBSystemApertureWellKnownActivityElementIdentifiersForComparison();
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  _SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier_cold_2();
LABEL_3:
  v6 = *MEMORY[0x277D68000];
  if ([v3 isEqualToString:*MEMORY[0x277D68000]])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
LABEL_15:
    v18 = v7;
    v19 = 1;
LABEL_16:
    *a2 = v19;
    goto LABEL_17;
  }

  v8 = *MEMORY[0x277D67FD0];
  if ([v3 isEqualToString:*MEMORY[0x277D67FD0]])
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [v9 initWithObjects:{v6, *MEMORY[0x277D68020], 0, v30, v33, v34, v35}];
    goto LABEL_15;
  }

  v10 = *MEMORY[0x277D67FC8];
  if ([v3 isEqualToString:*MEMORY[0x277D67FC8]])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
LABEL_24:
    v18 = v11;
    v19 = 0;
    goto LABEL_16;
  }

  v12 = *MEMORY[0x277D68028];
  if ([v3 isEqualToString:*MEMORY[0x277D68028]])
  {
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = *MEMORY[0x277D68040];
    v15 = *MEMORY[0x277D68008];
    v16 = *MEMORY[0x277D68030];
    v17 = MEMORY[0x277D68020];
LABEL_11:
    v34 = *v17;
    v35 = 0;
LABEL_12:
    v31 = v15;
    v33 = v16;
LABEL_13:
    v29 = v14;
LABEL_14:
    v7 = [v13 initWithObjects:{v6, v8, v29, v31, v33, v34, v35}];
    goto LABEL_15;
  }

  v21 = *MEMORY[0x277D67FF8];
  if ([v3 isEqualToString:*MEMORY[0x277D67FF8]])
  {
    v22 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = [v22 initWithObjects:{v10, *MEMORY[0x277D68018], 0, v30, v33}];
    goto LABEL_24;
  }

  v23 = *MEMORY[0x277D68018];
  if ([v3 isEqualToString:*MEMORY[0x277D68018]])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, 0, v28, v30, v33}];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D68040]])
  {
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = *MEMORY[0x277D68008];
    v15 = *MEMORY[0x277D68030];
    v16 = *MEMORY[0x277D68020];
    v17 = MEMORY[0x277D67FF0];
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D68008]])
  {
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = *MEMORY[0x277D68030];
    v15 = *MEMORY[0x277D68020];
    v16 = *MEMORY[0x277D67FF0];
    v34 = 0;
    goto LABEL_12;
  }

  v24 = *MEMORY[0x277D67FE8];
  if ([v3 isEqualToString:*MEMORY[0x277D67FE8]])
  {
    v25 = objc_alloc(MEMORY[0x277CBEB98]);
    v32 = 0;
LABEL_33:
    v11 = [v25 initWithObjects:{v10, v21, v23, v32, v33}];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D68010]])
  {
    v25 = objc_alloc(MEMORY[0x277CBEB98]);
    v32 = v24;
    v33 = 0;
    goto LABEL_33;
  }

  v26 = *MEMORY[0x277D68030];
  if ([v3 isEqualToString:*MEMORY[0x277D68030]])
  {
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = *MEMORY[0x277D68020];
    v31 = 0;
    goto LABEL_13;
  }

  v27 = *MEMORY[0x277D68020];
  if ([v3 isEqualToString:*MEMORY[0x277D68020]])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v6, 0, v28, v30, v33, v34, v35}];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D67FF0]])
  {
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v33 = v27;
    v34 = 0;
    v29 = v12;
    v31 = v26;
    goto LABEL_14;
  }

  v18 = 0;
LABEL_17:

  return v18;
}

uint64_t _CompareActivityElementsByElementIdentifier(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v5 || v6)
  {
    if (!v5 && v6)
    {
      v8 = 1;
      goto LABEL_6;
    }

    v10 = [v5 elementIdentifier];
    v11 = [v7 elementIdentifier];
    v12 = _SBSystemApertureWellKnownActivityElementIdentifiersForComparison();
    v13 = [v12 containsObject:v10];
    v14 = MEMORY[0x277D67FF0];
    if ((v13 & 1) == 0)
    {
      v15 = SAHasActivityBehavior();
      v16 = *v14;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = v16;

      v10 = v17;
    }

    if (([v12 containsObject:v11] & 1) == 0)
    {
      v18 = SAHasActivityBehavior();
      v19 = *v14;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v19;

      v11 = v20;
    }

    v8 = 0;
    if (!v10 || !v11)
    {
LABEL_41:

      goto LABEL_6;
    }

    if ([v10 isEqualToString:v11])
    {
      v8 = 0;
      goto LABEL_41;
    }

    v30 = 0;
    v21 = _SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier(v10, &v30);
    if ([v21 containsObject:v11])
    {
      if (v30)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (!a3)
      {
        goto LABEL_40;
      }

      v28 = MEMORY[0x277CCACA8];
      v22 = _SBShortElementDescription(v7);
      if (v30)
      {
        v23 = @"superior";
      }

      else
      {
        v23 = @"inferior";
      }

      v26 = v23;
      v24 = _SBShortElementDescription(v5);
      [v28 stringWithFormat:@"Element with well known identifier '%@' present in %@ set of '%@'", v22, v26, v24];
    }

    else
    {
      if (v30)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      if (!a3)
      {
        goto LABEL_40;
      }

      v29 = MEMORY[0x277CCACA8];
      v22 = _SBShortElementDescription(v7);
      if (v30)
      {
        v25 = @"superior";
      }

      else
      {
        v25 = @"inferior";
      }

      v27 = v25;
      v24 = _SBShortElementDescription(v5);
      [v29 stringWithFormat:@"Element with well known identifier '%@' NOT present in %@ set of '%@'", v22, v27, v24];
    }
    *a3 = ;

LABEL_40:
    goto LABEL_41;
  }

  v8 = -1;
LABEL_6:

  return v8;
}

id SBStringFromInvalidationEventResponseOptions(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = v2;
  if (a1)
  {
    [v2 appendFormat:@"%@|", @"Model"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendFormat:@"%@|", @"Layout"];
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v3 appendFormat:@"%@|", @"Identifier Preference"];
  }

LABEL_5:
  if ([v3 length])
  {
    v4 = [v3 substringWithRange:{0, objc_msgSend(v3, "length") - 1}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

void sub_21F35F18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_21F360BF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_21F363E50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_21F365718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F365D94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F365EE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F36603C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F366190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F3662CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F3663F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F366530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F36666C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F3667BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F366944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F366A90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F366BCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F366DB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F366F14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F367054(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F36724C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F367394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F3674DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F367624(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F367778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F3678BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F367A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F367CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F3682D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t SBPBAppLayoutReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v74) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v74 & 0x7F) << v5;
      if ((v74 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v74) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v74 & 0x7F) << v13;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_117:
            v67 = 112;
            goto LABEL_128;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_117;
      case 2u:
        v27 = objc_alloc_init(SBPBDisplayItem);
        v43 = 120;
        goto LABEL_64;
      case 3u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 164) |= 2u;
        while (1)
        {
          LOBYTE(v74) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v74 & 0x7F) << v37;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v39;
        }

LABEL_113:
        v67 = 144;
        goto LABEL_128;
      case 4u:
        v27 = objc_alloc_init(SBPBDisplayItem);
        v43 = 136;
        goto LABEL_64;
      case 5u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v74) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v74 & 0x7F) << v29;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v31;
        }

LABEL_109:
        v67 = 96;
        goto LABEL_128;
      case 6u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          LOBYTE(v74) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v74 & 0x7F) << v44;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            LOBYTE(v50) = 0;
            goto LABEL_119;
          }
        }

        v50 = (v46 != 0) & ~[a2 hasError];
LABEL_119:
        *(a1 + 160) = v50;
        goto LABEL_134;
      case 7u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 164) |= 1u;
        while (1)
        {
          LOBYTE(v74) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v74 & 0x7F) << v51;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v53;
        }

LABEL_123:
        v67 = 48;
        goto LABEL_128;
      case 8u:
        v27 = objc_alloc_init(SBPBDisplayItem);
        v43 = 40;
LABEL_64:
        objc_storeStrong((a1 + v43), v27);
        v74 = 0;
        v75 = 0;
        if (!PBReaderPlaceMark() || !SBPBDisplayItemReadFrom(v27, a2))
        {
          goto LABEL_145;
        }

        goto LABEL_79;
      case 9u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        while (1)
        {
          LOBYTE(v74) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v74 & 0x7F) << v59;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v61;
        }

LABEL_127:
        v67 = 32;
LABEL_128:
        *(a1 + v67) = v19;
        goto LABEL_134;
      case 0xAu:
        v74 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v68 = [a2 data];
          [v68 getBytes:&v74 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v69 = v74;
        v70 = 24;
        goto LABEL_133;
      case 0xBu:
        v74 = 0;
        v57 = [a2 position] + 8;
        if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 8, v58 <= objc_msgSend(a2, "length")))
        {
          v71 = [a2 data];
          [v71 getBytes:&v74 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v69 = v74;
        v70 = 16;
LABEL_133:
        *(a1 + v70) = v69;
        goto LABEL_134;
      case 0xCu:
        v27 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
        v28 = 128;
        goto LABEL_77;
      case 0xDu:
        v27 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
        v28 = 152;
        goto LABEL_77;
      case 0xEu:
        v27 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
        v28 = 56;
LABEL_77:
        objc_storeStrong((a1 + v28), v27);
        v74 = 0;
        v75 = 0;
        if (PBReaderPlaceMark() && SBPBDisplayItemLayoutAttributesReadFrom(v27, a2))
        {
LABEL_79:
          PBReaderRecallMark();

LABEL_134:
          v72 = [a2 position];
          if (v72 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_145:

        return 0;
      case 0xFu:
        if ((SBPBAppLayoutReadFrom_cold_4() & 1) == 0)
        {
          return v74;
        }

        goto LABEL_134;
      case 0x10u:
        if ((SBPBAppLayoutReadFrom_cold_3() & 1) == 0)
        {
          return v74;
        }

        goto LABEL_134;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v74) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v74 & 0x7F) << v20;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_105:
        *(a1 + 8) = v26;
        goto LABEL_134;
      case 0x12u:
        v65 = PBReaderReadString();
        v66 = *(a1 + 64);
        *(a1 + 64) = v65;

        goto LABEL_134;
      case 0x13u:
        if ((SBPBAppLayoutReadFrom_cold_2() & 1) == 0)
        {
          return v74;
        }

        goto LABEL_134;
      case 0x14u:
        if (SBPBAppLayoutReadFrom_cold_1())
        {
          goto LABEL_134;
        }

        return v74;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_134;
    }
  }
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  result = 0;
  *v0 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

__CFString *NSStringFromSBSwitcherModifierEventResponseType(uint64_t a1)
{
  if ((a1 - 1) > 0x37)
  {
    return @"Anonymous";
  }

  else
  {
    return off_2783BACB8[a1 - 1];
  }
}

void sub_21F3710BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F371964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F3729F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak((v32 - 120));
  objc_destroyWeak((v32 - 112));
  _Unwind_Resume(a1);
}

void sub_21F373030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SystemSoundCompleted(uint64_t a1)
{
  v2 = +[SBSoundController sharedInstance];
  [v2 _cleanupSystemSound:a1 andKill:0];
}

void sub_21F37656C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F376758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F377B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F377EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F379BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F379E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _SBHNativeScaleForScreenType(uint64_t a1)
{
  if (a1 <= 106)
  {
    switch(a1)
    {
      case 3:
      case 4:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 5:
      case 6:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 7:
      case 8:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 9:
      case 10:
        v2 = 0.96;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 11:
      case 12:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 13:
      case 14:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 15:
      case 16:
        v2 = 0.96;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 17:
      case 18:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 19:
      case 20:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 21:
      case 22:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 23:
      case 24:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 25:
      case 26:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 27:
      case 28:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      case 29:
      case 30:
        v2 = 1.0;

        return ___SBHNativeScaleForScreenType_block_invoke(v2);
      default:
        goto LABEL_65;
    }
  }

  v4 = a1 - 111;
  if ((a1 - 111) <= 7)
  {
    if (((1 << v4) & 7) != 0)
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 1.0;
      if (((1 << v4) & 0xE0) != 0)
      {
      }
    }

    return ___SBHNativeScaleForScreenType_block_invoke(v2);
  }

  if ((a1 - 107) < 2)
  {
    v2 = 1.0;

    return ___SBHNativeScaleForScreenType_block_invoke(v2);
  }

  if ((a1 - 109) < 2)
  {
    v2 = 1.0;

    return ___SBHNativeScaleForScreenType_block_invoke(v2);
  }

LABEL_65:
  SBHGetScreenSpecification();
  return v5;
}

__CFString *SBModifierCacheCoordinatorResponseDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"IncrementGenCount";
  }

  else
  {
    return off_2783BBF78[a1 - 1];
  }
}

uint64_t SBChainableModifierMethodCacheQueryTrampolineForMethod(const char *a1, char *__s2, uint64_t a3)
{
  v6 = 106;
  for (i = &off_283087708; strcmp(*(i - 1), __s2); i += 2)
  {
    if (!--v6)
    {
      SBChainableModifierMethodCacheQueryTrampolineForMethod_cold_1(a1, __s2);
    }
  }

  v8 = *i;

  return (v8)(a3, a1);
}

uint64_t SBChainableModifierMethodCacheEventTrampolineForMethod(const char *a1, char *__s2, uint64_t a3)
{
  v6 = 106;
  for (i = &off_283087DA8; strcmp(*(i - 1), __s2); i += 2)
  {
    if (!--v6)
    {
      SBChainableModifierMethodCacheEventTrampolineForMethod_cold_1(a1, __s2);
    }
  }

  v8 = *i;

  return (v8)(a3, a1);
}

uint64_t SBChainableModifierMethodCacheContextTrampolineForMethod(const char *a1, char *__s2, uint64_t a3)
{
  v6 = 106;
  for (i = &off_283088448; strcmp(*(i - 1), __s2); i += 2)
  {
    if (!--v6)
    {
      SBChainableModifierMethodCacheContextTrampolineForMethod_cold_1(a1, __s2);
    }
  }

  v8 = *i;

  return (v8)(a3, a1);
}

IMP blockIMPFromQuerySignature0(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature0_block_invoke;
  v6[3] = &__block_descriptor_48_e29__16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature1(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature1_block_invoke;
  v6[3] = &__block_descriptor_48_e32__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature2_block_invoke;
  v6[3] = &__block_descriptor_48_e32__24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature3(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature3_block_invoke;
  v6[3] = &__block_descriptor_48_e29_B16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature4(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature4_block_invoke;
  v6[3] = &__block_descriptor_48_e32_B24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature5(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature5_block_invoke;
  v6[3] = &__block_descriptor_48_e29_q16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature6(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature6_block_invoke;
  v6[3] = &__block_descriptor_48_e29_Q16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature7(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature7_block_invoke;
  v6[3] = &__block_descriptor_48_e32_Q24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature8(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature8_block_invoke;
  v6[3] = &__block_descriptor_48_e29_d16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature9(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature9_block_invoke;
  v6[3] = &__block_descriptor_48_e32_d24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature10(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature10_block_invoke;
  v6[3] = &__block_descriptor_48_e41___NSRange_QQ_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature11(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature11_block_invoke;
  v6[3] = &__block_descriptor_48_e63__CGRect__CGPoint_dd__CGSize_dd__24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature12(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature12_block_invoke;
  v6[3] = &__block_descriptor_48_e55__UIRectCornerRadii_dddd_24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature13(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature13_block_invoke;
  v6[3] = &__block_descriptor_48_e60__CGRect__CGPoint_dd__CGSize_dd__16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature14(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature14_block_invoke;
  v6[3] = &__block_descriptor_48_e40__CGPoint_dd_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature15(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature15_block_invoke;
  v6[3] = &__block_descriptor_48_e39__CGSize_dd_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature16(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature16_block_invoke;
  v6[3] = &__block_descriptor_48_e32_B24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature17(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature17_block_invoke;
  v6[3] = &__block_descriptor_48_e63__CGRect__CGPoint_dd__CGSize_dd__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature18(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature18_block_invoke;
  v6[3] = &__block_descriptor_48_e32_d24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature19(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature19_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8q16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature20(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature20_block_invoke;
  v6[3] = &__block_descriptor_48_e32_v24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature21(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature21_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8_16d24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature22(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature22_block_invoke;
  v6[3] = &__block_descriptor_48_e32_q24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature23(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature23_block_invoke;
  v6[3] = &__block_descriptor_48_e32_Q24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature24(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature24_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8Q16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature25(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature25_block_invoke;
  v6[3] = &__block_descriptor_48_e68__CGPoint_dd_48__0__SBChainableModifier_8_CGPoint_dd_16_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature26(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature26_block_invoke;
  v6[3] = &__block_descriptor_48_e29_v16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature27(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature27_block_invoke;
  v6[3] = &__block_descriptor_48_e104__CGPoint_dd_96__0__SBChainableModifier_8_CGPoint_dd_16_CGPoint_dd_32_CGPoint_dd_48_CGPoint_dd_64_d80_d88l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature28(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature28_block_invoke;
  v6[3] = &__block_descriptor_48_e57__CGPoint_dd_40__0__SBChainableModifier_8_16_CGPoint_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature29(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature29_block_invoke;
  v6[3] = &__block_descriptor_48_e35__32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature30(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature30_block_invoke;
  v6[3] = &__block_descriptor_48_e69__CGRect__CGPoint_dd__CGSize_dd__40__0__SBChainableModifier_8q16_24q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature31(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature31_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature32(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature32_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8_16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature33(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature33_block_invoke;
  v6[3] = &__block_descriptor_48_e58__UIRectCornerRadii_dddd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature34(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature34_block_invoke;
  v6[3] = &__block_descriptor_48_e35__32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature35(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature35_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature36(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature36_block_invoke;
  v6[3] = &__block_descriptor_48_e46__40__0__SBChainableModifier_8_16_CGPoint_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature37(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature37_block_invoke;
  v6[3] = &__block_descriptor_48_e42__CGSize_dd_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature38(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature38_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature39(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature39_block_invoke;
  v6[3] = &__block_descriptor_48_e45__40__0__SBChainableModifier_8_16_CGSize_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature40(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature40_block_invoke;
  v6[3] = &__block_descriptor_48_e55__CGSize_dd_40__0__SBChainableModifier_8_CGSize_dd_16_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature41(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature41_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature42(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature42_block_invoke;
  v6[3] = &__block_descriptor_48_e49__48__0__SBChainableModifier_8q16_24_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature43(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature43_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature44(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature44_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8q16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature45(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature45_block_invoke;
  v6[3] = &__block_descriptor_48_e32_q24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature46(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature46_block_invoke;
  v6[3] = &__block_descriptor_48_e38_Q40__0__SBChainableModifier_8Q16q24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature47(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature47_block_invoke;
  v6[3] = &__block_descriptor_48_e43__CGPoint_dd_24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature48(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature48_block_invoke;
  v6[3] = &__block_descriptor_48_e67__CGAffineTransform_dddddd_32__0__SBChainableModifier_8_CGSize_dd_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature49(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature49_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature50(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature50_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature51(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature51_block_invoke;
  v6[3] = &__block_descriptor_48_e70__SBSwitcherAsyncRenderingAttributes_BB_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature52(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature52_block_invoke;
  v6[3] = &__block_descriptor_48_e38_d40__0__SBChainableModifier_8q16_24Q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature53(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature53_block_invoke;
  v6[3] = &__block_descriptor_48_e38_d36__0__SBChainableModifier_8_16d24B32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature54(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature54_block_invoke;
  v6[3] = &__block_descriptor_48_e106__SBSwitcherShelfPresentationAttributes_B_CGRect__CGPoint_dd__CGSize_dd__QQ_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature55(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature55_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature56(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature56_block_invoke;
  v6[3] = &__block_descriptor_48_e38_B40__0__SBChainableModifier_8q16_24Q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature57(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature57_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature58(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature58_block_invoke;
  v6[3] = &__block_descriptor_48_e43__CGPoint_dd_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature59(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature59_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8q16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature60(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature60_block_invoke;
  v6[3] = &__block_descriptor_48_e46_B40__0__SBChainableModifier_8Q16_CGPoint_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature61(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature61_block_invoke;
  v6[3] = &__block_descriptor_48_e97__CGRect__CGPoint_dd__CGSize_dd__56__0__SBChainableModifier_8Q16_CGRect__CGPoint_dd__CGSize_dd__24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature62(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature62_block_invoke;
  v6[3] = &__block_descriptor_48_e100__CGRect__CGPoint_dd__CGSize_dd__64__0__SBChainableModifier_8q16_24_CGRect__CGPoint_dd__CGSize_dd__32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature63(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature63_block_invoke;
  v6[3] = &__block_descriptor_48_e129__CGPoint_dd_112__0__SBChainableModifier_8q16Q24_CGRect__CGPoint_dd__CGSize_dd__32_CGPoint_dd_64_CGRect__CGPoint_dd__CGSize_dd__80l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature64(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature64_block_invoke;
  v6[3] = &__block_descriptor_48_e49_B48__0__SBChainableModifier_8q16Q24_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature65(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature65_block_invoke;
  v6[3] = &__block_descriptor_48_e103__CGRect__CGPoint_dd__CGSize_dd__72__0__SBChainableModifier_8q16_24q32_CGRect__CGPoint_dd__CGSize_dd__40l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature66(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature66_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8_16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature67(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature67_block_invoke;
  v6[3] = &__block_descriptor_48_e84__UIRectCornerRadii_dddd_64__0__SBChainableModifier_8q16_24_UIRectCornerRadii_dddd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature68(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature68_block_invoke;
  v6[3] = &__block_descriptor_48_e38_Q40__0__SBChainableModifier_8q16_24Q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature69(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature69_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8q16d24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature70(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature70_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8_16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature71(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature71_block_invoke;
  v6[3] = &__block_descriptor_48_e32_c24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature72(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature72_block_invoke;
  v6[3] = &__block_descriptor_48_e45__CGSize_dd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature73(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature73_block_invoke;
  v6[3] = &__block_descriptor_48_e103__CGRect__CGPoint_dd__CGSize_dd__72__0__SBChainableModifier_8q16_24_CGRect__CGPoint_dd__CGSize_dd__32q64l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature74(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature74_block_invoke;
  v6[3] = &__block_descriptor_48_e79__CGSize_dd_64__0__SBChainableModifier_8q16_24_CGRect__CGPoint_dd__CGSize_dd__32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature75(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature75_block_invoke;
  v6[3] = &__block_descriptor_48_e97__CGRect__CGPoint_dd__CGSize_dd__56__0__SBChainableModifier_8_CGRect__CGPoint_dd__CGSize_dd__16_48l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature76(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature76_block_invoke;
  v6[3] = &__block_descriptor_48_e57__CGPoint_dd_40__0__SBChainableModifier_8_CGPoint_dd_16_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature77(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature77_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8_16d24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature78(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature78_block_invoke;
  v6[3] = &__block_descriptor_48_e76__SBSwitcherWallpaperGradientAttributes_dd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature79(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature79_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature80(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature80_block_invoke;
  v6[3] = &__block_descriptor_48_e80__SBSwitcherContinuousExposeStripTongueAttributes_QQ_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature81(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature81_block_invoke;
  v6[3] = &__block_descriptor_48_e38_B36__0__SBChainableModifier_8_16_24B32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature82(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature82_block_invoke;
  v6[3] = &__block_descriptor_48_e38__40__0__SBChainableModifier_8_16_24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature83(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature83_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8d16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature84(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature84_block_invoke;
  v6[3] = &__block_descriptor_48_e103__CGRect__CGPoint_dd__CGSize_dd__72__0__SBChainableModifier_8Q16_24Q32_CGRect__CGPoint_dd__CGSize_dd__40l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature85(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature85_block_invoke;
  v6[3] = &__block_descriptor_48_e49__48__0__SBChainableModifier_8_CGPoint_dd_16_32_40l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature86(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature86_block_invoke;
  v6[3] = &__block_descriptor_48_e43_B32__0__SBChainableModifier_8_CGPoint_dd_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature87(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature87_block_invoke;
  v6[3] = &__block_descriptor_48_e38__32__0__SBChainableModifier_8_16B24B28l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature88(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature88_block_invoke;
  v6[3] = &__block_descriptor_48_e35_v32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature89(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature89_block_invoke;
  v6[3] = &__block_descriptor_48_e38_v40__0__SBChainableModifier_8_16_24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature90(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature90_block_invoke;
  v6[3] = &__block_descriptor_48_e134__SBWindowingItemFrame__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGPoint_dd__CGPoint_dd__CGPoint_dd__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature91(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature91_block_invoke;
  v6[3] = &__block_descriptor_48_e81__SBWindowingItemCorners__UIRectCornerRadii_dddd_Q_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature92(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature92_block_invoke;
  v6[3] = &__block_descriptor_48_e57__SBWindowingItemShadow_dq_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature93(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature93_block_invoke;
  v6[3] = &__block_descriptor_48_e64__SBWindowingItemTitleStyle_dddqQ_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature94(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature94_block_invoke;
  v6[3] = &__block_descriptor_48_e73__SBSwitcherWallpaperGradientAttributes_dd_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature95(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature95_block_invoke;
  v6[3] = &__block_descriptor_48_e70__SBWindowControlsLayout_qB_CGPoint_dd__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature96(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature96_block_invoke;
  v6[3] = &__block_descriptor_48_e91__CGSize_dd_96__0__SBChainableModifier_8_16_CGRect__CGPoint_dd__CGSize_dd__24_56_64q72d80_88l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature97(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature97_block_invoke;
  v6[3] = &__block_descriptor_48_e38__40__0__SBChainableModifier_8q16_24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature98(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature98_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8Q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature99(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature99_block_invoke;
  v6[3] = &__block_descriptor_48_e45__CGSize_dd_32__0__SBChainableModifier_8_16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature100(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature100_block_invoke;
  v6[3] = &__block_descriptor_48_e138__SBWindowControlsLayout_qB_CGPoint_dd__88__0__SBChainableModifier_8_16_CGRect__CGPoint_dd__CGSize_dd__24_CGRect__CGPoint_dd__CGSize_dd__56l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature101(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature101_block_invoke;
  v6[3] = &__block_descriptor_48_e38_d40__0__SBChainableModifier_8q16_24d32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature102(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature102_block_invoke;
  v6[3] = &__block_descriptor_48_e38_B40__0__SBChainableModifier_8_16Q24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature103(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature103_block_invoke;
  v6[3] = &__block_descriptor_48_e60__CGPoint_dd_48__0__SBChainableModifier_8q16_24_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature104(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature104_block_invoke;
  v6[3] = &__block_descriptor_48_e32__24__0__SBChainableModifier_8q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromQuerySignature105(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromQuerySignature105_block_invoke;
  v6[3] = &__block_descriptor_48_e109__SBSwitcherGenieGlassHighlight_Q_SBSwitcherGenieGlassHighlightDirection_ddd_d_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

uint64_t __blockIMPFromQuerySignature10_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromQuerySignature14_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromQuerySignature15_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromQuerySignature17_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature19_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature20_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature21_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);
  v11.n128_f64[0] = a4;

  return v9(v7, v10, a3, v11);
}

uint64_t __blockIMPFromQuerySignature25_block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v13 = v12;
  v14 = *(a1 + 40);
  v15.n128_f64[0] = a3;
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  v18.n128_f64[0] = a6;

  return v13(v11, v14, v15, v16, v17, v18);
}

uint64_t __blockIMPFromQuerySignature26_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromQuerySignature27_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v23 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v25 = v24;
  v26 = *(a1 + 40);
  v27.n128_f64[0] = a5;
  v28.n128_f64[0] = a6;
  v29.n128_f64[0] = a7;
  v30.n128_f64[0] = a8;
  v31.n128_f64[0] = a9;
  v32.n128_f64[0] = a10;
  v33.n128_f64[0] = a11;
  v34.n128_f64[0] = a12;

  return v25(v23, v26, a3, a4, v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t __blockIMPFromQuerySignature28_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v11(v9, v12, a3, v13, v14);
}

uint64_t __blockIMPFromQuerySignature30_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature31_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature32_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature33_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature36_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v11(v9, v12, a3, v13, v14);
}

uint64_t __blockIMPFromQuerySignature37_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature38_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature39_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v11(v9, v12, a3, v13, v14);
}

uint64_t __blockIMPFromQuerySignature40_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v11(v9, v12, a3, v13, v14);
}

uint64_t __blockIMPFromQuerySignature42_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v13 = v12;
  v14 = *(a1 + 40);
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return v13(v11, v14, a3, a4, v15, v16);
}

uint64_t __blockIMPFromQuerySignature46_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature48_block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return v9(v7, v10, v11, v12);
}

double __blockIMPFromQuerySignature49_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v12 = v11(v10, *(a1 + 40), v9, v8);

  return v12;
}

double __blockIMPFromQuerySignature50_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v12 = v11(v10, *(a1 + 40), v9, v8);

  return v12;
}

uint64_t __blockIMPFromQuerySignature53_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a5;

  return v11(v9, v12, a3, a4, v13);
}

uint64_t __blockIMPFromQuerySignature54_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature59_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature60_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v11(v9, v12, a3, v13, v14);
}

uint64_t __blockIMPFromQuerySignature63_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v17 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v19 = v18;
  v20 = *(a1 + 40);
  v21.n128_f64[0] = a5;
  v22.n128_f64[0] = a6;
  v23.n128_f64[0] = a7;
  v24.n128_f64[0] = a8;
  v25.n128_f64[0] = a9;
  v26.n128_f64[0] = a10;

  return v19(v17, v20, a3, a4, v21, v22, v23, v24, v25, v26);
}

uint64_t __blockIMPFromQuerySignature64_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v13 = v12;
  v14 = *(a1 + 40);
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return v13(v11, v14, a3, a4, v15, v16);
}

uint64_t __blockIMPFromQuerySignature65_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v19 = v18;
  v20 = *(a1 + 40);
  v21.n128_f64[0] = a6;
  v22.n128_f64[0] = a7;
  v23.n128_f64[0] = a8;
  v24.n128_f64[0] = a9;

  return v19(v17, v20, a3, a4, a5, v21, v22, v23, v24);
}

uint64_t __blockIMPFromQuerySignature66_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature69_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);
  v11.n128_f64[0] = a4;

  return v9(v7, v10, a3, v11);
}

uint64_t __blockIMPFromQuerySignature70_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature71_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

double __blockIMPFromQuerySignature72_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v11 = v10(v9, *(a1 + 40), a3, v8);

  return v11;
}

double __blockIMPFromQuerySignature73_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v16 = *(a2 + 16);
  v17 = *(a1 + 32);
  v18 = a4;
  v19 = MethodCacheDispatchDataForSelectorIndex(v16, v17);
  v21 = v20(v19, *(a1 + 40), a3, v18, a5, a6, a7, a8, a9);

  return v21;
}

double __blockIMPFromQuerySignature74_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v14 = *(a2 + 16);
  v15 = *(a1 + 32);
  v16 = a4;
  v17 = MethodCacheDispatchDataForSelectorIndex(v14, v15);
  v19 = v18(v17, *(a1 + 40), a3, v16, a5, a6, a7, a8);

  return v19;
}

uint64_t __blockIMPFromQuerySignature79_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v12 = v11(v10, *(a1 + 40), v9, v8);

  return v12;
}

uint64_t __blockIMPFromQuerySignature81_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature82_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature85_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v13 = v12;
  v14 = *(a1 + 40);
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return v13(v11, v14, a3, a4, v15, v16);
}

uint64_t __blockIMPFromQuerySignature86_block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return v9(v7, v10, v11, v12);
}

id __blockIMPFromQuerySignature87_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v10 = a3;
  v11 = MethodCacheDispatchDataForSelectorIndex(v9, v8);
  v13 = v12(v11, *(a1 + 40), v10, a4, a5);

  return v13;
}

void __blockIMPFromQuerySignature88_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a4;
  v11 = a3;
  v9 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v10(v9, *(a1 + 40), v11, v8);
}

void __blockIMPFromQuerySignature89_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v10 = a5;
  v11 = a4;
  v14 = a3;
  v12 = MethodCacheDispatchDataForSelectorIndex(v9, v8);
  v13(v12, *(a1 + 40), v14, v11, v10);
}

void __blockIMPFromQuerySignature90_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v8 = a3;
  v6 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v7(v6, *(a1 + 40), v8);
}

void __blockIMPFromQuerySignature91_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v8 = a3;
  v6 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v7(v6, *(a1 + 40), v8);
}

uint64_t __blockIMPFromQuerySignature92_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v9 = v8(v7, *(a1 + 40), v6);

  return v9;
}

void __blockIMPFromQuerySignature93_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v8 = a3;
  v6 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v7(v6, *(a1 + 40), v8);
}

double __blockIMPFromQuerySignature94_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v9 = v8(v7, *(a1 + 40), v6);

  return v9;
}

void __blockIMPFromQuerySignature95_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v8 = a3;
  v6 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v7(v6, *(a1 + 40), v8);
}

uint64_t __blockIMPFromQuerySignature97_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature99_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature100_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v23 = v22;
  v24 = *(a1 + 40);
  v25.n128_f64[0] = a4;
  v26.n128_f64[0] = a5;
  v27.n128_f64[0] = a6;
  v28.n128_f64[0] = a7;
  v29.n128_f64[0] = a8;
  v30.n128_f64[0] = a9;
  v31.n128_f64[0] = a10;
  v32.n128_f64[0] = a11;

  return v23(v21, v24, a3, v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t __blockIMPFromQuerySignature101_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);
  v13.n128_f64[0] = a5;

  return v11(v9, v12, a3, a4, v13);
}

uint64_t __blockIMPFromQuerySignature102_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature103_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v13 = v12;
  v14 = *(a1 + 40);
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return v13(v11, v14, a3, a4, v15, v16);
}

uint64_t __blockIMPFromQuerySignature104_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature105_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

IMP blockIMPFromEventSignature0(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature0_block_invoke;
  v6[3] = &__block_descriptor_48_e29__16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature1(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature1_block_invoke;
  v6[3] = &__block_descriptor_48_e32__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature2_block_invoke;
  v6[3] = &__block_descriptor_48_e32__24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature3(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature3_block_invoke;
  v6[3] = &__block_descriptor_48_e29_B16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature4(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature4_block_invoke;
  v6[3] = &__block_descriptor_48_e32_B24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature5(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature5_block_invoke;
  v6[3] = &__block_descriptor_48_e29_q16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature6(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature6_block_invoke;
  v6[3] = &__block_descriptor_48_e29_Q16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature7(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature7_block_invoke;
  v6[3] = &__block_descriptor_48_e32_Q24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature8(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature8_block_invoke;
  v6[3] = &__block_descriptor_48_e29_d16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature9(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature9_block_invoke;
  v6[3] = &__block_descriptor_48_e32_d24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature10(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature10_block_invoke;
  v6[3] = &__block_descriptor_48_e41___NSRange_QQ_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature11(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature11_block_invoke;
  v6[3] = &__block_descriptor_48_e63__CGRect__CGPoint_dd__CGSize_dd__24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature12(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature12_block_invoke;
  v6[3] = &__block_descriptor_48_e55__UIRectCornerRadii_dddd_24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature13(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature13_block_invoke;
  v6[3] = &__block_descriptor_48_e60__CGRect__CGPoint_dd__CGSize_dd__16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature14(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature14_block_invoke;
  v6[3] = &__block_descriptor_48_e40__CGPoint_dd_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature15(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature15_block_invoke;
  v6[3] = &__block_descriptor_48_e39__CGSize_dd_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature16(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature16_block_invoke;
  v6[3] = &__block_descriptor_48_e32_B24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature17(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature17_block_invoke;
  v6[3] = &__block_descriptor_48_e63__CGRect__CGPoint_dd__CGSize_dd__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature18(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature18_block_invoke;
  v6[3] = &__block_descriptor_48_e32_d24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature19(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature19_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8q16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature20(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature20_block_invoke;
  v6[3] = &__block_descriptor_48_e32_v24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature21(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature21_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8_16d24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature22(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature22_block_invoke;
  v6[3] = &__block_descriptor_48_e32_q24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature23(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature23_block_invoke;
  v6[3] = &__block_descriptor_48_e32_Q24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature24(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature24_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8Q16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature25(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature25_block_invoke;
  v6[3] = &__block_descriptor_48_e68__CGPoint_dd_48__0__SBChainableModifier_8_CGPoint_dd_16_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature26(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature26_block_invoke;
  v6[3] = &__block_descriptor_48_e29_v16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature27(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature27_block_invoke;
  v6[3] = &__block_descriptor_48_e104__CGPoint_dd_96__0__SBChainableModifier_8_CGPoint_dd_16_CGPoint_dd_32_CGPoint_dd_48_CGPoint_dd_64_d80_d88l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature28(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature28_block_invoke;
  v6[3] = &__block_descriptor_48_e57__CGPoint_dd_40__0__SBChainableModifier_8_16_CGPoint_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature29(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature29_block_invoke;
  v6[3] = &__block_descriptor_48_e35__32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature30(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature30_block_invoke;
  v6[3] = &__block_descriptor_48_e69__CGRect__CGPoint_dd__CGSize_dd__40__0__SBChainableModifier_8q16_24q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature31(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature31_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature32(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature32_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8_16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature33(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature33_block_invoke;
  v6[3] = &__block_descriptor_48_e58__UIRectCornerRadii_dddd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature34(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature34_block_invoke;
  v6[3] = &__block_descriptor_48_e35__32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature35(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature35_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature36(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature36_block_invoke;
  v6[3] = &__block_descriptor_48_e46__40__0__SBChainableModifier_8_16_CGPoint_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature37(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature37_block_invoke;
  v6[3] = &__block_descriptor_48_e42__CGSize_dd_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature38(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature38_block_invoke;
  v6[3] = &__block_descriptor_48_e35_B32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature39(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature39_block_invoke;
  v6[3] = &__block_descriptor_48_e45__40__0__SBChainableModifier_8_16_CGSize_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature40(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature40_block_invoke;
  v6[3] = &__block_descriptor_48_e55__CGSize_dd_40__0__SBChainableModifier_8_CGSize_dd_16_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature41(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature41_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature42(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature42_block_invoke;
  v6[3] = &__block_descriptor_48_e49__48__0__SBChainableModifier_8q16_24_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature43(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature43_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature44(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature44_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8q16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature45(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature45_block_invoke;
  v6[3] = &__block_descriptor_48_e32_q24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature46(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature46_block_invoke;
  v6[3] = &__block_descriptor_48_e38_Q40__0__SBChainableModifier_8Q16q24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature47(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature47_block_invoke;
  v6[3] = &__block_descriptor_48_e43__CGPoint_dd_24__0__SBChainableModifier_8Q16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature48(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature48_block_invoke;
  v6[3] = &__block_descriptor_48_e67__CGAffineTransform_dddddd_32__0__SBChainableModifier_8_CGSize_dd_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature49(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature49_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature50(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature50_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature51(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature51_block_invoke;
  v6[3] = &__block_descriptor_48_e70__SBSwitcherAsyncRenderingAttributes_BB_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature52(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature52_block_invoke;
  v6[3] = &__block_descriptor_48_e38_d40__0__SBChainableModifier_8q16_24Q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature53(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature53_block_invoke;
  v6[3] = &__block_descriptor_48_e38_d36__0__SBChainableModifier_8_16d24B32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature54(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature54_block_invoke;
  v6[3] = &__block_descriptor_48_e106__SBSwitcherShelfPresentationAttributes_B_CGRect__CGPoint_dd__CGSize_dd__QQ_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature55(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature55_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature56(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature56_block_invoke;
  v6[3] = &__block_descriptor_48_e38_B40__0__SBChainableModifier_8q16_24Q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature57(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature57_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature58(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature58_block_invoke;
  v6[3] = &__block_descriptor_48_e43__CGPoint_dd_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature59(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature59_block_invoke;
  v6[3] = &__block_descriptor_48_e46__CGPoint_dd_32__0__SBChainableModifier_8q16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature60(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature60_block_invoke;
  v6[3] = &__block_descriptor_48_e46_B40__0__SBChainableModifier_8Q16_CGPoint_dd_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature61(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature61_block_invoke;
  v6[3] = &__block_descriptor_48_e97__CGRect__CGPoint_dd__CGSize_dd__56__0__SBChainableModifier_8Q16_CGRect__CGPoint_dd__CGSize_dd__24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature62(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature62_block_invoke;
  v6[3] = &__block_descriptor_48_e100__CGRect__CGPoint_dd__CGSize_dd__64__0__SBChainableModifier_8q16_24_CGRect__CGPoint_dd__CGSize_dd__32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature63(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature63_block_invoke;
  v6[3] = &__block_descriptor_48_e129__CGPoint_dd_112__0__SBChainableModifier_8q16Q24_CGRect__CGPoint_dd__CGSize_dd__32_CGPoint_dd_64_CGRect__CGPoint_dd__CGSize_dd__80l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature64(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature64_block_invoke;
  v6[3] = &__block_descriptor_48_e49_B48__0__SBChainableModifier_8q16Q24_CGPoint_dd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature65(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature65_block_invoke;
  v6[3] = &__block_descriptor_48_e103__CGRect__CGPoint_dd__CGSize_dd__72__0__SBChainableModifier_8q16_24q32_CGRect__CGPoint_dd__CGSize_dd__40l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature66(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature66_block_invoke;
  v6[3] = &__block_descriptor_48_e66__CGRect__CGPoint_dd__CGSize_dd__32__0__SBChainableModifier_8_16q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature67(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature67_block_invoke;
  v6[3] = &__block_descriptor_48_e84__UIRectCornerRadii_dddd_64__0__SBChainableModifier_8q16_24_UIRectCornerRadii_dddd_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature68(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature68_block_invoke;
  v6[3] = &__block_descriptor_48_e38_Q40__0__SBChainableModifier_8q16_24Q32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature69(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature69_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8q16d24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature70(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature70_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8_16Q24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature71(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature71_block_invoke;
  v6[3] = &__block_descriptor_48_e32_c24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature72(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature72_block_invoke;
  v6[3] = &__block_descriptor_48_e45__CGSize_dd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature73(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature73_block_invoke;
  v6[3] = &__block_descriptor_48_e103__CGRect__CGPoint_dd__CGSize_dd__72__0__SBChainableModifier_8q16_24_CGRect__CGPoint_dd__CGSize_dd__32q64l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature74(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature74_block_invoke;
  v6[3] = &__block_descriptor_48_e79__CGSize_dd_64__0__SBChainableModifier_8q16_24_CGRect__CGPoint_dd__CGSize_dd__32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature75(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature75_block_invoke;
  v6[3] = &__block_descriptor_48_e97__CGRect__CGPoint_dd__CGSize_dd__56__0__SBChainableModifier_8_CGRect__CGPoint_dd__CGSize_dd__16_48l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature76(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature76_block_invoke;
  v6[3] = &__block_descriptor_48_e57__CGPoint_dd_40__0__SBChainableModifier_8_CGPoint_dd_16_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature77(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature77_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8_16d24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature78(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature78_block_invoke;
  v6[3] = &__block_descriptor_48_e76__SBSwitcherWallpaperGradientAttributes_dd_32__0__SBChainableModifier_8q16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature79(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature79_block_invoke;
  v6[3] = &__block_descriptor_48_e35_Q32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature80(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature80_block_invoke;
  v6[3] = &__block_descriptor_48_e80__SBSwitcherContinuousExposeStripTongueAttributes_QQ_16__0__SBChainableModifier_8l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature81(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature81_block_invoke;
  v6[3] = &__block_descriptor_48_e38_B36__0__SBChainableModifier_8_16_24B32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature82(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature82_block_invoke;
  v6[3] = &__block_descriptor_48_e38__40__0__SBChainableModifier_8_16_24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature83(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature83_block_invoke;
  v6[3] = &__block_descriptor_48_e35_d32__0__SBChainableModifier_8d16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature84(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature84_block_invoke;
  v6[3] = &__block_descriptor_48_e103__CGRect__CGPoint_dd__CGSize_dd__72__0__SBChainableModifier_8Q16_24Q32_CGRect__CGPoint_dd__CGSize_dd__40l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature85(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature85_block_invoke;
  v6[3] = &__block_descriptor_48_e49__48__0__SBChainableModifier_8_CGPoint_dd_16_32_40l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature86(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature86_block_invoke;
  v6[3] = &__block_descriptor_48_e43_B32__0__SBChainableModifier_8_CGPoint_dd_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature87(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature87_block_invoke;
  v6[3] = &__block_descriptor_48_e38__32__0__SBChainableModifier_8_16B24B28l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature88(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature88_block_invoke;
  v6[3] = &__block_descriptor_48_e35_v32__0__SBChainableModifier_8_16_24l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature89(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature89_block_invoke;
  v6[3] = &__block_descriptor_48_e38_v40__0__SBChainableModifier_8_16_24_32l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature90(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature90_block_invoke;
  v6[3] = &__block_descriptor_48_e134__SBWindowingItemFrame__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGPoint_dd__CGPoint_dd__CGPoint_dd__24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature91(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature91_block_invoke;
  v6[3] = &__block_descriptor_48_e81__SBWindowingItemCorners__UIRectCornerRadii_dddd_Q_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP blockIMPFromEventSignature92(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __blockIMPFromEventSignature92_block_invoke;
  v6[3] = &__block_descriptor_48_e57__SBWindowingItemShadow_dq_24__0__SBChainableModifier_8_16l;
  v6[4] = a1;
  v6[5] = a2;
  v2 = MEMORY[0x223D6F7F0](v6);
  v3 = MEMORY[0x223D6F7F0]();
  v4 = imp_implementationWithBlock(v3);

  return v4;
}