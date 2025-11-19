UIColor *__cdecl sub_100001820(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlackColor];
  }
  v2 = ;

  return v2;
}

void sub_1000020E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_10000216C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUpDismissalTimer];
}

void sub_1000021AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUpDismissalTimer];
}

void sub_1000021EC(id a1)
{
  v1 = sharingHUDLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "viewDidDisappearHandler", v2, 2u);
  }
}

void sub_100002254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained bannerButtonDidTap];

  if (v4)
  {
    v4[2](v4, [*(a1 + 32) type]);
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 dismissBanner];
}

void sub_1000022E4(id *a1, void *a2)
{
  v3 = a2;
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "bannerDidDisappearHandler reason: %@", buf, 0xCu);
  }

  if ([v3 containsString:@"dismissOverlays"] && (objc_msgSend(a1[4], "bannerDismissed") & 1) == 0)
  {
    v9 = [a1[4] bannerPresentable];
    v10 = [v9 model];
    v11 = [v10 type];

    v12 = sharingHUDLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [SFHUDBannerModel descriptionForType:v11];
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Banner of type %@ not dismissed yet.", buf, 0xCu);
    }

    v14 = dispatch_time(0, 100000000);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002580;
    v15[3] = &unk_100014498;
    v16[1] = v11;
    objc_copyWeak(v16, a1 + 6);
    dispatch_after(v14, &_dispatch_main_q, v15);
    objc_destroyWeak(v16);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained setBannerPresentable:0];

    v6 = objc_loadWeakRetained(a1 + 6);
    v7 = [v6 bannerDidDismissHandler];

    v8 = sharingHUDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "calling bannerDidDismissHandler", buf, 2u);
    }

    if (v7)
    {
      (v7)[2](v7, [a1[5] type]);
    }
  }
}

void sub_100002580(uint64_t a1)
{
  v2 = sharingHUDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [SFHUDBannerModel descriptionForType:*(a1 + 40)];
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "re-posting banner of type %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bannerSource];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 bannerPresentable];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 bannerUserInfo];
  v12 = 0;
  [v5 postPresentable:v7 options:1 userInfo:v9 error:&v12];
  v10 = v12;

  if (v10)
  {
    v11 = sharingHUDLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000092FC(a1);
    }
  }
}

id sub_100002B04(uint64_t a1)
{
  v2 = sharingHUDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissal timer fired. Dismissing banner", v4, 2u);
  }

  return [*(a1 + 32) dismissBanner];
}

void sub_100002D10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id createNewHUDTransaction()
{
  v0 = os_transaction_create();

  return v0;
}

void sub_10000386C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v26 - 120));
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_1000038FC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bannerDismissedWithType:a2];
}

void sub_10000394C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bannerButtonTappedWithType:a2];
}

void sub_10000399C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003A54;
  v5[3] = &unk_100014470;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100003A54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained displayBannerWithModel:*(a1 + 32)];
}

void sub_100003AA4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B34;
  block[3] = &unk_100014408;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100003B34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePairedUnlockBannerToUnlocked];
}

void sub_100003B74(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C04;
  block[3] = &unk_100014408;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100003C04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissBanner];
}

void sub_100003C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained[14] screenOn];
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "no";
    if (v2)
    {
      v4 = "yes";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "screenOnChangedHandler - %s", &v6, 0xCu);
  }

  if ((v2 & 1) == 0)
  {
    v5 = WeakRetained[2];
    WeakRetained[2] = 0;

    [WeakRetained releaseHUDTransaction];
  }
}

void sub_100003D38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = b332_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FBSInterfaceOrientationChangeHandler", buf, 2u);
  }

  v5 = v3;
  v6 = v5;
  if (v5)
  {
    *(*(a1 + 32) + 72) = [v5 orientation];
    [v6 duration];
    *(*(a1 + 32) + 88) = v7;
    *(*(a1 + 32) + 80) = [v6 rotationDirection];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003E54;
    block[3] = &unk_1000144E8;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100003E54(uint64_t a1)
{
  v2 = b332_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 72);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "set orientation (%li)...", &v10, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v5 _setRotatableViewOrientation:*(v4 + 72) duration:0 force:*(v4 + 88)];
    v6 = b332_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*(a1 + 32) + 16) interfaceOrientation];
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "orientation (%li)...", &v10, 0xCu);
    }

    v8 = b332_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(*(a1 + 32) + 16) _windowInterfaceOrientation];
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "window orientation (%li)...", &v10, 0xCu);
    }
  }
}

