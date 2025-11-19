void sub_1790(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  queue = *(a1[4] + 1);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_191C;
  v12 = &unk_5EA18;
  v13 = a1[4];
  v14 = v17;
  v15[0] = v16;
  dispatch_async(queue, &v8);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_195C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_19AC(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_1FCC(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_2420(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

_BYTE *sub_2544(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_3670(uint64_t a1)
{
  v8 = a1;
  v7 = a1;
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 openSensitiveURL:*(a1 + 32) withOptions:0];

  v6 = v4;
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    sub_195C(v9, *(a1 + 32), v1);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[AlertItem] Open URL (%@) success? %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

void sub_4304(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v1 = [SUAnalyticsEvent alloc];
  v4[0] = [v1 initWithEventName:kSUAnalyticsUsageEventName];
  [v4[0] setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:kSUAvailableAlertDownloadAndInstallTapped];
  v2 = [a1[4] softwareUpdateController];
  [v2 submitSUAnalyticsEvent:v4[0]];

  [a1[4] downloadAndInstall];
  objc_storeStrong(v4, 0);
}

void sub_43D4(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v1 = [SUAnalyticsEvent alloc];
  v4[0] = [v1 initWithEventName:kSUAnalyticsUsageEventName];
  [v4[0] setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:kSUAvailableAlertLaterTapped];
  v2 = [a1[4] softwareUpdateController];
  [v2 submitSUAnalyticsEvent:v4[0]];

  [a1[4] downloadAndInstallLater];
  objc_storeStrong(v4, 0);
}

void sub_44A4(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v1 = [SUAnalyticsEvent alloc];
  v4[0] = [v1 initWithEventName:kSUAnalyticsUsageEventName];
  [v4[0] setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:kSUAvailableAlertDetailsTapped];
  v2 = [a1[4] softwareUpdateController];
  [v2 submitSUAnalyticsEvent:v4[0]];

  [a1[4] activateSoftwareUpdateSettingsDisplay];
  [a1[4] dismissAlert];
  objc_storeStrong(v4, 0);
}

void sub_48C4(id *a1)
{
  v24[2] = a1;
  v24[1] = a1;
  v24[0] = 0;
  v23 = 0;
  v23 = [a1[4] descriptor];

  if (v23)
  {
    v5 = [SUDownloadOptions alloc];
    v6 = [a1[5] descriptor];
    v3 = [v5 initWithDescriptor:?];
    v4 = v24[0];
    v24[0] = v3;

    v8 = [a1[4] softwareUpdateController];
    v7 = v24[0];
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_4BD4;
    v17 = &unk_5CFE0;
    v18 = a1[4];
    [v8 startDownloadWithOptions:v7 withResult:&v13];

    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    v22 = SUSUILog();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      v1 = a1[4];
      v2 = objc_opt_class();
      v11 = NSStringFromClass(v2);
      v20 = v11;
      sub_4B94(v25, v20);
      _os_log_impl(&dword_0, log, type, "[%{public}@] Unable to start download of nil SUDescriptor", v25, 0xCu);

      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
    v19 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
}

uint64_t sub_4B94(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_4BD4(void *a1, char a2, id obj)
{
  v22 = a1;
  v21 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v19[1] = a1;
  if (v21)
  {
    v19[0] = SUSUILog();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v19[0];
      type = v18;
      v3 = a1[4];
      v4 = objc_opt_class();
      v12 = NSStringFromClass(v4);
      v17 = v12;
      sub_4B94(v24, v17);
      _os_log_impl(&dword_0, log, type, "[%{public}@] Successfully requested download", v24, 0xCu);

      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(v19, 0);
  }

  else
  {
    oslog = SUSUILog();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v15;
      v5 = a1[4];
      v6 = objc_opt_class();
      v9 = NSStringFromClass(v6);
      v14 = v9;
      sub_4E04(v23, v14, location);
      _os_log_impl(&dword_0, v7, v8, "[%{public}@] Failed to initiate SU download: %@", v23, 0x16u);

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_4E04(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_4E58(uint64_t result, char a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_50B0(id *a1, char a2, id obj)
{
  v20 = a1;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v17[1] = a1;
  v3 = a1[4];
  v4 = objc_opt_class();
  v17[0] = NSStringFromClass(v4);
  if (v19)
  {
    v16 = SUSUILog();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v22, v17[0]);
      _os_log_impl(&dword_0, v16, v15, "[%{public}@] Attempting to showing install tonight alert.", v22, 0xCu);
    }

    objc_storeStrong(&v16, 0);
    v5 = [a1[5] softwareUpdateController];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_5364;
    v12 = &unk_5D058;
    v13 = a1[4];
    v14 = v17[0];
    [v5 _createInstallTonightForecastWithResult:&v8];

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_54AC(v21, v17[0], location);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to start download: %{public}@", v21, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&location, 0);
}

void sub_5364(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if ([location[0] _isForecastExpired])
  {
    oslog[0] = SUSUILog();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_54AC(v5, *(a1 + 40), location[0]);
      _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] forecast not valid: %{public}@", v5, 0x16u);
    }

    objc_storeStrong(oslog, 0);
    [*(a1 + 32) dismissAlert];
  }

  else
  {
    [*(a1 + 32) _activateInstallLaterAlert:location[0]];
    [*(a1 + 32) dismissAlert];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_54AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id sub_58F8()
{
  predicate = &unk_6F7F0;
  block = 0;
  objc_storeStrong(&block, &stru_5D0E8);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F7E8;

  return v0;
}

void sub_5980(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F7E8;
  qword_6F7E8 = v1;
}

void sub_6498(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1[4] + 16) objectForKey:a1[5]];
  if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

id sub_66A8(uint64_t a1)
{
  result = [*(a1 + 32) isValid];
  if (result)
  {
    return [*(a1 + 32) invalidate];
  }

  return result;
}

id sub_6CB0()
{
  predicate = &unk_6F800;
  block = 0;
  objc_storeStrong(&block, &stru_5D410);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F7F8;

  return v0;
}

void sub_6D38(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F7F8;
  qword_6F7F8 = v1;
}

id sub_7924(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSURL URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  [v2 activateDisplayWithURL:?];

  return [*(a1 + 32) dismissAlert];
}

id sub_85C4()
{
  predicate = &unk_6F810;
  block = 0;
  objc_storeStrong(&block, &stru_5DA48);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F808;

  return v0;
}

void sub_864C(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F808;
  qword_6F808 = v1;
}

id sub_A37C()
{
  predicate = &unk_6F820;
  block = 0;
  objc_storeStrong(&block, &stru_5E078);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F818;

  return v0;
}

void sub_A404(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F818;
  qword_6F818 = v1;
}

id sub_AF64()
{
  predicate = &unk_6F830;
  block = 0;
  objc_storeStrong(&block, &stru_5E098);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F828;

  return v0;
}

void sub_AFEC(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F828;
  qword_6F828 = v1;
}

id sub_B8C0(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  [a1[4] setActionTaken:1];
  v10[0] = SUSUILog();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v1 = a1[4];
    v2 = objc_opt_class();
    v6 = NSStringFromClass(v2);
    v8 = v6;
    sub_4B94(v11, v8);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Details action taken", v11, 0xCu);

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  [a1[4] activateSoftwareUpdateSettingsDisplay];
  return [a1[4] dismissAlert];
}

void sub_BA1C(id *a1)
{
  v14[2] = a1;
  v14[1] = a1;
  [a1[4] setActionTaken:1];
  v14[0] = SUSUILog();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v14[0];
    type = v13;
    v1 = a1[4];
    v2 = objc_opt_class();
    v10 = NSStringFromClass(v2);
    v12 = v10;
    sub_4B94(v15, v12);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Remind me later action taken", v15, 0xCu);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(v14, 0);
  v7 = [a1[4] softwareUpdateController];
  v3 = a1[4];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  [v7 repopInstallAlertWithDefaultDurationFromNowForReason:?];
}

id sub_BDE0()
{
  predicate = &unk_6F840;
  block = 0;
  objc_storeStrong(&block, &stru_5E3C0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F838;

  return v0;
}

void sub_BE68(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F838;
  qword_6F838 = v1;
}

id sub_C5A4()
{
  predicate = &unk_6F850;
  block = 0;
  objc_storeStrong(&block, &stru_5E6E8);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F848;

  return v0;
}

void sub_C62C(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F848;
  qword_6F848 = v1;
}

__CFString *SUSUIStringForInstallAlertInstallStyle(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = @"Auto-download";
      break;
    case 2:
      v2 = @"Install-with-countdown";
      break;
    case 3:
      v2 = @"Install-without-countdown";
      break;
    case 4:
      v2 = @"Enforced-install-now";
      break;
    case 5:
      v2 = @"Enforced-install-reminder";
      break;
    case 6:
      v2 = @"Enforced-install-countdown";
      break;
    default:
      v2 = @"None-alert-style";
      break;
  }

  return v2;
}

void sub_D9A8(uint64_t a1)
{
  v1 = [*(a1 + 32) softwareUpdateController];
  [v1 repopInstallAlertWithDefaultDurationFromNowForReason:@"Alert was canceled"];
}

id sub_EFC4(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v4, *(a1 + 32));
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] Install Now action taken.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 40) _submitUserInteractionEvent:kSUSoftwareUpdateInstallAlertInstallNowTapped];
  [*(a1 + 40) _installUpdateNow];
  return [*(a1 + 40) dismissAlert];
}

id sub_F520(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v4, *(a1 + 32));
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to showing install tonight alert.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 40) _submitUserInteractionEvent:kSUSoftwareUpdateInstallAlertInstallLaterTapped];
  [*(a1 + 40) _userAskedToDeferInstall];
  if (([*(*(a1 + 48) + 89) _isForecastExpired] & 1) == 0)
  {
    return [*(a1 + 40) _activateInstallLaterAlert];
  }

  [*(a1 + 40) _scheduleInstallAlertRepopOnDismissWithReason:@"Try tonight forecast expired."];
  return [*(a1 + 40) dismissAlert];
}

id sub_FB04(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v11, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], v8, "[%@] Remind me later action taken", v11, 0xCu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) _userAskedToDeferInstall];
  [*(a1 + 40) _submitUserInteractionEvent:kSUSoftwareUpdateInstallAlertRemindMeLaterTapped];
  if (*(*(a1 + 48) + 41) >= 4uLL)
  {
    v7 = SUSUILog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v10, *(a1 + 32));
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%@] DDM alert, don't schedule anything here", v10, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 32);
    v5 = [v3 _stringFromAlertStyle:{objc_msgSend(v3, "style")}];
    v4 = [NSString stringWithFormat:@"Later from %@ of style: %@", v2, v5];
    [v3 _scheduleInstallAlertRepopOnDismissWithReason:?];
  }

  return [*(a1 + 40) dismissAlert];
}

void sub_FF94(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v6, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], v4, "[%{public}@] Emergency action taken", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) _submitUserInteractionEvent:kSUSoftwareUpdateInstallAlertEmergencyTapped];
  v3 = [[SUSUIFullScreenEmergencyCallAlert alloc] initWithCompletionBlock:0];
  v2 = [*(a1 + 40) softwareUpdateController];
  if (v3 && v2)
  {
    [v2 presentFullScreenAlert:v3 completion:0];
  }

  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
}

