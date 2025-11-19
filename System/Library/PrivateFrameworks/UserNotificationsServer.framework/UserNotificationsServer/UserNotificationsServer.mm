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

uint64_t UNShowPreviewsSettingFromBBContentPreviewSetting(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

BOOL UNNotificationGroupingSettingFromBBBulletinGroupingSetting(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

id UNSLocalizedFormatStringForKey(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = UNSBundle();
  v4 = [v3 localizedStringForKey:v2 value:&stru_288095958 table:0];

  return v4;
}

id UNSBundle()
{
  if (UNSBundle___onceToken != -1)
  {
    UNSBundle_cold_1();
  }

  v1 = UNSBundle___userNotificationBundle;

  return v1;
}

BOOL UNNotificationSettingFromBBAnnounceSetting(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t UNNotificationAnnouncementCarPlaySettingFromBBAnnounceCarPlaySetting(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t UNNotificationSettingFromBBScheduledDeliverySetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_270AE6DE8[a1 + 1];
  }
}

uint64_t UNNotificationSettingFromBBSystemSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6E08[a1];
  }
}

uint64_t UNNotificationListDisplayStyleSettingFromBBNotificationListDisplayStyleSetting(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t sub_270AACD4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270AACD90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270AACDD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270AACE0C()
{
  v1 = sub_270AE3C1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_270AACEC4()
{
  MEMORY[0x2743B0720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270AACEFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270AACF3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void UNSShowCriticalAlertAuthorizationAlert(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v21 = a3;
  v7 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show critical alert user authorization prompt", buf, 0xCu);
  }

  if (![v6 length])
  {
    v8 = v5;

    v6 = v8;
  }

  v9 = UNSLocalizedFormatStringForKey(@"%@", @"CRITICAL_ALERT_PERMISSION_ALERT_TITLE");
  v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v9, v6];
  v11 = UNSDeviceClass() - 1;
  v20 = v5;
  if (v11 > 5)
  {
    v12 = @"CRITICAL_ALERT_PERMISSION_ALERT_BODY_DEFAULT";
  }

  else
  {
    v12 = off_279E101B8[v11];
  }

  v13 = UNSLocalizedStringForKey(v12);
  v14 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DENY");
  v15 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_ALLOW");
  v16 = UNSBundle();
  v17 = [v16 bundlePath];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x277CBF188], v13, *MEMORY[0x277CBF198], v15, *MEMORY[0x277CBF218], v14, *MEMORY[0x277CBF1C0], MEMORY[0x277CBEC38], *MEMORY[0x277D67298], MEMORY[0x277CBEC38], *MEMORY[0x277D67320], MEMORY[0x277CBEC38], *MEMORY[0x277D673E0], @"critical-alert-40", *MEMORY[0x277D67370], v17, *MEMORY[0x277D67378], 0}];
  UNSShowAuthorizationAlert(v18, v21);

  v19 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void UNSShowAuthorizationAlert(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, a1);
  if (v4)
  {
    v5 = v4;
    if (!error)
    {
      v6 = [MEMORY[0x277CCAE60] valueWithPointer:v4];
      v7 = _UNNotificationAlertResultBlockMap();
      v8 = [v3 copy];
      v9 = _Block_copy(v8);
      [v7 setObject:v9 forKey:v6];

      CFRetain(v5);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v5, _UNSAuthorizationAlertResponseHandler, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
      CFRelease(RunLoopSource);
    }

    CFRelease(v5);
  }
}

id _UNNotificationAlertResultBlockMap()
{
  if (_UNNotificationAlertResultBlockMap_onceToken != -1)
  {
    _UNNotificationAlertResultBlockMap_cold_1();
  }

  v1 = _UNNotificationAlertResultBlockMap___map;

  return v1;
}

void _UNSAuthorizationAlertResponseHandler(const void *a1, uint64_t a2)
{
  v9 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v4 = _UNNotificationAlertResultBlockMap();
  v5 = [v4 objectForKey:v9];
  v6 = v5;
  if (a2 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (a2 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  (*(v5 + 16))(v5, v8);
  [v4 removeObjectForKey:v9];
  CFRelease(a1);
}

void UNSShowDeliveryAuthorizationAlert(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &error, a1);
  if (v4)
  {
    v5 = v4;
    if (!error)
    {
      v6 = [MEMORY[0x277CCAE60] valueWithPointer:v4];
      v7 = _UNNotificationAlertResultBlockMap();
      v8 = [v3 copy];
      v9 = _Block_copy(v8);
      [v7 setObject:v9 forKey:v6];

      CFRetain(v5);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v5, _UNSDeliveryAuthorizationAlertResponseHandler, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
      CFRelease(RunLoopSource);
    }

    CFRelease(v5);
  }
}

void _UNSDeliveryAuthorizationAlertResponseHandler(const void *a1, unint64_t a2)
{
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v4 = _UNNotificationAlertResultBlockMap();
  v5 = [v4 objectForKey:v8];
  v6 = v5;
  if (a2 >= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = a2;
  }

  (*(v5 + 16))(v5, v7);
  [v4 removeObjectForKey:v8];
  CFRelease(a1);
}

void __UNSBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = UNSBundle___userNotificationBundle;
  UNSBundle___userNotificationBundle = v0;
}

id UNSLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = UNSBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_288095958 table:0];

  return v3;
}

uint64_t UNSDeviceClass()
{
  if (UNSDeviceClass_once != -1)
  {
    UNSDeviceClass_cold_1();
  }

  return UNSDeviceClass_deviceClass;
}

uint64_t __UNSDeviceClass_block_invoke()
{
  result = MGGetSInt32Answer();
  UNSDeviceClass_deviceClass = result;
  return result;
}

void sub_270AAFCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AAFF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AB03F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AB3BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AB4C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void UNSUserNotificationServerRun()
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_2);
}

void sub_270AB5D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void UNSTriggerLocationArrow(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = +[UNSUserNotificationServer sharedInstance];
  [v2 _triggerLocationArrowForBundleIdentifier:v1];
}

void UNSBuildForegroundAction(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = +[UNSUserNotificationServer sharedInstance];
  [v8 _buildForegroundAction:v7 queue:v6 completionHandler:v5];
}

void UNSDidCompleteDeliveryOfForegroundAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v4)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_ERROR))
    {
      UNSDidCompleteDeliveryOfForegroundAction_cold_1();
    }
  }

  else
  {
    UNCDecodeNotificationActionSelector();
  }
}

