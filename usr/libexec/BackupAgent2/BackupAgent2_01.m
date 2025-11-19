void sub_10006934C(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x100069300);
}

uint64_t sub_100069CFC(uint64_t a1)
{
  result = lockdown_connect();
  *(*(a1 + 32) + 8) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) != 0;
  return result;
}

uint64_t sub_100069DB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 8);
  if (result)
  {
    result = lockdown_disconnect();
    v2 = *(a1 + 32);
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_100069EE4(void *a1)
{
  result = *(a1[4] + 8);
  if (result)
  {
    v3 = a1[5];
    v4 = a1[6];
    result = lockdown_copy_value();
    *(*(a1[7] + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_100069FE0(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    result = lockdown_save_value();
    if (result)
    {
      v6 = result;
      v7 = MBGetDefaultLog();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save object to lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
        v11 = *(a1 + 48);
        v10 = *(a1 + 40);
        result = _MBLog();
      }

      if (*(a1 + 72))
      {
        result = [MBError errorWithCode:1 format:@"Failed to save object to lockdown"];
        **(a1 + 72) = result;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_10006A1D0(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"com.apple.mobile.backup"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.mobile.ldbackup") & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.purplebuddy"))
  {
    v2 = *(a1 + 32);
    if ([(__CFString *)v2 isEqualToString:@"com.apple.mobile.backup"])
    {
      v2 = @"com.apple.mobile.ldbackup";
    }

    v3 = kMBMobileUserName;
    CFPreferencesSetValue(*(a1 + 40), 0, v2, kMBMobileUserName, kCFPreferencesAnyHost);
    result = CFPreferencesSynchronize(v2, v3, kCFPreferencesAnyHost);
    if (!result)
    {
      v5 = MBGetDefaultLog();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = *(a1 + 40);
        *buf = 138412546;
        v17 = v2;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %@ domain (%@)", buf, 0x16u);
        v14 = *(a1 + 40);
        return _MBLog();
      }
    }
  }

  else
  {
    result = *(*(a1 + 48) + 8);
    if (result)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      result = lockdown_remove_value();
      if (result)
      {
        v9 = result;
        v10 = MBGetDefaultLog();
        result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          *buf = 138412802;
          v17 = v11;
          v18 = 2112;
          v19 = v12;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove object from lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
          v15 = *(a1 + 40);
          v13 = *(a1 + 32);
          result = _MBLog();
        }

        if (*(a1 + 64))
        {
          result = [MBError errorWithCode:1 format:@"Failed to remove object from lockdown"];
          **(a1 + 64) = result;
        }

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  return result;
}

void sub_10006B590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 applicationType];
    v7 = [v6 isEqualToString:LSSystemApplicationType];

    if (v7)
    {
      goto LABEL_30;
    }

    v8 = [v5 installType];
    if ((v8 - 7) > 1)
    {
      goto LABEL_30;
    }

    v9 = v8;
    v10 = [v5 bundleIdentifier];
    v11 = [v5 managedPersonas];
    if ([v11 count])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v10;
        v25 = 2114;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found app %@ with managed personae: %{public}@", buf, 0x16u);
        v19 = v10;
        v20 = v11;
        _MBLog();
      }
    }

    if (*(a1 + 64) != 1)
    {
      if ([v11 containsObject:*(a1 + 32)])
      {
        goto LABEL_16;
      }

      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138412802;
        v24 = v10;
        v25 = 2048;
        v26 = v9;
        v27 = 2114;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle: %@/%lu for managed persona %{public}@", buf, 0x20u);
        v21 = *(a1 + 32);
        _MBLog();
      }

LABEL_28:

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

    v13 = [v5 purchaserDSID];
    if (![v11 count] || *(a1 + 32) && (objc_msgSend(v11, "containsObject:") & 1) != 0)
    {
      if ([v11 count] || (objc_msgSend(*(a1 + 40), "addAccountWithDSID:", v13) & 1) != 0)
      {

LABEL_16:
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v10;
          v25 = 2048;
          v26 = v9;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found demoted bundle: %@/%lu", buf, 0x16u);
          v19 = v10;
          v20 = v9;
          _MBLog();
        }

        if (v9 == 7)
        {
          v15 = *(a1 + 48);
        }

        else
        {
          v15 = *(a1 + 56);
        }

        [v15 addObject:{v10, v19, v20}];
        goto LABEL_29;
      }

      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412802;
      v24 = v10;
      v25 = 2048;
      v26 = v9;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for DSID %@", buf, 0x20u);
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        goto LABEL_28;
      }

      v18 = *(a1 + 32);
      *buf = 138412802;
      v24 = v10;
      v25 = 2048;
      v26 = v9;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for personal persona %{public}@", buf, 0x20u);
      v22 = *(a1 + 32);
    }

    _MBLog();
    goto LABEL_27;
  }

LABEL_31:
  objc_autoreleasePoolPop(v4);
}

void sub_10006CB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006CC00(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Passcode policy evaluation succeeded: %@", buf, 0xCu);
LABEL_10:
      _MBLog();
    }
  }

  else if ([objc_msgSend(a3 "domain")] && objc_msgSend(a3, "code") == -5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Skipping passcode policy evaluation: %@", buf, 0xCu);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Passcode policy evaluation failed: %@", buf, 0xCu);
      goto LABEL_10;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006DC24(id a1)
{
  qword_10011E488 = [[MBKeyBag alloc] initWithHandle:MKBOTABackupKeyBag() OTA:1];

  _objc_release_x1();
}

uint64_t sub_1000707C8(uint64_t result, char a2, void *a3)
{
  v3 = (result - 1) < 4 || result == 7;
  if (!v3 && (result || (a2 & 1) != 0))
  {
    if (a3)
    {
      *a3 = [MBError errorWithCode:241 format:@"unsupported protection class (%d)", result];
    }

    LOBYTE(result) = -1;
  }

  return result;
}

void sub_100071A08(id a1)
{
  v1 = qword_10011E498;
  qword_10011E498 = &__NSDictionary0__struct;
}

id sub_10007637C(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_1000764D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 creationDate];
  v5 = v4;
  if (v4 && [v4 compare:*(a1 + 32)] == -1)
  {
    v7 = [v3 name];
    v6 = [v7 hasPrefix:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100077FF4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    sub_10009FD34();
  }

  if (![v6 length])
  {
    v5 = v5;
    v11 = v5;
    goto LABEL_34;
  }

  if (![v5 length])
  {
    v9 = v8;

    v5 = v9;
  }

  v10 = @"/private/var";
  if ([v8 isEqualToString:@"/private/var"])
  {
    if ([v5 hasPrefix:@"/var/"])
    {
      v10 = @"/var";
    }

    else if (![v5 hasPrefix:@"/private/var/"])
    {
      v10 = 0;
    }
  }

  else
  {
    if ([v5 hasPrefix:@"/private/var/"])
    {
      v12 = [v5 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v5 = v12;
    }

    if ([v5 hasPrefix:@"/var/"])
    {
      if ([v8 hasPrefix:@"/private/var/"])
      {
        v13 = [v8 substringFromIndex:{objc_msgSend(@"/private", "length")}];
      }

      else
      {
        v13 = v8;
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = [v5 length];
  v15 = [(__CFString *)v10 length];
  v16 = v15;
  if (!v10 || v14 != v15)
  {
    if (!v10)
    {
LABEL_32:
      v17 = v5;
      goto LABEL_33;
    }

LABEL_26:
    if ([v5 hasPrefix:v10] && v14 != v16 && objc_msgSend(v5, "characterAtIndex:", v16) == 47)
    {
      if ([v5 rangeOfString:v10] || !v18)
      {
        sub_10009FD08();
      }

      v17 = [v5 stringByReplacingCharactersInRange:0 withString:{v18, v6}];
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![v5 hasPrefix:v10])
  {
    goto LABEL_26;
  }

  v17 = v6;
LABEL_33:
  v11 = v17;

LABEL_34:

  return v11;
}

id sub_100078250(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v8 hasPrefix:v9])
  {
    goto LABEL_4;
  }

  v11 = [v9 length];
  if (v11 > [v8 length])
  {
    goto LABEL_4;
  }

  if ([v8 rangeOfString:v9])
  {
    sub_10009FD60();
  }

  v16 = v15;
  if (v15 == [v8 length])
  {
    v12 = v10;
  }

  else
  {
    if ([v8 characterAtIndex:v16] != 47)
    {
LABEL_4:
      v12 = v8;
      goto LABEL_5;
    }

    v12 = [v8 stringByReplacingCharactersInRange:0 withString:{v16, v10}];
  }

LABEL_5:
  v13 = v12;

  return v13;
}

void sub_1000795A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000795DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000795F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) upgradeBlock];
  v16 = 0;
  v6 = (v5)[2](v5, v3, &v16);
  v7 = v16;
  v8 = v16;

  if (v6)
  {
    v9 = [v3 setUserVersion:*(a1 + 52)];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 52);
      *buf = 67109634;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=pqldb= Can't migrate from version %d to %d: %@", buf, 0x18u);
      v15 = *(a1 + 52);
      v14 = *(a1 + 48);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100079888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000798A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = (*(v5 + 16))();
  objc_storeStrong((v6 + 40), obj);
  objc_autoreleasePoolPop(v4);

  return v7;
}