id sub_10330(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v8, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] Route to settings action taken", v8, 0xCu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) _submitUserInteractionEvent:kSUSoftwareUpdateInstallAlertDetailsTapped];
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  v5 = [v3 _stringFromAlertStyle:{objc_msgSend(v3, "style")}];
  v4 = [NSString stringWithFormat:@"Details from %@ of style: %@", v2, v5];
  [v3 _scheduleInstallAlertRepopOnDismissWithReason:?];

  [*(a1 + 40) activateSoftwareUpdateSettingsDisplay];
  return [*(a1 + 40) dismissAlert];
}

void sub_10B38(id *a1, char a2)
{
  v4 = a1;
  v3 = a2;
  location[1] = a1;
  location[0] = [a1[4] softwareUpdateController];
  if (v3)
  {
    [location[0] installTonight];
  }

  else
  {
    [location[0] repopInstallAlertWithDefaultDurationFromNowForReason:@"Authentication failed from install tonight passcode authentication alert."];
  }

  objc_storeStrong(location, 0);
}

id sub_10DC8()
{
  predicate = &unk_6F860;
  block = 0;
  objc_storeStrong(&block, &stru_5EA38);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F858;

  return v0;
}

void sub_10E50(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F858;
  qword_6F858 = v1;
}

void sub_10F40(id a1)
{
  v1 = objc_alloc_init(SUSUICommandLineTestServer);
  v2 = qword_6F868;
  qword_6F868 = v1;
}

id sub_1109C(uint64_t a1)
{
  v9 = +[SUSUISoftwareUpdateController sharedInstance];
  v1 = [(SUSUISoftwareUpdateController *)v9 clientQueue];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = [NSXPCListener alloc];
  v5 = [v4 initWithMachServiceName:SUSUICLIToolConnectionName];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  [*(*(a1 + 32) + 8) setDelegate:*(a1 + 32)];
  return [*(*(a1 + 32) + 8) resume];
}

uint64_t sub_11844(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

void sub_1187C(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v44 = 0;
  objc_storeStrong(&v44, a3);
  v43[1] = a1;
  if (v44)
  {
    v3 = [*(a1[4] + 3) stringByAppendingString:{@"[] Faild finding an update, using a downloaded update instead.\n"}];
    v4 = a1[4];
    v5 = v4[3];
    v4[3] = v3;

    v43[0] = SUSUILog();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v43[0];
      type = v42;
      sub_2544(v41);
      _os_log_impl(&dword_0, log, type, "Faild finding an update, using a downloaded update instead", v41, 2u);
    }

    objc_storeStrong(v43, 0);
    v12 = +[SUSUISoftwareUpdateController sharedInstance];
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_11DBC;
    v35 = &unk_5EDB0;
    v36 = a1[4];
    v40[1] = a1[9];
    v37 = a1[5];
    v38 = a1[6];
    v39 = a1[7];
    v40[0] = a1[8];
    [(SUSUISoftwareUpdateController *)v12 _discoveredUpdates:&v31];

    objc_storeStrong(v40, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v6 = [*(a1[4] + 3) stringByAppendingString:{@"[] Found a new update, continue presenting the alert.\n"}];
    v7 = a1[4];
    v8 = v7[3];
    v7[3] = v6;

    v30 = SUSUILog();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v30;
      v11 = v29;
      sub_2544(v28);
      _os_log_impl(&dword_0, v10, v11, "Found a new update, continue presenting the alert", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v9 = +[SUSUISoftwareUpdateController sharedInstance];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_12084;
    v21 = &unk_5ED88;
    v22 = a1[4];
    v27[1] = a1[9];
    v23 = a1[5];
    v24 = a1[6];
    v25 = location[0];
    v26 = a1[7];
    v27[0] = a1[8];
    [(SUSUISoftwareUpdateController *)v9 _createInstallTonightForecastWithResult:&v17];

    objc_storeStrong(v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

void sub_11DBC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[2] = a1;
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_12000;
  v10 = &unk_5ED88;
  v11 = a1[4];
  v16[1] = a1[9];
  v12 = a1[5];
  v13 = a1[6];
  v14 = location[0];
  v15 = a1[7];
  v16[0] = a1[8];
  [(SUSUISoftwareUpdateController *)v5 _createInstallTonightForecastWithResult:?];

  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_12000(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) presentMiniAlert:*(a1 + 80) errorCode:*(a1 + 40) downloadDescriptor:*(a1 + 48) scanResultsDescriptor:*(a1 + 56) autoInstallForecast:location[0] andRollbackDescriptor:*(a1 + 64) result:*(a1 + 72)];
  objc_storeStrong(location, 0);
}

void sub_12084(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) presentMiniAlert:*(a1 + 80) errorCode:*(a1 + 40) downloadDescriptor:*(a1 + 48) scanResultsDescriptor:*(a1 + 56) autoInstallForecast:location[0] andRollbackDescriptor:*(a1 + 64) result:*(a1 + 72)];
  objc_storeStrong(location, 0);
}

uint64_t sub_13774(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_13A58(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[1] = a1;
  v15[0] = 0;
  if (*(a1 + 40))
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v17, *(a1 + 40));
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unknown laggards UI type: %lu", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v5 = [SUSUIFullScreenScheduleUpdateAlert alloc];
    v6 = [location[0] preferredDescriptor];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_13CA4;
    v13 = &unk_5D030;
    v14 = *(a1 + 32);
    v2 = [(SUSUIFullScreenScheduleUpdateAlert *)v5 initWithDescriptor:v6 completionBlock:&v9];
    v3 = v15[0];
    v15[0] = v2;

    objc_storeStrong(&v14, 0);
  }

  v4 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v4 presentFullScreenAlert:v15[0] completion:?];

  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
}

void sub_13CF0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[1] = a1;
  v8[0] = SUSUILog();
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_195C(v11, location[0], v9);
    _os_log_impl(&dword_0, v8[0], OS_LOG_TYPE_DEFAULT, "Scan Results: %@, error: %@", v11, 0x16u);
  }

  objc_storeStrong(v8, 0);
  v6 = 0;
  v3 = 1;
  if (!v9)
  {
    v7 = [location[0] preferredDescriptor];
    v6 = 1;
    v3 = v7 == 0;
  }

  if (v6)
  {
  }

  if (v3)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_14330(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v9 = [SUSUIFullScreenAuthenticationAlert alloc];
  v10 = [location[0] descriptor];
  v5 = v14;
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v8 = *(*(a1 + 32) + 16);
  v12 = *(a1 + 40);
  v13[0] = [(SUSUIFullScreenAuthenticationAlert *)v9 initWithDescriptor:v10 autoInstallForecast:v5 forInstallTonight:v6 & 1 canDeferInstallation:v7 & 1 completionQueue:v8 completionBlock:?];

  v11 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v11 presentAuthenticationAlert:v13[0] completion:0];

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1450C(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_14570(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

uint64_t sub_14730(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_16D34(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v6, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], v4, "[%{public}@] Install tonight action taken", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  *(*(a1 + 40) + 57) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v1 = [WeakRetained softwareUpdateController];
  [v1 installTonight];

  objc_storeStrong(&WeakRetained, 0);
}

void sub_16E80(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v7, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], v5, "[%{public}@] Remind me later action taken", v7, 0xCu);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = WeakRetained;
  v2 = [NSString stringWithFormat:@"Later from install tonight alert: %@", *(a1 + 32)];
  [v1 _scheduleInstallAlertRepopOnDismissWithReason:?];

  [WeakRetained dismissAlert];
  objc_storeStrong(&WeakRetained, 0);
}

void sub_16FEC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v7, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], v5, "[%{public}@] Emergency action taken", v7, 0xCu);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [[SUSUIFullScreenEmergencyCallAlert alloc] initWithCompletionBlock:0];
  v2 = [WeakRetained softwareUpdateController];
  if (v3 && v2)
  {
    [v2 presentEmergencyCallAlert:v3 completion:0];
  }

  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&WeakRetained, 0);
}

id sub_17868()
{
  predicate = &unk_6F888;
  block = 0;
  objc_storeStrong(&block, &stru_5F1C8);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F880;

  return v0;
}

void sub_178F0(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F880;
  qword_6F880 = v1;
}

__CFString *window2Str(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = @"SUSUIDDMReminderWindowOverdue";
      break;
    case 2:
      v2 = @"SUSUIDDMReminderWindowSoon";
      break;
    case 3:
      v2 = @"SUSUIDDMReminderWindowFar";
      break;
    default:
      v2 = @"SUSUIDDMReminderWindowNone";
      break;
  }

  return v2;
}

void sub_180BC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (!a1[4])
  {
    if (*(a1[5] + 1))
    {
      location[0] = SUSUILog();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v33, "[SUSUIDDMController setDeclaration:]_block_invoke");
      }

      objc_storeStrong(location, 0);
      [a1[5] _disarm];
    }

    else
    {
      v24 = SUSUILog();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v32, "[SUSUIDDMController setDeclaration:]_block_invoke");
        _os_log_impl(&dword_0, v24, v23, "%s: [DDM] Got nil and the existing one is also nil...", v32, 0xCu);
      }

      objc_storeStrong(&v24, 0);
    }

    return;
  }

  if (*(a1[5] + 1))
  {
    if ([a1[4] isEqual:*(a1[5] + 1)])
    {
      oslog = SUSUILog();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v31, "[SUSUIDDMController setDeclaration:]_block_invoke");
        _os_log_impl(&dword_0, oslog, v21, "%s: [DDM] New declaration equals the existing one. No need to do anything", v31, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      return;
    }

    v20 = SUSUILog();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_186F0(v30, "[SUSUIDDMController setDeclaration:]_block_invoke", *(a1[5] + 1), a1[4]);
      _os_log_impl(&dword_0, v20, v19, "%s: [DDM] Replacing existing declaration: %{public}@\nwith new declaration: %{public}@", v30, 0x20u);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v18 = SUSUILog();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_1875C(v29, "[SUSUIDDMController setDeclaration:]_block_invoke", a1[4]);
      _os_log_impl(&dword_0, v18, v17, "%s: [DDM] No previous declaration, new declaration: %{public}@", v29, 0x16u);
    }

    objc_storeStrong(&v18, 0);
  }

  v1 = a1[5];
  if ([objc_opt_class() _isDeclarationRelevant:a1[4]])
  {
    [a1[5] _disarm];
    objc_storeStrong(a1[5] + 1, a1[4]);
    v12 = [*(a1[5] + 1) enforcedInstallDate];
    v11 = +[NSDate now];
    v10 = [(NSDate *)v11 dateByAddingTimeInterval:3600.0];
    v2 = [v12 laterDate:?];
    v3 = a1[5];
    v4 = v3[9];
    v3[9] = v2;

    v16 = SUSUILog();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1[5] + 9);
      [v9 timeIntervalSince1970];
      sub_187B0(v28, "[SUSUIDDMController setDeclaration:]_block_invoke", v9, v5);
      _os_log_impl(&dword_0, v16, v15, "%s: [DDM] Will directly start installing after %{public}@ (interval: %lf)", v28, 0x20u);
    }

    objc_storeStrong(&v16, 0);
    [a1[5] _setPasscodePolicyToRequiredIfNeeded];
    [a1[5] _makeScheduling];
    [a1[5] _scheduleNextDDMAlert];
  }

  else
  {
    v14 = SUSUILog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v6 = a1[5];
      v7 = objc_opt_class();
      sub_186F0(v27, "[SUSUIDDMController setDeclaration:]_block_invoke", v8, v7);
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Declaration %{public}@ isn't relevant for %{public}@", v27, 0x20u);
    }

    objc_storeStrong(&v14, 0);
  }
}