void sub_100004128(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000041A0;
  block[3] = &unk_1000144E8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100004608()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10001C288;
  v7 = qword_10001C288;
  if (!qword_10001C288)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100005CD4;
    v3[3] = &unk_1000145E8;
    v3[4] = &v4;
    sub_100005CD4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000046D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000046E8(id a1)
{
  v1 = b332_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "showChargingStatus - present completion.", v2, 2u);
  }
}

void sub_10000516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000054CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = b332_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "releaseHUDTransaction - Released %p", &v3, 0xCu);
  }
}

void sub_100005CD4(uint64_t a1)
{
  sub_100005D2C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PNPPairingViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001C288 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100009490();
    sub_100005D2C();
  }
}

void sub_100005D2C()
{
  v1[0] = 0;
  if (!qword_10001C290)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100005E28;
    v1[4] = &unk_100014620;
    v1[5] = v1;
    v2 = off_100014608;
    v3 = 0;
    qword_10001C290 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10001C290)
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

uint64_t sub_100005E28(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001C290 = result;
  return result;
}

Class sub_100005E9C(uint64_t a1)
{
  sub_100005D2C();
  result = objc_getClass("PNPDeviceState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001C298 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000094B8();
    return sub_100005EF4(v3);
  }

  return result;
}

Class sub_100005EF4(uint64_t a1)
{
  sub_100005D2C();
  result = objc_getClass("PNPLockScreenViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001C2A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000094E0();
    return sub_100005F4C(v3);
  }

  return result;
}

SHUDPillViewController *sub_100005F4C(uint64_t a1)
{
  sub_100005D2C();
  result = objc_getClass("PNPAirplaneModeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001C2A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100009508();
    return [(SHUDPillViewController *)v3 initWithNeedsButton:v4, v5];
  }

  return result;
}

id sub_100006378()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10001C2B0;
  v7 = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100008758;
    v3[3] = &unk_1000145E8;
    v3[4] = &v4;
    sub_100008758(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100006440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000068F4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10001C2C0;
  v7 = qword_10001C2C0;
  if (!qword_10001C2C0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100008920;
    v3[3] = &unk_1000145E8;
    v3[4] = &v4;
    sub_100008920(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000069BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008758(uint64_t a1)
{
  sub_1000087B0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PLPillContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001C2B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100009530();
    sub_1000087B0();
  }
}

void sub_1000087B0()
{
  v1[0] = 0;
  if (!qword_10001C2B8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000088AC;
    v1[4] = &unk_100014620;
    v1[5] = v1;
    v2 = off_100014640;
    v3 = 0;
    qword_10001C2B8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10001C2B8)
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

uint64_t sub_1000088AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001C2B8 = result;
  return result;
}

Class sub_100008920(uint64_t a1)
{
  sub_1000087B0();
  result = objc_getClass("PLPillView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001C2C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100009558();
    return main(v3, v4, v5);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = sharingHUDLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SharingHUDService - main", v17, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = sharingHUDLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SharingHUDService - entered @autoreleasepool", v17, 2u);
  }

  _set_user_dir_suffix();
  SetAppFixedPriority();
  v8 = createNewHUDTransaction();
  v9 = gInitialTransaction;
  gInitialTransaction = v8;

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = UIApplicationMain(argc, argv, v11, v13);

  v15 = sharingHUDLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SharingHUDService - UIApplicationMain exited: %i", v17, 8u);
  }

  objc_autoreleasePoolPop(v6);
  return v14;
}

void sub_100008C4C(id a1)
{
  v1 = sharingHUDLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection invalidated", v2, 2u);
  }
}

void sub_100008CB4(id a1)
{
  v1 = sharingHUDLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v2, 2u);
  }
}

void sub_100008D78(id a1, NSError *a2)
{
  v2 = sharingHUDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100009580(v2);
  }
}

void sub_100008EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008ECC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009208(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 type];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid banner type %ld", &v3, 0xCu);
}

void sub_100009294(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not post banner of type %@: %@", buf, 0x16u);
}

void sub_1000092FC(uint64_t a1)
{
  v1 = [SFHUDBannerModel descriptionForType:*(a1 + 40)];
  sub_100002CF8();
  sub_100002D10(&_mh_execute_header, v2, v3, "Could not post banner of type %@: %@", v4, v5, v6, v7, v8);
}

void sub_10000939C(uint64_t a1)
{
  v1 = [SFHUDBannerModel descriptionForType:a1];
  sub_100002CF8();
  sub_100002D10(&_mh_execute_header, v2, v3, "Could not dismiss banner of type %@: %@", v4, v5, v6, v7, v8);
}