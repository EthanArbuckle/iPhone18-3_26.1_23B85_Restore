void sub_100000F20(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (qword_1000186B0 != -1)
  {
    sub_10000E65C();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100000FD4;
  v5[3] = &unk_1000147D8;
  v5[4] = a1;
  v5[5] = a2;
  [qword_1000186B8 eapConfigurationWithCompletion:v5];
  objc_autoreleasePoolPop(v4);
}

void sub_100000FD4(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  LogHandle = EAPLogGetLogHandle();
  if (!a3)
  {
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v12))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v12, "received EAP configuration from Factory OTA Client", buf, 2u);
    }

    if (a2)
    {
      v13 = CFGetTypeID([objc_msgSend(a2 tlsCertificateChain]);
      if (v13 == SecCertificateGetTypeID())
      {
        v14 = CFGetTypeID([a2 tlsKey]);
        if (v14 == SecKeyGetTypeID())
        {
          [objc_msgSend(a2 tlsCertificateChain];
          [a2 tlsKey];
          v22 = SecIdentityCreate();
          if ([objc_msgSend(a2 "tlsCertificateChain")] >= 2)
          {
            MutableCopy = CFArrayCreateMutableCopy(0, [objc_msgSend(a2 "tlsCertificateChain")], objc_msgSend(a2, "tlsCertificateChain"));
            CFArrayRemoveValueAtIndex(MutableCopy, 0);
            v16 = 0;
            v21 = MutableCopy;
            goto LABEL_19;
          }

          goto LABEL_11;
        }

        v17 = EAPLogGetLogHandle();
        v18 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_18;
        }

        *buf = 0;
        v8 = "received invalid client private key from Factory OTA Client";
      }

      else
      {
        v17 = EAPLogGetLogHandle();
        v18 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_18;
        }

        *buf = 0;
        v8 = "received invalid client certificate from Factory OTA Client";
      }

      v9 = v17;
      v10 = v18;
      v11 = 2;
      goto LABEL_17;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_19;
  }

  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v7))
  {
    *buf = 138412290;
    v24 = a3;
    v8 = "failed to fetch EAP configuration from Factory OTA Client, error: %@";
    v9 = LogHandle;
    v10 = v7;
    v11 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
  }

LABEL_18:
  v16 = 1;
LABEL_19:
  v19 = *(a1 + 32);
  if (v19)
  {
    if (v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = &v21;
    }

    v19(*(a1 + 40), v20);
    if ((v16 & 1) == 0)
    {
      my_CFRelease();
      my_CFRelease();
    }
  }
}

id sub_100001270()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_1000186B0 != -1)
  {
    sub_10000E65C();
  }

  v1 = [qword_1000186B8 isInFactoryMode];
  objc_autoreleasePoolPop(v0);
  return v1;
}

void sub_1000015AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000015CC(uint64_t a1)
{
  result = [*(a1 + 32) callback];
  if (result)
  {
    v5 = [*(a1 + 32) callback];
    v3 = [*(a1 + 32) callbackContext];
    v4 = *(*(*(a1 + 40) + 8) + 24);

    return v5(v3, v4, 0);
  }

  return result;
}

void sub_100001BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100001C04(uint64_t a1)
{
  result = [*(a1 + 32) callback];
  if (result)
  {
    v5 = [*(a1 + 32) callback];
    v3 = [*(a1 + 32) callbackContext];
    v4 = *(*(*(a1 + 40) + 8) + 24);

    return v5(v3, 0, v4);
  }

  return result;
}

id sub_100001C80(uint64_t a1)
{
  result = [*(a1 + 32) callback];
  if (result)
  {
    v5 = [*(a1 + 32) callback];
    v3 = [*(a1 + 32) callbackContext];
    v4 = *(*(*(a1 + 40) + 8) + 24);

    return v5(v3, v4, 0);
  }

  return result;
}

id sub_100001E48(uint64_t a1)
{
  result = [*(a1 + 32) callback];
  if (result)
  {
    v5 = [*(a1 + 32) callback];
    v3 = [*(a1 + 32) callbackContext];
    v4 = *(a1 + 40);

    return v5(v3, v4, 0);
  }

  return result;
}

AppSSOProviderCredentialSource *sub_100001F88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  v11 = [[AppSSOProviderCredentialSource alloc] initWithProviderURLString:a1 ssid:a2 queue:v9 callback:a4 context:a5];
  v12 = v11;
  if (v11)
  {
    [(AppSSOProviderCredentialSource *)v11 startAuthorization];
    v13 = v12;
  }

  else
  {
    v14 = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      v17[0] = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "failed to initialize AppSSOProviderCredentialSource", v17, 2u);
    }
  }

  objc_autoreleasePoolPop(v10);
  return v12;
}

void sub_100002080(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 invalidate];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000020C8()
{
  v0 = 10;
  for (i = &off_100014890; ; i += 2)
  {
    v2 = *(i - 1);
    v3 = EAPClientModuleAddBuiltinModule();
    if (v3)
    {
      break;
    }

    if (!--v0)
    {
      return v3;
    }
  }

  LogHandle = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v5))
  {
    v6 = *i;
    v8 = 136315394;
    v9 = v6;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, LogHandle, v5, "EAPClientAddBuiltinModule(%s) failed %d", &v8, 0x12u);
  }

  return v3;
}

void start(int a1, char *const *a2)
{
  theDict = 0uLL;
  v66 = 0;
  v65 = -1;
  *v64 = 0;
  v4 = getopt(a1, a2, "c:g:i:lu:") << 24;
  if (v4 == -16777216)
  {
    goto LABEL_2;
  }

  v58 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  do
  {
    HIDWORD(v11) = (v4 >> 24) - 99;
    LODWORD(v11) = HIDWORD(v11);
    v10 = v11 >> 1;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        v6 = optarg;
      }

      else
      {
        if (v10 != 9 || (v7 & 1) != 0)
        {
          goto LABEL_2;
        }

        v9 = strtoul(optarg, 0, 0);
        v7 = 1;
      }
    }

    else if (v10)
    {
      if (v10 != 2 || (v5 & 1) != 0)
      {
        goto LABEL_2;
      }

      v8 = strtoul(optarg, 0, 0);
      v5 = 1;
    }

    else
    {
      v58 = optarg;
    }

    v4 = getopt(a1, a2, "c:g:i:lu:") << 24;
  }

  while (v4 != -16777216);
  if (optind != a1 || v6 == 0)
  {
LABEL_2:
    fprintf(__stderrp, "usage:\n%s -i <if_name> [ -u <uid> ] [ -g <gid> ]\n", *a2);
    exit(64);
  }

  if (v9 == -1)
  {
    v9 = getuid();
  }

  if (v8 == -1)
  {
    v8 = getgid();
  }

  EAPLogInit();
  v13 = EAPOLClientEstablishSession();
  if (((v5 | v7) & 1) != 0 && !getuid())
  {
    if ((v5 & 1) != 0 && setgid(v8) < 0)
    {
      LogHandle = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v15))
      {
        goto LABEL_36;
      }

      v16 = __error();
      v17 = strerror(*v16);
      *buf = 67109378;
      *v61 = v8;
      *&v61[4] = 2080;
      *&v61[6] = v17;
      v18 = "setgid(%d) failed, %s";
      goto LABEL_35;
    }

    if ((v7 & 1) != 0 && setuid(v9) < 0)
    {
      LogHandle = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v15))
      {
        goto LABEL_36;
      }

      v19 = __error();
      v20 = strerror(*v19);
      *buf = 67109378;
      *v61 = v9;
      *&v61[4] = 2080;
      *&v61[6] = v20;
      v18 = "setuid(%d) failed, %s";
LABEL_35:
      _os_log_impl(&_mh_execute_header, LogHandle, v15, v18, buf, 0x12u);
LABEL_36:
      sub_1000029C0(77);
    }
  }

  if (v13)
  {
    execv(*a2, a2);
    v30 = EAPLogGetLogHandle();
    v31 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_52;
    }

    v32 = __error();
    v33 = strerror(*v32);
    *buf = 136315138;
    *v61 = v33;
    v34 = "exec failed, %s";
    v35 = v30;
    v36 = v31;
    v37 = 12;
    goto LABEL_51;
  }

  CFRunLoopGetCurrent();
  v21 = EAPOLControlPrefsInit();
  v22 = sub_100002A44(v21, 0);
  v23 = EAPLogGetLogHandle();
  v24 = _SC_syslog_os_log_mapping();
  v25 = os_log_type_enabled(v23, v24);
  if (v22)
  {
    if (v25)
    {
      *buf = 136315650;
      *v61 = v6;
      *&v61[8] = 1024;
      *&v61[10] = v9;
      v62 = 1024;
      v63 = v8;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s START uid %d gid %d", buf, 0x18u);
    }

    v38 = EAPLogGetLogHandle();
    v39 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v38, v39))
    {
LABEL_48:
      v66 = LinkAddresses_create();
      if (!v66)
      {
        v40 = EAPLogGetLogHandle();
        v41 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v40, v41))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v34 = "Could not build interface list";
        v35 = v40;
        v36 = v41;
        v37 = 2;
LABEL_51:
        _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, v37);
LABEL_52:
        exit(71);
      }

      v42 = LinkAddresses_lookup();
      if (!v42)
      {
        v43 = EAPLogGetLogHandle();
        v44 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_64;
        }

        *buf = 136315138;
        *v61 = v6;
        v45 = "interface '%s' does not exist";
        goto LABEL_63;
      }

      if (*(v42 + 4) != 6)
      {
        v43 = EAPLogGetLogHandle();
        v44 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_64;
        }

        *buf = 136315138;
        *v61 = v6;
        v45 = "interface '%s' is not ethernet";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v43, v44, v45, buf, 0xCu);
LABEL_64:
        exit(78);
      }

      *v64 = sub_10000ADE0(v6, v42 + *(v42 + 5) + 8, &theDict);
      if (!*v64)
      {
        v46 = EAPLogGetLogHandle();
        v47 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v46, v47))
        {
          *buf = 136315138;
          *v61 = v6;
          _os_log_impl(&_mh_execute_header, v46, v47, "EAPOLSocketSourceCreate(%s) failed", buf, 0xCu);
        }

        goto LABEL_60;
      }

      if (v58)
      {
        if (theDict)
        {
          fprintf(__stderrp, "Ignoring -c %s\n", v58);
        }

        else
        {
          v48 = my_CFPropertyListCreateFromFile();
          *(&theDict + 1) = v48;
          TypeID = CFDictionaryGetTypeID();
          if (!v48 || CFGetTypeID(v48) != TypeID)
          {
            fprintf(__stderrp, "contents of file %s invalid\n", v58);
            my_CFRelease();
            sub_1000029C0(78);
          }
        }
      }

      if (theDict == 0)
      {
        v50 = EAPLogGetLogHandle();
        v51 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v50, v51))
        {
          *buf = 136315138;
          *v61 = v6;
          _os_log_impl(&_mh_execute_header, v50, v51, "%s: config/control dictionary missing", buf, 0xCu);
        }
      }

      else if (!sub_1000020C8())
      {
        v52 = sub_10000C03C(*v64, theDict, &v65);
        if (v52)
        {
          v55 = v52;
          if (!theDict)
          {
            v59 = 0;
            sub_100002F80(v52, *(&theDict + 1), &v59);
            v56 = EAPLogGetLogHandle();
            v57 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v56, v57))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v56, v57, "Supplicant_update_configuration says we should stop - exiting", buf, 2u);
            }

            exit(69);
          }

          setsid();
          chdir("/");
          my_CFRelease();
          my_CFRelease();
          sub_100004DE4(v55, v65);
          LinkAddresses_free();
          CFRunLoopRun();
          sub_1000029C0(0);
        }

        v53 = EAPLogGetLogHandle();
        v54 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v53, v54))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "EAPOLSocketSourceCreateSupplicant failed", buf, 2u);
        }

        sub_10000BF68(v64);
LABEL_60:
        sub_1000029C0(69);
      }

      sub_1000029C0(70);
    }

    *buf = 67109120;
    *v61 = v22;
    v26 = "Verbose mode enabled (LogFlags 0x%x)";
    v27 = v38;
    v28 = v39;
    v29 = 8;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_48;
    }

    *buf = 136315650;
    *v61 = v6;
    *&v61[8] = 1024;
    *&v61[10] = v9;
    v62 = 1024;
    v63 = v8;
    v26 = "%s START uid %d gid %d";
    v27 = v23;
    v28 = v24;
    v29 = 24;
  }

  _os_log_impl(&_mh_execute_header, v27, v28, v26, buf, v29);
  goto LABEL_48;
}

void sub_1000029C0(int a1)
{
  if (sub_10000D360(1))
  {
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v3, "exit", v4, 2u);
    }
  }

  exit(a1);
}

uint64_t sub_100002A44(const __SCPreferences *a1, int a2)
{
  LogFlags = EAPOLControlPrefsGetLogFlags();
  sub_10000D230(LogFlags, a2);
  if (a1)
  {
    sub_100009988(a1);
    sub_1000073C4(a1);
    EAPOLControlPrefsSynchronize();
  }

  return LogFlags;
}

void sub_100002A9C(uint64_t a1)
{
  v4 = a1;
  sub_100002B8C(a1);
  sub_100009E94(*(a1 + 24));
  sub_100009160(*(a1 + 16));
  if (sub_100009E2C(*(a1 + 24)))
  {
    sub_10000A3E8(*(a1 + 24));
  }

  if (*a1 == 4)
  {
    *a1 = 6;
    *(a1 + 488) = 0;
    sub_100002B8C(a1);
    if ((sub_100009E9C(*(a1 + 24), 2, 0, 0) & 0x80000000) != 0)
    {
      LogHandle = EAPLogGetLogHandle();
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v3))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, LogHandle, v3, "EAPOLSocketTransmit failed", buf, 2u);
      }
    }

    sub_1000074A0(a1);
  }

  sub_100002BFC(&v4);
}

uint64_t sub_100002B8C(uint64_t a1)
{
  if (*(a1 + 280))
  {
    EAPClientModulePluginFree();
    *(a1 + 280) = 0;
    my_CFRelease();
    *(a1 + 432) = 0;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 288) = 0u;
  }

  my_CFRelease();
  result = my_CFRelease();
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  return result;
}

void sub_100002BFC(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      sub_100009124(v2 + 2);
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      v3 = v2[12];
      if (v3)
      {
        CFRelease(v3[1]);
        CFRelease(*v3);
        free(v3);
      }

      v2[12] = 0;
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      v4 = v2[16];
      if (v4)
      {
        free(v4);
      }

      v5 = v2[18];
      if (v5)
      {
        free(v5);
      }

      v6 = v2[20];
      if (v6)
      {
        free(v6);
      }

      my_CFRelease();
      v7 = v2[24];
      if (v7)
      {
        free(v7);
      }

      v2[24] = 0;
      v2[25] = 0;
      v2[26] = 0;
      v8 = v2[59];
      if (v8)
      {
        free(v8);
        v2[59] = 0;
        v2[60] = 0;
      }

      sub_100002B8C(v2);
      free(v2);
    }

    *a1 = 0;
  }
}

void sub_100002D18(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      my_CFRelease();
      my_CFRelease();
      my_CFRelease();
      free(v2);
    }

    *a1 = 0;
  }
}

CFTypeID sub_100002D6C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"EAPClientConfiguration");
  result = CFDictionaryGetTypeID();
  if (Value)
  {
    v4 = result;
    result = CFGetTypeID(Value);
    if (result == v4)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      CFDictionaryRemoveValue(MutableCopy, @"ExtensibleSSOProvider");
      CFDictionarySetValue(a1, @"EAPClientConfiguration", MutableCopy);
      return my_CFRelease();
    }
  }

  return result;
}

BOOL sub_100002E08(uint64_t a1, const void **a2)
{
  v12 = a2;
  if (a2 && (a2[2] & 1) != 0)
  {
    Mutable = *(a1 + 64);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(a1 + 64) = Mutable;
    }

    if (*a2)
    {
      CFDictionarySetValue(Mutable, @"UserName", *a2);
      *(a1 + 175) = 0;
    }

    v5 = a2[1];
    if (v5)
    {
      CFDictionarySetValue(*(a1 + 64), @"UserPassword", v5);
      *(a1 + 174) = 0;
    }

    v6 = a2[3];
    TypeID = CFDataGetTypeID();
    if (v6)
    {
      if (CFGetTypeID(v6) == TypeID)
      {
        CFDictionarySetValue(*(a1 + 64), @"TLSIdentityHandle", a2[3]);
        *(a1 + 176) = 0;
      }
    }

    *(a1 + 177) = *(a2 + 17);
    sub_100002D18(&v12);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
    sub_100002D6C(MutableCopy);
    sub_100002F80(a1, MutableCopy, 0);
    my_CFRelease();
    sub_10000485C(a1);
    return 1;
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(LogHandle, v10);
    if (result)
    {
      LOWORD(MutableCopy) = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v10, "invalid/unauthorized appsso provider response", &MutableCopy, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002F80(uint64_t a1, const __CFDictionary *a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  my_CFRelease();
  Value = CFDictionaryGetValue(a2, @"ManagerName");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    *(a1 + 240) = CFRetain(Value);
  }

  v8 = CFDictionaryGetValue(a2, @"ClientItemID");
  if (v8)
  {
    v9 = v8;
    v10 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v9) == v10)
    {
      my_CFRelease();
      my_CFRelease();
      v11 = EAPOLClientConfigurationCreateWithAuthorization();
      if (v11)
      {
        v12 = v11;
        v13 = EAPOLClientItemIDCreateWithDictionary();
        *(a1 + 224) = v13;
        *(a1 + 232) = v12;
        if (v13)
        {
          v14 = EAPOLClientItemIDGetProfile();
          if (!v14)
          {
            DefaultAuthenticationProperties = EAPOLClientConfigurationGetDefaultAuthenticationProperties();
            ID = 0;
            goto LABEL_142;
          }

          AuthenticationProperties = EAPOLClientProfileGetAuthenticationProperties();
          if (AuthenticationProperties)
          {
            DefaultAuthenticationProperties = AuthenticationProperties;
            ID = EAPOLClientProfileGetID();
            v203 = 0;
            memset(v202, 0, sizeof(v202));
            if (!*(a1 + 248))
            {
              out_token[0] = 0;
              notify_port[0] = 0;
              if (notify_register_mach_port(kEAPOLClientConfigurationChangedNotifyKey, notify_port, 0, out_token))
              {
                LogHandle = EAPLogGetLogHandle();
                v19 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(LogHandle, v19))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, LogHandle, v19, "notify_register_mach_port() failed", buf, 2u);
                }

                goto LABEL_142;
              }

              *&v202[8] = a1;
              v152 = _SC_CFMachPortCreateWithPort();
              if (v152)
              {
                v153 = v152;
                RunLoopSource = CFMachPortCreateRunLoopSource(0, v152, 0);
                if (RunLoopSource)
                {
                  v155 = RunLoopSource;
                  Current = CFRunLoopGetCurrent();
                  CFRunLoopAddSource(Current, v155, kCFRunLoopDefaultMode);
                  CFRelease(v155);
                  *(a1 + 248) = v153;
                  *(a1 + 256) = out_token[0];
                  goto LABEL_142;
                }

                v196 = EAPLogGetLogHandle();
                v197 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v196, v197))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v196, v197, "CFMachPortCreateRunLoopSource() failed", buf, 2u);
                }

                CFRelease(v153);
              }

              notify_cancel(out_token[0]);
            }

LABEL_142:
            v22 = CFDictionaryGetValue(a2, @"EAPClientConfiguration");
            v109 = CFDictionaryGetTypeID();
            if (v22 && CFGetTypeID(v22) != v109)
            {
              v22 = 0;
            }

            goto LABEL_21;
          }

          v55 = EAPLogGetLogHandle();
          v56 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v55, v56))
          {
LABEL_174:
            v104 = 0;
            if (a3)
            {
              *a3 = 1;
            }

            return v104 & 1;
          }

          *v202 = 0;
          v57 = "profile has no authentication properties";
        }

        else
        {
          v55 = EAPLogGetLogHandle();
          v56 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v55, v56))
          {
            goto LABEL_174;
          }

          *v202 = 0;
          v57 = "couldn't instantiate item";
        }
      }

      else
      {
        v55 = EAPLogGetLogHandle();
        v56 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v55, v56))
        {
          goto LABEL_174;
        }

        *v202 = 0;
        v57 = "couldn't create configuration";
      }
    }

    else
    {
      v55 = EAPLogGetLogHandle();
      v56 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_174;
      }

      *v202 = 0;
      v57 = "invalid item dict";
    }

    _os_log_impl(&_mh_execute_header, v55, v56, v57, v202, 2u);
    goto LABEL_174;
  }

  my_CFRelease();
  my_CFRelease();
  v20 = CFDictionaryGetValue(a2, @"EAPClientConfiguration");
  v21 = CFDictionaryGetTypeID();
  DefaultAuthenticationProperties = a2;
  if (v20)
  {
    if (CFGetTypeID(v20) == v21)
    {
      DefaultAuthenticationProperties = v20;
    }

    else
    {
      DefaultAuthenticationProperties = a2;
    }
  }

  ID = CFDictionaryGetValue(a2, @"UniqueIdentifier");
  v22 = 0;
  v14 = 0;