uint64_t sub_186B0(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_186F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_1875C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_187B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_18930(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1875C(v6, "[SUSUIDDMController setGlobalSettings:]_block_invoke", *(*(a1 + 32) + 16));
    _os_log_impl(&dword_0, oslog[0], type, "%s: [DDM] Old global settings: %{public}@", v6, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v2 = SUSUILog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1875C(v5, "[SUSUIDDMController setGlobalSettings:]_block_invoke", *(a1 + 40));
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s: [DDM] New global settings: %{public}@", v5, 0x16u);
  }

  objc_storeStrong(&v2, 0);
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
}

void sub_18E04(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_6F890;
  qword_6F890 = v1;

  [qword_6F890 setDateTimeStyle:?];
  [qword_6F890 setFormattingContext:1];
}

void sub_1A30C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v24 = a1;
  v25 = a2 & ~[*(a1 + 32) ignorableConstraints];
  if (v25)
  {
    v11 = SUSUILog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_1A8A4(v27, "[SUSUIDDMController _installNow]_block_invoke", v25);
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Cannot install due to %ld; show an alert instead", v27, 0x16u);
    }

    objc_storeStrong(&v11, 0);
    [*(a1 + 40) _showDDMAlertNowOrInstallIfNecessary:0];
  }

  else
  {
    v6 = +[UMUserManager sharedManager];
    v7 = [v6 isSharedIPad];

    v23 = v7;
    v8 = +[SUSUIPreferences sharedInstance];
    v9 = [(SUSUIPreferences *)v8 isSharedIPad];

    if (v9)
    {
      location = SUSUILog();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v32, "[SUSUIDDMController _installNow]_block_invoke");
        _os_log_impl(&dword_0, location, v21, "%s: [DDM] Overriding isSharedIPad to YES", v32, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v23 = 1;
    }

    v20 = SUSUILog();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1A850(v31, "[SUSUIDDMController _installNow]_block_invoke", v23 & 1);
      _os_log_impl(&dword_0, v20, v19, "%s: [DDM] Installing DDM update now (isSharedIpad = %d)", v31, 0x12u);
    }

    objc_storeStrong(&v20, 0);
    if (v23)
    {
      v18 = SUSUILog();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v30, "[SUSUIDDMController _installNow]_block_invoke");
        _os_log_impl(&dword_0, v18, v17, "%s: [DDM] Directly install the update on a shared iPad", v30, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      [*(a1 + 40) _doInstall:*(a1 + 32)];
    }

    else
    {
      v4 = [SUSUISoftwareUpdateInstallAlertItem alloc];
      v5 = [*(*(a1 + 40) + 24) _download];
      v2 = *(*(a1 + 40) + 24);
      v3 = *(a1 + 32);
      obj = [SUSUISoftwareUpdateInstallAlertItem initWithDownload:v4 style:"initWithDownload:style:softwareUpdateController:tryTonightInstallOperationForecast:installOptions:" softwareUpdateController:? tryTonightInstallOperationForecast:? installOptions:?];

      oslog = SUSUILog();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1875C(v29, "[SUSUIDDMController _installNow]_block_invoke", obj);
        _os_log_impl(&dword_0, oslog, v14, "%s: [DDM] [Install Alert] Presenting %{public}@", v29, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      if ([*(*(a1 + 40) + 24) presentAlert:obj])
      {
        objc_storeStrong((*(a1 + 40) + 48), obj);
      }

      else
      {
        v13 = SUSUILog();
        v12 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          sub_186B0(v28, "[SUSUIDDMController _installNow]_block_invoke");
          _os_log_impl(&dword_0, v13, v12, "%s: [DDM] Failed to show the countdown; try to show a regular alert", v28, 0xCu);
        }

        objc_storeStrong(&v13, 0);
        [*(a1 + 40) _showDDMAlertNowOrInstallIfNecessary:0];
      }

      objc_storeStrong(&obj, 0);
    }
  }
}

uint64_t sub_1A850(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_1A8A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_1AABC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t sub_1B834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_1CA44(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) humanReadableUpdateName];
    sub_1875C(v8, "[SUSUIDDMController installDidStart:]_block_invoke", v4);
    _os_log_impl(&dword_0, location[0], OS_LOG_TYPE_DEFAULT, "%s: [DDM] Started to install %{public}@; pause showing alert...", v8, 0x16u);
  }

  objc_storeStrong(location, 0);
  *(*(a1 + 40) + 96) = 1;
  v3 = +[SUSUIFollowUpPresenter sharedInstance];
  v2 = +[SUSUIFollowUpDDMUpdate uniqueIdentifier];
  v7 = v2;
  v1 = [NSArray arrayWithObjects:&v7 count:1];
  [(SUSUIFollowUpPresenter *)v3 clearFollowUpWithIdentifiers:?];
}

void sub_1CD1C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] _isUpdateRelevant:a1[5]])
  {
    location[0] = SUSUILog();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = [a1[5] humanReadableUpdateName];
      sub_1875C(v8, "[SUSUIDDMController installDidFinish:]_block_invoke", v2);
      _os_log_impl(&dword_0, location[0], v5, "%s: [DDM] Finished to install relevant update %{public}@; disarming...", v8, 0x16u);
    }

    objc_storeStrong(location, 0);
    [a1[4] _disarm];
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [a1[5] humanReadableUpdateName];
      sub_1875C(v7, "[SUSUIDDMController installDidFinish:]_block_invoke", v1);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Finished to install irrelevant update %{public}@; resume showing alert... [should never print this... likely a bug...]", v7, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    *(a1[4] + 96) = 0;
  }
}

void sub_1D128(uint64_t a1)
{
  v20[2] = a1;
  v20[1] = a1;
  v20[0] = *(*(a1 + 32) + 56);
  if ((*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v1 = *(a1 + 32);
    v17 = objc_opt_class();
    v18 = [*(*(a1 + 32) + 8) enforcedInstallDate];
    v2 = [v17 _schedulingUnitForEnforcedDate:(86400 * *(a1 + 40)) withInterval:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  else
  {
    v16 = *(a1 + 40);
    if (v16 < [*(*(a1 + 32) + 80) count])
    {
      v5 = [*(*(a1 + 32) + 80) objectAtIndex:*(a1 + 40)];
    }

    else
    {
      v5 = [*(*(a1 + 32) + 80) lastObject];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  if (qword_6F8A0)
  {
    [qword_6F8A0 dismissAlert];
  }

  if (*(a1 + 48))
  {
    v14 = [SUSUISoftwareUpdateInstallAlertItem alloc];
    v15 = [*(*(a1 + 32) + 24) _download];
    v8 = -[SUSUISoftwareUpdateInstallAlertItem initWithDownload:style:softwareUpdateController:tryTonightInstallOperationForecast:installOptions:](v14, "initWithDownload:style:softwareUpdateController:tryTonightInstallOperationForecast:installOptions:", v15, [*(a1 + 32) scheduledAlertStyle], *(*(a1 + 32) + 24), 0);
    v9 = qword_6F8A0;
    qword_6F8A0 = v8;
  }

  else
  {
    v12 = [SUSUIDDMAvailableAlertItem alloc];
    v13 = [*(a1 + 32) descriptor];
    v10 = -[SUSUIDDMAvailableAlertItem initWithDescriptor:softwareUpdateController:alertWindow:](v12, "initWithDescriptor:softwareUpdateController:alertWindow:", v13, *(*(a1 + 32) + 24), [*(*(a1 + 32) + 56) window]);
    v11 = qword_6F8A0;
    qword_6F8A0 = v10;
  }

  [*(a1 + 32) _presentAlert:qword_6F8A0];
  objc_storeStrong((*(a1 + 32) + 56), v20[0]);
  objc_storeStrong(v20, 0);
}

id sub_1D75C()
{
  predicate = &unk_6F8B0;
  block = 0;
  objc_storeStrong(&block, &stru_5F588);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F8A8;

  return v0;
}

void sub_1D7E4(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F8A8;
  qword_6F8A8 = v1;
}

id sub_1DC40()
{
  predicate = &unk_6F8C0;
  block = 0;
  objc_storeStrong(&block, &stru_5F8B0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F8B8;

  return v0;
}

void sub_1DCC8(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F8B8;
  qword_6F8B8 = v1;
}

id sub_1DF30()
{
  predicate = &unk_6F8D0;
  block = 0;
  objc_storeStrong(&block, &stru_5FBD8);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F8C8;

  return v0;
}

void sub_1DFB8(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F8C8;
  qword_6F8C8 = v1;
}

id sub_1E6D0(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v4, *(a1 + 32));
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] OK action taken.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return [*(a1 + 40) dismissAlert];
}

id sub_1E970()
{
  predicate = &unk_6F8E0;
  block = 0;
  objc_storeStrong(&block, &stru_5FF00);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F8D8;

  return v0;
}

void sub_1E9F8(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F8D8;
  qword_6F8D8 = v1;
}

void sub_1EE44(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_1EECC(uint64_t a1)
{
  v8[3] = a1;
  v8[2] = a1;
  *(*(a1 + 32) + 52) = -1;
  name = kSBSLockStateNotifyKey;
  v1 = *(a1 + 32);
  queue = *(v1 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F070;
  v7[3] = &unk_5FF50;
  v8[0] = *(a1 + 32);
  v8[1] = *(a1 + 48);
  notify_register_dispatch(name, (v1 + 52), queue, v7);
  [*(a1 + 32) _queue_UILockStateChanged:objc_msgSend(*(a1 + 32) initially:{"_queue_fetchUILockState") & 1, 1}];
  v4 = *(a1 + 32);
  v5 = [v4[3] currentLayout];
  [v4 _queue_handleNewLayout:? context:?];

  if (*(a1 + 40))
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  objc_storeStrong(v8, 0);
}

id sub_1F070(id result)
{
  if (*(*(result + 4) + 52) != -1)
  {
    return [*(*(*(result + 5) + 8) + 40) _queue_UILockStateChanged:objc_msgSend(*(result + 4) initially:{"_queue_fetchUILockState"), 0}];
  }

  return result;
}

void *sub_1F6A8(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 32) addObject:result[4]];
  }

  return result;
}

void *sub_1F814(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 32) removeObject:result[4]];
  }

  return result;
}

id sub_1F97C(uint64_t a1)
{
  result = [*(a1 + 32) _queue_fetchUILockState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1FC48(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  memset(__b, 0, sizeof(__b));
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v2 = *__b[2];
    v3 = 0;
    v4 = v7;
    while (1)
    {
      v1 = v3;
      if (*__b[2] != v2)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v3);
      if (objc_opt_respondsToSelector())
      {
        [v9 layoutStateMonitorUILockStateDidChange:*(a1 + 40)];
      }

      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }
}

void sub_20518(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  memset(__b, 0, sizeof(__b));
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v2 = *__b[2];
    v3 = 0;
    v4 = v7;
    while (1)
    {
      v1 = v3;
      if (*__b[2] != v2)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v3);
      if (objc_opt_respondsToSelector())
      {
        [v9 layoutStateMonitorStateDidChange:*(a1 + 40)];
      }

      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }
}