uint64_t sub_100079D10(int a1)
{
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    return (HIBYTE(v5.st_flags) >> 6) & 1;
  }

  v1 = MBGetDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    *buf = 67109120;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "fstat failed: %{errno}d", buf, 8u);
    v4 = *__error();
    _MBLog();
  }

  return 0;
}

uint64_t sub_100079E0C(void *a1)
{
  v1 = a1;
  memset(&v7, 0, sizeof(v7));
  if (lstat([v1 fileSystemRepresentation], &v7))
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 138412546;
      v9 = v1;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v6 = *__error();
      _MBLog();
    }

    v4 = 0;
  }

  else
  {
    v4 = (HIBYTE(v7.st_flags) >> 6) & 1;
  }

  return v4;
}

uint64_t sub_10007AFEC(uint64_t a1)
{
  if (sub_10008E608(a1))
  {
    v2 = 0;
  }

  else if (sub_10008E5D4(a1))
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  if (sub_10008E5B0(a1))
  {
    v2 |= 0x40u;
  }

  if (sub_10008E5A4(a1))
  {
    return v2 | 0x8000;
  }

  else
  {
    return v2;
  }
}

BOOL sub_10007B058(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=restorable= Using APFSIOC_MAKE_OBJECT_DATALESS to restore the com.apple.decmpfs xattr on %@: %@", buf, 0x16u);
    _MBLog();
  }

  if (v6)
  {
    v15[0] = [v6 bytes];
    v15[1] = [v6 length];
    v8 = fsctl([v5 fileSystemRepresentation], 0x80104A39uLL, v15, 0);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        *buf = 138412546;
        v17 = v5;
        v18 = 1024;
        LODWORD(v19) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=restorable= fsctl(APFSIOC_MAKE_OBJECT_DATALESS) failed at %@: %{errno}d", buf, 0x12u);
        v14 = *__error();
        _MBLog();
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:102 path:v5 format:@"set_dataless_attribute error"];
      }
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=restorable= Unexpected nil extended attribute com.apple.decmpfs for dataless file: %@", buf, 0xCu);
      _MBLog();
    }

    v9 = 1;
  }

  return v9;
}

id sub_10007B2BC(uint64_t a1, int a2, const char *a3)
{
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = 0x39E0000000005;
  v22 = 0;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v21[0] = v6;
  v21[1] = 0;
  v21[2] = v7;
  v21[3] = 0;
  v8 = *(a1 + 72);
  v21[4] = v8;
  v21[5] = 0;
  v9 = time(0);
  v21[6] = v9;
  v21[7] = 0;
  v21[8] = *(a1 + 44);
  LOWORD(v22) = *(a1 + 112);
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 44);
    v12 = *(a1 + 48);
    v13 = *(a1 + 112);
    v14 = *(a1 + 32);
    *buf = 67110914;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    v28 = 2048;
    v29 = v6;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 1024;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=restorable= Restoring attributes u/gid %d/%d, b/m/c/atime %ld/%ld/%ld/%ld, permissions 0%o to %@", buf, 0x46u);
    v19 = *(a1 + 112);
    v20 = *(a1 + 32);
    v17 = *(a1 + 44);
    v18 = *(a1 + 48);
    _MBLog();
  }

  if (setattrlistat(a2, a3, v23, v21, 0x50uLL, 3u) < 0)
  {
    v15 = [MBError posixErrorWithPath:*(a1 + 32) format:@"fsetattrlist() failed"];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_10007CAA8(uint64_t a1, int a2, char *a3)
{
  memset(&v22, 0, sizeof(v22));
  if (fstatat(a2, a3, &v22, 32))
  {
    v6 = *__error();
    if (v6 != 2)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 32) length];
        *buf = 136315650;
        v24 = a3;
        v25 = 2048;
        v26 = v8;
        v27 = 1024;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=restorable= fstatat failed at %s (%ld): %{errno}d", buf, 0x1Cu);
        v20 = [*(a1 + 32) length];
        v21 = v6;
        v19 = a3;
        _MBLog();
      }

      v9 = *(a1 + 32);
      v10 = @"fstatat error";
      v11 = v6;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10008E6B8(v22.st_mode);
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Removing existing %@", buf, 0xCu);

      v19 = sub_10008E6B8(v22.st_mode);
      _MBLog();
    }

    if (unlinkat(a2, a3, 0) && *__error() != 2)
    {
      v11 = *__error();
      v9 = *(a1 + 32);
      v10 = @"Error removing existing item while restoring symbolic link";
      goto LABEL_19;
    }
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 40);
    *buf = 138412290;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Creating symbolic link: %@", buf, 0xCu);
    v19 = *(a1 + 40);
    _MBLog();
  }

  if ([*(a1 + 40) length])
  {
    v16 = [*(a1 + 40) fileSystemRepresentation];
  }

  else
  {
    v16 = "";
  }

  if (!symlinkat(v16, a2, a3))
  {
    v17 = 0;
    goto LABEL_20;
  }

  v11 = *__error();
  v9 = *(a1 + 32);
  v10 = @"symlinkat error";
LABEL_19:
  v17 = [MBError errorWithErrno:v11 path:v9 format:v10, v19, v20, v21];
LABEL_20:

  return v17;
}

id sub_10007CDC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == 1)
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link ownership: %d:%d", buf, 0xEu);
      v27 = v4;
      v29 = v5;
      _MBLog();
    }

    if (fchown(a2, v4, v5))
    {
      v7 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchown error"];
LABEL_6:
      v8 = v7;
      goto LABEL_32;
    }

    v9 = sub_10007AFEC(a1 + 56);
    if (v9)
    {
      v10 = v9;
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=restorable= Restoring symlink BSD flags: 0x%x", buf, 8u);
        v27 = v10;
        _MBLog();
      }

      if (fchflags(a2, v10))
      {
        v12 = *__error();
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          *buf = 67109634;
          *&buf[4] = v10;
          *&buf[8] = 2112;
          *&buf[10] = v14;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore symlink BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
          v30 = *(a1 + 32);
          _MBLog();
        }

        v7 = [MBError errorWithCode:102 path:*(a1 + 32) format:@"fchflags error"];
        goto LABEL_6;
      }
    }
  }

  v15 = [*(a1 + 40) extendedAttributes];
  if (v15)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link extended attributes", buf, 2u);
      _MBLog();
    }

    v32 = 0;
    v17 = [MBExtendedAttributes setAttributes:v15 forFD:a2 error:&v32];
    v18 = v32;
    v19 = v18;
    if (!v17)
    {
      v25 = [MBError errorWithCode:102 error:*(a1 + 48) format:@"setxattr error"];
LABEL_29:
      v8 = v25;

      goto LABEL_31;
    }
  }

  if (*(a1 + 128) != 1)
  {
    goto LABEL_24;
  }

  v20 = sub_10008E61C(a1 + 56);
  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link permissions: 0%3o", buf, 8u);
    _MBLog();
  }

  if (!fchmod(a2, v20))
  {
LABEL_24:
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 80)];
      v24 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) for %@", buf, 0x16u);

      v28 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 80)];
      v31 = *(a1 + 40);
      _MBLog();
    }

    *buf = time(0);
    *&buf[8] = 0;
    *&buf[16] = *(a1 + 80);
    v34 = 0;
    if (!futimes(a2, buf))
    {
      v8 = 0;
      goto LABEL_31;
    }

    v19 = [*(a1 + 40) description];
    v25 = [MBError posixErrorWithCode:102 path:v19 format:@"futimes error"];
    goto LABEL_29;
  }

  v8 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchmod error"];