LABEL_21:
  my_CFRelease();
  *(a1 + 40) = CFDictionaryCreateCopy(0, a2);
  if (!*(a1 + 96))
  {
    *(a1 + 500) = sub_100009674();
    v23 = EAPLogGetLogHandle();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v23, v24))
    {
      if (*(a1 + 500))
      {
        v25 = "is";
      }

      else
      {
        v25 = "is not";
      }

      *v202 = 136315138;
      *&v202[4] = v25;
      _os_log_impl(&_mh_execute_header, v23, v24, "in-box auth %s requested", v202, 0xCu);
    }
  }

  *(a1 + 501) = sub_100001270();
  v26 = EAPLogGetLogHandle();
  v27 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v26, v27))
  {
    if (*(a1 + 501))
    {
      v28 = "is";
    }

    else
    {
      v28 = "is not";
    }

    *v202 = 136315138;
    *&v202[4] = v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "factory ota auth %s requested", v202, 0xCu);
  }

  if (DefaultAuthenticationProperties && CFDictionaryContainsKey(DefaultAuthenticationProperties, @"ExtensibleSSOProvider") && (v29 = CFDictionaryGetValue(DefaultAuthenticationProperties, @"ExtensibleSSOProvider"), v30 = CFStringGetTypeID(), v29))
  {
    v31 = v30;
    v32 = CFGetTypeID(v29);
    *(a1 + 499) = v32 == v31;
    if (v32 == v31)
    {
      v33 = EAPLogGetLogHandle();
      v34 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v33, v34))
      {
        *v202 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "appsso provider auth is requested", v202, 2u);
      }

      v35 = CFDictionaryGetValue(DefaultAuthenticationProperties, @"ExtensibleSSOProvider");
      *(a1 + 72) = v35;
      CFRetain(v35);
    }
  }

  else
  {
    *(a1 + 499) = 0;
  }

  v36 = CFDictionaryGetValue(DefaultAuthenticationProperties, @"UserName");
  v37 = sub_100005128(v36);
  v38 = CFDictionaryGetValue(DefaultAuthenticationProperties, @"UserPassword");
  v39 = sub_100005128(v38);
  my_CFRelease();
  if (v37 || v39 || *(a1 + 56) || *(a1 + 64) || *(a1 + 96) || v14 || (*(a1 + 501) & 1) != 0 || v22 || CFDictionaryContainsKey(DefaultAuthenticationProperties, @"ProfileID"))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, DefaultAuthenticationProperties);
    v41 = MutableCopy;
    if (v37)
    {
      CFDictionaryRemoveValue(MutableCopy, @"UserName");
    }

    if (v39)
    {
      CFDictionaryRemoveValue(v41, @"UserPassword");
    }

    CFDictionaryRemoveValue(v41, @"ProfileID");
    if (v22)
    {
      CFDictionaryApplyFunction(v22, sub_100005180, v41);
    }

    if (v14)
    {
      v42 = EAPOLClientProfileGetID();
      CFDictionarySetValue(v41, @"ProfileID", v42);
    }

    v43 = *(a1 + 56);
    if (v43)
    {
      CFDictionaryApplyFunction(v43, sub_100005180, v41);
    }

    v44 = *(a1 + 64);
    if (v44)
    {
      CFDictionaryApplyFunction(v44, sub_100005180, v41);
    }

    v45 = *(a1 + 96);
    if (v45 && *v45)
    {
      CFDictionarySetValue(v41, @"TLSClientIdentityTrustChainCertificates", *v45);
    }

    if (*(a1 + 501) == 1)
    {
      v46 = *(a1 + 104);
      if (v46)
      {
        CFDictionarySetValue(v41, @"TLSClientIdentityTrustChainCertificates", v46);
      }
    }
  }

  else
  {
    v41 = CFRetain(DefaultAuthenticationProperties);
  }

  *(a1 + 48) = v41;
  if (sub_10000D360(2))
  {
    v47 = *(a1 + 48);
    v48 = CFDictionaryGetValue(v47, @"UserPassword");
    v49 = CFDictionaryGetValue(v47, @"NewPassword");
    if (v48 | v49)
    {
      v50 = v49;
      v51 = CFDictionaryCreateMutableCopy(0, 0, v47);
      v52 = v51;
      if (v48)
      {
        CFDictionarySetValue(v51, @"UserPassword", @"XXXXXXXX");
      }

      if (v50)
      {
        CFDictionarySetValue(v52, @"NewPassword", @"XXXXXXXX");
      }

      v53 = my_CFPropertyListCopyAsXMLString();
      v54 = v52;
    }

    else
    {
      v60 = CFDictionaryGetValue(v47, @"TLSClientIdentityTrustChainCertificates");
      v61 = CFArrayGetTypeID();
      if (!v60 || CFGetTypeID(v60) != v61 || !CFArrayGetCount(v60))
      {
        goto LABEL_86;
      }

      Count = CFArrayGetCount(v60);
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v60, i);
          v66 = SecCertificateCopyData(ValueAtIndex);
          CFArrayAppendValue(Mutable, v66);
          CFRelease(v66);
        }
      }

      if (!Mutable)
      {
LABEL_86:
        v53 = my_CFPropertyListCopyAsXMLString();
        if (!v53)
        {
          goto LABEL_90;
        }

        goto LABEL_87;
      }

      v67 = CFDictionaryCreateMutableCopy(0, 0, v47);
      CFDictionarySetValue(v67, @"TLSClientIdentityTrustChainCertificates", Mutable);
      v53 = my_CFPropertyListCopyAsXMLString();
      CFRelease(v67);
      v54 = Mutable;
    }

    CFRelease(v54);
    if (!v53)
    {
      goto LABEL_90;
    }

LABEL_87:
    v68 = EAPLogGetLogHandle();
    v69 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v68, v69))
    {
      *v202 = 138412290;
      *&v202[4] = v53;
      _os_log_impl(&_mh_execute_header, v68, v69, "update_configuration\n%@", v202, 0xCu);
    }

    CFRelease(v53);
    goto LABEL_90;
  }

  v58 = EAPLogGetLogHandle();
  v59 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v58, v59))
  {
    *v202 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "update_configuration", v202, 2u);
  }

LABEL_90:
  ++*(a1 + 32);
  my_CFRelease();
  if (ID)
  {
    v70 = CFStringGetTypeID();
    if (CFGetTypeID(ID) == v70)
    {
      *(a1 + 88) = CFRetain(ID);
    }
  }

  *buf = 0;
  v71 = *(a1 + 48);
  if (v71)
  {
    v72 = CFDictionaryGetValue(v71, @"AcceptEAPTypes");
    v73 = CFArrayGetTypeID();
    if (v72 && CFGetTypeID(v72) == v73)
    {
      v75 = (a1 + 192);
      v74 = *(a1 + 192);
      if (v74)
      {
        free(v74);
      }

      *v75 = 0;
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      v76 = CFArrayGetCount(v72);
      if (v76)
      {
        v77 = v76;
        notify_port[0] = 0;
        v78 = malloc_type_malloc(4 * v76, 0x100004052888210uLL);
        if (v77 < 1)
        {
          goto LABEL_149;
        }

        v79 = 0;
        v80 = 0;
        v81 = 0;
        v198 = v72;
        while (1)
        {
          v82 = CFArrayGetValueAtIndex(v72, v79);
          v83 = CFNumberGetTypeID();
          if (v82 && CFGetTypeID(v82) == v83)
          {
            if (!CFNumberGetValue(v82, kCFNumberIntType, notify_port))
            {
              v99 = EAPLogGetLogHandle();
              v100 = _SC_syslog_os_log_mapping();
              if (!os_log_type_enabled(v99, v100))
              {
                goto LABEL_122;
              }

              *v202 = 67109120;
              *&v202[4] = v79;
              v95 = v99;
              v96 = v100;
              v97 = "AcceptEAPTypes[%d] contains invalid number, ignoring";
              goto LABEL_120;
            }

            if (EAPClientModuleLookup())
            {
              v84 = v80;
              if (v81 >= 1)
              {
                for (j = 0; j != v81; ++j)
                {
                  if (v78[j] == notify_port[0])
                  {
                    v86 = EAPLogGetLogHandle();
                    v87 = _SC_syslog_os_log_mapping();
                    if (os_log_type_enabled(v86, v87))
                    {
                      v88 = EAPTypeStr();
                      *v202 = 67109890;
                      *&v202[4] = v79;
                      *&v202[8] = 2080;
                      *&v202[10] = v88;
                      *&v202[18] = 1024;
                      *&v202[20] = notify_port[0];
                      *&v202[24] = 1024;
                      *&v202[26] = j;
                      _os_log_impl(&_mh_execute_header, v86, v87, "AcceptEAPTypes[%d] %s (%d) already specified at [%d], ignoring", v202, 0x1Eu);
                    }
                  }
                }
              }

              v89 = notify_port[0];
              v78[v81++] = notify_port[0];
              v90 = v89 > 0x2B;
              v91 = (1 << v89) & 0x80002200000;
              if (v90 || v91 == 0)
              {
                v80 = v84;
              }

              else
              {
                v80 = v84 + 1;
              }

              v72 = v198;
              goto LABEL_122;
            }

            v101 = EAPLogGetLogHandle();
            v102 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v101, v102))
            {
              *v202 = 67109376;
              *&v202[4] = v79;
              *&v202[8] = 1024;
              *&v202[10] = notify_port[0];
              v95 = v101;
              v96 = v102;
              v97 = "AcceptEAPTypes[%d] specifies unsupported type %d, ignoring";
              v98 = 14;
              goto LABEL_121;
            }
          }

          else
          {
            v93 = EAPLogGetLogHandle();
            v94 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v93, v94))
            {
              *v202 = 67109120;
              *&v202[4] = v79;
              v95 = v93;
              v96 = v94;
              v97 = "AcceptEAPTypes[%d] contains invalid type, ignoring";
LABEL_120:
              v98 = 8;
LABEL_121:
              _os_log_impl(&_mh_execute_header, v95, v96, v97, v202, v98);
            }
          }

LABEL_122:
          if (++v79 == v77)
          {
            v75 = (a1 + 192);
            if (v81)
            {
              *(a1 + 192) = v78;
              *(a1 + 200) = v81;
              if (v80 == v81)
              {
                *(a1 + 208) = 1;
              }

              break;
            }

LABEL_149:
            free(v78);
            break;
          }
        }
      }

      v110 = CFDictionaryGetValue(*(a1 + 48), @"InnerAcceptEAPTypes");
      v111 = CFArrayGetTypeID();
      if (v110)
      {
        if (CFGetTypeID(v110) == v111)
        {
          v112 = v110;
        }

        else
        {
          v112 = 0;
        }
      }

      else
      {
        v112 = 0;
      }

      if (sub_10000ABB8(*(a1 + 24)) == 1)
      {
        *(a1 + 173) = sub_100008220(*(a1 + 48), @"OneTimeUserPassword", 0);
      }

      if ((*(a1 + 175) & 1) == 0 && (v117 = CFDictionaryGetValue(*(a1 + 48), @"UserName"), v118 = CFStringGetTypeID(), v117) && CFGetTypeID(v117) == v118)
      {
        v113 = my_CFStringToCString();
      }

      else
      {
        v113 = 0;
      }

      if (*(a1 + 174))
      {
        goto LABEL_160;
      }

      v119 = CFDictionaryGetValue(*(a1 + 48), @"UserPassword");
      v120 = CFDictionaryGetValue(*(a1 + 48), @"UserPasswordKeychainItemID");
      v121 = CFStringGetTypeID();
      if (v119 && CFGetTypeID(v119) == v121)
      {
        v114 = my_CFStringToCString();
        goto LABEL_161;
      }

      v123 = CFStringGetTypeID();
      if (v120 && CFGetTypeID(v120) == v123)
      {
        *out_token = 0;
        *notify_port = 0;
        v124 = EAPSecKeychainPasswordItemCopy();
        if (v124)
        {
          v125 = v124;
          v126 = EAPLogGetLogHandle();
          v127 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v126, v127))
          {
            *v202 = 134217984;
            *&v202[4] = v125;
            _os_log_impl(&_mh_execute_header, v126, v127, "SecKeychainFindGenericPassword failed, %ld", v202, 0xCu);
          }

          v114 = 0;
        }

        else
        {
          v114 = sub_100008284(*out_token);
        }

        my_CFRelease();
        my_CFRelease();
        if (!v114)
        {
          v193 = EAPLogGetLogHandle();
          v194 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v193, v194))
          {
            v195 = sub_100009E14(*(a1 + 24), 0);
            *v202 = 136315138;
            *&v202[4] = v195;
            _os_log_impl(&_mh_execute_header, v193, v194, "%s: failed to retrieve password from keychain", v202, 0xCu);
          }

          goto LABEL_160;
        }
      }

      else
      {
        if (v113)
        {
LABEL_160:
          v114 = 0;
          goto LABEL_161;
        }

        if (*(a1 + 224) && (*notify_port = 0, *v202 = 0, EAPOLClientItemIDCopyPasswordItem()))
        {
          if (*notify_port)
          {
            v114 = sub_100008284(*notify_port);
          }

          else
          {
            v114 = 0;
          }

          if (*v202)
          {
            v113 = sub_100008284(*v202);
          }

          else
          {
            v113 = 0;
          }

          my_CFRelease();
          my_CFRelease();
        }

        else
        {
          v114 = 0;
          v113 = 0;
        }
      }

LABEL_161:
      if (*(a1 + 176))
      {
        v115 = 0;
        v116 = 0;
        goto LABEL_189;
      }

      if (sub_1000082EC(v72))
      {
        v116 = sub_100008220(*(a1 + 48), @"TLSCertificateIsRequired", 1);
      }

      else
      {
        v128 = sub_1000082EC(v112);
        v116 = sub_100008220(*(a1 + 48), @"TLSCertificateIsRequired", v128);
        if (!v128)
        {
          goto LABEL_188;
        }
      }

      v129 = *(a1 + 48);
      if (v129)
      {
        v130 = CFDictionaryGetValue(v129, @"TLSMinimumVersion");
        v131 = CFStringGetTypeID();
        if (v130)
        {
          if (CFGetTypeID(v130) == v131)
          {
            v115 = CFEqual(v130, @"1.3") != 0;
            goto LABEL_189;
          }
        }
      }

LABEL_188:
      v115 = 0;
LABEL_189:
      v132 = EAPLogGetLogHandle();
      v133 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = "is not";
        if (v115)
        {
          v134 = "is";
        }

        *v202 = 136315138;
        *&v202[4] = v134;
        _os_log_impl(&_mh_execute_header, v132, v133, "EAP identity privacy %s required", v202, 0xCu);
      }

      if (!v116)
      {
        goto LABEL_212;
      }

      if (CFDictionaryGetValue(*(a1 + 48), @"TLSIdentityHandle"))
      {
        SecIdentity = EAPSecIdentityHandleCreateSecIdentity();
        if (SecIdentity)
        {
          v136 = SecIdentity;
          v137 = EAPLogGetLogHandle();
          v138 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v137, v138))
          {
            *v202 = 134217984;
            *&v202[4] = v136;
            _os_log_impl(&_mh_execute_header, v137, v138, "EAPSecIdentityHandleCreateSecIdentity failed, %ld", v202, 0xCu);
          }
        }
      }

      if (!*buf && *(a1 + 224))
      {
        *buf = EAPOLClientItemIDCopyIdentity();
      }

      if (*(a1 + 500) == 1)
      {
        v139 = *(a1 + 96);
        if (v139)
        {
          v140 = *(v139 + 8);
          if (v140)
          {
            *buf = CFRetain(v140);
          }
        }
      }

      if (*(a1 + 501) == 1)
      {
        v141 = *(a1 + 112);
        if (v141)
        {
          *buf = CFRetain(v141);
        }
      }

      my_CFRelease();
      v142 = *buf;
      *(a1 + 184) = *buf;
      if (v115)
      {
        v143 = CFDictionaryGetValue(*(a1 + 48), @"OuterIdentity");
        v144 = CFStringGetTypeID();
        if (v143 && CFGetTypeID(v143) == v144)
        {
          v113 = my_CFStringToCString();
LABEL_212:
          v145 = 0;
          goto LABEL_238;
        }

        v150 = EAPLogGetLogHandle();
        v151 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v150, v151))
        {
          *v202 = 138412290;
          *&v202[4] = @"OuterIdentity";
          _os_log_impl(&_mh_execute_header, v150, v151, "%@ is not configured, unable to prompt for EAP Identity", v202, 0xCu);
        }

        v145 = 0;
        *(a1 + 497) = 1;
LABEL_238:
        if ((v114 != 0) != (*buf != 0))
        {
          v158 = *(a1 + 200);
          if (v158 >= 2)
          {
            v159 = *v75;
            if (*v75)
            {
              v160 = 0;
              while (v159[v160] != 13)
              {
                if (v158 == ++v160)
                {
                  goto LABEL_244;
                }
              }
            }

            else
            {
LABEL_244:
              LODWORD(v160) = -1;
            }

            if (*buf)
            {
              if (v160 == -1)
              {
                if (!sub_100008220(*(a1 + 48), @"TLSCertificateIsRequired", 0))
                {
                  v172 = EAPLogGetLogHandle();
                  v173 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v172, v173))
                  {
                    v174 = sub_100009E14(*(a1 + 24), 0);
                    *v202 = 136315138;
                    *&v202[4] = v174;
                    v163 = "%s: identity specified but EAP-TLS isn't enabled";
                    v164 = v172;
                    v165 = v173;
                    v166 = 12;
                    goto LABEL_263;
                  }
                }
              }

              else
              {
                *(a1 + 200) = 1;
                *v159 = 13;
                if (sub_10000D360(1))
                {
                  v161 = EAPLogGetLogHandle();
                  v162 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v161, v162))
                  {
                    *v202 = 0;
                    v163 = "identity is specified, enabling EAP-TLS only";
                    v164 = v161;
                    v165 = v162;
                    v166 = 2;
LABEL_263:
                    _os_log_impl(&_mh_execute_header, v164, v165, v163, v202, v166);
                  }
                }
              }
            }

            else if (v160 != -1)
            {
              if (sub_10000D360(1))
              {
                v167 = EAPLogGetLogHandle();
                v168 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v167, v168))
                {
                  *v202 = 0;
                  _os_log_impl(&_mh_execute_header, v167, v168, "password is specified, disabling EAP-TLS", v202, 2u);
                }
              }

              if ((v160 & 0x80000000) == 0)
              {
                v169 = *(a1 + 200);
                if (v169 > v160)
                {
                  v170 = v169 - 1;
                  if (v170 > v160)
                  {
                    v171 = (*v75 + 4 * v160 + 4);
                    do
                    {
                      *(v171 - 1) = *v171;
                      v170 = *(a1 + 200) - 1;
                      ++v171;
                      LODWORD(v160) = v160 + 1;
                    }

                    while (v170 > v160);
                  }

                  *(a1 + 200) = v170;
                }
              }
            }
          }
        }

        if (!v116 && v113 == 0)
        {
          if (*(a1 + 200) < 1)
          {
            goto LABEL_288;
          }

          v177 = 0;
          v178 = *(a1 + 48);
          v179 = 1;
          while (1)
          {
            v180 = *(*v75 + 4 * v177);
            if (!EAPClientModuleLookup())
            {
              goto LABEL_276;
            }

            *v202 = EAPClientModulePluginUserName();
            if (*v202)
            {
              v113 = my_CFStringToCString();
              my_CFRelease();
              if (v113)
              {
                v145 = 1;
                break;
              }

LABEL_288:
              v183 = *(a1 + 144);
              if (v183)
              {
                free(v183);
                LODWORD(v183) = 0;
                *(a1 + 144) = 0;
                v176 = 1;
              }

              else
              {
                v176 = 0;
              }

              goto LABEL_292;
            }

            v181 = *(*v75 + 4 * v177);
            if (v181 == 18 || v181 == 23)
            {
              v179 = 0;
              if (++v177 >= *(a1 + 200))
              {
                goto LABEL_285;
              }
            }

            else
            {
LABEL_276:
              if (++v177 >= *(a1 + 200))
              {
                if (v179)
                {
                  goto LABEL_288;
                }

LABEL_285:
                *(a1 + 497) = 1;
                goto LABEL_288;
              }
            }
          }
        }

        v175 = *(a1 + 144);
        if (v113 && v175)
        {
          v176 = strcmp(*(a1 + 144), v113) != 0;
          free(v175);
          *(a1 + 144) = v113;
        }

        else
        {
          v176 = v175 != v113;
          if (v175)
          {
            free(*(a1 + 144));
          }

          *(a1 + 144) = v113;
          if (!v113)
          {
            LODWORD(v183) = 0;
            goto LABEL_292;
          }
        }

        LODWORD(v183) = strlen(v113);