id sub_2146C()
{
  predicate = &unk_6F8F0;
  block = 0;
  objc_storeStrong(&block, &stru_5FFC0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F8E8;

  return v0;
}

void sub_214F4(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F8E8;
  qword_6F8E8 = v1;
}

__CFString *SUSUIStringForInstallSource(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Automatic";
    }
  }

  else
  {
    v2 = @"User Action";
  }

  return v2;
}

__CFString *SUSUIStringForInstallAlertFlow(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = @"AutoDownloadNotify";
        break;
      case 2:
        v2 = @"ManualUserDownload";
        break;
      case 3:
        v2 = @"InstallTonightWithCountdown";
        break;
      case 4:
        v2 = @"InstallWithoutCountdown";
        break;
      case 5:
        v2 = @"AutoUpdate";
        break;
      default:
        v2 = @"Unknown";
        break;
    }
  }

  else
  {
    v2 = @"None";
  }

  return v2;
}

__CFString *SUSUIStringForInstallType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Install Tonight";
    }

    else if (a1 == 2)
    {
      v2 = @"Auto Update";
    }
  }

  else
  {
    v2 = @"Install Now";
  }

  return v2;
}

__CFString *SUSUIStringForInstallAlertRepopStrategy(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = @"Default";
        break;
      case 2:
        v2 = @"Default - 1 Week";
        break;
      case 3:
        v2 = @"Immediate";
        break;
      case 4:
        v2 = @"Immediate with small buffer";
        break;
      case 5:
        v2 = @"Immediate with longer buffer";
        break;
      case 6:
        v2 = @"Until Able";
        break;
      case 7:
        v2 = @"Next Unlock";
        break;
    }
  }

  else
  {
    v2 = @"None";
  }

  return v2;
}

__CFString *SUSUIStringForInstallPolicyType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Required";
    }

    else
    {
      v2 = @"Unknown";
    }
  }

  else
  {
    v2 = @"Default";
  }

  return v2;
}

void sub_21E3C(id a1)
{
  v1 = objc_alloc_init(SUSUISoftwareUpdateController);
  v2 = qword_6F8F8;
  qword_6F8F8 = v1;
}

void sub_220DC(id *a1)
{
  v62[2] = a1;
  v62[1] = a1;
  *(a1[4] + 25) = 0;
  objc_storeStrong(a1[4] + 4, 0);
  objc_storeStrong(a1[4] + 3, a1[5]);
  v1 = [[SUSUIAlertPresentationManager alloc] initWithQueue:*(a1[4] + 3)];
  v2 = a1[4];
  v3 = v2[10];
  v2[10] = v1;

  v4 = [[SUSUIFullScreenAlertPresentationManager alloc] initWithQueue:*(a1[4] + 3)];
  v5 = a1[4];
  v6 = v5[9];
  v5[9] = v4;

  v7 = [[SUManagerClient alloc] initWithDelegate:a1[4] queue:*(a1[4] + 3) clientType:0];
  v8 = a1[4];
  v9 = v8[2];
  v8[2] = v7;

  v10 = objc_alloc_init(SUSUILayoutStateMonitor);
  v11 = a1[4];
  v12 = v11[11];
  v11[11] = v10;

  objc_storeStrong(a1[4] + 8, 0);
  v13 = +[SUSFollowUpController sharedController];
  v14 = a1[4];
  v15 = v14[30];
  v14[30] = v13;

  v16 = +[NSHashTable weakObjectsHashTable];
  v17 = a1[4];
  v18 = v17[16];
  v17[16] = v16;

  v19 = objc_alloc_init(SUSUISoftwareUpdateDefaults);
  v20 = a1[4];
  v21 = v20[17];
  v20[17] = v19;

  v22 = objc_alloc_init(SUSUIExternalSettingsAppDefaults);
  v23 = a1[4];
  v24 = v23[18];
  v23[18] = v22;

  v25 = +[SUKeybagInterface sharedInstance];
  v26 = a1[4];
  v27 = v26[13];
  v26[13] = v25;

  v54 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.badgingQueue", v54);
  v29 = a1[4];
  v30 = v29[19];
  v29[19] = v28;

  v55 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v31 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.backgroundQueue", v55);
  v32 = a1[4];
  v33 = v32[21];
  v32[21] = v31;

  v34 = objc_alloc_init(FBSSystemService);
  v35 = a1[4];
  v36 = v35[20];
  v35[20] = v34;

  objc_storeStrong(a1[4] + 24, 0);
  v37 = objc_alloc_init(NSMutableDictionary);
  v38 = a1[4];
  v39 = v38[27];
  v38[27] = v37;

  v40 = objc_alloc_init(NSMutableDictionary);
  v41 = a1[4];
  v42 = v41[28];
  v41[28] = v40;

  v56 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v43 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.homescreenArrayQueue", v56);
  v44 = a1[4];
  v45 = v44[29];
  v44[29] = v43;

  v46 = +[SUSUIAuthenticationInterface sharedInstance];
  v47 = a1[4];
  v48 = v47[14];
  v47[14] = v46;

  [*(a1[4] + 14) setIsController:1];
  [*(a1[4] + 14) resetAttempts];
  v57 = +[BSPowerMonitor sharedInstance];
  [(BSPowerMonitor *)v57 addObserver:a1[4]];

  v49 = [[SUSUIDDMController alloc] initWithSUSUIController:a1[4] withQueue:*(a1[4] + 3)];
  v50 = a1[4];
  v51 = v50[26];
  v50[26] = v49;

  [a1[4] _migrateForNewOSVersionIfNecessary];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1[4], sub_22710, @"SBSpringBoardDidLaunchNotification", 0, CFNotificationSuspensionBehaviorDrop);
  v58 = dispatch_time(0, 5000000000);
  v53 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_22820;
  v61[3] = &unk_5CCB0;
  v62[0] = a1[4];
  dispatch_after(v58, queue, v61);

  [a1[4] _initializeState];
  objc_storeStrong(v62, 0);
}

id sub_22710(uint64_t a1, void *a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  v9 = a1;
  v8 = a2;
  oslog[3] = a3;
  oslog[2] = a4;
  oslog[1] = a5;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_186B0(v10, "SBSpringBoardDidLaunchNotification");
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "Received notification: %s", v10, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v8, @"SBSpringBoardDidLaunchNotification", 0);
  return [v8 initPostOTAFollowUpController];
}

id sub_22820(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "Timer (5s) fired for post-ota-alert controller", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return [a1[4] initPostOTAFollowUpController];
}