void __UNSDidCompleteDeliveryOfForegroundAction_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *MEMORY[0x277CE20A8];
  if (v14)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_ERROR))
    {
      __UNSDidCompleteDeliveryOfForegroundAction_block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "UNSDidCompleteDeliveryOfForegroundAction removing notificationID: %@ bundleID: %@", buf, 0x16u);
    }

    v16 = +[UNSUserNotificationServer sharedInstance];
    v19 = v11;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v16 _removeNotificationRecordsForIdentifiers:v17 bundleIdentifier:v10];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t _IsTelephonyDevice()
{
  if (_IsTelephonyDevice_once != -1)
  {
    _IsTelephonyDevice_cold_1();
  }

  return _IsTelephonyDevice_telephonyDevice;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void UNSExampleUserNotificationCenterRegister()
{
  if (UNSExampleUserNotificationCenterRegister_onceToken != -1)
  {
    UNSExampleUserNotificationCenterRegister_cold_1();
  }
}

void __UNSExampleUserNotificationCenterRegister_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(UNSExampleUserNotificationCenter);
  v2 = __sharedInstance;
  __sharedInstance = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_270ABC748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270ABCB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270ABD314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270ABD9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UNSShowNotificationDeliveryAuthorizationAlert(void *a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show notification delivery user authorization prompt", buf, 0xCu);
  }

  if (![v8 length])
  {
    v12 = v7;

    v8 = v12;
  }

  v13 = UNSLocalizedFormatStringForKey(@"%@", @"USER_NOTIFICATION_PERMISSION_ALERT_TITLE");
  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v8];
  if (![v9 length])
  {
    v15 = UNSLocalizedStringForKey(@"USER_NOTIFICATION_PERMISSION_ALERT_BODY");

    v9 = v15;
  }

  v16 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DENY");
  v17 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_ALLOW");
  v18 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DELIVERY_SCHEDULED");
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, *MEMORY[0x277CBF188], v9, *MEMORY[0x277CBF198], v17, *MEMORY[0x277CBF1C0], v18, *MEMORY[0x277CBF218], v16, *MEMORY[0x277CBF1E8], MEMORY[0x277CBEC38], *MEMORY[0x277D67298], 0}];
  UNSShowDeliveryAuthorizationAlert(v19, v10);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_270AC4F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AC55E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AC5B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_270AC98E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AC9EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_270ACAEA8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_270ACD6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_270ACE584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, char a32)
{
  objc_destroyWeak((v32 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_270ACF204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 88));
  objc_destroyWeak((v43 + 80));
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v44 - 256), 8);
  objc_destroyWeak((v44 - 216));
  _Block_object_dispose((v44 - 208), 8);
  objc_destroyWeak((v44 - 160));
  objc_destroyWeak((v44 - 152));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_270AD00EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD0A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD2134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD2DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UNSShowNotificationAuthorizationAlert(void *a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show notification user authorization prompt", buf, 0xCu);
  }

  if (![v8 length])
  {
    v12 = v7;

    v8 = v12;
  }

  v13 = UNSLocalizedFormatStringForKey(@"%@", @"USER_NOTIFICATION_PERMISSION_ALERT_TITLE");
  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v8];
  if (![v9 length])
  {
    v15 = UNSLocalizedStringForKey(@"USER_NOTIFICATION_PERMISSION_ALERT_BODY");

    v9 = v15;
  }

  v16 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DENY");
  v17 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_ALLOW");
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, *MEMORY[0x277CBF188], v9, *MEMORY[0x277CBF198], v17, *MEMORY[0x277CBF218], v16, *MEMORY[0x277CBF1C0], MEMORY[0x277CBEC38], *MEMORY[0x277D67298], 0}];
  UNSShowAuthorizationAlert(v18, v10);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t BBContentPreviewSettingFromUNShowPreviewsSetting(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t BBAnnounceSettingFromUNNotificationSetting(uint64_t result)
{
  if (result == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (result != 2)
  {
    return v1;
  }

  return result;
}

uint64_t BBAnnounceCarPlaySettingFromUNNotificationAnnouncementCarPlaySetting(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return -1;
  }

  return result;
}

BOOL BBBulletinGroupingSettingFromUNNotificationGroupingSetting(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t BBScheduledDeliverySettingFromUNNotificationSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6E08[a1];
  }
}

uint64_t BBSystemSettingFromUNNotificationSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6E08[a1];
  }
}

uint64_t BBNotificationListDisplayStyleSettingFromUNNotificationListDisplayStyleSetting(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_270AD7178(uint64_t a1, uint64_t *a2)
{
  v3 = sub_270AE3C6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_270AE3C5C();
}

uint64_t static Logger.daemon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2808438F8 != -1)
  {
    swift_once();
  }

  v2 = sub_270AE3C6C();
  v3 = __swift_project_value_buffer(v2, qword_280843900);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void type metadata accessor for BBPublisherDestinations()
{
  if (!qword_2808439E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2808439E0);
    }
  }
}

id UNSSummaryServiceAdapter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *UNSSummaryServiceAdapter.init()()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = v25 - v3;
  v27 = sub_270AE3E1C();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_270AE3E0C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_270AE3C9C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v26 = OBJC_IVAR___UNSSummaryServiceAdapter_queue;
  v10 = sub_270ADB120(0, &qword_281257B90, 0x277D85C78);
  v25[0] = "com.apple.usernotificationsd";
  v25[1] = v10;
  sub_270AE3C8C();
  v30 = MEMORY[0x277D84F90];
  sub_270ADAFBC(&qword_281257B98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280843A60, &qword_270AE6EC8);
  sub_270ADB004(&qword_281257BB8, &unk_280843A60, &qword_270AE6EC8);
  sub_270AE3E6C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v27);
  *&v0[v26] = sub_270AE3E4C();
  v11 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_observers;
  v12 = MEMORY[0x277D84F90];
  *&v1[v11] = sub_270ADB7A0(MEMORY[0x277D84F90], &qword_280843AE8, &unk_270AE6F90);
  v13 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_summaryBundlesByBundleId;
  *&v1[v13] = sub_270ADB6A4(v12, &qword_280843AD8, &qword_270AE6F80);
  sub_270AE399C();
  *&v1[OBJC_IVAR___UNSSummaryServiceAdapter_summaryService] = sub_270AE397C();
  type metadata accessor for SummaryServiceHelper();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___UNSSummaryServiceAdapter_summaryServiceHelper] = v14;
  v29.receiver = v1;
  v29.super_class = UNSSummaryServiceAdapter;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  v16 = *&v15[OBJC_IVAR___UNSSummaryServiceAdapter_summaryService];
  v17 = OBJC_IVAR___UNSSummaryServiceAdapter_summaryServiceHelper;
  v18 = *&v15[OBJC_IVAR___UNSSummaryServiceAdapter_summaryServiceHelper];
  v19 = v15;

  sub_270AE398C();

  v20 = *&v15[v17];
  swift_unknownObjectWeakAssign();

  v21 = sub_270AE3DAC();
  v22 = v28;
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  sub_270AD8A0C(0, 0, v22, &unk_270AE6ED8, v23);

  return v19;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_270AD78FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 queue_observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
  v7 = sub_270AE3CBC();

  if (*(v7 + 16) && (v8 = sub_270ADD478(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v16 = v10;
  v11 = swift_unknownObjectRetain();
  MEMORY[0x2743AFA50](v11);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_270AE3D6C();
  }

  sub_270AE3D7C();

  v12 = [a1 queue_observers];
  sub_270AE3CBC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_270ADA2AC(v16, a2, a3, isUniquelyReferenced_nonNull_native);

  v15 = sub_270AE3CAC();

  [a1 setQueue:v15 observers:?];
}

uint64_t sub_270AD7B00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_270AD7B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v7 = v6;
  v11 = sub_270AE3C7C();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_270AE3C9C();
  v15 = *(v27 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v7 queue];
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a1;
  aBlock[4] = v25;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270AD7B00;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);
  v22 = v7;

  swift_unknownObjectRetain();
  sub_270AE3C8C();
  v29 = MEMORY[0x277D84F90];
  sub_270ADAFBC(&qword_281257BD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280843A98, &qword_270AE6EE8);
  sub_270ADB004(&unk_281257BC0, &unk_280843A98, &qword_270AE6EE8);
  sub_270AE3E6C();
  MEMORY[0x2743AFB50](0, v18, v14, v21);
  _Block_release(v21);

  (*(v28 + 8))(v14, v11);
  (*(v15 + 8))(v18, v27);
}