LABEL_292:
        *(a1 + 152) = v183;
        *(a1 + 172) = v145;
        v184 = *(a1 + 160);
        if (v114 && v184)
        {
          v185 = strcmp(*(a1 + 160), v114) != 0 || v176;
        }

        else
        {
          v185 = v184 != v114 || v176;
          if (!v184)
          {
            goto LABEL_297;
          }
        }

        free(v184);
LABEL_297:
        *(a1 + 160) = v114;
        if (v114)
        {
          v186 = strlen(v114);
        }

        else
        {
          v186 = 0;
        }

        *(a1 + 168) = v186;
        if (*(a1 + 208) == 1 && (v187 = CFDictionaryGetValue(*(a1 + 48), @"OuterIdentity"), v188 = CFStringGetTypeID(), v187) && CFGetTypeID(v187) == v188)
        {
          v189 = my_CFStringToCString();
          v190 = v189;
          v191 = *(a1 + 128);
          if (v189 && v191)
          {
            v104 = strcmp(*(a1 + 128), v189) != 0 || v185;
            free(v191);
            *(a1 + 128) = v190;
LABEL_312:
            *(a1 + 136) = strlen(v190);
            goto LABEL_132;
          }

          v104 = v191 != v189 || v185;
          if (v191)
          {
            free(*(a1 + 128));
          }

          *(a1 + 128) = v190;
          if (v190)
          {
            goto LABEL_312;
          }
        }

        else
        {
          v192 = *(a1 + 128);
          v104 = v192 != 0 || v185;
          if (v192)
          {
            free(v192);
            *(a1 + 128) = 0;
          }
        }

        *(a1 + 136) = 0;
        goto LABEL_132;
      }

      v145 = 0;
      if (v113 || !v142)
      {
        goto LABEL_238;
      }

      *notify_port = 0;
      v146 = SecIdentityCopyCertificate(v142, notify_port);
      if (v146)
      {
        v147 = v146;
        v148 = EAPLogGetLogHandle();
        v149 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v148, v149))
        {
          *v202 = 134217984;
          *&v202[4] = v147;
          _os_log_impl(&_mh_execute_header, v148, v149, "EAPSecIdentityHandleCreateSecIdentity failed, %ld", v202, 0xCu);
        }
      }

      else
      {
        v157 = EAPSecCertificateCopyUserNameString();
        CFRelease(*notify_port);
        if (v157)
        {
          v113 = my_CFStringToCString();
          CFRelease(v157);
LABEL_237:
          v145 = v113 != 0;
          goto LABEL_238;
        }
      }

      v113 = 0;
      goto LABEL_237;
    }
  }

  else
  {
    CFArrayGetTypeID();
  }

  v103 = *(a1 + 192);
  if (v103)
  {
    free(v103);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v104 = 1;
  *(a1 + 208) = 0;
LABEL_132:
  v105 = *(a1 + 280);
  if (v105)
  {
    LODWORD(v105) = EAPClientModulePluginEAPType();
  }

  v106 = *(a1 + 192);
  if (v106 && (v107 = *(a1 + 200), v107 >= 1))
  {
    while (1)
    {
      v108 = *v106++;
      if (v108 == v105)
      {
        break;
      }

      if (!--v107)
      {
        goto LABEL_138;
      }
    }
  }

  else
  {
LABEL_138:
    sub_100002B8C(a1);
    v104 = 1;
  }

  return v104 & 1;
}

void sub_10000485C(uint64_t a1)
{
  LogHandle = EAPLogGetLogHandle();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v3))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, LogHandle, v3, "other_source_supplied_credentials", v4, 2u);
  }

  if (*a1 == 3)
  {
    if (*(a1 + 472))
    {
      sub_100005BB8(a1, a1 + 472);
    }
  }

  else if (*a1 == 2)
  {
    sub_10000564C(a1, 4, 0);
  }
}

void sub_100004914(uint64_t a1, __CFError *a2, const void **a3)
{
  LogHandle = EAPLogGetLogHandle();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v7))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, LogHandle, v7, "appsso_provider_callback", v17, 2u);
  }

  if (a2)
  {
    v8 = CFErrorCopyDescription(a2);
    v9 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      *v17 = 138412290;
      *&v17[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to fetch credentials from AppSSO provider, error: %@", v17, 0xCu);
    }

    CFRelease(v8);
    if (*(a1 + 488) != 20)
    {
      goto LABEL_15;
    }

LABEL_12:
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
    *v17 = MutableCopy;
    sub_100002D6C(MutableCopy);
    sub_100002F80(a1, MutableCopy, 0);
    my_CFRelease();
    goto LABEL_13;
  }

  if (*(a1 + 488) != 20)
  {
LABEL_15:
    v15 = EAPLogGetLogHandle();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      *v17 = 136315138;
      *&v17[4] = "OtherInputRequired";
      _os_log_impl(&_mh_execute_header, v15, v16, "supplicant's last status is not %s", v17, 0xCu);
    }

    return;
  }

  v11 = EAPLogGetLogHandle();
  v12 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v11, v12))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "received credentials from AppSSO provider", v17, 2u);
  }

  if (!sub_100002E08(a1, a3))
  {
    goto LABEL_12;
  }

LABEL_13:
  v14 = *(a1 + 80);
  if (v14)
  {
    sub_100002080(v14);
    *(a1 + 80) = 0;
  }
}

const char *sub_100004B5C(int a1)
{
  if (a1 > 999)
  {
    switch(a1)
    {
      case 1000:
        return "ErrnoError";
      case 1001:
        return "SecurityError";
      case 1002:
        return "PluginSpecificError";
      default:
        return "<unknown>";
    }
  }

  else
  {
    result = "OK";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "Failed";
        break;
      case 2:
        result = "AllocationFailed";
        break;
      case 3:
        result = "UserInputRequired";
        break;
      case 4:
        result = "ConfigurationInvalid";
        break;
      case 5:
        result = "ProtocolNotSupported";
        break;
      case 6:
        result = "ServerCertificateNotTrusted";
        break;
      case 7:
        result = "InnerProtocolNotSupported";
        break;
      case 8:
        result = "InternalError";
        break;
      case 9:
        result = "UserCancelledAuthentication";
        break;
      case 10:
        result = "UnknownRootCertificate";
        break;
      case 11:
        result = "NoRootCertificate";
        break;
      case 12:
        result = "CertificateExpired";
        break;
      case 13:
        result = "CertificateNotYetValid";
        break;
      case 14:
        result = "CertificateRequiresConfirmation";
        break;
      case 15:
        result = "UserInputNotPossible";
        break;
      case 16:
        result = "ResourceUnavailable";
        break;
      case 17:
        result = "ProtocolError";
        break;
      case 18:
        result = "AuthenticationStalled";
        break;
      case 20:
        result = "OtherInputRequired";
        break;
      default:
        return "<unknown>";
    }
  }

  return result;
}

BOOL sub_100004D1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
    v9 = MutableCopy;
    *(a1 + 96) = a2;
    sub_100002F80(a1, MutableCopy, 0);
    my_CFRelease();
    sub_10000485C(a1);
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v6, "received NULL EAP configuration from MIB", v8, 2u);
    }
  }

  return a2 != 0;
}

void sub_100004DE4(void *a1, int a2)
{
  v10 = a2;
  LogHandle = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v5))
  {
    v6 = sub_100009E14(a1[3], 0);
    v7 = sub_10000ABB8(a1[3]);
    if (v7 > 3)
    {
      v8 = "<unknown>";
    }

    else
    {
      v8 = off_100014970[v7];
    }

    *buf = 136315394;
    v12 = v6;
    v13 = 2080;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, LogHandle, v5, "%s: 802.1X %s Mode", buf, 0x16u);
  }

  if (sub_10000A780(a1[3]))
  {
    if (a2 == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = &v10;
    }

    sub_100004F1C(a1, v9);
  }

  else
  {
    sub_1000050AC(a1, 0);
  }
}

void sub_100004F1C(uint64_t a1, _DWORD *a2)
{
  sub_100009E94(*(a1 + 24));
  sub_100009160(*(a1 + 16));
  *a1 = 0;
  sub_1000074A0(a1);
  *(a1 + 120) = -1;
  *(a1 + 204) = 0;
  *(a1 + 488) = 0;
  sub_100002B8C(a1);
  v4 = *(a1 + 472);
  if (v4)
  {
    free(v4);
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
  }

  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v8[1] = 9;
    v8[0] = &v9;
    EAPOLPacketSetLength();
    BYTE5(v9) = *a2;
    BYTE4(v9) = 1;
    v10 = 1;
    EAPPacketSetLength();
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v6, "Re-created EAP Request Identity", v7, 2u);
    }

    sub_1000053FC(a1, 0, v8);
  }

  else
  {

    sub_1000053FC(a1, 0, 0);
  }
}

void *sub_1000050AC(void *result, int a2)
{
  if (!a2)
  {
    v3 = result;
    sub_100009E94(result[3]);
    sub_100009160(*(v3 + 16));
    *v3 = 7;
    *(v3 + 272) = 1;
    sub_1000074A0(v3);
    v4 = *(v3 + 24);

    return sub_100009E88(v4, sub_1000053FC, v3, 0);
  }

  return result;
}

BOOL sub_100005128(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    return CFGetTypeID(v1) != TypeID || CFStringGetLength(v1) == 0;
  }

  return result;
}

uint64_t sub_100005194(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  v14 = 0;
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      Value = CFDictionaryGetValue(theDict, @"UserInput");
      if (Value)
      {
        v8 = Value;
        Mutable = *(a1 + 56);
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          *(a1 + 56) = Mutable;
        }

        CFDictionaryApplyFunction(v8, sub_100005180, Mutable);
        if (!sub_100009E2C(*(a1 + 24)))
        {
          v10 = *(a1 + 56);
          if (my_CFDictionaryGetBooleanValue())
          {
            CFDictionarySetValue(*(a1 + 56), @"TLSSaveTrustExceptions", kCFBooleanFalse);
          }
        }
      }

      Copy = CFDictionaryCreateCopy(0, *(a1 + 40));
      sub_100002F80(a1, Copy, 0);
      my_CFRelease();
      if (sub_10000D360(1))
      {
        LogHandle = EAPLogGetLogHandle();
        v12 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v12))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, LogHandle, v12, "user_supplied_data", buf, 2u);
        }
      }

      if (*a1 != 3)
      {
        if (*a1 != 2)
        {
          return v14;
        }

LABEL_29:
        sub_10000564C(a1, 4, 0);
        return v14;
      }

LABEL_33:
      if (*(a1 + 472))
      {
        sub_100005BB8(a1, (a1 + 472));
      }

      return v14;
    }

    if (a2 == 3 && *a1 != 7)
    {
      sub_1000053FC(a1, 0, 0);
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return v14;
      }

      return 1;
    }

    v4 = CFDictionaryGetValue(theDict, @"Configuration");
    if (!v4)
    {
      return 1;
    }

    v5 = sub_100002F80(a1, v4, &v14);
    if ((v14 & 1) == 0)
    {
      v6 = v5;
      if (sub_10000A780(*(a1 + 24)))
      {
        if (*(a1 + 488) != 3)
        {
LABEL_30:
          if (!v6)
          {
            return v14;
          }

LABEL_31:
          sub_100004F1C(a1, 0);
          return v14;
        }

        if (*a1 != 3)
        {
          if (*a1 == 2)
          {
            if (!*(a1 + 144))
            {
              return v14;
            }

            goto LABEL_29;
          }

          goto LABEL_30;
        }

        if (v6)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }
  }

  return v14;
}

void sub_1000053FC(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v5 = dword_100018678;
  if (a2 == 2)
  {
    if (a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      sub_100009E94(*(a1 + 24));
      sub_100009160(*(a1 + 16));
      *a1 = 1;
      sub_1000074A0(a1);
      *(a1 + 264) = 0;
      sub_100009E88(*(a1 + 24), sub_1000053FC, a1, 1);
      sub_10000ABC4(*(a1 + 24));
    }

    if (a3)
    {
      v6 = *a3;
      if ((*a3)[1] != 3)
      {
        if (!(*a3)[1] && v6[4] == 1)
        {
          if (v6[8] == 1)
          {

            sub_10000564C(a1, 0, a3);
          }

          else
          {

            sub_1000070DC(a1, 0, a3);
          }
        }

        return;
      }

      if (v6[4] != 2)
      {
        return;
      }

      goto LABEL_20;
    }
  }

  v7 = *(a1 + 264);
  if (v7 != dword_10001867C)
  {
    *(a1 + 264) = v7 + 1;
LABEL_20:
    if ((sub_100009E9C(*(a1 + 24), 1, 0, 0) & 0x80000000) != 0)
    {
      LogHandle = EAPLogGetLogHandle();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v10))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, LogHandle, v10, "EAPOLSocketTransmit failed", v11, 2u);
      }
    }

    sub_1000091B8(*(a1 + 16), v5, 0, sub_1000053FC, a1, 2, 0);
    return;
  }

  sub_100009E94(*(a1 + 24));
  sub_100009160(*(a1 + 16));
  *a1 = 8;
  *(a1 + 272) = 1;
  sub_1000074A0(a1);
  v8 = *(a1 + 24);

  sub_100009E88(v8, sub_1000053FC, a1, 0);
}

void sub_10000564C(unsigned int *a1, int a2, unsigned __int8 **a3)
{
  v5 = dword_100018680;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a1[67] >= dword_100018684)
      {
        a1[67] = 0;
        a1[122] = 18;

        sub_1000085B0(a1, 0, 0);
      }

      else
      {

        sub_1000053FC(a1, 0, 0);
      }
    }

    else if (a2 == 4)
    {
      v8 = a1[30];
      if (sub_1000083A8(a1))
      {
        a1[122] = 0;
        sub_1000074A0(a1);
        v9 = *(a1 + 2);

        sub_1000091B8(v9, v5, 0, sub_10000564C, a1, 2, 0);
      }

      else
      {
        if ((*(a1 + 499) & 1) != 0 || (a1[125] & 1) != 0 || *(a1 + 501) == 1)
        {
          v16 = 20;
        }

        else
        {
          v16 = 3;
        }

        a1[122] = v16;

        sub_1000074A0(a1);
      }
    }
  }

  else
  {
    v7 = *a1;
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }
    }

    else
    {
      ++a1[67];
      a1[51] = 0;
      sub_100009E94(*(a1 + 3));
      sub_100009160(*(a1 + 2));
      *a1 = 2;
      *(a1 + 498) = 0;
      sub_100009E88(*(a1 + 3), sub_10000564C, a1, 1);
    }

    *(a1 + 272) = 0;
    v10 = *a3;
    if (!(*a3)[1])
    {
      if (v10[4] == 1 && v10[8] == 1)
      {
        Length = EAPPacketGetLength();
        my_CFRelease();
        v12 = memchr(v10 + 9, 0, (Length - 5));
        if (Length >= 6)
        {
          if (v12)
          {
            v13 = CFStringCreateWithBytes(0, v12 + 1, (Length - 5 + v10 + 9 - (v12 + 1)), 0x8000100u, 0);
            *v23 = v13;
            if (v13)
            {
              *(a1 + 27) = CFStringCreateArrayBySeparatingStrings(0, v13, @",");
              my_CFRelease();
            }
          }
        }

        if (sub_10000D360(1))
        {
          LogHandle = EAPLogGetLogHandle();
          v15 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v15))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, LogHandle, v15, "EAP Request Identity", v23, 2u);
          }
        }

        a1[30] = v10[5];
        if (sub_1000083A8(a1))
        {
          a1[122] = 0;
          *(a1 + 498) = 1;
          sub_1000074A0(a1);
          sub_1000091B8(*(a1 + 2), v5, 0, sub_10000564C, a1, 2, 0);
        }

        else if (*(a1 + 497) == 1)
        {
          v20 = EAPLogGetLogHandle();
          v21 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v20, v21))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v20, v21, "Acquired: cannot prompt for missing user name", v23, 2u);
          }

          a1[122] = 15;
          sub_1000085B0(a1, 0, 0);
        }

        else
        {
          if ((*(a1 + 499) & 1) != 0 || (a1[125] & 1) != 0 || *(a1 + 501) == 1)
          {
            v22 = 20;
          }

          else
          {
            v22 = 3;
          }

          a1[122] = v22;
          sub_1000074A0(a1);
        }
      }

      else if (a2)
      {

        sub_1000070DC(a1, 0, a3);
      }

      else
      {
        v17 = EAPLogGetLogHandle();
        v18 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v17, v18))
        {
          if (v7 > 8)
          {
            v19 = "<unknown>";
          }

          else
          {
            v19 = off_100014928[v7];
          }

          *v23 = 136315138;
          *&v23[4] = v19;
          _os_log_impl(&_mh_execute_header, v17, v18, "internal error: recursion avoided from state %s", v23, 0xCu);
        }
      }
    }
  }
}

void sub_100005BB8(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  if (!*(a1 + 144))
  {
    return;
  }

  v5 = v2[4];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (!*(a1 + 280))
      {

        sub_1000065AC(a1, 0, 0);
        return;
      }
    }

    else if (v5 == 4 && !*(a1 + 280))
    {
      *(a1 + 488) = 1;

      sub_1000085B0(a1, 0, 0);
      return;
    }

LABEL_30:
    if (!*(a1 + 280))
    {
      return;
    }

    my_CFRelease();
    my_CFRelease();
    *(a1 + 328) = *(a1 + 144);
    *(a1 + 336) = *(a1 + 152);
    *(a1 + 352) = *(a1 + 160);
    *(a1 + 360) = *(a1 + 168);
    *(a1 + 308) = *(a1 + 32);
    sub_100008FCC(a1);
    *(a1 + 296) = (sub_10000D224() & 0x1000) == 0;
    v20 = *(a1 + 280);
    v21 = EAPClientModulePluginProcess();
    v22 = *(a1 + 280);
    *(a1 + 448) = EAPClientModulePluginPublishProperties();
    if (v21 != 2)
    {
      if (v21 == 1)
      {
        LogHandle = EAPLogGetLogHandle();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v30))
        {
          v31 = sub_100009E14(*(a1 + 24), 0);
          v32 = *(a1 + 464);
          *buf = 136315394;
          v66 = v31;
          v67 = 2080;
          *v68 = v32;
          _os_log_impl(&_mh_execute_header, LogHandle, v30, "%s %s: successfully authenticated", buf, 0x16u);
        }

        if (sub_100009E2C(*(a1 + 24)))
        {
          sub_100008F3C(a1);
        }

        sub_1000065AC(a1, 0, 0);
        return;
      }

      if (v21)
      {
        return;
      }

      if (*(a1 + 488) == 3)
      {
        sub_100008EA8(a1, a2);
        v23 = *(a1 + 280);
        *(a1 + 440) = EAPClientModulePluginRequireProperties();
        v24 = *(a1 + 497);
        v25 = EAPLogGetLogHandle();
        if (v24 == 1)
        {
          v26 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = *(a1 + 440);
            *buf = 138412290;
            v66 = v27;
            _os_log_impl(&_mh_execute_header, v25, v26, "Authenticating: can't prompt for missing properties %@", buf, 0xCu);
          }

          v28 = 15;
LABEL_57:
          *(a1 + 488) = v28;
          goto LABEL_58;
        }

        v52 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v25, v52))
        {
          v53 = *(a1 + 440);
          *buf = 138412290;
          v66 = v53;
          _os_log_impl(&_mh_execute_header, v25, v52, "Authenticating: user input required for properties %@", buf, 0xCu);
        }
      }

      sub_1000074A0(a1);
      if (sub_100009E2C(*(a1 + 24)))
      {
        sub_100008F3C(a1);
      }

      return;
    }

    v33 = *(a1 + 280);
    v34 = EAPClientModulePluginFailureString();
    if (v34)
    {
      v35 = v34;
      v36 = EAPLogGetLogHandle();
      v37 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v36, v37))
      {
        *buf = 136315138;
        v66 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "error string '%s'", buf, 0xCu);
      }
    }

    v38 = EAPLogGetLogHandle();
    v39 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_58;
    }

    v40 = sub_100009E14(*(a1 + 24), 0);
    v41 = *(a1 + 464);
    v42 = *(a1 + 488);
    *buf = 136315650;
    v66 = v40;
    v67 = 2080;
    *v68 = v41;
    *&v68[8] = 1024;
    v69 = v42;
    v43 = "%s %s: authentication failed with status %d";
    v44 = v38;
    v45 = v39;
    v46 = 28;