LABEL_31:

LABEL_32:

  return v8;
}

id sub_10007D5D8(uint64_t a1, int a2, const char *a3)
{
  v6 = sub_10008E61C(a1 + 40);
  memset(&v26, 0, sizeof(v26));
  if (fstatat(a2, a3, &v26, 32))
  {
    if (*__error() != 2)
    {
      v15 = *__error();
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) length];
        *buf = 136315650;
        v28 = a3;
        v29 = 2048;
        v30 = v17;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=restorable= fstatat failed at %s (%ld): %{errno}d", buf, 0x1Cu);
        v24 = [*(a1 + 32) length];
        v25 = v15;
        v23 = a3;
        _MBLog();
      }

      v9 = *(a1 + 32);
      v10 = @"fstatat error";
      v18 = 101;
      goto LABEL_24;
    }

    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v28 = v8;
      v29 = 1024;
      LODWORD(v30) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restorable= Making directory at %@ (0%3o)", buf, 0x12u);
      v23 = *(a1 + 32);
      v24 = v6;
      _MBLog();
    }

    if (mkpathat_np(a2, a3, v6))
    {
      v9 = *(a1 + 32);
      v10 = @"mkpathat_np error";
LABEL_23:
      v18 = 102;
LABEL_24:
      v21 = [MBError posixErrorWithCode:v18 path:v9 format:v10, v23, v24, v25];
      goto LABEL_26;
    }
  }

  else
  {
    v11 = v26.st_mode & 0xF000;
    v12 = MBGetDefaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == 0x4000)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Directory already exists", buf, 2u);
        _MBLog();
      }

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v28) = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Restoring directory permissions: 0%3o", buf, 8u);
        v23 = v6;
        _MBLog();
      }

      if (fchmodat(a2, a3, v6, 32))
      {
        v9 = *(a1 + 32);
        v10 = @"fchmodat error";
        goto LABEL_23;
      }
    }

    else
    {
      if (v13)
      {
        v19 = sub_10008E6B8(v26.st_mode);
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Removing existing object %@", buf, 0xCu);

        v23 = sub_10008E6B8(v26.st_mode);
        _MBLog();
      }

      unlinkat(a2, a3, 0);
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v28) = v6;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=restorable= Making directory: 0%3o", buf, 8u);
        v23 = v6;
        _MBLog();
      }

      if (mkdirat(a2, a3, v6))
      {
        v9 = *(a1 + 32);
        v10 = @"mkdirat error";
        goto LABEL_23;
      }
    }
  }

  v21 = 0;
LABEL_26:

  return v21;
}

id sub_10007DA44(uint64_t a1, int a2)
{
  if (*(a1 + 128) == 1)
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 67109634;
      *v38 = v4;
      *&v38[4] = 1024;
      *&v38[6] = v5;
      *&v38[10] = 2112;
      *&v38[12] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=restorable= Restoring directory ownership: %d:%d at path %@", buf, 0x18u);
      v32 = v5;
      v34 = *(a1 + 32);
      v31 = v4;
      _MBLog();
    }

    if (fchown(a2, v4, v5))
    {
      v8 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchown error"];
      goto LABEL_35;
    }
  }

  v9 = [*(a1 + 32) fileSystemRepresentation];
  v10 = [*(a1 + 40) extendedAttributes];
  if (v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 count];
      v13 = *(a1 + 32);
      *buf = 134218242;
      *v38 = v12;
      *&v38[8] = 2112;
      *&v38[10] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=restorable= Restoring directory extended attributes (%ld) at path %@", buf, 0x16u);
      v31 = [v10 count];
      v32 = *(a1 + 32);
      _MBLog();
    }

    if (sub_10008E598(a1 + 56))
    {
      v14 = [v10 objectForKeyedSubscript:@"com.apple.decmpfs"];
      if (v14)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
          _MBLog();
        }

        v16 = [v10 mutableCopy];
        [v16 removeObjectForKey:@"com.apple.decmpfs"];

        v10 = v16;
      }
    }

    else
    {
      v14 = 0;
    }

    v36 = 0;
    v17 = [MBExtendedAttributes setAttributes:v10 forPathFSR:v9 error:&v36, v31, v32, v34];
    v18 = v36;
    v19 = v18;
    if (!v17)
    {
      v8 = [MBError errorWithCode:102 error:v18 format:@"setxattr error"];

      goto LABEL_34;
    }
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 128) != 1)
  {
    goto LABEL_30;
  }

  v20 = sub_10007AFEC(a1 + 56);
  if (v20)
  {
    v21 = v20;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v38 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Restoring directory BSD flags: 0x%x", buf, 8u);
      _MBLog();
    }

    if (fchflags(a2, v21))
    {
      v23 = *__error();
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        *buf = 67109634;
        *v38 = v21;
        *&v38[4] = 2112;
        *&v38[6] = v25;
        *&v38[14] = 1024;
        *&v38[16] = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore directory BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
        v33 = *(a1 + 32);
        _MBLog();
      }

      v26 = [MBError errorWithCode:102 path:*(a1 + 32) format:@"fchflags error"];
LABEL_32:
      v8 = v26;
      goto LABEL_34;
    }
  }

  if (!sub_10008E598(a1 + 56))
  {
LABEL_30:
    if (*(a1 + 129) != 1)
    {
      v8 = 0;
      goto LABEL_34;
    }

    v26 = [*(a1 + 48) _setProtectionClass:*(a1 + 126) withPath:*(a1 + 32)];
    goto LABEL_32;
  }

  v27 = *(a1 + 32);
  v35 = 0;
  v28 = sub_10007B058(v27, v14, &v35);
  v29 = v35;
  v8 = v29;
  if (v28)
  {

    goto LABEL_30;
  }

LABEL_34:

LABEL_35:

  return v8;
}

id sub_10007E860(void *a1)
{
  v82 = a1;
  v98 = objc_alloc_init(MBIgnoredAccountsTracker);
  v1 = NSNumber_ptr;
  v95 = objc_opt_new();
  [LSApplicationRecord enumeratorWithOptions:192];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v2 = v107 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v104 objects:v112 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v105;
    v6 = LSUserApplicationType;
    v94 = _kCFBundleDisplayNameKey;
    v93 = _kCFBundleShortVersionStringKey;
    v99 = v2;
    v100 = LSUserApplicationType;
    v101 = *v105;
    do
    {
      v7 = 0;
      v102 = v4;
      do
      {
        if (*v105 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v104 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 typeForInstallMachinery];
        if ([v10 isEqualToString:v6])
        {
          v11 = v1[50];
          v12 = objc_opt_new();
          v13 = [v8 bundleIdentifier];
          v14 = [v8 installType];
          if (!v13)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v117 = v8;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "nil bundleID for app record: %@", buf, 0xCu);
              v79 = v8;
LABEL_13:
              _MBLog();
            }

LABEL_26:

            v5 = v101;
            v4 = v102;
            v6 = v100;
            goto LABEL_27;
          }

          v15 = v14;
          if ([v8 isBeta])
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (beta)", buf, 0x16u);
              v79 = v13;
              v80 = v15;
              goto LABEL_13;
            }

            goto LABEL_26;
          }

          v17 = [v8 applicationDSID];
          v18 = [NSNumber numberWithUnsignedLongLong:v17];
          v19 = [(MBIgnoredAccountsTracker *)v98 addAccountWithDSID:v18];

          if ((v19 & 1) == 0)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              v120 = 2048;
              v121 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu for account %llu", buf, 0x20u);
              v80 = v15;
              v81 = v17;
              v79 = v13;
              _MBLog();
            }

            v1 = NSNumber_ptr;
            goto LABEL_25;
          }

          v20 = sub_100049398(v8);
          if (v20 == 2)
          {
            v16 = MBGetDefaultLog();
            v1 = NSNumber_ptr;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (Swift Playgrounds app)", buf, 0x16u);
              v79 = v13;
              v80 = v15;
LABEL_24:
              _MBLog();
            }

