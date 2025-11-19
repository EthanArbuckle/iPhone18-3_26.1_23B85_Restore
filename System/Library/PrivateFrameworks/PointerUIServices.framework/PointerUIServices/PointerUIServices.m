void sub_21ED3C4DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

id PSLogCommon()
{
  if (PSLogCommon_onceToken != -1)
  {
    PSLogCommon_cold_1();
  }

  v1 = PSLogCommon___logObj;

  return v1;
}

void __encodePathElementIntoData(void *a1, unsigned int *a2)
{
  v3 = a1;
  v13 = *a2;
  [v3 appendBytes:&v13 length:4];
  v4 = *a2;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_21ED47830[v4];
  }

  v12 = v5;
  [v3 appendBytes:&v12 length:4];
  if (v12)
  {
    v6 = 0;
    for (i = 0; i < v12; ++i)
    {
      v8 = *(*(a2 + 1) + v6);
      v11 = v8;
      [v3 appendBytes:&v11 length:4];
      v9 = *(*(a2 + 1) + v6 + 8);
      v10 = v9;
      [v3 appendBytes:&v10 length:4];
      v6 += 16;
    }
  }
}

uint64_t __PSLogCommon_block_invoke()
{
  PSLogCommon___logObj = os_log_create("com.apple.PointerUI", "Common");

  return MEMORY[0x2821F96F8]();
}

id PSLogAutohide()
{
  if (PSLogAutohide_onceToken != -1)
  {
    PSLogAutohide_cold_1();
  }

  v1 = PSLogAutohide___logObj;

  return v1;
}

uint64_t __PSLogAutohide_block_invoke()
{
  PSLogAutohide___logObj = os_log_create("com.apple.PointerUI", "Autohide");

  return MEMORY[0x2821F96F8]();
}

id PSLogMaterial()
{
  if (PSLogMaterial_onceToken != -1)
  {
    PSLogMaterial_cold_1();
  }

  v1 = PSLogMaterial___logObj;

  return v1;
}

uint64_t __PSLogMaterial_block_invoke()
{
  PSLogMaterial___logObj = os_log_create("com.apple.PointerUI", "Material");

  return MEMORY[0x2821F96F8]();
}

id PSLogTransform()
{
  if (PSLogTransform_onceToken != -1)
  {
    PSLogTransform_cold_1();
  }

  v1 = PSLogTransform___logObj;

  return v1;
}

uint64_t __PSLogTransform_block_invoke()
{
  PSLogTransform___logObj = os_log_create("com.apple.PointerUI", "Transform");

  return MEMORY[0x2821F96F8]();
}

id PSLogClipping()
{
  if (PSLogClipping_onceToken != -1)
  {
    PSLogClipping_cold_1();
  }

  v1 = PSLogClipping___logObj;

  return v1;
}

uint64_t __PSLogClipping_block_invoke()
{
  PSLogClipping___logObj = os_log_create("com.apple.PointerUI", "Clipping");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ED3F684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21ED3FA10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21ED3FEE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21ED404E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ED40A40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21ED40F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21ED42D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v28 - 112));
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_21ED4335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v28 - 112));
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_21ED4375C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21ED43CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21ED44280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ED44580(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21ED44B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id PSPointerVibrantColorMatrixForLuminance(uint64_t a1)
{
  v2 = _AXSPointerIncreasedContrastEnabled();
  if (a1 == 2)
  {
    if (v2)
    {
      v3 = &xmmword_21ED47888;
    }

    else
    {
      v3 = &xmmword_21ED478D8;
    }
  }

  else if (v2)
  {
    v3 = &xmmword_21ED47928;
  }

  else
  {
    v3 = &xmmword_21ED47978;
  }

  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v8];

  return v6;
}

id PSPointerVibrantColorMatrixForLuminanceWithPlasmaEnabled(uint64_t a1, int a2)
{
  v4 = _AXSPointerIncreasedContrastEnabled();
  if (a2)
  {
    if (a1 == 2)
    {
      if (v4)
      {
        v5 = &xmmword_21ED479C8;
      }

      else
      {
        v5 = &xmmword_21ED47A18;
      }
    }

    else if (v4)
    {
      v5 = &xmmword_21ED47A68;
    }

    else
    {
      v5 = &xmmword_21ED47AB8;
    }

    v7 = v5[3];
    v10[2] = v5[2];
    v10[3] = v7;
    v10[4] = v5[4];
    v8 = v5[1];
    v10[0] = *v5;
    v10[1] = v8;
    v6 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v10];
  }

  else
  {
    v6 = PSPointerVibrantColorMatrixForLuminance(a1);
  }

  return v6;
}

double PSIntensityForLuminanceAndUsage(uint64_t a1, uint64_t a2)
{
  v4 = 1.0;
  v5 = _AXSPointerIncreasedContrastEnabled();
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = _PSPointerSettingsInstance();
      [v6 materialAlphaIBeam];
      goto LABEL_14;
    }

    if (a2 == 3)
    {
      v8 = v5;
      v9 = _PSPointerSettingsInstance();
      v6 = v9;
      if (a1 == 1)
      {
        if (v8)
        {
          [v9 materialAlphaSmallItemDarkHighContrast];
        }

        else
        {
          [v9 materialAlphaSmallItemDark];
        }
      }

      else
      {
        [v9 materialAlphaSmallItemLight];
      }

      goto LABEL_14;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v6 = _PSPointerSettingsInstance();
      [v6 materialAlphaDot];
LABEL_14:
      v4 = v7;
    }
  }

  else
  {
    return 0.0;
  }

  return v4;
}

id _PSPointerSettingsInstance()
{
  if (_PSPointerSettingsInstance___onceToken != -1)
  {
    _PSPointerSettingsInstance_cold_1();
  }

  v1 = _PSPointerSettingsInstance___psPointerSettings;

  return v1;
}

id PSContentOverlayVibrantColorMatrixForLuminance(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = &xmmword_21ED47B08;
  }

  else
  {
    v1 = &xmmword_21ED47B58;
  }

  v2 = v1[3];
  v6[2] = v1[2];
  v6[3] = v2;
  v6[4] = v1[4];
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v4 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v6];

  return v4;
}

double PSContentOverlayIntensityForLuminanceAndUsage(uint64_t a1, uint64_t a2)
{
  result = 0.9;
  if (a2 != 1)
  {
    return 0.5;
  }

  return result;
}

__CFString *PSPointerAutohideReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"PSPointerAutohideReasonUnknown";
  }

  else
  {
    return off_27839DDA0[a1 - 1];
  }
}

__CFString *PSPointerForceVisibleReasonToString(uint64_t a1)
{
  if (a1)
  {
    return @"PSPointerForceVisibleReasonSystemComponentRequest";
  }

  else
  {
    return @"PSPointerForceVisibleReasonUnknown";
  }
}

__CFString *PSPointerClientInteractionStateToString(uint64_t a1)
{
  v1 = @"PSPointerClientInteractionStateHighVelocity";
  if (!a1)
  {
    v1 = @"PSPointerClientInteractionStateDisabled";
  }

  if (a1 == 1)
  {
    return @"PSPointerClientInteractionStateEnabled";
  }

  else
  {
    return v1;
  }
}

__CFString *PSPointerVisibilityStateToString(uint64_t a1)
{
  if (a1)
  {
    return @"PSPointerVisibilityStateVisible";
  }

  else
  {
    return @"PSPointerVisibilityStateHidden";
  }
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}