LABEL_49:
    _os_log_impl(&_mh_execute_header, v44, v45, v43, buf, v46);
LABEL_58:
    sub_1000085B0(a1, 0, 0);
    return;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v6 = v2[8];
      v7 = *(a1 + 280);
      if (v7)
      {
        LODWORD(v7) = EAPClientModulePluginEAPType();
      }

      if (v7 != v6)
      {
        return;
      }
    }

    goto LABEL_30;
  }

  v8 = v2[8];
  if (!v2[8])
  {
    return;
  }

  v9 = dword_100018680;
  v10 = *(a1 + 280);
  if (v10)
  {
    LODWORD(v10) = EAPClientModulePluginEAPType();
  }

  if (v10 == v8)
  {
    goto LABEL_30;
  }

  v11 = *(a1 + 192);
  if (!v11)
  {
    goto LABEL_53;
  }

  v12 = v2[8];
  v13 = *(a1 + 200);
  if (v13 < 1)
  {
LABEL_24:
    v17 = *(a1 + 204);
    if (v17 < v13)
    {
      *(a1 + 204) = v17 + 1;
      v18 = *(v11 + 4 * v17);
      if (v18)
      {
        sub_100008A74(v12, a1 + 192);
        sub_100008BC4(a1, v2[5], v18);
        v19 = *(a1 + 16);

        sub_1000091B8(v19, v9, 0, sub_1000070DC, a1, 2, 0);
        return;
      }
    }

LABEL_53:
    if (sub_10000D360(1))
    {
      v47 = EAPLogGetLogHandle();
      v48 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v2[8];
        v50 = EAPTypeStr();
        v51 = v2[8];
        *buf = 136315394;
        v66 = v50;
        v67 = 1024;
        *v68 = v51;
        _os_log_impl(&_mh_execute_header, v47, v48, "EAP Request: %s (%d) not enabled", buf, 0x12u);
      }
    }

    sub_100008BC4(a1, v2[5], 0);
    v28 = 5;
    goto LABEL_57;
  }

  v14 = *(a1 + 192);
  v15 = *(a1 + 200);
  while (1)
  {
    v16 = *v14++;
    if (v16 == v12)
    {
      break;
    }

    if (!--v15)
    {
      goto LABEL_24;
    }
  }

  sub_100009160(*(a1 + 16));
  sub_100002B8C(a1);
  if (sub_100008D24(a1, v2[8]))
  {
    if (sub_10000D360(1))
    {
      v54 = EAPLogGetLogHandle();
      v55 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v2[8];
        v57 = EAPTypeStr();
        v58 = v2[8];
        *buf = 136315394;
        v66 = v57;
        v67 = 1024;
        *v68 = v58;
        _os_log_impl(&_mh_execute_header, v54, v55, "EAP Request: %s (%d) accepted", buf, 0x12u);
      }
    }

    sub_1000074A0(a1);
    goto LABEL_30;
  }

  if (*(a1 + 488) != 3)
  {
    v59 = EAPLogGetLogHandle();
    v60 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_58;
    }

    v61 = v2[8];
    v62 = EAPTypeStr();
    v63 = v2[8];
    v64 = *(a1 + 488);
    *buf = 136315650;
    v66 = v62;
    v67 = 1024;
    *v68 = v63;
    *&v68[4] = 1024;
    *&v68[6] = v64;
    v43 = "EAP Request: %s (%d) init failed, %d";
    v44 = v59;
    v45 = v60;
    v46 = 24;
    goto LABEL_49;
  }

  sub_100008EA8(a1, a2);

  sub_1000074A0(a1);
}

void sub_100006418(uint64_t a1, int a2)
{
  *(a1 + 268) = 0;
  if (!a2)
  {
    v6 = *(a1 + 16);
    v7 = sub_1000050AC;
    v8 = 1;
    v9 = 0;
    goto LABEL_21;
  }

  v3 = *a1;
  if (*a1 != 1)
  {
    if (v3 != 7)
    {
      v10 = 0;
      v11 = 5;
      goto LABEL_15;
    }

    if (*(a1 + 280))
    {
      if (sub_10000A48C(*(a1 + 24)))
      {
        if (sub_10000D360(1))
        {
          LogHandle = EAPLogGetLogHandle();
          v5 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v5))
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, LogHandle, v5, "Valid PMK Exists", v13, 2u);
          }
        }

        sub_1000065AC(a1, 0, 0);
        return;
      }

      v3 = *a1;
    }

    else
    {
      v3 = 7;
    }
  }

  v11 = 0;
  v10 = 500000;
LABEL_15:
  if (v3 == 4 && sub_10000A48C(*(a1 + 24)))
  {
    v12 = *(a1 + 16);

    sub_100009160(v12);
    return;
  }

  v6 = *(a1 + 16);
  v7 = sub_1000053FC;
  v8 = v11;
  v9 = v10;
LABEL_21:

  sub_1000091B8(v6, v8, v9, v7, a1, 0, 0);
}

void sub_1000065AC(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      sub_100009E94(*(a1 + 24));
      sub_100009160(*(a1 + 16));
      *(a1 + 268) = 0;
      *a1 = 4;
      v4 = *(a1 + 472);
      if (v4)
      {
        free(v4);
        *(a1 + 472) = 0;
        *(a1 + 480) = 0;
      }

      if ((*(a1 + 173) & 1) == 0)
      {
        Value = CFDictionaryGetValue(*(a1 + 48), @"NewPassword");
        TypeID = CFStringGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == TypeID)
          {
            v12 = *(a1 + 160);
            if (v12)
            {
              free(v12);
            }

            v13 = my_CFStringToCString();
            *(a1 + 160) = v13;
            if (v13)
            {
              *(a1 + 168) = strlen(v13);
            }
          }
        }
      }

      if (*(a1 + 173) == 1)
      {
        *(a1 + 174) = 1;
        v5 = *(a1 + 160);
        if (v5)
        {
          free(v5);
          *(a1 + 160) = 0;
        }

        *(a1 + 168) = 0;
      }

      sub_1000074A0(a1);
      v6 = *(a1 + 24);

      sub_100009E88(v6, sub_1000065AC, a1, 1);
    }

    return;
  }

  sub_100009160(*(a1 + 16));
  v8 = *a3;
  if (*(*a3 + 1) != 3)
  {
    if (!*(*a3 + 1) && v8[4] == 1)
    {
      v9 = v8[8];
      if (v9 == 2)
      {
        sub_100008820(*a1, (v8 + 4));
        v23 = v8[5];

        sub_100008958(a1);
      }

      else if (v9 == 1)
      {

        sub_10000564C(a1, 0, a3);
      }

      else
      {

        sub_1000070DC(a1, 0, a3);
      }
    }

    return;
  }

  if (!sub_100009E2C(*(a1 + 24)))
  {
    return;
  }

  v14 = *a3;
  if (*(v14 + 4) != 1)
  {
    return;
  }

  __len = 0;
  v15 = *(a1 + 280);
  v16 = EAPClientModulePluginSessionKey();
  if (!v16)
  {
    LogHandle = EAPLogGetLogHandle();
    v25 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v25))
    {
      return;
    }

    *macOut = 0;
    v26 = "session key is NULL";
LABEL_60:
    _os_log_impl(&_mh_execute_header, LogHandle, v25, v26, macOut, 2u);
    return;
  }

  v17 = v16;
  v18 = *(a1 + 280);
  v19 = EAPClientModulePluginServerKey();
  if (!v19)
  {
    LogHandle = EAPLogGetLogHandle();
    v25 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v25))
    {
      return;
    }

    *macOut = 0;
    v26 = "server key is NULL";
    goto LABEL_60;
  }

  v20 = v19;
  Length = EAPOLPacketGetLength();
  if (sub_10000D360(16))
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  v27 = SHIDWORD(__len);
  v28 = malloc_type_malloc(Length + 4, 0x100004052888210uLL);
  memmove(v28, v14, Length + 4);
  v28[4] = 0;
  v28[5] = 0;
  CCHmac(1u, v20, v27, v28, Length + 4, macOut);
  v30 = *(v14 + 32) != *macOut || *(v14 + 40) != *&macOut[8];
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"Signature: ");
    print_bytes_cfstr();
    v31 = "INVALID";
    if (!v30)
    {
      v31 = "valid";
    }

    CFStringAppendFormat(Mutable, 0, @" is %s", v31);
    free(v28);
    v32 = EAPLogGetLogHandle();
    v33 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v32, v33))
    {
      *macOut = 138412290;
      *&macOut[4] = Mutable;
      _os_log_impl(&_mh_execute_header, v32, v33, "%@", macOut, 0xCu);
    }

    CFRelease(Mutable);
  }

  else
  {
    free(v28);
  }

  if (v30)
  {
    LogHandle = EAPLogGetLogHandle();
    v25 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v25))
    {
      return;
    }

    *macOut = 0;
    v26 = "key signature mismatch, ignoring";
    goto LABEL_60;
  }

  v34 = *(v14 + 31);
  if (v34 >= 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v36 = EAPOLKeyDescriptorGetLength();
  if (Length < 0x2D)
  {
    if (sub_10000D360(1))
    {
      v44 = EAPLogGetLogHandle();
      v45 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = "Broadcast";
        if (v34 < 0)
        {
          v46 = "Unicast";
        }

        *macOut = 136315394;
        *&macOut[4] = v46;
        *&macOut[12] = 1024;
        *&macOut[14] = v36;
        _os_log_impl(&_mh_execute_header, v44, v45, "set %s key length %d using session key", macOut, 0x12u);
      }
    }

    sub_100009E38(*(a1 + 24), v35, *(v14 + 31) & 0x7F, v17, v36);
  }

  else
  {
    v50 = 0;
    v37 = __len + 16;
    v38 = malloc_type_malloc(v37, 0x72B20C2uLL);
    *v38 = *(v14 + 15);
    memmove(v38 + 1, v17, __len);
    dataOut = malloc_type_malloc((Length - 44), 0x424CC49CuLL);
    v40 = CCCrypt(1u, 4u, 0, v38, v37, 0, (v14 + 48), (Length - 44), dataOut, (Length - 44), &v50);
    v41 = sub_10000D360(1);
    if (v40)
    {
      if (v41)
      {
        v42 = EAPLogGetLogHandle();
        v43 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v42, v43))
        {
          *macOut = 67109120;
          *&macOut[4] = v40;
          _os_log_impl(&_mh_execute_header, v42, v43, "key process: RC4 decrypt failed %d", macOut, 8u);
        }
      }
    }

    else
    {
      if (v41)
      {
        v47 = EAPLogGetLogHandle();
        v48 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = "Broadcast";
          if (v34 < 0)
          {
            v49 = "Unicast";
          }

          *macOut = 136315394;
          *&macOut[4] = v49;
          *&macOut[12] = 1024;
          *&macOut[14] = v36;
          _os_log_impl(&_mh_execute_header, v47, v48, "set %s key length %d using descriptor", macOut, 0x12u);
        }
      }

      sub_100009E38(*(a1 + 24), v35, *(v14 + 31) & 0x7F, dataOut, v36);
    }

    free(dataOut);
    free(v38);
  }
}

void *sub_100006D78(uint64_t a1)
{
  sub_1000090E8();
  v11 = v2;
  if (v2)
  {
    v3 = v2;
    result = malloc_type_malloc(0x1F8uLL, 0x10F0040E1D3ED99uLL);
    if (result)
    {
      result[62] = 0;
      *(result + 29) = 0u;
      *(result + 30) = 0u;
      *(result + 27) = 0u;
      *(result + 28) = 0u;
      *(result + 25) = 0u;
      *(result + 26) = 0u;
      *(result + 23) = 0u;
      *(result + 24) = 0u;
      *(result + 21) = 0u;
      *(result + 22) = 0u;
      *(result + 19) = 0u;
      *(result + 20) = 0u;
      *(result + 17) = 0u;
      *(result + 18) = 0u;
      *(result + 15) = 0u;
      *(result + 16) = 0u;
      *(result + 13) = 0u;
      *(result + 14) = 0u;
      *(result + 11) = 0u;
      *(result + 12) = 0u;
      *(result + 9) = 0u;
      *(result + 10) = 0u;
      *(result + 7) = 0u;
      *(result + 8) = 0u;
      *(result + 5) = 0u;
      *(result + 6) = 0u;
      *(result + 3) = 0u;
      *(result + 4) = 0u;
      *(result + 1) = 0u;
      *(result + 2) = 0u;
      *result = 0u;
      result[2] = v3;
      result[3] = a1;
      return result;
    }

    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v9 = 0;
      v7 = "malloc failed";
      v8 = &v9;
      goto LABEL_8;
    }
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v10 = 0;
      v7 = "Timer_create failed";
      v8 = &v10;
LABEL_8:
      _os_log_impl(&_mh_execute_header, LogHandle, v6, v7, v8, 2u);
    }
  }

  sub_100009124(&v11);
  return 0;
}

void *sub_100006EB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100006D78(a1);
  v4 = v3;
  if (v3)
  {
    *(v3 + 8) = *(a2 + 32);
    v5 = *(a2 + 184);
    if (v5)
    {
      CFRetain(v5);
      v4[23] = *(a2 + 184);
    }

    v4[6] = CFRetain(*(a2 + 48));
    v6 = *(a2 + 56);
    if (v6)
    {
      v4[7] = CFDictionaryCreateMutableCopy(0, 0, v6);
    }

    v7 = *(a2 + 128);
    if (v7)
    {
      v4[16] = strdup(v7);
      *(v4 + 34) = *(a2 + 136);
    }

    v8 = *(a2 + 144);
    if (v8)
    {
      v4[18] = strdup(v8);
      *(v4 + 38) = *(a2 + 152);
    }

    v9 = *(a2 + 160);
    if (v9)
    {
      v4[20] = strdup(v9);
      *(v4 + 42) = *(a2 + 168);
    }

    v10 = *(a2 + 192);
    v4[26] = *(a2 + 208);
    *(v4 + 12) = v10;
    v11 = malloc_type_malloc(4 * *(a2 + 200), 0x100004052888210uLL);
    v4[24] = v11;
    memmove(v11, *(a2 + 192), 4 * *(a2 + 200));
    *(v4 + 497) = 1;
  }

  return v4;
}

_DWORD *sub_100006FD0(_DWORD *result)
{
  if (*result == 3)
  {
    v1 = result;
    if (sub_10000D360(1))
    {
      LogHandle = EAPLogGetLogHandle();
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v3))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, LogHandle, v3, "Simulating EAP Success packet", buf, 2u);
      }
    }

    *buf = 1;
    EAPOLPacketSetLength();
    v6 = 3;
    EAPPacketSetLength();
    v4[0] = buf;
    v4[1] = 8;
    return sub_1000070DC(v1, 1, v4);
  }

  return result;
}

void sub_1000070DC(unsigned int *a1, int a2, unsigned __int8 **a3)
{
  if (a2 == 2)
  {

    sub_1000053FC(a1, 0, 0);
  }

  else
  {
    v6 = *a1;
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      if (sub_100009E2C(*(a1 + 3)))
      {
        sub_10000A4C8(*(a1 + 3), 0, 0);
        *(a1 + 496) = 0;
      }

      *a1 = 3;
      sub_1000074A0(a1);
      sub_100009E88(*(a1 + 3), sub_1000070DC, a1, 1);
    }

    sub_100009160(*(a1 + 2));
    *(a1 + 272) = 0;
    v7 = *a3;
    if (!(*a3)[1])
    {
      v8 = v7[4];
      if ((v8 - 1) < 2)
      {
        v9 = v7[8];
        if (v9 == 2)
        {
          if (v8 != 2)
          {
            sub_100008820(*a1, (v7 + 4));
            v10 = v7[5];

            sub_100008958(a1);
          }

          return;
        }

        if (v9 == 1)
        {
          if (v8 != 2)
          {
            if (a2)
            {

              sub_10000564C(a1, 0, a3);
            }

            else
            {
              LogHandle = EAPLogGetLogHandle();
              v12 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(LogHandle, v12))
              {
                if (v6 > 8)
                {
                  v13 = "<unknown>";
                }

                else
                {
                  v13 = off_100014928[v6];
                }

                v14 = 136315138;
                v15 = v13;
                _os_log_impl(&_mh_execute_header, LogHandle, v12, "internal error: recursion avoided from state %s", &v14, 0xCu);
              }
            }
          }

          return;
        }
      }

      else if (v8 != 4 && v8 != 3)
      {
        return;
      }

      sub_100005BB8(a1, a3);
    }
  }
}

const __SCPreferences *sub_1000073C4(const __SCPreferences *result)
{
  if (result)
  {
    Value = SCPreferencesGetValue(result, @"Supplicant");
    result = CFDictionaryGetTypeID();
    if (Value)
    {
      v2 = result;
      result = CFGetTypeID(Value);
      if (result == v2)
      {
        dword_100018678 = sub_100009858(Value, @"StartPeriodSeconds", 5u);
        dword_10001867C = sub_100009858(Value, @"StartAttemptsMax", 3u);
        dword_100018680 = sub_100009858(Value, @"AuthPeriodSeconds", 5u);
        dword_100018684 = sub_100009858(Value, @"AuthAttemptsMax", 4u);
        result = sub_100009858(Value, @"HeldPeriodSeconds", 0x3Cu);
        dword_100018688 = result;
      }
    }
  }

  return result;
}