void sub_229A0(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v84 = 0;
  objc_storeStrong(&v84, a3);
  v83 = 0;
  objc_storeStrong(&v83, a4);
  v82 = 0;
  objc_storeStrong(&v82, a5);
  v81 = a1;
  v79 = 0;
  v44 = 0;
  if (location[0])
  {
    v80 = [location[0] progress];
    v79 = 1;
    v44 = [v80 isDone];
  }

  if (v79)
  {
  }

  if (v44)
  {
    [a1[4] _setInstallPolicy:v84];
    v78 = SUSUILog();
    v77 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      log = v78;
      type = v77;
      v36 = location[0];
      v39 = [location[0] descriptor];
      v76 = v39;
      sub_23504(v88, v36, v76);
      _os_log_impl(&dword_0, log, type, "Download (%p) found complete at startup for descriptor: %@", v88, 0x16u);

      objc_storeStrong(&v76, 0);
    }

    objc_storeStrong(&v78, 0);
    v75 = SUSUILog();
    v74 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      sub_195C(v87, v84, v83);
      _os_log_impl(&dword_0, v75, v74, "install policy: %@, autoInstallOperation: %@", v87, 0x16u);
    }

    objc_storeStrong(&v75, 0);
    [a1[4] setUpdateToInstall:location[0]];
    v5 = [SUSUISoftwareUpdateAlertModel alloc];
    v6 = [(SUSUISoftwareUpdateAlertModel *)v5 initWithDownload:location[0] autoInstallOperation:v83 defaults:*(a1[4] + 17)];
    v7 = a1[4];
    v8 = v7[6];
    v7[6] = v6;

    [*(a1[4] + 6) setDelegate:a1[4]];
    [*(a1[4] + 6) setCurrentInstallationPolicy:v84 forReason:@"Startup; policy associated with download"];
    v35 = 0;
    if ([v83 _isEffectivelyScheduled])
    {
      v34 = 1;
      if ([*(a1[4] + 6) alertFlow] != &dword_0 + 3)
      {
        v34 = [*(a1[4] + 6) alertFlow] == &dword_4 + 1;
      }

      v35 = v34;
    }

    v73 = v35;
    if (v35)
    {
      [a1[4] _setPasscodePolicyType:{objc_msgSend(a1[4], "getPasscodePolicyForAlertModel:", *(a1[4] + 6))}];
    }

    if ([a1[4] _shouldShowOrScheduleInstallAlert])
    {
      v33 = [*(a1[4] + 6) nextAlertDate];

      if (v33)
      {
        v32 = [*(a1[4] + 6) nextAlertRepopStrategy];
        if (v32)
        {
          v31 = v32;
        }

        else
        {
          v31 = &dword_0 + 1;
        }

        v72[1] = v31;
        v29 = a1[4];
        v30 = [v29[6] nextAlertDate];
        [v29 _scheduleInstallAlertReminderWithDate:? repopStrategy:? forReason:?];
      }

      else if (v73)
      {
        v72[0] = SUSUILog();
        v71 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v72[0], OS_LOG_TYPE_DEFAULT))
        {
          v27 = location[0];
          v28 = v83;
          v9 = [a1[4] _isAutoUpdateEnabled];
          v10 = @"YES";
          if ((v9 & 1) == 0)
          {
            v10 = @"NO";
          }

          sub_23554(v86, v27, v28, v10, [*(a1[4] + 6) alertFlow]);
          _os_log_impl(&dword_0, v72[0], v71, "Automatic install detected at boot time: %@, auto install operation: %@ autoUpdateEnabled: %@ alertFlow:%lu", v86, 0x2Au);
        }

        objc_storeStrong(v72, 0);
        v70 = [*(a1[4] + 2) isInstallationKeybagRequired];
        if (([a1[4] _isAutoUpdateEnabled] & 1) != 0 && objc_msgSend(*(a1[4] + 6), "alertFlow") == &dword_4 + 1)
        {
          oslog = SUSUILog();
          v68 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v25 = oslog;
            v26 = v68;
            sub_2544(v67);
            _os_log_impl(&dword_0, v25, v26, "Auto update flow", v67, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v66 = [a1[4] getPasscodePolicyForAlertModel:*(a1[4] + 6)];
          if ((v70 & 1) != 0 && v66 != &dword_0 + 2)
          {
            v65 = SUSUILog();
            v64 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v65;
              v24 = v64;
              sub_2544(v63);
              _os_log_impl(&dword_0, v23, v24, "Auto update reinitiated and keybag required, overriding passcode policy to required", v63, 2u);
            }

            objc_storeStrong(&v65, 0);
            v66 = (&dword_0 + 2);
          }

          [a1[4] _setupAutoUpdate:v83 withPasscodePolicy:v66];
        }

        else
        {
          if (v70)
          {
            v62 = SUSUILog();
            v61 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v62;
              v22 = v61;
              sub_2544(v60);
              _os_log_impl(&dword_0, v21, v22, "Keybag lost after reboot. Set passcode policy to required", v60, 2u);
            }

            objc_storeStrong(&v62, 0);
            [a1[4] _setPasscodePolicyType:2];
          }

          v59 = SUSUILog();
          v58 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v59;
            v20 = v58;
            sub_2544(v57);
            _os_log_impl(&dword_0, v19, v20, "Not scheduling install alert because we're waiting for the SU install notification to come in.", v57, 2u);
          }

          objc_storeStrong(&v59, 0);
          [a1[4] _setTryTonightAutoInstallOperation:v83 cancelIfNecessary:1];
        }
      }

      else if ([a1[4] _isAutoUpdateEnabled])
      {
        v18 = *(a1[4] + 2);
        v51 = _NSConcreteStackBlock;
        v52 = -1073741824;
        v53 = 0;
        v54 = sub_235D0;
        v55 = &unk_60310;
        v56 = a1[4];
        [v18 currentAutoInstallOperation:1 withResult:&v51];
        objc_storeStrong(&v56, 0);
      }

      else if ([*(a1[4] + 6) nextAlertRepopStrategy] == &dword_4 + 3)
      {
        [a1[4] _realertWithStrategy:7 andReason:@"Scheduling next install alert for next unlock."];
      }

      else
      {
        v50 = SUSUILog();
        v49 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v50;
          v17 = v49;
          sub_2544(v48);
          _os_log_impl(&dword_0, v16, v17, "Showing the install alert if possible", v48, 2u);
        }

        objc_storeStrong(&v50, 0);
        [a1[4] _showOrScheduleNextInstallAlert];
      }
    }
  }

  else
  {
    v47 = SUSUILog();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v47;
      v15 = v46;
      sub_2544(v45);
      _os_log_impl(&dword_0, v14, v15, "No download found at startup.", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v11 = [[SUSUISoftwareUpdateAlertModel alloc] initWithDefaults:*(a1[4] + 17)];
    v12 = a1[4];
    v13 = v12[6];
    v12[6] = v11;

    [*(a1[4] + 6) setDelegate:a1[4]];
    [*(a1[4] + 6) resetTransientDownloadState];
  }

  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_23504(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_23554(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_235D0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (!location[0] || v7)
  {
    v6[0] = SUSUILog();
    if (os_log_type_enabled(v6[0], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v3 = v7;
      }

      else
      {
        v3 = @"nil";
      }

      sub_1FCC(v9, v3);
      _os_log_impl(&dword_0, v6[0], OS_LOG_TYPE_DEFAULT, "Error creating autoInstallOperation: %@", v9, 0xCu);
    }

    objc_storeStrong(v6, 0);
    [a1[4] _showOrScheduleNextInstallAlert];
  }

  else
  {
    [a1[4] _setupAutoUpdate:location[0] withPasscodePolicy:1];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_23BC8(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_2417C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] installTonightWithOperation:location[0] options:0];
  objc_storeStrong(location, 0);
}

void sub_249E0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_24A68(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  if (*(a1 + 32))
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_24C64(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = SUSUILog();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v13, location[0]);
      _os_log_impl(&dword_0, v9[0], v8, "Got new auto install forecast: (%@)", v13, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    v7 = SUSUILog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v12, v10);
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Failed getting auto install forecast: %{public}@", v12, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  v3 = (a1[4] + 16);
  v4 = [location[0] copy];
  (*v3)();

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_24F58(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v7[0] = SUSUILog();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v11, location[0]);
      _os_log_impl(&dword_0, v7[0], v6, "Got new auto install operation: (%p)", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v10, v8);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create auto install operation: %{public}@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

id *sub_25668(id *result)
{
  v1 = result;
  if (result[4] == *(result[5] + 12))
  {
    if ((*(result[5] + 57) & 1) != 0 && ([result[4] isUILocked] & 1) == 0)
    {
      [v1[5] _realertWithStrategy:3 andReason:@"UI unlocked"];
    }

    return [*(v1[5] + 10) updateAllAlertLockState:{objc_msgSend(v1[4], "isUILocked")}];
  }

  return result;
}

void sub_25840(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  if (*(a1 + 32) == *(*(a1 + 40) + 88))
  {
    v16 = [*(a1 + 32) isHomeScreenForeground];
    if (*(*(a1 + 40) + 56) & 1) != 0 && (v16)
    {
      [*(a1 + 40) _realertWithStrategy:3 andReason:@"Homescreen activated"];
    }

    if (v16)
    {
      queue = *(*(a1 + 40) + 232);
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_25A50;
      v14 = &unk_5CCB0;
      v15 = *(a1 + 40);
      dispatch_async(queue, &v10);
      objc_storeStrong(&v15, 0);
    }

    if (v16 & 1) != 0 || ([*(a1 + 40) settingsForeground])
    {
      v1 = *(*(a1 + 40) + 232);
      v4 = _NSConcreteStackBlock;
      v5 = -1073741824;
      v6 = 0;
      v7 = sub_25D78;
      v8 = &unk_5CCB0;
      v9 = *(a1 + 40);
      dispatch_async(v1, &v4);
      objc_storeStrong(&v9, 0);
    }
  }
}

id sub_25A50(uint64_t a1)
{
  v24 = a1;
  v23 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [*(*(a1 + 32) + 216) allKeys];
  v11 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v7);
      oslog = SUSUILog();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v4 = type;
        sub_1FCC(v25, v22);
        _os_log_impl(&dword_0, log, v4, "Running homescreen block %@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v18 = [*(*(a1 + 32) + 216) objectForKey:v22];
      queue = *(*(a1 + 32) + 24);
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_25D3C;
      v16 = &unk_60428;
      v17 = v18;
      dispatch_async(queue, &v12);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  return [*(*(a1 + 32) + 216) removeAllObjects];
}

id sub_25D78(uint64_t a1)
{
  v24 = a1;
  v23 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [*(*(a1 + 32) + 224) allKeys];
  v11 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v7);
      oslog = SUSUILog();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v4 = type;
        sub_1FCC(v25, v22);
        _os_log_impl(&dword_0, log, v4, "Running homescreenOrSettings block %@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v18 = [*(*(a1 + 32) + 224) objectForKey:v22];
      queue = *(*(a1 + 32) + 24);
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_26064;
      v16 = &unk_60428;
      v17 = v18;
      dispatch_async(queue, &v12);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  return [*(*(a1 + 32) + 224) removeAllObjects];
}

void sub_26EB8(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 24));
  v3 = [SUSUISoftwareUpdateDownloadFailedAlertItem alloc];
  v4 = [*(a1 + 40) descriptor];
  v9[0] = -[SUSUISoftwareUpdateDownloadFailedAlertItem initWithDescriptor:softwareUpdateController:fromSettings:](v3, "initWithDescriptor:softwareUpdateController:fromSettings:", v4, *(a1 + 32), [*(a1 + 32) settingsForeground]);

  [v9[0] setError:*(a1 + 48)];
  location = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    log = location;
    type = v7;
    sub_2544(v6);
    _os_log_impl(&dword_0, log, type, "Presenting download failure alert", v6, 2u);
  }

  objc_storeStrong(&location, 0);
  [*(*(a1 + 32) + 80) presentAlert:v9[0] animated:1];
  if ((*(*(a1 + 32) + 184) & 1) == 0)
  {
    [*(*(a1 + 32) + 88) removeObserver:*(a1 + 32)];
  }

  objc_storeStrong(v9, 0);
}

void sub_27058(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 224);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 setObject:? forKey:?];
}

void sub_274E8(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = a2;
  location[1] = a1;
  if ((a2 & 0x8000000) != 0)
  {
    location[0] = SUSUILog();
    v36 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      sub_186B0(v42, "[SUSUISoftwareUpdateController client:downloadDidFinish:withInstallPolicy:]_block_invoke");
      _os_log_error_impl(&dword_0, location[0], v36, "%s: update is no longer installable...", v42, 0xCu);
    }

    objc_storeStrong(location, 0);
    v11 = *(a1 + 32);
    v12 = [v11 _stringForInstallNotAllowableReason:0x8000000];
    [v11 _resetStateForReason:?];
  }

  else
  {
    [*(a1 + 32) setUpdateToInstall:*(a1 + 40)];
    [*(a1 + 32) _setInstallPolicy:*(a1 + 48)];
    v35 = (v38 & 0x2000000) == 0x2000000;
    if ((v38 & 0x2000000) == 0x2000000)
    {
      v34 = SUSUILog();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v41, "[SUSUISoftwareUpdateController client:downloadDidFinish:withInstallPolicy:]_block_invoke");
        _os_log_impl(&dword_0, v34, v33, "%s: installation is in progress", v41, 0xCu);
      }

      objc_storeStrong(&v34, 0);
    }

    else
    {
      [*(*(a1 + 32) + 48) setCurrentInstallationPolicy:*(a1 + 48) forReason:@"Download finished; policy associated with download"];
      [*(*(a1 + 32) + 48) didFinishDownloading:*(a1 + 40)];
      v32 = [*(*(a1 + 32) + 48) alertFlow];
      v31 = SUSUILog();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v31;
        v9 = v30;
        v10 = SUSUIStringForInstallAlertFlow(v32);
        v29 = v10;
        sub_1FCC(v40, v29);
        _os_log_impl(&dword_0, v8, v9, "downloadDidFinish: current alertflow = %@", v40, 0xCu);

        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v31, 0);
      if (v32 == &dword_0 + 2)
      {
        [*(a1 + 32) _showNextInstallAlertWithReasons:v38 orScheduleIfNecessary:1];
      }

      else if (v32 == &dword_4 + 1)
      {
        v7 = *(*(a1 + 32) + 16);
        v23 = _NSConcreteStackBlock;
        v24 = -1073741824;
        v25 = 0;
        v26 = sub_27AB4;
        v27 = &unk_60310;
        v28 = *(a1 + 32);
        [v7 currentAutoInstallOperation:1 withResult:&v23];
        objc_storeStrong(&v28, 0);
      }

      else if (v32 == &dword_0 + 3)
      {
        v6 = *(*(a1 + 32) + 16);
        v17 = _NSConcreteStackBlock;
        v18 = -1073741824;
        v19 = 0;
        v20 = sub_27B40;
        v21 = &unk_60310;
        v22 = *(a1 + 32);
        [v6 currentAutoInstallOperation:0 withResult:&v17];
        objc_storeStrong(&v22, 0);
      }

      else
      {
        [*(a1 + 32) _realertWithStrategy:1 andReason:@"Download completed successfully."];
      }

      oslog = SUSUILog();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog;
        v5 = v15;
        sub_2544(v14);
        _os_log_impl(&dword_0, v4, v5, "[Settings Badge] Download complete... badging settings", v14, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) descriptor];
      [v2 toggleSettingsBadge:1 update:?];
    }
  }
}