LABEL_25:
            v2 = v99;
            goto LABEL_26;
          }

          if (v20 == 1)
          {
            v16 = MBGetDefaultLog();
            v1 = NSNumber_ptr;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (app clip)", buf, 0x16u);
              v79 = v13;
              v80 = v15;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          v21 = [v8 applicationState];
          v22 = [v21 isDowngraded];

          v23 = [v8 compatibilityObject];
          v16 = [v23 bundleExecutable];

          [v12 setObject:v10 forKeyedSubscript:@"ApplicationType"];
          v24 = [v8 localizedName];
          [v12 setObject:v24 forKeyedSubscript:v94];

          [v12 setObject:v16 forKeyedSubscript:kCFBundleExecutableKey];
          [v12 setObject:v13 forKeyedSubscript:kCFBundleIdentifierKey];
          v25 = [v8 localizedName];
          [v12 setObject:v25 forKeyedSubscript:kCFBundleNameKey];

          v26 = [v8 bundleVersion];
          [v12 setObject:v26 forKeyedSubscript:kCFBundleVersionKey];

          v27 = [v8 shortVersionString];
          [v12 setObject:v27 forKeyedSubscript:v93];

          v28 = [NSNumber numberWithUnsignedLongLong:v17];
          [v12 setObject:v28 forKeyedSubscript:@"ApplicationDSID"];

          v29 = [NSNumber numberWithBool:v22];
          [v12 setObject:v29 forKeyedSubscript:@"IsDemotedApp"];

          if ([v8 isLaunchProhibited])
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSApplicationLaunchProhibited"];
            v1 = NSNumber_ptr;
            v2 = v99;
          }

          else
          {
            v30 = SBSCopyIconImagePNGDataForDisplayIdentifier();
            v1 = NSNumber_ptr;
            v2 = v99;
            if (!v30)
            {
              v31 = MBGetDefaultLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v117 = v13;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to fetch the icon for %@", buf, 0xCu);
                v79 = v13;
                _MBLog();
              }

              v30 = +[NSData data];
            }

            [v12 setObject:v30 forKeyedSubscript:{@"PlaceholderIcon", v79, v80, v81}];
          }

          v32 = [v8 bundleContainerURL];
          v96 = v32;
          if (!v32)
          {
            v46 = MBGetDefaultLog();
            v97 = v46;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2112;
              v119 = v8;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "nil bundleContainerURL for %@: %@", buf, 0x16u);
              v79 = v13;
              v80 = v8;
              _MBLog();
            }

            goto LABEL_75;
          }

          v33 = [v32 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
          v34 = [LSApplicationProxy applicationProxyForIdentifier:v13];
          v97 = v34;
          if (!v34 || (v35 = v34, ![v34 isContainerized]))
          {
            v45 = sub_10007F7C8(v33, @"iTunesMetadata", v12);
            goto LABEL_70;
          }

          v36 = v35;
          v88 = v33;
          v37 = v33;
          v90 = v12;
          [v36 bundleIdentifier];
          v92 = v91 = v37;
          v111 = 0;
          v38 = [NSData dataWithContentsOfURL:v37 options:3 error:&v111];
          v39 = v111;
          v89 = v36;
          if (v38)
          {
            v109 = 0;
            v110 = 100;
            v40 = v39;
            v87 = v38;
            v41 = [NSPropertyListSerialization propertyListWithData:v38 options:1 format:&v110 error:&v109];
            v86 = v109;

            if (v41)
            {
              v42 = v1[50];
              objc_opt_class();
              v85 = v41;
              if (objc_opt_isKindOfClass())
              {
                v43 = [v41 objectForKeyedSubscript:@"title"];

                if (v43)
                {
                  v44 = v86;
                  goto LABEL_66;
                }

                v61 = [v89 localizedShortName];
                if (!v61)
                {
                  v61 = [v89 localizedName];
                }

                v84 = v61;
                [v85 setObject:v61 forKeyedSubscript:@"title"];
                v108 = 0;
                v62 = [NSPropertyListSerialization dataWithPropertyList:v85 format:v110 options:0 error:&v108];
                v63 = v108;

                if (v62)
                {

                  v87 = v62;
                  v44 = v63;
LABEL_66:
                  [v90 setObject:v87 forKey:@"iTunesMetadata"];
                }

                else
                {
                  v68 = MBGetDefaultLog();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v117 = v92;
                    v118 = 2112;
                    v119 = v63;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to serialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                    v79 = v92;
                    v80 = v63;
                    _MBLog();
                  }

                  v87 = v84;
                  v44 = v63;
                }

                v41 = v85;
              }

              else
              {
                v52 = MBGetDefaultLog();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  v53 = [v91 path];
                  v54 = objc_opt_class();
                  v55 = NSStringFromClass(v54);
                  *buf = 138412802;
                  v117 = v53;
                  v118 = 2112;
                  v119 = v92;
                  v120 = 2112;
                  v121 = v55;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Got unexpected object type for %@ for %@: %@", buf, 0x20u);

                  v56 = [v91 path];
                  v57 = objc_opt_class();
                  NSStringFromClass(v57);
                  v81 = v80 = v92;
                  v79 = v56;
                  _MBLog();

                  v1 = NSNumber_ptr;
                }

                v41 = v85;
                v44 = v86;
              }
            }

            else
            {
              v51 = MBGetDefaultLog();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v117 = v92;
                v118 = 2112;
                v119 = v86;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to deserialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                v79 = v92;
                v80 = v86;
                _MBLog();
              }

              v44 = v86;
            }

            v60 = v44;
            v59 = v89;
LABEL_69:

            v33 = v88;
LABEL_70:

            v64 = [v8 URL];
            if (v64)
            {
              v79 = v16;
              v65 = [NSString stringWithFormat:@"SC_Info/%@.sinf"];
              v66 = [v64 URLByAppendingPathComponent:v65];
              v67 = sub_10007F7C8(v66, @"ApplicationSINF", v12);
            }

            else
            {
              v66 = MBGetDefaultLog();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v117 = v13;
                v118 = 2112;
                v119 = v8;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "nil bundleURL for %@: %@", buf, 0x16u);
                v79 = v13;
                v80 = v8;
                _MBLog();
              }
            }

            v2 = v99;
LABEL_75:

            [v95 setObject:v12 forKeyedSubscript:v13];
            goto LABEL_26;
          }

          v47 = v39;
          v48 = [v39 domain];
          v83 = v47;
          if ([v48 isEqualToString:NSCocoaErrorDomain])
          {
            v49 = [v47 code];

            v50 = v49 == 260;
            v1 = NSNumber_ptr;
            if (!v50)
            {
LABEL_58:
              v58 = MBGetDefaultLog();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v117 = v92;
                v118 = 2112;
                v119 = v91;
                v120 = 2112;
                v121 = v47;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to read metadata for %@ from %@: %@", buf, 0x20u);
                v80 = v91;
                v81 = v47;
                v79 = v92;
                _MBLog();
              }
            }

            v59 = v89;
            v60 = v83;
            goto LABEL_69;
          }

          goto LABEL_58;
        }

LABEL_27:

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v69 = [v2 countByEnumeratingWithState:&v104 objects:v112 count:16];
      v4 = v69;
    }

    while (v69);
  }

  v70 = [v95 copy];
  v103 = 0;
  v71 = [v70 writeToURL:v82 error:&v103];
  v72 = v103;
  v73 = MBGetDefaultLog();
  v74 = v73;
  if (v71)
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      goto LABEL_86;
    }

    v75 = [v82 path];
    *v112 = 138412290;
    v113 = v75;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Wrote restore apps plist to %@", v112, 0xCu);

    v76 = [v82 path];
  }

  else
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v77 = [v82 path];
    *v112 = 138412546;
    v113 = v77;
    v114 = 2112;
    v115 = v72;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Failed to write the plist to %@: %@", v112, 0x16u);

    v76 = [v82 path];
  }

  _MBLog();

LABEL_86:

  return v72;
}

id sub_10007F7C8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v8 = [NSData dataWithContentsOfURL:v5 options:2 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:v6];
LABEL_3:
    v11 = 0;
    goto LABEL_12;
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v10 code];

    if (v13 == 260)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get data from %@: %@", buf, 0x16u);
    _MBLog();
  }

  if (!v10)
  {
    sub_1000A0404();
  }

  v11 = v10;
LABEL_12:

  return v11;
}