void sub_270AD7E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 queue_observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
  v9 = sub_270AE3CBC();

  v18[4] = v9;
  v11 = sub_270AD8014(v18, a2, a3);
  if (!*v10)
  {
    (v11)(v18, 0);
    goto LABEL_6;
  }

  v12 = v10;
  swift_unknownObjectRetain();
  v13 = sub_270ADB278(v12, a4);
  swift_unknownObjectRelease();
  v14 = *v12;
  if (*v12 >> 62)
  {
    if (v14 < 0)
    {
      v17 = *v12;
    }

    v15 = sub_270AE3ECC();
    if (v15 >= v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v13)
    {
LABEL_4:
      sub_270ADB5CC(v13, v15);
      (v11)(v18, 0);
LABEL_6:
      v16 = sub_270AE3CAC();

      [a1 setQueue:v16 observers:?];

      return;
    }
  }

  __break(1u);
}

void (*sub_270AD8014(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_270ADA8AC(v6, a2, a3);
  return sub_270AD809C;
}

void sub_270AD809C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_270AD8100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_270AE3CDC();
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = a1;
  a5(a3, v8, v10);
  swift_unknownObjectRelease();
}

uint64_t UNSSummaryServiceAdapter.groupSummaries(forNotificationIdentifier:bundleIdentifier:)()
{
  v1 = [v0 queue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AA8, &qword_270AE6EF0);
  sub_270AE3E2C();

  return v3;
}

void sub_270AD8240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_summaryBundlesByBundleId;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (!*(v13 + 16) || (v14 = sub_270ADD478(a2, a3), (v15 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_8;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (!*(v17 + 16))
  {
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v18 = *(v16 + 16);

  v19 = sub_270ADD478(a4, a5);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v21 = *(*(v17 + 56) + 8 * v19);

  v22 = v21[2];
  if (v21[4])
  {
    v23 = v21[3];
    v24 = v22;

    v25 = sub_270AE3CCC();
  }

  else
  {
    v24 = v22;
    v25 = 0;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D77D08]) initWithSpotlightIdentifier:v25 threadSummary:v24];

LABEL_9:
  *a6 = v26;
}

uint64_t sub_270AD84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_270AE39BC();
  v5 = *(MEMORY[0x277D77C38] + 4);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_270AD856C;

  return MEMORY[0x2821DEF50]();
}

uint64_t sub_270AD856C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_270AD86B8, 0, 0);
  }
}