uint64_t sub_1000074A0(unsigned int *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = sub_10000ABB8(*(a1 + 3));
  if (v3)
  {
    v4 = v3;
    sub_100007C80(Mutable, @"Mode", v3);
    if (v4 == 3)
    {
      CFDictionarySetValue(Mutable, @"SystemMode", kCFBooleanTrue);
    }
  }

  v5 = *(a1 + 11);
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"UniqueIdentifier", v5);
  }

  sub_100007C80(Mutable, @"SupplicantState", *a1);
  if (*(a1 + 272) == 1)
  {
    sub_100007C80(Mutable, @"ClientStatus", 0);
    sub_100007C80(Mutable, @"DomainSpecificError", 0);
  }

  else
  {
    v6 = a1[114];
    if (v6)
    {
      v7 = *(a1 + 58);
      if (v7)
      {
        *buf = CFStringCreateWithCString(0, v7, 0x600u);
        CFDictionarySetValue(Mutable, @"EAPTypeName", *buf);
        my_CFRelease();
      }

      sub_100007C80(Mutable, @"EAPType", v6);
    }

    v8 = a1[123];
    sub_100007C80(Mutable, @"ClientStatus", a1[122]);
    sub_100007C80(Mutable, @"DomainSpecificError", v8);
    v9 = a1[122];
    if (v9 == 3)
    {
      if (*(a1 + 18))
      {
        v16 = *(a1 + 55);
        v17 = Mutable;
      }

      else
      {
        v17 = Mutable;
        v16 = 0;
      }

      sub_100007BE4(v17, v16);
    }

    else if (v9 == 20)
    {
      if (*(a1 + 499) == 1)
      {
        v10 = sub_100009E54(*(a1 + 3));
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = @"network";
        }

        v12 = *(a1 + 9);
        LogHandle = EAPLogGetLogHandle();
        v14 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v14))
        {
          *buf = 138412546;
          *&buf[4] = v12;
          v60 = 2112;
          v61 = v11;
          _os_log_impl(&_mh_execute_header, LogHandle, v14, "fetching credentials with provider url: [%@], ssid:[%@]", buf, 0x16u);
        }

        v15 = sub_100001F88(v12, v11, &_dispatch_main_q, sub_100004914, a1);
        if (v15)
        {
          *(a1 + 10) = v15;
        }
      }

      else if (*(a1 + 500) == 1)
      {
        v18 = EAPLogGetLogHandle();
        v19 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "fetching EAP configuration from MIB source", buf, 2u);
        }

        sub_10000930C(sub_100007CDC, a1);
      }

      else if (*(a1 + 501) == 1)
      {
        v36 = EAPLogGetLogHandle();
        v37 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v36, v37))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "fetching EAP configuration from Factory OTA client", buf, 2u);
        }

        sub_100000F20(sub_100007E84, a1);
      }
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      CFDictionarySetValue(Mutable, @"AdditionalProperties", v20);
    }

    v21 = *(a1 + 27);
    if (v21)
    {
      CFDictionarySetValue(Mutable, @"IdentityAttributes", v21);
    }
  }

  sub_100007C80(Mutable, @"ConfigurationGeneration", a1[8]);
  Current = CFAbsoluteTimeGetCurrent();
  v23 = CFDateCreate(0, Current);
  CFDictionarySetValue(Mutable, @"LastStatusTimestamp", v23);
  if (*a1 == 4)
  {
    v24 = *(a1 + 1);
    if (!v24)
    {
      v24 = CFRetain(v23);
      *(a1 + 1) = v24;
    }

    CFDictionarySetValue(Mutable, @"Timestamp", v24);
  }

  CFRelease(v23);
  if (sub_10000D360(5))
  {
    sub_10000D360(4);
    if (Mutable && (*a1 == 5 || sub_10000D360(4)))
    {
      v25 = my_CFPropertyListCopyAsXMLString();
    }

    else
    {
      v25 = 0;
    }

    v26 = a1[122];
    v27 = EAPLogGetLogHandle();
    v28 = _SC_syslog_os_log_mapping();
    v29 = os_log_type_enabled(v27, v28);
    if (v26 == 1002)
    {
      if (v29)
      {
        v32 = *a1;
        if (v32 > 8)
        {
          v33 = "<unknown>";
        }

        else
        {
          v33 = off_100014928[v32];
        }

        v49 = a1[122];
        v50 = sub_100004B5C(v49);
        v51 = a1[123];
        v52 = ":\n";
        *buf = 136316418;
        *&buf[4] = v33;
        if (!v25)
        {
          v52 = "";
        }

        v60 = 2080;
        v53 = &stru_100014DB0;
        v61 = v50;
        if (v25)
        {
          v53 = v25;
        }

        v62 = 1024;
        v63 = v49;
        v64 = 1024;
        *v65 = v51;
        *&v65[4] = 2080;
        *&v65[6] = v52;
        *&v65[14] = 2112;
        *&v65[16] = v53;
        v45 = "State=%s Status=%s (%d): %d%s%@";
        v46 = v27;
        v47 = v28;
        v48 = 54;
        goto LABEL_77;
      }
    }

    else if (v26 == 1001)
    {
      if (v29)
      {
        v30 = *a1;
        if (v30 > 8)
        {
          v31 = "<unknown>";
        }

        else
        {
          v31 = off_100014928[v30];
        }

        v38 = a1[122];
        v39 = sub_100004B5C(v38);
        v40 = a1[123];
        v41 = EAPSecurityErrorString();
        v42 = a1[123];
        v43 = ":\n";
        *buf = 136316674;
        *&buf[4] = v31;
        if (!v25)
        {
          v43 = "";
        }

        v60 = 2080;
        v44 = &stru_100014DB0;
        v61 = v39;
        if (v25)
        {
          v44 = v25;
        }

        v62 = 1024;
        v63 = v38;
        v64 = 2080;
        *v65 = v41;
        *&v65[8] = 1024;
        *&v65[10] = v42;
        *&v65[14] = 2080;
        *&v65[16] = v43;
        v66 = 2112;
        v67 = v44;
        v45 = "State=%s Status=%s (%d): %s (%d)%s%@";
        v46 = v27;
        v47 = v28;
        v48 = 64;
LABEL_77:
        _os_log_impl(&_mh_execute_header, v46, v47, v45, buf, v48);
      }
    }

    else if (v29)
    {
      v34 = *a1;
      if (v34 > 8)
      {
        v35 = "<unknown>";
      }

      else
      {
        v35 = off_100014928[v34];
      }

      v54 = a1[122];
      v55 = sub_100004B5C(v54);
      *buf = 136316162;
      v56 = ":\n";
      *&buf[4] = v35;
      if (!v25)
      {
        v56 = "";
      }

      v60 = 2080;
      v61 = v55;
      v62 = 1024;
      v57 = &stru_100014DB0;
      if (v25)
      {
        v57 = v25;
      }

      v63 = v54;
      v64 = 2080;
      *v65 = v56;
      *&v65[8] = 2112;
      *&v65[10] = v57;
      v45 = "State=%s Status=%s (%d)%s%@";
      v46 = v27;
      v47 = v28;
      v48 = 48;
      goto LABEL_77;
    }

    my_CFRelease();
  }

  sub_10000A78C(*(a1 + 3));
  return my_CFRelease();
}

void sub_100007BE4(CFMutableDictionaryRef theDict, void *value)
{
  if (value)
  {

    CFDictionarySetValue(theDict, @"RequiredProperties", value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, @"UserName");
    CFDictionarySetValue(theDict, @"RequiredProperties", Mutable);
    my_CFRelease();
  }
}

uint64_t sub_100007C80(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v6);
  return my_CFRelease();
}

void sub_100007CDC(uint64_t a1, uint64_t a2)
{
  LogHandle = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v5))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, LogHandle, v5, "mib_access_callback", v11, 2u);
  }

  if (*(a1 + 488) == 20)
  {
    if (!sub_100004D1C(a1, a2))
    {
      v6 = EAPLogGetLogHandle();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v6, v7))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "failed to process EAP configuration from MIB", v11, 2u);
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
      *v11 = MutableCopy;
      *(a1 + 500) = 0;
      sub_100002F80(a1, MutableCopy, 0);
      my_CFRelease();
    }
  }

  else
  {
    v9 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      *v11 = 136315138;
      *&v11[4] = "OtherInputRequired";
      _os_log_impl(&_mh_execute_header, v9, v10, "supplicant's last status is not %s", v11, 0xCu);
    }
  }
}

void sub_100007E84(uint64_t a1, CFTypeRef *a2)
{
  LogHandle = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v5))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, LogHandle, v5, "factory_ota_access_callback", buf, 2u);
  }

  if (*(a1 + 488) == 20)
  {
    if (a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
      *buf = MutableCopy;
      if (*a2)
      {
        *(a1 + 104) = CFRetain(*a2);
      }

      *(a1 + 112) = CFRetain(a2[1]);
      sub_100002F80(a1, MutableCopy, 0);
      my_CFRelease();
      sub_10000485C(a1);
    }

    else
    {
      v9 = EAPLogGetLogHandle();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v10))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "received NULL EAP configuration from MIB", v14, 2u);
      }

      v11 = EAPLogGetLogHandle();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "failed to process EAP configuration from Factory OTA", buf, 2u);
      }

      v13 = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
      *buf = v13;
      *(a1 + 501) = 0;
      sub_100002F80(a1, v13, 0);
      my_CFRelease();
    }
  }

  else
  {
    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 136315138;
      *&buf[4] = "OtherInputRequired";
      _os_log_impl(&_mh_execute_header, v7, v8, "supplicant's last status is not %s", buf, 0xCu);
    }
  }
}

void sub_1000080C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 224) && EAPOLClientItemIDGetProfileID())
  {
    v5 = EAPOLClientConfigurationCreateWithAuthorization();
    if (v5)
    {
      v6 = v5;
      if (!EAPOLClientConfigurationGetProfileWithID())
      {
        LogHandle = EAPLogGetLogHandle();
        v8 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v8))
        {
          v9 = sub_100009E14(*(a4 + 24), 0);
          v12 = 136315138;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, LogHandle, v8, "%s: profile no longer exists, stopping", &v12, 0xCu);
        }

        sub_100009E14(*(a4 + 24), 0);
        EAPOLControlStop();
      }

      CFRelease(v6);
    }

    else
    {
      v10 = EAPLogGetLogHandle();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "EAPOLClientConfiguration() failed", &v12, 2u);
      }
    }
  }
}

BOOL sub_100008220(const __CFDictionary *a1, const void *a2, int a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    TypeID = CFBooleanGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        a3 = CFBooleanGetValue(Value);
      }
    }
  }

  return a3 != 0;
}

void *sub_100008284(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x9FCB3196uLL);
  BytePtr = CFDataGetBytePtr(a1);
  memmove(v3, BytePtr, Length);
  *(v3 + Length) = 0;
  return v3;
}

const __CFArray *sub_1000082EC(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        valuePtr = 0;
        TypeID = CFNumberGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == TypeID && CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr) && valuePtr == 13)
          {
            break;
          }
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_1000083A8(uint64_t a1)
{
  v15 = 0;
  if (*(a1 + 280))
  {
    *buf = EAPClientModulePluginCopyIdentity();
    if (*buf)
    {
      v2 = my_CFStringToCString();
      my_CFRelease();
      if (v2)
      {
        v3 = *(a1 + 144);
        if (v3)
        {
          free(v3);
        }

        *(a1 + 144) = v2;
        *(a1 + 152) = strlen(v2);
        *(a1 + 172) = 1;
      }
    }
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    v5 = 136;
    if (*(a1 + 128))
    {
      v6 = *(a1 + 128);
    }

    else
    {
      v5 = 152;
      v6 = *(a1 + 144);
    }

    v7 = *(a1 + v5);
    if (sub_10000D360(1))
    {
      LogHandle = EAPLogGetLogHandle();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v9))
      {
        *buf = 68157954;
        *&buf[4] = v7;
        v17 = 2080;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, LogHandle, v9, "EAP Response Identity %.*s", buf, 0x12u);
      }
    }

    v10 = EAPPacketCreate();
    if ((sub_100009E9C(*(a1 + 24), 0, v10, v15) & 0x80000000) != 0)
    {
      v11 = EAPLogGetLogHandle();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v11, v12))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "EAPOLSocketTransmit failed", v14, 2u);
      }
    }

    if (v10 != buf)
    {
      free(v10);
    }
  }

  return v4 != 0;
}

void sub_1000085B0(uint64_t a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 2:

      sub_1000053FC(a1, 0, 0);
      break;
    case 1:
      v11 = *a3;
      if (!*(*a3 + 1) && v11[4] == 1)
      {
        v12 = v11[8];
        if (v12 == 2)
        {
          sub_100008820(*a1, (v11 + 4));
          v13 = v11[5];

          sub_100008958(a1);
        }

        else if (v12 == 1)
        {

          sub_10000564C(a1, 0, a3);
        }

        else
        {

          sub_1000070DC(a1, 0, a3);
        }
      }

      break;
    case 0:
      v4 = dword_100018688;
      if (sub_100009E2C(*(a1 + 24)))
      {
        sub_10000A4C8(*(a1 + 24), 0, 0);
        *(a1 + 496) = 0;
      }

      sub_100009E94(*(a1 + 24));
      sub_100009160(*(a1 + 16));
      *a1 = 5;
      sub_1000074A0(a1);
      *(a1 + 120) = -1;
      *(a1 + 204) = 0;
      v5 = *(a1 + 488);
      if (v5 == 1 || v5 == 1001 && ((v6 = *(a1 + 492), v6 == -50) || v6 == -9809))
      {
        if ((*(a1 + 280) || *(a1 + 498) == 1) && (*(a1 + 497) & 1) == 0)
        {
          *(a1 + 176) = 1;
          my_CFRelease();
          *(a1 + 175) = 1;
          v7 = *(a1 + 144);
          if (v7)
          {
            free(v7);
            *(a1 + 144) = 0;
          }

          *(a1 + 152) = 0;
          *(a1 + 172) = 0;
          *(a1 + 174) = 1;
          v8 = *(a1 + 160);
          if (v8)
          {
            free(v8);
            *(a1 + 160) = 0;
          }

          *(a1 + 168) = 0;
        }
      }

      *(a1 + 488) = 0;
      v9 = *(a1 + 472);
      if (v9)
      {
        free(v9);
        *(a1 + 472) = 0;
        *(a1 + 480) = 0;
      }

      sub_100002B8C(a1);
      sub_100009E88(*(a1 + 24), sub_1000085B0, a1, 1);
      v10 = *(a1 + 16);

      sub_1000091B8(v10, v4, 0, sub_1000085B0, a1, 2, 0);
      break;
  }
}

uint64_t sub_100008820(unsigned int a1, uint64_t a2)
{
  Length = EAPPacketGetLength();
  if (Length < 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = CFStringCreateWithBytes(0, (a2 + 5), Length - 5, 0x8000100u, 0);
  }

  LogHandle = EAPLogGetLogHandle();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v7))
  {
    if (a1 > 8)
    {
      v8 = "<unknown>";
    }

    else
    {
      v8 = off_100014928[a1];
    }

    v9 = &stru_100014DB0;
    if (v5)
    {
      v9 = v5;
    }

    *buf = 136315394;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, LogHandle, v7, "%s: Notification '%@'", buf, 0x16u);
  }

  return my_CFRelease();
}

void sub_100008958(uint64_t a1)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  if (sub_10000D360(1))
  {
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v3, "EAP Response Notification", buf, 2u);
    }
  }

  EAPPacketCreate();
  if ((sub_100009E9C(*(a1 + 24), 0, &v9, 5) & 0x80000000) != 0)
  {
    v4 = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v4, v5))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "EAPOLSocketTransmit notification failed", v6, 2u);
    }
  }
}

void sub_100008A74(int a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*a2 + 4 * v5);
      v7 = EAPTypeStr();
      CFStringAppendFormat(Mutable, 0, @"%s(%d) ", v7, *(*a2 + 4 * v5++));
    }

    while (v5 < *(a2 + 8));
  }

  if (CFStringGetLength(Mutable) >= 1 && sub_10000D360(1))
  {
    LogHandle = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v9))
    {
      *buf = 67109378;
      v11 = a1;
      v12 = 2112;
      v13 = Mutable;
      _os_log_impl(&_mh_execute_header, LogHandle, v9, "EAP Request: NAK'ing EAP type %d with %@", buf, 0x12u);
    }
  }

  CFRelease(Mutable);
}

void sub_100008BC4(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  if (a3)
  {
    v4 = *(a1 + 200);
    v5 = EAPPacketCreate();
    v6 = v5;
    if (*(a1 + 200) >= 1)
    {
      v7 = 0;
      do
      {
        *(v5 + v7 + 5) = *(*(a1 + 192) + 4 * v7);
        ++v7;
      }

      while (v7 < *(a1 + 200));
    }
  }

  else
  {
    v6 = EAPPacketCreate();
    v6[5] = 0;
  }

  if ((sub_100009E9C(*(a1 + 24), 0, v6, v11) & 0x80000000) != 0)
  {
    LogHandle = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v9))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v9, "EAPOLSocketTransmit nak failed", v10, 2u);
    }
  }

  if (v6 != &v12)
  {
    free(v6);
  }
}

uint64_t sub_100008D24(uint64_t a1, int a2)
{
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  if (*(a1 + 280))
  {
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v3, "already initialized", v9, 2u);
    }
  }

  else
  {
    result = EAPClientModuleLookup();
    if (!result)
    {
      return result;
    }

    v7 = result;
    my_CFRelease();
    my_CFRelease();
    *(a1 + 432) = 0;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 312) = sub_100009E14(*(a1 + 24), (a1 + 320));
    v8 = *(a1 + 24);
    *(a1 + 304) = sub_100009E70() - 4;
    *(a1 + 328) = *(a1 + 144);
    *(a1 + 336) = *(a1 + 152);
    *(a1 + 352) = *(a1 + 160);
    *(a1 + 360) = *(a1 + 168);
    sub_100008FCC(a1);
    *(a1 + 384) = *(a1 + 184);
    *(a1 + 296) = (sub_10000D224() & 0x1000) == 0;
    *(a1 + 376) = sub_10000ABB8(*(a1 + 24)) == 3;
    *(a1 + 488) = EAPClientModulePluginInit();
    *(a1 + 464) = EAPClientModulePluginEAPName();
    *(a1 + 456) = a2;
    if (*(a1 + 488))
    {
      return 0;
    }

    *(a1 + 280) = v7;
  }

  return 1;
}

void sub_100008EA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 472);
  if (v2 != *a2)
  {
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
    v5 = malloc_type_malloc(*(a2 + 8), 0x100004052888210uLL);
    *(a1 + 472) = v5;
    v6 = *(a2 + 8);
    *(a1 + 480) = v6;
    memmove(v5, *a2, v6);
    if (v2)
    {

      free(v2);
    }
  }
}

uint64_t sub_100008F3C(uint64_t result)
{
  if ((*(result + 496) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 280);
    result = EAPClientModulePluginMasterSessionKeyCopyBytes();
    if (result)
    {
      result = sub_10000A4C8(*(v1 + 24), v3, result);
      if (result)
      {
        *(v1 + 496) = 1;
      }
    }
  }

  return result;
}

CFTypeRef sub_100008FCC(uint64_t a1)
{
  my_CFRelease();
  Value = CFDictionaryGetValue(*(a1 + 48), @"TLSTrustExceptionsDomain");
  v3 = CFDictionaryGetValue(*(a1 + 48), @"TLSTrustExceptionsID");
  if (Value)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = sub_100009E54(*(a1 + 24));
    if (v5)
    {
      v6 = v5;
      v7 = @"WirelessSSID";
    }

    else
    {
      v6 = *(a1 + 88);
      if (v6)
      {
        v7 = @"ProfileID";
      }

      else
      {
        v9 = sub_100009E14(*(a1 + 24), 0);
        v6 = CFStringCreateWithCString(0, v9, 0x600u);
        v7 = @"NetworkInterfaceName";
      }
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 48));
    CFDictionarySetValue(MutableCopy, @"TLSTrustExceptionsDomain", v7);
    CFDictionarySetValue(MutableCopy, @"TLSTrustExceptionsID", v6);
    *(a1 + 368) = MutableCopy;
    return my_CFRelease();
  }

  else
  {
    result = CFRetain(*(a1 + 48));
    *(a1 + 368) = result;
  }

  return result;
}

double sub_1000090E8()
{
  v0 = malloc_type_malloc(0x30uLL, 0x1080040A1D151D1uLL);
  if (v0)
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

void sub_100009124(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    sub_100009160(*a1);
    free(v1);
    *a1 = 0;
  }
}

uint64_t sub_100009160(uint64_t result)
{
  if (result)
  {
    *(result + 40) = 0;
    *result = 0;
    result = *(result + 32);
    if (result)
    {
      CFRunLoopTimerInvalidate(result);

      return my_CFRelease();
    }
  }

  return result;
}

uint64_t sub_1000091B8(CFRunLoopTimerRef *a1, uint64_t a2, int a3, __CFRunLoopTimer *a4, __CFRunLoopTimer *a5, __CFRunLoopTimer *a6, __CFRunLoopTimer *a7)
{
  memset(&v23, 0, sizeof(v23));
  if (!a1)
  {
    return 0;
  }

  sub_100009160(a1);
  *(a1 + 40) = 0;
  if (!a4)
  {
    return 0;
  }

  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  v14 = 1;
  *(a1 + 40) = 1;
  v15 = a2 < 1;
  v16 = a3 < 1000;
  Current = CFAbsoluteTimeGetCurrent();
  v18 = 0.0;
  if (!v15 || !v16)
  {
    v18 = a2;
  }

  v19 = v18 + Current;
  v20 = a3 / 1000000.0;
  if (v15 && v16)
  {
    v20 = 0.001;
  }

  v23.info = a1;
  a1[4] = CFRunLoopTimerCreate(0, v20 + v19, 0.0, 0, 0, sub_1000092E0, &v23);
  v21 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v21, a1[4], kCFRunLoopDefaultMode);
  return v14;
}

uint64_t sub_1000092E0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*(a2 + 40) == 1)
    {
      *(a2 + 40) = 0;
      return v2(*(a2 + 8), *(a2 + 16), *(a2 + 24));
    }
  }

  return result;
}

void sub_10000930C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (qword_1000186C0 != -1)
  {
    sub_10000E670();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000093C0;
  v5[3] = &unk_1000149B0;
  v5[4] = a1;
  v5[5] = a2;
  [qword_1000186C8 eapConfigurationWithCompletion:v5];
  objc_autoreleasePoolPop(v4);
}

void sub_1000093C0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      *buf = 138412290;
      v22 = a3;
      v7 = "failed to fetch EAP configuration from MIB, error: %@";
      v8 = LogHandle;
      v9 = v6;
      v10 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v12 = CFGetTypeID([objc_msgSend(a2 "tlsCertificateChain")]);
  if (v12 != SecCertificateGetTypeID())
  {
    v16 = EAPLogGetLogHandle();
    v17 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v7 = "received invalid client certificate from MIB";
LABEL_13:
    v8 = v16;
    v9 = v17;
    v10 = 2;
    goto LABEL_14;
  }

  v13 = CFGetTypeID([a2 tlsKey]);
  if (v13 != SecKeyGetTypeID())
  {
    v16 = EAPLogGetLogHandle();
    v17 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v7 = "received invalid client private key from MIB";
    goto LABEL_13;
  }

  v14 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
  *v14 = 0;
  v14[1] = 0;
  [objc_msgSend(a2 "tlsCertificateChain")];
  [a2 tlsKey];
  v14[1] = SecIdentityCreate();
  if ([objc_msgSend(a2 "tlsCertificateChain")] >= 2)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, [objc_msgSend(a2 "tlsCertificateChain")], objc_msgSend(a2, "tlsCertificateChain"));
    CFArrayRemoveValueAtIndex(MutableCopy, 0);
    *v14 = MutableCopy;
  }