void sub_100083B54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=iCloudDrive= BRCDatabaseRestoreManager failed: %@", buf, 0xCu);
      _MBLog();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008407C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000840B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000840C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100084438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100084470(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008B2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B33C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10008B354(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v41 = v10;
      v42 = 2112;
      *v43 = v11;
      *&v43[8] = 2112;
      *&v43[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      v37 = *(a1 + 40);
      v35 = *(a1 + 32);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if (v12)
  {
    v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 88) + 8) + 24);
  if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 88) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 88) + 8) + 24);
      v20 = *(a1 + 104);
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) name];
      *buf = 134218754;
      v41 = v19;
      v42 = 1024;
      *v43 = v20;
      *&v43[4] = 2114;
      *&v43[6] = v21;
      *&v43[14] = 2114;
      *&v43[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), single pass", buf, 0x26u);

      v23 = *(*(*(a1 + 88) + 8) + 24);
      v24 = *(a1 + 40);
      v25 = *(a1 + 104);
      [*(a1 + 32) name];
      v39 = v38 = v24;
      v34 = v23;
      v36 = v25;
      _MBLog();
    }
  }

  v26 = *(a1 + 56);
  v27 = *(a1 + 32);
  v28 = [*(a1 + 40) stringByAppendingPathComponent:{v7, v34, v36, v38, v39}];
  v29 = [MBFile fileWithDomain:v27 snapshotPath:v26 relativePath:v28];

  [v29 setNode:a3];
  if ([*(a1 + 48) _shouldNotBackupFile:v29 domain:*(a1 + 32)])
  {
    v16 = 1;
  }

  else
  {
    if (sub_10008E5E0(a3) || ![v7 mb_pathHasSQLiteJournalSuffix])
    {
      [*(a1 + 64) addObject:v7];
      v33 = *(a1 + 72);
      v32 = [NSData dataWithBytes:a3 length:72];
      [v33 addObject:v32];
    }

    else
    {
      v30 = [*(a1 + 48) _foundFile:v29 snapshotPath:*(a1 + 56) stats:*(a1 + 96)];
      v31 = *(*(a1 + 80) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    v16 = *(*(*(a1 + 80) + 8) + 40) == 0;
  }

LABEL_8:
  return v16;
}

void sub_10008BC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 240), 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10008BCC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v37 = v10;
      v38 = 2112;
      *v39 = v11;
      *&v39[8] = 2112;
      *&v39[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      v34 = *(a1 + 40);
      v33 = *(a1 + 32);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if (v12)
  {
    v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 72) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 72) + 8) + 24);
      v20 = *(a1 + 88);
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) name];
      *buf = 134218754;
      v37 = v19;
      v38 = 1024;
      *v39 = v20;
      *&v39[4] = 2114;
      *&v39[6] = v21;
      *&v39[14] = 2114;
      *&v39[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), first pass", buf, 0x26u);

      v23 = *(*(*(a1 + 72) + 8) + 24);
      v24 = *(a1 + 40);
      v25 = *(a1 + 88);
      v35 = [*(a1 + 32) name];
      _MBLog();
    }
  }

  if (sub_10008E5E0(a3) || ![v7 mb_pathHasSQLiteJournalSuffix])
  {
    v16 = 1;
  }

  else
  {
    v26 = *(a1 + 56);
    v27 = *(a1 + 32);
    v28 = [*(a1 + 40) stringByAppendingPathComponent:v7];
    v29 = [MBFile fileWithDomain:v27 snapshotPath:v26 relativePath:v28];

    [v29 setNode:a3];
    if ([*(a1 + 48) _shouldNotBackupFile:v29 domain:*(a1 + 32)])
    {
      v16 = 1;
    }

    else
    {
      v30 = [*(a1 + 48) _foundFile:v29 snapshotPath:*(a1 + 56) stats:*(a1 + 80)];
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v16 = *(*(*(a1 + 64) + 8) + 40) == 0;
    }
  }

LABEL_8:

  return v16;
}

uint64_t sub_10008C030(uint64_t a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v44 = v10;
      v45 = 2112;
      *v46 = v11;
      *&v46[8] = 2112;
      *&v46[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      v40 = *(a1 + 40);
      v38 = *(a1 + 32);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if ((v12 & 1) == 0)
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 88) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(*(a1 + 88) + 8) + 24);
        v20 = *(a1 + 104);
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) name];
        *buf = 134218754;
        v44 = v19;
        v45 = 1024;
        *v46 = v20;
        *&v46[4] = 2114;
        *&v46[6] = v21;
        *&v46[14] = 2114;
        *&v46[16] = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), second pass", buf, 0x26u);

        v23 = *(*(*(a1 + 88) + 8) + 24);
        v24 = *(a1 + 40);
        v25 = *(a1 + 104);
        [*(a1 + 32) name];
        v42 = v41 = v24;
        v37 = v23;
        v39 = v25;
        _MBLog();
      }
    }

    if (!sub_10008E5E0(a3) && ([v7 mb_pathHasSQLiteJournalSuffix] & 1) != 0)
    {
      v16 = 1;
      goto LABEL_8;
    }

    v26 = *(a1 + 56);
    v27 = *(a1 + 32);
    v28 = [*(a1 + 40) stringByAppendingPathComponent:{v7, v37, v39, v41, v42}];
    v29 = [MBFile fileWithDomain:v27 snapshotPath:v26 relativePath:v28];

    [v29 setNode:a3];
    if (([*(a1 + 48) _shouldNotBackupFile:v29 domain:*(a1 + 32)] & 1) == 0)
    {
      v30 = [*(a1 + 48) _foundFile:v29 snapshotPath:*(a1 + 56) stats:*(a1 + 96)];
      v31 = *(*(a1 + 80) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      if (*(*(*(a1 + 80) + 8) + 40))
      {
        v16 = 0;
        goto LABEL_20;
      }

      if ([v29 isDirectory])
      {
        v33 = *(a1 + 64);
        v34 = [v29 relativePath];
        [v33 addObject:v34];

        v35 = *(a1 + 72);
        v36 = [NSNumber numberWithUnsignedInt:*a3];
        [v35 addObject:v36];
      }
    }

    v16 = 1;
LABEL_20:

    goto LABEL_8;
  }

  v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
  v14 = *(*(a1 + 80) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_7:
  v16 = 0;
LABEL_8:

  return v16;
}

uint64_t sub_10008DCA8(int a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v38[0] = word_10011E1F8;
  v38[1] = 0;
  v39 = dword_10011E1FC | 0x20000001;
  v40 = 0;
  v41 = unk_10011E204;
  v42 = dword_10011E20C;
  v6 = [v4 mutableBytes];
  v30 = v4;
  v7 = [v4 length];
  v34 = +[NSFileManager defaultManager];
  v35 = v6;
  v32 = v5;
  v33 = &v7[v6];
LABEL_2:
  v8 = getattrlistbulk(a1, v38, v35, v7, 0x29uLL);
  v9 = v8;
  if (v8 >= 1)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= v7)
      {
        sub_1000A07F0();
      }

      v11 = &v35[v10];
      if (*&v35[v10 + 24])
      {
        v24 = v30;
        v25 = v32;
        v26 = @"getattrlistbulk() enumeration error";
        goto LABEL_28;
      }

      v12 = *v11;
      v13 = objc_autoreleasePoolPush();
      v14 = v34;
      v15 = &v11[*(v11 + 7) + 28];
      v16 = *(v11 + 8);
      if (v15 + v16 > v33)
      {
        sub_1000A0848();
      }

      v17 = (v16 - 1);
      if (*(v15 + v17))
      {
        sub_1000A081C();
      }

      v18 = v14;
      v19 = [v14 stringWithFileSystemRepresentation:&v11[*(v11 + 7) + 28] length:v17];
      if (!v19)
      {
        break;
      }

      v37 = 0;
      memset(v36, 0, sizeof(v36));
      v46 = *(v11 + 84);
      v47 = *(v11 + 100);
      v48 = *(v11 + 116);
      v49 = *(v11 + 132);
      *buf = *(v11 + 36);
      v44 = *(v11 + 52);
      v45 = *(v11 + 68);
      if ((sub_10008E118(buf, v36, v19, 0) & 1) == 0)
      {
        goto LABEL_22;
      }

      v20 = (*(v32 + 2))(v32, v19, v36, 0);

      objc_autoreleasePoolPop(v13);
      if ((v20 & 1) == 0)
      {
        v28 = 0;
        goto LABEL_29;
      }