uint64_t sub_270AD86B8()
{
  v1 = v0[2];
  sub_270AD872C(v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_270AD872C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_270AE3C7C();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_270AE3C9C();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_270ADB168;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270AD7B00;
  aBlock[3] = &block_descriptor_43;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_270AE3C8C();
  v20 = MEMORY[0x277D84F90];
  sub_270ADAFBC(&qword_281257BD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280843A98, &qword_270AE6EE8);
  sub_270ADB004(&unk_281257BC0, &unk_280843A98, &qword_270AE6EE8);
  sub_270AE3E6C();
  MEMORY[0x2743AFB50](0, v11, v7, v14);
  _Block_release(v14);

  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_270AD8A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_270ADB960(a3, v23 - v9);
  v11 = sub_270AE3DAC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_270ADB9D0(v10);
  }

  else
  {
    sub_270AE3D9C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_270AE3D8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_270AE3CFC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_270ADB9D0(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270ADB9D0(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_270AD8C78(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = sub_270ADB7A0(MEMORY[0x277D84F90], &qword_280843AC8, &qword_270AE6F70);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_270AE3ECC())
  {
    if (i < 1)
    {
      goto LABEL_95;
    }

    v5 = 0;
    v120 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_summaryBundlesByBundleId;
    v122 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    *&v3 = 136315138;
    v115 = v3;
    v117 = isUniquelyReferenced_nonNull_native;
    v121 = i;
    while (1)
    {
      if (v122)
      {
        v6 = MEMORY[0x2743AFBB0](v5, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v6 = *(isUniquelyReferenced_nonNull_native + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 bundleIdentifier];
      v9 = sub_270AE3CDC();
      v11 = v10;

      v12 = [v7 notificationIdentifier];
      if (!v12)
      {

        goto LABEL_6;
      }

      v13 = v12;
      v14 = sub_270AE3CDC();
      v16 = v15;

      if (*(v2 + 16) && (v17 = sub_270ADD478(v9, v11), (v18 & 1) != 0))
      {
        v19 = *(*(v2 + 56) + 8 * v17);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_270ADD194(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_270ADD194((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      v123 = v14;
      v125 = v16;
      *(v22 + 4) = v14;
      *(v22 + 5) = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130[0] = v2;
      v24 = sub_270ADD478(v9, v11);
      v25 = *(v2 + 16);
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (*(v2 + 24) >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_270ADA74C(&qword_280843AC8, &qword_270AE6F70);
        }
      }

      else
      {
        sub_270AD9E5C(v27, isUniquelyReferenced_nonNull_native, &qword_280843AC8, &qword_270AE6F70);
        v29 = sub_270ADD478(v9, v11);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_96;
        }

        v24 = v29;
      }

      isUniquelyReferenced_nonNull_native = v117;
      v2 = v130[0];
      if (v28)
      {
        v31 = *(v130[0] + 56);
        v32 = *(v31 + 8 * v24);
        *(v31 + 8 * v24) = v19;
      }

      else
      {
        *(v130[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v33 = (*(v2 + 48) + 16 * v24);
        *v33 = v9;
        v33[1] = v11;
        *(*(v2 + 56) + 8 * v24) = v19;
        v34 = *(v2 + 16);
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_67;
        }

        *(v2 + 16) = v36;
      }

      v37 = [v7 content];
      i = v121;
      if (v37)
      {
        v118 = v37;
        swift_beginAccess();
        v38 = *&v127[v120];
        if (*(v38 + 16) && (v39 = sub_270ADD478(v9, v11), (v40 & 1) != 0))
        {
          v41 = *(*(v38 + 56) + 8 * v39);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          _s13SummaryBundleCMa();
          v41 = swift_allocObject();
          *(v41 + 16) = sub_270ADB6A4(MEMORY[0x277D84F90], &qword_280843AD0, &qword_270AE6F78);
          swift_beginAccess();

          v42 = *&v127[v120];
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v128 = *&v127[v120];
          *&v127[v120] = 0x8000000000000000;
          sub_270ADA44C(v41, v9, v11, v43, &qword_280843AD8, &qword_270AE6F80);

          *&v127[v120] = v128;
          swift_endAccess();
        }

        swift_beginAccess();
        v44 = *(v41 + 16);
        if (*(v44 + 16))
        {
          v45 = *(v41 + 16);

          v46 = sub_270ADD478(v123, v125);
          if (v47)
          {
            v48 = *(*(v44 + 56) + 8 * v46);

            goto LABEL_49;
          }
        }

        _s11SummaryItemCMa();
        v48 = swift_allocObject();
        v48[3] = 0;
        v48[4] = 0;
        v48[2] = 0;
        swift_beginAccess();

        v59 = *(v41 + 16);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v129 = *(v41 + 16);
        *(v41 + 16) = 0x8000000000000000;
        sub_270ADA44C(v48, v123, v125, v60, &qword_280843AD0, &qword_270AE6F78);

        *(v41 + 16) = v129;
        swift_endAccess();
LABEL_49:
        if (![v7 isGroupSummary])
        {
          v126 = v2;
          if (qword_2808438F0 != -1)
          {
            swift_once();
          }

          v68 = sub_270AE3C6C();
          __swift_project_value_buffer(v68, qword_280843BD0);
          v69 = v7;
          v70 = sub_270AE3C4C();
          v71 = sub_270AE3DFC();

          v72 = v70;
          if (os_log_type_enabled(v70, v71))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v130[0] = v74;
            *v73 = v115;
            v75 = [v69 spotlightIdentifier];
            v76 = sub_270AE3CDC();
            v124 = v69;
            v78 = v77;

            i = v121;
            v79 = sub_270AE08F8(v76, v78, v130);

            *(v73 + 4) = v79;
            _os_log_impl(&dword_270AA8000, v72, v71, "[SummaryServiceAdapter] Did not expect non group summary for spotlightIdentifier: %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v74);
            MEMORY[0x2743B06A0](v74, -1, -1);
            v80 = v73;
            isUniquelyReferenced_nonNull_native = v117;
            MEMORY[0x2743B06A0](v80, -1, -1);
          }

          else
          {
          }

          v2 = v126;
          goto LABEL_7;
        }

        v61 = v48[2];
        v48[2] = v118;
        v62 = v118;

        v63 = [v7 spotlightIdentifier];
        v64 = sub_270AE3CDC();
        v66 = v65;

        v67 = v48[4];
        v48[3] = v64;
        v48[4] = v66;
        i = v121;

LABEL_6:

        goto LABEL_7;
      }

      swift_beginAccess();
      v49 = *&v127[v120];
      if (*(v49 + 16) && (v50 = sub_270ADD478(v9, v11), (v51 & 1) != 0))
      {
        v52 = *(*(v49 + 56) + 8 * v50);
        swift_endAccess();

        swift_beginAccess();
        v53 = *(v52 + 16);
        if (!*(v53 + 16))
        {
          goto LABEL_59;
        }

        v54 = *(v52 + 16);

        v55 = sub_270ADD478(v123, v125);
        if ((v56 & 1) == 0)
        {

LABEL_59:

          goto LABEL_7;
        }

        v57 = *(*(v53 + 56) + 8 * v55);

        if ([v7 isGroupSummary])
        {
          v58 = *(v57 + 16);
          *(v57 + 16) = 0;

          if (!*(v57 + 16))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (qword_2808438F0 != -1)
          {
            swift_once();
          }

          v81 = sub_270AE3C6C();
          __swift_project_value_buffer(v81, qword_280843BD0);
          v82 = v7;
          v83 = sub_270AE3C4C();
          v84 = sub_270AE3DFC();

          if (os_log_type_enabled(v83, v84))
          {
            v119 = v84;
            v85 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v130[0] = v116;
            *v85 = v115;
            v86 = [v82 spotlightIdentifier];
            v87 = sub_270AE3CDC();
            v89 = v88;

            v90 = v87;
            isUniquelyReferenced_nonNull_native = v117;
            v91 = sub_270AE08F8(v90, v89, v130);
            i = v121;

            *(v85 + 4) = v91;
            _os_log_impl(&dword_270AA8000, v83, v119, "[SummaryServiceAdapter] Did not expect non group summary for spotlightIdentifier: %s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v116);
            MEMORY[0x2743B06A0](v116, -1, -1);
            MEMORY[0x2743B06A0](v85, -1, -1);
          }

          if (!*(v57 + 16))
          {
LABEL_65:
            swift_beginAccess();
            sub_270AD9B14(v123, v125);
            swift_endAccess();

            goto LABEL_7;
          }
        }
      }

      else
      {
        swift_endAccess();
      }

LABEL_7:
      if (i == ++v5)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:
  v92 = v2 + 64;
  v93 = 1 << *(v2 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v2 + 64);
  v96 = (v93 + 63) >> 6;

  for (j = 0; v95; v92 = v2 + 64)
  {
LABEL_76:
    v99 = __clz(__rbit64(v95)) | (j << 6);
    v100 = (*(v2 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    v103 = *(*(v2 + 56) + 8 * v99);

    v104 = [v127 queue_observers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
    v105 = sub_270AE3CBC();

    if (*(v105 + 16))
    {
      v106 = sub_270ADD478(v102, v101);
      v108 = v107;

      if (v108)
      {
        v109 = *(*(v105 + 56) + 8 * v106);

        if (v109 >> 62)
        {
          v110 = sub_270AE3ECC();
          if (!v110)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v110 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v110)
          {
            goto LABEL_87;
          }
        }

        if (v110 < 1)
        {
          goto LABEL_94;
        }

        v111 = 0;
        do
        {
          if ((v109 & 0xC000000000000001) != 0)
          {
            v112 = MEMORY[0x2743AFBB0](v111, v109);
          }

          else
          {
            v112 = *(v109 + 8 * v111 + 32);
            swift_unknownObjectRetain();
          }

          ++v111;
          v113 = sub_270AE3D4C();
          [v112 summaryServiceAdapter:v127 didReceiveGroupSummariesForNotificationIdentifiers:v113];
          swift_unknownObjectRelease();
        }

        while (v110 != v111);
      }
    }

    else
    {
    }

LABEL_87:

    v95 &= v95 - 1;
  }

  while (1)
  {
    v98 = j + 1;
    if (__OFADD__(j, 1))
    {
      break;
    }

    if (v98 >= v96)
    {
    }

    v95 = *(v92 + 8 * v98);
    ++j;
    if (v95)
    {
      j = v98;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = sub_270AE3F1C();
  __break(1u);
  return result;
}

uint64_t sub_270AD9954()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270AD998C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_270AD9ADC()
{
  MEMORY[0x2743B0720](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270AD9B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_270ADD478(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_270ADA5EC(&qword_280843AD0, &qword_270AE6F78);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_270ADA0FC(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_270AD9BBC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_270AE3EEC();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_270AE3F3C();
      sub_270AE3D1C();
      result = sub_270AE3F4C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_270AD9E5C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_270AE3EEC();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_270AE3F3C();
      sub_270AE3D1C();
      result = sub_270AE3F4C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_270ADA0FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_270AE3E7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_270AE3F3C();

      sub_270AE3D1C();
      v13 = sub_270AE3F4C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_270ADA2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_270ADD478(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_270AD9E5C(v16, a4 & 1, &qword_280843AE8, &unk_270AE6F90);
      v20 = *v5;
      v11 = sub_270ADD478(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_270AE3F1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_270ADA74C(&qword_280843AE8, &unk_270AE6F90);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_270ADA44C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_270ADD478(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_270AD9BBC(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_270ADD478(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_270AE3F1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_270ADA5EC(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

void *sub_270ADA5EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_270AE3EDC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_270ADA74C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_270AE3EDC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void (*sub_270ADA8AC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_270ADAC78(v8);
  v8[9] = sub_270ADA9B8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_270ADA958;
}

void sub_270ADA958(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_270ADA9B8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_270ADD478(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_270ADA74C(&qword_280843AE8, &unk_270AE6F90);
      v13 = v21;
      goto LABEL_11;
    }

    sub_270AD9E5C(v18, a4 & 1, &qword_280843AE8, &unk_270AE6F90);
    v22 = *v5;
    v13 = sub_270ADD478(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_270AE3F1C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_270ADAB34;
}

void sub_270ADAB34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_270ADB90C(*(v13 + 48) + 16 * v12);
      sub_270ADA0FC(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_270ADAC78(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_270ADACA0;
}

uint64_t sub_270ADACAC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_270AE3ECC();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_270AE3EAC();
    *v1 = result;
  }

  return result;
}

uint64_t sub_270ADAD68(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_270AE3ECC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_270AE3EAC();
}

uint64_t sub_270ADADF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270ADAEA4;

  return sub_270AD84CC(a1, v4, v5, v6);
}

uint64_t sub_270ADAEA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270ADAFBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270ADB004(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270ADB120(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_270ADB168()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_270AD8C78(v1);
}

unint64_t sub_270ADB190(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_270AE3ECC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2743AFBB0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_270ADB278(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_270ADB190(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_270AE3ECC();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_270AE3ECC())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2743AFBB0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x2743AFBB0](v10, v7);
          v16 = MEMORY[0x2743AFBB0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_270ADAD68(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_270ADAD68(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_270AE3ECC();
}

uint64_t sub_270ADB4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AE0, &qword_270AE6F88);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_270AE3ECC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_270AE3ECC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_270ADB5CC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_270AE3ECC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_270AE3ECC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_270ADACAC(result);

  return sub_270ADB4C0(v4, v2, 0);
}

unint64_t sub_270ADB6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_270AE3EFC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_270ADD478(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_270ADB7A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_270AE3EFC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_270ADD478(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_270ADB960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270ADB9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270ADBAB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_270AE3C6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_270AE3C5C();
}

uint64_t sub_270ADBB30()
{
  sub_270AE3A0C();
  result = sub_270AE39FC();
  qword_280843AF0 = result;
  return result;
}

uint64_t sub_270ADBD34(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, uint64_t, uint64_t))
{
  v84 = a4;
  v85 = a8;
  v89 = a7;
  v86 = a3;
  v87 = a6;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v76 = &v71 - v14;
  v15 = sub_270AE3BFC();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  (MEMORY[0x28223BE20])();
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v75 = &v71 - v20;
  v21 = sub_270AE3B5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  (MEMORY[0x28223BE20])();
  v90 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_270AE3C1C();
  v83 = *(v77 - 8);
  v25 = *(v83 + 64);
  v26 = (MEMORY[0x28223BE20])();
  v79 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v71 - v29;
  v78 = v31;
  MEMORY[0x28223BE20](v28);
  v91 = &v71 - v32;
  v33 = [objc_opt_self() notificationForBulletin_];
  v34 = a2;
  sub_270AE3ADC();
  v35 = a5;
  sub_270AE3C0C();
  v36 = [a1 title];
  if (v36)
  {
    v37 = v36;
    v38 = sub_270AE3CDC();
    v71 = v39;
    v72 = v38;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v80 = v18;
  v40 = [a1 subtitle];
  if (v40)
  {
    v41 = v40;
    sub_270AE3CDC();
  }

  v42 = [a1 message];
  if (v42)
  {
    v43 = v42;
    sub_270AE3CDC();
  }

  v73 = a9;
  v74 = a10;
  v44 = [a1 summary];
  [a1 isHighlight];
  v45 = v90;
  sub_270AE3B3C();
  v46 = v75;
  (*(v22 + 16))(v75, v45, v21);
  (*(v22 + 56))(v46, 0, 1, v21);
  sub_270AE3B7C();
  if ([a1 hasCriticalIcon])
  {
    [a1 interruptionLevel];
  }

  [a1 interruptionLevel];
  [a1 ignoresQuietMode];
  v47 = v80;
  sub_270AE3BEC();
  v49 = v81;
  v48 = v82;
  v50 = v76;
  (*(v81 + 16))(v76, v47, v82);
  (*(v49 + 56))(v50, 0, 1, v48);
  sub_270AE3B1C();
  [v84 allowPrivateProperties];
  sub_270AE3B8C();
  v84 = a1;
  v51 = [a1 communicationContext];
  if (v51)
  {
    v52 = v51;
    v53 = UNCommunicationContextFromBBCommunicationContext();
    sub_270AE3B9C();
  }

  (*(v49 + 8))(v47, v48);
  (*(v22 + 8))(v90, v21);
  v54 = v83;
  v82 = *(v83 + 32);
  v55 = v91;
  v56 = v77;
  v82(v91, v30, v77);
  sub_270AE3A8C();
  v90 = sub_270AE3A7C();
  v57 = v79;
  (*(v54 + 16))(v79, v55, v56);
  v58 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v59 = (v78 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = v56;
  v63 = swift_allocObject();
  v82(v63 + v58, v57, v62);
  v64 = v87;
  *(v63 + v59) = v86;
  v65 = v84;
  *(v63 + v60) = v84;
  v66 = (v63 + v61);
  v67 = v89;
  *v66 = v64;
  v66[1] = v67;
  *(v63 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v88;
  v68 = v65;

  v69 = v91;
  v74(v91, v73, v63);

  return (*(v54 + 8))(v69, v62);
}

uint64_t sub_270ADC540(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v71 = a3;
  v65 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v57 - v7;
  v8 = sub_270AE3BFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - v14;
  v16 = sub_270AE3B5C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v74 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_270AE3C1C();
  v62 = *(v70 - 8);
  v20 = *(v62 + 64);
  v21 = MEMORY[0x28223BE20](v70);
  v64 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v57 - v24;
  v63 = v26;
  MEMORY[0x28223BE20](v23);
  v67 = &v57 - v27;
  v28 = [objc_opt_self() notificationForBulletin_];
  sub_270AE3ADC();
  sub_270AE3C0C();
  v29 = [a1 title];
  if (v29)
  {
    v30 = v29;
    v31 = sub_270AE3CDC();
    v58 = v32;
    v59 = v31;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v68 = v9;
  v69 = v8;
  v33 = [a1 subtitle];
  v60 = v17;
  if (v33)
  {
    v34 = v33;
    sub_270AE3CDC();
  }

  v35 = [a1 message];
  if (v35)
  {
    v36 = v35;
    sub_270AE3CDC();
  }

  v37 = [a1 summary];
  [a1 isHighlight];
  v38 = v74;
  sub_270AE3B3C();
  v39 = v60;
  (*(v60 + 16))(v15, v38, v16);
  (*(v39 + 56))(v15, 0, 1, v16);
  sub_270AE3B7C();
  if ([a1 hasCriticalIcon])
  {
    [a1 interruptionLevel];
  }

  [a1 interruptionLevel];
  [a1 ignoresQuietMode];
  v40 = v66;
  sub_270AE3BEC();
  v42 = v68;
  v41 = v69;
  v43 = v61;
  (*(v68 + 16))(v61, v40, v69);
  (*(v42 + 56))(v43, 0, 1, v41);
  sub_270AE3B1C();
  [v65 allowPrivateProperties];
  sub_270AE3B8C();
  v44 = [a1 communicationContext];
  if (v44)
  {
    v45 = v44;
    v46 = UNCommunicationContextFromBBCommunicationContext();
    sub_270AE3B9C();
  }

  (*(v42 + 8))(v40, v41);
  (*(v39 + 8))(v74, v16);
  v47 = v62;
  v74 = *(v62 + 32);
  v48 = v67;
  v49 = v70;
  (v74)(v67, v25, v70);
  sub_270AE3A8C();
  sub_270AE3A7C();
  v50 = v64;
  (*(v47 + 16))(v64, v48, v49);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (v74)(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  v55 = v73;
  *v54 = v71;
  v54[1] = v55;
  *(v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8)) = v72;

  sub_270AE3A6C();

  return (*(v47 + 8))(v48, v49);
}

UNSNotificationPipelineAdapter __swiftcall UNSNotificationPipelineAdapter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_270ADCE38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id, uint64_t, uint64_t), uint64_t a6)
{
  v12 = sub_270AE3ABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!UNCUseGroupService())
  {
    goto LABEL_6;
  }

  v24 = a6;
  v25 = a2;
  v23 = a5;
  if (qword_280843918 != -1)
  {
    swift_once();
  }

  v22 = qword_280843AF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B30, &qword_270AE6FD0);
  v17 = sub_270AE3C1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_270AE6FA0;
  (*(v18 + 16))(v21 + v20, v25, v17);
  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_270AE3AAC();
    sub_270AE39DC();

    (*(v13 + 8))(v16, v12);
    a5 = v23;
    a6 = v24;
LABEL_6:
    sub_270ADE5A8(a4, a3, a1, a5, a6);
    return;
  }

  __break(1u);
}

uint64_t sub_270ADD068(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = UNCUseGroupService();
  if (v4)
  {
    if (qword_280843918 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B38, &qword_270AE6FD8);
    v5 = *(sub_270AE3ACC() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_270AE6FA0;
    sub_270AE3BAC();
    sub_270AE39EC();
  }

  return a3(v4);
}

char *sub_270ADD194(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B60, &qword_270AE7000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_270ADD2A0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B30, &qword_270AE6FD0);
  v10 = *(sub_270AE3C1C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_270AE3C1C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_270ADD478(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_270AE3F3C();
  sub_270AE3D1C();
  v6 = sub_270AE3F4C();

  return sub_270ADD4F0(a1, a2, v6);
}

unint64_t sub_270ADD4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_270AE3F0C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_270ADD5A8(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v101 = a3;
  v102 = a4;
  v83 = a2;
  v5 = sub_270AE3ABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v100 = &v80 - v12;
  v13 = sub_270AE3BFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v99 = &v80 - v20;
  v110 = sub_270AE3B5C();
  v21 = *(v110 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_270AE3C1C();
  v103 = *(v24 - 8);
  v25 = *(v103 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v108 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v111 = &v80 - v29;
  MEMORY[0x28223BE20](v28);
  v107 = &v80 - v30;
  if (a1 >> 62)
  {
    v31 = sub_270AE3ECC();
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = v5;
  v81 = v6;
  v80 = v9;
  if (v31)
  {
    v98 = objc_opt_self();
    if (v31 >= 1)
    {
      v93 = v31;
      v32 = 0;
      v92 = a1 & 0xC000000000000001;
      v91 = (v21 + 16);
      v90 = (v21 + 56);
      v89 = (v14 + 16);
      v88 = (v14 + 56);
      v87 = (v14 + 8);
      v86 = (v21 + 8);
      v106 = (v103 + 32);
      v85 = (v103 + 16);
      v84 = v103 + 8;
      v96 = v17;
      v97 = a1;
      v94 = v24;
      v95 = v13;
      v33 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v92)
        {
          v34 = MEMORY[0x2743AFBB0](v32, a1);
        }

        else
        {
          v34 = *(a1 + 8 * v32 + 32);
        }

        v35 = v34;
        v36 = [v34 categoryID];
        if (v36)
        {
          v37 = v36;
          v38 = sub_270AE3CDC();
          v40 = v39;

          if (!*(v83 + 16))
          {

LABEL_15:
            v46 = 0;
            goto LABEL_16;
          }

          v41 = v38;
          v42 = v83;
          v43 = sub_270ADD478(v41, v40);
          v45 = v44;

          if ((v45 & 1) == 0)
          {
            goto LABEL_15;
          }

          v46 = *(*(v42 + 56) + 8 * v43);
          v47 = v46;
        }

        else
        {
          v46 = 0;
        }

LABEL_16:
        v48 = [v98 notificationForBulletin_];
        v104 = v46;
        sub_270AE3ADC();
        v49 = v102;
        sub_270AE3C0C();
        v50 = [v35 title];
        if (v50)
        {
          v51 = v50;
          sub_270AE3CDC();
        }

        v52 = [v35 subtitle];
        if (v52)
        {
          v53 = v52;
          sub_270AE3CDC();
        }

        v54 = [v35 message];
        v105 = v33;
        if (v54)
        {
          v55 = v54;
          sub_270AE3CDC();
        }

        v56 = [v35 summary];
        [v35 isHighlight];
        v57 = v109;
        sub_270AE3B3C();
        v58 = v99;
        v59 = v110;
        (*v91)(v99, v57, v110);
        (*v90)(v58, 0, 1, v59);
        v60 = v111;
        sub_270AE3B7C();
        if ([v35 hasCriticalIcon])
        {
          [v35 interruptionLevel];
        }

        [v35 interruptionLevel];
        [v35 ignoresQuietMode];
        v61 = v96;
        sub_270AE3BEC();
        v62 = v100;
        v63 = v95;
        (*v89)(v100, v61, v95);
        (*v88)(v62, 0, 1, v63);
        sub_270AE3B1C();
        [v101 allowPrivateProperties];
        sub_270AE3B8C();
        v64 = [v35 communicationContext];
        a1 = v97;
        v65 = v94;
        v33 = v105;
        if (v64)
        {
          v66 = v64;
          v67 = UNCommunicationContextFromBBCommunicationContext();
          sub_270AE3B9C();
        }

        (*v87)(v61, v63);
        (*v86)(v109, v110);
        v68 = v107;
        v69 = *v106;
        (*v106)(v107, v60, v65);
        (*v85)(v108, v68, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_270ADD2A0(0, v33[2] + 1, 1, v33);
        }

        v71 = v33[2];
        v70 = v33[3];
        if (v71 >= v70 >> 1)
        {
          v33 = sub_270ADD2A0(v70 > 1, v71 + 1, 1, v33);
        }

        ++v32;

        v72 = v103;
        (*(v103 + 8))(v107, v65);
        v33[2] = v71 + 1;
        v69(v33 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v71, v108, v65);
        if (v93 == v32)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  if (UNCUseGroupService())
  {
    if (qword_280843918 == -1)
    {
LABEL_33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B10, &qword_270AE6FC0);
      v73 = v81;
      v74 = *(v81 + 72);
      v75 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_270AE6FA0;
      sub_270AE3A9C();
      v112 = v76;
      sub_270ADDFD0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B20, &qword_270AE6FC8);
      sub_270ADE028();
      v77 = v80;
      v78 = v82;
      sub_270AE3E6C();
      sub_270AE39DC();

      return (*(v73 + 8))(v77, v78);
    }

LABEL_37:
    swift_once();
    goto LABEL_33;
  }
}

unint64_t sub_270ADDFD0()
{
  result = qword_280843B18;
  if (!qword_280843B18)
  {
    sub_270AE3ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280843B18);
  }

  return result;
}

unint64_t sub_270ADE028()
{
  result = qword_280843B28;
  if (!qword_280843B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280843B20, &qword_270AE6FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280843B28);
  }

  return result;
}

uint64_t sub_270ADE0A0(uint64_t a1)
{
  v3 = *(sub_270AE3C1C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_270ADD068(a1, v1 + v4, v9);
}

uint64_t sub_270ADE16C(uint64_t a1)
{
  v2 = sub_270AE3C3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_270ADF050(a1, &qword_280843B50, &qword_270AE6FF0);
  }

  else
  {
    v10 = *(v3 + 32);
    v10(v9, a1, v2);
    v10(v7, v9, v2);
    v11 = (*(v3 + 88))(v7, v2);
    if (v11 != *MEMORY[0x277D77EE0])
    {
      if (v11 == *MEMORY[0x277D77EB8])
      {
        return 1;
      }

      if (v11 == *MEMORY[0x277D77EC0])
      {
        return 2;
      }

      if (v11 == *MEMORY[0x277D77ED0])
      {
        return 3;
      }

      if (v11 == *MEMORY[0x277D77ED8])
      {
        return 4;
      }

      if (v11 == *MEMORY[0x277D77EC8])
      {
        return 5;
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  return 0;
}

uint64_t sub_270ADE398(uint64_t a1)
{
  v2 = sub_270AE3C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_270ADF050(a1, &qword_280843B48, &qword_270AE6FE8);
  }

  else
  {
    v10 = *(v3 + 32);
    v10(v9, a1, v2);
    v10(v7, v9, v2);
    v11 = (*(v3 + 88))(v7, v2);
    if (v11 != *MEMORY[0x277D77EB0])
    {
      if (v11 == *MEMORY[0x277D77E98])
      {
        return 1;
      }

      if (v11 == *MEMORY[0x277D77EA0])
      {
        return 2;
      }

      if (v11 == *MEMORY[0x277D77EA8])
      {
        return 3;
      }

      if (v11 == *MEMORY[0x277D77E90])
      {
        return 4;
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  return 0;
}

void sub_270ADE5A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t), uint64_t a5)
{
  v91 = a5;
  v92 = a4;
  v89 = a3;
  v90 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v81 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v86 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B40, &qword_270AE6FE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v78 - v19;
  v88 = sub_270AE393C();
  v84 = *(v88 - 8);
  v21 = *(v84 + 64);
  v22 = MEMORY[0x28223BE20](v88);
  v82 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B48, &qword_270AE6FE8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v78 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B50, &qword_270AE6FF0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = v78 - v31;
  v33 = sub_270AE3C1C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B58, &qword_270AE6FF8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (v78 - v40);
  sub_270ADEFE0(v89, v78 - v40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v80 = v34;
    v52 = *(v34 + 32);
    v89 = v33;
    v52(v37, v41, v33);
    sub_270AE3AFC();
    [a1 setPriorityNotificationStatus_];
    sub_270AE3AEC();
    [a1 setNotificationSummaryStatus_];
    v53 = sub_270AE39CC();
    v54 = a1;
    v55 = v85;
    v56 = v88;
    if (v53)
    {
      sub_270AE3BBC();
      if (v57)
      {
        v58 = sub_270AE3CCC();
      }

      else
      {
        v58 = 0;
      }

      [v54 setMessage_];
    }

    sub_270AE3B6C();
    v59 = sub_270AE3B5C();
    v60 = *(v59 - 8);
    v79 = *(v60 + 48);
    v61 = v79(v16, 1, v59);
    v87 = v54;
    if (v61 == 1)
    {
      sub_270ADF050(v16, &qword_280843B08, &qword_270AE6FB8);
      (*(v84 + 56))(v20, 1, 1, v56);
    }

    else
    {
      sub_270AE3B4C();
      (*(v60 + 8))(v16, v59);
      v62 = v84;
      if ((*(v84 + 48))(v20, 1, v56) != 1)
      {
        v63 = v56;
        v64 = v83;
        (*(v62 + 32))(v83, v20, v63);
        v78[1] = sub_270ADB120(0, &qword_281257B88, 0x277CCA898);
        (*(v62 + 16))(v82, v64, v63);
        v65 = sub_270AE3E5C();
        [v54 setSummary_];

        (*(v62 + 8))(v64, v88);
LABEL_17:
        sub_270AE3B0C();
        v66 = sub_270AE3BFC();
        v67 = *(v66 - 8);
        v68 = *(v67 + 48);
        if (v68(v55, 1, v66) == 1)
        {
          sub_270ADF050(v55, &qword_280843B00, &qword_270AE6FB0);
          v69 = 0;
        }

        else
        {
          v69 = sub_270AE3BCC();
          (*(v67 + 8))(v55, v66);
        }

        [v87 setEventBehavior_];

        v70 = v86;
        sub_270AE3B6C();
        if (v79(v70, 1, v59) == 1)
        {
          sub_270ADF050(v70, &qword_280843B08, &qword_270AE6FB8);
        }

        else
        {
          v71 = sub_270AE3B2C();
          (*(v60 + 8))(v70, v59);
          if (v71 != 2 && (v71 & 1) != 0)
          {
            v72 = v81;
            sub_270AE3B0C();
            if (v68(v72, 1, v66) == 1)
            {
              sub_270ADF050(v72, &qword_280843B00, &qword_270AE6FB0);
              v73 = v87;
              v74 = v89;
              v75 = v80;
            }

            else
            {
              v77 = sub_270AE3BDC();
              (*(v67 + 8))(v72, v66);
              v73 = v87;
              v74 = v89;
              v75 = v80;
              if (v77 != 2 && (v77 & 1) != 0)
              {
                [v87 setIsHighlight_];
                v76 = v90;
                goto LABEL_27;
              }
            }

            [v73 setIsHighlight_];
            v76 = v90 | 0x200;
            goto LABEL_27;
          }
        }

        v73 = v87;
        [v87 setIsHighlight_];
        v74 = v89;
        v76 = v90;
        v75 = v80;
LABEL_27:
        v92(v73, v76, 0);
        (*(v75 + 8))(v37, v74);
        return;
      }
    }

    sub_270ADF050(v20, &qword_280843B40, &qword_270AE6FE0);
    [v54 setSummary_];
    goto LABEL_17;
  }

  v42 = *v41;
  if (qword_281257BD8 != -1)
  {
    swift_once();
  }

  v43 = sub_270AE3C6C();
  __swift_project_value_buffer(v43, qword_281257D10);
  v44 = v42;
  v45 = sub_270AE3C4C();
  v46 = sub_270AE3DFC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v93 = v48;
    *v47 = 136315138;
    swift_getErrorValue();
    v49 = sub_270AE3F2C();
    v51 = sub_270AE08F8(v49, v50, &v93);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_270AA8000, v45, v46, "Failed to update notification via adapter: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x2743B06A0](v48, -1, -1);
    MEMORY[0x2743B06A0](v47, -1, -1);
  }

  [a1 setPriorityNotificationStatus_];
  [a1 setNotificationSummaryStatus_];
  v92(a1, v90, 1);
}

uint64_t sub_270ADEFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B58, &qword_270AE6FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270ADF050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_270AE3C1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_270ADF17C(uint64_t a1)
{
  v3 = *(sub_270AE3C1C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_270ADCE38(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8));
}

id UNSServerActionHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *UNSServerActionHandler.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___UNSServerActionHandler_vendor;
  v7 = v0;
  sub_270AE3D0C();
  v8 = sub_270AE396C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v0[v6] = sub_270AE394C();
  *&v7[OBJC_IVAR___UNSServerActionHandler_fetchTask] = 0;
  if (qword_281257BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_270AE3C6C();
  __swift_project_value_buffer(v11, qword_281257D28);
  v12 = v7;
  v13 = sub_270AE3C4C();
  v14 = sub_270AE3DFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    v29 = *&v1[v6];

    v17 = sub_270AE3CEC();
    v19 = v18;

    v20 = sub_270AE08F8(v17, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_270AA8000, v13, v14, "ServerActionHandler init(): vendor: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2743B06A0](v16, -1, -1);
    MEMORY[0x2743B06A0](v15, -1, -1);
  }

  else
  {
  }

  v31.receiver = v12;
  v31.super_class = UNSServerActionHandler;
  v21 = objc_msgSendSuper2(&v31, sel_init);
  v22 = sub_270AE3DAC();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  v25 = v21;
  v26 = sub_270AE0100(0, 0, v5, &unk_270AE7018, v24);
  v27 = *&v25[OBJC_IVAR___UNSServerActionHandler_fetchTask];
  *&v25[OBJC_IVAR___UNSServerActionHandler_fetchTask] = v26;

  return v25;
}

uint64_t sub_270ADF5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_270AE3A5C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BA0, &qword_270AE7048) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BA8, &qword_270AE7050);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BB0, &unk_270AE7058);
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270ADF7D4, 0, 0);
}

uint64_t sub_270ADF7D4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  v3 = v0[18];
  v4 = v0[15];
  if (Strong)
  {
    v5 = v0[13];
    v6 = v0[14];
    v7 = *(Strong + OBJC_IVAR___UNSServerActionHandler_vendor);
    v8 = v0[15];
    sub_270AE395C();
    sub_270AE3DBC();
    (*(v6 + 8))(v4, v5);
    v9 = *(MEMORY[0x277D85798] + 4);
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_270ADF96C;
    v11 = v0[18];
    v12 = v0[16];
    v13 = v0[12];

    return MEMORY[0x2822003E8](v13, 0, 0, v12);
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[18];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_270ADF96C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_270ADFA68, 0, 0);
}

uint64_t sub_270ADFA68()
{
  v70 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 152);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

LABEL_13:
    v41 = *(v0 + 144);
    v42 = *(v0 + 120);
    v44 = *(v0 + 88);
    v43 = *(v0 + 96);
    v46 = *(v0 + 72);
    v45 = *(v0 + 80);

    v47 = *(v0 + 8);

    return v47();
  }

  (*(v3 + 32))(*(v0 + 88), v1, v2);
  if (sub_270AE3DEC())
  {
    if (qword_281257BE0 != -1)
    {
      swift_once();
    }

    v5 = sub_270AE3C6C();
    __swift_project_value_buffer(v5, qword_281257D28);
    v6 = sub_270AE3C4C();
    v7 = sub_270AE3DFC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    if (v8)
    {
      v67 = *(v0 + 144);
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_270AA8000, v6, v7, "ServerActionHandler init() task cancelled", v16, 2u);
      MEMORY[0x2743B06A0](v16, -1, -1);

      (*(v15 + 8))(v13, v14);
      (*(v12 + 8))(v67, v11);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
      (*(v12 + 8))(v10, v11);
    }

    goto LABEL_13;
  }

  if (qword_281257BE0 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 56);
  v21 = *(v0 + 64);
  v22 = sub_270AE3C6C();
  __swift_project_value_buffer(v22, qword_281257D28);
  v23 = *(v21 + 16);
  v23(v18, v19, v20);
  v24 = v17;
  v25 = sub_270AE3C4C();
  v26 = sub_270AE3DFC();

  if (os_log_type_enabled(v25, v26))
  {
    v66 = *(v0 + 152);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v68;
    *v31 = 136315394;
    v23(v28, v27, v30);
    v32 = sub_270AE3CEC();
    v34 = v33;
    v35 = v30;
    v36 = *(v29 + 8);
    v36(v27, v35);
    v37 = sub_270AE08F8(v32, v34, &v69);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    *(v0 + 40) = [v66 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BB8, qword_270AE7068);
    v38 = sub_270AE3CEC();
    v40 = sub_270AE08F8(v38, v39, &v69);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_270AA8000, v25, v26, "ServerActionHandler init() vendor returned: %s sending to delegate: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743B06A0](v68, -1, -1);
    MEMORY[0x2743B06A0](v31, -1, -1);
  }

  else
  {
    v49 = *(v0 + 80);
    v50 = *(v0 + 56);
    v51 = *(v0 + 64);

    v36 = *(v51 + 8);
    v36(v49, v50);
  }

  v52 = [*(v0 + 152) delegate];
  if (v52)
  {
    v53 = v52;
    v54 = *(v0 + 88);
    sub_270AE3A1C();
    v55 = sub_270AE3CCC();

    sub_270AE3A3C();
    v56 = sub_270AE3CCC();

    sub_270AE3A2C();
    v57 = sub_270AE3CCC();

    sub_270AE3A4C();
    if (v58)
    {
      v59 = sub_270AE3CCC();
    }

    else
    {
      v59 = 0;
    }

    [v53 performAction:v55 forNotification:v56 inApp:v57 withUserText:v59];

    swift_unknownObjectRelease();
  }

  v60 = *(v0 + 64) + 8;
  v36(*(v0 + 88), *(v0 + 56));
  v61 = *(MEMORY[0x277D85798] + 4);
  v62 = swift_task_alloc();
  *(v0 + 160) = v62;
  *v62 = v0;
  v62[1] = sub_270ADF96C;
  v63 = *(v0 + 144);
  v64 = *(v0 + 128);
  v65 = *(v0 + 96);

  return MEMORY[0x2822003E8](v65, 0, 0, v64);
}

uint64_t sub_270AE004C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270ADAEA4;

  return sub_270ADF5F4(a1, v4, v5, v6);
}

uint64_t sub_270AE0100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_270ADB960(a3, v27 - v11);
  v13 = sub_270AE3DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_270ADF050(v12, &qword_280843A50, &qword_270AE6EC0);
  }

  else
  {
    sub_270AE3D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_270AE3D8C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_270AE3CFC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_270ADF050(a3, &qword_280843A50, &qword_270AE6EC0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270ADF050(a3, &qword_280843A50, &qword_270AE6EC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_270AE0414()
{
  if (qword_281257BE0 != -1)
  {
    swift_once();
  }

  v1 = sub_270AE3C6C();
  __swift_project_value_buffer(v1, qword_281257D28);
  v2 = v0;
  v3 = sub_270AE3C4C();
  v4 = sub_270AE3DFC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_270AA8000, v3, v4, "ServerActionHandler deinit %@ - cancelling task", v5, 0xCu);
    sub_270ADF050(v6, &qword_280843B90, &qword_270AE7020);
    MEMORY[0x2743B06A0](v6, -1, -1);
    MEMORY[0x2743B06A0](v5, -1, -1);
  }

  if (*&v2[OBJC_IVAR___UNSServerActionHandler_fetchTask])
  {
    v8 = *&v2[OBJC_IVAR___UNSServerActionHandler_fetchTask];

    sub_270AE3DDC();
  }

  v10.receiver = v2;
  v10.super_class = UNSServerActionHandler;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_270AE0638(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_270AE0684(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270AE077C;

  return v7(a1);
}

uint64_t sub_270AE077C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_270AE089C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_270AE08F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_270AE08F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270AE09C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_270AE0F24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_270AE09C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_270AE0AD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_270AE3EBC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_270AE0AD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_270AE0B1C(a1, a2);
  sub_270AE0C4C(&unk_2880954A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_270AE0B1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_270AE0D38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_270AE3EBC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_270AE3D2C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270AE0D38(v10, 0);
        result = sub_270AE3E8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_270AE0C4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_270AE0DAC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_270AE0D38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B98, &qword_270AE7028);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270AE0DAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B98, &qword_270AE7028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_270AE0EA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t type metadata accessor for UNSServerActionHandler()
{
  result = qword_280843B88;
  if (!qword_280843B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280843B88);
  }

  return result;
}

uint64_t sub_270AE0F24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_270AE0F80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_270AE10F0;

  return sub_270AE0684(a1, v5);
}

uint64_t sub_270AE1038(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_270ADAEA4;

  return sub_270AE0684(a1, v5);
}

void UNSDidCompleteDeliveryOfForegroundAction_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}