void sub_27AB4(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] _setupAutoUpdate:location[0] withPasscodePolicy:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_27B40(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if ([location[0] _isEffectivelyScheduled])
  {
    [a1[4] _doInstallTonight:location[0] consent:1];
  }

  else
  {
    [a1[4] _realertWithStrategy:1 andReason:@"Download completed successfully."];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

id sub_289F4(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "Pallet mode timer elapsed.  Rebooting.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return [a1[4] reboot:{objc_msgSend(*(a1[4] + 8), "installDark")}];
}

void sub_29118(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  if (!location[0] || v12)
  {
    v8 = SUSUILog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v3 = v12;
      }

      else
      {
        v3 = @"nil";
      }

      sub_1FCC(v14, v3);
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Error creating autoInstallOperation: %@", v14, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    v11[0] = SUSUILog();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v11[0];
      type = v10;
      sub_2544(v9);
      _os_log_impl(&dword_0, log, type, "Setting up auto update for downloaded update", v9, 2u);
    }

    objc_storeStrong(v11, 0);
    [a1[4] _setupAutoUpdate:location[0] withPasscodePolicy:1];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_29308(id a1, SUAutoInstallOperation *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  if (v15)
  {
    v14[0] = SUSUILog();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
    {
      if (v15)
      {
        v5 = v15;
      }

      else
      {
        v5 = @"nil";
      }

      sub_1FCC(v18, v5);
      _os_log_impl(&dword_0, v14[0], v13, "Error retrieving autoInstallOperation: %@", v18, 0xCu);
    }

    objc_storeStrong(v14, 0);
  }

  else if (location[0])
  {
    v12 = SUSUILog();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v17, location[0]);
      _os_log_impl(&dword_0, v12, v11, "Found autoInstallOperation:%@, canceling it", v17, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    [location[0] cancel];
  }

  else
  {
    oslog = SUSUILog();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v9;
      sub_2544(v8);
      _os_log_impl(&dword_0, v3, v4, "No autoInstallOperation", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_296CC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  if (!location[0] || v12)
  {
    v8 = SUSUILog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v3 = v12;
      }

      else
      {
        v3 = @"nil";
      }

      sub_1FCC(v14, v3);
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Error creating autoInstallOperation: %@", v14, 0xCu);
    }

    objc_storeStrong(&v8, 0);
    [a1[4] _realertWithStrategy:6 andReason:@"Managed Install request received"];
  }

  else
  {
    v11[0] = SUSUILog();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v11[0];
      type = v10;
      sub_2544(v9);
      _os_log_impl(&dword_0, log, type, "Setting up auto update for managed install request", v9, 2u);
    }

    objc_storeStrong(v11, 0);
    [a1[4] _setupAutoUpdate:location[0] withPasscodePolicy:2];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_29E04(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

void sub_29E74(uint64_t a1, char a2, id obj)
{
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  if (*(a1 + 48) & 1) == 0 || (v9)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v11, "[SUSUISoftwareUpdateController client:presentingRecommendedUpdate:shouldPresent:]_block_invoke");
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: Not showing recommended update UI due to update still downloading", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(*(a1 + 40) + 80) dismissAlertsOfClass:objc_opt_class() animated:1];
  }

  else
  {
    v7[0] = SUSUILog();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v12, "[SUSUISoftwareUpdateController client:presentingRecommendedUpdate:shouldPresent:]_block_invoke");
      _os_log_impl(&dword_0, v7[0], v6, "%s: Showing recommended update UI", v12, 0xCu);
    }

    objc_storeStrong(v7, 0);
    v5 = [[SUSUISoftwareUpdateRecommendedAvailableAlertItem alloc] initWithDescriptor:*(a1 + 32) softwareUpdateController:*(a1 + 40)];
    [*(*(a1 + 40) + 80) presentAlert:v5 animated:1];
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_2A2E0(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (!location[0] || v6)
  {
    oslog[0] = SUSUILog();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_195C(v8, location[0], v6);
      _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to get the auto install operation %@, error %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    [(objc_class *)a1[4].isa _doInstallTonight:location[0] consent:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_2A59C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_2A738(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_2AF9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_2B608(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = a1;
  v5 = [*(a1 + 32) _showNextInstallAlertWithReasons:a2 orScheduleIfNecessary:0 withInstallOptions:*(a1 + 40)];
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    sub_23504(v9, *(a1 + 48), v2);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Auto install operation (%p) is ready to install, and attempting: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }
}

id sub_2BC48(uint64_t a1)
{
  v1 = [[_SUSUIPostUpdateAlertController alloc] initWithLayoutStateMonitor:*(*(a1 + 32) + 88) alertPresentationManager:*(*(a1 + 32) + 80)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = v1;

  return [*(*(a1 + 32) + 120) startRunning];
}

void sub_2D388(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = SUSUILog();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v8, v6);
      _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "Error creating auto install operation: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  if (location[0])
  {
    [(objc_class *)a1[4].isa _setupAutoUpdate:location[0] withPasscodePolicy:a1[5].isa];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

id sub_2DAE8(uint64_t a1)
{
  [*(a1 + 32) _dismissInstallAlertsWithReason:@"Install authentication succeeded." includingInstallTonight:1 withRealertStrategy:0];
  [*(a1 + 32) _dismissInstallFailureAlertsWithoutRepop];
  v3 = *(a1 + 56);
  if (v3 && (v3 - 1) <= 1)
  {
    return [*(a1 + 32) _doInstallTonight:*(a1 + 48) consent:1];
  }

  else
  {
    return [*(a1 + 32) _doInstallNowWithOptions:*(a1 + 40)];
  }
}

uint64_t sub_2DBA8(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 64;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

uint64_t sub_2DC14(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  result = [*(a1 + 32) rescheduleIfAuthFails];
  if (result)
  {
    return [*(a1 + 40) _realertWithStrategy:1 andReason:@"Rescheduling on installation authentication failure because asked to via install options."];
  }

  return result;
}

void sub_2DE60(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    v4 = SUSUILog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v10, *(a1 + 32));
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Installation starting: options = %@", v10, 0xCu);
    }

    objc_storeStrong(&v4, 0);
    [*(a1 + 40) _setPendingInstallOptions:*(a1 + 32)];
  }

  else
  {
    oslog[0] = SUSUILog();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v11, location);
      _os_log_impl(&dword_0, oslog[0], type, "Unable to start the software update installation.  Something went wrong: %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_2E228(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  if (location[0])
  {
    if ([location[0] isExpired])
    {
      oslog = SUSUILog();
      v4 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_13774(v10, location[0]);
        _os_log_impl(&dword_0, oslog, v4, "A software update 'try tonight' auto install operation (%p) was attempted to be scheduled, but it was already expired.", v10, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 32) _autoInstallOperationDidExpire:location[0] withRepopStrategy:1 error:0];
    }

    else if ([location[0] isCanceled])
    {
      v3 = SUSUILog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        sub_13774(v9, location[0]);
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "A software update 'try tonight' auto install operation (%p) was attempted to be scheduled, but it was already cancelled.", v9, 0xCu);
      }

      objc_storeStrong(&v3, 0);
      [*(a1 + 32) _autoInstallOperationWasCancelled:location[0] withRepopStrategy:1];
    }

    else
    {
      [*(a1 + 32) _setTryTonightAutoInstallOperation:location[0] cancelIfNecessary:1];
      if (*(a1 + 40))
      {
        [*(*(a1 + 32) + 40) setAgreementStatus:1];
      }
    }
  }

  else
  {
    v7[0] = SUSUILog();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v11, location[0]);
      _os_log_impl(&dword_0, v7[0], v6, "A software update 'try tonight' auto install operation (%p) was attempted to be scheduled, but it was nil.", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
    [*(a1 + 32) _autoInstallOperationDidExpire:location[0] withRepopStrategy:1 error:0];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_2E938(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_2F8CC(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_2FFB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_30D44(uint64_t a1, void *a2, void *a3, id obj)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v12[3] = a1;
  queue = *(*(a1 + 32) + 24);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_30E6C;
  v10 = &unk_60610;
  v12[1] = v15;
  v12[2] = v14;
  v11 = location;
  objc_copyWeak(v12, (a1 + 40));
  dispatch_async(queue, &v6);
  objc_destroyWeak(v12);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

void sub_30E6C(uint64_t a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = SUSUILog();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v13[0];
    type = v12;
    v1 = *(a1 + 48);
    v8 = SUStringFromInstallationConstraints();
    v4 = v8;
    v11 = v4;
    v2 = *(a1 + 56);
    v7 = SUStringFromInstallationConstraints();
    v10 = v7;
    sub_2420(v14, v4, v10, *(a1 + 32));
    _os_log_impl(&dword_0, log, type, "Installation constraints did change - unsatisfied constraints: %@, changed constraints: %@, error: %@", v14, 0x20u);

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v13, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _installationConstraintsDidChange:*(a1 + 48) changed:*(a1 + 56) error:*(a1 + 32)];
}

uint64_t sub_31B6C(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t sub_31F7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t sub_31FF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_3228C(void *a1, char a2, id obj)
{
  v26 = a1;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v23 = a1;
  v21 = 0;
  v13 = 0;
  if ((v25 & 1) == 0)
  {
    v13 = 0;
    if (location)
    {
      v22 = [location domain];
      v21 = 1;
      v13 = [v22 isEqualToString:SUErrorDomain];
    }
  }

  if (v21)
  {
  }

  if (v13)
  {
    v11 = [location code];
    if (v11 == (&dword_0 + 3) || v11 == (&dword_8 + 3))
    {
      goto LABEL_14;
    }

    if (v11 == (&dword_C + 1))
    {
      *(*(a1[6] + 8) + 24) |= 0x4000000uLL;
      goto LABEL_22;
    }

    if (v11 == (&dword_C + 2))
    {
      *(*(a1[6] + 8) + 24) |= 0x2000000uLL;
      goto LABEL_22;
    }

    if (v11 == (&dword_10 + 2))
    {
LABEL_14:
      *(*(a1[6] + 8) + 24) |= 0x8000000uLL;
      goto LABEL_22;
    }

    if (v11 == &dword_14)
    {
      v10 = [location userInfo];
      v9 = [v10 objectForKey:kSUInstallationConstraintsUnmetKey];
      *(*(a1[6] + 8) + 24) |= [v9 unsignedIntegerValue];

      if ((*(*(a1[6] + 8) + 24) & 0x20) == 0x20 && ([*(a1[4] + 104) isPasscodeLocked] & 1) == 0)
      {
        v20 = SUSUILog();
        v19 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          log = v20;
          type = v19;
          sub_2544(v18);
          _os_log_impl(&dword_0, log, type, "[SoftwareUpdate] We were passcode locked, but now we're not. Reverting the passcode locked constraint.", v18, 2u);
        }

        objc_storeStrong(&v20, 0);
        *(*(a1[6] + 8) + 24) &= ~0x20uLL;
      }
    }
  }

LABEL_22:
  v17 = *(*(a1[6] + 8) + 24) == 0;
  v16 = 0;
  v5 = a1[4];
  v4 = *(*(a1[6] + 8) + 24);
  v6 = [v5 _allNonInstallableReasons];
  v15 = v16;
  [v5 _doesStateContainNonInstallableReasons:v4 reasonsToCheck:? outMatchingReasonsString:?];
  objc_storeStrong(&v16, v15);

  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_3273C(v27, v17, v16);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "SU is installable now? %d; reasons: %@", v27, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[5])
  {
    v3 = *(*(a1[6] + 8) + 24);
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_3273C(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void sub_32F90(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35[1] = a1;
  v35[0] = 0;
  v34 = [*(*(a1 + 32) + 208) notificationsDisabledByGlobalSettings];
  v22 = [*(*(a1 + 32) + 48) alertFlow];
  if (v22)
  {
    if (v22 == (&dword_0 + 1))
    {
      if (v34)
      {
        v33 = SUSUILog();
        v32 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          log = v33;
          type = v32;
          sub_2544(v31);
          _os_log_impl(&dword_0, log, type, "[AutoDownloadNotify] Disabled by global settings", v31, 2u);
        }

        objc_storeStrong(&v33, 0);
      }

      else
      {
        v2 = [SUSUISoftwareUpdateInstallAlertItem alloc];
        v3 = [(SUSUISoftwareUpdateInstallAlertItem *)v2 initWithDownload:*(*(a1 + 32) + 32) style:1 softwareUpdateController:*(a1 + 32) tryTonightInstallOperationForecast:location[0] installOptions:*(a1 + 40)];
        v4 = v35[0];
        v35[0] = v3;
      }
    }

    else if (v22 == (&dword_0 + 2))
    {
      v17 = +[SUSUIPreferences sharedInstance];
      v18 = 0;
      if (([(SUSUIPreferences *)v17 preventCountdownAlert]& 1) != 0)
      {
        v18 = _BSIsInternalInstall();
      }

      if (v18)
      {
        v30 = SUSUILog();
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          sub_186B0(v39, "[SUSUISoftwareUpdateController _showInstallAlertWithInstallOptions:]_block_invoke");
          _os_log_impl(&dword_0, v30, v29, "%s: User setting prevented presentation of SU installation countdown alert", v39, 0xCu);
        }

        objc_storeStrong(&v30, 0);
      }

      else
      {
        v5 = [SUSUISoftwareUpdateInstallAlertItem alloc];
        v6 = [(SUSUISoftwareUpdateInstallAlertItem *)v5 initWithDownload:*(*(a1 + 32) + 32) style:2 softwareUpdateController:*(a1 + 32) tryTonightInstallOperationForecast:location[0] installOptions:*(a1 + 40)];
        v7 = v35[0];
        v35[0] = v6;
      }
    }

    else if (v22 == (&dword_0 + 3))
    {
      v8 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:*(*(a1 + 32) + 32) style:2 softwareUpdateController:*(a1 + 32) tryTonightInstallOperationForecast:0 installOptions:*(a1 + 40)];
      v9 = v35[0];
      v35[0] = v8;
    }

    else if (v22 == &dword_4)
    {
      if (v34)
      {
        v28 = SUSUILog();
        v27 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v28;
          v16 = v27;
          sub_2544(v26);
          _os_log_impl(&dword_0, v15, v16, "[InstallWithoutCountdown] Disabled by global settings", v26, 2u);
        }

        objc_storeStrong(&v28, 0);
      }

      else
      {
        v10 = [SUSUISoftwareUpdateInstallAlertItem alloc];
        v11 = [(SUSUISoftwareUpdateInstallAlertItem *)v10 initWithDownload:*(*(a1 + 32) + 32) style:3 softwareUpdateController:*(a1 + 32) tryTonightInstallOperationForecast:location[0] installOptions:*(a1 + 40)];
        v12 = v35[0];
        v35[0] = v11;
      }
    }

    else if (v22 == (&dword_4 + 1))
    {
      v25 = SUSUILog();
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v38, "[SUSUISoftwareUpdateController _showInstallAlertWithInstallOptions:]_block_invoke");
        _os_log_impl(&dword_0, v25, v24, "%s: Showing countdown alert", v38, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      v13 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:*(*(a1 + 32) + 32) style:2 softwareUpdateController:*(a1 + 32) tryTonightInstallOperationForecast:0 installOptions:*(a1 + 40)];
      v14 = v35[0];
      v35[0] = v13;
    }
  }

  if (v35[0])
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_186F0(v37, "[SUSUISoftwareUpdateController _showInstallAlertWithInstallOptions:]_block_invoke", v35[0], location[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [Install Alert] Presenting %{public}@ with auto install operation forecast: %{public}@", v37, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    [*(*(a1 + 32) + 80) presentAlert:v35[0] animated:1];
    [*(*(a1 + 32) + 208) notifyAlertWasPresented];
    [*(a1 + 32) _registerForInstallationConstraintChangedNotifications];
  }

  objc_storeStrong(v35, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_33A88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

id sub_34C4C(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 24));
  [*(a1 + 32) _showSUAvailableAlertForDescriptor:*(a1 + 40)];
  location[0] = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "[Settings Badge] Badging settings because Auto download unknown to user failed to download", v5, 2u);
  }

  objc_storeStrong(location, 0);
  result = [*(a1 + 32) toggleSettingsBadge:1 update:*(a1 + 40)];
  if ((*(*(a1 + 32) + 184) & 1) == 0)
  {
    return [*(*(a1 + 32) + 88) removeObserver:*(a1 + 32)];
  }

  return result;
}

void sub_34D60(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 216);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 setObject:? forKey:?];
}