LABEL_23:
      v10 += v12;
      if (!--v9)
      {
        goto LABEL_2;
      }
    }

    v21 = [NSData dataWithBytes:v15 length:v17];
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unexpected mbNode name: %@", buf, 0xCu);
      _MBLog();
    }

    if (MBIsInternalInstall())
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Unexpected mbNode name: %@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else
    {
      if (dword_10011E4B4 || atomic_fetch_add_explicit(&dword_10011E4B4, 1u, memory_order_relaxed))
      {
        goto LABEL_21;
      }

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Unexpected mbNode name", buf, 2u);
        goto LABEL_17;
      }
    }

LABEL_21:
LABEL_22:

    objc_autoreleasePoolPop(v13);
    goto LABEL_23;
  }

  if (v8 < 0)
  {
    v26 = @"getattrlistbulk() error";
    v24 = v30;
    v25 = v32;
LABEL_28:
    v27 = [MBError errorWithErrno:*__error() format:v26];
    (v25)[2](v25, 0, 0, v27);

    v28 = 0;
  }

  else
  {
    v28 = 1;
LABEL_29:
    v24 = v30;
    v25 = v32;
  }

  return v28;
}

uint64_t sub_10008E118(unsigned int *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (!a2)
  {
    sub_1000A0874();
  }

  v8 = v7;
  v9 = *a1;
  v10 = a1[15];
  if (*a1 == 1)
  {
    v11 = 0x8000;
  }

  else if (v9 == 2)
  {
    v11 = 0x4000;
  }

  else
  {
    if (v9 != 5)
    {
      if (a4)
      {
        if (v7)
        {
          [MBError errorWithCode:242 path:v7 format:@"Not a directory, symlink, or regular file (%d)", *a1];
        }

        else
        {
          [MBError errorWithCode:242 format:@"Not a directory, symlink, or regular file (%d)", *a1];
        }

        *a4 = v19 = 0;
        goto LABEL_27;
      }

LABEL_14:
      v19 = 0;
      goto LABEL_27;
    }

    v11 = -24576;
  }

  v12 = sub_1000707C8(a1[20], v9 == 1, a4);
  if (v12 == 255)
  {
    goto LABEL_14;
  }

  v13 = a1[21];
  if (v9 == 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 24;
  }

  else
  {
    v15 = v13 > 1;
    v16 = *(a1 + 12);
    if (v9 == 1)
    {
      v14 = *(a1 + 11);
      v17 = a1[17];
    }

    else
    {
      v14 = 0;
      v17 = 0;
    }

    v13 = 1;
    v18 = 26;
  }

  v20 = *&a1[v18];
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v21 = *(a1 + 1);
  v22 = *(a1 + 5);
  v23 = *(a1 + 9);
  v24 = *(a1 + 9);
  if (v9 == 1 && (v20 & 0x40) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 13);
  *a2 = v13;
  *(a2 + 4) = v26;
  *(a2 + 12) = 0;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v14;
  *(a2 + 48) = v24;
  *(a2 + 56) = v17;
  *(a2 + 60) = v16;
  *(a2 + 68) = v10 & 0xFFF | v11;
  *(a2 + 70) = v12;
  *(a2 + 71) = (v15 & 0xFB | (4 * ((v20 & 2) != 0)) | v25) ^ 4;
  v27 = a1[16];
  *(a2 + 12) = v27;
  if ((v27 & 0x40000000) != 0)
  {
    *(a2 + 40) = 0;
  }

  v19 = 1;
LABEL_27:

  return v19;
}

uint64_t sub_10008E314(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (!v5)
  {
    sub_1000A08CC();
  }

  if (!a2)
  {
    sub_1000A08A0();
  }

  v6 = v5;
  memset(v10, 0, 136);
  if (getattrlist([v5 fileSystemRepresentation], &word_10011E1F8, v10, 0x88uLL, 0x29u))
  {
    if (a3)
    {
      [MBError errorWithErrno:*__error() path:v6 format:@"getattrlist() error"];
      *a3 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v9[4] = *(&v10[5] + 8);
    v9[5] = *(&v10[6] + 8);
    v9[6] = *(&v10[7] + 8);
    v9[0] = *(&v10[1] + 8);
    v9[1] = *(&v10[2] + 8);
    v9[2] = *(&v10[3] + 8);
    v9[3] = *(&v10[4] + 8);
    v7 = sub_10008E118(v9, a2, v6, a3);
  }

  return v7;
}

uint64_t sub_10008E430(int a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  if (a1 < 0)
  {
    sub_1000A0950();
  }

  v8 = v7;
  if (!v7)
  {
    sub_1000A0924();
  }

  if (!a3)
  {
    sub_1000A08F8();
  }

  if ([(__CFString *)v7 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @".";
  }

  memset(v13, 0, 136);
  if (getattrlistat(a1, [(__CFString *)v9 fileSystemRepresentation], &word_10011E1F8, v13, 0x88uLL, 0x29uLL))
  {
    if (a4)
    {
      [MBError errorWithErrno:*__error() path:v8 format:@"getattrlistat() error"];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v12[4] = *(&v13[5] + 8);
    v12[5] = *(&v13[6] + 8);
    v12[6] = *(&v13[7] + 8);
    v12[0] = *(&v13[1] + 8);
    v12[1] = *(&v13[2] + 8);
    v12[2] = *(&v13[3] + 8);
    v12[3] = *(&v13[4] + 8);
    v10 = sub_10008E118(v12, a3, v8, a4);
  }

  return v10;
}

uint64_t sub_10008E588(uint64_t result, int a2)
{
  *(result + 12) = a2;
  if ((a2 & 0x40000000) != 0)
  {
    *(result + 40) = 0;
  }

  return result;
}

const __CFString *sub_10008E6B8(__int16 a1)
{
  v1 = @"regular file";
  v2 = a1 & 0xF000;
  v3 = @"(unknown)";
  if (v2 == 0x4000)
  {
    v3 = @"directory";
  }

  if (v2 != 0x8000)
  {
    v1 = v3;
  }

  if (v2 == 40960)
  {
    return @"symbolic link";
  }

  else
  {
    return v1;
  }
}

BOOL sub_10008E6F8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  v4 = v3 & 0xF000;
  if (v4 == 0x4000 || v4 == 0x8000 || v4 == 40960)
  {
    if (v4 == 0x8000)
    {
      v5 = *(a1 + 96);
      if (*(a1 + 6) <= 1u)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      if (v4 == 0x4000)
      {
        v5 = 0;
        v7 = *(a1 + 6);
        v6 = 4;
        goto LABEL_14;
      }

      v5 = 0;
      v6 = 4;
    }

    v7 = 1;
LABEL_14:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v9 = *(a1 + 80);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    *a2 = v7;
    *(a2 + 4) = v13;
    *(a2 + 12) = 0;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v5;
    *(a2 + 48) = v12;
    *(a2 + 56) = 0;
    *(a2 + 60) = 0;
    *(a2 + 68) = v3;
    *(a2 + 70) = 0;
    *(a2 + 71) = v6;
    v14 = *(a1 + 116);
    *(a2 + 12) = v14;
    if ((v14 & 0x40000000) != 0)
    {
      *(a2 + 40) = 0;
    }

    return v4 == 0x8000 || v4 == 40960 || v4 == 0x4000;
  }

  if (a3)
  {
    *a3 = [MBError posixErrorWithFormat:@"Not a directory, symlink, or regular file (%d)", v3];
  }

  return v4 == 0x8000 || v4 == 40960 || v4 == 0x4000;
}

void sub_10008EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008EEE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008EF00(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008F64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSObject *sub_10008FD70(int a1)
{
  if (qword_10011E4C0 != -1)
  {
    sub_1000A097C();
  }

  if (a1 == 4)
  {
    v6 = [qword_10011E4B8 objectForKeyedSubscript:@"D2D"];
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v16 = a1;
      *&v16[4] = 2114;
      *&v16[6] = qword_10011E4B8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Missing required product versions for engine type %d: %{public}@", buf, 0x12u);
      _MBLog();
    }

    goto LABEL_27;
  }

  if (a1 == 3)
  {
    v2 = [qword_10011E4B8 objectForKeyedSubscript:@"Cloud"];
    if (!v2)
    {
      v3 = qword_10011E4B8;
      v4 = @"iCloud";
      goto LABEL_14;
    }

LABEL_9:
    v5 = v2;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    goto LABEL_11;
  }

  v2 = [qword_10011E4B8 objectForKeyedSubscript:@"Local"];
  if (v2)
  {
    goto LABEL_9;
  }

  v3 = qword_10011E4B8;
  v4 = @"Drive";
LABEL_14:
  v5 = [v3 objectForKeyedSubscript:v4];
LABEL_15:
  v6 = v5;

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_16:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v16 = a1;
      *&v16[4] = 2114;
      *&v16[6] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid required product versions for engine type %d: %{public}@", buf, 0x12u);
      _MBLog();
    }

LABEL_27:
    v11 = 0;
    goto LABEL_35;
  }

  v7 = MBProductVersion();
  if (!v7)
  {
    sub_1000A0990();
  }

  v8 = v7;
  v9 = [v6 objectForKeyedSubscript:v7];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 compare:v9 options:64] != -1)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *v16 = v8;
        *&v16[8] = 1024;
        *&v16[10] = a1;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "productVersion:%{public}@, engineType:%d, requiredProductVersion:%{public}@", buf, 0x1Cu);
        _MBLog();
      }

      v11 = v9;
      goto LABEL_34;
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v16 = v8;
      *&v16[8] = 1024;
      *&v16[10] = a1;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid required product version for %{public}@ and engine type %d: %{public}@", buf, 0x1Cu);
