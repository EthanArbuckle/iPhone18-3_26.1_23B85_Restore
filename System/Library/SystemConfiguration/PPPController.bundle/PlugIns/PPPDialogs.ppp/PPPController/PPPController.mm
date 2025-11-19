uint64_t start(__CFBundle *a1)
{
  qword_8250 = a1;
  qword_8258 = CFBundleCopyBundleURL(a1);
  if (qword_8258)
  {
    CFRetain(qword_8250);
    add_options();
  }

  return 1;
}

void sub_708(uint64_t a1, uint64_t a2)
{
  if (a2 != 8 || !dword_8244)
  {
    untimeout();
  }

  timeout(sub_B5C);
}

uint64_t sub_788(const char *a1)
{
  if (byte_8240)
  {
    return 1;
  }

  else
  {
    return dialog_password(&username_ptr, 256, &new_passwd_ptr, 256, 2, a1);
  }
}

uint64_t sub_7C0(const char *a1)
{
  if (byte_8240)
  {
    return 1;
  }

  result = dialog_password(&username_ptr, 256, &passwd_ptr, 256, 1, a1);
  if (result)
  {
    strncpy(&user_ptr, &username_ptr, 0x100uLL);
    return 1;
  }

  return result;
}

uint64_t dialog_reminder_thread()
{
  v0 = pthread_self();
  if (pthread_detach(v0))
  {
    return 0;
  }

  v1 = 30.0;
  if (dword_8244 >= 300)
  {
    if (dword_8244 >= 0x258)
    {
      if (dword_8244 >= 0x4B0)
      {
        if (dword_8244 >= 0x708)
        {
          v3 = 240;
        }

        else
        {
          v3 = 180;
        }

        v1 = v3;
        goto LABEL_12;
      }

      v2 = 0x405E000000000000;
    }

    else
    {
      v2 = 0x404E000000000000;
    }

    v1 = *&v2;
  }

LABEL_12:
  v4 = 3;
  responseFlags = 3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = CFBundleCopyResourceURL(qword_8250, @"NetworkConnect.icns", 0, 0);
    if (v7)
    {
      v8 = v7;
      CFDictionaryAddValue(v6, kCFUserNotificationIconURLKey, v7);
      CFRelease(v8);
    }

    error = 0;
    CFDictionaryAddValue(v6, kCFUserNotificationLocalizationURLKey, qword_8258);
    if (dword_8248)
    {
      v9 = @"VPN Connection";
    }

    else
    {
      v9 = @"Network Connection";
    }

    CFDictionaryAddValue(v6, kCFUserNotificationAlertHeaderKey, v9);
    CFDictionaryAddValue(v6, kCFUserNotificationAlertMessageKey, @"Reminder timeout");
    CFDictionaryAddValue(v6, kCFUserNotificationDefaultButtonTitleKey, @"Stay connected");
    CFDictionaryAddValue(v6, kCFUserNotificationAlternateButtonTitleKey, @"Disconnect");
    v10 = CFUserNotificationCreate(0, v1, 2uLL, &error, v6);
    if (v10)
    {
      v11 = v10;
      CFUserNotificationReceiveResponse(v10, v1, &responseFlags);
      CFRelease(v11);
    }

    CFRelease(v6);
    v4 = responseFlags & 3;
  }

  dword_8260 = v4;
  return 0;
}

void dialog_reminder_watch()
{
  if (!dword_8260)
  {
    timeout(sub_B5C);
    untimeout();
  }

  if (dword_8260 != -1)
  {
    lcp_close();
  }

  timeout(dialog_reminder_watch);
}

void sub_B5C()
{
  dword_8260 = -1;
  if (!pthread_create(&qword_8280, 0, dialog_reminder_thread, 0))
  {

    timeout(dialog_reminder_watch);
  }
}