void sub_35064(uint64_t a1, char a2)
{
  v6 = a1;
  v5 = a2;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    sub_3273C(v7, *(a1 + 40) & 1, v2);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[Install Alert] Authentication success for tonight (%d)? %@", v7, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_35678(id a1, BOOL a2, NSError *a3)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"Success";
    }

    else
    {
      v3 = @"Failure";
    }

    sub_195C(v9, v3, location);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[Rollback] Purge result: %@ Error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_35DAC(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_36118(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  [*(a1 + 32) _rebootQuiet];
  v5[0] = objc_alloc_init(FBSSystemService);
  v1 = [[FBSShutdownOptions alloc] initWithReason:@"OTA Software Update"];
  v4 = v1;
  if (*(a1 + 40))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  [v1 setRebootType:v2];
  [v5[0] shutdownWithOptions:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
}

void sub_368D8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v44 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 48) & 1) == 1)
    {
      v1 = "BADGE";
    }

    else
    {
      v1 = "UNBADGE";
    }

    sub_186B0(v46, v1);
    _os_log_impl(&dword_0, location[0], v44, "[Settings Badge] Running on async queue to %s settings for software update", v46, 0xCu);
  }

  objc_storeStrong(location, 0);
  if (!*(*(a1 + 32) + 240))
  {
    v2 = +[SUSFollowUpController sharedController];
    v3 = *(a1 + 32);
    v4 = *(v3 + 240);
    *(v3 + 240) = v2;
  }

  v43 = [*(a1 + 32) _badgingQueue_isBadgedForSoftwareUpdate];
  if (v43)
  {
    v42 = SUSUILog();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v42;
      v19 = v41;
      sub_2544(v40);
      _os_log_impl(&dword_0, v18, v19, "[Settings Badge]: Currently badged with legacy mechanism. Switching to new flow. Toggling badge ON via CFU", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    [*(*(a1 + 32) + 240) postFollowUpOfType:0 withUpdate:*(a1 + 40) userInfo:0];
    v39 = SUSUILog();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v39;
      v17 = v38;
      sub_2544(v37);
      _os_log_impl(&dword_0, v16, v17, "[Settings Badge]: Toggling badge OFF via followup", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    [*(*(a1 + 32) + 240) dismissFollowUpType:0];
    [*(a1 + 32) _badgingQueue_savePreferencesBadgeEnabled:0];
    v36 = SUSUILog();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v36;
      v15 = v35;
      sub_2544(v34);
      _os_log_impl(&dword_0, v14, v15, "[Settings Badge]: Legacy badging mechanism is now disabled. Switch to new flow complete", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
  }

  v33 = +[UMUserManager sharedManager];
  v5 = *(a1 + 48);
  v31 = 0;
  v13 = 0;
  if (v5)
  {
    v12 = 0;
    if ([v33 isMultiUser])
    {
      v32 = [v33 currentUser];
      v31 = 1;
      v12 = [v32 userType] == &dword_0 + 1;
    }

    v13 = v12;
  }

  if (v31)
  {
  }

  if (v13)
  {
    v30 = SUSUILog();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v30;
      v11 = v29;
      sub_2544(v28);
      _os_log_impl(&dword_0, v10, v11, "[Settings Badge] Disallowing enabling of the SU badge in EDU Multi-User.", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v27 = 1;
  }

  else
  {
    if (*(a1 + 48))
    {
      v26 = SUSUILog();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v26;
        v9 = v25;
        sub_2544(v24);
        _os_log_impl(&dword_0, v8, v9, "[Settings Badge] Asking SUSFollowUpController to badge settings", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      [*(*(a1 + 32) + 240) postFollowUpOfType:0 withUpdate:*(a1 + 40) userInfo:0];
    }

    else
    {
      v23 = SUSUILog();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v23;
        v7 = v22;
        sub_2544(v21);
        _os_log_impl(&dword_0, v6, v7, "[Settings Badge] Asking SUSFollowUpController to unbadge settings", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      [*(*(a1 + 32) + 240) dismissFollowUpType:0];
    }

    v27 = 0;
  }

  objc_storeStrong(&v33, 0);
}

void sub_37F10(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILog();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v11, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], v9, "[%{public}@] Opens the Software Update pane to install recommended update", v11, 0xCu);
  }

  objc_storeStrong(location, 0);
  v1 = [SUAnalyticsEvent alloc];
  v8 = [v1 initWithEventName:kSUAnalyticsUsageEventName];
  [v8 setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:kSURecommendedAvailableAlertLearnMoreTapped];
  v2 = [*(a1 + 40) softwareUpdateController];
  [v2 submitSUAnalyticsEvent:v8];

  v3 = [SUSUIFullScreenScheduleUpdateAlert alloc];
  v4 = [*(a1 + 40) descriptor];
  v7 = [SUSUIFullScreenScheduleUpdateAlert initWithDescriptor:v3 completionBlock:"initWithDescriptor:completionBlock:"];

  v5 = [*(a1 + 40) softwareUpdateController];
  [v5 presentFullScreenAlert:v7 completion:0];

  [*(a1 + 40) dismissAlert];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
}

id sub_3813C()
{
  predicate = &unk_6F938;
  block = 0;
  objc_storeStrong(&block, &stru_60A70);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F930;

  return v0;
}

void sub_381C4(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F930;
  qword_6F930 = v1;
}

void sub_38648(uint64_t a1)
{
  v40[2] = a1;
  v40[1] = a1;
  v40[0] = *(*(a1 + 32) + 16);
  responseFlags = 0;
  v38 = CFUserNotificationReceiveResponse(*(*(a1 + 32) + 24), 0.0, &responseFlags);
  if (v38)
  {
    location = SUSUILog();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v44, v38);
      _os_log_impl(&dword_0, location, v36, "failed to get response from CFUserNotification: %ld", v44, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v35 = 1;
  }

  else if ((responseFlags & 3) == 3)
  {
    v34 = SUSUILog();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v43, *(*(a1 + 32) + 8));
      _os_log_impl(&dword_0, v34, v33, "notification was canceled (alert = %@)", v43, 0xCu);
    }

    objc_storeStrong(&v34, 0);
    [*(*(a1 + 32) + 8) alertWasCanceled];
    v35 = 1;
  }

  else
  {
    v32 = CFUserNotificationGetResponseDictionary(*(*(a1 + 32) + 24));
    if (v32)
    {
      v29 = [v32 objectForKeyedSubscript:SBSUserNotificationButtonDefinitionResponseIndexKey];
      if (v29)
      {
        v25 = SUSUILog();
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          sub_13774(v41, [v29 unsignedIntegerValue]);
          _os_log_impl(&dword_0, v25, v24, "User clicked button index %ld", v41, 0xCu);
        }

        objc_storeStrong(&v25, 0);
        v7 = [v29 unsignedIntegerValue];
        if (v7 >= [*(a1 + 40) count])
        {
          v23 = SUSUILog();
          v22 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v5 = v23;
            v6 = v22;
            sub_2544(v21);
            _os_log_impl(&dword_0, v5, v6, "index does not match any button", v21, 2u);
          }

          objc_storeStrong(&v23, 0);
          v35 = 1;
        }

        else
        {
          v1 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v29, "integerValue")}];
          v20 = v1;
          if (v1)
          {
            queue = v40[0];
            v11 = _NSConcreteStackBlock;
            v12 = -1073741824;
            v13 = 0;
            v14 = sub_38C78;
            v15 = &unk_60428;
            v16 = v20;
            dispatch_async(queue, &v11);
            objc_storeStrong(&v16, 0);
            v35 = 0;
          }

          else
          {
            oslog = SUSUILog();
            v18 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v3 = oslog;
              v4 = v18;
              sub_2544(v17);
              _os_log_impl(&dword_0, v3, v4, "No action registered for button", v17, 2u);
            }

            objc_storeStrong(&oslog, 0);
            v35 = 1;
          }

          objc_storeStrong(&v20, 0);
        }
      }

      else
      {
        v28 = SUSUILog();
        v27 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v28;
          v9 = v27;
          sub_2544(v26);
          _os_log_impl(&dword_0, v8, v9, "failed to get button index from response dictionary", v26, 2u);
        }

        objc_storeStrong(&v28, 0);
        v35 = 1;
      }

      objc_storeStrong(&v29, 0);
    }

    else
    {
      v31 = SUSUILog();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        sub_13774(v42, v38);
        _os_log_impl(&dword_0, v31, v30, "failed to get response dictionary from CFUserNotification: %ld", v42, 0xCu);
      }

      objc_storeStrong(&v31, 0);
      v35 = 1;
    }

    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(v40, 0);
}