LABEL_32:
      _MBLog();
    }
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v16 = v8;
      *&v16[8] = 1024;
      *&v16[10] = a1;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing required product version for %{public}@ and engine type %d: %{public}@", buf, 0x1Cu);
      goto LABEL_32;
    }
  }

  v11 = 0;
LABEL_34:

LABEL_35:

  return v11;
}

void sub_1000901CC(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"CompatibilityVersions" ofType:@"plist"];

  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];
  v4 = qword_10011E4B8;
  qword_10011E4B8 = v3;

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = v2;
    v8 = 2114;
    v9 = qword_10011E4B8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@: %{public}@", buf, 0x16u);
    _MBLog();
  }
}

id sub_100091778()
{
  if (qword_10011E4D8 != -1)
  {
    sub_1000A0A88();
  }

  v1 = qword_10011E4E0;

  return v1;
}

void sub_100091800(id a1)
{
  qword_10011E4D0 = [[MBSystemDomainsVersions alloc] initWithDefaultSystemDomainsPlist];

  _objc_release_x1();
}

void sub_100093E6C(id a1)
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v3 pathForResource:@"Domains" ofType:@"plist"];
  v2 = qword_10011E4E0;
  qword_10011E4E0 = v1;
}

void sub_10009436C(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet whitespaceCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  if ([v3 containsString:@"/"])
  {
    sub_1000A0C9C();
  }

  if ([v3 isEqualToString:@".."])
  {
    sub_1000A0D28();
  }

  if ([v3 isEqualToString:&stru_1000FF270])
  {
    sub_1000A0DB4();
  }

  if ([v3 isEqualToString:@"."])
  {
    sub_1000A0E40();
  }
}

void sub_100094BF4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10011E4E8;
  qword_10011E4E8 = v1;

  dword_10011E4F8 = 0;
}

uint64_t sub_1000951B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = +[NSFileManager defaultManager];
  if (![v6 fileExistsAtPath:v5])
  {
    goto LABEL_21;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing old restore directory", v25, 2u);
    _MBLog();
  }

  if ([v6 mb_moveToTmpDirThenRemoveItemAtPath:v5 error:a3])
  {
LABEL_21:
    v8 = [v5 stringByAppendingPathComponent:@"var"];
    v9 = [v6 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:a3];

    if (v9)
    {
      v28[0] = NSFileOwnerAccountName;
      v28[1] = NSFileGroupOwnerAccountName;
      v29[0] = @"mobile";
      v29[1] = @"mobile";
      v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      v26[0] = NSFileOwnerAccountName;
      v26[1] = NSFileGroupOwnerAccountName;
      v27[0] = @"_securityd";
      v27[1] = @"wheel";
      v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      if (a2 == 2)
      {
        v12 = [v5 stringByAppendingPathComponent:@"var/mobile"];
        v13 = [v6 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v10 error:a3];

        if (v13)
        {
LABEL_8:
          v14 = 1;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v15 = [v5 stringByAppendingPathComponent:@"var/Keychains"];
        v16 = [v6 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:v11 error:a3];

        if (v16)
        {
          v17 = [v5 stringByAppendingPathComponent:@"var/Managed Preferences"];
          v18 = [v6 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:a3];

          if (v18)
          {
            v19 = [v5 stringByAppendingPathComponent:@"var/Managed Preferences/mobile"];
            v20 = [v6 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:v10 error:a3];

            if (v20)
            {
              v21 = [v5 stringByAppendingPathComponent:@"var/MobileDevice"];
              v22 = [v6 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:a3];

              if (v22)
              {
                v23 = [v5 stringByAppendingPathComponent:@"var/MobileDevice/ProvisioningProfiles"];
                v14 = [v6 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:v10 error:a3];

                if (!v14)
                {
                  goto LABEL_17;
                }

                goto LABEL_8;
              }
            }
          }
        }
      }

      v14 = 0;
      goto LABEL_17;
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

uint64_t sub_100097450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100097468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=restore-placeholder= Failed to enumerate placeholder ipas at %@: %@", buf, 0x16u);
    _MBLog();
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  return 0;
}

void sub_1000978FC(id a1)
{
  qword_10011E500 = objc_alloc_init(MBNotificationCenter);

  _objc_release_x1();
}

void sub_100097C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100097C78(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 intValue];
  }

  else
  {
    v4 = 1;
    while (1)
    {
      v5 = v4;
      *(*(*(a1 + 56) + 8) + 24) = notify_register_check([*(a1 + 40) UTF8String], (*(*(a1 + 48) + 8) + 24));
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        break;
      }

      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        v8 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 138412546;
        v13 = v7;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "notify_register_check(%@) failed: %lu", buf, 0x16u);
        v10 = *(a1 + 40);
        v11 = *(*(*(a1 + 56) + 8) + 24);
        _MBLog();
      }

      v4 = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v9 = [NSNumber numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
    [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:*(a1 + 40)];
  }

LABEL_10:
}

id sub_100098474()
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(MBAppleCarePlugin);
  [v0 addObject:v1];

  v2 = objc_alloc_init(MBApplePushServicePlugin);
  [v0 addObject:v2];

  v3 = objc_alloc_init(MBDataMigratorPlugin);
  [v0 addObject:v3];

  v4 = objc_alloc_init(MBDaemonPlugin);
  [v0 addObject:v4];

  v5 = objc_alloc_init(MBiTunesStorePlugin);
  [v0 addObject:v5];

  v6 = objc_alloc_init(MBKeychainPlugin);
  [v0 addObject:v6];

  v7 = objc_alloc_init(MBLockdownPlugin);
  [v0 addObject:v7];

  v8 = objc_alloc_init(MBManagerPlugin);
  [v0 addObject:v8];

  v9 = objc_alloc_init(MBRestoreAppsPlugin);
  [v0 addObject:v9];

  v10 = objc_alloc_init(MBATCBundlesPlugin);
  [v0 addObject:v10];

  v11 = objc_alloc_init(MBManateePlugin);
  [v0 addObject:v11];

  v12 = objc_alloc_init(MBWiFiPlugin);
  [v0 addObject:v12];

  v13 = objc_alloc_init(MBiCloudDrivePlugin);
  [v0 addObject:v13];

  v14 = objc_alloc_init(MBScreenTimePlugin);
  [v0 addObject:v14];

  v15 = objc_alloc_init(MBSiriPlugin);
  [v0 addObject:v15];

  v16 = objc_alloc_init(MBKeyboardPlugin);
  [v0 addObject:v16];

  v17 = objc_alloc_init(MBFileProviderPlugin);
  [v0 addObject:v17];

  return v0;
}

void sub_10009AED4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009AF40()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009AFAC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009B018()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009B084()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009B174(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBProperties.m" lineNumber:360 description:{@"%@ value not an NSDictionary", @"AppleIDs"}];
}

void sub_10009B1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBProperties.m" lineNumber:377 description:{@"Account item %@ not a string", a3}];
}

void sub_10009B264(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBProperties.m" lineNumber:501 description:@"Containers value not an NSDictionary"];
}

