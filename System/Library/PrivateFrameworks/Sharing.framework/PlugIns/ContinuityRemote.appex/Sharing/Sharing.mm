void CKTransitionToViewControllerEx(void *a1, void *a2, void *a3, char a4)
{
  v24 = a1;
  v7 = a2;
  v8 = a3;
  if ((a4 & 1) == 0)
  {
    v9 = +[CATransition animation];
    [v9 setDuration:0.5];
    [v9 setType:kCATransitionFade];
    v10 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v9 setTimingFunction:v10];

    v11 = [v24 view];
    v12 = [v11 layer];
    [v12 addAnimation:v9 forKey:0];

    v13 = [v7 view];
    v14 = [v13 layer];
    [v14 addAnimation:v9 forKey:0];
  }

  v15 = [v24 viewControllers];
  v16 = [v15 containsObject:v7];

  if (v16)
  {
    v17 = [v24 popToViewController:v7 animated:0];
  }

  else
  {
    [v24 pushViewController:v7 animated:0];
  }

  v18 = [v7 view];
  [v18 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v20 = v19;

  v21 = [v24 view];
  [v21 size];
  v23 = v22;

  [v7 setPreferredContentSize:{v23, v20}];
  [v24 setPreferredContentSize:{v23, v20}];
  [v8 setPreferredContentSize:{v23, v20}];
}

void sub_10000219C(uint64_t a1)
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_1000059E4();
  }

  v2 = [*(a1 + 32) extensionContext];
  [v2 dismissNotificationContentExtension];

  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    v6 = v3;
    dispatch_source_cancel(v6);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }
}

void sub_100002390(id a1)
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005A6C();
  }
}

void sub_1000023DC(id a1)
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005A88();
  }
}

void sub_100002430(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (!a2)
  {
    *(v6 + 32) = 0;
    [*(*(a1 + 32) + 80) showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    v5[2](v5, 0);
    goto LABEL_6;
  }

  *(v6 + 32) = 1;
  v7 = *(a1 + 32);
  v8 = v7[10];
  if (!v8)
  {
    v9 = [v7 extensionContext];
    [v9 dismissNotificationContentExtension];

    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002558;
  v10[3] = &unk_10000C348;
  v10[4] = v7;
  v11 = v5;
  [v8 _handlePairingSucceededWithCompletion:v10];

LABEL_6:
}

void sub_100002558(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) extensionContext];
  [v3 dismissNotificationContentExtension];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_1000025DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005AA4();
  }

  [*(*(a1 + 32) + 128) serverUserNotificationDidActivate:*(a1 + 40)];
}

void sub_100002670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (!v4[7])
  {
    [v4 showContinuityKeyboardUI];
    v3 = v5;
    v4 = *(a1 + 32);
  }

  [v4 _handleRemoteTextEvent:v3];
}

void sub_1000026E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (!v4[7])
  {
    [v4 showContinuityKeyboardUI];
    v3 = v5;
    v4 = *(a1 + 32);
  }

  [v4 _textSessionDidBegin:v3];
}

void sub_100002768(id a1, NSError *a2)
{
  if (a2)
  {
    if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
    {
      sub_100005AE4();
    }
  }

  else if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005B24();
  }

  _objc_release_x1();
}

void sub_100002818(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100005B40();
      v3 = v5;
    }
  }

  [*(*(a1 + 32) + 136) sendPayload:v3];
}

void sub_100002A24(uint64_t a1)
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005BB8();
  }

  *(*(a1 + 32) + 88) = 0;
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  if (v7)
  {
    CKTransitionToViewController(*(v6 + 64), v7, v6);
    v6 = *(a1 + 32);
    v8 = *(v6 + 48);
  }

  else
  {
    v8 = 0;
  }

  *(v6 + 48) = 0;
}

void sub_100002DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002DF8(uint64_t a1)
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005BF0();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_1000032E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000394C(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 8) testFlags];
  v3 = *(*(a1 + 40) + 8);
  if ((v2 & 4) != 0)
  {

    return [v3 showContinuityKeyboardUI];
  }

  else
  {

    return [v3 showPINEntryUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  }
}

id sub_100003F94(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v5, *(a1 + 40), 0.0);
  v2 = *(*(a1 + 32) + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

id sub_100003FF4(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v5, 0.0, 0.0);
  v2 = *(*(a1 + 32) + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

id sub_100004054(uint64_t a1, uint64_t a2)
{
  if (a2 && gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005DE0();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 showWithFlags:0 throttleSeconds:v4];
}

void sub_1000043E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004710(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [*(a1 + 40) isEqual:@"1234"];
  v3 = *(a1 + 48);
  if (v2)
  {

    return [v3 _handlePairingSucceededWithCompletion:0];
  }

  else
  {

    return [v3 showWithFlags:0x10000 throttleSeconds:0xFFFFFFFFLL];
  }
}

id sub_1000048B4(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 setAlpha:1.0];
}

uint64_t sub_100004910(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

Class sub_100004A30(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100011EF8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100004B74;
    v4[4] = &unk_10000C5A0;
    v4[5] = v4;
    v5 = off_10000C588;
    v6 = 0;
    qword_100011EF8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100011EF8)
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
  result = objc_getClass("_SFAppAutoFillPasswordViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100005EE4();
  }

  qword_100011EF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004B74(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011EF8 = result;
  return result;
}

Class sub_100004BE8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100011F08)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100004D2C;
    v4[4] = &unk_10000C5A0;
    v4[5] = v4;
    v5 = off_10000C5C0;
    v6 = 0;
    qword_100011F08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100011F08)
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
  result = objc_getClass("RTIInputSystemDataPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100005F0C();
  }

  qword_100011F00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004D2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011F08 = result;
  return result;
}

Class sub_100004DA0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100011F18)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100004EE4;
    v4[4] = &unk_10000C5A0;
    v4[5] = v4;
    v5 = off_10000C5D8;
    v6 = 0;
    qword_100011F18 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100011F18)
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
  result = objc_getClass("TVRPasscodeField");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100005F34();
  }

  qword_100011F10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004EE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011F18 = result;
  return result;
}

uint64_t sub_100004F88()
{

  return LogPrintF();
}

void sub_100005348()
{
  v0 = remote_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Cannot initialize session info, no device identifier", v1, 2u);
  }
}

void sub_10000592C(void *a1)
{
  v1 = [a1 deviceIdentifier];
  LogPrintF();
}

uint64_t sub_100005A00(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 <= 2)
  {
    v2 = *(&off_10000C5F0 + v1);
  }

  return LogPrintF();
}

void sub_100005B40()
{
  v0 = SFTextInputDataLogString();
  LogPrintF();
}

void sub_100005CEC()
{
  if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100004F88();
  }
}

void sub_100005FE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Caching rti source session: %@\n", &v2, 0xCu);
}