LABEL_16:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000965C;
  block[3] = &unk_100014990;
  v19 = *(a1 + 32);
  v20 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

void *sub_10000965C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return v1(result[5], result[6]);
  }

  return result;
}

id sub_100009674()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_1000186C0 != -1)
  {
    sub_10000E670();
  }

  v1 = [qword_1000186C8 isInBoxUpdateMode:0];
  objc_autoreleasePoolPop(v0);
  return v1;
}

_OWORD *sub_1000096F8(CFSocketNativeHandle a1)
{
  memset(&v7, 0, sizeof(v7));
  v2 = malloc_type_malloc(0x30uLL, 0x10A004024772EFBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    v7.info = v2;
    *(v2 + 4) = a1;
    v4 = CFSocketCreateWithNative(0, a1, 1uLL, sub_1000097B8, &v7);
    *(v3 + 1) = v4;
    *v3 = CFSocketCreateRunLoopSource(0, v4, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, *v3, kCFRunLoopDefaultMode);
  }

  return v3;
}

uint64_t sub_1000097B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5[3];
  if (v5)
  {
    return v5(a5[4], a5[5]);
  }

  return result;
}

void sub_1000097CC(CFRunLoopSourceRef **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopRemoveSource(Current, *v2, kCFRunLoopDefaultMode);
        CFSocketInvalidate(v2[1]);
        CFRelease(v2[1]);
        v2[1] = 0;
        CFRelease(*v2);
      }

      free(v2);
    }

    *a1 = 0;
  }
}

void *sub_100009844(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_100009860(const __CFDictionary *a1, const void *a2, unsigned int a3, int a4)
{
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && !CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    valuePtr = a3;
  }

  if (a4)
  {
    if (sub_10000D360(8))
    {
      LogHandle = EAPLogGetLogHandle();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v10))
      {
        *buf = 138412546;
        v14 = a2;
        v15 = 1024;
        v16 = valuePtr;
        _os_log_impl(&_mh_execute_header, LogHandle, v10, "%@ = %d", buf, 0x12u);
      }
    }
  }

  return valuePtr;
}

void sub_100009988(const __SCPreferences *a1)
{
  if (!a1)
  {
    return;
  }

  Value = SCPreferencesGetValue(a1, @"MTU");
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    valuePtr = 0;
    if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      LogHandle = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v13))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v8 = "com.apple.eapolclient.MTU invalid";
      v9 = LogHandle;
      v10 = v13;
      v11 = 2;
      goto LABEL_10;
    }

    v4 = valuePtr;
    v5 = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    v7 = os_log_type_enabled(v5, v6);
    if (v4 > 575)
    {
      if (v7)
      {
        *buf = 67109120;
        *v29 = valuePtr;
        _os_log_impl(&_mh_execute_header, v5, v6, "Using MTU %d", buf, 8u);
      }

      dword_1000186D0 = valuePtr;
      goto LABEL_14;
    }

    if (v7)
    {
      *buf = 67109632;
      *v29 = valuePtr;
      *&v29[4] = 1024;
      *&v29[6] = 576;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = 1280;
      v8 = "com.apple.eapolclient.MTU %d < %d, using default %d";
      v9 = v5;
      v10 = v6;
      v11 = 20;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
    }
  }

LABEL_14:
  v14 = SCPreferencesGetValue(a1, @"Preauthentication");
  v15 = CFDictionaryGetTypeID();
  if (v14 && CFGetTypeID(v14) == v15)
  {
    v16 = CFDictionaryGetValue(v14, @"EnablePreauthentication");
    v17 = CFBooleanGetTypeID();
    if (v16)
    {
      if (CFGetTypeID(v16) == v17)
      {
        LODWORD(v16) = CFBooleanGetValue(v16);
      }

      else
      {
        LODWORD(v16) = 0;
      }
    }

    if (sub_10000D360(8))
    {
      v18 = EAPLogGetLogHandle();
      v19 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = "false";
        if (v16 == 1)
        {
          v20 = "true";
        }

        *buf = 138412546;
        *v29 = @"EnablePreauthentication";
        *&v29[8] = 2080;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v18, v19, "%@ = %s", buf, 0x16u);
      }
    }

    byte_1000186D4 = v16 != 0;
    if (v16)
    {
      dword_10001868C = sub_100009860(v14, @"ScanDelayAuthenticatedSeconds", 0xAu, 1);
      dword_100018690 = sub_100009860(v14, @"ScanDelayRoamSeconds", 0xAu, 1);
      dword_100018694 = sub_100009860(v14, @"ScanPeriodSeconds", 0xFFFFFFFF, 1);
      dword_100018698 = sub_100009860(v14, @"NumberOfScans", 1u, 1);
    }
  }

  v21 = SCPreferencesGetValue(a1, @"Testing");
  v22 = CFDictionaryGetTypeID();
  if (v21 && CFGetTypeID(v21) == v22)
  {
    dword_1000186D8 = sub_100009860(v21, @"TransmitPacketLossPercent", 0, 0);
    if (dword_1000186D8)
    {
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 67109120;
        *v29 = dword_1000186D8;
        _os_log_impl(&_mh_execute_header, v23, v24, "Will simulate %d%% transmit packet loss", buf, 8u);
      }
    }

    dword_1000186DC = sub_100009860(v21, @"ReceivePacketLossPercent", 0, 0);
    if (dword_1000186DC)
    {
      v25 = EAPLogGetLogHandle();
      v26 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 67109120;
        *v29 = dword_1000186DC;
        _os_log_impl(&_mh_execute_header, v25, v26, "Will simulate %d%% receive packet loss", buf, 8u);
      }
    }
  }
}

uint64_t sub_100009E14(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *a2 = *(v2 + 24);
  }

  return v2 + 8;
}

uint64_t sub_100009E54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64))
  {
    return *(v1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100009E70()
{
  if (dword_1000186D0)
  {
    return dword_1000186D0;
  }

  else
  {
    return 1280;
  }
}

void *sub_100009E88(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t sub_100009E9C(uint64_t a1, int a2, const void *a3, int a4)
{
  v6 = a2;
  if (a2)
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      free(v8);
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    sub_100009F20(a1, a3, a4);
  }

  v9 = *(a1 + 32);

  return sub_100009F9C(v9, a1, v6, a3, a4);
}

void sub_100009F20(uint64_t a1, const void *a2, int a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    free(v6);
  }

  if (a2)
  {
    v7 = malloc_type_malloc(a3, 0x100004052888210uLL);
    *(a1 + 56) = v7;
    memmove(v7, a2, a3);
  }

  else
  {
    a3 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 64) = a3;
}

uint64_t sub_100009F9C(uint64_t a1, int *a2, char a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v5 = (a5 + 18);
  }

  else
  {
    v5 = 18;
  }

  if (a4)
  {
    v6 = a5;
  }

  else
  {
    v6 = 0;
  }

  if (v5 >= 0x641)
  {
    LogHandle = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v8))
    {
      v38 = 67109376;
      *v39.octet = v5;
      *&v39.octet[4] = 2048;
      v40[0] = 1600;
      v9 = "total size of EAPOL frame (%u bytes) is greater than the EAPOL socket buffer size (%lu bytes)";
      v10 = &v38;
      v11 = LogHandle;
      v12 = v8;
      v13 = 18;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v11, v12, v9, v10, v13);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  __memset_chk();
  if (*(a1 + 144) == a2)
  {
    if (*(a1 + 64) == 1)
    {
      if ((*(a1 + 110) & 1) == 0)
      {
        sub_10000C484(a1, 0);
        if ((*(a1 + 110) & 1) == 0)
        {
          if (!sub_10000D360(1))
          {
            return 0xFFFFFFFFLL;
          }

          v33 = EAPLogGetLogHandle();
          v34 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v33, v34))
          {
            return 0xFFFFFFFFLL;
          }

          *&v37[0].sa_len = 67109120;
          *&v37[0].sa_data[2] = v6 + 4;
          v9 = "Transmit: unknown BSSID, not sending %d bytes";
          v10 = v37;
          v11 = v33;
          v12 = v34;
          v13 = 8;
          goto LABEL_32;
        }
      }

      a2 = (a1 + 104);
      v18 = -29048;
    }

    else
    {
      v18 = -29048;
      a2 = &dword_10000FAB0;
    }
  }

  else
  {
    v18 = -14456;
  }

  v38 = *a2;
  *v39.octet = *(a2 + 2);
  WORD1(v40[0]) = v18;
  *&v39.octet[2] = *(a1 + 28);
  LOWORD(v40[0]) = *(a1 + 32);
  BYTE4(v40[0]) = 1;
  BYTE5(v40[0]) = a3;
  EAPOLPacketSetLength();
  if (a4)
  {
    __memmove_chk();
  }

  *&v37[0].sa_data[8] = 0;
  *v37[0].sa_data = 0;
  *&v37[0].sa_len = 6930;
  if (sub_10000D360(16))
  {
    Mutable = CFStringCreateMutable(0, 0);
    v20 = ether_ntoa(&v38);
    sub_10000C7EC(v20, v40 + 4, (v6 + 4), 0, Mutable);
    CFStringAppendFormat(Mutable, 0, @"\n");
    EAPOLPacketIsValid();
    v21 = EAPLogGetLogHandle();
    v22 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v21, v22))
    {
      v35 = 138412290;
      v36 = Mutable;
      _os_log_impl(&_mh_execute_header, v21, v22, "%@", &v35, 0xCu);
    }

    CFRelease(Mutable);
  }

  else if (sub_10000D360(1))
  {
    v23 = ether_ntoa(&v38);
    sub_10000C7EC(v23, v40 + 4, (v6 + 4), 0, 0);
  }

  v24 = dword_1000186D8;
  if (dword_1000186D8 && arc4random() / 0x28F5C28 < v24)
  {
    v25 = EAPLogGetLogHandle();
    v26 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(v25, v26);
    if (!result)
    {
      return result;
    }

    v35 = 67109120;
    LODWORD(v36) = v6;
    _os_log_impl(&_mh_execute_header, v25, v26, "Simulating transmit packet loss: dropping %d bytes", &v35, 8u);
  }

  else
  {
    v28 = sub_100009850(*(a1 + 56));
    if (sendto(v28, &v38, v5, 0, v37, 0x12u) < v5)
    {
      v29 = EAPLogGetLogHandle();
      v30 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = __error();
        v32 = strerror(*v31);
        v35 = 136315138;
        v36 = v32;
        v9 = "EAPOLSocketSourceTransmit: sendto failed, %s";
        v10 = &v35;
        v11 = v29;
        v12 = v30;
        v13 = 12;
        goto LABEL_32;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

void sub_10000A3E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64))
  {
    if (*(v1 + 144) == a1)
    {
      v2 = *(v1 + 88);
      if (sub_10000D880())
      {
        if (sub_10000D360(1))
        {
          LogHandle = EAPLogGetLogHandle();
          v4 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v4))
          {
            *v5 = 0;
            _os_log_impl(&_mh_execute_header, LogHandle, v4, "PMK cache cleared", v5, 2u);
          }
        }
      }
    }
  }
}

uint64_t sub_10000A48C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 144) == a1 && *(v1 + 64) && *(v1 + 65) && *(v1 + 110))
  {
    return sub_10000D888(*(v1 + 88), (v1 + 104));
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000A4C8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 64) || !*(v3 + 65))
  {
    return 0;
  }

  v6 = a1;
  if (*(v3 + 144) == a1)
  {
    sub_10000A6F0(*(a1 + 32));
    if (a3)
    {
      v10 = sub_10000E2A4((v3 + 8), sub_10000D144, v3);
      *(v3 + 72) = v10;
      if (v10)
      {
        *(v3 + 68) = *(v3 + 67) ^ 1;
        *(v3 + 67) = 1;
        if (sub_10000D360(1))
        {
          LogHandle = EAPLogGetLogHandle();
          v12 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v12))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, LogHandle, v12, "4-way handshake notification scheduled", &v15, 2u);
          }
        }
      }
    }

    if (sub_10000D360(1))
    {
      v13 = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = 67109120;
        LODWORD(v16) = a3;
        _os_log_impl(&_mh_execute_header, v13, v14, "set_msk %d", &v15, 8u);
      }
    }

    v6 = 0;
  }

  else if (sub_10000D360(1))
  {
    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      v15 = 136315394;
      v16 = ether_ntoa(v6);
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "set_msk %s %d", &v15, 0x12u);
    }
  }

  return sub_10000D780(*(v3 + 88), v6, a2, a3);
}

void sub_10000A6F0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_10000E224(v2);
    *(a1 + 72) = 0;
    if (sub_10000D360(1))
    {
      LogHandle = EAPLogGetLogHandle();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v4))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, LogHandle, v4, "4-way handshake notification unscheduled", v5, 2u);
      }
    }
  }
}

void sub_10000A78C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1)
  {
    if (*(v1 + 144) != a1)
    {
      v24 = 0;
      v3 = sub_100006FC0(*(a1 + 40), &v24);
      switch(v3)
      {
        case 3:
          if (v24 != 3)
          {
            return;
          }

          LogHandle = EAPLogGetLogHandle();
          v14 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(LogHandle, v14))
          {
            goto LABEL_23;
          }

          v16 = ether_ntoa(a1);
          *buf = 136315138;
          v26 = v16;
          v7 = "Supplicant %s Authenticating, requires user input";
          break;
        case 4:
          if (!sub_10000D360(1))
          {
            goto LABEL_23;
          }

          LogHandle = EAPLogGetLogHandle();
          v14 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(LogHandle, v14))
          {
            goto LABEL_23;
          }

          v15 = ether_ntoa(a1);
          *buf = 136315138;
          v26 = v15;
          v7 = "Supplicant %s Authenticated - Complete";
          break;
        case 5:
          v4 = EAPLogGetLogHandle();
          v5 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_23;
          }

          v6 = ether_ntoa(a1);
          *buf = 136315394;
          v26 = v6;
          v27 = 1024;
          v28 = v24;
          v7 = "Supplicant %s Held, status %d";
          v8 = v4;
          v9 = v5;
          v10 = 18;
          goto LABEL_22;
        default:
          return;
      }

      v8 = LogHandle;
      v9 = v14;
      v10 = 12;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
LABEL_23:
      *(a1 + 48) = 1;
      *(*(a1 + 32) + 120) = 1;
      return;
    }

    v24 = 0;
    v11 = sub_100006FC0(*(a1 + 40), &v24);
    v12 = v11;
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        if ((*(*(a1 + 32) + 64) & 1) == 0)
        {
          *(v1 + 68) = 1;
        }
      }

      else if (v11 == 7)
      {
        sub_10000A6F0(v1);
        *(v1 + 67) = 0;
      }
    }

    else if (v11 == 4)
    {
      if ((*(v1 + 67) & 1) == 0)
      {
        sub_10000A6F0(v1);
        sub_10000AB24(v1);
        *(v1 + 67) = 1;
      }
    }

    else if (v11 == 5)
    {
      sub_10000A6F0(v1);
      *(v1 + 67) = 0;
      sub_10000AB24(v1);
    }

    v17 = EAPOLClientReportStatus();
    if (v17)
    {
      v18 = v17;
      v19 = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = strerror(v18);
        *buf = 136315138;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v19, v20, "EAPOLClientReportStatus failed: %s", buf, 0xCu);
      }
    }

    if (byte_1000186D4 == 1)
    {
      v22 = *(a1 + 32);
      if (*(v22 + 64) == 1)
      {
        if (v12 == 4)
        {
          if ((dword_10001868C & 0x80000000) == 0)
          {
            sub_1000091B8(*(v22 + 128), dword_10001868C, 0, sub_10000CC90, *(a1 + 32), 0, 0);
          }
        }

        else
        {
          sub_100009160(*(v22 + 128));
          sub_10000D9B8(*(v22 + 88));
          for (i = *(*(a1 + 32) + 152); i; i = *(i + 72))
          {
            *(i + 48) = 1;
            *(*(i + 32) + 120) = 1;
          }
        }
      }
    }
  }
}

void *sub_10000AB24(void *result)
{
  if (*result)
  {
    if (sub_10000D360(1))
    {
      LogHandle = EAPLogGetLogHandle();
      v2 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v2))
      {
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, LogHandle, v2, "force renew", v3, 2u);
      }
    }

    return EAPOLClientForceRenew();
  }

  return result;
}

uint64_t sub_10000ABC4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 64))
    {
      result = LinkAddresses_create();
      if (result)
      {
        v2 = (v1 + 8);
        v3 = LinkAddresses_lookup();
        if (v3)
        {
          v4 = v3;
          v5 = *(v3 + 4);
          LogHandle = EAPLogGetLogHandle();
          if (v5 == 6)
          {
            v7 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(LogHandle, v7))
            {
              *buf = 136315138;
              v21 = ether_ntoa((v1 + 28));
              _os_log_impl(&_mh_execute_header, LogHandle, v7, "current local MAC address: [%s]", buf, 0xCu);
            }

            v8 = v4 + *(v4 + 5);
            v9 = *(v8 + 12);
            *(v1 + 28) = *(v8 + 8);
            v10 = v1 + 28;
            *(v10 + 4) = v9;
            v11 = EAPLogGetLogHandle();
            v12 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v11, v12))
            {
              return LinkAddresses_free();
            }

            v13 = ether_ntoa(v10);
            *buf = 136315138;
            v21 = v13;
            v14 = "new local MAC address: [%s]";
            v15 = v11;
            v16 = v12;
            goto LABEL_14;
          }

          v19 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v19))
          {
            *buf = 136315138;
            v21 = v2;
            v14 = "interface '%s' is not ethernet";
            v15 = LogHandle;
            v16 = v19;
            goto LABEL_14;
          }
        }

        else
        {
          v17 = EAPLogGetLogHandle();
          v18 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v17, v18))
          {
            *buf = 136315138;
            v21 = v2;
            v14 = "interface '%s' does not exist";
            v15 = v17;
            v16 = v18;
LABEL_14:
            _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0xCu);
          }
        }

        return LinkAddresses_free();
      }
    }
  }

  return result;
}