uint64_t sub_3B584(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  *(result + 36) = 64;
  *(result + 37) = 8;
  *(result + 38) = a7;
  return result;
}

uint64_t sub_3B848(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_3CAD8(id a1)
{
  v1 = objc_alloc_init(SUSUIControllerServer);
  v2 = qword_6F940;
  qword_6F940 = v1;
}

id sub_3CC18(uint64_t a1)
{
  v9 = +[SUSUISoftwareUpdateController sharedInstance];
  v1 = [(SUSUISoftwareUpdateController *)v9 clientQueue];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = [NSXPCListener alloc];
  v5 = [v4 initWithMachServiceName:SUSUIControllerConnectionName];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  [*(*(a1 + 32) + 8) setDelegate:*(a1 + 32)];
  return [*(*(a1 + 32) + 8) resume];
}

void sub_3D3D8(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] _shouldShowPostUpdateAlert])
  {
    if (([a1[4] _otaFailed] & 1) == 0)
    {
      [a1[4] _registerForBuddyNotifications];
      if ([a1[4] _inSetupModeProvider])
      {
        location[0] = SUSUILogPostUpdateAlert();
        v7 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
        {
          log = location[0];
          type = v7;
          sub_2544(v6);
          _os_log_impl(&dword_0, log, type, "waiting for 'setup-finished'...", v6, 2u);
        }

        objc_storeStrong(location, 0);
      }

      else
      {
        [a1[4] _unregisterForBuddyNotifications];
        [*(a1[4] + 2) addObserver:a1[4]];
        *(a1[4] + 24) = [*(a1[4] + 2) isUILocked];
        oslog = SUSUILogPostUpdateAlert();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1[4] + 24))
          {
            v1 = @"YES";
          }

          else
          {
            v1 = @"NO";
          }

          sub_4B94(v9, v1);
          _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Initialized from OTA SoftwareUpdate? YES, UILocked? %{public}@", v9, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (*(a1[4] + 24))
        {
          [a1[4] _showStartupAlertItemForReason:@"Initialized - from OTA update"];
        }
      }
    }
  }

  else
  {
    [a1[4] _dismissAlertForReason:@"Initialized - not from OTA SoftwareUpdate"];
  }
}

void sub_3D894(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILogPostUpdateAlert();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v4, *(a1 + 32));
    _os_log_impl(&dword_0, location[0], OS_LOG_TYPE_DEFAULT, "Clearing OTA Reboot Alert State with reason: %@", v4, 0xCu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) _unregisterForBuddyNotifications];
  [*(*(a1 + 40) + 16) removeObserver:*(a1 + 40)];
  objc_storeStrong((*(a1 + 40) + 16), 0);
  if ([*(a1 + 40) _shouldShowPostUpdateAlert])
  {
    v1 = +[SUSUIPreferences sharedInstance];
    [(SUSUIPreferences *)v1 setNeedsAlertPresentationAfterOTAUpdate:0];
  }
}

void sub_3DAD4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if ((*(*(a1 + 32) + 24) & 1) != (*(a1 + 40) & 1))
  {
    *(*(a1 + 32) + 24) = *(a1 + 40) & 1;
    location[0] = SUSUILogPostUpdateAlert();
    v4 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      sub_1FCC(v7, v1);
      _os_log_impl(&dword_0, location[0], v4, "UI lock state changed: isUILocked=%@", v7, 0xCu);
    }

    objc_storeStrong(location, 0);
    if ([*(a1 + 32) dismissed])
    {
      oslog = SUSUILogPostUpdateAlert();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_3DCFC(v6, "[_SUSUIPostUpdateAlertController _uiLockStateChanged:]_block_invoke");
        _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%{public}s] Already dismissed", v6, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    else if (*(*(a1 + 32) + 24))
    {
      [*(a1 + 32) _showStartupAlertItemForReason:@"UILocked"];
    }

    else
    {
      [*(a1 + 32) _dismissAlertForReason:@"UIUnlocked"];
    }
  }
}

uint64_t sub_3DCFC(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_3DDF8(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] dismissed])
  {
    location[0] = SUSUILogPostUpdateAlert();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_3DCFC(v9, "[_SUSUIPostUpdateAlertController _setupAssistantFinished]_block_invoke");
      _os_log_impl(&dword_0, location[0], v7, "[%{public}s] Already dismissed", v9, 0xCu);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v6 = SUSUILogPostUpdateAlert();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v1 = v6;
      v2 = v5;
      sub_2544(v4);
      _os_log_impl(&dword_0, v1, v2, "setup assistant finished (didn't get 'launched'); will show the post update alert", v4, 2u);
    }

    objc_storeStrong(&v6, 0);
    [*(a1[4] + 2) addObserver:a1[4]];
    *(a1[4] + 24) = [*(a1[4] + 2) isUILocked];
    if (*(a1[4] + 24))
    {
      [a1[4] _showStartupAlertItemForReason:@"Setup completed"];
    }
  }
}

id sub_3E08C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILogPostUpdateAlert();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "setup assistant launched", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return [a1[4] _dismissAlertForReason:@"Not showing if setup launched"];
}

void sub_3EB34(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *location)
{
  *(v16 - 208) = a1;
  *(v16 - 212) = a2;
  objc_destroyWeak((v16 - 192));
  _Unwind_Resume(*(v16 - 208));
}

void sub_3EBB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteAlertAcknowledgedWithReason:@"UserTappedCloseButton"];
}

id sub_3EC00(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  [*(*(a1 + 32) + 8) dismissAlertsOfClass:objc_opt_class() animated:0];
  result = [*(*(a1 + 32) + 8) presentAlert:*(a1 + 40) animated:1];
  if ((result & 1) == 0)
  {
    location[0] = SUSUILogPostUpdateAlert();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v6;
      sub_2544(v5);
      _os_log_impl(&dword_0, log, type, "Failed to present the alert", v5, 2u);
    }

    objc_storeStrong(location, 0);
    return [*(a1 + 32) setShowingAlert:0];
  }

  return result;
}

void sub_40304(id a1)
{
  v1 = objc_alloc_init(SUSUIFollowUpPresenter);
  v2 = qword_6F958;
  qword_6F958 = v1;
}

void sub_405D4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1 + 32) _followUpItemForSUSUIFollowUp:*(a1 + 40)];
  if (location[0])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 16) postFollowUpItem:location[0] error:*(a1 + 56)];
  }

  if (*(a1 + 56))
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_195C(v4, location[0], **(a1 + 56));
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Error posting FollowUpItem: %@ Error: %@", v4, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_40894(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = 0;
  v2 = *(a1[4] + 16);
  v3 = a1[5];
  obj = 0;
  v5 = [v2 clearPendingFollowUpItemsWithUniqueIdentifiers:v3 error:&obj];
  objc_storeStrong(v8, obj);
  *(*(a1[6] + 8) + 24) = v5;
  if (v8[0])
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v9, v8[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Error clearing pending FollowUp Items: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v8, 0);
}

void sub_40AF0(void *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = 0;
  v1 = *(a1[4] + 16);
  obj = 0;
  v3 = [v1 clearPendingFollowUpItems:&obj];
  objc_storeStrong(v6, obj);
  *(*(a1[5] + 8) + 24) = v3;
  if (v6[0])
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v7, v6[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Error clearing pending FollowUp Items: %@", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v6, 0);
}

void sub_40D94(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = 0;
  v1 = *(a1[4] + 16);
  v16 = 0;
  v11 = [v1 pendingFollowUpItems:&v16];
  objc_storeStrong(v18, v16);
  v17 = v11;
  if (v18[0])
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v20, v18[0]);
      _os_log_impl(&dword_0, v15, v14, "Error fetching pending FollowUp Items: %@", v20, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  if (v17)
  {
    memset(__b, 0, sizeof(__b));
    obj = v17;
    v9 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v6);
        v2 = [v13 uniqueIdentifier];
        v3 = [v2 isEqualToString:a1[5]];

        if (v3)
        {
          break;
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
          if (!v7)
          {
            goto LABEL_14;
          }
        }
      }

      *(*(a1[6] + 8) + 24) = 1;
    }

LABEL_14:
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

id sub_41D38(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v4, *(a1 + 32));
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] Reboot Now action taken.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 40) reboot];
  return [*(a1 + 40) dismissAlert];
}

id sub_42050(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v4, *(a1 + 32));
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancel action taken.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 40) cancel];
  return [*(a1 + 40) dismissAlert];
}

id sub_422E4()
{
  predicate = &unk_6F970;
  block = 0;
  objc_storeStrong(&block, &stru_61AE0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F968;

  return v0;
}

void sub_4236C(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F968;
  qword_6F968 = v1;
}

id sub_42950(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSURL URLWithString:@"prefs:root=General&path=About/SW_VERSION_SPECIFIER"];
  [v2 activateDisplayWithURL:?];

  return [*(a1 + 32) dismissAlert];
}

id sub_42C48()
{
  predicate = &unk_6F980;
  block = 0;
  objc_storeStrong(&block, &stru_62110);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_6F978;

  return v0;
}

void sub_42CD0(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.SoftwareUpdateServicesUI.iOSPlugin", a1, a1];
  v2 = qword_6F978;
  qword_6F978 = v1;
}