uint64_t dialog_password(char *a1, int a2, char *a3, int a4, int a5, const char *a6)
{
  v8 = 0;
  Count = 0;
  responseFlags = 0;
  if (a5 == 2)
  {
    v9 = 196608;
  }

  else
  {
    v9 = 0x20000;
  }

  error = 0;
  bufferSize = a2;
  v51 = a4;
  v10 = kCFUserNotificationAlertMessageKey;
  while (1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      return 0;
    }

    v12 = Mutable;
    v13 = CFBundleCopyResourceURL(qword_8250, @"NetworkConnect.icns", 0, 0);
    if (v13)
    {
      v14 = v13;
      CFDictionaryAddValue(v12, kCFUserNotificationIconURLKey, v13);
      CFRelease(v14);
    }

    if (a6)
    {
      v15 = CFStringCreateWithCString(0, a6, 0x8000100u);
      if (v15)
      {
        v16 = v15;
        CFDictionaryAddValue(v12, v10, v15);
        CFRelease(v16);
      }
    }

    if (a5 == 1)
    {
      v17 = &tokencard_ptr == 1;
      v18 = @"Incorrect password";
      v19 = @"Incorrect token";
    }

    else
    {
      if (a5 != 2)
      {
        goto LABEL_19;
      }

      v17 = &tokencard_ptr == 1;
      v18 = @"Expired password";
      v19 = @"Expired token";
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    CFDictionaryAddValue(v12, v10, v20);
LABEL_19:
    v21 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (v21)
    {
      v22 = v21;
      if (a5 == 1)
      {
        CFArrayAppendValue(v21, @"Retry name:");
        v24 = &tokencard_ptr == 1;
        v25 = @"Retry password:";
        v26 = @"Retry token:";
      }

      else if (a5 == 2)
      {
        if (&tokencard_ptr == 1)
        {
          v23 = @"New token:";
        }

        else
        {
          v23 = @"New password:";
        }

        CFArrayAppendValue(v21, v23);
        v24 = &tokencard_ptr == 1;
        v25 = @"Confirm new password:";
        v26 = @"Confirm new token:";
      }

      else
      {
        CFArrayAppendValue(v21, @"Account Name:");
        v24 = &tokencard_ptr == 1;
        v25 = @"Password:";
        v26 = @"Token:";
      }

      if (v24)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      CFArrayAppendValue(v22, v27);
      Count = CFArrayGetCount(v22);
      CFDictionaryAddValue(v12, kCFUserNotificationTextFieldTitlesKey, v22);
      CFRelease(v22);
    }

    v28 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (v28)
    {
      v29 = v28;
      if (a5 != 2)
      {
        v30 = CFStringCreateWithCString(0, a1, 0x8000100u);
        if (v30)
        {
          v31 = v30;
          CFArrayAppendValue(v29, v30);
          CFRelease(v31);
        }
      }

      CFDictionaryAddValue(v12, kCFUserNotificationTextFieldValuesKey, v29);
      CFRelease(v29);
    }

    CFDictionaryAddValue(v12, kCFUserNotificationLocalizationURLKey, qword_8258);
    if (dword_8248)
    {
      v32 = @"VPN Connection";
    }

    else
    {
      v32 = @"Network Connection";
    }

    CFDictionaryAddValue(v12, kCFUserNotificationAlertHeaderKey, v32);
    if (v8)
    {
      if (&tokencard_ptr == 1)
      {
        v33 = @"Incorrectly entered token";
      }

      else
      {
        v33 = @"Incorrectly entered password";
      }

      CFDictionaryAddValue(v12, v10, v33);
    }

    CFDictionaryAddValue(v12, kCFUserNotificationAlternateButtonTitleKey, @"Cancel");
    responseFlags = v9;
    v34 = v9;
    if (Count >= 1)
    {
      v35 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v36 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v56 = 1;
      v37 = CFNumberCreate(0, kCFNumberIntType, &v56 + 4);
      v38 = CFNumberCreate(0, kCFNumberIntType, &v56);
      v39 = v38;
      if (v35 && v36 && v37 && v38)
      {
        v40 = a6;
        v41 = Count;
        do
        {
          CFArrayAppendValue(v35, v37);
          CFArrayAppendValue(v36, v39);
          --v41;
        }

        while (v41);
        CFDictionarySetValue(v12, @"SBUserNotificationTextAutocapitalizationType", v35);
        CFDictionarySetValue(v12, @"SBUserNotificationTextAutocorrectionType", v36);
        a6 = v40;
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      v34 = responseFlags;
      v10 = kCFUserNotificationAlertMessageKey;
    }

    v42 = CFUserNotificationCreate(0, 0.0, v34, &error, v12);
    qword_8268 = v42;
    if (!v42)
    {
      CFRelease(v12);
      return 0;
    }

    CFUserNotificationReceiveResponse(v42, 0.0, &responseFlags);
    if ((responseFlags & 3) == 1)
    {
      v43 = 0;
      v44 = 0;
    }

    else
    {
      ResponseValue = CFUserNotificationGetResponseValue(qword_8268, kCFUserNotificationTextFieldValuesKey, 0);
      v46 = CFUserNotificationGetResponseValue(qword_8268, kCFUserNotificationTextFieldValuesKey, 1);
      v47 = v46;
      if (ResponseValue)
      {
        v48 = v46 == 0;
      }

      else
      {
        v48 = 1;
      }

      v49 = !v48;
      if (a5 == 2)
      {
        if (!v49 || CFStringCompare(ResponseValue, v46, 0))
        {
          goto LABEL_79;
        }
      }

      else if (!v49 || !CFStringGetCString(ResponseValue, a1, bufferSize, 0x8000100u))
      {
LABEL_79:
        v44 = 0xFFFFFFFFLL;
        v43 = 1;
        goto LABEL_80;
      }

      if (!CFStringGetCString(v47, a3, v51, 0x8000100u))
      {
        goto LABEL_79;
      }

      v43 = 0;
      v44 = 1;
    }

LABEL_80:
    CFRelease(qword_8268);
    qword_8268 = 0;
    CFRelease(v12);
    ++v8;
    if ((v43 & 1) == 0)
    {
      return v44;
    }
  }
}

uint64_t dialog_invoke_ui_thread()
{
  if (pipe(&dword_8270) < 0)
  {
    error();
  }

  if (pthread_create(&qword_8278, 0, sub_1370, 0))
  {
    error();
  }

  v5 = 0;
  v0 = dword_8270;
  v1 = 1;
  v2 = &v5;
  do
  {
    v3 = read(v0, v2, v1);
    if (v3 < 0)
    {
      if (&kill_link_ptr || *__error() != 4)
      {
        close(dword_8270);
        dword_8270 = -1;
        close(dword_8274);
        dword_8274 = -1;
        goto LABEL_17;
      }

      v3 = 0;
    }

    else if (!v3)
    {
      break;
    }

    v1 -= v3;
    v2 += v3;
  }

  while (v1 > 0);
  close(dword_8270);
  dword_8270 = -1;
  close(dword_8274);
  dword_8274 = -1;
  if (v1 <= 0)
  {
    result = v5;
    if (result == 1)
    {
      strncpy(&user_ptr, &username_ptr, 0x100uLL);
      return 1;
    }

    return result;
  }

LABEL_17:
  result = qword_8268;
  if (qword_8268)
  {
    CFUserNotificationCancel(qword_8268);
    return 0;
  }

  return result;
}

uint64_t sub_1370()
{
  __buf = 0;
  v0 = pthread_self();
  if (!pthread_detach(v0))
  {
    __buf = dialog_password(&username_ptr, 256, &passwd_ptr, 256, 0, 0) != 0;
  }

  if (dword_8274 != -1)
  {
    write(dword_8274, &__buf, 1uLL);
  }

  return 0;
}

void add_notifier()
{
    ;
  }
}

void add_options()
{
    ;
  }
}

void error()
{
    ;
  }
}

void lcp_close()
{
    ;
  }
}

void timeout(int a1)
{
    ;
  }
}

void untimeout()
{
    ;
  }
}