char *sub_10000ADE0(const char *a1, uint64_t a2, void *a3)
{
  v58[0] = 0;
  __errnum = 0;
  v55 = 0;
  v56 = 0;
  *a3 = 0;
  v5 = sub_10000D374(a1, &v55);
  memset(&v61, 0, sizeof(v61));
  if (fstat(0, &v61) || (v61.st_mode & 0xF000) != 0xC000)
  {
    v6 = eapol_socket();
    if (v6 == -1)
    {
      LogHandle = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v15))
      {
        v16 = __error();
        v17 = strerror(*v16);
        v61.st_dev = 136315394;
        *&v61.st_mode = a1;
        WORD2(v61.st_ino) = 2080;
        *(&v61.st_ino + 6) = v17;
        _os_log_impl(&_mh_execute_header, LogHandle, v15, "eapol_socket(%s) failed, %s", &v61, 0x16u);
      }

      v10 = 0;
      v12 = 0;
      v6 = -1;
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1000096F8(v6);
  v58[0] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = malloc_type_malloc(0xB0uLL, 0x10E0040888D9ED5uLL);
    if (!v9)
    {
      v21 = EAPLogGetLogHandle();
      v22 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v21, v22))
      {
        LOWORD(v61.st_dev) = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "malloc failed", &v61, 2u);
      }

      v20 = 0;
      v10 = 0;
      v12 = 0;
      goto LABEL_42;
    }

    v10 = v9;
    v11 = 0uLL;
    *(v9 + 9) = 0u;
    *(v9 + 10) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 8) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 6) = 0u;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *v9 = 0u;
    if (!v5)
    {
      v54 = 0;
      v12 = 0;
      goto LABEL_22;
    }

    *&v61.st_dev = 0;
    memset(&v61.st_uid, 0, 24);
    v61.st_ino = v9;
    v12 = CFRunLoopObserverCreate(0, 0x20uLL, 1u, 0, sub_10000B4B0, &v61);
    if (v12)
    {
      sub_1000090E8();
      v56 = v13;
      if (v13)
      {
        v54 = v13;
        v11 = 0uLL;
LABEL_22:
        *&v61.st_dev = v11;
        *&v61.st_uid = v11;
        v61.st_atimespec.tv_sec = 0;
        v61.st_ino = v10;
        v23 = SCDynamicStoreCreate(0, @"EAPOLClient", sub_10000B4EC, &v61);
        if (v23)
        {
          v24 = v23;
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          v26 = v5;
          v60 = Mutable;
          v27 = &kSCEntNetAirPort;
          if (!v5)
          {
            v27 = &kSCEntNetLink;
          }

          v59 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/%s/%@", kSCDynamicStoreDomainState, kSCCompNetwork, kSCCompInterface, a1, *v27);
          CFArrayAppendValue(Mutable, v59);
          my_CFRelease();
          SCDynamicStoreSetNotificationKeys(v24, Mutable, 0);
          my_CFRelease();
          RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v24, 0);
          v58[1] = RunLoopSource;
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
          my_CFRelease();
          *(v10 + 19) = 0;
          *(v10 + 20) = v10 + 152;
          __strlcpy_chk();
          *(v10 + 6) = strlen(v10 + 8);
          v30 = *(a2 + 4);
          *(v10 + 7) = *a2;
          *(v10 + 16) = v30;
          *(v10 + 7) = v8;
          *(v10 + 17) = v24;
          v10[64] = v26;
          *(v10 + 11) = v55;
          v31 = sub_100009844(v8, sub_10000B6C0, v10, 0);
          sub_10000B4EC(v31, v32, v10);
          v33 = EAPOLClientAttach();
          *v10 = v33;
          if (!v33)
          {
            v34 = EAPLogGetLogHandle();
            v35 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = strerror(__errnum);
              v61.st_dev = 136315394;
              *&v61.st_mode = v10 + 8;
              WORD2(v61.st_ino) = 2080;
              *(&v61.st_ino + 6) = v36;
              _os_log_impl(&_mh_execute_header, v34, v35, "EAPOLClientAttach(%s) failed: %s", &v61, 0x16u);
            }
          }

          if (v12)
          {
            *(v10 + 14) = v12;
            v37 = CFRunLoopGetCurrent();
            CFRunLoopAddObserver(v37, *(v10 + 14), kCFRunLoopDefaultMode);
          }

          *(v10 + 16) = v54;
          return v10;
        }

        v41 = EAPLogGetLogHandle();
        v42 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = SCError();
          v44 = SCErrorString(v43);
          *buf = 136315138;
          v63 = v44;
          _os_log_impl(&_mh_execute_header, v41, v42, "SCDynamicStoreCreate() failed, %s", buf, 0xCu);
        }

        v45 = EAPLogGetLogHandle();
        v46 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_41;
        }

        v47 = SCError();
        v48 = SCErrorString(v47);
        v61.st_dev = 136315138;
        *&v61.st_mode = v48;
        v40 = "link_event_register failed: %s";
        v49 = &v61;
        v50 = v45;
        v51 = v46;
        v52 = 12;
        goto LABEL_40;
      }

      v38 = EAPLogGetLogHandle();
      v39 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v38, v39))
      {
        *buf = 0;
        v40 = "Timer_create failed";
        goto LABEL_39;
      }
    }

    else
    {
      v38 = EAPLogGetLogHandle();
      v39 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v38, v39))
      {
        *buf = 0;
        v40 = "CFRunLoopObserverCreate failed";
LABEL_39:
        v49 = buf;
        v50 = v38;
        v51 = v39;
        v52 = 2;
LABEL_40:
        _os_log_impl(&_mh_execute_header, v50, v51, v40, v49, v52);
      }
    }

LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }

  v18 = EAPLogGetLogHandle();
  v19 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v18, v19))
  {
    LOWORD(v61.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "FDHandler_create failed", &v61, 2u);
  }

  v10 = 0;
  v12 = 0;
LABEL_17:
  v20 = 1;
LABEL_42:
  if (v55)
  {
    sub_10000D980(v55);
  }

  if (v10)
  {
    free(v10);
  }

  if (v20)
  {
    if ((v6 & 0x80000000) == 0)
    {
      close(v6);
    }
  }

  else
  {
    sub_1000097CC(v58);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  sub_100009124(&v56);
  return 0;
}

void sub_10000B4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 120) == 1)
  {
    sub_10000CB08(a3);
    *(a3 + 120) = 0;
  }
}

void sub_10000B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    v4 = *(a3 + 66);
    sub_10000C484(a3, 0);
    if (v4 == *(a3 + 66))
    {
      return;
    }
  }

  else
  {
    v5 = socket(2, 2, 0);
    if (v5 < 0)
    {
      perror("socket");
      v8 = 0;
    }

    else
    {
      v6 = v5;
      *buf = 0u;
      memset(v17, 0, sizeof(v17));
      __strlcpy_chk();
      v8 = ioctl(v6, 0xC02C6938uLL, buf) >= 0 && (v17[2] & 3) != 1;
      close(v6);
    }

    *(a3 + 66) = v8;
  }

  if (sub_10000D360(1))
  {
    LogHandle = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v10))
    {
      if (*(a3 + 66))
      {
        v11 = "active";
      }

      else
      {
        v11 = "inactive";
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, LogHandle, v10, "link %s", buf, 0xCu);
    }
  }

  v12 = *(a3 + 144);
  if (v12)
  {
    v13 = *(a3 + 66);
    if ((v13 & 1) == 0)
    {
      v14 = *(v12 + 56);
      if (v14)
      {
        free(v14);
        v15 = *(a3 + 144);
        v13 = *(a3 + 66);
      }

      else
      {
        v13 = 0;
        v15 = *(a3 + 144);
      }

      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      v12 = v15;
    }

    sub_100006418(*(v12 + 40), v13 & 1);
  }
}

void sub_10000B6C0(uint64_t a1)
{
  v2 = sub_100009850(*(a1 + 56));
  v3 = recv(v2, &v47, 0x640uLL, 0);
  v4 = v3;
  if (v3 > 0)
  {
    if (v3 <= 0xD)
    {
      LogHandle = EAPLogGetLogHandle();
      v6 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v6))
      {
        return;
      }

      *buf = 67109376;
      LODWORD(v46[0]) = v4;
      WORD2(v46[0]) = 1024;
      *(v46 + 6) = 14;
      v7 = "Packet truncated (%d < %d)";
      v8 = LogHandle;
      v9 = v6;
      v10 = 14;
      goto LABEL_32;
    }

    v15 = v49;
    v16 = __rev16(v49);
    if (v16 != 34958 && v16 != 35015)
    {
      v30 = EAPLogGetLogHandle();
      v31 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 67109120;
        LODWORD(v46[0]) = v16;
        v7 = "Unexpected ethertype (%02x)";
        v8 = v30;
        v9 = v31;
        v10 = 8;
        goto LABEL_32;
      }

      return;
    }

    v18 = v3 - 14;
    if ((EAPOLPacketIsValid() & 1) == 0)
    {
      if (sub_10000D360(1))
      {
        Mutable = CFStringCreateMutable(0, 0);
        v26 = ether_ntoa(&v47);
        CFStringAppendFormat(Mutable, 0, @"Ether packet: dest %s ", v26);
        v27 = ether_ntoa(&v48);
        CFStringAppendFormat(Mutable, 0, @"source %s type 0x%04x\n", v27, bswap32(v49) >> 16);
        EAPOLPacketIsValid();
        v28 = EAPLogGetLogHandle();
        v29 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 67109378;
          LODWORD(v46[0]) = v4;
          WORD2(v46[0]) = 2112;
          *(v46 + 6) = Mutable;
          _os_log_impl(&_mh_execute_header, v28, v29, "Ignoring Receive Packet Size %d\n%@", buf, 0x12u);
        }

        CFRelease(Mutable);
      }

      return;
    }

    if (v15 == 36488)
    {
      *(a1 + 80) = v48;
      *(a1 + 86) = 1;
      if (*(a1 + 64) == 1)
      {
        if (!*(a1 + 110) || (*v48.octet == *(a1 + 104) ? (v19 = *&v48.octet[4] == *(a1 + 108)) : (v19 = 0), !v19))
        {
          sub_10000C484(a1, &v48);
        }
      }
    }

    *(a1 + 40) = v50;
    v20 = (a1 + 40);
    *(a1 + 48) = v18;
    if (sub_10000D360(16))
    {
      v21 = CFStringCreateMutable(0, 0);
      v22 = ether_ntoa(&v48);
      sub_10000C7EC(v22, v50, v4, 1, v21);
      CFStringAppendFormat(v21, 0, @"\n");
      EAPOLPacketIsValid();
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 138412290;
        v46[0] = v21;
        _os_log_impl(&_mh_execute_header, v23, v24, "%@", buf, 0xCu);
      }

      CFRelease(v21);
    }

    else if (sub_10000D360(1))
    {
      v33 = ether_ntoa(&v48);
      sub_10000C7EC(v33, v50, v4, 1, 0);
    }

    if (v15 == 36488)
    {
      v34 = *(a1 + 144);
      if (v34)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v34 = *(a1 + 152);
      if (v34)
      {
        while (*v34 != *v48.octet || *(v34 + 4) != *&v48.octet[4])
        {
          v34 = *(v34 + 72);
          if (!v34)
          {
            goto LABEL_62;
          }
        }

LABEL_37:
        v35 = *(v34 + 56);
        if (v35)
        {
          if (v50[1])
          {
            v36 = 0;
          }

          else
          {
            v36 = v50[4] == 1;
          }

          if (v36 && v50[5] == v35[1])
          {
            if (sub_10000D360(1))
            {
              v37 = EAPLogGetLogHandle();
              v38 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = *(v34 + 64);
                *buf = 67109120;
                LODWORD(v46[0]) = v39;
                _os_log_impl(&_mh_execute_header, v37, v38, "Retransmit EAP packet %d bytes", buf, 8u);
              }
            }

            sub_100009F9C(*(v34 + 32), v34, 0, *(v34 + 56), *(v34 + 64));
            goto LABEL_62;
          }

          free(v35);
          *(v34 + 56) = 0;
          *(v34 + 64) = 0;
        }

        v41 = dword_1000186DC;
        if (dword_1000186DC && arc4random() / 0x28F5C28 < v41)
        {
          v42 = EAPLogGetLogHandle();
          v43 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v42, v43))
          {
            *buf = 67109120;
            LODWORD(v46[0]) = v18;
            _os_log_impl(&_mh_execute_header, v42, v43, "Simulate receive packet loss: dropping %d bytes", buf, 8u);
          }
        }

        else
        {
          v44 = *(v34 + 8);
          if (v44)
          {
            v44(*(v34 + 16), *(v34 + 24), v20);
          }
        }
      }
    }

LABEL_62:
    *v20 = 0;
    return;
  }

  if (v3 < 0)
  {
    v11 = EAPLogGetLogHandle();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 136315138;
      v46[0] = v14;
      v7 = "recv failed %s";
      v8 = v11;
      v9 = v12;
      v10 = 12;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    }
  }
}

void sub_10000BCAC(uint64_t a1, int a2, uint64_t a3)
{
  v18 = 0;
  if (a2)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      *buf = 136315138;
      v21 = a3 + 8;
      _os_log_impl(&_mh_execute_header, LogHandle, v6, "%s: EAPOLController died", buf, 0xCu);
    }

    if (*(a3 + 172) != 1)
    {
LABEL_16:
      exit(0);
    }
  }

  else
  {
    Config = EAPOLClientGetConfig();
    if (Config)
    {
      __errnum = Config;
      v7 = EAPLogGetLogHandle();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 136315394;
        v21 = a3 + 8;
        v22 = 2080;
        v23 = strerror(__errnum);
        v9 = "%s: EAPOLClientGetConfig failed, %s";
        v10 = v7;
        v11 = v8;
        v12 = 22;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
      }
    }

    else
    {
      v13 = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 136315138;
        v21 = a3 + 8;
        v9 = "%s: EAPOLClientGetConfig returned NULL control";
        v10 = v13;
        v11 = v14;
        v12 = 12;
        goto LABEL_12;
      }
    }
  }

  v19 = a3;
  v15 = EAPLogGetLogHandle();
  v16 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 136315138;
    v21 = a3 + 8;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s STOP", buf, 0xCu);
  }

  *(a3 + 68) = 0;
  sub_100002A9C(*(*(a3 + 144) + 40));
  sub_10000BF68(&v19);
  goto LABEL_16;
}

void sub_10000BF68(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      sub_1000097CC((v2 + 56));
      if (*(v2 + 64) == 1)
      {
        sub_10000D980(*(v2 + 88));
      }

      my_CFRelease();
      if (*(v2 + 112))
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopRemoveObserver(Current, *(v2 + 112), kCFRunLoopDefaultMode);
        my_CFRelease();
      }

      my_CFRelease();
      if (*(v2 + 68) == 1)
      {
        usleep(0x7A120u);
        sub_10000AB24(v2);
      }

      EAPOLClientDetach();
      sub_100009124((v2 + 128));
      sub_10000A6F0(v2);
      free(v2);
    }

    *a1 = 0;
  }
}

uint64_t sub_10000C03C(uint64_t a1, CFDictionaryRef theDict, _DWORD *a3)
{
  v3 = theDict;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  *a3 = -1;
  if (!theDict)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v17 = 0;
  Value = CFDictionaryGetValue(theDict, @"Command");
  if (!sub_10000C298(Value, &v17))
  {
    goto LABEL_23;
  }

  if (v17 != 1)
  {
    LogHandle = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v14))
    {
      goto LABEL_23;
    }

    *buf = 136315138;
    v23 = a1 + 8;
    v15 = "%s: received stop command";
LABEL_22:
    _os_log_impl(&_mh_execute_header, LogHandle, v14, v15, buf, 0xCu);
    goto LABEL_23;
  }

  v6 = CFDictionaryGetValue(v3, @"Mode");
  if (v6 && !sub_10000C298(v6, &v21))
  {
    LogHandle = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v14))
    {
      goto LABEL_23;
    }

    *buf = 136315138;
    v23 = a1 + 8;
    v15 = "%s: Mode property invalid";
    goto LABEL_22;
  }

  v7 = CFDictionaryGetValue(v3, @"Configuration");
  if (!v7)
  {
    LogHandle = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v14))
    {
      *buf = 136315138;
      v23 = a1 + 8;
      v15 = "%s: configuration empty";
      goto LABEL_22;
    }

LABEL_23:
    sub_10000C3FC(&v19);
    sub_100002BFC(&v18);
    return 0;
  }

  v3 = v7;
  v8 = v21;
LABEL_9:
  *(a1 + 172) = v8;
  v9 = sub_10000C300(a1, 0);
  v19 = v9;
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v11 = sub_100006D78(v9);
  v18 = v11;
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  if ((v21 & 0xFFFFFFFE) == 2)
  {
    sub_100006FB4(v11);
  }

  if (v3)
  {
    sub_100002F80(v12, v3, &v20);
    if (v20)
    {
      return 0;
    }
  }

  v10[5] = v12;
  return v12;
}

void *sub_10000C300(uint64_t a1, int *a2)
{
  v4 = malloc_type_malloc(0x58uLL, 0x10A00403A3767D5uLL);
  v5 = v4;
  if (v4)
  {
    v4[10] = 0;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    v4[4] = a1;
    if (a2)
    {
      v6 = *a2;
      *(v4 + 2) = *(a2 + 2);
      *v4 = v6;
      v7 = *(a1 + 160);
      v4[10] = v7;
      *v7 = v4;
      *(a1 + 160) = v4 + 9;
      ++*(a1 + 168);
    }

    else
    {
      *(a1 + 144) = v4;
    }
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v9))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v9, "malloc failed", v11, 2u);
    }
  }

  return v5;
}

void sub_10000C3FC(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v2 == *(v3 + 144))
      {
        *(v3 + 144) = 0;
      }

      else
      {
        v4 = v2[9];
        v5 = v2[10];
        v6 = (v3 + 160);
        if (v4)
        {
          v6 = (v4 + 80);
        }

        *v6 = v5;
        *v5 = v4;
        --*(v3 + 168);
      }

      v7 = v2[7];
      if (v7)
      {
        free(v7);
      }

      free(v2);
    }

    *a1 = 0;
  }
}

void sub_10000C484(uint64_t a1, int *a2)
{
  if (!*(a1 + 64))
  {
    return;
  }

  v25 = 0;
  v24 = 0;
  if (sub_10000D498(*(a1 + 88), &v24))
  {
    *(a1 + 66) = 1;
    if (a2)
    {
      if (!*(a1 + 110))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (*(a1 + 110))
      {
        return;
      }

      a2 = &v24;
      if (!*(a1 + 110))
      {
        goto LABEL_9;
      }
    }

    if (*a2 == *(a1 + 104) && *(a2 + 2) == *(a1 + 108))
    {
      v9 = 0;
LABEL_34:
      *(a1 + 110) = 1;
      v13 = *a2;
      *(a1 + 108) = *(a2 + 2);
      *(a1 + 104) = v13;
      v14 = *(a1 + 88);
      v15 = sub_10000DA44();
      v16 = *(a1 + 88);
      v17 = sub_10000D628() != 0;
      v19 = (a1 + 96);
      v18 = *(a1 + 96);
      *(a1 + 65) = v17;
      if (v18 && v15 && !CFEqual(v18, v15))
      {
        sub_100009160(*(a1 + 128));
        sub_10000D9B8(*(a1 + 88));
      }

      my_CFRelease();
      *v19 = v15;
      if (v9)
      {
        if (sub_10000D360(1))
        {
          LogHandle = EAPLogGetLogHandle();
          v21 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v21))
          {
            if (*v19)
            {
              v22 = *v19;
            }

            else
            {
              v22 = @"<unknown>";
            }

            v23 = ether_ntoa(a2);
            *buf = 138412546;
            v28 = v22;
            v29 = 2080;
            v30 = v23;
            _os_log_impl(&_mh_execute_header, LogHandle, v21, "Associated SSID %@ BSSID %s", buf, 0x16u);
          }
        }
      }

      return;
    }

LABEL_9:
    if (byte_1000186D4 == 1)
    {
      v5 = *(a1 + 152);
      if (v5)
      {
        while (*v5 != *a2 || *(v5 + 4) != *(a2 + 2))
        {
          v5 = *(v5 + 72);
          if (!v5)
          {
            goto LABEL_30;
          }
        }

        v26 = v5;
        if (sub_10000D360(1) && sub_10000D360(1))
        {
          v10 = EAPLogGetLogHandle();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = ether_ntoa(a2);
            *buf = 136315138;
            v28 = v12;
            _os_log_impl(&_mh_execute_header, v10, v11, "Removing Supplicant for %s", buf, 0xCu);
          }
        }

        sub_100002BFC((v5 + 40));
        sub_10000C3FC(&v26);
      }

LABEL_30:
      if (*(a1 + 110) == 1 && (dword_100018690 & 0x80000000) == 0)
      {
        sub_1000091B8(*(a1 + 128), dword_100018690, 0, sub_10000CC90, a1, 0, 0);
      }
    }

    v9 = 1;
    goto LABEL_34;
  }

  *(a1 + 110) = 0;
  *(a1 + 65) = 0;
  sub_10000A6F0(a1);
  if (sub_10000D360(1))
  {
    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Disassociated", buf, 2u);
    }
  }

  my_CFRelease();
  sub_100009160(*(a1 + 128));
  sub_10000D9B8(*(a1 + 88));
  *(a1 + 66) = 0;
}

void sub_10000C7EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, __CFString *a5)
{
  if (a4)
  {
    v9 = "From";
  }

  else
  {
    v9 = "To";
  }

  if (a4)
  {
    v10 = "Receive";
  }

  else
  {
    v10 = "Transmit";
  }

  if (a2[1])
  {
    if (a5)
    {
      v34 = EAPOLPacketTypeStr();
      CFStringAppendFormat(a5, 0, @"%s Packet Size %d: EAPOL %s (%d) %s %s", v10, a3, v34, a2[1], v9, a1);
      return;
    }

    LogHandle = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v15))
    {
      v16 = a2[1];
      v17 = EAPOLPacketTypeStr();
      v18 = a2[1];
      *buf = 136316418;
      v38 = v10;
      v39 = 1024;
      v40 = a3;
      v41 = 2080;
      v42 = v17;
      v43 = 1024;
      v44 = v18;
      v45 = 2080;
      v46 = v9;
      v47 = 2080;
      *v48 = a1;
      v19 = "%s Packet Size %d: EAPOL %s (%d) %s %s";
LABEL_22:
      v28 = LogHandle;
      v29 = v15;
      v30 = 54;
      goto LABEL_23;
    }
  }

  else if (a2[4] - 1 > 1)
  {
    if (!a5)
    {
      LogHandle = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v15))
      {
        return;
      }

      v31 = a2[4];
      v32 = EAPCodeStr();
      v33 = a2[4];
      *buf = 136316418;
      v38 = v10;
      v39 = 1024;
      v40 = a3;
      v41 = 2080;
      v42 = v32;
      v43 = 1024;
      v44 = v33;
      v45 = 2080;
      v46 = v9;
      v47 = 2080;
      *v48 = a1;
      v19 = "%s Packet Size %d: EAP %s (%d) %s %s";
      goto LABEL_22;
    }

    v35 = EAPCodeStr();
    CFStringAppendFormat(a5, 0, @"%s Packet Size %d: EAP %s (%d) %s %s", v10, a3, v35, a2[4], v9, a1);
  }

  else
  {
    if (a5)
    {
      v11 = EAPCodeStr();
      v12 = a2[4];
      v13 = a2[8];
      v36 = EAPTypeStr();
      CFStringAppendFormat(a5, 0, @"%s Packet Size %d: EAP %s (%d) %s (%d) %s %s", v10, a3, v11, v12, v36, a2[8], v9, a1);
      return;
    }

    v20 = EAPLogGetLogHandle();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = a2[4];
      v23 = EAPCodeStr();
      v24 = a2[4];
      v25 = a2[8];
      v26 = EAPTypeStr();
      v27 = a2[8];
      *buf = 136316930;
      v38 = v10;
      v39 = 1024;
      v40 = a3;
      v41 = 2080;
      v42 = v23;
      v43 = 1024;
      v44 = v24;
      v45 = 2080;
      v46 = v26;
      v47 = 1024;
      *v48 = v27;
      *&v48[4] = 2080;
      *&v48[6] = v9;
      v49 = 2080;
      v50 = a1;
      v19 = "%s Packet Size %d: EAP %s (%d) %s (%d) %s %s";
      v28 = v20;
      v29 = v21;
      v30 = 70;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v28, v29, v19, buf, v30);
    }
  }
}

