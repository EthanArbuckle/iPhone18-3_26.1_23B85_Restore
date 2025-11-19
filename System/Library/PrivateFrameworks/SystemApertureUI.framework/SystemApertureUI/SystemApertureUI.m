id SAUILayoutSpecifyingOverriderForElement(void *a1)
{
  v1 = [a1 viewProvider];
  v2 = [v1 systemApertureLayoutSpecifyingOverrider];

  return v2;
}

CGFloat SAUIIndicatorFrameForInterSensorRegionFrame(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  v9 = fmin(Width, CGRectGetHeight(v12)) * 0.5;
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v10 = CGRectGetMidX(v13) - v9;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMidY(v14);
  return v10;
}

id SAUILayoutSpecifyingOverriderForElementViewController(void *a1)
{
  v1 = [a1 elementViewProvider];
  v2 = [v1 element];
  v3 = SAUILayoutSpecifyingOverriderForElement(v2);

  return v3;
}

uint64_t SAUIDirectionEdgeInsetsAnyComponentIsZero()
{
  if (BSFloatIsZero() & 1) != 0 || (BSFloatIsZero() & 1) != 0 || (BSFloatIsZero())
  {
    return 1;
  }

  return BSFloatIsZero();
}

double SAUIDirectionEdgeInsetsComponentWiseMinimum(double result, double a2, double a3, double a4, double a5)
{
  if (result > a5)
  {
    return a5;
  }

  return result;
}

__CFString *SAUIStringFromElementViewLayoutMode(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"[INVALID]";
  }

  else
  {
    return off_279D32670[a1 + 1];
  }
}

__CFString *SAUIStringFromLayoutModeChangeReason(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"[INVALID]";
  }

  else
  {
    return off_279D32698[a1];
  }
}

double SAUIDirectionEdgeInsetsComponentWiseMaximum(double result, double a2, double a3, double a4, double a5)
{
  if (result < a5)
  {
    return a5;
  }

  return result;
}

void sub_26C486204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void SAUISetViewFrameMaintainingTransform(void *a1, double a2, double a3, double a4, double a5)
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
  v20[2] = __SAUISetViewFrameMaintainingTransform_block_invoke;
  v20[3] = &unk_279D32628;
  v12 = v10;
  v21 = v12;
  [v11 performWithoutAnimation:v20];
  [v12 setFrame:{a2, a3, a4, a5}];
  v13 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v17 = v22;
  v15[2] = __SAUISetViewFrameMaintainingTransform_block_invoke_2;
  v15[3] = &unk_279D32650;
  v16 = v12;
  v18 = v23;
  v19 = v24;
  v14 = v12;
  [v13 performWithoutAnimation:v15];
}

uint64_t __SAUISetViewFrameMaintainingTransform_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __SAUISetViewFrameMaintainingTransform_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

__CFString *SAUIStringFromElementViewInteractionResult(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"[INVALID]";
  }

  else
  {
    return off_279D326C8[a1];
  }
}

void sub_26C487AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C487D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_26C489854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_26C489E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v28 - 144));
  objc_sync_exit(v26);
  _Unwind_Resume(a1);
}

void sub_26C48A8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_26C48ADF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SAUIRegisterSystemApertureLogging()
{
  if (SAUIRegisterSystemApertureLogging_onceToken != -1)
  {
    SAUIRegisterSystemApertureLogging_cold_1();
  }
}

uint64_t __SAUIRegisterSystemApertureLogging_block_invoke()
{
  SARegisterSystemApertureLogging();
  v0 = MEMORY[0x277D6B8B0];
  v1 = os_log_create(*MEMORY[0x277D6B8B0], "Manager");
  v2 = SAUILogManager;
  SAUILogManager = v1;

  SAUILogElementViewControlling = os_log_create(*v0, "ElementViewControlling");

  return MEMORY[0x2821F96F8]();
}

void sub_26C48BE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C48D0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C48FB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void sub_26C4900D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C491BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_26C492430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_sync_exit(v25);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}