void sub_2655E9A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIApplicationDidBecomeActiveNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIApplicationDidBecomeActiveNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_280AC7388 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279B976F0;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = UIKitLibraryCore_frameworkLibrary;
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return UIKitLibraryCore_frameworkLibrary;
}

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getUIApplicationWillResignActiveNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIApplicationWillResignActiveNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_280AC7390 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIImageViewClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImageView");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AC7398 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return __getUIImageClass_block_invoke(v3);
  }

  return result;
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AC73A0 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return __getUICollectionViewCellClass_block_invoke(v3);
  }

  return result;
}

Class __getUICollectionViewCellClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UICollectionViewCell");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AC73A8 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return __getUITableViewCellClass_block_invoke(v3);
  }

  return result;
}

Class __getUITableViewCellClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UITableViewCell");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AC73B0 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return [(SRHDataCollectionController *)v3 isMessagingApp:v4, v5];
  }

  return result;
}

os_log_t __SRLogBundleRecord_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "SRBundleRecord");
  qword_280AC73D8 = result;
  return result;
}

void sub_2655EB4FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_280AC73F0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279B97858;
    v6 = 0;
    qword_280AC73F0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_280AC73F0)
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
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    abort_report_np();
  }

  qword_280AC73E8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_280AC73F0 = result;
  return result;
}

BOOL isAreaOccupied(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v13 = CGRectIntersection(*&a1, *&a5);
  width = v13.size.width;
  height = v13.size.height;
  return !CGRectIsNull(v13) && width * height >= a8 * (a7 * 0.5);
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