id sub_10009B53C()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B590()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B5E4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B638()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B68C()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B6E0()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B734()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B788()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B7DC()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B830()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B884()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B8D8()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B92C()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BAC0()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BB14()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BB68()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BBBC()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BC10()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BC64()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BD20()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BD74()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BDC8()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009BE1C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MBDecoder.m" lineNumber:127 description:@"Mark not set"];

  *a4 = *a3;
}

void sub_10009BE98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDrive.m" lineNumber:45 description:@"Unexpected result count"];
}

void sub_10009BF38()
{
  sub_100018EBC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void sub_10009BFB0()
{
  sub_100018EBC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void sub_10009C028()
{
  sub_100018EBC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void sub_10009C0A0()
{
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C100(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBProgress.m" lineNumber:29 description:@"Negative duration"];
}

void sub_10009C174(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = +[NSAssertionHandler currentHandler];
  v8 = *a1;
  [v9 handleFailureInMethod:a3 object:a4 file:@"MBProgress.m" lineNumber:35 description:{@"Progress overflow (%0.4f > %0.4f)", *a1, *a2}];
}

void sub_10009C25C()
{
  sub_100002684();
  v5 = +[NSAssertionHandler currentHandler];
  v2 = [v1 settingsContext];
  v3 = [v2 targetIdentifier];
  v4 = MBDeviceUDID_Legacy();
  [v5 handleFailureInMethod:v0 object:v1 file:@"MBDriveBackupEngine.m" lineNumber:502 description:{@"Backup target device ID %@ doesn't match actual device ID %@", v3, v4}];
}

void sub_10009C318()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C3A0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C598()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100028F48();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C5F8()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100028F48();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C658()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C6B4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C720()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C810()
{
  sub_100028F38();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MBDriveBackupEngine.m" lineNumber:2652 description:{@"No operation found for path: %@", v0}];
}

void sub_10009D0D8(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[MBDriveRestoreEngine initWithSettingsContext:debugContext:]"];
  [v2 handleFailureInFunction:v3 file:@"MBDriveRestoreEngine.m" lineNumber:97 description:{@"Unable to obtain personal persona for restore engine: %@", a1}];
}

void sub_10009D164()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D1D0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D23C()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBDriveRestoreEngine.m" lineNumber:143 description:@"Manifest not loaded yet"];

  *v0 = *v1;
}

void sub_10009D2AC()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBDriveRestoreEngine.m" lineNumber:153 description:@"No manifest yet"];

  *v0 = *v1;
}

void sub_10009D31C()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D388()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D3F4()
{
  sub_100002684();
  v5 = +[NSAssertionHandler currentHandler];
  v2 = [v1 settingsContext];
  v3 = [v2 targetIdentifier];
  v4 = MBDeviceUDID_Legacy();
  [v5 handleFailureInMethod:v0 object:v1 file:@"MBDriveRestoreEngine.m" lineNumber:350 description:{@"Restore target device ID %@ doesn't match actual device ID %@", v3, v4}];
}

void sub_10009D508()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1000360C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D568()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1000360C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D620()
{
  sub_100028F38();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MBDriveRestoreEngine.m" lineNumber:1311 description:{@"Couldn't extract file ID from temporary restore path: %@", v0}];
}

void sub_10009D698()
{
  sub_100028F38();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MBDriveRestoreEngine.m" lineNumber:1314 description:{@"Couldn't find file object for temporary restore path: %@", v0}];
}

void sub_10009D880(uint64_t a1)
{
  v3 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"void _mkpath_if_necessary(const char *)"];
  [v3 handleFailureInFunction:v2 file:@"MBTemporaryDirectory.m" lineNumber:76 description:{@"TempDir: Unable to set ownership on %s directory (chown error: %d)", a1, *__error()}];
}

void sub_10009DA24(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"NSString *_mktemp(const char *)"];
  [v2 handleFailureInFunction:v3 file:@"MBTemporaryDirectory.m" lineNumber:58 description:{@"TempDir: Unable to create temp file path in %s (%d)", a1, *__error()}];
}

void sub_10009DB10(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBApp.m" lineNumber:301 description:@"Not a safe harbor"];
}

void sub_10009DE44(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBManifestDB.m" lineNumber:156 description:@"DomainManager must not be nil"];
}

void sub_10009E244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDatabaseIndex.m" lineNumber:78 description:{@"Duplicate file ID: %@", a3}];
}

void sub_10009E2C4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBManifest.m" lineNumber:24 description:@"Null manifest properties"];
}

void sub_10009E338(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBManifest.m" lineNumber:25 description:@"Null manifest database"];
}

void sub_10009E3AC()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBManifest.m" lineNumber:39 description:@"Database index not set"];

  *v0 = *v1;
}

void sub_10009E41C()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBManifest.m" lineNumber:48 description:@"Database index not set"];

  *v0 = *v1;
}

void sub_10009E510()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBFile.m" lineNumber:143 description:@"Null domain"];

  *v0 = *v1;
}

void sub_10009E580(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  v6 = [*a1 name];
  [v7 handleFailureInMethod:a3 object:a2 file:@"MBFile.m" lineNumber:144 description:{@"No absolute path for file record (uninstalled app): %@/%@", v6, *(a2 + 152)}];
}

void sub_10009E620()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E68C()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBFile.m" lineNumber:173 description:@"Null domain"];

  *v0 = *v1;
}

void sub_10009E6FC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E768()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E7D4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E840(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBStatus.m" lineNumber:178 description:@"Saving old status format?"];
}

id sub_10009E990()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009E9E4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009EA38()
{
  sub_1000360B0();
  +[NSAssertionHandler currentHandler];
  v2 = +[MBDriveOperation stringForType:](MBDriveOperation, "stringForType:", [v1 type]);
  v5 = +[MBDriveOperation stringForType:](MBDriveOperation, "stringForType:", [v0 type]);
  sub_100002690();
  return [v3 handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];
}

id sub_10009EAE4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009EB2C()
{
  sub_1000360B0();
  +[NSAssertionHandler currentHandler];
  v2 = *v1;
  v5 = [*v0 count];
  sub_100002690();
  return [v3 handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];
}

id sub_10009EBA4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDriveOperation.m" lineNumber:a3 description:@"Invalid count"];
}

void sub_10009EC98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDriveOperation.m" lineNumber:114 description:@"Invalid size"];
}

void sub_10009ED0C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDriveOperation.m" lineNumber:115 description:@"Negative duration"];
}

void sub_10009EDAC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EE18()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EE74()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EED0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EF3C()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EFA8()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F014()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F130(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [a1 identifier];
  [v6 handleFailureInMethod:a2 object:a3 file:@"MBAppManager.m" lineNumber:613 description:{@"Date missing from safe harbor: %@", v7}];
}

void sub_10009F2D4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F340()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F39C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F464()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F4D0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F568()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009F5C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"MBKeyBag.m" lineNumber:343 description:@"MKBOTABackupBagCopyUUID succeeded but data is null"];
}

id sub_10009F628(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"MBKeyBag.m" lineNumber:351 description:@"MKBKeyBagCopyUUID succeeded but data is null"];
}

void sub_10009F68C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F714()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F780()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBEncryptedFileHandle.m" lineNumber:58 description:{@"No encrypted file key for restoring file: %@", a3}];
}

void sub_10009F8C4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F930()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FDB8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PQLConnection+MBAdditions.m" lineNumber:125 description:@"Database versions are not ordered correctly!"];
}

void sub_10009FEA0()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FF28()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FF84()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FFE0()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A003C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0098()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0104()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0160()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A01BC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0228()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0284()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A02E0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A034C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A03A8()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBProtectionClassFileHandleFactory.m" lineNumber:22 description:{@"Invalid protection class: %d", a3}];
}

void sub_1000A05E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MBFileScanner.m" lineNumber:529 description:{@"Relative path to backup in domain is in set not to backup also: %@-%@", a3, a4}];
}

void sub_1000A09BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBEngine.m" lineNumber:112 description:{@"Unable to obtain personal persona: %@", a3}];
}

void sub_1000A0B08(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDomainManager.m" lineNumber:229 description:@"Null name"];
}

void sub_1000A0B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDomainManager.m" lineNumber:276 description:{@"Domain not found for redirect: %@", a3}];
}

void sub_1000A0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDomainManager.m" lineNumber:285 description:{@"Domain already exists: %@", a3}];
}

void sub_1000A0C9C()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}

void sub_1000A0D28()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}

void sub_1000A0DB4()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}

void sub_1000A0E40()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}