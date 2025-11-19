uint64_t PRXSupportedInterfaceOrientations(void *a1, int a2)
{
  v3 = [a1 view];
  v4 = [v3 window];

  if (!v4)
  {
    return 30;
  }

  if (PRXIsPad() || a2)
  {
    return 1 << [*MEMORY[0x277D76620] activeInterfaceOrientation];
  }

  return 2;
}

void sub_260F72438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _PRXDefaultCardWidthForDevice()
{
  result = PRXIsPad();
  if (!result)
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 nativeBounds];

    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 nativeScale];

    PRXIsPad();
    return PRXIsPad();
  }

  return result;
}

double PRXCardPreferredSize(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    v4 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    _PRXDefaultCardWidthForDevice();
    v4 = v3;
  }

  if (a1 == 1)
  {
    _PRXDefaultCardWidthForDevice();
  }

  return v4;
}

uint64_t PRXCardPreferredSizeClassForContainerBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  Height = CGRectGetHeight(v12);
  v10 = Width > Height;
  if (Height >= 375.0)
  {
    v10 = 0;
  }

  return Width < 375.0 || v10;
}

double PRXPreferredPickerRowHeight()
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v0 pointSize];
  v2 = v1 + 11.0;

  return v2;
}

BOOL PRXExpectedCardWidthForStyle(uint64_t a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v4;
  v12.size.height = v6;
  Width = CGRectGetWidth(v12);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v4;
  v13.size.height = v6;
  Height = CGRectGetHeight(v13);
  v9 = Width > Height;
  if (Height >= 375.0)
  {
    v9 = 0;
  }

  v10 = Width < 375.0 || v9;
  PRXCardPreferredSize(a1, v10);
  return PRXIsPad();
}

double PRXCardContainerDefaultLayoutMargins()
{
  v0 = PRXIsPad();
  result = 80.0;
  if (!v0)
  {
    return 6.0;
  }

  return result;
}

BOOL PRXIsPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

double PRXButtonToButtonMargin()
{
  v0 = _UISolariumEnabled();
  result = 4.0;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

double PRXLastButtonOfMultipleToBottomMargin()
{
  v0 = _UISolariumEnabled();
  result = 34.0;
  if (!v0)
  {
    return 10.0;
  }

  return result;
}

BOOL PRXIsEdgeToEdgePhone()
{
  if (PRXIsPad())
  {
    return 0;
  }

  v1 = [MEMORY[0x277D759A0] mainScreen];
  v2 = [v1 traitCollection];
  [v2 displayCornerRadius];
  v0 = v3 > 0.0;

  return v0;
}

void sub_260F7B82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260F7BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279ACC378;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279ACC3B0;
    v6 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_260F7E324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260F7E5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PRXDefaultLog()
{
  if (PRXDefaultLog_onceToken != -1)
  {
    PRXDefaultLog_cold_1();
  }

  v1 = PRXDefaultLog_log;

  return v1;
}

uint64_t __PRXDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.ProxCardKit", "Default");
  v1 = PRXDefaultLog_log;
  PRXDefaultLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}