void sub_10000CB08(uint64_t a1)
{
  v1 = 8 * *(a1 + 168);
  v2 = __chkstk_darwin();
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFF0));
  v5 = *(v2 + 152);
  if (v5)
  {
    if (v3 >= 0x200)
    {
      v6 = 512;
    }

    else
    {
      v6 = v3;
    }

    bzero(&v13 - ((v3 + 15) & 0xFFFFFFFF0), v6);
    v8 = 0;
    do
    {
      if (*(v5 + 48) == 1)
      {
        v4[v8++] = v5;
      }

      v5 = *(v5 + 72);
    }

    while (v5);
    if (v8 >= 1)
    {
      v9 = v8;
      *&v7 = 136315138;
      v13 = v7;
      do
      {
        v14 = *v4;
        if (sub_10000D360(1) && sub_10000D360(1))
        {
          LogHandle = EAPLogGetLogHandle();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v11))
          {
            v12 = ether_ntoa(v14);
            *buf = v13;
            v16 = v12;
            _os_log_impl(&_mh_execute_header, LogHandle, v11, "Removing Supplicant for %s", buf, 0xCu);
          }
        }

        sub_100002BFC(v14 + 5);
        sub_10000C3FC(&v14);
        ++v4;
        --v9;
      }

      while (v9);
    }
  }
}

void sub_10000CC90(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    sub_10000DB20(*(a1 + 88), v1, dword_100018698, sub_10000CD3C, a1);
    if (sub_10000D360(1))
    {
      LogHandle = EAPLogGetLogHandle();
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v3))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, LogHandle, v3, "Scan initiated", v4, 2u);
      }
    }
  }
}

void sub_10000CD3C(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (!a2)
  {
    if (!sub_10000D360(1))
    {
      goto LABEL_44;
    }

    LogHandle = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v32))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v33 = "Scan complete: no APs";
LABEL_43:
    _os_log_impl(&_mh_execute_header, LogHandle, v32, v33, buf, 2u);
    goto LABEL_44;
  }

  if ((*(a3 + 110) & 1) == 0)
  {
    LogHandle = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v32))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v33 = "main Supplicant bssid is unknown, skipping";
    goto LABEL_43;
  }

  if (sub_10000D360(1))
  {
    Count = CFArrayGetCount(a2);
    Mutable = CFStringCreateMutable(0, 0);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        BytePtr = CFDataGetBytePtr(ValueAtIndex);
        if (i)
        {
          v10 = ", ";
        }

        else
        {
          v10 = "";
        }

        v11 = ether_ntoa(BytePtr);
        CFStringAppendFormat(Mutable, 0, @"%s%s", v10, v11);
      }
    }

    v12 = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = "s";
      *buf = 134218498;
      if (Count == 1)
      {
        v14 = "";
      }

      v36 = Count;
      v37 = 2080;
      v38 = v14;
      v39 = 2112;
      v40 = Mutable;
      _os_log_impl(&_mh_execute_header, v12, v13, "Scan complete: %ld AP%s = { %@ }", buf, 0x20u);
    }

    CFRelease(Mutable);
  }

  v15 = CFArrayGetCount(a2);
  if (v15 >= 1)
  {
    v16 = v15;
    for (j = 0; j != v16; ++j)
    {
      v34 = 0;
      v18 = CFArrayGetValueAtIndex(a2, j);
      v19 = CFDataGetBytePtr(v18);
      if (*v19 != *(a3 + 104) || *(v19 + 2) != *(a3 + 108))
      {
        v21 = *(a3 + 152);
        if (v21)
        {
          while (*v21 != *v19 || *(v21 + 4) != *(v19 + 2))
          {
            v21 = *(v21 + 72);
            if (!v21)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          v34 = 0;
          v23 = sub_10000C300(a3, v19);
          v34 = v23;
          if (v23)
          {
            v24 = sub_100006EB4(v23, *(*(a3 + 144) + 40));
            *&v34[6].octet[4] = v24;
            if (v24)
            {
              if (sub_10000D360(1))
              {
                v25 = EAPLogGetLogHandle();
                v26 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v25, v26))
                {
                  v27 = ether_ntoa(v34);
                  *buf = 136315138;
                  v36 = v27;
                  _os_log_impl(&_mh_execute_header, v25, v26, "Supplicant %s created", buf, 0xCu);
                }
              }

              sub_100004DE4(*&v34[6].octet[4], 0xFFFFFFFFLL);
            }

            else
            {
              v28 = EAPLogGetLogHandle();
              v29 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v28, v29))
              {
                v30 = ether_ntoa(v34);
                *buf = 136315138;
                v36 = v30;
                _os_log_impl(&_mh_execute_header, v28, v29, "Supplicant create %s failed", buf, 0xCu);
              }

              sub_10000C3FC(&v34);
            }
          }
        }
      }
    }
  }

LABEL_44:
  if (dword_100018694 >= 1)
  {
    sub_1000091B8(*(a3 + 128), dword_100018694, 0, sub_10000CC90, a3, 0, 0);
  }
}

void sub_10000D144(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (sub_10000D360(1))
  {
    LogHandle = EAPLogGetLogHandle();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v4))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, LogHandle, v4, "4-way handshake complete", v7, 2u);
    }
  }

  v5 = sub_100006FC0(*(*(a2 + 144) + 40), &v8);
  if (v5 == 3)
  {
    sub_100006FD0(*(*(a2 + 144) + 40));
  }

  else if (v5 == 4 && *(a2 + 68) == 1)
  {
    sub_10000AB24(a2);
  }

  v6 = *(a2 + 72);
  if (v6)
  {
    sub_10000E224(v6);
    *(a2 + 72) = 0;
  }
}

void sub_10000D230(int a1, int a2)
{
  v2 = a1;
  if (dword_1000186E0 == a1)
  {
    if (a1)
    {
      return;
    }
  }

  else
  {
    if (a1)
    {
      if (a2)
      {
        LogHandle = EAPLogGetLogHandle();
        v4 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v4))
        {
          v7[0] = 67109120;
          v7[1] = v2;
          _os_log_impl(&_mh_execute_header, LogHandle, v4, "Verbose mode enabled (LogFlags = 0x%x)", v7, 8u);
        }
      }

      goto LABEL_12;
    }

    if (a2)
    {
      v5 = EAPLogGetLogHandle();
      v6 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v5, v6))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Verbose mode disabled", v7, 2u);
      }
    }
  }

  v2 = 4107;
LABEL_12:
  dword_1000186E0 = v2;
}

BOOL sub_10000D374(const char *a1, void *a2)
{
  v4 = Apple80211Open();
  if (v4)
  {
    v5 = v4;
    LogHandle = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(LogHandle, v7);
    if (result)
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, LogHandle, v7, "Apple80211Open failed, %x", buf, 8u);
      return 0;
    }
  }

  else
  {
    v9 = CFStringCreateWithCString(0, a1, 0x600u);
    v10 = Apple80211BindToInterface();
    CFRelease(v9);
    if (v10)
    {
      Apple80211Close();
      result = 0;
    }

    else
    {
      result = 1;
    }

    *a2 = 0;
  }

  return result;
}

BOOL sub_10000D498(uint64_t a1, uint64_t a2)
{
  v3 = Apple80211Get();
  result = 0;
  if (!v3)
  {
    if (*a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 4) == 0;
    }

    return !v5;
  }

  return result;
}

BOOL sub_10000D504(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2 > 3 || a5 != 5 && a5 != 13)
  {
    return 0;
  }

  __memcpy_chk();
  return Apple80211Set() == 0;
}

uint64_t sub_10000D628()
{
  theDict = 0;
  valuePtr = 0;
  v0 = Apple80211CopyValue();
  if (v0)
  {
    v1 = v0;
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      *buf = 67109120;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, LogHandle, v3, "Apple80211CopyValue(APPLE80211_IOC_AUTH_TYPE) failed, 0x%x", buf, 8u);
    }
  }

  my_CFRelease();
  return 0;
}

BOOL sub_10000D780(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((a4 | 0x40) != 0x40)
  {
    return 0;
  }

  if (a4)
  {
    __memcpy_chk();
  }

  if (a2)
  {
    v6 = *a2;
    v7 = *(a2 + 2);
  }

  return Apple80211Set() == 0;
}

uint64_t sub_10000D888(uint64_t a1, const ether_addr *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v4 = 0;
  if (!Apple80211Get())
  {
    Count = CFArrayGetCount(Mutable);
    v6 = ether_ntoa(a2);
    v7 = CFStringCreateWithCString(0, v6, 0x600u);
    if (Count < 1)
    {
LABEL_7:
      v4 = 0;
    }

    else
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8);
        Value = CFDictionaryGetValue(ValueAtIndex, @"PMKSA_AUTHENTICATOR");
        if (Value)
        {
          v4 = 1;
          if (CFStringCompare(Value, v7, 1uLL) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (Count == ++v8)
        {
          goto LABEL_7;
        }
      }
    }

    CFRelease(v7);
  }

  CFRelease(Mutable);
  return v4;
}

uint64_t sub_10000D980(uint64_t a1)
{
  sub_10000D9B8(a1);

  return Apple80211Close();
}

void sub_10000D9B8(uint64_t a1)
{
  v1 = off_1000186A0;
  if (off_1000186A0)
  {
    while (1)
    {
      v2 = *(v1 + 5);
      if (*v1 == a1)
      {
        break;
      }

      v1 = *(v1 + 5);
      if (!v2)
      {
        return;
      }
    }

    v3 = *(v1 + 6);
    v4 = (v2 + 48);
    if (!v2)
    {
      v4 = &off_1000186A8;
    }

    *v4 = v3;
    *v3 = v2;
    Apple80211EventMonitoringHalt();
    CFRelease(*(v1 + 3));

    free(v1);
  }
}

CFStringRef sub_10000DA44()
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  if (Apple80211Get())
  {
    CFRelease(Mutable);
    return 0;
  }

  if (!Mutable)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(Mutable);
  Length = CFDataGetLength(Mutable);
  v1 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 0);
  if (!v1)
  {
    v4 = CFDataGetBytePtr(Mutable);
    v5 = CFDataGetLength(Mutable);
    v1 = CFStringCreateWithBytes(0, v4, v5, 0, 0);
  }

  CFRelease(Mutable);
  return v1;
}

uint64_t sub_10000DB20(uint64_t a1, CFTypeRef cf2, int a3, uint64_t a4, uint64_t a5)
{
  if (cf2 && a4)
  {
    v10 = off_1000186A0;
    if (off_1000186A0)
    {
      while (*v10 != a1)
      {
        v10 = *(v10 + 5);
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      if (!CFEqual(*(v10 + 3), cf2))
      {
        CFRetain(cf2);
        CFRelease(*(v10 + 3));
        *(v10 + 3) = cf2;
        *(v10 + 8) = 0;
      }

LABEL_21:
      *(v10 + 1) = a4;
      *(v10 + 2) = a5;
      if (*(v10 + 8) == 1)
      {
        LogHandle = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(LogHandle, v27))
        {
          return 1;
        }

        LOWORD(v39) = 0;
        v28 = "scan already in progress";
        v29 = LogHandle;
        v30 = v27;
        v31 = 2;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(Mutable, @"SSID_STR", cf2);
        CFDictionarySetValue(Mutable, @"SCAN_MERGE", kCFBooleanFalse);
        v39 = a3;
        v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
        CFDictionarySetValue(Mutable, @"SCAN_NUM_SCANS", v33);
        CFRelease(v33);
        v23 = 1;
        v39 = 1;
        v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
        CFDictionarySetValue(Mutable, @"SCAN_PHY_MODE", v34);
        CFRelease(v34);
        v39 = 1;
        v35 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
        CFDictionarySetValue(Mutable, @"SCAN_TYPE", v35);
        CFRelease(v35);
        v36 = Apple80211ScanAsync();
        CFRelease(Mutable);
        if (!v36)
        {
          *(v10 + 8) = 1;
          return v23;
        }

        v37 = EAPLogGetLogHandle();
        v38 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v37, v38))
        {
          return 1;
        }

        v39 = 67109120;
        v40 = v36;
        v28 = "Apple80211ScanAsync failed, %d";
        v29 = v37;
        v30 = v38;
        v31 = 8;
      }

      _os_log_impl(&_mh_execute_header, v29, v30, v28, &v39, v31);
      return 1;
    }

LABEL_6:
    CFRunLoopGetCurrent();
    v11 = Apple80211EventMonitoringInit();
    if (v11)
    {
      v12 = v11;
      v13 = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        v39 = 67109120;
        v40 = v12;
        v15 = "Apple80211EventMonitoringInit failed, %d";
LABEL_16:
        v18 = v13;
        v19 = v14;
        v20 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      started = Apple80211StartMonitoringEvent();
      if (!started)
      {
        v10 = malloc_type_malloc(0x38uLL, 0x10E004080CAEFD5uLL);
        *(v10 + 8) = 0u;
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *v10 = a1;
        *(v10 + 3) = CFRetain(cf2);
        *(v10 + 5) = 0;
        v25 = off_1000186A8;
        *(v10 + 6) = off_1000186A8;
        *v25 = v10;
        off_1000186A8 = (v10 + 40);
        goto LABEL_21;
      }

      v22 = started;
      Apple80211EventMonitoringHalt();
      v13 = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        v39 = 67109120;
        v40 = v22;
        v15 = "Apple80211StartMonitoringEvent failed, %d";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v16 = EAPLogGetLogHandle();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(v39) = 0;
      v15 = "ssid and/or func NULL";
      v18 = v16;
      v19 = v17;
      v20 = 2;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v18, v19, v15, &v39, v20);
    }
  }

  return 0;
}

void sub_10000DF50(int a1, uint64_t a2, int a3, CFArrayRef theArray)
{
  if (a3 != 10)
  {
    LogHandle = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v15))
    {
      return;
    }

    *buf = 67109120;
    v33 = a3;
    v9 = "unexpected event %d";
    v10 = LogHandle;
    v11 = v15;
    v12 = 8;
    goto LABEL_9;
  }

  v4 = off_1000186A0;
  if (!off_1000186A0)
  {
LABEL_5:
    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v7, v8))
    {
      return;
    }

    *buf = 0;
    v9 = "no callback?";
    v10 = v7;
    v11 = v8;
    v12 = 2;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    return;
  }

  while (*v4 != a2)
  {
    v4 = v4[5];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v16 = v4[1];
  v17 = v4[2];
  *(v4 + 8) = 2;
  v18 = v4[3];
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_29;
  }

  v20 = Count;
  v30 = v16;
  theArraya = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      Value = CFDictionaryGetValue(ValueAtIndex, @"SSID_STR");
      if (Value)
      {
        if (CFEqual(Value, v18))
        {
          v25 = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
          TypeID = CFStringGetTypeID();
          if (v25)
          {
            if (CFGetTypeID(v25) == TypeID)
            {
              if (CFStringGetCString(v25, buf, 32, 0x600u))
              {
                v27 = ether_aton(buf);
                if (v27)
                {
                  v28 = CFDataCreate(0, v27->octet, 6);
                  if (v28)
                  {
                    v29 = v28;
                    v34.location = 0;
                    v34.length = v22;
                    if (!CFArrayContainsValue(theArraya, v34, v28))
                    {
                      CFArrayAppendValue(theArraya, v29);
                      ++v22;
                    }

                    CFRelease(v29);
                  }
                }
              }
            }
          }
        }
      }

      ++v21;
    }

    while (v20 != v21);
  }

  if (!CFArrayGetCount(theArraya))
  {
    CFRelease(theArraya);
    v16 = v30;
LABEL_29:
    v16(a2, 0, v17);
    return;
  }

  v30(a2, theArraya, v17);
  if (theArraya)
  {
    CFRelease(theArraya);
  }
}

void sub_10000E224(_DWORD *a1)
{
  v2 = a1[2];
  if (v2)
  {
    IOObjectRelease(v2);
  }

  if (*a1)
  {
    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(*a1);
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(*a1);
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;

  free(a1);
}

_OWORD *sub_10000E2A4(const char *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x20uLL, 0x10E00406B6A89D0uLL);
  *v6 = 0u;
  v6[1] = 0u;
  *existing = 0;
  object = 0;
  v7 = IOBSDNameMatching(kIOMasterPortDefault, 0, a1);
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v7, existing))
  {
    LogHandle = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v9))
    {
LABEL_6:
      v14 = 0;
LABEL_7:
      v15 = 1;
      goto LABEL_8;
    }

    *buf = 136315138;
    v42[0] = a1;
    v10 = "No such interface %s\n";
    v11 = LogHandle;
    v12 = v9;
    v13 = 12;
LABEL_5:
    _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    goto LABEL_6;
  }

  v17 = IONotificationPortCreate(kIOMasterPortDefault);
  if (!v17)
  {
    v22 = EAPLogGetLogHandle();
    v23 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v10 = "IONotificationPortCreate failed\n";
    v11 = v22;
    v12 = v23;
    v13 = 2;
    goto LABEL_5;
  }

  v14 = v17;
  v18 = IOIteratorNext(existing[0]);
  object = v18;
  if (!v18)
  {
    v24 = EAPLogGetLogHandle();
    v25 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v26 = "IOIteratorNext no object\n";
    v27 = v24;
    v28 = v25;
    v29 = 2;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v27, v28, v26, buf, v29);
    goto LABEL_7;
  }

  ParentEntry = IORegistryEntryGetParentEntry(v18, "IOService", &object);
  if (ParentEntry)
  {
    v20 = ParentEntry;
    v21 = 0;
LABEL_30:
    v31 = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_7;
    }

    *buf = 67109376;
    LODWORD(v42[0]) = v21;
    WORD2(v42[0]) = 1024;
    *(v42 + 6) = v20;
    v26 = "IORegistryEntryGetParentEntry(%d) failed, kr = 0x%x";
    v27 = v31;
    v28 = v32;
    v29 = 14;
    goto LABEL_32;
  }

  v30 = IORegistryEntryGetParentEntry(object, "IOService", &object);
  if (v30)
  {
    v20 = v30;
    v21 = 1;
    goto LABEL_30;
  }

  v33 = IOServiceAddInterestNotification(v14, object, "IOGeneralInterest", sub_10000E640, v6, &existing[1]);
  if (v33)
  {
    v34 = v33;
    v35 = EAPLogGetLogHandle();
    v36 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    LODWORD(v42[0]) = v34;
    v26 = "IOServiceAddInterestNotification failed, 0x%x\n";
    v27 = v35;
    v28 = v36;
    v29 = 8;
    goto LABEL_32;
  }

  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(v14);
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v15 = 0;
  *v6 = v14;
  *(v6 + 2) = existing[1];
  *(v6 + 2) = a2;
  *(v6 + 3) = a3;
LABEL_8:
  if (existing[0])
  {
    IOObjectRelease(existing[0]);
  }

  if (object)
  {
    IOObjectRelease(object);
  }

  if (v15)
  {
    if (v14)
    {
      IONotificationPortDestroy(v14);
    }

    if (existing[1])
    {
      IOObjectRelease(existing[1]);
    }

    free(v6);
    return 0;
  }

  return v6;
}

uint64_t sub_10000E640(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == -536870608)
  {
    return (*(result + 16))(result, *(result + 24));
  }

  return result;
}